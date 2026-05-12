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
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x19, kernel_stack_end

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
                  li x0, 0xf4960812
                  li x1, 0xfe641f72
                  li x2, 0x3
                  li x3, 0xc9b63939
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0xf35a9db3
                  li x7, 0x4
                  li x8, 0x7
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x5
                  li x13, 0x80000000
                  li x14, 0xb633de03
                  li x15, 0xe
                  li x16, 0x0
                  li x17, 0xf0925eb7
                  li x18, 0x7194dd3b
                  li x20, 0xfe96266c
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xf349aeb6
                  li x24, 0x80000000
                  li x25, 0x41f2ed78
                  li x26, 0x80000000
                  li x27, 0xf12a1a01
                  li x28, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xf0bb022d
                  la x29, user_stack_end
main:             la           sp, region_0+1051 #start riscv_load_store_rand_instr_stream_1
                  xori         s10, s6, 560
                  lhu          s10, 737(sp)
                  ori          s8, s1, -1660
                  lhu          tp, 947(sp)
                  lb           ra, 640(sp)
                  lbu          a4, -380(sp)
                  srai         t5, a6, 10
                  and          s9, s9, s11
                  lb           s1, 159(sp)
                  sb           a0, -344(sp)
                  sb           s3, -957(sp)
                  lbu          s0, -870(sp)
                  xori         s5, a6, 396
                  lbu          s0, -450(sp)
                  slt          a0, s9, sp
                  lb           t6, -499(sp)
                  lb           t1, 941(sp)
                  lb           t0, -785(sp)
                  lb           a4, 936(sp)
                  lb           s2, 117(sp)
                  lbu          s5, -981(sp)
                  lb           a0, 804(sp)
                  sh           a6, 431(sp)
                  slt          s8, sp, t5
                  sb           s4, 297(sp)
                  lbu          t2, -163(sp)
                  auipc        t5, 191299
                  lb           s4, -417(sp)
                  lw           t2, -199(sp)
                  lbu          a7, -29(sp)
                  lbu          t2, -169(sp)
                  lb           s10, 768(sp)
                  xor          t3, s5, tp
                  lh           s10, 447(sp)
                  lh           t1, 411(sp)
                  sb           s0, 370(sp)
                  andi         tp, a6, 1331
                  sb           s6, 436(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_1+531 #start riscv_load_store_rand_instr_stream_3
                  addi         s6, s9, 194
                  lb           s10, -42(a0)
                  lb           t1, -3(a0)
                  lbu          s7, 60(a0)
                  lhu          gp, -41(a0)
                  lb           s11, -40(a0)
                  sb           a6, 64(a0)
                  xori         t0, tp, -789
                  sb           s6, -44(a0)
                  srl          a4, a6, a7
                  sh           s11, -61(a0)
                  xori         t6, s9, -1640
                  lui          s1, 674600
                  slt          t0, a6, a6
                  lui          s2, 548737
                  lbu          a2, 34(a0)
                  ori          s7, s11, -1946
                  sb           a2, 24(a0)
                  lhu          ra, -31(a0)
                  lbu          s9, 0(a0)
                  lbu          gp, 29(a0)
                  slt          ra, s6, gp
                  lb           s6, 16(a0)
                  add          zero, s10, s2
                  sb           t3, 51(a0)
                  andi         a6, zero, -1376
                  sltiu        a1, s11, 1357
                  lbu          s5, 8(a0)
                  sra          s2, a2, t0
                  sltu         s8, a3, t1
                  lb           s2, 36(a0)
                  lh           a7, 47(a0)
                  sra          a2, t2, t6
                  lb           ra, -35(a0)
                  nop
                  lb           zero, -36(a0)
                  sltiu        s2, ra, 869
                  lh           gp, -1(a0)
                  lhu          t0, 47(a0)
                  lb           tp, -18(a0) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1669 #start riscv_load_store_rand_instr_stream_5
                  sb           ra, -64(sp)
                  lw           s0, -137(sp)
                  sb           a2, 46(sp)
                  lhu          t1, -5(sp)
                  lbu          a6, 254(sp)
                  lh           t0, 61(sp)
                  sb           s2, 226(sp)
                  auipc        t5, 657494
                  sltiu        ra, a4, -938
                  sb           a3, -112(sp)
                  srli         a1, s11, 4
                  lb           s1, -35(sp)
                  lb           t5, -144(sp)
                  sb           a1, 84(sp)
                  slt          a3, a3, t6
                  slt          s2, t0, s1
                  lb           a2, 36(sp)
                  add          s2, s9, a7
                  slt          a0, t5, a3
                  srl          t3, a5, s3
                  sub          s10, s11, a6
                  add          s5, t3, gp
                  lb           s6, -60(sp)
                  lb           a3, -146(sp)
                  lb           t6, 120(sp)
                  slli         zero, gp, 15
                  lbu          a3, -13(sp)
                  lui          s7, 32469
                  srli         ra, s4, 9
                  addi         tp, t3, -684
                  and          t1, t0, a3
                  slli         a2, t4, 14
                  sltu         a0, s0, s9
                  and          zero, s11, a4
                  lbu          s10, -114(sp)
                  sb           zero, 234(sp)
                  srai         t3, a5, 13
                  lb           s6, -99(sp)
                  sh           a0, 223(sp)
                  sltiu        s11, a7, -1706
                  lbu          ra, 117(sp)
                  lb           a2, -206(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s8, region_0+1314 #start riscv_load_store_rand_instr_stream_4
                  or           s0, t0, t1
                  lb           sp, -29(s8)
                  sll          s10, s10, a2
                  lb           gp, -47(s8)
                  lh           a1, 24(s8)
                  lb           t3, -1(s8)
                  lbu          s11, 33(s8)
                  srl          t2, t5, s3
                  add          ra, s9, t4
                  lbu          t5, -48(s8)
                  nop
                  sll          a6, s2, a5
                  lui          s11, 408852
                  or           a6, tp, tp
                  srli         zero, a3, 7
                  sub          t2, t6, t1
                  sll          a0, t0, sp
                  lbu          gp, 17(s8)
                  sb           sp, -17(s8)
                  lbu          t6, -15(s8)
                  add          a7, t3, t2
                  srli         a2, sp, 1
                  lw           ra, -18(s8)
                  srli         a1, t6, 23
                  sb           t6, 1(s8)
                  and          a1, s6, a4
                  add          t2, s10, a7
                  lbu          a0, 15(s8)
                  lbu          sp, -13(s8)
                  sw           a7, -34(s8)
                  lhu          a4, -40(s8)
                  srli         t2, s4, 30
                  lb           a3, 31(s8)
                  lb           s0, 19(s8)
                  xori         a0, s7, -1036
                  sb           t6, 43(s8)
                  xori         t0, sp, -21
                  lb           t6, -37(s8)
                  slli         s5, a7, 7
                  lb           s2, 27(s8)
                  srai         t2, t0, 0
                  sll          t2, s5, a0
                  srli         a3, sp, 28
                  lbu          a6, -51(s8)
                  sh           gp, 62(s8)
                  sh           t1, 12(s8)
                  sltu         t6, a5, a1
                  srl          a4, a6, s4
                  add          sp, s1, tp
                  sh           sp, 26(s8)
                  lh           t6, -64(s8) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1456 #start riscv_load_store_rand_instr_stream_6
                  slti         a2, s7, 1816
                  lbu          ra, -7(sp)
                  andi         a3, a3, -965
                  slt          t1, ra, s9
                  xori         zero, a6, 962
                  xori         ra, t4, -725
                  sub          ra, s8, a1
                  or           zero, s11, s7
                  sub          s0, s3, s9
                  sb           s1, 16(sp)
                  lb           a3, -1(sp)
                  lb           t5, -2(sp)
                  andi         s4, t3, -1618
                  lhu          s10, 14(sp)
                  srli         s2, s5, 11
                  slli         t2, s3, 9
                  and          t0, t3, s10
                  sw           t4, -4(sp)
                  sra          tp, gp, sp
                  sw           a6, -4(sp)
                  sltiu        a1, a3, 191
                  slt          s1, s2, s3
                  srli         s2, sp, 30
                  lbu          s7, -7(sp)
                  xori         zero, t2, 103
                  slli         t2, t4, 23
                  lbu          t1, -3(sp)
                  andi         a6, s8, -886
                  sra          s11, a4, s4
                  sh           s2, -10(sp)
                  lb           tp, 7(sp)
                  and          s1, zero, t3
                  ori          a2, a3, 1914
                  sb           s5, -1(sp) #end riscv_load_store_rand_instr_stream_6
                  lui          s4, 376032
                  sub          t2, gp, s3
                  ori          a2, t2, 1201
                  bge          t3, s1, 22f
                  bne          t1, gp, 22f
                  addi         s6, sp, 1967
                  xor          t0, s4, s2
                  or           s5, a4, sp
                  and          t2, t6, a4
                  sltu         ra, t6, t2
                  ori          a7, s6, 792
                  blt          a5, s5, 17f
                  slli         a2, t4, 31
                  sll          s2, s9, a1
                  auipc        s7, 812223
                  xori         a7, t5, 718
                  nop
17:               srl          s10, s9, a6
                  beq          a7, zero, 26f
                  slti         t6, t6, 1736
                  or           t0, s0, a5
                  or           s2, s11, s9
22:               beq          a1, s11, 31f
                  xor          gp, t3, t0
                  srl          a1, a3, s6
                  slti         t2, zero, 1521
26:               xor          s0, s7, s8
                  bne          s0, a3, 38f
                  bge          s5, a4, 35f
                  sra          s1, t0, s0
                  bne          a5, sp, 36f
31:               auipc        t5, 935274
                  srl          s1, s8, s1
                  bne          s7, sp, 45f
                  srai         a6, s11, 9
35:               srai         ra, t4, 20
36:               sltu         s4, a0, a2
                  srl          t6, s9, s3
38:               bltu         s2, a5, 56f
                  srai         a2, t5, 31
                  slt          gp, a4, s7
                  andi         sp, sp, -1120
                  slli         s5, s2, 14
                  slli         a4, tp, 9
                  bgeu         s9, s11, 61f
45:               blt          s2, tp, 64f
                  bge          t5, a5, 51f
                  addi         s8, a1, 262
                  sltu         s4, t3, ra
                  bltu         a6, t1, 67f
                  xori         s11, gp, 1571
51:               lui          t0, 905242
                  addi         s1, s9, -1036
                  lui          s7, 177197
                  sltiu        s10, s11, -1787
                  andi         gp, s7, 307
56:               auipc        s0, 136870
                  blt          t3, s1, 72f
                  bltu         s8, s10, 74f
                  xor          t1, t0, tp
                  bne          s1, a1, 78f
61:               xor          t5, t2, s8
                  lui          a2, 395225
                  or           t6, a0, s6
64:               srli         a6, s10, 20
                  srli         sp, a0, 7
                  sra          t6, a7, tp
67:               or           s9, t0, t5
                  nop
                  sltu         t5, a7, gp
                  srli         t0, tp, 13
                  blt          s10, t6, 87f
72:               bltu         t6, sp, 87f
                  srli         a4, s6, 25
74:               srli         s6, a5, 29
                  xori         s10, a1, -581
                  addi         s5, s10, 127
                  andi         ra, t4, 724
78:               ori          s9, t0, -1937
                  ori          s9, t1, 778
                  slt          zero, sp, tp
                  sll          ra, t3, t4
                  bne          tp, s0, 99f
                  bne          s3, s8, 84f
84:               bgeu         s2, a3, 96f
                  bge          s3, t1, 91f
                  ori          s0, a5, -675
                  addi         s11, s7, 1259
                  la           s2, sub_1
                  xor          s8, s7, a5
                  xor          a7, t4, s5
                  lui          a3, 841966
                  addi         s2, s2, -700
                  andi         s8, gp, 1028
                  sltiu        sp, a3, 234
main_j3:          jalr         t3, s2, 700 #jump main -> sub_1
                  bltu         t6, a7, 88f
87:               srli         s9, s0, 19
88:               bltu         t6, t6, 93f
                  sll          s4, a3, a2
                  slti         s2, s4, -833
91:               srl          t2, gp, gp
                  ori          s7, a6, 1835
93:               sra          s0, a3, s9
                  addi         s11, a6, 937
                  and          s5, t4, s0
96:               srai         s6, t2, 16
                  srai         s6, t0, 8
                  bne          a3, a4, 118f
99:               bne          a6, tp, 118f
                  srli         s9, s9, 23
                  la           s2, region_0+1683 #start riscv_load_store_rand_instr_stream_2
                  slt          s6, ra, t3
                  sh           s5, 29(s2)
                  sub          t3, t4, a1
                  lhu          a1, 235(s2)
                  xor          a6, tp, tp
                  sll          s0, s4, a7
                  sra          a1, s9, s9
                  lw           gp, -251(s2)
                  addi         t5, t5, 1158
                  addi         s10, t1, 401
                  lh           a0, -103(s2)
                  lb           s7, 20(s2)
                  lh           s0, 19(s2)
                  ori          a7, ra, -150
                  sra          t0, sp, s2
                  lbu          a4, 167(s2)
                  srl          t3, s6, t1
                  sb           t1, 184(s2)
                  lbu          s7, 131(s2)
                  srli         t6, s7, 26
                  lbu          s0, -156(s2)
                  lbu          s4, -140(s2)
                  sb           t4, -28(s2)
                  auipc        s10, 950683
                  sb           a0, -20(s2)
                  srl          s11, s0, s4
                  sb           s0, 212(s2) #end riscv_load_store_rand_instr_stream_2
                  sll          a7, t2, a2
                  bgeu         zero, s5, 108f
                  bgeu         s5, a0, 114f
                  sub          s5, a4, a1
                  sll          ra, s0, a4
                  sub          tp, s10, s2
                  nop
108:              slt          t2, zero, s10
                  srl          s7, s3, tp
                  sra          gp, a1, s4
                  xor          s7, a0, a4
                  nop
                  xori         s11, s9, 848
114:              sltu         s9, ra, sp
                  sltu         t2, t0, t3
                  beq          t2, a3, 118f
                  ori          s4, t6, 426
118:              lui          s6, 724248
                  andi         s10, zero, -1773
                  sltu         a7, s1, a1
                  sll          s11, gp, t5
                  auipc        s6, 572680
                  srli         t2, a2, 13
                  andi         s5, t0, -1171
                  srli         t3, a0, 21
                  slti         s11, s2, 259
                  slti         tp, sp, -504
                  lui          a6, 184638
                  nop
                  auipc        s11, 596941
                  sra          sp, s9, a5
                  srai         t5, t3, 23
                  sra          a2, gp, s0
                  lui          a6, 948658
                  xori         s9, s1, -1796
                  andi         tp, s10, -1542
                  or           a3, s10, a2
                  bltu         t3, a2, 156f
                  andi         a6, a6, 132
                  sltiu        gp, a1, -651
                  auipc        t1, 210160
                  andi         t0, zero, 139
                  ori          s6, sp, 55
                  blt          t1, s10, 159f
                  sltiu        a4, ra, -356
                  sub          tp, t1, t0
                  and          tp, s1, s11
                  addi         s0, t6, -1196
                  srl          s2, t4, s10
                  auipc        s1, 380131
                  bne          gp, t5, 169f
                  slt          s5, s7, s0
                  sltu         sp, a5, s9
                  auipc        s1, 768124
                  slt          s8, s0, s2
156:              add          t0, t4, s0
                  and          s9, s4, a1
                  sub          tp, a7, t1
159:              bgeu         t6, t3, 166f
                  slti         a7, s4, -1266
                  slti         t3, s4, -596
                  lui          t3, 335620
                  xori         t6, a4, -746
                  bne          s2, s1, 170f
                  or           tp, t6, a5
166:              xori         t6, t3, 27
                  srl          a7, ra, a5
                  slt          a6, s10, s1
169:              and          t6, s3, a0
170:              and          a7, s2, s1
                  add          t3, s7, t1
                  sra          a3, sp, a0
                  slt          a7, s4, ra
                  nop
                  srai         s6, a3, 5
                  srli         t3, t2, 6
                  lui          a6, 552824
                  slti         s7, a2, -607
                  lui          a2, 401743
                  sub          t6, a2, a5
                  or           tp, t5, s9
                  srai         zero, t3, 8
                  andi         t2, gp, -2
                  addi         s10, s2, 1302
                  sll          zero, t2, s10
                  sltu         s4, s0, s10
                  or           t0, s10, a1
                  sub          s4, a7, a1
                  sltu         sp, t0, s7
                  bgeu         ra, t0, 202f
                  sub          a0, s0, t4
                  slt          zero, s4, tp
                  bltu         a2, s0, 213f
                  and          s10, a5, a5
                  ori          s0, s2, -319
                  slli         a3, s3, 4
                  and          t5, s11, t2
                  bltu         sp, a4, 209f
                  sll          a7, s8, a7
                  or           s11, zero, s11
                  xori         t1, a7, -182
202:              lui          s4, 241873
                  bltu         s4, a0, 208f
                  beq          a3, t1, 216f
                  sltu         s5, s10, s7
                  or           s4, t5, t1
                  blt          s9, s10, 209f
208:              or           t2, t2, a7
209:              sll          a6, a6, a6
                  srai         tp, t6, 26
                  and          a6, zero, s10
                  slti         t0, t5, -1022
213:              or           s6, zero, zero
                  sll          a7, s2, a2
                  or           t0, t3, s8
216:              srai         s1, t6, 3
                  sub          a1, t3, t2
                  andi         a2, s10, 606
                  bge          t1, s6, 235f
                  beq          a5, s10, 228f
                  sra          s7, a4, s7
                  sub          gp, s3, s9
                  nop
                  bge          s1, s6, 242f
                  beq          s9, s7, 243f
                  bltu         t5, a0, 245f
                  bne          a2, s4, 228f
228:              blt          a0, s9, 244f
                  beq          a0, s9, 240f
                  slti         tp, s0, 1000
                  and          t1, a7, t4
                  srai         s1, a2, 4
                  srai         s11, s4, 9
                  and          s2, s9, s9
235:              bltu         a3, s9, 240f
                  sub          ra, tp, s11
                  sub          t2, t6, a1
                  ori          ra, t5, 153
                  sltu         s7, ra, s1
240:              ori          a2, t3, 363
                  slt          s10, a6, s8
242:              bgeu         a1, gp, 251f
243:              blt          ra, s0, 258f
244:              bge          t1, s3, 263f
245:              slti         ra, t3, 1713
                  xor          s10, s6, a2
                  or           t1, s3, t5
                  lui          s9, 111301
                  auipc        a2, 614949
                  bltu         s9, s8, 267f
251:              sub          t5, a1, t5
                  bne          t3, s1, 254f
                  sltu         s6, s2, a5
254:              and          t1, t3, a1
                  blt          a2, gp, 261f
                  auipc        t2, 551708
                  lui          a2, 68150
258:              sltu         t0, s9, s3
                  bltu         a0, a6, 265f
                  ori          t2, a3, 1725
261:              or           s8, s1, a4
                  slti         sp, s2, -1479
263:              nop
                  blt          t1, a2, 281f
265:              sub          s5, tp, s7
                  bge          a4, t5, 272f
267:              and          t0, t3, a6
                  add          t0, tp, t0
                  srai         zero, a0, 23
                  and          sp, t4, t5
                  slli         s11, a4, 18
272:              sra          a3, a7, s7
                  or           a1, a0, a1
                  slti         a6, t2, -248
                  nop
                  xori         a1, a7, -801
                  sub          s10, t0, a6
                  bgeu         a0, t6, 297f
                  blt          s0, t5, 288f
                  sll          a2, s7, ra
281:              ori          s5, ra, 1133
                  xor          s10, s1, s10
                  sub          s4, t6, s7
                  sll          s0, t6, a0
                  bltu         a4, s5, 297f
                  or           s11, s3, s3
                  bge          t4, a1, 302f
288:              addi         a3, s5, 1069
                  bgeu         s5, t6, 307f
                  add          t1, t0, ra
                  beq          s1, s11, 297f
                  srl          a7, a4, s10
                  andi         a3, s10, -1862
                  slti         t1, s7, -1800
                  sll          s0, t5, gp
                  nop
297:              bltu         zero, a5, 314f
                  blt          t6, s9, 309f
                  addi         a2, s2, 569
                  bltu         a7, t0, 318f
                  bne          s10, a4, 308f
302:              sra          s11, s9, a1
                  bgeu         a6, s2, 318f
                  srai         s4, s0, 0
                  ori          s0, t2, 350
                  bgeu         zero, a1, 326f
307:              xor          s5, s2, t1
308:              xor          s6, a5, s6
309:              add          a0, t6, s9
                  bgeu         zero, a1, 311f
                  la           tp, sub_1
                  srli         gp, a6, 26
                  slti         t1, s0, 1428
                  addi         tp, tp, -513
                  and          zero, t4, a6
                  ori          a7, s7, 1217
                  xor          a7, a4, s6
                  slli         t6, t6, 20
main_j1:          jalr         t3, tp, 513 #jump main -> sub_1
311:              auipc        t2, 942941
                  xori         gp, a5, -667
                  ori          s6, s0, 1260
314:              srli         s0, t2, 2
                  xori         t0, a0, 1501
                  nop
                  add          ra, s7, s2
318:              addi         t3, t0, -1598
                  srl          ra, t2, ra
                  xor          s0, t6, a5
                  sra          t0, a5, t0
                  sltiu        sp, s6, -1951
                  bne          a5, s3, 331f
                  srli         a3, s10, 29
                  and          s2, a3, s7
326:              add          s6, gp, a3
                  sltu         s9, tp, a4
                  bge          tp, t0, 330f
                  xor          a4, s6, t1
330:              sltiu        s8, t5, -1114
331:              slli         s9, s8, 30
                  ori          s6, a6, -329
                  bne          s3, zero, 351f
                  bge          s11, s2, 336f
                  bltu         s5, t4, 340f
336:              or           s0, s4, t0
                  or           s8, s6, zero
                  slti         s6, s11, 1154
                  and          s4, s1, gp
340:              bge          t6, t0, 359f
                  bltu         a4, a2, 346f
                  srli         zero, s1, 15
                  addi         t1, a6, -44
                  bltu         s10, ra, 363f
                  bgeu         t3, a2, 357f
346:              slti         s8, t2, -572
                  ori          t0, s3, -710
                  beq          t6, t6, 354f
                  beq          a5, s11, 360f
                  sra          tp, s8, s11
351:              auipc        s7, 879185
                  addi         t6, s7, -709
                  bge          t6, sp, 371f
354:              sub          s5, gp, t4
                  nop
                  beq          s9, gp, 375f
357:              nop
                  bne          s11, s11, 364f
359:              or           ra, tp, s5
360:              bne          t3, s10, 376f
                  beq          t4, t3, 378f
                  lui          gp, 460874
363:              nop
364:              sll          t0, s1, t2
                  beq          t6, sp, 371f
                  sra          s6, s6, ra
                  srl          s2, a3, s6
                  beq          a3, a0, 384f
                  ori          s1, s4, -602
                  andi         tp, s8, 1328
371:              srai         a2, a7, 28
                  addi         t1, gp, 456
                  ori          a1, a5, 1923
                  srai         a2, a0, 5
375:              xor          s5, t6, s1
376:              sltu         t5, s4, s10
                  lui          t3, 941106
378:              xori         t6, a7, -1781
                  srli         s6, t0, 0
                  sltiu        a2, gp, -591
                  bne          s6, a3, 399f
                  slli         s9, sp, 13
                  bltu         s11, s0, 392f
384:              bne          tp, s8, 390f
                  nop
                  srli         a0, s2, 22
                  bne          s4, a4, 402f
                  sltu         s2, a1, s11
                  sltiu        gp, s2, -1779
390:              and          t3, s4, s4
                  xor          tp, a1, s8
392:              bgeu         a1, a4, 410f
                  sll          a2, s3, t5
                  nop
                  blt          a7, s7, 397f
                  addi         t5, s3, 694
397:              andi         t1, s2, 744
                  srli         a0, s2, 22
399:              ori          t0, a5, 1666
                  bgeu         s11, t1, 418f
                  srai         t1, a4, 28
402:              xori         a2, a2, -1638
                  bge          a3, a2, 409f
                  slti         t2, a7, -1808
                  auipc        s4, 925323
                  ori          a2, s3, -575
                  or           s2, t0, a6
                  nop
409:              srli         a4, s0, 23
410:              srli         ra, s8, 21
                  sub          s5, a0, s1
                  xori         a4, t3, -1272
                  lui          s2, 822447
                  srl          a2, s9, s5
                  bge          a6, a6, 434f
                  bne          ra, s10, 422f
                  bltu         s9, s10, 434f
418:              nop
                  slti         t5, a0, -1511
                  srli         s2, s6, 8
                  xor          a0, s7, ra
422:              srai         s7, s10, 19
                  ori          s2, a1, -1543
                  sltu         a3, s8, s0
                  and          a4, a3, t2
                  auipc        s5, 1005321
                  add          s9, a0, s6
                  xori         t0, zero, -888
                  bne          s11, a5, 445f
                  srli         s11, ra, 6
                  lui          s11, 234576
                  slt          s6, t0, sp
                  add          t6, t6, a7
434:              xor          a2, s10, t5
                  sll          zero, s10, tp
                  nop
                  srl          s4, a2, s6
                  andi         s7, a5, 415
                  lui          gp, 877375
                  slti         s10, s1, -853
                  xori         a4, t1, -2045
                  srli         s10, gp, 4
                  bne          a2, t2, 463f
                  slli         t0, t6, 23
445:              bne          tp, s11, 456f
                  nop
                  slt          a4, a5, a3
                  beq          ra, t2, 466f
                  srl          s8, s6, s9
                  bltu         s4, a5, 469f
                  and          t1, t2, a0
                  bltu         a5, s0, 464f
                  bne          s8, s0, 469f
                  sub          a1, a5, a0
                  srai         t1, t6, 28
456:              sll          t2, s7, s8
                  srli         a2, s0, 18
                  slt          s5, gp, t5
                  srl          t0, s3, t3
                  or           t0, s1, s9
                  andi         s10, a0, 332
                  auipc        a4, 474667
463:              ori          t2, a4, -1683
464:              addi         s8, s6, -1730
                  beq          s1, a4, 476f
466:              xori         t1, s4, 1988
                  addi         s9, t0, -1181
                  sub          s5, a5, s7
469:              lui          t3, 971077
                  blt          s7, s3, 482f
                  bltu         s0, s6, 490f
                  ori          a2, s8, -263
                  sll          tp, s8, t4
                  blt          a1, s0, 475f
475:              lui          s1, 988238
476:              slli         tp, s7, 2
                  sltu         s8, a3, t0
                  srl          s9, t2, t1
                  bgeu         s7, sp, 484f
                  sra          s8, a7, gp
                  bne          s3, t3, 483f
482:              sltiu        s6, t0, -113
483:              sll          t5, t1, t1
484:              sltu         t0, ra, a4
                  and          gp, s3, s3
                  srai         s7, t5, 4
                  sll          s7, tp, s11
                  sra          s7, tp, a3
                  xori         t3, a7, -1131
490:              srli         a7, s7, 12
                  nop
                  sll          s4, a7, s4
                  bge          s0, gp, 500f
                  slli         tp, s7, 24
                  ori          a1, a5, 690
                  bge          t3, t3, 504f
                  bltu         a6, a4, 514f
                  lui          s7, 834541
                  sra          t2, gp, s10
500:              lui          zero, 108723
                  and          s0, a4, s8
                  bne          a2, a1, 508f
                  srli         a2, t1, 31
504:              sra          ra, s10, s1
                  bltu         t5, s11, 510f
                  bge          s8, a3, 521f
                  addi         ra, sp, -1026
508:              addi         s0, t0, -319
                  add          s7, t1, s0
510:              andi         s5, a6, 1933
                  andi         sp, t0, 714
                  sub          a2, s10, gp
                  nop
514:              slli         s1, s3, 22
                  or           t2, s5, a4
                  slti         t6, t5, 419
                  add          t2, sp, s0
                  and          a2, s4, t2
                  or           tp, ra, t0
                  sltiu        ra, a1, -410
521:              bne          a6, s7, 527f
                  or           sp, t4, tp
                  slli         gp, s7, 17
                  andi         a7, t3, 1618
                  xor          s0, ra, s3
                  bgeu         s11, s0, 532f
527:              xori         ra, sp, -1039
                  sub          t2, s7, a4
                  srl          t1, s5, s5
                  sra          a4, a0, sp
                  add          t6, t5, a5
532:              sra          s8, t2, ra
                  srl          t2, a4, a1
                  bgeu         sp, t5, 545f
                  and          a7, gp, zero
                  andi         s7, a3, -157
                  and          t6, a0, a3
                  sltiu        tp, a4, 354
                  srli         s7, t0, 3
                  xori         t6, s9, 1247
                  sub          s8, s10, gp
                  sll          sp, sp, t1
                  sub          t0, a5, t3
                  bltu         s3, t1, 549f
545:              bltu         a4, tp, 547f
                  bgeu         s10, a6, 565f
547:              or           a4, ra, tp
                  or           s5, tp, tp
549:              xori         t1, t1, -1191
                  nop
                  srai         t6, gp, 13
                  srli         s6, a6, 30
                  beq          gp, s10, 562f
                  slti         ra, a7, 615
                  xor          s1, a1, s2
                  bne          a3, s6, 564f
                  nop
                  and          s2, s2, a2
                  srl          a0, s11, a1
                  xori         t3, a4, 1233
                  bge          s11, s0, 573f
562:              lui          ra, 571608
                  add          s11, a1, t6
564:              auipc        s7, 21050
565:              slti         s7, s4, 458
                  srli         a7, a3, 20
                  or           a1, t3, t3
                  lui          t3, 193104
                  xori         t0, a5, 712
                  xori         a0, t0, 188
                  andi         s9, t4, -496
                  sra          a7, s5, a0
573:              blt          t1, s0, 590f
                  sub          a6, s11, s9
                  bgeu         gp, t4, 593f
                  auipc        s8, 387108
                  srai         s2, zero, 31
                  auipc        s6, 156718
                  nop
                  addi         s0, s11, -1922
                  addi         s8, t2, 24
                  sub          t2, t5, s3
                  sra          a4, t6, t2
                  xor          t5, t6, t2
                  addi         a7, s7, -228
                  srli         s5, gp, 8
                  or           s9, zero, a2
                  srai         a3, s11, 14
                  bge          t6, s0, 606f
590:              and          ra, s4, t2
                  addi         a1, s9, 715
                  srl          s6, s8, t1
593:              bge          s7, sp, 609f
                  slt          s11, s5, s1
                  slt          t3, t0, s3
                  sub          s6, t3, s2
                  srl          t1, a4, t2
                  srl          s2, tp, a6
                  slti         s11, sp, -880
                  lui          gp, 976175
                  andi         s2, t1, 817
                  beq          a2, s7, 620f
                  and          t5, t0, t2
                  sll          s1, a6, t5
                  xori         a1, s6, 1807
606:              slli         ra, gp, 24
                  xor          a7, s5, t6
                  slti         s8, s0, 944
609:              sra          sp, t3, s9
                  bgeu         s0, s5, 616f
                  auipc        a3, 555604
                  srai         a1, s4, 6
                  sltu         t6, a1, zero
                  sra          gp, ra, a3
                  srli         s2, a4, 22
616:              addi         a1, t6, 1583
                  beq          a1, s3, 632f
                  sltu         s2, t5, t2
                  bgeu         t1, a0, 634f
620:              add          s7, t6, a6
                  srl          s7, zero, tp
                  sll          a1, s11, t4
                  bge          s11, s11, 642f
                  bltu         a1, zero, 640f
                  bge          gp, a3, 631f
                  sll          s8, t0, a3
                  slli         s10, t0, 2
                  add          t0, t5, a2
                  auipc        s4, 544451
                  srai         sp, a1, 10
631:              slti         a0, gp, -80
632:              srli         s8, t5, 17
                  lui          t5, 610112
634:              bgeu         s10, a2, 652f
                  ori          ra, s1, 367
                  nop
                  beq          s10, t1, 656f
                  srli         t5, t6, 29
                  bge          t5, a2, 646f
640:              andi         a6, a3, -735
                  bge          s1, t4, 642f
642:              bge          t6, t1, 662f
                  slli         t3, a6, 27
                  srai         s6, s8, 31
                  sll          s6, s4, t0
646:              bltu         a3, t4, 651f
                  bge          t6, s1, 658f
                  nop
                  sll          t5, sp, a5
                  andi         zero, a6, 878
651:              and          s1, tp, s9
652:              slti         t2, a0, -1792
                  slt          t2, gp, a3
                  sub          zero, s0, a0
                  and          s2, a7, a2
656:              sub          t6, a5, t0
                  xor          s10, s3, s11
658:              slli         sp, s2, 25
                  sltiu        s2, s5, -319
                  or           sp, gp, a1
                  bgeu         ra, s6, 673f
662:              sll          tp, s4, s9
                  add          t1, s2, t0
                  sltiu        t1, a5, 654
                  add          a4, s4, s2
                  srl          a7, s8, a4
                  slt          s2, t1, a0
                  blt          s5, s8, 686f
                  bltu         s6, a0, 671f
                  sra          zero, t1, ra
671:              addi         s1, a5, -860
                  bne          t5, t6, 684f
673:              sll          s6, s6, sp
                  sll          a4, s11, t0
                  xor          a4, t3, sp
                  sub          s4, s11, s5
                  srai         a0, sp, 4
                  srai         sp, a4, 10
                  blt          a5, t5, 685f
                  auipc        s10, 311011
                  xor          s5, s11, s11
                  srl          s5, s10, s7
                  andi         t6, t6, -589
684:              addi         s7, a2, -1371
685:              beq          t6, s5, 704f
686:              xori         a0, s9, 1208
                  and          s4, t2, s6
                  ori          t3, s11, 273
                  andi         a2, gp, -977
                  beq          t1, a3, 696f
                  la           s2, region_1+1126 #start riscv_load_store_rand_instr_stream_0
                  sltiu        t3, s1, 901
                  slt          s6, s1, s3
                  sll          s0, t2, a4
                  lbu          a3, -40(s2)
                  nop
                  lhu          a1, -56(s2)
                  srli         s0, tp, 1
                  ori          a6, s7, 1762
                  lbu          t0, -39(s2)
                  sb           t1, -57(s2)
                  lbu          s1, 22(s2)
                  xori         ra, s1, -1074
                  lbu          t3, -52(s2)
                  sb           tp, 60(s2)
                  slti         s1, ra, 173
                  sh           ra, 38(s2)
                  lb           s4, -19(s2)
                  srai         s4, zero, 29
                  sra          a0, t1, gp
                  slli         a7, s4, 5
                  sb           s5, -45(s2)
                  lw           a6, 2(s2)
                  sb           a1, -37(s2)
                  lh           s10, 56(s2)
                  lbu          a2, -11(s2)
                  lbu          s11, -33(s2)
                  addi         s11, t5, 1579
                  sub          tp, s3, s2
                  sb           t0, 47(s2)
                  and          a4, s3, t5
                  and          t5, t1, a3
                  srl          t3, a5, s8
                  sh           s9, 48(s2)
                  lbu          s1, -46(s2)
                  sw           gp, 50(s2)
                  sub          s4, s6, s3
                  ori          a6, a4, -607
                  lbu          zero, -5(s2)
                  addi         s11, s11, 939
                  lh           s1, 54(s2)
                  sub          t5, t0, a1
                  slt          s1, zero, a0
                  lui          a0, 62349
                  lbu          a4, -33(s2)
                  sra          a3, a3, t5
                  sb           a3, 59(s2)
                  xor          s0, a6, t0
                  sub          a1, a2, tp
                  lb           t6, -57(s2)
                  slt          t1, s5, s11
                  addi         a7, t5, 458
                  sw           s5, 26(s2)
                  lbu          gp, -45(s2)
                  lb           s10, -27(s2)
                  lb           s10, 5(s2)
                  srl          s6, a6, a3
                  lh           s1, 0(s2) #end riscv_load_store_rand_instr_stream_0
                  sra          a6, tp, tp
                  sltiu        a6, zero, -1168
                  and          s5, tp, s10
                  slti         s2, t3, -844
                  xor          sp, a7, t6
696:              sll          s2, s4, s9
                  sra          s5, ra, s8
                  beq          a6, t4, 710f
                  and          s1, a0, t0
                  andi         a6, t4, -1459
                  lui          s6, 150914
                  bltu         t4, t1, 713f
                  srli         a7, s2, 21
704:              auipc        sp, 380398
                  lui          ra, 541184
                  srai         tp, ra, 5
                  andi         a3, s11, 1488
                  nop
                  addi         s0, s3, -694
710:              or           s10, s7, a5
                  slti         a0, a2, -1454
                  ori          s6, s4, -1010
713:              sub          a0, t2, s0
                  ori          t6, ra, 1223
                  srli         s2, t1, 4
                  srli         a7, a2, 27
                  sub          a6, s3, a7
                  sub          s6, s11, gp
                  srl          t5, s0, a6
                  sltiu        a2, t5, -2017
                  ori          a4, s9, -155
                  sll          gp, ra, s5
                  andi         t0, t5, -1881
                  ori          ra, a5, 890
                  blt          t0, t5, 732f
                  sltu         s1, s6, a3
                  srai         s0, a0, 10
                  blt          tp, t5, 746f
                  bltu         s2, a0, 734f
                  sub          t0, a6, sp
                  ori          t1, s2, -1798
732:              nop
                  ori          gp, t2, -1041
734:              andi         a4, s6, -465
                  slti         a2, a2, 708
                  srl          s4, s6, tp
                  nop
                  and          s6, tp, a4
                  srl          s11, s2, s0
                  and          t5, s11, a4
                  sub          a7, s10, a1
                  auipc        a0, 381719
                  sll          s10, t6, a2
                  bge          s9, t1, 759f
                  xor          t2, a7, a2
746:              srai         a1, s2, 16
                  srai         t2, t3, 6
                  ori          s1, s3, 318
                  sra          s7, s11, a5
                  blt          t0, s6, 767f
                  srl          s7, t5, s8
                  bge          sp, s7, 768f
                  slli         a6, s5, 6
                  srli         a4, a3, 9
                  bne          zero, t5, 766f
                  or           s7, a3, a1
                  sltu         a1, s6, ra
                  sra          gp, s1, zero
759:              bltu         zero, a1, 761f
                  add          a1, a6, s11
761:              sll          tp, s4, s6
                  nop
                  sltu         t1, a4, a4
                  xori         s10, a6, 521
                  bltu         t3, t3, 783f
766:              andi         s1, a1, -1983
767:              lui          s11, 348410
768:              sub          a6, a5, s2
                  blt          gp, a3, 788f
                  srl          s9, t3, t4
                  bltu         s3, sp, 777f
                  addi         zero, a2, -1067
                  bltu         t2, a0, 775f
                  xori         sp, s0, -1455
775:              andi         s7, gp, -541
                  lui          a0, 481378
777:              xor          s6, s9, s5
                  srai         a0, t5, 11
                  or           a4, s2, t4
                  sra          s5, t5, a5
                  la           tp, sub_2
                  lui          zero, 688403
                  srli         a0, s2, 20
                  auipc        a2, 724981
                  lui          s6, 82494
                  sll          gp, s2, a7
                  addi         tp, tp, -55
                  sub          s10, a0, a1
                  sub          t2, s2, s6
                  or           s7, a1, t5
main_j2:          jalr         t3, tp, 56 #jump main -> sub_2
                  srli         ra, gp, 6
                  sltu         sp, a5, s4
783:              andi         s2, t2, 189
                  sub          a2, s11, a1
                  bgeu         s8, t5, 805f
                  sltiu        a4, a2, -1756
                  sub          s8, s10, a3
788:              or           tp, a3, s1
                  beq          a7, s6, 798f
                  srl          tp, a7, s2
                  sll          gp, a6, s0
                  bge          a6, s9, 797f
                  add          s4, s10, a7
                  nop
                  srai         a7, tp, 20
                  slti         ra, a0, 1333
797:              beq          s10, zero, 813f
798:              sltiu        t1, t5, 940
                  xori         s6, a2, 1057
                  add          s6, s4, t6
                  beq          zero, s2, 819f
                  nop
                  sub          ra, t0, a2
                  sltiu        t1, s4, -609
805:              bltu         s3, t0, 811f
                  srli         s11, a4, 12
                  sltu         s6, zero, a4
                  nop
                  addi         t5, t2, 770
                  xor          ra, t1, s6
811:              bgeu         t2, s7, 830f
                  addi         s9, s1, 953
813:              sra          sp, s11, a5
                  slti         s8, ra, 255
                  slt          s5, s4, s0
                  ori          s8, a3, 1177
                  sra          s5, a2, a0
                  sra          ra, s2, s4
819:              bge          s1, a4, 834f
                  bge          zero, zero, 838f
                  and          sp, t2, t4
                  bltu         s5, a2, 823f
823:              and          t0, a1, t6
                  blt          s5, s0, 832f
                  sra          a6, s4, a0
                  sub          a6, a0, a2
                  srli         t1, s8, 4
                  sll          tp, zero, gp
                  or           s11, s2, s6
830:              xor          s6, a3, s0
                  add          s6, a0, ra
832:              sub          s8, s3, a7
                  srai         a4, ra, 0
834:              bltu         zero, t4, 851f
                  beq          sp, a1, 851f
                  sltiu        s8, a6, 1008
                  bne          s10, a2, 854f
838:              add          a0, t3, s5
                  lui          ra, 404578
                  beq          s1, t0, 856f
                  blt          a4, a4, 847f
                  ori          gp, s10, -1074
                  and          s9, s9, a4
                  nop
                  bgeu         a2, a0, 863f
                  slt          s6, a3, zero
847:              bge          ra, t6, 849f
                  bltu         t6, t0, 854f
849:              srl          a7, t6, s1
                  bne          s6, s3, 868f
851:              addi         a4, t3, -1594
                  add          s10, tp, t6
                  slt          s4, s2, t5
854:              nop
                  xori         t6, s9, 503
856:              nop
                  sll          s6, a3, a6
                  bltu         a6, s7, 869f
                  and          t2, s2, zero
                  bge          s11, s5, 875f
                  xor          a3, sp, a1
                  beq          a0, t0, 864f
863:              sub          s10, s9, a6
864:              blt          s6, a1, 870f
                  slti         s11, s9, 1034
                  sub          a0, a6, s1
                  srl          a2, a4, t6
868:              sra          a7, a7, s0
869:              slti         s0, s1, -965
870:              or           t2, tp, t2
                  auipc        s4, 133461
                  andi         ra, a7, -888
                  blt          tp, s0, 878f
                  slti         s4, a3, 99
875:              xor          t3, s7, s2
                  sub          t6, a1, s3
                  or           t6, t5, s4
878:              sltu         t2, tp, a3
                  slt          tp, a7, gp
                  bltu         a5, t2, 885f
                  nop
                  srai         s8, a0, 1
                  blt          zero, t4, 885f
                  srl          a7, a6, s1
885:              xor          s2, gp, s4
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            ori          ra, s2, 1337
                  add          a2, zero, t5
                  xori         s9, s10, -844
                  addi         ra, t1, 574
                  lui          s1, 989651
                  addi         t4, t4, -56
                  sw           t3, 4(t4)
                  or           ra, t4, t2
                  la           sp, region_0+1226 #start riscv_load_store_rand_instr_stream_1
                  lhu          tp, -28(sp)
                  sltiu        s10, s7, 1158
                  lui          s10, 886014
                  sub          t0, s2, zero
                  lb           s6, 10(sp)
                  ori          s1, tp, -1501
                  sb           a3, -20(sp)
                  and          a6, gp, s1
                  slli         s10, t4, 1
                  slti         t0, sp, -487
                  sb           s0, 56(sp)
                  lhu          s2, -46(sp)
                  sw           sp, -50(sp)
                  lhu          t0, 64(sp)
                  or           t3, a2, s4
                  xor          s4, s11, a3
                  sw           t0, 6(sp)
                  lb           t6, -4(sp)
                  lbu          t1, -59(sp)
                  sub          s10, a6, s4
                  addi         t1, gp, -666
                  srli         t0, t0, 11
                  lh           s5, -6(sp)
                  sh           a5, -28(sp)
                  sb           a2, 27(sp)
                  srl          a6, ra, s6
                  srai         t2, sp, 26
                  sub          s6, s0, a4
                  lb           a4, 8(sp)
                  sll          a0, s9, s11
                  lhu          t0, -10(sp)
                  or           gp, s11, a7
                  lb           tp, -21(sp)
                  srli         a2, a2, 18
                  ori          t6, gp, 1044
                  lb           s6, -13(sp)
                  xor          s10, a0, t0
                  lb           t3, 47(sp)
                  slti         s0, s5, -1637
                  add          s1, a4, s6
                  srl          t5, a0, a0
                  nop
                  lb           tp, 51(sp)
                  nop
                  sb           gp, -11(sp) #end riscv_load_store_rand_instr_stream_1
                  lui          t1, 407441
                  sltiu        a0, s6, 262
                  ori          t6, t5, -610
                  sra          s6, a4, t2
                  srai         s9, s5, 15
                  or           s9, zero, t1
                  sltu         t3, ra, s2
                  sra          tp, a5, t0
                  nop
                  blt          gp, tp, 11f
                  and          s7, s1, s5
11:               sra          a3, s0, s3
                  andi         a7, t2, 594
                  blt          tp, a4, 27f
                  slt          s0, s6, t0
                  ori          s6, s9, 694
                  slt          s1, t2, a4
                  addi         s5, zero, -913
                  auipc        a7, 485086
                  sra          s1, a0, a1
                  lui          s11, 1043767
                  and          tp, t3, a1
                  or           s4, t3, s1
                  beq          a7, t6, 42f
                  blt          s7, t5, 34f
                  blt          s6, s6, 45f
                  srli         s9, t4, 31
27:               slli         a4, a4, 4
                  slti         tp, s8, 1364
                  sll          t0, s10, a4
                  slli         t2, ra, 22
                  sub          t3, s10, a7
                  add          a3, s6, t3
                  sll          a6, s0, s6
34:               blt          t5, tp, 54f
                  beq          ra, a3, 53f
                  addi         gp, ra, -1753
                  bne          zero, s6, 44f
                  sra          s4, s10, s2
                  andi         t1, a6, 363
                  nop
                  bge          zero, t1, 42f
42:               addi         s10, a6, 177
                  ori          sp, a6, -272
44:               addi         t5, t2, 1612
45:               bge          a1, a4, 64f
                  sub          s2, ra, zero
                  bgeu         s10, ra, 66f
                  srai         a7, s11, 13
                  bltu         a0, s8, 59f
                  andi         ra, t5, -1653
                  sra          s11, s10, zero
                  srli         s8, s0, 5
53:               blt          t3, t2, 69f
54:               or           sp, zero, a3
                  sltu         t3, s3, s1
                  slli         s8, a2, 20
                  lui          sp, 787933
                  bltu         s8, t1, 71f
59:               ori          t2, t3, 1913
                  sra          a6, t3, s10
                  bltu         a2, t3, 81f
                  slti         zero, a6, 203
                  srai         a6, a6, 24
64:               slli         t0, s5, 22
                  andi         a7, a4, -799
66:               add          s10, zero, s8
                  or           sp, zero, s0
                  sltu         s1, ra, a0
69:               lui          s7, 510229
                  andi         gp, s10, -1533
71:               srl          a2, s5, a5
                  slt          a7, t0, sp
                  sra          a2, s0, a5
                  lui          a3, 836819
                  addi         t1, s11, -150
                  beq          t1, sp, 94f
                  slt          a7, t2, a2
                  sltu         a4, t5, s11
                  add          a3, t0, a5
                  bltu         s7, t0, 82f
81:               ori          a4, a1, 1945
82:               or           t0, ra, s8
                  sltu         a7, a1, a0
                  xori         s4, ra, -1629
                  sltiu        t6, a5, 1962
                  add          s4, a3, a1
                  blt          s0, s10, 96f
                  slli         sp, a4, 22
                  srli         a4, s11, 16
                  slti         s2, s8, 216
                  and          t5, a2, a7
                  slt          a7, zero, s3
                  slli         a3, s8, 10
94:               blt          s11, s3, 96f
                  or           a7, t4, s9
96:               sltiu        s2, t4, 118
                  xori         a0, s5, 1947
                  sltu         s0, s3, t2
                  sll          ra, t6, a7
                  xori         tp, t3, 1101
                  slt          gp, t0, a4
                  sltiu        s0, s11, -1398
                  nop
                  addi         t5, a4, -1579
                  andi         s8, a4, -1939
                  sub          t2, s10, s9
                  lui          a0, 277103
                  xori         s10, zero, -367
                  sll          a4, a7, a2
                  sltiu        s5, s0, -554
                  sll          s6, s0, s9
                  slt          a7, t0, t4
                  andi         t0, s8, 290
                  bgeu         s10, ra, 119f
                  addi         s11, t0, 1533
                  xori         t6, a2, 1309
                  sltu         a6, a0, a2
                  slti         a1, s4, 321
119:              lui          zero, 423991
                  bge          gp, a3, 140f
                  and          s1, a7, s11
                  slli         zero, sp, 5
                  blt          tp, s8, 124f
124:              xori         zero, s1, 892
                  xori         s7, t2, 1418
                  auipc        s11, 466449
                  slt          gp, a0, sp
                  add          s10, t0, a7
                  bltu         s3, gp, 132f
                  lui          zero, 484848
                  add          a3, a5, s9
132:              add          s5, t3, a4
                  srli         t6, s10, 12
                  slli         a7, a0, 13
                  xor          s1, t3, t6
                  xor          t0, t5, s0
                  slti         t2, s10, 319
                  lui          a4, 408587
                  xor          a2, a0, gp
140:              bgeu         s9, s9, 157f
                  sltu         s2, a3, zero
                  xor          s11, t4, s4
                  or           s4, sp, ra
                  ori          s2, a7, 1497
                  slli         ra, s6, 1
                  slt          s4, t3, a3
                  lui          t3, 392002
                  slli         a0, s7, 0
                  bltu         s8, s5, 160f
                  blt          a1, zero, 156f
                  bgeu         s6, s2, 153f
                  beq          tp, s8, 164f
153:              andi         a0, s4, 1515
                  srli         zero, s3, 29
                  xor          s1, a4, s0
156:              bne          a6, t2, 163f
157:              and          a0, s4, t3
                  ori          s11, a2, -1806
                  lui          a1, 44072
160:              auipc        t2, 839678
                  sltu         t2, s11, a3
                  bltu         gp, s1, 175f
163:              xori         t3, s7, 1467
164:              bne          t5, a0, 184f
                  slti         s7, gp, -88
                  beq          a7, s6, 186f
                  andi         t5, t1, -981
                  srl          t1, a7, s6
                  beq          s6, t6, 175f
                  sltu         a7, a1, a3
                  slli         t3, a3, 21
                  slti         tp, a4, 564
                  and          sp, s3, s4
                  auipc        sp, 871207
175:              addi         sp, s1, -871
                  slti         s2, a7, -1381
                  sra          a0, a1, tp
                  bltu         t1, s0, 197f
                  slli         t2, t1, 5
                  ori          sp, a2, -1795
                  ori          s4, s10, -912
                  slti         a6, a0, -1784
                  sltiu        t1, a7, 291
184:              slti         a2, s5, -578
                  beq          s1, t0, 198f
186:              bne          t1, a7, 187f
187:              sltu         a0, s7, s2
                  add          t1, sp, s2
                  nop
                  bgeu         s8, t4, 200f
                  blt          a5, tp, 193f
                  bge          s3, t1, 212f
193:              and          s10, t2, s4
                  lui          s4, 1002978
                  srli         s5, s9, 0
                  slt          a7, a4, s3
197:              slli         s4, gp, 7
198:              sub          s8, s1, ra
                  xori         s4, s10, -1814
200:              sll          s0, s7, s1
                  bge          t6, t5, 204f
                  beq          s5, s3, 219f
                  lui          s7, 493603
204:              xori         a2, s7, 737
                  bltu         s11, s3, 216f
                  xori         t1, s11, -69
                  lui          s10, 745688
                  srl          s7, s7, gp
                  lui          t0, 946057
                  bne          sp, s10, 220f
                  nop
212:              xori         t2, s6, 1698
                  sub          t5, s11, a4
                  auipc        a3, 855399
                  add          s5, t5, zero
216:              sltiu        s0, t3, 1553
                  auipc        t3, 1016553
                  sub          t5, a6, s11
219:              sll          s4, zero, a5
220:              blt          t5, a3, 222f
                  xor          s4, s0, s5
222:              sra          s8, t0, s3
                  addi         t3, a4, 452
                  beq          s0, t1, 236f
                  beq          sp, t0, 239f
                  beq          s5, s7, 242f
                  xori         s10, s3, -606
                  or           s11, s7, gp
                  bltu         a3, s11, 247f
                  auipc        a4, 583137
                  slt          gp, t6, s2
                  add          a1, t5, s2
                  ori          a0, a2, 445
                  add          s0, s3, s1
                  blt          s4, a6, 255f
236:              lui          t6, 764627
                  sll          a2, tp, a6
                  beq          a1, s10, 243f
239:              add          a1, s9, s7
                  sll          a2, t3, t4
                  bgeu         zero, s2, 248f
242:              slti         s4, t0, 903
243:              sltiu        a4, a0, 627
                  beq          s3, s9, 263f
                  bge          s8, zero, 247f
                  sll          a3, a1, t0
247:              addi         t3, s10, -925
248:              lui          a2, 521804
                  slli         t5, s10, 14
                  or           s7, a4, ra
                  sub          zero, t6, a1
                  slti         t5, s10, 1035
                  bge          a7, s0, 272f
                  slt          t6, a5, t4
255:              nop
                  slt          t3, sp, a1
                  bltu         s6, s0, 266f
                  sltiu        s5, s0, -1282
                  bge          s5, s11, 272f
                  srai         a0, sp, 19
                  sltiu        s8, zero, 1838
                  slli         s10, a3, 30
263:              slti         s7, a6, 1297
                  sra          s5, t3, a7
                  add          s0, s10, s0
266:              andi         zero, s1, -1997
                  and          a1, t2, s6
                  srl          s11, s11, tp
                  add          t6, s9, t3
                  andi         ra, a3, 1026
                  addi         a3, s11, 1531
272:              slti         sp, a2, -1129
                  and          t6, gp, s2
                  bltu         a0, a1, 281f
                  slti         t6, t3, -485
                  sll          s9, ra, t1
                  srl          t0, a6, t5
                  and          a3, a5, t2
                  and          a7, a0, t6
                  andi         t1, a1, -1748
281:              lui          a3, 175073
                  auipc        s5, 181983
                  bge          a6, s10, 285f
                  and          a6, t6, t6
                  la           a6, region_0+687 #start riscv_load_store_rand_instr_stream_0
                  sw           tp, -51(a6)
                  lb           s5, -20(a6)
                  sb           tp, 51(a6)
                  srl          t2, s8, s4
                  lbu          s7, 42(a6)
                  lb           s7, 35(a6)
                  sb           a5, 16(a6)
                  ori          t6, zero, 1148
                  sb           s9, -8(a6)
                  sltu         t6, s5, t1
                  lh           s0, -45(a6)
                  sb           t5, -61(a6)
                  sltu         gp, t4, sp
                  lhu          tp, -1(a6)
                  sb           s4, -64(a6)
                  addi         a7, t5, 70
                  lb           t0, 40(a6)
                  auipc        t0, 964380
                  lb           s5, -48(a6)
                  srai         s2, zero, 10
                  addi         a0, ra, -1014
                  lb           s7, -54(a6)
                  srli         tp, tp, 26
                  xori         a2, s0, -851
                  auipc        s11, 776417
                  add          a0, t6, s1
                  sltu         a2, s8, s5
                  srl          ra, s1, t4
                  lbu          t5, -64(a6)
                  lbu          t0, 34(a6)
                  lhu          s5, -53(a6)
                  lbu          a7, 42(a6)
                  lhu          gp, 5(a6)
                  lh           t2, -25(a6)
                  andi         a2, s0, 1480
                  lbu          t2, -41(a6)
                  sb           t1, 32(a6)
                  slt          t3, a3, a2
                  lbu          s4, -33(a6)
                  lb           a4, -39(a6)
                  addi         t1, s8, -472
                  lbu          s10, 4(a6)
                  slti         a1, s0, -1087
                  lhu          a3, -59(a6) #end riscv_load_store_rand_instr_stream_0
285:              sra          s9, s9, s3
                  srai         gp, t1, 14
                  slli         a1, s9, 0
                  bltu         a5, s8, 291f
                  ori          sp, t6, -534
                  srli         gp, t0, 21
291:              slt          s6, a2, a1
                  nop
                  and          s1, a7, s11
                  andi         ra, t3, 1729
                  lw           t3, 4(t4)
                  ori          s1, a4, 156
                  sub          t1, s11, a3
                  addi         zero, s7, -1155
                  xor          tp, t2, s2
                  slti         s7, t2, -1154
                  addi         t4, t4, 56
                  slli         t5, s11, 7
402:              addi x22, x28, 1
402:              jalr x22, x22, 0
sub_1:            addi         t4, t4, -52
                  andi         a1, s6, -1740
                  sw           t3, 4(t4)
                  nop
                  srai         a7, s6, 26
                  srai         ra, a2, 0
                  slt          s5, ra, gp
                  xori         a4, zero, -1851
                  la           t1, sub_4
                  srli         t0, t3, 27
                  addi         t1, t1, -4
                  slli         t5, t5, 8
                  sltiu        t6, a4, -1552
                  srli         t2, s9, 20
                  blt          a5, t6, sub_1_j4 #branch to jump instr
                  sltiu        s2, s9, -1533
sub_1_j4:         jalr         t3, t1, 5 #jump sub_1 -> sub_4
                  sra          a4, s1, a3
                  sltiu        t6, a5, 647
                  addi         s1, a0, -1728
                  sltu         s5, s6, a0
                  slli         s8, t6, 23
                  xor          s9, s9, t4
                  or           t1, s9, s10
                  sll          t3, a5, t5
                  ori          s2, t2, -1901
                  slt          gp, a3, tp
                  slti         a1, s6, -725
                  add          s10, s7, a1
                  slti         a0, s3, -1376
                  nop
                  bgeu         s2, s9, 27f
                  slti         ra, s4, -857
                  slt          t1, s6, s3
                  slt          s6, a7, s0
                  srai         t3, t0, 0
                  srli         s11, sp, 8
                  blt          s7, a4, 26f
                  lui          s6, 770243
                  slt          a4, s2, s0
                  sltiu        t0, s5, -1325
                  sub          tp, zero, a1
                  sltiu        t3, s1, -219
26:               bge          a6, tp, 27f
27:               srl          a0, a1, a4
                  sub          a6, t5, s1
                  nop
                  lw           t3, 4(t4)
                  add          s2, s10, tp
                  nop
                  andi         s11, t2, -54
                  ori          s4, s10, -1122
                  sub          s8, s10, t0
                  addi         t4, t4, 52
                  sltu         s2, s8, s3
55:               addi x2, x28, 0
55:               jalr x2, x2, 0
sub_4:            srai         s11, gp, 15
                  srai         ra, s1, 25
                  addi         t4, t4, -16
                  sub          s2, t0, a7
                  sw           t3, 4(t4)
                  sltiu        t5, s8, -576
                  la           s2, region_0+509 #start riscv_load_store_rand_instr_stream_2
                  slt          s9, tp, a6
                  srl          s6, t5, sp
                  sll          a7, s2, s5
                  lb           t0, -58(s2)
                  lb           t2, -17(s2)
                  auipc        tp, 289681
                  sb           s9, -30(s2)
                  lb           s6, 5(s2)
                  srli         a3, ra, 5
                  sra          s6, t6, gp
                  lhu          tp, -55(s2)
                  sb           s7, -33(s2)
                  and          s7, s1, sp
                  add          a4, s4, gp
                  slt          gp, t0, s6
                  sltu         t6, gp, t3
                  lb           t6, -44(s2)
                  sh           t5, -33(s2)
                  sh           s6, -41(s2)
                  lhu          t6, 33(s2)
                  srai         ra, a2, 31
                  lhu          tp, -41(s2)
                  sw           a2, 27(s2)
                  sb           s6, -15(s2) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+10 #start riscv_load_store_rand_instr_stream_3
                  lbu          tp, -3(sp)
                  sh           a0, 16(sp)
                  lh           t3, 14(sp)
                  auipc        t3, 550243
                  lui          s9, 401667
                  sra          zero, a5, a1
                  srl          s1, sp, a1
                  sb           s1, -3(sp)
                  or           s2, s8, a5
                  sltu         s6, t6, a6
                  xor          a4, s11, t6
                  sb           s6, 9(sp)
                  lui          a3, 310807
                  or           t1, sp, sp
                  sb           t5, -4(sp)
                  lbu          s1, -9(sp)
                  sb           a1, -5(sp)
                  srai         t6, t0, 26
                  lb           a7, 15(sp)
                  sub          s4, a2, s3
                  sub          a6, s0, a7
                  lb           s4, -8(sp)
                  add          t1, a2, gp
                  srli         s5, s9, 29
                  lbu          a7, 15(sp)
                  srai         ra, t6, 7
                  srai         t6, tp, 8
                  sub          s9, s10, s2
                  sll          s0, sp, ra
                  lhu          t2, 4(sp)
                  lh           zero, 2(sp)
                  xor          a2, a7, t0
                  sltu         t5, s5, s8
                  lui          s11, 461334
                  xori         a6, s7, -641
                  sw           s9, 10(sp)
                  srli         t5, t2, 23
                  lb           t0, -9(sp)
                  sltiu        s11, t5, 714
                  lh           t6, 16(sp)
                  xor          s4, t4, t3
                  lh           s9, 4(sp)
                  lb           a3, -5(sp)
                  srl          a1, a1, tp
                  srl          s6, a4, s0
                  sb           t5, -3(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a7, region_1+538 #start riscv_load_store_rand_instr_stream_1
                  lbu          a0, 224(a7)
                  lbu          s5, -151(a7)
                  lw           s7, 158(a7)
                  sltiu        t3, a3, -388
                  sb           tp, 124(a7)
                  lbu          s11, -241(a7)
                  srli         t2, s9, 4
                  lb           a4, -231(a7)
                  add          zero, s2, a4
                  sltiu        t3, s8, -768
                  lui          a2, 864270
                  lh           s10, 40(a7)
                  lbu          t3, -218(a7)
                  lb           s4, 47(a7)
                  lbu          tp, -217(a7)
                  lw           t3, 106(a7)
                  lbu          s6, 209(a7)
                  andi         ra, a0, -1468
                  auipc        a3, 851150
                  sh           s8, -54(a7)
                  sw           t1, 238(a7)
                  lbu          t5, -150(a7)
                  sb           a6, 89(a7)
                  lhu          t0, 92(a7)
                  and          a6, s0, s10
                  andi         t0, t6, -1398
                  nop
                  srai         s5, s10, 10
                  lb           s2, -205(a7)
                  lbu          a2, -105(a7)
                  srai         gp, zero, 11
                  sh           t2, 208(a7)
                  ori          s0, sp, 1928
                  lb           t3, 189(a7)
                  nop
                  sh           a1, -146(a7)
                  srai         sp, a2, 31
                  lbu          a1, -209(a7)
                  lbu          gp, -237(a7)
                  sh           zero, -52(a7)
                  lbu          zero, -11(a7) #end riscv_load_store_rand_instr_stream_1
                  la           t3, region_0+1585 #start riscv_load_store_rand_instr_stream_0
                  sltiu        gp, a2, -1481
                  auipc        s9, 262518
                  sll          s1, t4, s3
                  lbu          tp, 0(t3)
                  lbu          t6, -64(t3)
                  sb           t1, 34(t3)
                  add          zero, ra, s2
                  sltiu        a1, s7, 1894
                  sb           a0, -61(t3)
                  sb           t4, 38(t3)
                  lb           s2, 0(t3)
                  lbu          s5, 24(t3)
                  ori          ra, gp, 960
                  lh           t0, 59(t3)
                  srl          t6, a0, s5
                  sw           zero, 51(t3)
                  lui          a3, 61859
                  lb           sp, -48(t3)
                  nop
                  sb           a3, 8(t3)
                  slli         s4, t4, 22
                  lui          s8, 254844
                  lb           s2, -5(t3)
                  sh           s6, -23(t3)
                  lb           s7, -23(t3)
                  lb           a2, 34(t3) #end riscv_load_store_rand_instr_stream_0
                  bgeu         s10, t3, 9f
                  slti         s6, s8, -1807
                  addi         a0, t1, -666
                  sra          s7, a2, s9
                  sra          t3, a2, s8
                  or           a3, t5, s3
                  sub          s1, a3, t2
                  slt          t6, a4, s9
                  slti         s11, zero, -18
9:                srli         zero, t2, 27
                  ori          a0, zero, 508
                  lui          t2, 383670
                  beq          s4, s3, 24f
                  xori         a0, s11, -187
                  addi         ra, a7, 1050
                  blt          a0, t2, 21f
                  xori         t5, t3, 2009
                  addi         s11, s11, -457
                  lui          s8, 450850
                  slli         t0, s2, 19
                  andi         a0, s9, -1120
21:               bltu         ra, s9, 24f
                  add          a3, s0, s5
                  bgeu         t0, s1, 34f
24:               slli         s0, tp, 24
                  srai         a6, t0, 15
                  addi         a7, zero, -351
                  bne          s1, s4, 41f
                  sll          t3, t4, s5
                  bge          t0, t5, 41f
                  nop
                  sll          s0, s7, t0
                  xor          t5, s1, s10
                  srli         a3, sp, 22
34:               andi         t3, s11, 1362
                  or           t6, a7, t4
                  or           s6, t3, s10
                  xori         tp, s4, -688
                  sub          s8, s4, s5
                  sub          a7, t3, t6
                  auipc        t1, 785622
                  srli         sp, t0, 9
sub_4_j10:        jal          t3, sub_9 #jump sub_4 -> sub_9
                  slti         s7, a2, -602
                  add          s10, s9, s6
                  addi         a0, t1, 620
                  blt          s5, a1, 49f
                  addi         a7, s1, 1687
                  srl          s0, s0, s9
41:               addi         zero, s2, 933
                  sra          a6, s3, s3
                  slti         a3, s10, -1257
                  or           s4, t3, a5
                  xor          tp, s0, tp
                  bge          t1, tp, 49f
                  addi         s6, s5, -683
                  slli         t6, t5, 17
49:               sub          s5, s8, s11
                  blt          s6, s2, 63f
                  lui          zero, 117457
                  bge          s5, s0, 63f
                  slti         s10, s11, 750
                  srai         s4, s4, 22
                  auipc        s8, 349243
                  srli         s4, s3, 14
                  add          t3, ra, t4
                  and          s0, s1, t3
                  lui          a7, 27201
                  srli         t3, s11, 12
                  nop
                  srl          t1, a0, s4
63:               addi         a3, s5, -657
                  bne          s1, a1, 82f
                  sra          t0, gp, s10
                  or           a2, t2, tp
                  auipc        a4, 881311
                  bge          a3, t5, 73f
                  bne          t6, a3, 83f
                  sltiu        s9, zero, -912
                  andi         s5, t4, -1212
                  lui          ra, 896628
73:               xor          s10, gp, s11
                  xor          t5, s7, s10
                  slti         s1, s4, 934
                  auipc        s1, 166329
                  sltu         t0, s4, t3
                  andi         s1, a7, -233
                  addi         s5, t5, 1796
                  sra          a6, s6, a6
                  srai         s4, a1, 9
82:               slli         s6, a0, 0
83:               slti         ra, t2, -864
                  sll          gp, s1, a1
                  slt          s8, s3, s3
                  beq          a0, s4, 100f
                  bne          a0, t3, 106f
                  bgeu         s4, a4, 108f
                  sltu         s6, s8, a4
                  or           s1, s7, a1
                  sub          t3, a6, tp
                  slt          a0, s5, t0
                  add          s11, t1, a3
                  xori         a0, s0, -369
                  auipc        s11, 114196
                  bne          gp, s11, 108f
                  addi         s5, a4, 798
                  beq          t4, zero, 107f
                  srli         t6, tp, 7
100:              bne          s6, s0, 106f
                  lui          s2, 127690
                  nop
                  srl          s2, s4, s3
                  nop
                  nop
106:              auipc        tp, 22956
107:              xori         a6, s8, 1606
108:              sltiu        s7, s3, -1045
                  and          a6, a0, t2
                  andi         t6, t5, 1624
                  sll          t3, a5, a3
                  blt          sp, a2, 117f
                  and          s8, s1, a4
                  bne          a0, s11, 115f
115:              xor          a7, t3, s7
                  auipc        s6, 590257
117:              or           s6, t3, t6
                  auipc        sp, 629531
                  bgeu         t1, gp, 127f
                  add          a3, gp, s4
                  bltu         s4, s6, 131f
                  sra          gp, t3, s1
                  or           s9, s11, t5
                  sub          s5, s5, tp
                  lui          s10, 1002408
                  xori         a4, a6, -799
127:              blt          ra, a2, 136f
                  andi         s11, s11, -395
                  add          a4, a1, a1
                  srai         s8, zero, 26
131:              add          a3, s0, sp
                  xor          a4, s10, a7
                  slti         a6, a4, 2016
                  blt          tp, s0, 148f
                  sltiu        gp, a0, 1679
136:              slli         zero, s11, 13
                  xor          s7, s8, a1
                  bge          ra, s7, 141f
                  slti         zero, a1, -436
                  sltu         t5, sp, s3
141:              or           gp, a6, s9
                  add          s7, t5, s8
                  bne          t6, ra, 150f
                  addi         t1, s0, -1377
                  addi         a1, s9, -1419
                  sltu         ra, a2, s5
                  sll          s7, a1, s9
148:              bne          t6, a3, 152f
                  srli         a4, s9, 9
150:              addi         a7, gp, -165
                  srl          a4, s7, gp
152:              ori          a0, t0, 1739
                  sltu         s9, s9, gp
                  slt          ra, ra, s4
                  auipc        t6, 391594
                  sll          t5, t1, ra
                  andi         s10, a7, -1081
                  lui          t3, 912012
                  bge          s5, s3, 169f
                  blt          s2, gp, 163f
                  ori          a0, gp, -93
                  xori         s0, a5, -347
163:              add          s5, a1, zero
                  xori         s4, gp, -1911
                  srai         a1, t5, 14
                  bgeu         s9, t5, 175f
                  add          a4, a4, t6
                  ori          gp, gp, -168
169:              sub          s7, s11, s0
                  bltu         s5, a7, 179f
                  beq          t6, zero, 182f
                  auipc        s8, 775161
                  srli         sp, t3, 13
                  srl          s5, a7, t3
175:              blt          t6, ra, 180f
                  srl          t0, ra, s2
                  nop
                  add          t2, sp, s8
179:              blt          a6, a1, 191f
180:              andi         s1, t2, -814
                  xori         t0, t6, -563
182:              slli         t0, s10, 10
                  bltu         tp, a3, 197f
                  andi         zero, a5, -558
                  bge          a7, a7, 199f
                  srai         s9, a2, 30
                  add          s8, s7, s8
                  and          a2, zero, zero
                  or           s0, s6, a3
                  auipc        s2, 275452
191:              auipc        sp, 1010692
                  ori          t0, s11, -366
                  ori          ra, s8, 1402
                  auipc        a3, 468211
                  srl          a4, s3, a7
                  or           a4, s10, a6
197:              bge          t6, s7, 203f
                  addi         zero, zero, 96
199:              sub          t6, s4, sp
                  srli         s2, s11, 10
                  xori         a3, s11, 675
                  and          s11, t3, s11
203:              bltu         a5, s1, 223f
                  sra          tp, s4, s3
                  beq          s5, s0, 216f
                  ori          a3, t4, -1123
                  bne          t5, t0, 225f
                  ori          s8, s8, -1611
                  blt          s1, s10, 212f
                  bge          a0, s2, 218f
                  and          zero, t2, s7
212:              and          s4, s6, a0
                  nop
                  nop
                  add          a7, t6, s5
216:              slli         t2, a4, 3
                  addi         a7, t1, 544
218:              nop
                  andi         s1, s10, -2020
                  nop
                  or           s7, s4, t4
                  ori          t3, s9, 850
223:              sltu         t1, a5, a3
                  blt          a3, s1, 231f
225:              add          sp, s10, a1
                  beq          s9, a6, 230f
                  nop
                  add          a7, t0, sp
                  bgeu         t5, s4, 241f
230:              add          t1, a0, s8
231:              srai         t5, a0, 0
                  auipc        a4, 218542
                  slt          a3, s0, tp
                  beq          t0, s8, 247f
                  sltu         s7, a0, t5
                  srli         t3, s5, 0
                  nop
                  sltu         a3, t2, a3
                  slli         s2, t4, 8
                  bgeu         s6, s2, 241f
241:              lui          a0, 384505
                  sltu         s7, t6, s7
                  sra          s0, t4, s6
                  sltiu        s10, s5, -759
                  bltu         t0, a2, 264f
                  or           a3, s9, a5
247:              auipc        t5, 1020366
                  srl          a1, gp, ra
                  add          s4, s3, t2
                  andi         a2, s5, -260
                  sltiu        a7, s2, 1581
                  addi         t5, a5, -114
                  addi         s8, tp, 592
                  nop
                  bltu         t1, a1, 264f
                  slti         ra, s4, 1976
                  bltu         a6, s0, 262f
                  andi         s8, a4, -1476
                  nop
                  srl          s1, a1, gp
                  addi         gp, a1, 1207
262:              blt          s1, a1, 276f
                  xor          a1, s2, ra
264:              nop
                  nop
                  bgeu         s11, ra, 277f
                  ori          t6, t5, -1628
                  slt          tp, s8, s6
                  bge          s1, gp, 275f
                  auipc        sp, 281465
                  and          s10, t4, sp
                  sll          s11, t0, t0
                  slt          s8, a2, s11
                  srli         a4, s11, 20
275:              and          sp, s1, s0
276:              ori          a7, s7, 1629
277:              sra          s7, a2, s6
                  and          t2, s0, t1
                  andi         a3, s8, 1493
                  sub          s0, s0, s7
                  nop
                  sltiu        s9, a1, 1944
                  srai         s11, s3, 15
                  sltu         s9, tp, zero
                  sltiu        s10, s1, 1746
                  andi         zero, s5, 1203
                  add          s4, s2, t0
                  xor          s0, t6, a5
                  bgeu         sp, a2, 303f
                  xori         ra, t0, -1008
                  bge          s1, s9, 301f
                  sub          a3, s0, a5
                  xori         s8, t0, 888
                  beq          a2, s6, 306f
                  and          a7, a6, a0
                  xor          s2, s6, t1
                  xori         a1, a0, 919
                  sub          a7, a5, a6
                  nop
                  beq          t6, a2, 310f
                  srl          a3, a0, t5
                  la           gp, sub_7
                  addi         gp, gp, 909
                  sra          a0, s9, s0
                  add          t6, a2, t4
                  bltu         s5, s5, sub_4_j9 #branch to jump instr
                  sltu         s5, s11, t1
                  nop
                  xori         a2, s3, -286
                  or           t5, zero, a6
sub_4_j9:         jalr         t3, gp, -909 #jump sub_4 -> sub_7
301:              bne          a7, a7, 304f
                  sltu         s0, s9, s1
303:              lui          tp, 3020
304:              lui          zero, 816976
                  xor          s11, s9, a2
306:              srai         tp, a7, 4
                  addi         s1, a0, 1829
                  auipc        s4, 341393
                  srai         s6, a2, 21
310:              beq          s7, s4, 317f
                  slti         s2, a7, -1178
                  beq          a4, a3, 315f
                  andi         t6, t6, -882
                  andi         s10, t4, -979
315:              blt          s3, s3, 329f
                  slti         s4, s8, -421
317:              slt          s8, t2, t6
                  bltu         sp, sp, 323f
                  slti         s0, s7, -81
                  andi         a0, s7, -1644
                  andi         a4, s8, -883
                  lui          t2, 1035773
323:              srai         s9, a3, 28
                  sll          t3, t6, zero
                  sltu         s5, a1, zero
                  bltu         s7, t4, 337f
                  srl          t6, a4, s9
                  auipc        s8, 86577
329:              ori          a1, a0, 1544
                  sub          t5, a3, t2
                  andi         s4, s10, 190
                  xor          tp, ra, tp
                  srl          t0, s5, t0
                  sltiu        s7, s8, 1873
                  bge          a1, a0, 339f
                  sltu         t3, s9, t6
337:              sltu         a1, t0, s11
                  blt          a1, sp, 356f
339:              ori          s7, a3, 1222
                  xori         s4, s4, -428
                  slti         a6, t3, -1210
                  srl          s1, s10, gp
                  bne          s0, t3, 362f
                  add          a1, s7, s3
                  blt          a1, s2, 365f
                  beq          a6, a0, 360f
                  blt          t6, gp, 360f
                  xori         a6, t2, 1480
                  sll          s11, sp, s4
                  sra          t5, a3, a1
                  sltu         a7, s7, a1
                  xor          tp, t4, zero
                  beq          s9, s5, 365f
                  add          gp, zero, t1
                  bgeu         s8, t6, 365f
356:              bltu         s4, gp, 366f
                  lui          a4, 817809
                  sub          t2, a7, ra
                  blt          a2, sp, 373f
360:              sra          s7, t1, s8
                  lui          s0, 723603
362:              bge          t5, s6, 374f
                  xor          a0, tp, t6
                  srl          t3, s1, s9
365:              sll          s4, s4, s6
366:              addi         sp, t3, -886
                  sltu         a0, gp, a7
                  bne          a2, s10, 374f
                  bne          sp, s1, 372f
                  nop
                  blt          gp, zero, 376f
372:              bgeu         s8, s0, 380f
373:              slti         ra, s3, 1067
374:              or           a0, t1, s6
                  slt          s8, a5, ra
376:              nop
                  sltu         s0, zero, t1
                  sltiu        a6, a4, -50
                  ori          s9, s3, 1875
380:              andi         t2, ra, 631
                  slli         sp, s3, 0
                  sltu         s9, t0, a4
                  beq          a7, s4, 392f
                  sub          s1, gp, a6
                  auipc        a4, 182252
                  srli         t1, s11, 8
                  and          t6, zero, a7
                  beq          s9, ra, 397f
                  blt          sp, t1, 398f
                  srai         s10, a3, 9
                  bge          a4, a7, 402f
392:              and          sp, t0, a4
                  bne          a2, a7, 396f
                  blt          a7, a6, 395f
395:              nop
396:              lui          s10, 967422
397:              srai         t0, s6, 0
398:              andi         s1, s10, -1193
                  or           s8, t6, a6
                  bge          s4, s5, 414f
                  blt          a6, t2, 407f
402:              auipc        s5, 260056
                  and          a4, s8, s1
                  auipc        s11, 655412
                  srli         gp, s10, 25
                  bltu         t4, sp, 418f
407:              xori         s7, tp, -795
                  ori          s10, t4, -813
                  or           s9, t0, a0
                  and          tp, s6, a2
                  xor          t6, s9, gp
                  srl          a7, s9, a1
                  nop
414:              sltiu        a2, s5, -210
                  slti         tp, ra, 1949
                  srl          s0, s10, s8
                  ori          t3, s5, -1599
418:              beq          s5, t4, 429f
                  beq          t1, a0, 439f
                  sra          a0, a1, t2
                  ori          t5, ra, 1272
                  nop
                  blt          s7, a2, 429f
                  or           s10, t4, zero
                  bgeu         a6, s11, 432f
                  auipc        gp, 435272
                  sub          s1, zero, gp
                  addi         s2, s11, -772
429:              sub          t5, t3, t2
                  sltiu        s8, zero, 1486
                  beq          t6, s5, 439f
432:              bne          t0, s8, 444f
                  xori         s6, a2, -464
                  auipc        s9, 343545
                  sll          s5, s8, s0
                  nop
                  nop
                  bltu         s0, ra, 447f
439:              slli         tp, s4, 5
                  srai         a3, tp, 14
                  sub          t3, zero, s6
                  ori          zero, s1, -1558
                  add          s2, a4, s1
444:              andi         sp, a7, 1243
                  beq          s0, s6, 464f
                  lui          s11, 84946
447:              slti         s6, t6, -615
                  bgeu         sp, s6, 458f
                  nop
                  sll          s8, a6, s9
                  slti         sp, t4, -629
                  bne          sp, a6, 457f
                  bge          zero, zero, 456f
                  andi         s8, s0, -1509
                  srli         s11, a3, 2
456:              bgeu         t0, a5, 466f
457:              sub          s8, a0, a1
458:              andi         s1, s3, -1426
                  sub          s1, a7, s6
                  sub          sp, s1, a2
                  sra          s0, s10, t1
                  srl          a4, s5, a2
                  add          a0, s5, zero
464:              addi         s5, gp, 1711
                  auipc        t5, 835402
466:              sra          sp, ra, s2
                  add          s0, s11, t1
                  srli         s10, a1, 12
                  beq          a7, s9, 483f
                  ori          s2, t1, 1269
                  xori         ra, t4, -1046
                  andi         s9, s5, 1431
                  srai         t1, t4, 24
                  lui          a2, 602177
                  slti         s5, t1, -804
                  lui          a2, 735307
                  andi         t0, a7, -902
                  lui          zero, 705362
                  sll          s6, zero, s5
                  sltiu        ra, tp, -1919
                  xori         s4, t2, 1766
                  xor          a1, s3, a2
483:              and          gp, gp, t5
                  bne          s5, s0, 498f
                  andi         s2, s5, 107
                  srli         s0, t6, 16
                  srai         s1, a5, 13
                  andi         a0, a4, -781
                  sra          zero, s11, s4
                  slli         a7, gp, 0
                  addi         sp, s7, 1911
                  bgeu         s10, s1, 504f
                  sltiu        a1, t6, 464
                  sra          t1, sp, s8
                  slti         s1, t2, -540
                  ori          s10, a3, -950
                  sra          s4, t2, a5
498:              sltu         s0, s3, gp
                  add          a2, s3, ra
                  srli         a3, a5, 28
                  slli         s10, a4, 18
                  sll          t1, s4, a5
                  sra          t0, s8, a0
504:              auipc        s5, 668540
                  addi         s9, a1, -1209
                  or           s11, s7, gp
                  auipc        a3, 538588
                  sltu         a1, t6, t2
                  srl          t3, a5, t6
                  auipc        s11, 164234
                  bgeu         s1, t3, 522f
                  sltiu        a0, s8, -638
                  sll          a7, a0, a1
                  beq          s4, a0, 517f
                  blt          a1, s2, 529f
                  add          s0, s10, s1
517:              blt          a3, s7, 521f
                  xori         sp, t3, 1655
                  sll          sp, t2, a5
                  slt          t2, t1, t6
521:              bltu         s9, t4, 530f
522:              andi         s1, a1, -574
                  blt          s4, gp, 534f
                  nop
                  blt          t3, a1, 538f
                  sltiu        s7, t2, -1829
                  srl          s10, s2, a0
                  blt          s5, s8, 546f
529:              sltu         a1, s9, s0
530:              and          s9, zero, s5
                  slli         s5, t4, 19
                  bne          s5, t5, 533f
533:              sltiu        s6, s1, 1661
534:              lui          s10, 177156
                  or           t3, t6, t4
                  and          s5, s4, a7
                  and          s4, s1, s9
538:              and          s7, t1, t0
                  slli         tp, t3, 5
                  lui          a3, 180024
                  bge          t1, ra, 555f
                  srl          a3, s0, a5
                  add          a2, t2, tp
                  sra          s6, s2, s11
                  srai         a3, t2, 8
546:              sub          t5, s1, a2
                  srl          s9, t3, sp
                  bne          a3, s1, 551f
                  ori          sp, s10, 18
                  srai         t6, s3, 2
551:              xor          s10, s11, t4
                  bgeu         zero, t2, 557f
                  ori          a1, s6, 1695
                  srl          a2, t3, t4
555:              srli         t0, s0, 8
                  andi         ra, s8, 1817
557:              sll          s1, gp, zero
                  lui          gp, 389342
                  lui          a4, 389138
                  xor          s0, s10, s9
                  slt          s4, zero, a0
                  srl          tp, s0, a3
                  bgeu         s5, a5, 570f
                  xori         zero, t4, 219
                  sub          t5, zero, s5
                  slt          t2, ra, tp
                  bgeu         t2, s11, 570f
                  bge          s8, tp, 570f
                  and          t2, s11, s10
570:              sltiu        s10, t5, -1981
                  sltiu        s0, s1, -1770
                  lw           t3, 4(t4)
                  add          a1, s4, s3
                  addi         t4, t4, 16
                  sra          a1, a2, a1
742:              addi x28, x28, 1
742:              jalr x28, x28, 0
sub_3:            addi         s6, s5, -1648
                  nop
                  sltu         ra, a0, s6
                  sltu         s11, t3, s2
                  sltu         a1, s8, t1
                  bgeu         s11, gp, sub_3_stack_p
                  lui          s9, 58489
                  slli         t0, s8, 27
                  add          a3, a3, a5
                  lui          s0, 910117
sub_3_stack_p:    addi         t4, t4, -32
                  sw           t3, 4(t4)
                  slti         tp, t0, -665
                  la           a3, sub_8
                  srai         a0, t1, 23
                  addi         a3, a3, 654
                  nop
                  slli         a6, s1, 15
                  sll          tp, a6, s4
                  blt          t0, zero, sub_3_j8 #branch to jump instr
                  addi         s5, t1, -1047
                  sra          gp, t1, zero
                  sltiu        s2, a7, -587
sub_3_j8:         jalr         t3, a3, -653 #jump sub_3 -> sub_8
                  sra          a1, s9, sp
                  sltu         s10, t6, s5
                  ori          tp, s9, -717
                  nop
                  xor          t3, t1, s1
                  andi         a2, a2, -1228
                  sltiu        t3, a1, -260
                  and          a1, t3, s4
                  blt          t1, ra, 12f
                  xori         t0, a7, 846
                  slti         a0, t6, -1620
                  andi         s7, s6, -1477
12:               sra          t1, s9, a2
                  sltu         s7, t4, s10
                  lui          s5, 611644
                  lui          s8, 467039
                  ori          s0, a4, -1383
                  slti         a3, s10, 1759
                  slli         s4, t2, 5
                  sll          s2, t3, gp
                  bge          a0, a5, 26f
                  bltu         s11, a0, 22f
22:               or           t2, t0, ra
                  srl          gp, s10, t6
                  sra          a3, t5, a6
                  bltu         s5, a6, 26f
26:               addi         s5, a0, 1141
                  srl          s2, a1, a3
                  bge          s6, a1, 34f
                  sll          s9, s7, t3
                  sra          s10, a3, gp
                  auipc        s5, 847492
                  srl          t1, t5, s8
                  sltiu        s6, s6, 1637
34:               xor          a6, s8, s5
                  bne          a3, a6, 42f
                  andi         a2, a1, -201
                  xori         t3, s7, 1357
                  xor          a7, t1, s11
                  srai         t1, s5, 26
                  xor          t0, s10, s0
                  lui          t5, 837955
42:               sra          t3, ra, a1
                  and          t1, t5, s6
                  bge          a5, s3, 59f
                  and          a3, s11, t1
                  bne          a3, s11, 63f
                  bltu         zero, s0, 59f
                  addi         a6, t6, 1568
                  addi         a1, tp, 196
                  nop
                  beq          s6, s0, 54f
                  bne          s6, a3, 59f
                  ori          t5, s9, -1883
54:               or           a3, s5, s5
                  auipc        s2, 610568
                  lui          a0, 88909
                  srai         s6, a7, 6
                  addi         t5, ra, -1490
59:               and          t2, a0, s6
                  add          t1, t3, tp
                  xor          a7, ra, s11
                  srai         gp, sp, 19
63:               xor          a6, t0, s1
                  andi         s10, t5, 1324
                  ori          a0, a3, -1740
                  and          zero, t0, t5
                  sltiu        a0, a0, -408
                  srl          s4, a0, a6
                  sltu         a4, a2, a7
                  ori          a6, s1, -1506
                  slti         a7, s1, 1613
                  nop
                  blt          s5, s3, 84f
                  xori         a0, a2, 1527
                  blt          s6, t2, 93f
                  sub          a7, s6, a3
                  sub          s11, a5, a5
                  addi         s2, sp, 723
                  xor          s9, t2, s11
                  and          t3, t3, a2
                  bltu         s9, s5, 92f
                  sll          s8, a6, s6
                  bltu         s10, a1, 90f
84:               bge          zero, s0, 90f
                  xor          s10, s3, s6
                  sll          a1, t0, a6
                  srai         s11, s4, 30
                  bge          gp, t5, 97f
                  ori          s7, tp, 2
90:               xor          a6, t4, t3
                  srai         a0, t0, 7
92:               bltu         s3, t1, 97f
93:               bltu         a2, a6, 97f
                  andi         s1, sp, 680
                  srai         zero, a0, 10
                  xori         s10, gp, 1570
97:               lui          s10, 292866
                  slli         ra, a2, 9
                  or           s4, s3, t6
                  srai         a4, tp, 1
                  sltiu        t1, zero, -960
                  slt          ra, s2, a2
                  lw           t3, 4(t4)
                  addi         t4, t4, 32
                  sub          t6, s4, a6
                  srli         s6, a3, 28
                  lui          zero, 54384
132:              addi x5, x28, 1
132:              jalr x5, x5, 0
sub_7:            lui          a0, 72192
                  srl          a1, sp, t5
                  bltu         a6, a0, sub_7_stack_p
                  srli         s7, s9, 27
sub_7_stack_p:    addi         t4, t4, -36
                  sw           t3, 4(t4)
                  sltu         a7, t6, s9
                  sra          s0, a3, s7
                  la           sp, region_0+1218 #start riscv_load_store_rand_instr_stream_1
                  sll          s9, a7, t0
                  sra          s10, s7, s7
                  srai         s7, sp, 3
                  srl          a3, a2, s10
                  srli         t0, s4, 24
                  lbu          gp, -3(sp)
                  andi         a3, s0, -607
                  sb           s6, 59(sp)
                  lh           s8, -4(sp)
                  sb           gp, 8(sp)
                  lhu          s6, 46(sp)
                  ori          t3, a1, -290
                  xori         zero, s10, 1499
                  sw           tp, 50(sp)
                  lui          a1, 928969
                  lw           t3, 62(sp)
                  lbu          a0, 61(sp)
                  sltu         a6, zero, ra
                  lb           t1, 53(sp)
                  sb           gp, -13(sp)
                  sltiu        zero, a5, -288
                  and          s5, s3, a3
                  auipc        s4, 765694
                  lh           gp, 0(sp)
                  sra          t5, gp, a4
                  nop
                  sra          t3, a5, s9
                  nop
                  sra          zero, s10, t1
                  lbu          s11, -35(sp)
                  addi         t5, s7, 1776
                  lb           s8, 45(sp)
                  xor          s4, t3, s7
                  sltiu        t2, a1, 1392
                  lh           t2, 8(sp)
                  lb           t0, -63(sp)
                  lb           t3, -37(sp) #end riscv_load_store_rand_instr_stream_1
                  la           tp, region_1+1421 #start riscv_load_store_rand_instr_stream_4
                  sb           gp, 4(tp)
                  srl          s5, s3, t2
                  lb           s10, 6(tp)
                  auipc        a0, 57863
                  lb           s2, -3(tp)
                  slli         a3, a7, 19
                  sb           a3, -8(tp)
                  lbu          a7, 10(tp)
                  sra          gp, a3, a3
                  srl          t2, t3, s0
                  lbu          s10, -16(tp)
                  lbu          a2, 7(tp)
                  lbu          s10, -16(tp)
                  sub          s0, s8, zero
                  lbu          s4, 4(tp)
                  sw           s8, 7(tp)
                  lbu          a2, -8(tp)
                  sw           gp, 15(tp)
                  lb           t6, 6(tp)
                  lbu          t6, -7(tp)
                  sb           a5, -14(tp)
                  sw           t5, 11(tp)
                  lb           t1, -8(tp)
                  sltu         a4, sp, s2
                  xor          s10, t0, t1
                  sll          s2, s8, a2
                  andi         s1, s7, -260
                  nop
                  sb           a6, 14(tp)
                  lbu          a1, -15(tp)
                  srl          s11, gp, a7
                  sb           a7, -2(tp)
                  sb           sp, 8(tp)
                  sw           s8, -9(tp)
                  lw           s0, 7(tp)
                  lh           s5, 1(tp)
                  xori         a7, sp, 1793
                  sb           zero, 4(tp)
                  lbu          t3, -1(tp)
                  sw           t4, -9(tp)
                  sb           s4, 5(tp)
                  lh           s4, 1(tp)
                  sb           a3, 16(tp) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_0+152 #start riscv_load_store_rand_instr_stream_5
                  addi         a2, s2, -1250
                  lh           s9, -12(a0)
                  lbu          s6, -3(a0)
                  lhu          s6, 206(a0)
                  lb           s6, 185(a0)
                  sll          ra, a2, a3
                  lhu          t1, 232(a0)
                  lhu          s2, -64(a0)
                  andi         a6, a7, 915
                  sll          tp, t6, a3
                  lb           gp, 119(a0)
                  slli         s4, s10, 3
                  srli         t5, a7, 25
                  lb           s7, -7(a0)
                  lh           s5, 82(a0)
                  lb           s1, -5(a0)
                  ori          s0, s6, 130
                  addi         sp, s6, -748
                  lui          t6, 473527
                  andi         a1, tp, -284
                  srl          t6, s0, t3
                  sltiu        sp, a0, -1616
                  sb           a0, 99(a0)
                  lbu          s2, 236(a0)
                  sb           a6, -29(a0)
                  lbu          s5, 89(a0)
                  lbu          s11, 52(a0)
                  sw           a1, -16(a0)
                  sb           s7, 103(a0)
                  lbu          s11, 99(a0)
                  lbu          ra, -123(a0)
                  sb           sp, 116(a0)
                  nop
                  add          a2, a6, s3
                  lbu          t0, 23(a0)
                  lb           t6, 87(a0)
                  sb           a3, -107(a0)
                  sb           t1, 22(a0)
                  lb           s11, -86(a0)
                  nop
                  sh           s4, 86(a0)
                  sb           t2, -129(a0) #end riscv_load_store_rand_instr_stream_5
                  la           tp, region_1+1622 #start riscv_load_store_rand_instr_stream_0
                  lui          a2, 414187
                  lh           t1, -16(tp)
                  srli         zero, s11, 21
                  xori         s6, ra, 1802
                  sltu         s8, zero, s7
                  sra          a1, s2, s7
                  add          t1, s10, t4
                  slli         s6, t4, 3
                  auipc        zero, 801232
                  sra          s1, s3, s5
                  ori          s0, s1, 1125
                  lb           a2, -16(tp)
                  lbu          a7, -3(tp)
                  lb           zero, -11(tp)
                  addi         s10, t2, -247
                  srli         s10, t4, 14
                  ori          s2, s10, -364
                  slt          s7, a7, s3
                  srl          s9, s7, tp
                  lbu          t2, 13(tp)
                  sltiu        t3, t5, 488
                  sra          sp, a6, tp
                  sra          s0, t4, zero
                  nop
                  sub          a7, gp, t5
                  and          s5, a1, sp
                  addi         s11, t4, -1821
                  srl          t3, a3, s3
                  sb           sp, 3(tp)
                  sb           s6, 9(tp)
                  lbu          t0, 1(tp)
                  lbu          ra, 9(tp)
                  srai         a7, t3, 1
                  srli         a2, s3, 17
                  ori          t0, a0, -1520
                  sb           t4, 11(tp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+333 #start riscv_load_store_rand_instr_stream_6
                  sw           s11, -37(sp)
                  sra          a0, t3, t2
                  lhu          s5, 37(sp)
                  lui          t1, 650569
                  lw           t1, 51(sp)
                  ori          a2, s6, 1116
                  addi         a6, t5, 1933
                  sb           t2, -20(sp)
                  slt          t6, s9, s0
                  sltu         s7, s3, gp
                  srl          a1, ra, s10
                  sb           t4, -10(sp)
                  sra          t0, a2, t3
                  slt          t1, s9, t5
                  srli         a3, a4, 25
                  lb           t0, 12(sp)
                  addi         s4, t5, 1772
                  and          s7, s5, s0
                  lbu          t6, 54(sp)
                  lb           t1, 47(sp)
                  slti         a0, gp, -810
                  lh           s10, -41(sp)
                  lh           s4, 3(sp)
                  lbu          tp, 59(sp)
                  lb           s4, -58(sp)
                  lhu          a0, -35(sp)
                  srl          t6, a7, a4
                  slt          gp, s0, t3
                  slli         a7, t2, 13
                  or           a7, t0, s7
                  sb           a0, 0(sp)
                  lb           t3, 31(sp)
                  sb           t6, -52(sp)
                  sra          a2, a0, a7
                  lbu          zero, 60(sp)
                  lb           s2, 22(sp)
                  lb           t5, 9(sp)
                  srli         s7, t6, 18
                  slli         s7, s3, 5
                  nop
                  or           a0, s6, ra
                  sb           t0, 24(sp)
                  lb           s7, -4(sp)
                  sw           s2, -37(sp)
                  andi         tp, t0, 392
                  slt          t6, s4, t4
                  xor          s9, s11, a4
                  slli         s8, t0, 26
                  slt          s1, tp, s5
                  sb           s0, 44(sp)
                  slli         s11, s1, 0
                  lb           t2, -41(sp)
                  lhu          t5, 63(sp)
                  xori         a0, t5, 1150
                  and          a0, t1, tp
                  lb           zero, -44(sp)
                  lb           a4, -22(sp) #end riscv_load_store_rand_instr_stream_6
                  srai         s6, t5, 6
                  slt          s10, a4, sp
                  sub          ra, s8, s8
                  srl          a6, s9, a2
                  sub          s9, ra, a0
                  add          a7, s8, a4
                  addi         a7, tp, -1717
                  srai         s8, t1, 18
                  bgeu         ra, s2, 16f
                  bge          a7, a6, 12f
                  and          t0, s6, s2
                  xori         tp, s7, -247
12:               sll          t1, t6, t5
                  srli         t0, s0, 0
                  slli         s9, s1, 7
                  slt          s6, gp, s7
16:               auipc        s5, 803766
                  srl          s8, s0, t3
                  srai         s0, t6, 26
                  ori          s1, s10, -2037
                  sltu         s1, zero, a2
                  nop
                  bne          a3, t2, 35f
                  lui          tp, 364098
                  ori          a1, a0, -1480
                  or           ra, tp, t5
                  slti         a4, t1, 936
                  srai         a0, tp, 10
                  ori          s9, s10, 557
                  beq          s10, t4, 43f
                  slli         a4, s3, 21
                  ori          s1, s6, -674
                  srai         s11, gp, 2
                  bgeu         t1, ra, 45f
                  lui          s7, 44983
35:               sltu         t6, s9, a6
                  sltiu        t6, s3, -1710
                  srl          t2, t4, t3
                  sub          a6, s5, a5
                  bge          s10, a3, 50f
                  sub          zero, a6, a1
                  ori          zero, t5, -1548
                  bge          zero, t0, 55f
43:               slli         ra, zero, 20
                  sub          zero, s6, s1
45:               sra          s4, a4, t5
                  bgeu         t5, s0, 54f
                  bltu         s4, ra, 62f
                  bgeu         t5, s7, 55f
                  nop
50:               blt          tp, s7, 56f
                  bge          s4, a7, 69f
                  beq          t4, a7, 68f
                  lui          s1, 76722
54:               lui          t0, 156816
55:               lui          s7, 804852
56:               blt          zero, sp, 60f
                  sltu         a7, t0, t0
                  nop
                  sub          s5, zero, s9
60:               sltiu        t0, zero, 297
                  lui          s0, 991858
62:               nop
                  andi         t3, s4, -627
                  bgeu         a4, s7, 78f
                  srli         ra, a7, 29
                  bltu         ra, tp, 71f
                  srli         t0, t5, 28
68:               lui          a2, 1004872
69:               bltu         s4, s8, 85f
                  srai         a2, t5, 22
71:               beq          s10, s0, 91f
                  and          a7, sp, t1
                  lui          tp, 971686
                  bltu         t0, s5, 89f
                  nop
                  slti         s6, t1, -154
                  nop
78:               blt          a4, a6, 79f
79:               or           s0, gp, ra
                  blt          t2, t2, 92f
                  and          s7, s3, t0
                  blt          s1, gp, 88f
                  slt          ra, s3, ra
                  slti         zero, s7, -1851
85:               bgeu         t5, a0, 93f
                  beq          a5, s10, 102f
                  xor          sp, sp, zero
88:               sub          t2, s9, s10
89:               auipc        ra, 521822
                  add          zero, a4, s6
91:               srl          s4, zero, a7
92:               sll          s8, t3, a7
93:               sll          zero, s11, s10
                  ori          t1, t3, 1933
                  andi         a6, s5, 1594
                  nop
                  nop
                  bltu         s4, a5, 110f
                  or           ra, t1, s2
                  xori         a6, gp, -1265
                  srai         s6, s1, 30
102:              bgeu         t0, s8, 113f
                  xor          t3, s4, s9
                  bltu         a0, a2, 106f
                  lui          s6, 447316
106:              sltu         s4, s6, a0
                  addi         a7, t1, -460
                  xori         s2, a1, 201
                  slt          a2, ra, a3
110:              srai         a3, s1, 22
                  bge          s10, s1, 116f
                  sra          s1, a1, s8
113:              bne          a5, a1, 132f
                  bltu         t0, a2, 119f
                  slli         s8, s2, 22
116:              bge          s6, s5, 135f
                  srli         a1, s1, 7
                  xor          zero, gp, sp
119:              sltu         s5, a6, s3
                  xori         gp, a3, -1480
                  xor          t3, s2, s0
                  srli         gp, s0, 15
                  and          s10, a5, a4
                  blt          a5, s1, 140f
                  sltiu        a1, s4, -1794
                  and          s8, sp, a0
                  sltiu        t2, sp, 30
                  addi         a2, s2, -1681
                  slti         t3, gp, 1985
                  lui          a7, 172230
                  slti         s6, s9, 1379
132:              blt          t4, t3, 138f
                  bge          s2, a4, 137f
                  or           s7, a1, gp
135:              auipc        s10, 360058
                  sra          s9, t4, gp
137:              sltiu        t1, a7, -1373
138:              sltu         s11, a4, t1
                  slti         t2, zero, -1992
140:              auipc        s5, 63512
                  sra          s11, s4, s7
                  sll          t5, t1, s11
                  andi         s1, a6, -757
                  beq          s1, a0, 147f
                  sll          tp, t2, s1
                  add          s6, a0, a6
147:              slt          s0, tp, t5
                  and          t1, s8, a4
                  sll          a2, a3, t6
                  ori          a6, a6, 375
                  add          s6, a2, s8
                  auipc        tp, 842555
                  add          tp, s3, a5
                  srl          s8, s0, gp
                  slti         a2, s7, 1711
                  and          a1, s11, a4
                  srli         s0, a7, 7
                  ori          s8, a5, 1346
                  sll          t5, s4, t3
                  auipc        t6, 1039624
                  beq          a6, tp, 169f
                  addi         t6, s2, 840
                  sub          s5, t0, t2
                  blt          s2, sp, 176f
                  bgeu         s7, s5, 181f
                  sub          t6, t6, t3
                  sltu         a4, a1, s11
                  slli         t2, a3, 26
169:              sub          t6, s10, s3
                  sll          t6, s5, s7
                  slli         sp, a2, 31
                  addi         s2, s6, 50
                  sra          s8, a0, s2
                  bgeu         t4, s7, 176f
                  xor          a3, s0, t5
176:              add          a7, s7, s5
                  or           s4, t1, s9
                  slli         sp, s2, 28
                  ori          ra, a6, 45
                  bge          a0, t0, 195f
181:              sltiu        a4, tp, -1689
                  sub          a2, t3, t1
                  bge          zero, s3, 199f
                  and          t3, a3, a2
                  addi         s11, s1, 495
                  sra          s0, s1, a0
                  and          ra, s0, t1
                  lui          t5, 59485
                  srli         t3, a6, 7
                  lui          a4, 57888
                  or           s10, s1, a4
                  sra          ra, a2, gp
                  beq          t4, s10, 198f
                  addi         zero, zero, 1017
195:              nop
                  bltu         tp, sp, 201f
                  add          s7, a6, a3
198:              xori         s10, a4, -1573
199:              srli         sp, t2, 30
                  or           ra, t0, a3
201:              add          s5, s4, zero
                  sll          t6, a1, s7
                  bltu         t5, s0, 211f
                  nop
                  nop
                  addi         s10, t1, -1094
                  ori          s6, a1, -1939
                  and          t1, a4, t0
                  slli         s4, a6, 13
                  lui          t2, 433508
211:              slli         zero, s2, 24
                  slti         s11, sp, 198
                  bltu         t4, a5, 221f
                  srl          t5, t3, s10
                  slti         gp, a0, 833
                  xor          t6, sp, a6
                  bltu         t3, ra, 229f
                  sltu         s7, a0, a7
                  bgeu         s1, t5, 225f
                  srli         t3, s4, 26
221:              blt          s0, a1, 233f
                  srl          s7, a7, sp
                  sltiu        t6, gp, 1575
                  bltu         t2, t3, 239f
225:              sltiu        s6, a6, -1779
                  nop
                  sltiu        t3, s2, 1018
                  bge          a5, t3, 246f
229:              lui          s10, 871493
                  sltiu        a3, t6, -995
                  xor          t1, s5, t5
                  auipc        s0, 846262
233:              lui          s1, 422272
                  sltiu        t0, a3, -17
                  xor          s8, a6, s0
                  ori          a3, a7, 1440
                  srli         s6, s8, 29
                  slti         a7, a0, 1675
239:              or           s11, s0, s6
                  blt          s10, ra, 251f
                  xor          gp, t3, a0
                  sltiu        t6, a4, -828
                  sub          a0, s8, gp
                  slli         t3, a5, 8
                  or           s7, s8, a5
246:              slt          s11, s11, s2
                  bne          a4, a6, 267f
                  auipc        a3, 679832
                  andi         a2, a7, -702
                  or           tp, s2, s0
251:              slti         sp, s5, 1224
                  sra          a6, a4, a1
                  ori          a2, t5, 994
                  xori         s7, s11, -1126
                  or           s7, s7, gp
                  bne          s8, s11, 270f
                  andi         s0, t3, -1115
                  ori          s9, t4, -1736
                  sra          s8, t5, t4
                  add          ra, a1, s10
                  sltiu        s5, ra, -1507
                  sltu         ra, s8, a5
                  slti         t0, t5, -852
                  slli         s2, sp, 17
                  bne          t4, a3, 270f
                  bltu         a3, s9, 279f
267:              or           a0, a3, t2
                  slti         gp, t2, 1791
                  slti         s9, s9, 1035
270:              ori          t2, s9, -1829
                  lui          a7, 583684
                  ori          s4, t6, 1324
                  xor          s10, gp, s7
                  ori          s9, tp, 1213
                  xori         t2, a3, 1358
                  bne          t1, s8, 287f
                  nop
                  nop
279:              andi         s4, t6, -938
                  sll          a0, s8, t6
                  xor          tp, t2, s10
                  bne          t4, s2, 283f
283:              nop
                  slt          a0, a4, s10
                  andi         s4, s11, 1973
                  sll          tp, s1, s1
287:              nop
                  beq          s8, t6, 302f
                  sra          t0, s9, a6
                  srl          s11, a2, s0
                  and          s1, a0, t4
                  sll          s11, a2, a6
                  beq          s2, s1, 306f
                  sra          t0, t1, s5
                  bne          ra, s6, 302f
                  sub          ra, a0, tp
                  or           a7, t4, s1
                  slli         t3, a2, 20
                  srl          s9, gp, t0
                  blt          t3, t2, 311f
                  bge          t4, s8, 306f
302:              sltu         s7, tp, t5
                  sltiu        gp, s5, 1889
                  srl          a7, s2, s0
                  ori          s6, a1, 1726
306:              bltu         s8, s10, 326f
                  add          s10, s11, s0
                  addi         t3, ra, 568
                  slti         t2, a0, 600
                  slli         t0, s3, 23
311:              sltiu        s7, ra, 1304
                  slt          s8, a6, s1
                  xor          s10, a3, s8
                  sub          t6, s8, t6
                  xori         t6, a3, -391
                  xori         t0, t2, -2037
                  bgeu         t6, a3, 322f
                  addi         s8, sp, 664
                  slli         t0, t4, 17
                  add          s9, t4, s8
                  and          a2, s5, a1
322:              slli         a7, s6, 9
                  addi         a1, s9, 856
                  sltu         a6, a1, a0
                  sub          s2, tp, a4
326:              srai         t1, t5, 13
                  srli         s10, s5, 17
                  sltu         s8, s1, s1
                  slli         ra, a5, 30
                  la           t6, region_1+1003 #start riscv_load_store_rand_instr_stream_3
                  andi         a4, s0, 1130
                  sh           a1, 227(t6)
                  sltu         t0, s3, a0
                  sll          s8, s10, a1
                  xor          zero, s6, zero
                  lb           s8, -231(t6)
                  lui          gp, 815401
                  lw           s4, -19(t6)
                  sltu         s2, s2, s2
                  nop
                  sb           s5, -45(t6)
                  lbu          ra, -244(t6)
                  addi         t1, s6, 801
                  and          t2, t4, t1
                  srli         gp, a7, 28
                  auipc        t1, 286974
                  sll          sp, s5, a2
                  lbu          t3, 255(t6)
                  auipc        t2, 975516
                  lb           sp, 254(t6)
                  sh           s1, -59(t6)
                  lbu          gp, 8(t6)
                  lbu          a3, 98(t6)
                  or           t3, tp, zero
                  srli         sp, s5, 5
                  slt          t5, zero, s6
                  sb           gp, -46(t6)
                  addi         s1, t1, 1278
                  sh           s5, -13(t6)
                  lb           gp, -172(t6)
                  sb           t2, -63(t6)
                  srl          s7, s1, s5
                  addi         s1, s2, -1782
                  lb           ra, -107(t6)
                  lb           t1, -204(t6)
                  sub          s6, a1, s6
                  sub          t2, s2, t6
                  srli         t5, zero, 15
                  xor          a4, s7, a3
                  sb           a6, 124(t6) #end riscv_load_store_rand_instr_stream_3
                  and          a0, a3, t1
                  srl          zero, a5, t0
                  sra          s1, t1, s6
                  xori         tp, t2, 98
                  bne          t6, t1, 346f
                  sll          s8, s6, tp
                  beq          a6, a1, 339f
                  sltu         s11, s4, s6
                  auipc        t1, 196013
339:              srl          s10, zero, gp
                  ori          a0, a7, -1130
                  sltu         t3, a0, sp
                  lui          s6, 859470
                  slli         a4, s6, 12
                  lui          s5, 263887
                  sltu         s2, s1, s11
346:              bge          a1, t5, 361f
                  or           s7, t5, tp
                  slt          a7, t5, s8
                  slt          a0, s11, sp
                  andi         t3, a5, 1801
                  xori         a1, s3, 1462
                  slti         t6, t6, -766
                  srl          t1, s1, s1
                  bge          a7, ra, 362f
                  slt          gp, t4, s2
                  ori          s4, s2, -1068
                  auipc        s4, 39066
                  lui          s9, 700908
                  lui          s0, 242785
                  srl          t1, a2, a4
361:              srl          s4, s3, s6
362:              srli         s5, tp, 1
                  sub          s11, t0, s2
                  andi         s10, s4, 711
                  lui          t6, 259280
                  slt          zero, a3, ra
                  add          s6, zero, ra
                  srai         s11, tp, 0
                  bltu         t6, s8, 388f
                  lui          a3, 688331
                  blt          tp, t1, 379f
                  sltiu        t5, sp, 322
                  srli         a4, t3, 21
                  slti         a2, tp, -337
                  bltu         gp, s6, 382f
                  andi         a4, zero, 1318
                  auipc        gp, 54616
                  xor          s7, t4, s10
379:              bltu         gp, t3, 383f
                  bge          a0, a2, 393f
                  bne          t1, a3, 382f
382:              slt          a2, a7, a7
383:              srai         a1, a4, 19
                  slli         t1, t6, 3
                  bltu         t5, ra, 393f
                  xori         zero, t1, 1151
                  sub          s11, a7, a4
388:              bltu         zero, a6, 402f
                  slli         s5, t6, 31
                  xori         t2, s6, -1535
                  slti         sp, a6, 904
                  and          zero, t4, s10
393:              or           t5, s10, a1
                  beq          s5, s7, 400f
                  sra          s1, t5, s11
                  slli         s0, s2, 28
                  beq          s6, zero, 412f
                  slli         a3, t1, 14
                  srli         gp, t0, 11
400:              bgeu         t0, a5, 405f
                  slti         s0, s7, 229
402:              blt          a2, s2, 420f
                  or           zero, a3, t0
                  sll          gp, s8, zero
405:              or           ra, t6, t5
                  sltu         t5, s9, a1
                  bge          ra, s9, 419f
                  xori         gp, ra, -1828
                  ori          s1, s9, -746
                  addi         s7, a2, -1104
                  srli         s5, a3, 17
412:              ori          s8, a7, -1473
                  bgeu         a6, a6, 415f
                  addi         a4, s4, -1492
415:              srai         a4, a3, 9
                  andi         s5, s5, 806
                  auipc        a2, 765915
                  addi         a7, a0, 1726
419:              slli         s11, s10, 16
420:              andi         zero, t2, 1363
                  beq          s7, a2, 437f
                  bgeu         zero, t4, 436f
                  and          s2, s2, ra
                  lui          s1, 430559
                  bne          s2, t6, 436f
                  srai         a1, t0, 3
                  sll          s10, s6, tp
                  addi         a1, s1, 18
                  la           sp, region_1+23 #start riscv_load_store_rand_instr_stream_2
                  lb           t6, -12(sp)
                  sb           s0, 14(sp)
                  addi         t0, s7, 766
                  lh           a1, -13(sp)
                  lbu          s1, 10(sp)
                  sh           a2, 7(sp)
                  addi         zero, gp, 828
                  add          s1, t4, t6
                  lbu          t5, -15(sp)
                  sb           s6, 10(sp)
                  slt          a2, s0, t0
                  sb           a5, -15(sp)
                  nop
                  xori         t2, tp, -287
                  and          a2, t6, s5
                  sb           s3, -16(sp)
                  lb           s4, -1(sp)
                  slt          t5, gp, t0
                  sb           t1, -3(sp)
                  sb           s9, 8(sp)
                  sb           zero, 16(sp)
                  lbu          gp, -12(sp)
                  lb           a1, 4(sp)
                  sb           t1, 6(sp)
                  lbu          a1, 6(sp)
                  lbu          s4, -10(sp)
                  lh           a0, -9(sp)
                  lb           a6, -4(sp)
                  sb           t5, -4(sp)
                  srl          ra, s4, s7
                  srl          a0, t0, s2
                  lb           s5, -10(sp)
                  sltiu        ra, t1, -1559
                  sb           t1, 3(sp)
                  or           t2, s5, a6
                  sb           s9, -3(sp)
                  sb           t0, -12(sp)
                  lhu          s5, -9(sp)
                  sb           t2, 16(sp)
                  sra          t5, t0, t2
                  ori          t2, s8, -1480
                  sh           t0, -7(sp)
                  sw           s10, -7(sp) #end riscv_load_store_rand_instr_stream_2
                  sltu         s11, t6, a0
                  andi         s7, t5, 668
                  srai         ra, a7, 26
                  bgeu         a4, s10, 448f
                  auipc        s9, 222065
                  bne          t1, s10, 450f
                  sub          s5, s0, t0
436:              ori          gp, gp, 1243
437:              srl          a3, s3, s3
                  srl          t1, a0, a0
                  addi         t1, s10, -1913
                  bgeu         gp, a2, 453f
                  sll          s10, s4, t0
                  slti         s4, a5, 891
                  sltu         a7, gp, t2
                  or           a6, s0, s2
                  nop
                  ori          s6, s5, -1963
                  bge          s11, t1, 453f
448:              andi         s1, sp, 1463
                  sra          gp, s8, t3
450:              sub          a0, t6, a5
                  srai         t6, a2, 21
                  xor          s8, t1, s8
453:              xori         a7, s0, 622
                  sltu         a0, s7, a0
                  bne          s3, a5, 467f
                  slli         t1, t5, 3
                  addi         t0, s9, 821
                  and          a2, s9, t6
                  srl          s4, a1, s8
                  bgeu         a5, gp, 472f
                  xor          s2, s2, t3
                  and          a0, t5, a0
                  sra          s6, s2, s11
                  sltu         s7, zero, a4
                  addi         a7, a6, -1494
                  andi         s4, s8, -1157
467:              auipc        a4, 887485
                  slli         s1, t5, 8
                  auipc        s0, 181764
                  blt          t6, s6, 486f
                  ori          s7, s5, 1999
472:              sltiu        a3, s1, -1436
                  srli         s0, a3, 2
                  and          a7, a4, a1
                  ori          s11, t0, -1072
                  auipc        gp, 1042457
                  xor          a0, t0, a1
                  xor          sp, t5, a4
                  xori         s7, s11, -1637
                  slti         s8, s6, 1195
                  blt          a7, gp, 492f
                  bge          a2, s6, 483f
483:              lui          s6, 567541
                  slt          s10, a3, t2
                  bge          tp, t1, 499f
486:              sub          a2, a7, s3
                  or           t1, a1, t5
                  lui          sp, 215340
                  bne          s7, s11, 493f
                  srai         a2, s11, 13
                  addi         t5, s8, -98
492:              lui          s4, 68804
493:              slti         a7, t5, 1802
                  sub          sp, s9, s8
                  bgeu         a5, zero, 514f
                  and          s2, s0, s9
                  srai         t2, s2, 22
                  blt          t2, s11, 510f
499:              ori          s0, s3, -1040
                  xor          a1, s4, gp
                  blt          s6, s2, 517f
                  auipc        zero, 854807
                  ori          s5, s5, -1933
                  auipc        a6, 869268
                  sll          a6, t2, gp
                  ori          s6, t6, -384
                  auipc        s11, 814703
                  bne          s7, zero, 521f
                  bne          t0, s10, 514f
510:              xor          t3, gp, t1
                  xori         a1, s3, -1424
                  srai         ra, zero, 23
                  blt          a4, a7, 518f
514:              blt          tp, a4, 522f
                  andi         a3, a5, 1763
                  beq          a1, s5, 522f
517:              addi         a6, t3, 1968
518:              sll          gp, t3, t5
                  bltu         s3, t3, 533f
                  addi         s11, s5, -886
521:              sll          s5, a0, s6
522:              srl          s10, s9, ra
                  sltu         t5, s4, s9
                  srai         a0, a6, 25
                  xori         zero, s9, -928
                  bltu         s9, s9, 534f
                  or           t1, a4, t6
                  auipc        a0, 69266
                  sltu         ra, a6, t5
                  slli         s2, s4, 17
                  addi         t2, t1, -1485
                  xor          t6, a5, sp
533:              bge          zero, s0, 535f
534:              slti         a6, tp, 246
535:              or           s6, a1, a0
                  ori          gp, a1, 1983
                  xor          t3, s0, s1
                  srli         t0, a3, 3
                  beq          t5, a2, 554f
                  srai         a1, s9, 2
                  sll          s8, s5, a6
                  sltu         s6, t5, sp
                  beq          gp, sp, 546f
                  bltu         s6, a6, 551f
                  xori         s2, s3, -386
546:              blt          s10, t4, 551f
                  blt          tp, s4, 558f
                  xor          s4, s11, s3
                  bne          t6, s7, 557f
                  slli         s9, s1, 11
551:              sub          s4, s1, s10
                  srli         a4, a3, 24
                  sltu         t1, a7, t6
554:              bgeu         t1, ra, 569f
                  bgeu         a6, s3, 571f
                  sll          t6, a2, a0
557:              bne          s9, a1, 577f
558:              or           a6, a1, ra
                  lui          s10, 238147
                  xori         ra, a1, -36
                  or           a0, tp, s0
                  srl          a2, t2, t3
                  beq          s10, a0, 576f
                  sll          a1, a0, s11
                  auipc        ra, 427659
                  xori         s10, t4, 395
                  srai         sp, s5, 29
                  add          s1, s5, sp
569:              bltu         gp, a7, 587f
                  sll          s7, a7, t1
571:              ori          s4, sp, 11
                  blt          t5, t5, 584f
                  slt          a1, zero, ra
                  xori         t0, s2, 1634
                  and          a2, a0, s8
576:              blt          t1, t5, 582f
577:              nop
                  bne          sp, s2, 586f
                  slli         t2, t3, 5
                  beq          s8, s6, 599f
                  sltiu        sp, s4, 1912
582:              andi         tp, s11, -1989
                  sltu         t1, s7, t6
584:              sra          t6, t5, tp
                  addi         s2, s3, -1129
586:              sub          s5, t6, sp
587:              ori          s6, s8, -1675
                  bne          s1, t3, 608f
                  slt          sp, a6, t4
                  add          s9, a5, a5
                  slti         s1, s1, 1312
                  andi         a6, zero, -1537
                  sub          t2, t2, t5
                  nop
                  bne          t6, tp, 610f
                  srli         a3, ra, 15
                  auipc        s6, 400999
                  xor          s6, t5, a3
599:              sltu         s5, ra, t6
                  bgeu         a2, a4, 608f
                  bgeu         s11, t1, 608f
                  srai         t5, s9, 23
                  xor          zero, s5, a0
                  auipc        s1, 251199
                  auipc        a0, 780753
                  slti         gp, t1, -523
                  and          t1, t1, a6
608:              srl          s2, a7, s0
                  srai         a1, t4, 10
610:              sra          s8, t5, sp
                  sra          t0, t6, sp
                  or           t5, t6, a0
                  xor          s7, s8, s11
                  bne          s8, t5, 628f
                  sub          s10, s11, t4
                  slt          t2, zero, t6
                  srl          s0, tp, a3
                  add          s5, s8, t5
                  sltiu        s10, a1, 1554
                  sll          ra, s4, s5
                  ori          a7, t5, 1595
                  beq          t4, t4, 638f
                  lui          s7, 364509
                  or           a6, sp, sp
                  nop
                  auipc        s9, 1040855
                  or           t5, s1, s0
628:              ori          tp, tp, 2009
                  bge          s2, s5, 643f
                  sub          s1, gp, sp
                  lui          s10, 392659
                  bltu         t6, a6, 638f
                  nop
                  xor          a4, s11, s9
                  bltu         s1, t4, 648f
                  slti         s4, s0, 1167
                  blt          s11, a7, 642f
638:              and          t5, a1, t0
                  sltiu        a1, ra, -669
                  and          s9, s8, a6
                  slti         t6, ra, 336
642:              andi         s8, a2, -453
643:              slt          a0, t0, ra
                  addi         t3, s7, 1400
                  blt          s8, gp, 650f
                  sll          s0, s2, t0
                  andi         s8, zero, -1171
648:              slti         sp, t3, -1606
                  sltu         a6, s9, t1
650:              srl          tp, s3, s11
                  bne          tp, t5, 667f
                  bge          a1, a0, 668f
                  auipc        t3, 126445
                  andi         s10, s1, 935
                  srli         a7, gp, 4
                  add          t2, t3, t1
                  andi         t1, s10, 1824
                  blt          t3, tp, 659f
659:              slti         s9, a0, -260
                  xor          gp, tp, a5
                  sra          s5, s2, tp
                  andi         a2, s9, 1829
                  srl          a2, s3, s9
                  andi         t1, a6, 378
                  nop
                  slt          s5, a3, s1
667:              bge          t6, sp, 685f
668:              sltiu        t3, s6, 452
                  srli         s10, t1, 11
                  sltu         a3, a5, zero
                  beq          s9, sp, 677f
                  srai         a4, a2, 23
                  sra          t1, t3, s5
                  sra          s7, a6, t2
                  srai         s4, s0, 13
                  bgeu         a4, a7, 684f
677:              xori         a2, t4, -135
                  nop
                  add          zero, t3, zero
                  blt          a5, s6, 691f
                  sra          s9, s9, a3
                  sra          s10, a4, t6
                  auipc        t3, 153330
684:              sra          a0, s2, a6
685:              xor          gp, a5, t5
                  slti         s9, s11, -253
                  sll          t1, a4, a1
                  sll          ra, t4, a4
                  srai         s5, a6, 16
                  sltiu        s5, t6, -1298
691:              slt          sp, t6, a7
                  bgeu         t4, gp, 704f
                  addi         t6, a1, 1016
                  nop
                  sub          t6, ra, s9
                  bne          tp, a4, 708f
                  nop
                  xori         s10, a4, -852
                  bne          s7, s4, 712f
                  lui          s10, 820669
                  nop
                  or           s9, t3, t2
                  srl          s9, s8, ra
704:              beq          t4, s8, 716f
                  ori          sp, s7, 846
                  srl          s0, s4, gp
                  sltu         s7, t0, t3
708:              slti         a3, s7, -949
                  addi         s10, t1, 2043
                  bge          ra, s7, 712f
                  srai         s8, s1, 14
712:              srl          s4, t3, t3
                  sra          t1, s1, s2
                  addi         a0, t6, 19
                  blt          s10, s6, 720f
716:              and          ra, a2, s6
                  and          t6, s7, t0
                  bltu         t5, a5, 733f
                  addi         t3, s1, 670
720:              lui          s10, 203138
                  andi         a2, s8, -1095
                  srai         a7, s1, 17
                  beq          t2, s8, 727f
                  lui          s4, 594431
                  add          sp, t6, t2
                  bgeu         s10, a1, 729f
727:              auipc        s7, 228645
                  sltiu        tp, s8, -1404
729:              slti         a4, s4, 1382
                  or           s1, s0, s2
                  xori         a3, sp, 708
                  and          t1, s11, s1
733:              andi         a1, t1, 1385
                  bltu         s7, s4, 745f
                  add          t0, a0, a0
                  slti         t2, t0, 2020
                  bge          s2, tp, 745f
                  bgeu         a2, a5, 754f
                  srl          t3, t6, a6
                  sltu         a1, sp, s0
                  nop
                  slli         a1, t3, 9
                  ori          s1, s9, -1883
                  xori         a3, s3, -1821
745:              sltiu        a4, t6, -1791
                  lui          s8, 89743
                  auipc        t5, 833966
                  blt          a5, a7, 754f
                  auipc        t5, 613909
                  sub          s8, a5, s11
                  srli         zero, s11, 31
                  blt          t3, s6, 766f
                  or           s9, s11, s2
754:              srli         s8, a6, 14
                  sub          s11, s0, s10
                  xor          s9, t6, a1
                  srai         a0, a0, 18
                  sra          t6, t6, a4
                  add          gp, a7, t0
                  blt          a2, s2, 762f
                  slti         a2, s8, 1843
762:              bltu         t4, s5, 770f
                  and          s7, tp, s8
                  beq          tp, ra, 779f
                  srl          s6, a0, tp
766:              sll          a4, s11, a6
                  srl          s9, a3, t0
                  auipc        t5, 332299
                  bltu         s2, a2, 780f
770:              bgeu         s1, gp, 777f
                  addi         a0, t3, -1317
                  slti         s0, t3, -30
                  blt          a6, t0, 789f
                  srl          s8, t5, s5
                  xor          s1, s6, s7
                  beq          s10, s8, 789f
777:              srli         sp, s0, 9
                  slt          s6, sp, s7
779:              slti         s10, t2, -951
780:              sub          a3, t2, s11
                  lui          s10, 907380
                  auipc        ra, 882006
                  beq          t1, a6, 797f
                  bltu         a5, t3, 804f
                  sub          t5, s5, a7
                  sra          ra, t0, s8
                  auipc        t1, 431046
                  slli         s0, s8, 23
789:              xori         gp, t1, -1332
                  bltu         zero, s5, 795f
                  andi         s6, a0, -170
                  beq          s3, a1, 804f
                  add          s1, s0, a5
                  and          t2, s5, a7
795:              bge          t1, s3, 796f
796:              or           a7, s5, gp
797:              ori          s7, a7, 288
                  add          s9, a3, t6
                  slti         s5, t4, 1382
                  ori          t3, a1, 3
                  nop
                  add          s7, s1, t5
                  ori          zero, s8, -123
804:              sra          s9, s1, s1
                  sra          s5, s9, s5
                  sub          tp, s5, s0
                  slti         t0, s2, 1622
                  or           s8, t1, a2
                  srl          s10, s5, t6
                  bge          s1, t1, 814f
                  add          zero, t0, gp
                  bgeu         a5, t2, 828f
                  sltu         ra, a2, s10
814:              addi         s9, a2, 1584
                  bge          t4, s3, 820f
                  blt          gp, t5, 822f
                  sltu         s5, a0, s11
                  bltu         a6, a7, 821f
                  sub          gp, a4, s6
820:              bgeu         ra, a7, 828f
821:              beq          s1, s0, 836f
822:              and          t2, tp, a3
                  sltu         gp, a1, a2
                  blt          a3, sp, 836f
                  xori         gp, t0, 1863
                  slli         tp, s4, 5
                  bgeu         sp, s0, 839f
828:              beq          a2, s5, 839f
                  ori          sp, t3, -292
                  lui          t2, 652575
                  sll          s5, t2, a5
                  sltiu        s7, zero, -148
                  blt          t4, sp, 846f
                  bge          a4, t6, 839f
                  bgeu         gp, t3, 853f
836:              slt          s7, s3, t5
                  bltu         gp, s8, 856f
                  slti         a7, a6, 1814
839:              nop
                  xori         s8, t0, -762
                  lui          t1, 329430
                  sub          t3, a2, ra
                  srli         a7, t3, 6
                  srli         tp, tp, 20
                  auipc        tp, 434469
846:              sub          t0, a4, a1
                  sub          sp, gp, s4
                  beq          s6, ra, 856f
                  bge          s0, s6, 869f
                  nop
                  lui          s2, 475656
                  slt          sp, a0, s10
853:              blt          s6, t0, 856f
                  bge          zero, s5, 866f
                  bltu         s5, t0, 863f
856:              sll          t1, a3, a6
                  xor          sp, t1, a6
                  slli         tp, s10, 8
                  addi         a7, s3, -1273
                  slt          t1, a1, t2
                  slli         ra, s5, 4
                  sub          s11, s10, s8
863:              sll          s8, t1, a7
                  sltu         zero, s9, t5
                  bltu         t3, s8, 871f
866:              slt          a0, s7, s10
                  bge          s5, tp, 880f
                  srli         t1, t5, 22
869:              sub          t5, a0, s6
                  sltu         a2, t5, a2
871:              nop
                  srli         ra, a4, 1
                  bgeu         a2, a5, 874f
874:              beq          t4, a7, 878f
                  add          s11, a5, t6
                  sltu         s7, s2, a5
                  srl          s10, s9, sp
878:              slli         s2, t6, 28
                  bge          ra, t6, 887f
880:              srai         s1, t1, 22
                  srai         s10, zero, 2
                  bltu         tp, s5, 884f
                  sra          s6, a0, s5
884:              add          tp, t3, s2
                  or           a1, t4, t6
                  slt          a1, s3, t3
887:              blt          t3, a2, 906f
                  nop
                  sltu         a4, a5, s10
                  or           s6, s4, t1
                  sltiu        t1, s7, -1961
                  bge          t0, a2, 908f
                  srai         t0, sp, 11
                  xor          tp, sp, a1
                  sltu         t3, t0, a7
                  slti         s1, s9, 295
                  sltiu        a0, s2, 1221
                  andi         gp, a1, 172
                  sltiu        a2, tp, -20
                  sub          a7, sp, a6
                  lui          a0, 268466
                  sltu         a1, a7, s5
                  andi         a4, s6, 1695
                  beq          s0, t4, 910f
                  bgeu         a7, t1, 912f
906:              slti         t3, t3, -1873
                  sub          a6, tp, s4
908:              add          t3, a1, s4
                  ori          s10, s2, 1553
910:              beq          s5, s2, 928f
                  bltu         a7, a0, 923f
912:              srai         s6, s7, 4
                  bgeu         s2, s6, 924f
                  bne          a1, a1, 929f
                  slt          t6, sp, t3
                  srl          a6, t2, s1
                  bne          t0, s11, 922f
                  ori          ra, a3, 177
                  andi         s2, ra, 16
                  add          zero, t0, t2
                  nop
922:              bgeu         a5, s0, 937f
923:              nop
924:              sltu         s0, s9, a4
                  blt          a5, t5, 930f
                  sra          a3, s7, t1
                  blt          s6, t5, 941f
928:              blt          tp, ra, 939f
929:              srli         a2, t6, 0
930:              ori          t2, s9, 1483
                  xori         a0, t6, -1636
                  beq          s10, s11, 948f
                  slt          tp, a6, s5
                  lui          a1, 283383
                  sltiu        s7, s7, 368
                  sltu         t3, a6, t0
937:              or           a4, a2, sp
                  sltiu        a3, a2, -2023
939:              lui          a6, 57009
                  sra          s2, s6, s5
941:              sra          a4, tp, a5
                  nop
                  sra          t5, a6, s9
                  auipc        t2, 513168
                  sltu         s9, s0, a7
                  lui          s11, 575715
                  slt          s1, s3, gp
948:              slti         tp, t0, -578
                  andi         s8, a6, 1675
                  auipc        s4, 880479
                  xor          t5, a5, s1
                  srli         a4, t2, 5
                  andi         ra, s0, -658
                  or           a1, s2, s7
                  slli         zero, a1, 11
                  andi         a0, t4, -57
                  add          tp, a3, s1
                  xor          sp, s7, a4
                  sltu         t2, s10, a0
                  sub          a7, ra, gp
                  lw           t3, 4(t4)
                  addi         t4, t4, 36
                  sra          a7, s7, s5
                  sltu         s9, a4, a0
1278:             addi x6, x28, 1
1278:             jalr x6, x6, 0
sub_6:            sra          s11, gp, s4
                  bge          s11, a3, sub_6_stack_p
                  nop
                  sltiu        a4, gp, 856
sub_6_stack_p:    addi         t4, t4, -28
                  sw           t3, 4(t4)
                  andi         sp, s2, 347
                  sll          ra, s8, a5
                  ori          sp, t5, 1819
                  or           s5, s5, t3
                  add          a3, gp, a0
                  bgeu         s4, s5, 9f
                  bne          s11, s7, 9f
                  slti         t3, gp, -1350
                  xor          a2, t4, tp
                  bgeu         s3, tp, 9f
9:                srai         a6, sp, 6
                  lw           t3, 4(t4)
                  sll          a2, s7, gp
                  and          a1, s7, s5
                  sltu         s5, a1, s9
                  slti         a3, a7, -817
                  slti         t0, ra, -1714
                  sra          t2, s9, ra
                  addi         t4, t4, 28
                  addi         s4, a5, -1489
26:               addi x13, x28, 0
26:               jalr x13, x13, 0
sub_9:            lui          a3, 4130
                  andi         sp, tp, -122
                  sub          zero, t5, a0
                  bge          ra, tp, sub_9_stack_p
sub_9_stack_p:    addi         t4, t4, -56
                  addi         s2, s6, -1909
                  ori          s4, a6, -1271
                  sw           t3, 4(t4)
                  auipc        s1, 311317
                  addi         a7, t0, -379
                  nop
                  addi         s8, tp, -736
                  slt          s5, a3, t0
                  bge          s2, s6, 10f
                  xor          a7, s11, gp
                  auipc        s10, 35340
                  lui          t6, 194477
                  sll          s10, s2, t5
                  bne          s8, s10, 13f
10:               and          t5, a6, s4
                  nop
                  srli         sp, s9, 5
13:               xor          a0, s6, a1
                  xori         s11, t1, -641
                  nop
                  sub          s2, a1, s0
                  sltiu        s2, s6, -1115
                  slli         tp, sp, 22
                  ori          t1, s5, 1318
                  ori          t2, t4, -1553
                  srl          t6, s9, s8
                  addi         a1, t6, 1255
                  sra          s1, t4, t6
                  slli         t0, s2, 12
                  srli         s11, s9, 4
                  sltu         t6, a4, s7
                  xori         a4, a2, 351
                  or           ra, a0, tp
                  bne          s7, s11, 35f
                  xori         a3, s7, 669
                  slt          s2, t4, gp
                  sll          tp, t6, s8
                  nop
                  sltu         s6, a7, t5
35:               sltiu        t3, t1, 1645
                  or           s8, sp, s4
                  slti         s0, a0, 505
                  lui          a0, 1015832
                  nop
                  bgeu         a2, sp, 49f
                  xori         tp, t1, 636
                  bne          s6, s6, 53f
                  addi         t1, t6, -1693
                  bgeu         s10, a7, 53f
                  xori         s6, a3, 1214
                  sra          a0, t6, s2
                  slt          a0, s7, t4
                  lui          a1, 265159
49:               xor          s5, s6, a3
                  slt          ra, t0, t2
                  sra          s6, t1, s5
                  lui          t5, 179389
53:               xor          s11, a2, s3
                  andi         t0, gp, 1187
                  srl          s8, t0, t1
                  bgeu         zero, a0, 63f
                  auipc        a1, 482289
                  bgeu         s11, s2, 76f
                  or           tp, a4, a7
                  slli         s5, a2, 13
                  sra          zero, a3, s6
                  nop
63:               add          a4, s2, s6
                  auipc        ra, 184358
                  beq          a3, a3, 67f
                  srli         t0, a6, 11
67:               and          t6, a3, s11
                  bltu         s9, s2, 82f
                  srli         s0, a6, 16
                  andi         s2, s2, -351
                  slli         t6, a7, 2
                  or           s5, a7, s0
                  srai         s2, t1, 2
                  slt          t5, tp, a7
                  slti         tp, a3, -405
76:               slti         gp, a0, 683
                  blt          t5, t4, 92f
                  sltu         s0, zero, s6
                  or           t2, t1, s10
                  nop
                  bge          s2, a7, 96f
82:               srai         sp, t1, 17
                  sltiu        s5, a0, 1683
                  sltu         s8, t5, ra
                  lui          a7, 978047
                  or           s10, a0, a4
                  sll          s4, t5, s7
                  lui          s9, 852189
                  blt          t4, a4, 93f
                  beq          s3, tp, 100f
                  beq          t3, a3, 100f
92:               or           s9, gp, s7
93:               beq          s2, t3, 100f
                  sltu         s6, t4, s8
                  slt          a1, a1, s8
96:               slti         s2, a3, -505
                  sltu         a2, t6, s8
                  srai         s6, a7, 27
                  auipc        t6, 318356
100:              sra          s4, a2, t5
                  lui          s7, 1024367
                  or           a1, s9, zero
                  andi         s1, s9, -1471
                  lw           t3, 4(t4)
                  nop
                  addi         t4, t4, 56
                  slt          s0, a7, tp
117:              addi x24, x28, 0
117:              jalr x24, x24, 0
sub_10:           xor          s7, a5, t1
                  addi         t4, t4, -56
                  sll          t2, s10, t1
                  sw           t3, 4(t4)
                  nop
                  sltu         t1, zero, a0
                  la           s4, region_0+1520 #start riscv_load_store_rand_instr_stream_0
                  lh           t5, -64(s4)
                  lb           a4, 57(s4)
                  slt          t1, t5, t3
                  xori         s6, s10, 1248
                  lh           s8, 38(s4)
                  lbu          tp, -46(s4)
                  lbu          s0, -59(s4)
                  sh           gp, -6(s4)
                  sll          s7, s10, sp
                  lbu          s8, -40(s4)
                  and          a2, t2, gp
                  lb           a1, -33(s4)
                  lb           a6, 12(s4)
                  lbu          a2, 27(s4)
                  lb           s0, 17(s4)
                  lw           a2, 60(s4)
                  lbu          s2, 2(s4)
                  nop
                  lhu          s5, 62(s4)
                  sub          a7, gp, a6
                  sb           sp, 26(s4)
                  slli         s11, sp, 20
                  lw           t6, -60(s4)
                  lb           s10, 11(s4)
                  sh           s10, 64(s4)
                  sb           s7, -51(s4)
                  sh           t0, -24(s4)
                  sll          tp, ra, a4
                  sb           tp, -27(s4)
                  nop
                  lbu          a3, 53(s4)
                  sltiu        s0, t5, -453
                  ori          a0, s0, -544
                  lh           s8, 16(s4)
                  andi         ra, t5, -287
                  sh           t3, -50(s4)
                  sb           s11, 29(s4) #end riscv_load_store_rand_instr_stream_0
                  andi         s0, zero, -1225
                  srl          t1, s2, a0
                  blt          zero, s7, 18f
                  beq          zero, sp, 10f
                  sub          t5, s0, sp
                  bne          a5, t0, 22f
                  auipc        t5, 234350
                  or           a6, a0, t5
                  xori         t5, s9, 952
                  and          t5, sp, a6
10:               xor          t6, gp, a6
                  blt          a2, t2, 27f
                  nop
                  slli         tp, s9, 31
                  add          a7, a2, s0
                  addi         zero, ra, -322
                  ori          zero, t3, -525
                  bne          ra, s5, 19f
18:               slti         t2, a4, -2042
19:               slli         a1, a2, 19
                  auipc        a1, 384780
                  bltu         s5, s2, 29f
22:               sub          sp, s11, s0
                  srl          s10, sp, t0
                  sltu         t3, tp, s6
                  xor          s4, ra, s7
                  or           s7, s3, zero
27:               xori         s7, a7, -1448
                  slli         a2, s10, 27
29:               sll          a4, a5, a4
                  bgeu         gp, a3, 36f
                  add          s0, t6, s6
                  slti         t0, s1, -563
                  bgeu         s6, s8, 46f
                  sll          a4, a4, s5
                  bne          s4, tp, 45f
36:               lui          t1, 465487
                  slt          t1, s5, s6
                  add          t5, a5, s1
                  andi         t5, s4, 1175
                  slli         t3, s4, 17
                  blt          zero, a7, 52f
                  slli         t3, a4, 27
                  bgeu         s8, s5, 51f
                  sltiu        s9, a1, 123
45:               xor          a2, t4, s5
46:               auipc        s7, 616579
                  and          a3, a3, t2
                  sub          s1, t0, s7
                  addi         t1, t6, 216
                  sub          t2, t2, t0
51:               slti         a6, gp, 292
52:               blt          a6, s7, 63f
                  lui          s8, 958445
                  addi         s8, a3, -308
                  add          t0, a4, s10
                  bgeu         ra, a4, 57f
57:               ori          t6, a6, 540
                  bgeu         s10, s8, 59f
59:               bge          s5, s2, 62f
                  sra          a1, s8, s3
                  addi         s11, s4, 422
62:               srli         s6, gp, 25
63:               sub          a1, a0, a4
                  sub          a2, sp, t4
                  add          t0, ra, s7
                  lui          s5, 67453
                  srli         t0, t3, 6
                  srl          tp, s8, s8
                  srai         s9, gp, 8
                  ori          t5, t0, -1400
                  sll          s0, a4, sp
                  slt          s6, s3, sp
                  sll          s11, t0, a2
                  sltu         t2, t1, t3
                  srai         s10, tp, 12
                  srl          s9, s0, t5
                  slli         s4, t3, 2
                  xor          a2, s9, a0
                  bge          a7, a7, 81f
                  bge          a2, s4, 97f
81:               ori          s8, tp, 1566
                  bge          t0, s9, 92f
                  and          a7, t5, s5
                  sltu         a3, s5, a0
                  bge          s9, t6, 93f
                  bgeu         s8, s0, 91f
                  ori          a6, s7, -557
                  slti         a3, a7, -1129
                  slli         t0, s11, 5
                  sub          a6, s11, s11
91:               sltu         s9, a0, a2
92:               sltu         s6, a6, a2
93:               blt          a6, s6, 111f
                  sub          s0, a2, a5
                  sll          s0, t4, tp
                  slli         s10, sp, 4
97:               blt          s1, t0, 107f
                  srai         sp, gp, 4
                  auipc        s9, 112255
                  xor          s11, a7, a7
                  srl          s5, a7, s5
                  sra          a0, gp, s2
                  ori          s6, s1, 1751
                  beq          s9, a2, 107f
                  slli         s10, s0, 17
                  bge          s10, s3, 109f
107:              srai         s5, a7, 28
                  andi         s6, t5, 1900
109:              bltu         a7, a4, 113f
                  auipc        tp, 327304
111:              nop
                  bne          a2, tp, 123f
113:              lui          s0, 116943
                  lui          t2, 699322
                  addi         s11, a7, 1217
                  or           a3, t2, ra
                  sltu         a2, a0, sp
                  auipc        a7, 662089
                  xori         a2, a2, -1549
                  sll          s7, s3, s2
                  xori         t3, t3, -541
                  blt          a7, a7, 125f
123:              bne          s4, tp, 129f
                  sltiu        a6, gp, -837
125:              bne          t3, a1, 134f
                  addi         t3, t6, -1258
                  xor          a7, ra, t5
                  bne          a6, s8, 137f
129:              xori         s2, sp, 1394
                  sll          a1, t2, a4
                  srai         s6, a1, 24
                  sra          t5, a6, tp
                  andi         zero, s10, 1160
134:              bge          t4, s5, 145f
                  sra          s5, t5, a3
                  sll          gp, sp, t0
137:              bge          s2, t3, 154f
                  bge          tp, t3, 148f
                  sll          s0, t6, t5
                  nop
                  andi         a3, s11, -413
                  sra          t6, a7, sp
                  srli         s6, a6, 27
                  blt          a3, t2, 154f
145:              srai         tp, a7, 27
                  srli         s5, s3, 21
                  lui          a4, 755699
148:              sll          t2, s6, s11
                  xori         t0, sp, -375
                  sub          a0, a0, t4
                  xor          t2, s11, s11
                  srai         s10, s1, 9
                  add          t3, s0, a6
154:              blt          s8, a3, 157f
                  blt          a2, a3, 171f
                  srl          t2, s11, t5
157:              beq          a3, a1, 159f
                  slti         a0, zero, 1447
159:              xori         s9, s10, 1582
                  bne          s2, a2, 170f
                  slti         a6, s7, -1846
                  and          ra, s4, a4
                  slli         s5, s0, 28
                  andi         a4, s9, 1483
                  add          s5, a1, t3
                  or           tp, s7, a4
                  addi         s10, s7, -1904
                  bltu         s9, a7, 174f
                  srli         s1, a1, 19
170:              sra          a2, s6, t4
171:              sra          t5, s9, t0
                  add          s5, s8, t3
                  xori         s4, s7, 768
174:              blt          sp, s5, 182f
                  or           t1, s8, s0
                  and          s0, s11, t6
                  bltu         a7, t2, 180f
                  srai         s0, s1, 26
                  ori          s5, zero, 1937
180:              srai         gp, zero, 9
                  srli         a2, a3, 12
182:              srai         s8, t5, 1
                  and          ra, a7, tp
                  srl          s5, ra, a3
                  lui          a6, 151520
                  auipc        t6, 1036181
                  or           a4, s4, a1
                  beq          a3, a6, 190f
                  sltu         a4, s9, a0
190:              ori          sp, tp, -235
                  sltiu        s11, s10, -1850
                  and          a1, t5, gp
                  blt          sp, s0, 202f
                  srli         s8, a2, 16
                  bne          t6, s8, 211f
                  bge          sp, s0, 199f
                  ori          t1, t5, -1104
                  blt          s11, s6, 203f
199:              blt          a7, t2, 202f
                  andi         s9, zero, -1745
                  slli         t2, s9, 20
202:              add          s7, a0, s11
203:              bge          t5, zero, 211f
                  auipc        gp, 3704
                  sub          s5, s11, t2
                  bne          s3, t5, 215f
                  bgeu         s0, s3, 215f
                  bge          t6, a0, 225f
                  addi         gp, sp, 1135
                  lui          t0, 462792
211:              xori         gp, s6, 1809
                  lui          s0, 339588
                  bltu         s10, s9, 219f
                  add          s9, gp, s0
215:              srli         t3, s9, 2
                  srli         s1, a3, 28
                  sra          s9, a2, a6
                  slli         sp, ra, 0
219:              slt          s5, a6, gp
                  andi         t1, s0, -803
                  bltu         s3, a1, 222f
222:              sra          gp, a1, s3
                  sub          sp, t0, s6
                  bge          a7, s4, 242f
225:              srli         s1, s6, 0
                  nop
                  beq          s8, s5, 238f
                  add          t1, sp, s3
                  add          t3, a4, s0
                  sltu         t1, s11, s7
                  slt          t3, t4, a5
                  slli         s5, a0, 29
                  srli         a4, a7, 13
                  lui          t6, 693358
                  and          t0, s2, a6
                  slli         t0, a6, 2
                  slt          s2, a3, gp
238:              bgeu         s8, s0, 243f
                  bltu         a6, ra, 243f
                  nop
                  sltu         a7, s6, t0
242:              sltu         t1, s2, sp
243:              slt          t3, a6, s10
                  lui          s8, 681484
                  auipc        t6, 295454
                  lw           t3, 4(t4)
                  addi         t4, t4, 56
                  sltiu        s1, s3, 1432
293:              addi x7, x28, 1
293:              jalr x7, x7, 0
sub_5:            sra          t6, s2, s5
                  bltu         a7, s3, sub_5_stack_p
                  and          sp, s3, a1
sub_5_stack_p:    addi         t4, t4, -20
                  lui          t1, 146642
                  srai         tp, t3, 25
                  sll          s5, t5, s3
                  xori         s9, t1, -247
                  ori          a7, s6, -1331
                  ori          s5, a6, -865
                  slt          s7, s11, a6
                  sw           t3, 4(t4)
                  slti         s10, sp, 1485
                  andi         s1, a6, -1583
                  slti         a7, t3, -1214
                  andi         sp, t6, -249
                  sra          sp, s7, zero
                  andi         s2, a4, 1650
                  ori          s10, t6, 808
                  xori         t6, s5, 1844
sub_5_j11:        jal          t3, sub_10 #jump sub_5 -> sub_10
                  andi         s7, s9, 619
                  lui          a2, 216374
                  sra          s11, s6, zero
                  auipc        sp, 560390
                  sltiu        t3, s5, -1615
                  bgeu         s1, t0, sub_5_j12 #branch to jump instr
                  sltu         t5, s5, gp
                  nop
sub_5_j12:        jal          t3, sub_6 #jump sub_5 -> sub_6
                  la           s6, sub_6
                  slt          s11, s11, t3
                  auipc        sp, 772803
                  slti         s9, t6, 660
                  sltiu        t1, zero, 1617
                  addi         s6, s6, -568
                  auipc        s2, 562599
sub_5_j13:        jalr         t3, s6, 568 #jump sub_5 -> sub_6
                  srl          a0, t6, a0
                  blt          tp, t5, 11f
                  andi         s10, a1, -1196
                  nop
                  srli         a7, gp, 2
                  blt          a2, s6, 11f
                  xori         s0, s1, -767
                  srai         s9, t3, 28
                  xor          ra, sp, a0
                  lui          gp, 834548
                  blt          a2, a6, 11f
11:               nop
                  andi         t0, a0, 767
                  srai         t6, a7, 28
                  lw           t3, 4(t4)
                  lui          s10, 187028
                  addi         t4, t4, 20
                  nop
56:               addi x2, x28, 0
56:               jalr x2, x2, 0
sub_2:            addi         t4, t4, -60
                  add          a4, sp, t2
                  andi         s5, s7, 183
                  ori          s2, t2, 731
                  sw           t3, 4(t4)
                  sll          a2, s5, s7
                  slt          s8, s11, t5
                  srl          t6, ra, t0
                  lui          a6, 319719
                  auipc        t1, 303905
                  add          a7, sp, s11
                  slt          s7, a3, sp
                  srl          s7, t6, s3
                  or           s8, t6, a0
                  srli         t1, s11, 3
                  slt          s0, sp, t5
                  addi         a4, s0, 1731
                  bltu         s0, t2, sub_2_j6 #branch to jump instr
                  slti         t5, t1, -1335
                  sll          t6, s11, tp
                  srli         a0, s1, 31
                  slti         sp, s8, 1810
sub_2_j6:         jal          t3, sub_3 #jump sub_2 -> sub_3
                  la           t3, region_0+954 #start riscv_load_store_rand_instr_stream_2
                  sb           s8, 251(t3)
                  lh           s4, 8(t3)
                  and          a3, a1, t0
                  lhu          zero, 108(t3)
                  lbu          s2, -47(t3)
                  lb           a6, 51(t3)
                  sub          s10, t1, s3
                  sb           s6, 111(t3)
                  sb           t0, -89(t3)
                  sb           a3, -18(t3)
                  sra          s0, s7, a6
                  nop
                  lb           a7, 113(t3)
                  sltu         s7, s4, s5
                  sb           s2, 72(t3)
                  lhu          a1, 126(t3)
                  sll          s10, s3, s1
                  or           s11, s1, ra
                  lbu          s7, -209(t3)
                  lbu          s9, -155(t3)
                  lui          s7, 11155
                  lb           zero, 223(t3)
                  lb           a2, 167(t3)
                  sltiu        t1, s8, 1243
                  sb           s1, 20(t3)
                  addi         t2, a7, -2001
                  lbu          s6, -216(t3)
                  nop
                  lw           t2, -26(t3)
                  sb           s0, -205(t3)
                  lbu          a6, 176(t3)
                  sb           a0, 17(t3)
                  sb           t5, 80(t3)
                  sb           s8, -159(t3)
                  lh           s7, -232(t3)
                  slti         s11, zero, -1323
                  or           s9, s2, a7
                  lui          s9, 1018407
                  sh           s7, 24(t3)
                  and          t6, t5, s4
                  srl          t6, s1, s6
                  sra          s7, s6, sp
                  lbu          s6, 183(t3)
                  andi         sp, a4, 1748
                  lb           t1, -183(t3)
                  slt          a7, t4, a3
                  srai         sp, a2, 7
                  slli         tp, t3, 22
                  lb           s9, 223(t3)
                  srli         s1, a7, 14
                  lb           s0, -219(t3)
                  lui          s1, 175453
                  and          s1, t1, a1
                  sb           t0, 48(t3) #end riscv_load_store_rand_instr_stream_2
                  la           s11, region_1+1780 #start riscv_load_store_rand_instr_stream_13
                  lhu          t6, 4(s11)
                  lbu          ra, -3(s11)
                  srli         s9, t3, 16
                  lb           s0, -15(s11)
                  sub          s6, a5, t1
                  lhu          s4, 6(s11)
                  ori          s6, t5, -1805
                  sb           a1, 10(s11)
                  sra          sp, s10, s6
                  lb           s5, 2(s11)
                  xor          sp, s1, tp
                  sltu         s6, a3, s10
                  lb           a1, 9(s11)
                  sltu         a4, a2, s4
                  lbu          a6, -1(s11)
                  xor          s8, a0, t5
                  sw           s6, -8(s11)
                  sh           s6, 2(s11)
                  auipc        t0, 261713
                  xor          s7, t6, a1
                  sb           a6, 5(s11)
                  sh           s4, -8(s11)
                  srli         a2, ra, 17
                  sw           s1, -16(s11)
                  lb           a2, -1(s11)
                  sb           s7, 14(s11)
                  sra          s5, t2, s3
                  lb           s9, -7(s11)
                  add          zero, t4, a4
                  lhu          s0, 14(s11)
                  srli         t6, t2, 10
                  lb           a6, 13(s11)
                  sub          s4, t4, t2
                  lh           s9, -4(s11) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_0+1846 #start riscv_load_store_rand_instr_stream_3
                  lb           s1, -13(sp)
                  sb           t2, -16(sp)
                  and          a2, a5, t0
                  sltiu        a3, s8, -1179
                  srai         t6, s4, 24
                  lhu          t0, -14(sp)
                  xori         t3, s10, 1731
                  sltiu        a3, s6, -498
                  lbu          t1, 7(sp)
                  and          s4, s4, t2
                  srli         a1, a3, 28
                  lhu          s5, 10(sp)
                  lhu          s7, -8(sp)
                  sh           t0, 16(sp)
                  lh           t3, -6(sp)
                  sw           s7, -10(sp)
                  sra          s9, ra, s9
                  addi         a7, a4, 739
                  lb           t3, -5(sp)
                  ori          a6, s3, 1686
                  srli         s0, s5, 3
                  and          s5, a5, t3
                  lb           s9, 11(sp)
                  lbu          t1, 11(sp)
                  sh           s0, 14(sp)
                  sb           a4, 7(sp)
                  lb           t5, -11(sp)
                  lb           gp, 13(sp)
                  lb           t3, 11(sp)
                  lb           t0, -6(sp)
                  sb           t0, 3(sp)
                  lb           s9, 7(sp)
                  sltu         t0, s11, t6
                  or           s4, s10, t4
                  sltiu        s2, a5, -1635
                  lb           t5, -12(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s2, region_0+1362 #start riscv_load_store_rand_instr_stream_5
                  sltu         t1, s7, s3
                  sw           a6, 186(s2)
                  lb           a3, -146(s2)
                  lbu          zero, -197(s2)
                  lbu          s8, -106(s2)
                  nop
                  lbu          a1, -12(s2)
                  xori         t3, a0, -311
                  lb           a4, -15(s2)
                  lh           tp, -196(s2)
                  sh           s3, -128(s2)
                  slli         s9, s2, 27
                  lb           s7, -51(s2)
                  sb           t0, -160(s2)
                  sh           ra, -224(s2)
                  xor          s6, a2, t1
                  lbu          t1, 206(s2)
                  sra          a2, t3, s3
                  sb           s11, -185(s2)
                  lbu          s8, 212(s2)
                  lbu          s6, -26(s2)
                  lb           tp, 160(s2)
                  xori         tp, sp, -939
                  lb           tp, 87(s2)
                  sra          tp, t4, a1
                  lb           gp, 87(s2)
                  lb           ra, 238(s2)
                  lbu          a4, 185(s2)
                  srl          sp, s5, sp
                  lb           s8, 49(s2)
                  lhu          t6, 92(s2)
                  xor          s9, s0, a7
                  lbu          s10, 142(s2)
                  sb           ra, -66(s2)
                  lbu          a6, 221(s2)
                  auipc        a3, 640405
                  sll          s11, t4, s4
                  lh           s0, -256(s2) #end riscv_load_store_rand_instr_stream_5
                  la           s0, region_0+1112 #start riscv_load_store_rand_instr_stream_6
                  and          sp, a0, a3
                  ori          s4, s2, -770
                  and          t0, s10, ra
                  sub          a1, s10, a1
                  or           s7, t6, sp
                  lh           s7, -62(s0)
                  sb           a1, -16(s0)
                  slt          t2, a3, t5
                  srli         sp, s1, 14
                  sub          s1, tp, zero
                  andi         t0, t2, -764
                  srl          s6, s8, tp
                  srai         a3, a6, 7
                  sb           ra, 51(s0)
                  slti         t1, s4, -633
                  xor          s6, a0, gp
                  lbu          tp, 21(s0)
                  sh           s6, 18(s0)
                  xor          t6, s11, a0
                  sb           t3, 30(s0)
                  lhu          tp, -48(s0)
                  srl          t1, s3, s9
                  or           s2, s9, a6
                  lhu          sp, -28(s0)
                  sb           ra, -14(s0)
                  lh           sp, 50(s0)
                  nop
                  nop
                  ori          tp, a3, 1133
                  ori          a7, gp, 1207
                  srai         t3, t4, 5
                  slti         s4, s2, 652
                  lbu          t2, 23(s0)
                  sb           tp, 8(s0)
                  and          s5, s6, ra
                  add          ra, t0, tp
                  sb           a3, -61(s0)
                  lui          a7, 823121
                  sh           s1, -8(s0)
                  lb           a6, 18(s0)
                  sltiu        a4, s11, 298
                  or           a0, s8, t0
                  sw           a2, -60(s0)
                  lbu          t0, 2(s0)
                  sb           t6, 55(s0)
                  lui          t2, 359833
                  lhu          s1, 10(s0) #end riscv_load_store_rand_instr_stream_6
                  la           tp, region_1+890 #start riscv_load_store_rand_instr_stream_7
                  lbu          s8, 15(tp)
                  lb           a4, -13(tp)
                  sb           t2, -3(tp)
                  addi         a2, s11, -222
                  sb           t1, 0(tp)
                  auipc        s9, 54859
                  slti         s2, t6, -1328
                  and          s7, a6, gp
                  srai         zero, gp, 8
                  sub          s2, s9, a2
                  sw           s2, -14(tp)
                  lbu          a7, -1(tp)
                  lh           s2, -8(tp)
                  sw           zero, -2(tp)
                  lh           t3, 4(tp)
                  slti         sp, s0, -370
                  sll          a0, s1, gp
                  lbu          t2, -13(tp)
                  lui          t3, 619440
                  add          s4, a1, s9
                  sh           a2, 4(tp)
                  sb           t1, -8(tp)
                  sh           a2, -8(tp)
                  ori          t2, t0, -1240
                  auipc        t3, 1037575
                  lb           s11, 9(tp)
                  sw           t2, -2(tp)
                  lh           t5, 12(tp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1925 #start riscv_load_store_rand_instr_stream_10
                  lhu          s8, -3(sp)
                  sltu         t1, zero, s7
                  xori         s5, s10, -1184
                  slli         s9, a7, 30
                  lb           s11, -12(sp)
                  sb           s2, -16(sp)
                  srli         t3, s9, 29
                  auipc        s4, 548321
                  lbu          a6, -6(sp)
                  xori         s9, s10, -439
                  lb           t6, -1(sp)
                  lbu          s1, -6(sp)
                  sh           s4, 11(sp)
                  srai         s2, t2, 17
                  lb           a6, 15(sp)
                  lbu          s6, -8(sp)
                  nop
                  lbu          zero, -1(sp)
                  lbu          t2, -4(sp)
                  slt          s2, t2, s8
                  slli         a2, tp, 30
                  lbu          s9, -16(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+413 #start riscv_load_store_rand_instr_stream_1
                  sb           s3, -2(sp)
                  andi         t3, a2, -87
                  xor          s4, t4, s1
                  xor          s6, s9, s5
                  srl          s9, s10, s4
                  sra          a1, a5, zero
                  lbu          t5, 12(sp)
                  or           s7, sp, a0
                  sb           tp, 15(sp)
                  auipc        a1, 171249
                  lw           a1, 11(sp)
                  srli         s9, a2, 30
                  addi         s6, s0, -1465
                  lui          a2, 632216
                  lbu          a3, 12(sp)
                  sb           t5, -1(sp)
                  srl          t6, s11, a3
                  lb           a1, 0(sp)
                  and          t5, tp, a2
                  sb           t1, -8(sp)
                  sltiu        t6, t0, 1425
                  slt          s4, sp, tp
                  andi         t6, s10, 1717
                  or           a6, a1, t4
                  lb           t6, -9(sp)
                  sll          s5, s11, zero
                  sll          zero, s5, s2
                  slli         a2, gp, 25
                  srl          t6, a1, t4
                  ori          t5, a1, 1179
                  auipc        s5, 194915
                  sw           a6, 7(sp)
                  slt          t0, s8, s6
                  sltiu        s5, t4, -1389
                  add          a1, s5, t2
                  and          t6, a3, ra
                  sb           s9, -10(sp)
                  sb           t2, -3(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+868 #start riscv_load_store_rand_instr_stream_9
                  ori          a6, t6, -1741
                  lui          ra, 101398
                  andi         s0, t5, 1066
                  and          gp, s4, a7
                  srai         a1, a3, 16
                  sb           a3, 13(sp)
                  andi         t6, s8, 1687
                  sll          s6, a6, t2
                  xor          t3, t0, t6
                  slti         s7, ra, -1095
                  lbu          a1, -15(sp)
                  srli         s8, a0, 8
                  xori         a7, s7, -542
                  auipc        a4, 317430
                  sb           t5, -1(sp)
                  slt          s1, a4, a0
                  auipc        t5, 272251
                  lbu          a1, -4(sp)
                  sltu         a1, s2, s0
                  lhu          s1, 16(sp)
                  nop
                  srli         a6, s9, 26
                  lb           t5, 2(sp)
                  auipc        t2, 596164
                  add          gp, t3, t4
                  addi         s5, sp, 843
                  lbu          a6, -15(sp)
                  sb           s0, -9(sp)
                  or           s9, s11, s7
                  srli         a2, ra, 13
                  sb           s1, -9(sp)
                  lbu          a0, 3(sp)
                  lhu          zero, 14(sp)
                  sra          a7, s11, t2
                  nop
                  sub          s1, t2, a3
                  lb           s7, 11(sp)
                  lui          t6, 32591
                  srl          tp, s3, s4
                  sltu         s10, s2, s11
                  nop
                  lb           s6, -9(sp)
                  sb           a1, 9(sp)
                  sb           s11, -13(sp) #end riscv_load_store_rand_instr_stream_9
                  la           t3, region_1+549 #start riscv_load_store_rand_instr_stream_11
                  slti         s11, t4, 1377
                  ori          a7, sp, -42
                  sltu         t5, a6, sp
                  auipc        a4, 201764
                  sltu         s10, s8, a1
                  slt          zero, tp, s9
                  slli         s9, a6, 8
                  lb           gp, -28(t3)
                  sra          s4, a5, s2
                  add          zero, t3, zero
                  sltiu        s4, tp, -1789
                  xor          a3, a7, s10
                  sltiu        s8, t4, -1279
                  auipc        s1, 296205
                  lbu          a7, 32(t3)
                  sll          t0, s4, s1
                  andi         t2, s3, -1075
                  srli         t6, ra, 2
                  add          ra, ra, t4
                  lbu          s9, -52(t3)
                  lbu          t5, 17(t3)
                  srli         s10, s1, 26
                  sltiu        s8, s5, 1577
                  auipc        s6, 632252
                  lb           ra, 47(t3)
                  lbu          s1, -20(t3)
                  lhu          t0, 1(t3)
                  sb           zero, -30(t3)
                  nop
                  sb           a1, 57(t3)
                  addi         s2, a4, 706
                  or           t2, s6, tp
                  slt          ra, t3, t5
                  addi         a3, s11, -906
                  lhu          s4, 25(t3)
                  xor          t5, a4, a7
                  lbu          a2, -30(t3)
                  lb           s5, 5(t3) #end riscv_load_store_rand_instr_stream_11
                  bne          a4, t3, 13f
                  sra          s10, tp, t5
                  bne          s10, a1, 20f
                  srai         s2, s0, 22
                  sra          ra, s10, t3
                  xori         t3, s5, 1038
                  xor          t3, a1, s3
                  slt          s9, s6, s0
                  srai         a0, s11, 23
                  blt          tp, s3, 18f
                  bne          t5, t5, 11f
11:               addi         t6, t1, -1096
                  blt          a6, s7, 21f
13:               srl          s5, t4, t1
                  sltu         t6, s1, s4
                  bne          a3, a0, 20f
                  slt          s8, tp, a6
                  addi         gp, t2, -1559
18:               blt          t6, ra, 38f
                  bgeu         a1, s3, 38f
20:               blt          t5, a5, 28f
21:               add          t3, a2, a3
                  slt          s9, tp, s6
                  nop
                  andi         sp, sp, -1164
                  bgeu         zero, tp, 37f
                  andi         ra, s2, 1763
                  nop
28:               ori          s8, s0, 1437
                  ori          s8, s0, -15
                  srli         a6, t0, 2
                  auipc        ra, 684069
                  bne          a4, t0, 36f
                  lui          s2, 47163
                  add          ra, s8, a6
                  xor          t0, t6, a0
36:               xori         s9, s4, 1622
37:               srl          s7, s8, gp
38:               srli         s9, gp, 13
                  sll          s2, s6, s8
                  slli         a3, t3, 22
                  sra          a3, a2, t5
                  nop
                  srl          s9, a7, s4
                  bge          tp, t4, 63f
                  auipc        t3, 485594
                  srli         t3, a1, 3
                  and          a1, a0, s2
                  sltiu        t3, gp, -238
                  andi         gp, a3, 947
                  slt          a7, s11, a7
                  bltu         a7, s6, 56f
                  slt          s6, a7, sp
                  bgeu         a2, s1, 65f
                  ori          tp, t0, 1955
                  auipc        t0, 63387
56:               slli         s10, a5, 29
                  or           sp, ra, sp
                  sll          sp, t4, s4
                  slli         a3, s11, 13
                  sra          s6, t4, s1
                  bne          gp, a5, 64f
                  lui          s1, 327555
63:               slli         ra, t0, 24
64:               bgeu         tp, a6, 84f
65:               lui          gp, 208737
                  sll          sp, s11, t6
                  bltu         s7, t5, 81f
                  sra          t5, s7, t2
                  bltu         s10, t3, 88f
                  sltiu        s9, t6, 479
                  bge          s2, s8, 72f
72:               addi         s0, t2, 1101
                  bgeu         t4, t3, 78f
                  bne          a0, a2, 93f
                  sltiu        t6, a4, -1548
                  beq          s9, s3, 95f
                  sltu         a1, s3, s9
78:               sltiu        a0, a6, 861
                  beq          s6, s6, 83f
                  lui          t5, 920485
81:               beq          a0, t1, 83f
                  add          s7, t4, t5
83:               slli         s5, a3, 18
84:               or           a3, s1, s10
                  and          s2, s10, t0
                  auipc        t2, 7015
                  blt          a7, s1, 105f
88:               sltu         t3, gp, a6
                  nop
                  srl          s11, a2, s5
                  lui          s4, 140784
                  auipc        s8, 446098
93:               slli         t5, t1, 15
                  xori         s0, s4, 2013
95:               xori         a4, t3, 884
                  ori          t0, s0, 208
                  xori         s2, tp, 1471
                  bgeu         a7, a5, 103f
                  sra          a6, s10, s8
                  lui          s8, 738889
                  nop
                  bge          t0, a5, 120f
103:              slt          t3, t3, t1
                  nop
105:              sll          sp, s9, gp
                  lui          gp, 953270
                  andi         zero, a2, -381
                  slli         s5, t5, 21
                  srli         sp, s5, 20
                  andi         a4, a0, 1558
                  bne          s10, s3, 122f
                  bgeu         s8, s2, 114f
                  and          gp, t2, s11
114:              slt          s10, s0, t0
                  nop
                  ori          a0, s2, -837
                  bltu         t1, s0, 135f
                  ori          s6, s4, 909
                  srli         s8, t1, 20
120:              xori         a1, a6, -1714
                  auipc        a2, 816337
122:              bne          s7, s6, 134f
                  add          t0, s0, t2
                  srli         t6, ra, 15
                  bltu         s2, a5, 130f
                  bgeu         s3, s11, 145f
                  xor          t0, a6, s6
                  bge          s1, t6, 132f
                  sra          a7, t6, a3
130:              sltu         t5, a3, tp
                  sra          a3, zero, ra
132:              srl          a4, a3, s1
                  slli         tp, s8, 17
134:              srli         t3, t5, 11
135:              sltiu        s7, t1, -312
                  addi         t6, a7, -481
                  srli         a7, a7, 10
                  ori          s0, t5, -1803
                  beq          s9, s6, 144f
                  and          gp, t0, s3
                  srai         s1, t1, 13
                  or           t3, t3, t3
                  xor          tp, sp, tp
144:              and          gp, a0, a0
145:              sltu         s10, s1, t4
                  sltiu        a7, s2, -1656
                  slt          a1, t2, a5
                  bne          t1, s7, 156f
                  auipc        a3, 750192
                  sra          tp, s2, s3
                  xor          s8, tp, a7
                  nop
                  addi         s1, zero, -1990
                  auipc        a2, 511686
                  auipc        a0, 332603
156:              nop
                  bltu         t5, s9, 176f
                  sll          s0, s4, s4
                  xor          t5, s0, t4
                  bltu         sp, s1, 172f
                  bne          s8, a5, 181f
                  xor          s5, s9, s4
                  xor          s5, s10, a6
                  sra          s2, a2, a6
                  sltiu        ra, t4, -292
                  sltu         s10, a1, t4
                  add          gp, a1, t5
                  bge          s4, gp, 187f
                  bgeu         t4, zero, 174f
                  bgeu         a5, t2, 172f
                  addi         s0, t0, 1884
172:              slt          zero, sp, a5
                  bgeu         s7, a2, 174f
174:              addi         tp, s10, -530
                  blt          s6, s2, 193f
176:              sra          s1, s6, a7
                  andi         t6, t1, 13
                  xor          a2, s9, t2
                  sra          sp, s5, a5
                  srli         t3, a7, 4
181:              andi         a3, a0, -1788
                  srli         a4, s1, 9
                  ori          s11, a3, -856
                  bge          gp, s3, 203f
                  and          s9, zero, t3
                  addi         s10, s5, 1912
187:              sra          a7, s4, a1
                  sll          a7, t5, a4
                  srl          s11, t3, s1
                  addi         s1, gp, 638
                  nop
                  lui          t2, 918150
193:              and          s5, s4, s6
                  sub          tp, a1, sp
                  slli         a4, gp, 26
                  xor          s5, a2, s2
                  bge          t5, gp, 202f
                  nop
                  bge          a0, t0, 213f
                  srai         s9, zero, 26
                  slli         tp, a2, 3
202:              auipc        s9, 326098
203:              auipc        s2, 953925
                  auipc        ra, 145263
                  xor          a1, a6, a7
                  bne          a6, s10, 210f
                  xor          t0, sp, a5
                  slti         sp, s9, -1787
                  xor          s11, t4, s0
210:              nop
                  sltiu        s0, s11, 1574
                  andi         t6, s4, 1624
213:              sltiu        a0, ra, -431
                  lui          s1, 927588
                  sra          t1, a7, a7
                  auipc        a4, 336325
                  add          a1, t1, s3
                  sltu         t1, a3, s10
                  auipc        t1, 513755
                  add          gp, s10, gp
                  add          s7, t4, a7
                  nop
                  and          t2, s9, a3
                  blt          t1, a6, 225f
225:              sltiu        ra, t4, -328
                  sltu         s10, s10, ra
                  sra          s6, t1, s7
                  bne          ra, s5, 248f
                  ori          a0, s5, -1140
                  srli         t2, t5, 24
                  beq          a0, t4, 240f
                  and          t0, t5, s1
                  slt          s6, s5, s3
                  addi         s2, a5, -1791
                  xor          a2, a5, tp
                  nop
                  bltu         t6, a3, 255f
                  or           t2, a0, tp
                  slt          s8, s7, t2
240:              bne          gp, a5, 243f
                  auipc        t5, 601608
                  auipc        tp, 323626
243:              blt          s1, s8, 261f
                  blt          t3, s6, 253f
                  sltiu        s9, ra, -1409
                  auipc        a3, 296613
                  srli         tp, a1, 19
248:              xori         s9, a4, 248
                  xor          t1, tp, t5
                  bltu         a5, t6, 252f
                  addi         s5, a1, -1025
252:              and          t6, a3, s8
253:              slt          s11, s6, s11
                  nop
255:              auipc        s1, 577491
                  and          s7, s8, a4
                  bgeu         a0, s3, 276f
                  ori          s7, s7, 207
                  nop
                  bge          t2, a2, 271f
261:              and          a1, s3, a2
                  or           t2, a5, t1
                  bge          s1, t4, 276f
                  srli         zero, zero, 26
                  slli         t5, t6, 23
                  bltu         s5, s11, 284f
                  add          t0, t3, t5
                  ori          s0, a5, -988
                  beq          tp, gp, 277f
                  sltiu        s8, a1, -1593
271:              slt          s10, gp, t0
                  bltu         a3, s1, 291f
                  add          a0, sp, s8
                  sltu         gp, a4, t2
                  sltu         t3, a1, s9
276:              blt          s0, s7, 294f
277:              srli         s2, a5, 20
                  bgeu         t3, a7, 281f
                  addi         ra, ra, -812
                  srai         a0, sp, 30
281:              and          a4, t3, s10
                  lui          s7, 519866
                  xori         s2, a7, -704
284:              xor          ra, a4, a4
                  blt          s9, gp, 305f
                  slt          ra, s6, t1
                  xor          s7, zero, s4
                  beq          t4, s3, 308f
                  sltu         s4, a5, s8
                  and          s5, s0, ra
291:              and          s8, t2, t6
                  sltu         s8, s5, s11
                  sub          t0, s10, s2
294:              nop
                  and          s1, s7, a5
                  slti         a6, s2, -2043
                  sltiu        t2, s10, 1730
                  add          s2, t0, a2
                  nop
                  sltu         s7, a6, a1
                  add          zero, t0, s1
                  srai         gp, s10, 30
                  xor          s0, s3, gp
                  add          t5, t3, s0
305:              or           tp, s9, t4
                  slt          s8, a3, sp
                  auipc        sp, 288345
308:              srli         a0, s3, 8
                  slli         s7, t6, 9
                  sll          s6, t5, t2
                  srli         t2, a6, 31
                  lui          a1, 319104
                  sltiu        a3, a2, -256
                  nop
                  bltu         a3, a0, 329f
                  slt          a2, t5, gp
                  auipc        zero, 998371
                  sll          sp, s9, s5
                  srai         s6, gp, 12
                  or           t6, gp, ra
                  sra          t6, a6, zero
                  srl          s2, s2, t1
                  andi         s2, s10, 272
                  bgeu         s1, s0, 328f
                  slli         t3, s6, 17
                  sub          a2, t4, s3
                  blt          a2, t3, 340f
328:              or           a4, t3, s7
329:              srli         s10, s5, 1
                  lui          a2, 583293
                  srli         s2, s8, 7
                  sltu         a4, a0, s2
                  slt          s4, a2, gp
                  addi         a2, s7, 754
                  andi         gp, a5, -1421
                  bne          a0, zero, 348f
                  lui          s6, 539978
                  blt          s3, s5, 356f
                  nop
340:              bge          tp, s10, 358f
                  bge          s4, s4, 350f
                  beq          t0, a0, 361f
                  srai         a2, s2, 30
                  lui          s8, 309485
                  bltu         a4, s4, 347f
                  slt          gp, s4, ra
347:              addi         sp, s2, 794
348:              sltiu        s10, s7, 1449
                  add          a6, s7, s8
350:              srli         sp, s10, 20
                  sra          s4, sp, s0
                  bne          s7, s11, 371f
                  slli         tp, s5, 28
                  add          s5, ra, t1
                  or           a6, s7, s5
356:              srli         ra, s6, 1
                  slli         s6, s4, 8
358:              sltiu        ra, s2, 635
                  xori         s7, a5, -1676
                  bge          s10, s1, 369f
361:              sll          sp, t0, s5
                  sll          a1, s0, t4
                  ori          s8, tp, -1542
                  slt          s7, t5, zero
                  sra          s11, t3, tp
                  xor          s5, t0, zero
                  xor          s1, t4, a1
                  slti         a4, ra, -1111
369:              addi         t0, s4, -1922
                  nop
371:              add          s10, s8, a3
                  sltu         s9, sp, s6
                  sub          s10, gp, a4
                  sub          s1, sp, s9
                  and          s5, t1, t2
                  or           a0, s5, a3
                  xor          tp, zero, s0
                  bge          a5, t6, 382f
                  srl          t3, a4, zero
                  auipc        s10, 135900
                  bltu         ra, t2, 382f
382:              sra          a7, s6, a7
                  nop
                  slli         a3, tp, 28
                  lui          t6, 36227
                  bltu         s9, s6, 398f
                  or           a0, s9, s1
                  bltu         a0, t1, 393f
                  blt          s4, a6, 391f
                  xor          a2, t2, a0
391:              xori         t5, a4, -367
                  xori         t5, sp, 650
393:              add          a7, s5, t3
                  xor          sp, a5, t3
                  or           ra, t5, a5
                  xor          s4, ra, sp
                  addi         gp, t4, 1657
398:              bge          s8, t5, 417f
                  bgeu         s4, s8, 410f
                  andi         s2, s0, 1095
                  andi         zero, s5, -602
                  bge          t4, s7, 407f
                  or           a0, sp, s7
                  sll          t3, s8, s1
                  add          t3, s1, a0
                  sub          a3, t1, s5
407:              and          s6, s1, t2
                  beq          a5, s9, 413f
                  xori         s11, s10, 120
410:              sltu         gp, s1, s11
                  add          t0, t6, a1
                  nop
413:              sll          a4, a4, a6
                  add          s2, t6, sp
                  srl          zero, s11, a0
                  and          t1, s7, s6
417:              xori         a7, sp, 1007
                  xori         a1, t1, -702
                  srli         gp, t4, 14
                  ori          a4, a2, 167
                  slt          zero, tp, a7
                  sra          s9, a3, s7
                  sub          a3, t1, s0
                  auipc        s6, 888470
                  bne          a0, a5, 443f
                  slt          s10, t4, s2
                  slt          s4, sp, a2
                  bgeu         tp, a5, 433f
                  sra          a4, gp, a1
                  bgeu         t4, s4, 449f
                  xor          a3, t6, s5
                  srli         a3, a6, 23
433:              srai         s0, a7, 16
                  blt          t5, a5, 435f
435:              add          s0, a6, t5
                  srl          t5, t3, s6
                  and          s5, a2, s7
                  sub          s5, a3, s9
                  nop
                  or           t6, zero, s10
                  slt          s9, t3, t6
                  xor          s4, s3, t5
443:              or           s2, t5, a1
                  sra          s2, a2, t2
                  slt          t1, zero, s5
                  add          tp, a4, t2
                  addi         sp, s6, 586
                  ori          gp, a3, -1145
449:              srai         sp, tp, 1
                  blt          a6, t0, 454f
                  ori          sp, ra, -681
                  or           a7, a5, s10
                  bne          s1, s1, 472f
454:              or           a2, a3, a7
                  sra          s1, zero, s1
                  ori          a7, s4, -1606
                  slt          ra, gp, s11
                  and          t6, t5, a1
                  addi         a1, a1, 623
                  sltu         s10, t0, s0
                  srai         s10, s5, 6
                  auipc        zero, 744557
                  bne          t5, s3, 464f
464:              sltiu        s5, t1, -1974
                  srl          s10, s9, a0
                  srl          s1, s1, t2
                  bltu         a5, a4, 487f
                  bltu         a5, s5, 481f
                  add          tp, a3, sp
                  slli         a3, a5, 31
                  blt          zero, s2, 482f
472:              xori         ra, zero, 938
                  sub          a0, a0, s10
                  lui          s2, 891490
                  blt          s9, s8, 487f
                  add          t5, s10, s11
                  bgeu         zero, a7, 482f
                  sub          t3, a4, s0
                  slt          zero, s4, a6
                  xori         tp, t6, 373
481:              srli         s5, s6, 4
482:              and          a0, a0, zero
                  auipc        s6, 948419
                  sub          t6, s0, s4
                  lui          t5, 334850
                  sll          gp, t5, s0
487:              sll          t2, sp, a1
                  bge          sp, s6, 493f
                  nop
                  sltu         s10, s6, t0
                  nop
                  andi         s7, t5, -203
493:              xori         t0, t6, -1506
                  sltiu        s10, s4, -1190
                  addi         s2, s7, -296
                  ori          t3, tp, -512
                  and          s7, s7, s0
                  auipc        tp, 326516
                  add          t6, s3, a4
                  slli         t3, s2, 22
                  blt          t4, s2, 515f
                  srli         s4, a0, 15
                  slti         s4, s9, -589
                  srai         s1, s2, 18
                  ori          a2, t3, -1415
                  sub          s4, a3, a1
                  sltu         a3, s3, t6
                  srli         ra, t5, 10
                  srl          t0, s9, a3
                  auipc        s5, 596897
                  add          s9, s3, ra
                  lui          t6, 207712
                  slt          a6, s0, gp
                  nop
515:              sra          s8, tp, s2
                  slt          s1, a1, s9
                  addi         s10, t0, -426
                  sra          ra, a5, s0
                  ori          s9, s8, 866
                  and          s4, a2, sp
                  bgeu         a6, t3, 539f
                  ori          tp, a5, -1844
                  andi         s5, s5, 1626
                  xori         s1, s7, 281
                  add          a3, s11, zero
                  sll          s4, s5, s10
                  addi         a6, a1, 67
sub_2_j7:         jal          t3, sub_5 #jump sub_2 -> sub_5
                  beq          s0, s8, 541f
                  ori          sp, zero, -1907
                  bgeu         t1, t3, 526f
                  addi         s0, t4, -119
526:              andi         s9, s1, 1871
                  or           sp, t2, t2
                  srli         s11, s4, 6
                  srl          a6, t0, t5
                  xori         a1, s6, -17
                  beq          a3, s3, 536f
                  blt          s10, s0, 551f
                  blt          s8, s8, 545f
                  blt          a5, a7, 539f
                  bgeu         ra, t2, 543f
536:              add          tp, t4, t1
                  sltiu        s9, a0, 1843
                  srli         s4, a6, 9
539:              addi         t6, t1, 466
                  bltu         s8, a0, 559f
541:              sll          t6, t3, gp
                  and          t6, a0, t1
543:              srl          t3, s2, a0
                  bne          a5, s6, 562f
545:              slli         s2, a7, 28
                  and          s2, s7, a5
                  bne          s11, s8, 565f
                  or           ra, s1, s9
                  xori         sp, s11, -210
                  beq          a3, t6, 559f
551:              auipc        a4, 518695
                  slli         gp, t4, 0
                  sltu         s11, s7, gp
                  sra          s0, gp, t1
                  blt          s2, s1, 557f
                  bge          t1, s0, 557f
557:              xor          ra, tp, t1
                  add          a0, s5, s2
559:              andi         a7, s8, -2032
                  slli         t0, ra, 26
                  add          a6, t6, a0
562:              slt          t0, a0, t1
                  srai         tp, a0, 20
                  slli         t5, a0, 27
565:              bne          s7, t1, 574f
                  blt          t0, tp, 569f
                  beq          a2, s9, 571f
                  beq          tp, a5, 587f
569:              andi         ra, t4, 135
                  slli         zero, s7, 12
571:              bltu         s4, ra, 591f
                  srli         s1, a1, 23
                  sll          a3, a0, s8
574:              slt          tp, a7, zero
                  srli         t1, s8, 20
                  srl          a6, t2, a6
                  bgeu         s5, tp, 595f
                  add          s0, s1, t1
                  srl          sp, sp, s10
                  bne          t0, s0, 593f
                  slti         s9, s9, 825
                  addi         s7, t1, 1132
                  bge          s7, zero, 585f
                  andi         t0, s3, 213
585:              sra          s4, zero, a5
                  bne          a7, s3, 587f
587:              or           s9, a6, a4
                  sltu         a4, t3, t6
                  bltu         s7, a0, 601f
                  sltiu        tp, tp, 1457
591:              slt          sp, a7, s6
                  and          a7, gp, s0
593:              addi         ra, a6, 73
                  blt          s7, s3, 598f
595:              xori         s0, t3, -1727
                  addi         t5, a7, -1853
                  addi         a2, a5, 1860
598:              bne          sp, t1, 607f
                  sltiu        t3, s10, -1593
                  ori          a0, ra, 1605
601:              sub          s2, s5, a5
                  slli         s7, t4, 20
                  ori          t3, gp, 698
                  slt          t5, ra, s5
                  xori         s8, a5, -703
                  slt          s5, a6, zero
607:              add          s6, a0, sp
                  sub          s6, a7, s9
                  blt          s7, ra, 618f
                  bltu         a3, t2, 612f
                  xor          t1, a5, tp
612:              bge          s9, s10, 617f
                  ori          t3, t3, 1573
                  lui          s10, 611398
                  beq          s11, s6, 616f
616:              or           gp, a5, s4
617:              andi         zero, a7, 194
618:              andi         a4, ra, -1230
                  and          t0, s0, s8
                  or           zero, gp, s8
                  add          t2, s6, a6
                  srai         t0, gp, 13
                  and          s0, t5, t5
                  slt          t5, a3, s10
                  srli         a2, s9, 28
                  srai         s4, s11, 11
                  add          s7, t3, s7
                  bgeu         a1, a2, 636f
                  bge          a4, zero, 648f
                  slt          s4, s2, s5
                  add          s9, t5, ra
                  sltu         a6, a5, t2
                  slt          t6, s6, sp
                  slt          a1, a7, a4
                  addi         a0, a4, -1698
636:              srl          a7, t4, a2
                  sltu         a3, a6, t5
                  slli         a2, s2, 13
                  sltiu        a4, s11, -1887
                  srai         t3, s1, 0
                  blt          s1, s8, 660f
                  addi         ra, ra, -1055
                  sra          tp, sp, sp
                  addi         s9, a0, -1288
                  add          t5, t2, a5
                  bne          s5, t1, 651f
                  ori          a2, a7, -1319
648:              blt          a0, t0, 667f
                  addi         s4, s3, -1256
                  bltu         t0, t1, 655f
651:              sub          ra, t3, t1
                  xor          t0, s11, gp
                  bge          zero, s7, 671f
                  and          t2, s0, tp
655:              xori         t6, tp, 1874
                  bltu         t5, s3, 675f
                  ori          a3, gp, -355
                  bne          t5, t5, 677f
                  slt          a2, a4, s7
660:              lui          t2, 279617
                  bne          t4, t4, 679f
                  bgeu         t0, zero, 680f
                  sll          t0, zero, s0
                  srai         s8, t1, 9
                  beq          t0, a1, 669f
                  sra          s0, s10, s4
667:              slti         a2, t4, 199
                  nop
669:              auipc        a0, 822819
                  sltu         zero, s3, ra
671:              beq          t4, s10, 676f
                  slli         s4, sp, 8
                  sll          s10, s10, s11
                  nop
675:              sra          a3, ra, s3
676:              bne          a3, s11, 696f
677:              srl          s11, t0, s5
                  xor          a1, a3, s9
679:              bltu         t3, tp, 690f
680:              blt          s9, t1, 683f
                  beq          a4, ra, 695f
                  slt          t0, a2, a0
683:              bgeu         t5, a2, 695f
                  bne          s8, a4, 702f
                  srai         a2, zero, 30
                  sltiu        gp, s11, 862
                  slli         s4, s8, 17
                  auipc        a1, 1007792
                  bltu         s3, s0, 709f
690:              add          a7, t1, s4
                  srli         s8, s8, 17
                  ori          tp, sp, -175
                  sra          t2, tp, t3
                  bgeu         t1, s6, 712f
695:              auipc        s9, 566187
696:              srli         sp, s4, 25
                  xori         a4, s6, 1398
                  blt          s6, s8, 701f
                  sltu         zero, s0, s4
                  sub          s10, t1, s6
701:              blt          t5, a5, 720f
702:              xor          tp, a0, a3
                  bge          s0, t4, 704f
704:              bge          s9, s3, 709f
                  and          zero, a4, s3
                  sltiu        s6, a7, 792
                  add          a0, s7, t1
                  bne          t4, s11, 716f
709:              srli         t0, s8, 4
                  bne          t5, s0, 711f
711:              srai         gp, s5, 9
712:              andi         s6, t6, -1742
                  andi         s5, t4, 1498
                  lui          a0, 26883
                  srl          a1, a4, s8
716:              slli         s8, t0, 2
                  lui          a6, 878427
                  bge          a5, t4, 730f
                  bne          s4, t2, 737f
720:              andi         t2, s4, 645
                  bltu         tp, s7, 723f
                  lui          gp, 166690
723:              slt          s2, s8, s11
                  bne          s11, a1, 743f
                  addi         s2, t0, -852
                  sll          a6, t0, s10
                  sltu         s6, a7, a7
                  beq          s1, s1, 748f
                  andi         tp, t3, -213
730:              sub          a7, s8, s2
                  bltu         t1, s2, 735f
                  sltiu        t5, tp, 755
                  sra          s10, s9, gp
                  xor          gp, a5, s5
735:              sub          s10, t6, s11
                  add          s4, a3, a2
737:              andi         a7, s9, -1191
                  srl          s1, s1, gp
                  slli         sp, a4, 11
                  sltiu        s1, s8, -1479
                  sra          t0, s1, s0
                  slli         s10, a2, 14
                  sltiu        a1, s4, 1903
                  la           s7, sub_5
                  addi         s7, s7, 512
                  or           a3, s11, s6
                  slli         s1, s2, 12
                  srli         s6, ra, 6
                  bltu         sp, a5, sub_2_j5 #branch to jump instr
                  sltiu        a6, t1, -593
                  sltu         s10, gp, s7
sub_2_j5:         jalr         t3, s7, -512 #jump sub_2 -> sub_5
                  sra          s8, a2, tp
743:              sltiu        t5, a7, 1532
                  srli         s5, a6, 22
                  sll          s8, a0, t2
                  andi         t6, zero, -405
                  or           t2, t5, s2
748:              sltu         t6, t3, a3
                  xori         ra, a6, -485
                  auipc        sp, 758320
                  lui          t3, 276001
                  sll          s9, s8, s11
                  xor          s8, t2, t0
                  slt          a2, s3, sp
                  slli         a6, s3, 25
                  bge          s8, s6, 765f
                  bgeu         s5, s11, 762f
                  bne          tp, s2, 763f
                  bne          a5, a2, 761f
                  and          s1, gp, s8
761:              sltiu        a7, s5, -1858
762:              andi         t1, a7, -1593
763:              or           s5, s5, a1
                  and          a2, a5, t2
765:              sub          s2, a3, s3
                  srli         gp, a5, 13
                  slt          s7, s10, s1
                  slt          t2, ra, gp
                  bgeu         t6, a3, 780f
                  andi         s10, sp, -1534
                  addi         zero, s6, -786
                  blt          s8, a2, 791f
                  bltu         a0, s4, 792f
                  sll          s1, a7, s4
                  srli         s11, ra, 4
                  lui          s1, 793942
                  slt          s10, a1, s10
                  and          t0, t1, s2
                  blt          a4, t1, 784f
780:              sltu         t6, s6, t0
                  sll          s0, s6, a3
                  ori          a7, s0, -1469
                  bgeu         t5, t3, 797f
784:              srli         s10, t0, 16
                  slli         s1, a1, 5
                  beq          tp, t3, 790f
                  addi         ra, s0, -164
                  addi         a3, a7, -155
                  or           s4, s5, a5
790:              xor          a3, s1, s7
791:              srli         a7, a6, 11
792:              srai         s5, a0, 6
                  and          t2, s3, s9
                  and          s11, t1, s4
                  and          s0, t3, zero
                  srli         s6, s5, 16
797:              bge          t1, t5, 809f
                  xori         zero, s6, 1812
                  sll          gp, t4, sp
                  bltu         s7, s2, 820f
                  slti         s9, t6, 294
                  blt          a1, s11, 821f
                  slli         tp, a7, 24
                  lui          a0, 964964
                  bne          t1, a3, 818f
                  srl          t6, s7, a0
                  sltu         s2, tp, a7
                  slti         t5, s9, 260
809:              or           s5, s6, t2
                  nop
                  andi         s8, t2, -377
                  bgeu         sp, s0, 821f
                  sra          a0, sp, a4
                  lui          zero, 712076
                  sltiu        s4, zero, -1942
                  srl          t5, t6, sp
                  sltu         s4, ra, s3
818:              add          a3, gp, s5
                  sltu         a3, s6, s4
820:              slli         s9, s7, 0
821:              bltu         a6, a2, 839f
                  bge          a3, a7, 840f
                  srai         gp, s10, 11
                  add          s8, t0, zero
                  bgeu         a4, t0, 843f
                  slt          s9, s11, s3
                  beq          s9, s9, 846f
                  bne          ra, a0, 837f
                  bge          a5, t1, 847f
                  bge          s2, t1, 842f
                  lui          a1, 1005587
                  sll          s7, t4, s5
                  xor          s8, s2, s9
                  auipc        a7, 330088
                  beq          a3, zero, 854f
                  blt          t6, gp, 854f
837:              xori         ra, tp, -1667
                  srli         t0, s2, 15
839:              or           zero, s2, a1
840:              slti         t3, s10, -1522
                  andi         t2, s1, -295
842:              srai         t6, s7, 8
843:              sll          s7, t0, s3
                  blt          a1, t5, 849f
                  srli         a0, s3, 3
846:              bge          t4, s6, 851f
847:              sra          zero, s7, ra
                  sltu         s9, a2, t6
849:              slli         ra, s1, 8
                  add          ra, s2, t2
851:              beq          s3, t6, 856f
                  or           s5, gp, s3
                  sll          a0, t6, s6
854:              srai         s0, s11, 3
                  bne          s9, t2, 869f
856:              xor          t1, s5, ra
                  sra          s10, a1, gp
                  slli         a3, t3, 1
                  bltu         s1, s5, 860f
860:              beq          tp, gp, 865f
                  bltu         a3, a7, 870f
                  ori          s4, a3, 135
                  addi         tp, s4, 1326
                  andi         zero, s0, 1216
865:              addi         s2, a5, 1788
                  srl          t5, s11, s6
                  blt          s4, s4, 871f
                  blt          a6, s8, 871f
869:              bge          a6, t1, 888f
870:              andi         sp, a0, 410
871:              beq          a7, a4, 872f
872:              slli         t3, a1, 21
                  lui          t1, 745575
                  or           ra, s1, s1
                  slti         s7, s10, 1577
                  and          tp, a6, s11
                  lui          a1, 601372
                  slti         s6, s11, 584
                  bne          a6, s2, 899f
                  sll          a6, s9, s7
                  slti         s8, s8, -1465
                  add          a2, t0, gp
                  andi         a1, a7, 335
                  add          a7, t6, s5
                  lui          t2, 451936
                  blt          s5, a0, 890f
                  slt          s11, s9, s8
888:              auipc        s7, 834403
                  auipc        a4, 385861
890:              srai         t2, t0, 14
                  slt          a0, s11, a3
                  lui          s2, 642087
                  lui          sp, 79512
                  srl          s9, s11, s2
                  bge          a5, s2, 914f
                  slli         sp, a3, 0
                  srl          a1, s1, t4
                  bgeu         s10, sp, 918f
899:              lui          a0, 133302
                  srai         s7, t3, 20
                  nop
                  sltiu        a3, s8, 1663
                  add          s9, s4, s1
                  andi         t1, a7, 0
                  nop
                  blt          t4, s10, 918f
                  srl          t0, t3, t0
                  srli         s0, s4, 23
                  bgeu         s7, s2, 911f
                  andi         s1, sp, 737
911:              beq          zero, s8, 924f
                  sub          s8, t1, s6
                  slt          s7, a0, a6
914:              or           a3, t2, t0
                  blt          t1, s1, 933f
                  nop
                  srli         s4, a0, 25
918:              nop
                  xor          sp, zero, s8
                  srli         s2, s7, 11
                  srl          s8, s10, a2
                  slti         s11, s0, -1098
                  or           tp, tp, s8
924:              beq          a7, s4, 943f
                  srli         s0, t2, 16
                  or           t5, a1, s8
                  blt          ra, s7, 929f
                  add          a0, zero, s2
929:              xori         t3, a1, -1784
                  xor          s4, s8, t4
                  ori          gp, ra, 1402
                  nop
933:              sll          gp, a6, s1
                  ori          t6, s9, 938
                  nop
                  or           a1, t6, tp
                  srli         s11, t1, 6
                  xor          s8, t0, t1
                  addi         gp, zero, -265
                  ori          gp, s2, 87
                  ori          a3, s4, 1965
                  sra          s10, a1, t2
943:              nop
                  bge          a2, a7, 955f
                  bge          s8, s9, 953f
                  srli         a4, a4, 14
                  or           a6, s4, s8
                  bgeu         s1, t1, 967f
                  blt          a5, s7, 969f
                  ori          a0, t6, 574
                  and          s6, t6, a2
                  sub          s6, t3, a1
953:              xori         a3, s5, -204
                  srl          s8, t4, a7
955:              sltiu        a2, t2, 1279
                  and          a3, t1, t4
                  sra          s9, s5, s6
                  slt          a3, t6, sp
                  sll          s8, a2, sp
                  addi         gp, t6, -1682
                  sra          sp, s10, s11
                  bltu         t6, s0, 963f
963:              sltiu        t0, s0, 1520
                  bne          s7, a3, 972f
                  bgeu         a7, s0, 969f
                  bltu         sp, t6, 975f
967:              sll          t2, s5, s3
                  srli         a3, t6, 11
969:              slti         t3, a3, 1611
                  sub          s2, a6, t0
                  sltu         t1, a5, gp
972:              nop
                  sltu         a1, t4, tp
                  xori         a0, a4, -1513
975:              sltiu        t2, a4, -1965
                  xori         s1, t0, -1724
                  blt          a0, s7, 996f
                  bne          s11, tp, 997f
                  beq          a6, s10, 997f
                  bgeu         a6, s6, 998f
                  bgeu         s1, t0, 1001f
                  or           t0, s4, t6
                  sub          ra, t4, t3
                  beq          sp, a6, 1002f
                  lui          zero, 388645
                  xori         s2, sp, -423
                  xori         t6, ra, -725
                  srli         t1, s11, 15
                  and          s1, s8, s6
                  andi         zero, s4, -1607
                  lui          t6, 19790
                  slli         a4, t5, 0
                  addi         t1, t0, 1683
                  slti         s5, a0, 399
                  beq          s1, s2, 1014f
996:              andi         t2, t1, 200
997:              srai         s5, gp, 0
998:              sub          a1, a7, a0
                  beq          a2, a4, 1004f
                  andi         a3, a3, -1986
1001:             sra          t6, t5, a0
1002:             auipc        s1, 640375
                  add          zero, s9, s0
1004:             ori          s7, a7, -564
                  addi         a4, s10, 172
                  or           s11, s7, a3
                  or           s10, t1, a6
                  srai         t2, s5, 13
                  xori         a7, sp, -960
                  nop
                  andi         s6, s1, -1412
                  slli         t3, a6, 6
                  blt          s8, s6, 1018f
1014:             sll          tp, gp, a7
                  blt          sp, t1, 1026f
                  nop
                  sra          t2, s10, t5
1018:             xor          a4, tp, s7
                  sll          s11, s2, a6
                  xori         t1, s3, -108
                  nop
                  blt          a2, sp, 1035f
                  auipc        s9, 521131
                  sltu         s1, s1, t1
                  beq          sp, t0, 1043f
1026:             sltiu        a0, ra, 698
                  srai         t2, t3, 28
                  blt          sp, s11, 1040f
                  lui          s10, 439333
                  add          s2, a5, a1
                  add          s7, a1, a1
                  beq          a3, s2, 1034f
                  bgeu         s10, s4, 1045f
1034:             auipc        a7, 801975
1035:             srli         s6, s5, 20
                  sltiu        a0, s9, 1239
                  bge          a4, a2, 1042f
                  add          a1, t0, s8
                  srl          s8, s10, s2
1040:             auipc        sp, 351980
                  slli         a7, tp, 8
1042:             lui          ra, 902648
1043:             sltu         tp, s2, gp
                  add          tp, s1, a3
1045:             andi         s5, t3, -542
                  srl          s5, a0, a1
                  sltu         t6, t3, t0
                  addi         s6, a7, 764
                  xor          s8, s0, t1
                  bne          t2, ra, 1054f
                  srli         t2, s11, 21
                  bgeu         a5, sp, 1055f
                  or           t5, s1, gp
1054:             or           a6, a0, a2
1055:             sll          s6, s0, s2
                  sub          t0, a0, sp
                  sub          a2, s5, t0
                  add          sp, a4, t3
                  and          s10, s1, s7
                  nop
                  slti         s2, ra, 1777
                  blt          t3, a7, 1071f
                  auipc        a0, 159974
                  xor          a0, s11, s1
                  srai         a0, ra, 21
                  auipc        ra, 21813
                  sra          t6, a3, s7
                  beq          t1, a3, 1070f
                  andi         s10, a2, -177
1070:             sll          t0, a6, a7
1071:             sub          gp, sp, sp
                  slt          a1, a7, tp
                  xor          tp, t3, sp
                  slti         s0, t4, -1537
                  bne          t1, tp, 1089f
                  add          s5, s2, s8
                  bltu         t2, s6, 1096f
                  beq          s10, a3, 1083f
                  srli         s1, t1, 17
                  addi         s0, t4, 1263
                  bge          a1, ra, 1082f
1082:             bge          a4, t5, 1094f
1083:             sltu         s7, a1, a4
                  bge          s6, a1, 1085f
1085:             sub          s1, s2, s9
                  sub          a2, ra, a1
                  sll          tp, s0, s2
                  bgeu         sp, a1, 1092f
1089:             sll          gp, s2, t3
                  sra          zero, s7, t4
                  sra          s2, a5, a6
1092:             slt          s6, s4, ra
                  andi         a3, s10, 1280
                  la           sp, region_1+1465 #start riscv_load_store_rand_instr_stream_4
                  lh           t6, -77(sp)
                  slli         s0, t6, 24
                  lbu          s8, -57(sp)
                  sh           zero, -103(sp)
                  lb           a2, 196(sp)
                  sb           t5, 34(sp)
                  slti         a1, a1, 311
                  nop
                  lb           s9, -199(sp)
                  lh           zero, 1(sp)
                  lb           t2, -67(sp)
                  or           s8, t5, s4
                  sb           s1, 147(sp)
                  sb           t1, -244(sp)
                  sb           t5, 1(sp)
                  lw           t3, -189(sp)
                  sh           a1, 63(sp)
                  lh           s8, 93(sp)
                  lb           a2, -46(sp)
                  sb           a3, 12(sp)
                  sltiu        s5, s7, 1384
                  lb           a0, 20(sp)
                  addi         t5, a2, -674
                  xori         s0, sp, -671
                  nop
                  ori          t2, s10, 1931
                  sb           a1, -229(sp)
                  sb           t1, -28(sp)
                  lbu          s10, -26(sp)
                  lbu          s5, 12(sp)
                  andi         t1, s3, 1133
                  lb           a0, 238(sp)
                  lw           s0, 203(sp)
                  lhu          ra, 135(sp)
                  auipc        s5, 242298
                  lbu          tp, -165(sp)
                  sb           s11, 68(sp)
                  lh           a2, 147(sp)
                  lb           t2, 164(sp)
                  lb           gp, -176(sp) #end riscv_load_store_rand_instr_stream_4
1094:             bne          s4, a1, 1098f
                  sub          gp, a6, a0
1096:             add          s6, s9, a3
                  sra          tp, a1, zero
1098:             nop
                  andi         s11, s7, 767
                  bltu         tp, a0, 1108f
                  andi         a4, t1, -573
                  xor          a0, t6, t6
                  beq          t6, t6, 1123f
                  bne          ra, tp, 1123f
                  bne          a7, t1, 1106f
1106:             bge          s4, t4, 1117f
                  beq          ra, t4, 1109f
1108:             xori         a7, zero, 1429
1109:             sltiu        gp, t4, 1380
                  or           a6, t1, t6
                  nop
                  bne          a1, sp, 1131f
                  xori         t0, a5, -737
                  slli         a0, a3, 22
                  bltu         a5, t2, 1129f
                  sltu         a0, s0, s5
1117:             nop
                  bltu         a3, s8, 1136f
                  or           a4, s8, t4
                  xor          a7, t3, a1
                  andi         t3, a5, -1859
                  slti         ra, t0, -646
1123:             slti         gp, ra, 1333
                  xor          a1, s5, a5
                  addi         s0, sp, 429
                  bne          gp, ra, 1144f
                  sll          a6, s0, sp
                  bne          s6, gp, 1137f
1129:             slti         s4, s2, 1965
                  sll          t5, s3, t0
1131:             add          a1, a4, a1
                  sll          tp, s1, s2
                  lui          s11, 405791
                  nop
                  addi         t1, sp, 276
1136:             andi         t1, t6, -1105
1137:             sll          tp, s0, t1
                  xor          t3, t1, s7
                  sltiu        s11, s5, -1473
                  and          t5, sp, a6
                  lui          a3, 883525
                  xori         s11, a5, 262
                  slt          tp, s8, tp
                  la           sp, region_1+1078 #start riscv_load_store_rand_instr_stream_0
                  sb           a6, -5(sp)
                  auipc        a2, 732380
                  or           a0, t1, s3
                  srai         t3, t4, 26
                  lb           zero, 1(sp)
                  srai         a4, s7, 0
                  sh           s8, 12(sp)
                  lui          a6, 1039946
                  lb           a1, -16(sp)
                  add          s5, a7, tp
                  srl          t2, a4, s9
                  sra          a2, s8, s9
                  xor          s1, t4, zero
                  xori         s10, s0, -90
                  lh           a4, -2(sp)
                  slti         t6, ra, -726
                  sb           t2, -15(sp)
                  addi         a3, s6, -1861
                  lbu          a2, 1(sp)
                  lhu          s6, 14(sp)
                  lh           a6, 14(sp)
                  xor          a4, a7, sp
                  xori         t3, a7, -2020
                  ori          t2, tp, 1379
                  slt          s2, a4, s4
                  slti         s0, ra, 1788
                  srai         t2, s11, 30
                  or           s7, s1, t0
                  lbu          t5, 14(sp)
                  sll          s2, a3, s4
                  sb           s9, -11(sp)
                  slli         s2, s4, 22
                  auipc        t5, 701578
                  lbu          s2, 9(sp)
                  or           t6, a3, s11
                  sh           a5, 10(sp)
                  lui          gp, 393291
                  sb           sp, 3(sp)
                  sltu         a4, s7, t6
                  sb           s6, 1(sp) #end riscv_load_store_rand_instr_stream_0
1144:             add          ra, a6, s3
                  sra          t0, t6, t3
                  sra          s2, t4, a1
                  xor          t2, s11, t5
                  slti         s1, s4, -658
                  slli         tp, sp, 22
                  auipc        sp, 503159
                  or           s7, s4, a6
                  nop
                  sll          t1, tp, a7
                  sub          a0, s5, s3
                  slti         a4, s7, 1112
                  and          s5, t2, t0
                  and          zero, t4, a3
                  andi         s5, a1, 1201
                  auipc        t0, 839259
                  sltiu        t2, s4, -1424
                  bne          a6, s6, 1163f
                  bgeu         tp, a0, 1171f
1163:             bge          sp, sp, 1176f
                  srli         ra, a6, 22
                  sll          t0, a4, s4
                  slt          a2, s2, t0
                  bne          a7, a6, 1170f
                  srli         ra, s8, 17
                  add          tp, t5, t1
1170:             bne          t3, s8, 1189f
1171:             sltiu        s6, a5, 1211
                  addi         s1, s9, 1324
                  srli         s10, a1, 7
                  bge          tp, s9, 1186f
                  sltu         s10, s11, gp
1176:             sub          s1, gp, t2
                  xor          t3, a4, ra
                  blt          gp, s1, 1198f
                  sltu         t5, t1, s7
                  sra          a4, a2, s10
                  bgeu         a4, t0, 1199f
                  addi         t0, a0, 495
                  or           t1, a2, t6
                  or           t0, a0, zero
                  srl          s6, a6, a1
1186:             auipc        a0, 172379
                  slli         a7, t6, 15
                  bltu         s2, s8, 1207f
1189:             xor          gp, s3, a0
                  xori         t0, s5, -1443
                  xor          gp, gp, a6
                  sub          a1, a6, a6
                  bne          t1, s5, 1198f
                  or           a1, s4, t6
                  slti         t2, t5, -1840
                  nop
                  sltu         s7, sp, a5
1198:             slti         s1, s1, 1910
1199:             xor          t1, s7, t5
                  xor          s7, s8, s5
                  slti         t6, zero, 1255
                  bltu         ra, a4, 1207f
                  andi         s8, t0, 637
                  add          s4, t4, s1
                  or           s7, a2, a5
                  or           a3, t2, s5
1207:             srl          a2, t1, s7
                  and          s5, s0, tp
                  srli         s5, a1, 13
                  or           s10, s0, a3
                  slt          s8, tp, t1
                  nop
                  sll          s6, a2, t6
                  and          t2, a5, s6
                  and          t3, s5, a1
                  xor          zero, s9, gp
                  nop
                  sra          a1, s4, t0
                  bgeu         t2, zero, 1224f
                  ori          tp, a0, 461
                  bge          t4, a4, 1226f
                  slli         t5, s11, 9
                  bgeu         a4, a6, 1242f
1224:             slli         s11, a0, 10
                  bne          a6, s7, 1243f
1226:             nop
                  bgeu         a2, t0, 1246f
                  sltiu        s5, a7, -953
                  sll          zero, s11, gp
                  and          a7, s9, s8
                  or           s4, s0, s9
                  bltu         a6, s8, 1237f
                  nop
                  bltu         s4, t2, 1239f
                  andi         a1, s9, 495
                  blt          a0, a1, 1241f
1237:             auipc        tp, 593657
                  bne          tp, sp, 1257f
1239:             sll          a0, s5, a7
                  add          a4, tp, s0
1241:             sra          a3, s11, a1
1242:             lui          t3, 372700
1243:             ori          sp, t2, 1266
                  and          a3, zero, sp
                  sltiu        t6, a7, -1089
1246:             or           t1, t4, a5
                  srli         s6, a6, 7
                  xori         s5, a3, 1419
                  sra          tp, zero, a3
                  srli         a0, s6, 8
                  bgeu         ra, a2, 1260f
                  sra          s4, t3, a0
                  or           s4, zero, s7
                  bltu         a3, a3, 1273f
                  sltu         a1, s3, s3
                  and          t0, s0, s10
1257:             bgeu         sp, a0, 1277f
                  beq          a2, sp, 1266f
                  bne          s6, s2, 1262f
1260:             bge          s1, a4, 1279f
                  addi         tp, s8, -597
1262:             ori          t6, sp, -296
                  or           a3, ra, a3
                  or           ra, s2, t4
                  slti         a3, t4, -1215
1266:             add          a1, s10, tp
                  sltiu        a1, s8, -1156
                  lui          a0, 576187
                  slt          a2, zero, ra
                  sra          gp, s10, s11
                  addi         t3, s11, 849
                  andi         t3, a2, 619
1273:             beq          a2, t3, 1291f
                  bltu         s2, s9, 1279f
                  srl          zero, t6, a4
                  sltu         a2, zero, s6
1277:             or           a2, sp, s4
                  bltu         a6, t4, 1296f
1279:             lui          a1, 172681
                  bltu         s11, s2, 1299f
                  xori         s11, t3, -1617
                  sll          t1, zero, a2
                  slti         t0, a0, 1010
                  sll          a3, s10, zero
                  ori          t1, a7, -1710
                  sll          s7, s8, t3
                  ori          s10, s11, -1132
                  bge          t6, tp, 1290f
                  xor          a6, s2, s1
1290:             xor          s6, ra, a3
1291:             sltu         t3, t6, t1
                  srl          s7, s2, zero
                  andi         s0, a3, 1612
                  srai         s0, s11, 11
                  bge          zero, a0, 1299f
1296:             auipc        a4, 166680
                  beq          s9, t4, 1306f
                  bltu         t3, s11, 1311f
1299:             add          s6, s0, s4
                  xori         sp, a7, 857
                  lui          s10, 904382
                  nop
                  ori          a7, s9, 943
                  sra          a0, a2, tp
                  xor          a6, ra, s8
1306:             bgeu         a6, t6, 1307f
1307:             xori         s11, zero, -2008
                  lui          s9, 549067
                  sltiu        s1, s11, -875
                  slli         s8, sp, 17
1311:             srai         s0, t6, 12
                  nop
                  bltu         s7, zero, 1325f
                  ori          t1, a5, 1421
                  nop
                  slli         gp, s0, 20
                  bge          s0, s11, 1335f
                  lui          s1, 1012328
                  and          t2, t0, a0
                  andi         ra, a2, 1260
                  and          t0, s9, sp
                  bge          a1, a1, 1340f
                  bltu         t2, t0, 1334f
                  addi         s1, s10, -630
1325:             blt          t4, a1, 1337f
                  addi         t2, t0, 1539
                  slti         t1, a1, -1937
                  sra          tp, t2, t5
                  lui          tp, 377094
                  bge          t6, s5, 1344f
                  slli         a0, s6, 26
                  sltiu        zero, ra, 1847
                  blt          ra, gp, 1353f
1334:             lui          t1, 411645
1335:             blt          t0, ra, 1337f
                  slt          a7, t0, s2
1337:             srai         t2, t3, 28
                  srl          s2, tp, sp
                  sll          s6, a0, a1
1340:             lui          s6, 66385
                  srli         s11, a6, 16
                  auipc        t5, 914457
                  sltiu        s1, a4, -1275
1344:             or           gp, s10, s8
                  slt          s11, zero, s4
                  lui          s1, 198579
                  sra          a3, a1, s11
                  xor          s0, sp, t2
                  xor          s10, s4, t4
                  and          ra, a2, a3
                  andi         s7, s10, 1721
                  xori         s2, a4, -315
1353:             slti         a6, tp, -1379
                  slti         t5, s5, -293
                  srl          t2, gp, s8
                  slli         ra, s0, 0
                  slli         a1, a1, 19
                  addi         a7, gp, -1735
                  xori         tp, a7, -147
                  sub          t3, s10, t1
                  sll          s8, s8, s11
                  beq          a1, s3, 1366f
                  sra          a3, a6, s11
                  lui          t2, 807431
                  slli         s1, s3, 16
1366:             ori          s10, s0, 1723
                  nop
                  lui          gp, 178702
                  slt          t6, s2, a4
                  xori         gp, a5, 215
                  lui          a1, 880319
                  or           a4, s0, s2
                  blt          t1, a3, 1374f
1374:             xori         a2, t5, -1725
                  bltu         a5, t5, 1376f
1376:             addi         s4, s1, 1183
                  add          a0, a0, t4
                  bne          s9, zero, 1387f
                  slt          a7, s9, s10
                  slli         s10, zero, 24
                  bge          s0, s4, 1395f
                  sra          s1, s2, s5
                  slti         t2, ra, 140
                  and          t3, zero, a7
                  nop
                  beq          t5, s11, 1391f
1387:             bgeu         s2, a6, 1392f
                  ori          s6, s5, 577
                  bne          s7, s5, 1391f
                  xor          ra, s11, s7
1391:             andi         a0, tp, -1413
1392:             sra          gp, a3, s5
                  or           t5, a5, sp
                  slt          gp, t1, a2
1395:             slt          s8, t4, s4
                  beq          s11, a7, 1400f
                  srai         a0, a2, 24
                  bltu         ra, s0, 1417f
                  bgeu         t5, a1, 1419f
1400:             blt          a5, t6, 1413f
                  bne          s10, s6, 1404f
                  sltiu        s7, a5, 1174
                  and          a0, a4, a6
1404:             sltiu        ra, a0, 446
                  blt          s6, a3, 1407f
                  addi         a0, a4, -1573
1407:             blt          t0, t1, 1408f
1408:             blt          a3, a7, 1419f
                  xor          t2, t3, t2
                  lui          t5, 532393
                  addi         s4, gp, 173
                  andi         ra, s9, 81
1413:             slt          t6, gp, a2
                  sub          sp, s5, a0
                  srli         t2, a0, 28
                  beq          s1, tp, 1435f
1417:             ori          t1, gp, -377
                  sub          s6, s6, a5
1419:             bne          s1, a3, 1438f
                  slti         a0, tp, -1025
                  auipc        a1, 881395
                  sltiu        s1, a4, -1560
                  xor          a1, gp, a1
                  bltu         a3, s5, 1429f
                  bne          a3, s10, 1443f
                  xor          a7, t1, s11
                  lui          s0, 634569
                  sltiu        s2, s4, -1566
1429:             ori          zero, t5, -1777
                  xor          t2, s11, t3
                  auipc        t5, 22516
                  sra          s2, t2, t2
                  beq          a5, t5, 1451f
                  blt          zero, tp, 1439f
1435:             and          a4, t1, t5
                  or           a3, sp, s10
                  ori          t6, gp, -673
1438:             beq          a4, t0, 1458f
1439:             srli         ra, s4, 14
                  slti         t2, s3, 434
                  sltiu        a7, s7, 454
                  srai         s11, s1, 22
1443:             srai         s7, s10, 24
                  nop
                  beq          t5, t4, 1463f
                  xor          zero, s4, t1
                  slti         s1, tp, -1252
                  bge          zero, a7, 1467f
                  srl          a3, s11, a5
                  lui          t0, 827749
1451:             or           t1, s1, t6
                  bltu         a7, tp, 1464f
                  xori         s7, tp, -1569
                  bne          t5, a0, 1466f
                  slti         t3, t1, 758
                  slt          s1, t3, s0
                  nop
1458:             blt          a1, t6, 1467f
                  ori          s6, t3, 527
                  addi         a1, s7, 261
                  lui          s0, 886458
                  bltu         s7, t0, 1470f
1463:             beq          a7, a0, 1482f
1464:             add          s2, s8, sp
                  add          a7, s3, tp
1466:             or           s4, a7, a7
1467:             or           a2, sp, t4
                  slt          s4, s8, t5
                  xor          s11, a5, t2
1470:             xor          s7, ra, a5
                  srl          s10, s1, a2
                  xor          s5, zero, t0
                  beq          ra, t1, 1477f
                  slti         s0, a2, -651
                  bge          gp, s9, 1493f
                  auipc        a6, 206556
1477:             sub          s2, s4, s0
                  ori          a1, s8, -524
                  xor          t0, ra, t0
                  bgeu         s8, s0, 1499f
                  xor          a2, s6, s0
1482:             slti         s1, a7, -548
                  srli         a6, s7, 4
                  lui          s5, 713354
                  auipc        s7, 205884
                  sltiu        t2, t0, 946
                  slt          t5, s7, zero
                  nop
                  bne          s3, s10, 1497f
                  bltu         t1, a4, 1508f
                  add          t6, s10, t1
                  bge          sp, t0, 1495f
1493:             slt          a4, a4, s10
                  sub          s7, t0, s3
1495:             srai         tp, t5, 23
                  bltu         a2, a5, 1497f
1497:             nop
                  xor          a3, s2, s10
1499:             xori         gp, t1, 317
                  slt          s4, ra, s6
                  sltiu        gp, t3, -332
                  bgeu         s9, s0, 1522f
                  srai         s5, a4, 21
                  addi         s0, a1, -1311
                  add          ra, s3, s9
                  srli         s4, gp, 19
                  bgeu         t2, a1, 1511f
1508:             bne          ra, s5, 1519f
                  slli         ra, a5, 21
                  blt          s0, gp, 1522f
1511:             bge          a5, a4, 1516f
                  srli         s7, t6, 7
                  addi         s4, a0, 90
                  sra          t5, a2, ra
                  bne          s8, s9, 1520f
1516:             slt          s11, a0, a4
                  sub          t0, s10, s7
                  bne          s7, s4, 1537f
1519:             add          t5, t0, a7
1520:             blt          s6, tp, 1538f
                  xor          zero, a2, s2
1522:             sltiu        sp, a7, -1447
                  sll          s11, s0, a2
                  slli         s5, s9, 23
                  sub          a1, a4, t0
                  sltiu        gp, s10, -926
                  sltiu        a0, zero, 1838
                  add          ra, s4, sp
                  ori          s1, s3, -1022
                  xor          s0, a5, a3
                  xor          t6, s4, a4
                  lui          s9, 76387
                  andi         a6, a1, 2030
                  bgeu         s8, a3, 1553f
                  slti         sp, s2, -1429
                  xori         a2, t2, 484
1537:             bgeu         a5, a4, 1539f
1538:             beq          gp, t4, 1547f
1539:             ori          s10, t5, -1861
                  ori          t2, s2, 815
                  nop
                  bgeu         a4, t0, 1561f
                  and          a1, tp, t6
                  auipc        s11, 982211
                  addi         tp, a6, 700
                  ori          s10, t1, 1789
1547:             or           a2, s6, s4
                  sltiu        s8, s11, -94
                  bge          zero, s3, 1562f
                  slt          gp, gp, s11
                  and          s9, t5, s2
                  bltu         a6, s5, 1570f
1553:             sra          tp, s1, s1
                  nop
                  xor          zero, s2, s0
                  beq          s3, zero, 1574f
                  sll          ra, a2, s8
                  nop
                  sltiu        a0, s2, 1076
                  sra          s10, s4, s4
1561:             bltu         s4, t6, 1566f
1562:             sub          a3, s10, t5
                  xor          s2, a1, s6
                  sltiu        s11, s9, 1505
                  bltu         s9, s5, 1574f
1566:             xor          gp, s7, gp
                  srli         t1, gp, 25
                  slti         a0, s2, 1066
                  bltu         t2, a6, 1570f
1570:             auipc        s6, 125039
                  sra          a7, t3, a0
                  sll          a6, s11, t1
                  xor          s6, s9, ra
1574:             sll          a0, a4, sp
                  bge          s4, t3, 1594f
                  auipc        s1, 552113
                  bne          s4, ra, 1581f
                  srli         t3, t0, 15
                  xor          ra, s11, s10
                  sub          tp, a2, s8
1581:             bgeu         s8, t3, 1586f
                  blt          t0, s3, 1594f
                  sll          t5, t2, s6
                  beq          a0, s1, 1586f
                  slti         t1, t2, 1356
1586:             addi         s9, s5, 1011
                  bltu         a0, tp, 1601f
                  sll          s11, t0, s8
                  slt          zero, s10, a1
                  ori          s9, a7, 1188
                  sll          s9, a2, t3
                  blt          s7, s8, 1612f
                  and          a3, s8, s6
1594:             srai         t0, sp, 7
                  srli         t5, a5, 27
                  addi         s11, t3, 1323
                  sltiu        t5, t4, 654
                  add          s4, t4, s7
                  bne          a7, t5, 1617f
                  add          s0, a6, a7
1601:             slli         s7, t4, 17
                  or           t2, a3, s9
                  la           s0, region_0+956 #start riscv_load_store_rand_instr_stream_12
                  auipc        a6, 160430
                  sb           s1, -697(s0)
                  srli         gp, t4, 21
                  lui          a3, 941266
                  lh           s11, 234(s0)
                  and          a0, s1, a2
                  sb           s4, 767(s0)
                  slt          t1, s5, a0
                  slli         a6, s7, 24
                  xori         a7, t0, 519
                  lbu          zero, -669(s0)
                  sltu         a1, a0, gp
                  lhu          a0, 194(s0)
                  sltiu        t0, t0, 370
                  sub          ra, t3, a4
                  lh           ra, 350(s0)
                  xor          s2, a0, s6
                  srli         t6, s2, 18
                  lbu          s9, -877(s0)
                  sltu         t3, sp, zero
                  sltiu        s6, s0, -371
                  sub          t1, s6, a3
                  lb           s2, 673(s0)
                  lb           s9, 891(s0)
                  nop
                  ori          s5, t0, -865
                  xor          a2, t2, s9
                  sb           s0, 961(s0)
                  lb           ra, 57(s0)
                  lb           t3, 236(s0)
                  add          t0, t3, a1
                  srli         s9, s7, 18
                  slt          s9, t5, t0
                  lh           t1, 154(s0)
                  sh           a1, -398(s0)
                  lb           s4, -382(s0)
                  srai         tp, s1, 8
                  srl          t1, ra, a5
                  lbu          s11, 247(s0)
                  sll          gp, a4, a7
                  lb           zero, 671(s0)
                  slti         a4, a3, -527
                  slli         t5, zero, 15
                  sb           s2, -835(s0)
                  lhu          s1, 418(s0) #end riscv_load_store_rand_instr_stream_12
                  srl          a1, s9, zero
                  auipc        s11, 1017195
                  andi         a7, a6, 1993
                  slli         t5, t4, 13
                  or           t5, t6, a6
                  slti         a0, a2, 52
                  sra          t5, s2, s4
                  and          s7, s9, s1
                  sltu         gp, t0, t2
1612:             sltiu        s11, a5, -892
                  slti         s10, t2, -1903
                  bge          tp, s4, 1619f
                  slt          sp, a7, a3
                  srli         gp, t1, 12
1617:             bge          s7, t4, 1622f
                  xor          a2, t1, s8
1619:             ori          a7, gp, -1602
                  ori          s2, t4, 1762
                  and          s1, t3, tp
1622:             or           t6, t3, tp
                  and          s9, s4, gp
                  and          s7, s6, s6
                  and          a1, s6, ra
                  sltiu        a4, s4, 1208
                  beq          s10, ra, 1639f
                  and          a4, a0, t4
                  sra          s5, gp, sp
                  sub          s6, a6, t4
                  sltu         t6, s11, t2
                  nop
                  or           t1, sp, s3
                  bltu         a7, a5, 1646f
                  sltu         s8, s1, ra
                  srli         s4, s3, 12
                  andi         sp, a7, -1983
                  sra          s1, a5, ra
1639:             sra          t3, s11, s1
                  sub          s2, s4, a0
                  ori          t6, s3, -1912
                  bgeu         t2, s10, 1660f
                  xor          s0, tp, s8
                  bltu         t4, a7, 1645f
1645:             slti         a6, a4, 1552
1646:             nop
                  sub          s8, a1, a6
                  xor          s5, t4, s5
                  sra          t3, tp, ra
                  slli         t5, tp, 26
                  auipc        t3, 890037
                  srai         ra, sp, 5
                  srl          gp, t1, t5
                  la           t3, region_0+1418 #start riscv_load_store_rand_instr_stream_8
                  lbu          a6, 13(t3)
                  sh           zero, -14(t3)
                  lbu          s5, 1(t3)
                  sb           s4, 11(t3)
                  sb           ra, 13(t3)
                  lbu          s6, 9(t3)
                  lbu          a7, -15(t3)
                  srli         s2, t5, 19
                  sb           s1, -1(t3)
                  ori          s4, a4, 12
                  lbu          a4, 1(t3)
                  and          s6, t4, gp
                  sb           a5, -15(t3)
                  lbu          t5, -15(t3)
                  sltu         s9, tp, sp
                  lw           s9, 6(t3)
                  auipc        sp, 949984
                  lhu          tp, -8(t3)
                  lb           s6, -8(t3)
                  lh           zero, -6(t3)
                  add          s1, t0, t3
                  and          s2, a3, a6
                  lh           gp, 8(t3)
                  auipc        s6, 678508
                  auipc        s2, 849338
                  lbu          zero, -15(t3)
                  addi         a6, t3, 1228
                  sh           s9, 2(t3)
                  lbu          s0, -11(t3)
                  lbu          s11, -5(t3)
                  lh           t6, 16(t3)
                  sll          s7, s2, s11
                  nop
                  xor          s4, s3, t4
                  lbu          gp, -11(t3)
                  sh           a7, 6(t3)
                  lb           s6, 15(t3)
                  sb           s10, -16(t3)
                  sltiu        s7, gp, 1677
                  slli         t2, t1, 14
                  lb           s11, -3(t3)
                  lb           s2, -2(t3)
                  lb           a1, 16(t3) #end riscv_load_store_rand_instr_stream_8
                  slt          s0, s0, s7
                  xori         s0, a6, 1779
                  bltu         t4, a4, 1675f
                  xori         s2, t5, 1774
                  addi         tp, sp, -1896
                  xor          t5, a0, a0
1660:             sra          t5, s5, s7
                  xori         s6, s2, -347
                  ori          t1, s6, -784
                  andi         a7, t4, 1529
                  srl          s6, t5, s11
                  sll          s0, t4, gp
                  sub          s8, ra, s1
                  andi         zero, a4, -1170
                  slti         s0, a5, 1531
                  lui          t2, 110159
                  srai         sp, s7, 4
                  slt          s8, t0, s1
                  sll          s4, a5, s3
                  bne          a3, a6, 1677f
                  blt          tp, ra, 1675f
1675:             sub          a1, t1, s6
                  srli         s10, a2, 24
1677:             srli         a4, s4, 0
                  bltu         a2, s7, 1681f
                  sltiu        a3, s5, -310
                  beq          s2, s2, 1698f
1681:             sltiu        s2, a3, -1738
                  xor          s4, s5, t4
                  slli         a1, t4, 21
                  srli         s2, t0, 30
                  bgeu         t3, s7, 1698f
                  slli         t6, s7, 30
                  xori         a1, a4, 559
                  or           s8, a6, s10
                  sltiu        t3, t0, 1231
                  addi         ra, a5, 1022
                  xori         t3, t5, 66
                  blt          gp, a1, 1701f
                  nop
                  nop
                  addi         a0, gp, 1772
                  blt          a7, s1, 1716f
                  and          a2, sp, s7
1698:             slli         s2, t4, 10
                  slt          s6, a3, s8
                  auipc        a2, 862235
1701:             beq          s9, t2, 1703f
                  srai         gp, a7, 7
1703:             bge          zero, t3, 1722f
                  srli         s11, s10, 1
                  sltiu        s0, s0, -245
                  bgeu         a1, a5, 1725f
                  lui          ra, 518411
                  lui          ra, 298996
                  andi         a7, t0, 1760
                  auipc        s2, 976206
                  slli         s6, s2, 10
                  blt          sp, tp, 1726f
                  nop
                  srli         a2, a4, 16
                  auipc        s5, 695697
1716:             slti         s11, zero, -718
                  lui          s8, 1035797
                  sll          s6, s3, t6
                  bge          a6, a4, 1727f
                  bne          gp, t3, 1725f
                  nop
1722:             beq          s1, s6, 1740f
                  slti         s10, s7, -1398
                  sub          a1, t3, t4
1725:             slli         tp, s9, 6
1726:             sltu         a1, s10, tp
1727:             srl          sp, t4, t0
                  xor          s1, t5, t6
                  xor          a3, t4, t5
                  srli         sp, t4, 3
                  sltu         zero, t0, t4
                  ori          t0, a0, -1242
                  auipc        a6, 685480
                  blt          a7, a5, 1739f
                  or           gp, s9, s7
                  add          s8, t1, s8
                  bge          t2, s8, 1739f
                  sltu         a0, t3, t3
1739:             srl          a3, s11, a1
1740:             beq          zero, a7, 1751f
                  sltu         tp, s4, a1
                  xor          s6, t4, zero
                  sra          s5, s5, a1
                  ori          s8, t0, 1534
                  slli         s10, a2, 4
                  slti         zero, s9, -893
                  addi         s6, s3, 1204
                  nop
                  addi         s2, s7, -1099
                  sll          a2, s3, s11
1751:             auipc        tp, 948142
                  ori          a4, s1, -1048
                  slt          a2, t6, t5
                  slt          a6, sp, s1
                  nop
                  sltu         s9, a5, s0
                  blt          zero, s0, 1776f
                  bge          a4, sp, 1778f
                  slti         s5, s3, -1329
                  srl          s2, s0, s0
                  auipc        s5, 318569
                  or           zero, s4, s1
                  auipc        tp, 881792
                  or           s6, s4, a3
                  blt          s1, t0, 1769f
                  srl          a6, s3, zero
                  srli         t2, tp, 9
                  and          t3, s2, t0
1769:             beq          s5, t6, 1788f
                  sll          s2, a4, s10
                  lui          zero, 792892
                  auipc        s7, 829901
                  bge          zero, t3, 1782f
                  slt          t2, a3, t6
                  srli         t0, a0, 16
1776:             add          a0, t0, a4
                  blt          tp, s3, 1781f
1778:             xor          t1, s0, a7
                  blt          t6, s2, 1798f
                  addi         s0, s7, 1670
1781:             add          sp, ra, s8
1782:             sra          t6, a7, a3
                  lui          a4, 693852
                  slti         s2, gp, -1847
                  addi         s10, a0, -1667
                  srli         zero, a6, 4
                  sltiu        s1, a7, 678
1788:             beq          a5, gp, 1789f
1789:             lui          s5, 418199
                  andi         a1, s1, 1420
                  add          a4, t0, s8
                  sub          s7, s2, tp
                  sub          a2, a1, s11
                  srli         a1, s0, 31
                  nop
                  srli         s7, ra, 17
                  ori          a4, s10, -1901
1798:             or           t3, s10, t5
                  slli         tp, s6, 27
                  srai         ra, t1, 19
                  sub          a2, zero, t0
                  lw           t3, 4(t4)
                  addi         t4, t4, 60
                  add          t0, a2, s7
2407:             addi x16, x28, 1
2407:             jalr x16, x16, 0
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
.word 0x5ea925f4, 0xb58874a7, 0x273077b3, 0x1e0d2b79, 0xab11cf5f, 0x12578822, 0xa084e774, 0x9283ced1
.word 0x2a931e50, 0x9b7eec56, 0x2852990b, 0x8139c6a1, 0x5db17fe2, 0x64fe4af4, 0x8a026a8f, 0xd4aa0ba8
.word 0x26ff949a, 0x63ea66a6, 0x0fab4eb6, 0x72068526, 0xd367bdae, 0x63b141fd, 0xf427f524, 0xba44f964
.word 0xd3b45062, 0x54f5a270, 0xe958650e, 0x86173c21, 0xaf18211e, 0x162669e5, 0x3656de77, 0x5675ccdf
.word 0xad5ac9ab, 0xc71aae7d, 0xa07e97f3, 0x6fdde843, 0x6ae7d03f, 0x2e5288b0, 0xa3062547, 0xaef0860a
.word 0xc969e261, 0x7f021aac, 0xd118a704, 0x0a4bf188, 0x97ef9a20, 0x879538a0, 0x293e28bc, 0x91058180
.word 0xc6df8ddf, 0xecca2bee, 0x803b8387, 0x36bf0707, 0x7807b8cb, 0xc4228279, 0x883e9136, 0x67f32199
.word 0x906034d9, 0x7d2918be, 0xa9e88ce7, 0x0eb76971, 0xcf276d1c, 0x424c2ede, 0x1c8e89f2, 0xcfb44e19
.word 0x0cbd9bb9, 0xc237848d, 0xf18716a8, 0xb221a133, 0xbecbffd0, 0x0747842e, 0x209c4e53, 0xa728172c
.word 0x67804d39, 0x6284ef28, 0xd2f7ee16, 0x80162856, 0x5ef7d67b, 0xbc776a6e, 0x353d4257, 0xda4b84f4
.word 0x07cc1305, 0x9ae2d68b, 0x956c71c1, 0xb87e7d0c, 0xdee6f3ef, 0xa0e38389, 0x21f1c878, 0x6e95c7d4
.word 0xd9307b8a, 0xa5b11444, 0x198c3441, 0x46375b14, 0x43488360, 0x405d764b, 0x62120659, 0x1e5b725a
.word 0x088c8156, 0xaa3666b1, 0x10868f40, 0xb2784ab4, 0x3a8461d4, 0x26484b2a, 0x975d6938, 0xd51bf449
.word 0xfe3275e7, 0x9861d02e, 0xba88a417, 0x349d0231, 0x6ed1af9e, 0x964f3616, 0x327a91b6, 0xb9abd487
.word 0x4f6ad81c, 0xa5e3b220, 0x849da320, 0xa0bd7a11, 0x1eade2b8, 0xe2d43a1c, 0xdda50281, 0x9bea63ef
.word 0x9b063eaa, 0x350c747d, 0x7898d138, 0xb53d4313, 0xbb5fc26b, 0x8f9fd288, 0xc7f9f2be, 0x923a388c
.word 0x495d14c4, 0x8c341df3, 0xbf0bab4c, 0x11960e82, 0x8ded01fe, 0xcf4d12d9, 0x1c4880a0, 0x99f02f21
.word 0xaf1e8ed9, 0x77ed4f6a, 0xc4d77af6, 0xfa0607f1, 0x164bd643, 0x3d25fc62, 0x1cea2a51, 0xb495e707
.word 0xdf72422a, 0x0660deff, 0xa08e5df2, 0x22a14ad8, 0x8f0f17cd, 0xa7200919, 0x5c78d716, 0xe6e3c235
.word 0x9e66b89a, 0x344bd902, 0xe29bbd9f, 0x72217e09, 0xbaa31390, 0xd6bb4e7f, 0xf363fe13, 0x421f7d70
.word 0x7e77da1b, 0x38b26c4e, 0xa2786ee4, 0x72fa4027, 0x0753bda0, 0x1da0adef, 0x68781ca3, 0x86c7c1c4
.word 0x61cd8237, 0x64315daf, 0xceb9df8b, 0x3379fa68, 0xc8da3028, 0x0c464462, 0x9aaec65b, 0xea4ba3c7
.word 0xc770f3d4, 0xd637111c, 0x240f71ae, 0xa7ee61b7, 0x2f3266c5, 0xb836408c, 0xb1411fc2, 0x7fddc726
.word 0x5c03a8f6, 0x86c8f962, 0x833b991c, 0x9fe22ead, 0xcf545162, 0x08b8e582, 0x438b8f3b, 0xdeda3ea3
.word 0x4fbb4fd7, 0x203cfdc5, 0x543201c0, 0x9202d636, 0xfaebe29c, 0x27959916, 0xe18414a4, 0x47c11e93
.word 0x610ba218, 0x23dc39b4, 0x3c288abc, 0x5150f12c, 0xfe8780a4, 0x9dee364d, 0x36f4bd53, 0x7a64dfef
.word 0xaaf5d561, 0x1cdc3ee4, 0xdd555dff, 0xe0b15cc0, 0x8937863c, 0x2826cdc8, 0xda4adca0, 0x0f0ffe19
.word 0x8c314664, 0xdd8bd3f4, 0x7d6f3ccc, 0x6dda3e07, 0xca290536, 0x80c5bd5f, 0x0f831612, 0xea4c68a7
.word 0x3defe2f6, 0xb540cb68, 0x133b5e92, 0x6610f176, 0x6854abf0, 0x67dabd76, 0xcb62b3e4, 0xd842811e
.word 0x00a2da84, 0x2be46101, 0x9d1ec367, 0x23b5da7e, 0x98486e44, 0x03c8ff48, 0x27256842, 0x8104d2cd
.word 0x4f0b199f, 0xbc7f0cea, 0x34d759ec, 0x183bbbbc, 0xe7336aff, 0x81c8422d, 0x4b6ac72f, 0x2f081587
.word 0x68d6a195, 0x3a7cb121, 0xeb82ce96, 0x9290416d, 0xdc409996, 0x07bdb01f, 0x07dea734, 0xac464b9f
.word 0x4bdd11d8, 0x0c493139, 0x8194f372, 0xe6ca7ad1, 0xf115f61b, 0x62257fa6, 0x28bc9861, 0x79f409ee
.word 0x8a9e6af6, 0x9fd3e18f, 0x85953fc8, 0xc91c7a77, 0x9bc113d3, 0x97845f89, 0xf67fdfcc, 0x64c0d9fa
.word 0x37a20464, 0x43a9b9b2, 0x18907550, 0xc23d861c, 0x8f37c703, 0x14f9c1c8, 0x82641ada, 0x2cdd861f
.word 0xe401700d, 0xdfa352d2, 0xd34f820e, 0xbef6f657, 0x0a0d9bec, 0x597cb063, 0xcd1bbf96, 0xfd48a6c6
.word 0x9b5d112f, 0xd6434dc1, 0xf444e911, 0x1dd55511, 0x8748749a, 0x9be41dcf, 0xe4d2a702, 0x8484ea5c
.word 0x286a6aed, 0x179d6218, 0x09377d78, 0x8b022787, 0x6b1ff8e4, 0xc06f4d06, 0x248f1b5a, 0x0e48594c
.word 0x7cfd24b1, 0x0dc99018, 0x40e11c56, 0x0a465225, 0xc380182f, 0x33a41327, 0x810fbcf1, 0x8c9399a7
.word 0xe24dd9c9, 0x24e92d70, 0x8b309328, 0x0f89ce9b, 0x813c9d36, 0x23885681, 0xdb19c32f, 0xf5919ed7
.word 0x6ce02103, 0xb64c681f, 0xba13faa2, 0xa1a2b032, 0x20b5830a, 0x76289f63, 0x38a83b7c, 0x6e938d4d
.word 0x4a45ab19, 0x33c9e053, 0x7de66466, 0x09257808, 0x40996641, 0x82650e5f, 0x7dc39750, 0xd9fcccbe
.word 0x9cb623db, 0xca14a4cf, 0x1372e5a6, 0x78a36024, 0x84e5019a, 0xf7765241, 0xabf612b1, 0xd9894a1d
.word 0x08a15540, 0xb1f64894, 0x4e5ad806, 0xa7d0dd03, 0x44e04c35, 0x99ad612c, 0x7bf1fb30, 0x72254aa1
.word 0xf8821461, 0x996a3f60, 0x0585c31f, 0x8f9a88c7, 0xef1cd5d5, 0x57030901, 0xcae546c2, 0x73779e04
.word 0xec8139a7, 0x7e12047c, 0xe61b6d6e, 0x588e0553, 0x8679de17, 0x80341bc4, 0x0da86523, 0x935c5ba2
.word 0x9933e24a, 0x42a30c1f, 0x3590fbc7, 0x46635116, 0x4780cd33, 0x03ef7708, 0x05fd249b, 0x7e29aaae
.word 0x526270ef, 0xbca19460, 0x353eb75e, 0x568ad42e, 0x3c99ac95, 0xcc69934e, 0xbd26409e, 0x352e1cc4
.word 0x55677e7d, 0x0a926219, 0xf5f8b8f7, 0x18232ff5, 0x7120c02a, 0x6b79af7f, 0x2c61d714, 0xcba92dca
.word 0x355ca0f0, 0xebdd885f, 0x08a24024, 0x9e73cb2d, 0x7897a868, 0x41f21022, 0xd00039ed, 0x3055d362
.word 0xb6b37291, 0xad1bddc0, 0x7d995c40, 0x3fe0214d, 0xa57b768b, 0x5df60fc8, 0x6d1aee7c, 0x91aa2140
.word 0x4a0706af, 0x6dae3b59, 0x416b1aba, 0x22508f2f, 0xfbd0e968, 0xa0ff8a2f, 0x64641555, 0x3bad9cf0
.word 0x29942757, 0x97ea7f3c, 0xdeb4b757, 0xd85e00de, 0x9090fcda, 0xc110b2d5, 0x4ea5467a, 0x7fc019b2
.word 0x7e56bac0, 0x63e11dce, 0x002ed5c3, 0x39324b58, 0x87451764, 0x4d759887, 0x3768e652, 0x487fada8
.word 0x4502379c, 0xbdf8e060, 0xf264eb10, 0xbadb54b8, 0x04fa97c5, 0x57bd599f, 0x9ef789c5, 0x5069729f
.word 0x17d6dbef, 0xd0944d3b, 0xdb54e7a0, 0x2c9bfe42, 0x552b3240, 0xd2baf890, 0x6dd1470e, 0xe5ccc4e8
.word 0x864da1e9, 0xe13f84a5, 0x9bb7b2c8, 0x06f4a7bf, 0x91270637, 0x8eada182, 0x0abcd2eb, 0xd211a3de
.word 0xfb83666a, 0xd760039d, 0xa949b839, 0x62c96055, 0xa64c9767, 0x8b3e7dc8, 0x085f036c, 0xacf8e6ca
.word 0xe3755137, 0x0f57f9d9, 0x78a4b4ec, 0xc3935200, 0xc623e942, 0x6cd28cce, 0x6861d579, 0x308d0b00
.word 0xd27838a8, 0x59e49083, 0xee4e1e33, 0xd7ba50ce, 0xc1a22d45, 0x922de82a, 0xae17aa5d, 0x3be934fd
.word 0xf0b1a6cb, 0x41749f09, 0xf6e5ca05, 0x671d2fe4, 0xf381dfc3, 0xf61d995c, 0xef53fd62, 0x4706d48a
.word 0x2441e939, 0x0d51476a, 0xac47bc9e, 0xff1b2c74, 0xfce3b1ed, 0xf8f79dda, 0xfc34889d, 0x478aca38
.word 0xc0dcf622, 0x95992a65, 0x0843f9f8, 0x25dcb337
.section .region_1,"aw",@progbits;
region_1:
.word 0x036e7960, 0xb06d4581, 0x093ef8f5, 0xf829bea8, 0xe449f43f, 0xc47958e8, 0x7363aaeb, 0xed0bc6be
.word 0x66474a5f, 0x4bd23d3b, 0x4d02c88c, 0xa48123d6, 0xeefbe54b, 0xd1f0e0ba, 0xa9cbaf97, 0x5dbe5b32
.word 0x3f61afbf, 0xbbbd23e0, 0xc33acce9, 0x4029a57d, 0xc90af672, 0x279ee903, 0x9f64295a, 0xf3bd322f
.word 0xac739f9c, 0x2ff29f98, 0x8f6581ad, 0xaf997491, 0xe1aa15f7, 0x31054666, 0x67533d88, 0x1eb9017b
.word 0x00dfb67f, 0xadc1192c, 0x39adce21, 0x687d1f1f, 0xc4ff3a84, 0xd7a23cb3, 0x3a809acf, 0xf5d54914
.word 0x825728e6, 0x8a5c6b29, 0x2a92d2fd, 0xa88e50ae, 0xc13d594b, 0x0df00d29, 0x93a7367f, 0x3560abf7
.word 0x212c078c, 0xbd736408, 0xe2218b06, 0x40166d09, 0x4bcaed6b, 0x56fe5b33, 0x730ffa99, 0x36d13334
.word 0xe482b6aa, 0xbe5ad0ea, 0x3879e356, 0x564573f0, 0x5d5ad364, 0xc708f006, 0xee7d389f, 0x16bc86f3
.word 0x496d737b, 0x3f1b9c13, 0x02ca4ab9, 0xa21387e3, 0x75c8d0f7, 0xe4597169, 0xf122b40b, 0x58da4318
.word 0x09693621, 0x1758f25f, 0xf8818217, 0x27d19924, 0xf33681d5, 0xe5b06d6d, 0x829f2886, 0xc4df2f81
.word 0xb662509f, 0xd2deb78c, 0xfcc8cf31, 0xe99a3b2f, 0x88d5a4c4, 0x84294e75, 0x66ec7d26, 0x8540ca19
.word 0x25643ef9, 0xb50ceeed, 0x0db3a095, 0xf11e2a7a, 0x3fe4fbcf, 0xf86a4ce3, 0x560caa87, 0x0d5ab586
.word 0x9c9c4c4c, 0x04b8f2f7, 0x93be838b, 0xdc2cd4a7, 0x82dcf24e, 0x5e1c245b, 0x55234173, 0xf8c8fc2c
.word 0x39fb769e, 0x92691493, 0x0982a5df, 0x8df13249, 0xe32a9b71, 0x903e4a37, 0x449a45a1, 0xb7e8732d
.word 0x2432fbc7, 0xfdad3069, 0x3fce8687, 0x3c807189, 0xc1a1e0e5, 0x17c69088, 0x3159b43a, 0x755988c3
.word 0xe097b5b5, 0x2b774d12, 0x0602c50e, 0x716d8176, 0x4a2888cd, 0x5e0424ca, 0x37a90b99, 0x484f136f
.word 0xfa993661, 0xc6ef3144, 0x9465f6d5, 0x4b6cbdf4, 0x258831f0, 0x6d8a554f, 0x5207f979, 0x7048fb2a
.word 0x78d291b3, 0x64994b30, 0x576925cd, 0xfef29b92, 0x1310d76a, 0x484f6fee, 0x113e9f48, 0xee900707
.word 0x258b277f, 0xbe7c209e, 0xef218cfd, 0x9c33e138, 0x1ec4d68f, 0x05c64e3c, 0x70f6359d, 0xeb501a1a
.word 0x55ba8718, 0xd0078a93, 0xfbf839da, 0xf5b10cd7, 0xe3adc3af, 0x3761313f, 0x64f6b300, 0xa91b5bb9
.word 0xaeecd254, 0xef761fe6, 0x4b0f8d19, 0x1c16916d, 0xf6b597a2, 0x66f2da3d, 0x7a482156, 0x7887bf02
.word 0x600db22c, 0xb3ee42a3, 0x4dbf1b0e, 0x90e78027, 0xc661c0af, 0x1c548185, 0x036d2f6a, 0x9f127965
.word 0xfa0b4ae0, 0x9d06d3bf, 0x5debd1eb, 0x289a05d8, 0x3bb57191, 0x56ca9ca1, 0x213bcb97, 0x6ed52abf
.word 0xff4cfe06, 0x982eb1d5, 0x09cec87b, 0xbd22d47c, 0x31d626cb, 0x94490bec, 0xf8223043, 0xbdf1e028
.word 0xdc3fb214, 0xfb418303, 0xe6530c15, 0x28eb7047, 0x4e0c05b0, 0x0f8b2ee2, 0x9cc28572, 0xa0eae562
.word 0x9dcb4d6b, 0x8a8a53f2, 0x8035f420, 0x5ba303d5, 0x8f4d1e5d, 0x4bbdc9d8, 0xbc416d9f, 0xaa7c7307
.word 0x16ed1af3, 0x52ff9aa0, 0x28c19e32, 0xd12fea40, 0x01e46e4c, 0xa8330446, 0xaf765538, 0x528110be
.word 0x370b638c, 0xfc768e0b, 0x2833287f, 0xe037b1e7, 0x4c8f14d2, 0x594697c6, 0xd9499218, 0x77adc9d0
.word 0x6eba11f9, 0x337d73c5, 0x1e39e2df, 0xfefeee47, 0x0be368d9, 0xa05d4a97, 0xfa551e47, 0x3700136a
.word 0xcf2a06af, 0x54580a71, 0x6f2d73e7, 0x800e6403, 0x9f222d32, 0xcde98612, 0x01f9cebe, 0xd3815ea0
.word 0x3e41520e, 0x48fe81ad, 0xa9fd4590, 0x44303f3f, 0xfccd0460, 0x215696a1, 0x7e47e642, 0x937015a7
.word 0x5a3b0336, 0xf58712e1, 0xc410c6ac, 0x26d9147e, 0x4e8cd9cf, 0xd1ee1af9, 0x365fe5cb, 0xf95e2639
.word 0xf39cbef6, 0x8486ca3b, 0x97bf6810, 0x7ec77b59, 0x20b4e1c3, 0xe5da4d8b, 0x188470a8, 0x878a50b1
.word 0xfa7d19d1, 0xba464d97, 0xdc967177, 0x46fb4d32, 0x37a2e6f5, 0xc72a2159, 0x7b2b02e1, 0x75f74e3c
.word 0x6115d37f, 0x0c7da8d1, 0x60b50e3e, 0xed990b80, 0x0512f901, 0x42783422, 0x5666f569, 0x3c7e69c7
.word 0xe15ce177, 0x227b0f72, 0x19c8b713, 0xea9a5dfd, 0x587a8c07, 0x0eb7de9e, 0x26beed5a, 0x44c34098
.word 0x83b18fec, 0xf7c84e8e, 0x0622525c, 0x90517b72, 0x07a72169, 0x8a2f2188, 0x95c99448, 0xb5260e5a
.word 0x0c72b0cc, 0x816a416d, 0x7c9693cf, 0x2074f607, 0xbeb03e38, 0x49065255, 0xef6f97ef, 0x409c094c
.word 0x94a17963, 0x49d24b49, 0x451696dd, 0x2837e155, 0xa67937ed, 0x1165d650, 0x314bfc8e, 0xe6bb8bdb
.word 0x4d26810e, 0x457a2455, 0x1b83d795, 0x00425ce8, 0x55254467, 0x9e345e85, 0xd6f16f7b, 0x1896b708
.word 0xf49740c5, 0x6db3b26d, 0xb690ff0c, 0xb0d1e859, 0xd49ee2b4, 0x35738086, 0xad7f40cf, 0x3ea95e14
.word 0x5fa0fb65, 0xa8c34de5, 0x9b28e880, 0x124a1892, 0x99c8393f, 0x19c99a96, 0xd1faa103, 0x76fdaed6
.word 0x3c1ed9d4, 0x343a5fd6, 0x21ea3039, 0x0bdcbbf4, 0x9673ffd0, 0x9c849058, 0x1d213aa8, 0xa015968b
.word 0xb8f07cfe, 0xc672ef04, 0x7372cdb1, 0xb52cced3, 0xa3002c81, 0xf18d95c5, 0xcb5e0f64, 0x76d88695
.word 0x72fc7787, 0x38fdd9a4, 0x0ee8011c, 0x9628f8e8, 0x36055c9e, 0x718ed2b1, 0xce4c5381, 0xd721a373
.word 0x842489b6, 0xe4aeedd6, 0x665530fc, 0xc9ead195, 0xe1359562, 0x903624cd, 0x9cfecae6, 0x5c4ab6b3
.word 0xe3c9a61a, 0x4415c201, 0x1d1d3fde, 0x8181bb98, 0x5b8a9c05, 0x48198186, 0xb1c15610, 0x88bb3b84
.word 0x25c0e2d7, 0x782da33f, 0x19f4e8c9, 0x0214255e, 0xe59abcf8, 0xb44de2da, 0x7d014600, 0xae087503
.word 0xb2746035, 0x0c2cfa9b, 0x6c939676, 0x9ab3e46a, 0x845fa3ad, 0x32eaf875, 0x9508790b, 0x3b7b3f08
.word 0xcc0bf4a5, 0xfcc3e62a, 0x10bdd4d3, 0x5d3f4618, 0x7824239b, 0x20324544, 0x1e36da66, 0x6521d209
.word 0x827a4c0c, 0xcb6b12cb, 0x4976ee99, 0x25c3b7f1, 0x5ba75db4, 0x90a967b6, 0x16220b15, 0xf2c7b3b5
.word 0x667e6eba, 0xe1786996, 0xc9a9c04d, 0x0fea55a8, 0x85045667, 0x08191b3b, 0x1fb247a5, 0x8849e611
.word 0xeb286633, 0xfd74fcca, 0x54c842e0, 0xf1b8e45a, 0x375ad705, 0x6b090d87, 0x9c0218e8, 0xd709b1fb
.word 0x43f1d398, 0x9211e08c, 0x04ef24cc, 0xb4f5829d, 0x339ee091, 0x5fc33e50, 0x60fd7e68, 0xf00cac3b
.word 0xdbd0c1a6, 0x4a7c290a, 0x646a5ae3, 0xc6c5afdc, 0x10c6dac8, 0x7bacccf1, 0xdc340797, 0xd6fb7655
.word 0x4f30b5f7, 0x4defb94b, 0x7eae6d32, 0x63c33b63, 0x07e9b5a0, 0x2712afdd, 0x8167a0fc, 0xfa0fa9b2
.word 0xd0e262c6, 0x4330bc10, 0xd8368abe, 0xdb0bbbee, 0xec35a53f, 0x508a55e3, 0xfdccb988, 0x1ab46285
.word 0xa2acb690, 0xf7bc9455, 0xda46f811, 0x59aa1981, 0x56c9f6c9, 0xa125b29e, 0x50c942b3, 0x3ee564bd
.word 0x51fb7a25, 0x5b7da20f, 0x52876435, 0xbe8f957d, 0x94e029dd, 0x85afaf28, 0xd0e1e6a1, 0x19244720
.word 0xe8a62eed, 0xb2edfcdc, 0x9b2c804a, 0xa3c99a69, 0x7ad47ec6, 0xdbc27371, 0x96f2ad37, 0x51c325d1
.word 0x25bc9338, 0x3e726991, 0xc1a77ec6, 0x57cbbf1f, 0xf103bf47, 0xa0c54df1, 0x47ddcde1, 0x39ca2f00
.word 0xb17cc431, 0xad38f040, 0xb23dffba, 0xd34378d8, 0xefaac523, 0x5d51a0b3, 0x8f0c1353, 0xedfaddc1
.word 0xbf2b12c2, 0x6c864a65, 0x79001249, 0xd3236560
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x2, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x2, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x2, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x2, x9, ecall_handler
                  li x9, 0x1
                  beq x2, x9, instr_fault_handler
                  li x9, 0x5
                  beq x2, x9, load_fault_handler
                  li x9, 0x7
                  beq x2, x9, store_fault_handler
                  li x9, 0xc
                  beq x2, x9, pt_fault_handler
                  li x9, 0xd
                  beq x2, x9, pt_fault_handler
                  li x9, 0xf
                  beq x2, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

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
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
