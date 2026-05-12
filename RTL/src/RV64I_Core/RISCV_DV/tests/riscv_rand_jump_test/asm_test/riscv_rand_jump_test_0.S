.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 0
                  csrw 0x305, x11 # MTVEC

mepc_setup:       
                  la x11, init
                  csrw 0x341, x11

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x11, 0x1800
                  csrw 0x300, x11 # MSTATUS
                  mret
init:             
                  li x0, 0xb
                  li x1, 0xa
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xf
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x5
                  li x8, 0xf52df72a
                  li x9, 0x0
                  li x10, 0xa
                  li x11, 0xf551e55f
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0xf20365fa
                  li x16, 0x80000000
                  li x19, 0xe189e83a
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x733b7a36
                  li x23, 0x80000000
                  li x24, 0x60e82a10
                  li x25, 0xf0336f5d
                  li x26, 0xc462c203
                  li x27, 0x0
                  li x28, 0xe0692de0
                  li x29, 0x80000000
                  li x30, 0xc0b1f7a7
                  li x31, 0x7
                  la x18, user_stack_end
main:             la           s11, region_0+221 #start riscv_load_store_rand_instr_stream_3
                  slli         s7, gp, 11
                  lbu          t0, -118(s11)
                  lbu          t3, 116(s11)
                  slli         a3, a1, 28
                  lb           s10, 48(s11)
                  srli         s5, s0, 17
                  and          a2, a7, a7
                  sb           sp, 122(s11)
                  lhu          t0, 35(s11)
                  lb           zero, -144(s11)
                  sb           s1, 80(s11)
                  lbu          s10, -214(s11)
                  addi         s10, ra, -1257
                  lb           s5, 186(s11)
                  lhu          t4, -145(s11)
                  lb           a1, 166(s11)
                  sb           s11, -64(s11)
                  xori         ra, s1, 1702
                  lbu          a4, -132(s11)
                  lb           gp, -90(s11)
                  lbu          s8, -198(s11)
                  sb           a1, -8(s11)
                  sh           t0, 47(s11)
                  lb           t6, 211(s11)
                  sltiu        a5, a5, 134
                  slt          t1, tp, s2
                  srl          zero, a5, s4
                  lbu          a5, 84(s11)
                  lbu          s5, -158(s11)
                  lbu          a6, 27(s11)
                  nop
                  lbu          t3, -155(s11)
                  lb           s4, -186(s11) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1367 #start riscv_load_store_rand_instr_stream_0
                  lb           s4, -50(sp)
                  sra          a0, a4, s1
                  addi         tp, a6, 1144
                  xori         a1, s7, -482
                  nop
                  sra          s10, tp, s10
                  srl          a5, ra, s5
                  sb           t4, 5(sp)
                  auipc        a0, 841855
                  sub          s10, ra, s7
                  ori          s3, a6, 1565
                  sb           s4, 1(sp)
                  addi         a3, t5, -591
                  nop
                  sra          s3, a1, s1
                  lb           s11, -20(sp)
                  lbu          s10, 19(sp)
                  slti         zero, s11, 424
                  slti         t3, sp, 1263
                  sb           s11, -42(sp)
                  sb           tp, -18(sp)
                  sra          a3, s5, a6
                  lh           a5, -27(sp)
                  or           s3, s0, gp
                  sltiu        s0, s4, -1181
                  srli         t1, s0, 31
                  sra          a1, a7, a6
                  sb           a0, -60(sp)
                  sb           s5, -17(sp)
                  lbu          t0, 47(sp)
                  lb           s6, -61(sp)
                  srai         ra, a2, 1
                  lh           a2, -49(sp)
                  addi         a6, zero, -1249
                  sll          s0, ra, s9
                  lbu          zero, -60(sp)
                  sw           s10, -3(sp)
                  lb           t2, 46(sp)
                  lui          t1, 350870
                  lui          t5, 221361
                  sltiu        t0, a4, 1789
                  lbu          s0, 49(sp)
                  lbu          a1, -52(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a2, region_1+718 #start riscv_load_store_rand_instr_stream_5
                  srai         s11, s10, 8
                  auipc        t3, 157726
                  xori         t4, a3, -876
                  sb           t4, 214(a2)
                  lb           zero, 67(a2)
                  sll          sp, a3, a2
                  andi         s5, s10, 1785
                  auipc        s5, 302777
                  lh           s3, -74(a2)
                  sltiu        t4, s6, -130
                  lb           t3, -7(a2)
                  sltu         a3, a6, ra
                  lbu          gp, -145(a2)
                  lb           s9, 194(a2)
                  lb           a6, 73(a2)
                  lb           s8, 92(a2)
                  nop
                  lb           a4, 57(a2)
                  lhu          ra, 190(a2)
                  lb           a6, -107(a2)
                  sll          gp, t3, t4
                  slt          t6, s6, s5
                  or           s7, a4, s9
                  lw           a0, 194(a2)
                  and          s3, t6, t2
                  slti         s7, s9, -1642
                  lbu          s4, 33(a2)
                  slli         a6, s10, 19
                  sra          s8, s3, s10
                  sltu         t5, zero, s11
                  sb           t5, -236(a2)
                  sb           t1, -111(a2)
                  andi         s3, s6, -1167
                  srl          s0, a6, a3
                  sltu         tp, zero, a3
                  add          sp, s6, t3
                  or           a5, s3, s7
                  sltiu        a6, a2, -1154
                  srai         t2, a6, 10
                  slt          t1, gp, gp
                  lw           a4, -98(a2)
                  addi         s4, tp, -1410
                  lbu          t2, -25(a2)
                  lb           t1, 135(a2)
                  sh           s6, -36(a2)
                  auipc        a6, 964851
                  sll          t6, s6, t6
                  sra          s11, a1, s8
                  slt          s11, t6, s11
                  sb           a2, 100(a2)
                  sb           a3, 153(a2) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1146 #start riscv_load_store_rand_instr_stream_6
                  sra          t2, s1, a6
                  lhu          t6, 30(sp)
                  srai         a0, tp, 28
                  srl          s0, a1, s6
                  lb           s6, -243(sp)
                  and          t1, a3, s0
                  lb           t1, 73(sp)
                  lbu          t3, 198(sp)
                  sw           zero, 226(sp)
                  lh           gp, 148(sp)
                  lhu          a5, 188(sp)
                  lh           s6, -40(sp)
                  lb           a0, -3(sp)
                  sb           a7, 245(sp)
                  lui          s6, 416031
                  slt          ra, a4, a2
                  lhu          s7, 246(sp)
                  auipc        a6, 455549
                  lbu          a4, -21(sp)
                  lb           zero, 6(sp)
                  lb           t2, 156(sp)
                  lhu          zero, 180(sp)
                  andi         s8, a7, 1639
                  sll          a0, s10, t2
                  lh           a6, 56(sp)
                  lhu          s3, -220(sp)
                  sub          s3, s0, t1
                  sltu         t6, t4, s4
                  lhu          s0, 6(sp)
                  lbu          a4, 199(sp)
                  sb           s11, -209(sp)
                  sb           s5, -197(sp)
                  lb           s11, 222(sp)
                  sra          t5, a7, sp
                  lb           t6, -139(sp)
                  sltu         t0, a0, s7
                  sltiu        t0, s2, 1056
                  sh           s6, 130(sp)
                  lhu          s4, -124(sp)
                  lbu          a1, 138(sp)
                  lb           zero, -136(sp)
                  lb           a6, 9(sp)
                  lh           t2, -252(sp)
                  auipc        s6, 256183
                  nop
                  sb           s9, 208(sp) #end riscv_load_store_rand_instr_stream_6
                  la           a4, region_1+967 #start riscv_load_store_rand_instr_stream_1
                  sh           s7, -959(a4)
                  sb           a4, -413(a4)
                  lbu          s8, -844(a4)
                  lhu          t5, -639(a4)
                  lb           s7, 928(a4)
                  nop
                  nop
                  andi         gp, s0, -1922
                  slli         a2, t4, 10
                  addi         tp, tp, 1723
                  andi         sp, s6, -626
                  srai         t0, t4, 30
                  lbu          ra, 614(a4)
                  lw           ra, -71(a4)
                  sb           s10, 756(a4)
                  addi         s8, gp, 1549
                  sltu         t1, a7, t0
                  lh           gp, -89(a4)
                  srli         s3, t6, 28
                  and          t5, t5, ra
                  andi         gp, t5, 511
                  auipc        a0, 640707
                  lbu          a3, 812(a4)
                  addi         t0, ra, -232
                  sltu         s3, s4, a3
                  lui          a0, 589360
                  lw           t4, 569(a4)
                  andi         a2, s7, 640
                  srai         s6, ra, 16
                  xori         t3, zero, 1565
                  lbu          t2, 765(a4)
                  lw           a6, 169(a4)
                  andi         t0, t4, -312
                  lb           zero, -940(a4) #end riscv_load_store_rand_instr_stream_1
                  xor          s10, tp, a3
                  addi         s3, sp, 1883
                  bgeu         s11, s1, 13f
                  auipc        a1, 749458
                  or           a3, t1, s7
                  srl          s3, ra, s0
                  bne          zero, a4, 19f
                  and          tp, a7, sp
                  addi         s10, t6, -981
                  auipc        s6, 971109
                  sltu         t6, a7, tp
                  xor          s10, sp, a0
                  beq          s6, sp, 30f
13:               sltiu        a2, a2, 640
                  auipc        sp, 258606
                  blt          ra, t0, 23f
                  addi         t4, s5, -1034
                  bne          zero, tp, 37f
                  xori         s3, gp, -1927
19:               blt          gp, s3, 34f
                  addi         s0, t2, -1032
                  and          t5, a2, t6
                  sub          gp, t4, sp
23:               addi         s5, t2, -1679
                  srai         s3, a3, 22
                  xori         t3, t0, 321
                  sra          s0, t0, ra
                  sub          t3, ra, a0
                  and          a3, a4, a1
                  xori         a3, s0, -1877
30:               lui          s6, 972154
                  sltu         s7, a5, s7
                  auipc        s9, 345089
                  bgeu         ra, t5, 41f
34:               sll          t5, s8, s11
                  slti         s11, s3, -1602
                  nop
37:               beq          s1, a2, 55f
                  sub          sp, t6, t1
                  andi         s0, ra, -1293
                  sra          s7, s5, t0
41:               xor          a2, a3, t4
                  blt          gp, t2, 56f
                  add          s3, a6, s0
                  slti         s7, tp, 661
                  add          s5, s11, tp
                  sub          t0, s0, s4
                  bge          s11, s9, 59f
                  auipc        t5, 640502
                  slt          t6, a2, a5
                  slti         t5, ra, 718
                  and          s9, a1, t2
                  srai         t6, s4, 25
                  addi         t1, a4, -1488
                  srli         s3, a3, 25
55:               sll          s7, sp, s4
56:               sltu         s9, t5, a2
                  srl          s0, a6, s10
                  or           s0, t6, t5
59:               slti         t3, a1, 526
                  sub          ra, ra, s8
                  lui          a4, 950963
                  sra          a2, s9, a4
                  blt          t4, a6, 72f
                  sub          a2, t4, t4
                  and          t6, s4, sp
                  beq          a1, a1, 76f
                  add          s6, t0, s4
                  xor          s10, s8, t6
                  or           t6, a3, s7
                  xori         t1, t2, -973
                  bltu         t6, a4, 78f
72:               nop
                  bne          a7, a1, 79f
                  slti         t4, a7, -1380
                  sra          s10, s9, t3
76:               and          s11, s9, a6
                  bge          t4, s0, 96f
78:               add          t1, a6, t5
79:               sltiu        sp, s0, 918
                  slt          s11, s2, t3
                  bne          s5, t4, 100f
                  ori          ra, t6, -1819
                  sll          t2, ra, t1
                  srai         tp, a6, 27
                  bne          s9, t4, 105f
                  sub          zero, t1, gp
                  and          a5, s7, s10
                  beq          s3, t6, 103f
                  srl          t5, ra, s3
                  xori         s9, gp, -1859
                  and          t1, zero, a6
                  xori         s10, s5, 629
                  or           s3, zero, s11
                  sub          t2, t6, s10
                  nop
96:               srai         a1, s2, 8
                  nop
                  add          s5, s0, t2
                  sra          a5, t2, ra
100:              nop
                  srl          s4, a5, s5
                  bgeu         s3, gp, 107f
103:              and          s7, s2, a0
                  bge          a4, s0, 122f
105:              lui          s11, 995942
                  sltu         s8, t2, ra
107:              sltiu        gp, s0, 1627
                  lui          a4, 898923
                  blt          gp, s4, 121f
                  srli         tp, s6, 30
                  add          s10, gp, a2
                  srli         s7, s0, 6
                  addi         zero, s5, 347
                  bltu         t3, a7, 128f
                  bgeu         sp, s3, 119f
                  bne          sp, t4, 134f
                  add          tp, s1, a1
                  add          s0, t5, s0
119:              sub          a2, a6, a1
                  bne          t0, a5, 133f
121:              or           s5, s11, a5
122:              addi         t6, a1, -1890
                  beq          t5, t1, 137f
                  srli         sp, s3, 30
                  nop
                  srl          a1, tp, s0
                  sltu         s6, ra, a7
                  la           a3, region_1+894 #start riscv_load_store_rand_instr_stream_7
                  lhu          gp, 410(a3)
                  lb           a6, -203(a3)
                  or           s10, t1, s3
                  lh           a0, 1028(a3)
                  srl          ra, s8, a3
                  sll          t4, s2, a3
                  sltu         s7, s6, t5
                  nop
                  sb           s10, 1031(a3)
                  lb           s9, 735(a3)
                  xor          ra, s10, s9
                  nop
                  andi         t4, s7, -1585
                  sltu         zero, s1, sp
                  sh           a2, 472(a3)
                  sltu         a5, t4, t4
                  addi         t3, s5, 988
                  slt          ra, sp, a7
                  xori         a1, t1, -1226
                  lbu          sp, 548(a3)
                  addi         t1, sp, 286
                  lbu          s7, 841(a3)
                  sll          s5, s9, a5
                  sb           a3, -40(a3)
                  lb           t6, 699(a3)
                  lbu          a5, 773(a3)
                  lh           sp, -702(a3)
                  sh           sp, 364(a3)
                  lbu          ra, -235(a3)
                  sh           sp, 754(a3)
                  sltiu        gp, a2, 1559
                  sh           t0, -868(a3)
                  sh           t5, -486(a3)
                  sltu         s0, s8, s11
                  nop
                  lbu          s11, 64(a3)
                  xor          s10, t5, ra
                  lhu          a2, -224(a3)
                  sb           s0, -549(a3)
                  lh           sp, 716(a3)
                  sltu         ra, a0, t2
                  sb           s2, 161(a3)
                  lw           s7, -810(a3)
                  sb           s10, 381(a3)
                  srl          s0, t2, s6
                  ori          s9, t1, -1290
                  nop
                  lb           t6, -431(a3)
                  sb           a3, -833(a3)
                  srai         t3, s8, 10
                  lb           s8, -604(a3) #end riscv_load_store_rand_instr_stream_7
128:              sltiu        s3, sp, -638
                  sll          sp, t3, t2
                  bge          s0, t4, 134f
                  auipc        s4, 811801
                  blt          s1, a7, 146f
133:              andi         s6, s1, -799
134:              sltu         sp, t0, s0
                  blt          t4, a5, 148f
                  bltu         s3, s0, 151f
137:              slli         s5, s1, 12
                  slt          s5, s8, s0
                  bne          ra, a6, 148f
                  bgeu         s3, t0, 158f
                  srl          a4, t6, s8
                  lui          tp, 979880
                  sub          s8, a7, s1
                  slti         zero, s1, -579
                  bge          a0, t2, 153f
146:              lui          t1, 666248
                  sltu         a5, s5, a7
148:              sll          a0, tp, ra
                  blt          s10, a2, 163f
                  sra          t4, a7, a0
151:              srl          a3, ra, s9
                  slti         tp, s10, -2047
153:              add          t5, sp, a4
                  bge          s8, a2, 174f
                  sll          t0, a3, a1
                  auipc        s10, 136696
                  sll          a3, t0, a1
158:              xor          a1, tp, ra
                  andi         sp, ra, -1841
                  slt          sp, s6, s9
                  sll          t5, s7, s9
                  blt          t6, t6, 177f
163:              or           s8, s2, t3
                  add          gp, s7, s6
                  beq          s5, t5, 180f
                  sltiu        s4, s9, 1718
                  srai         t4, s7, 2
                  sra          a1, s4, s7
                  andi         tp, t2, -532
                  xor          ra, a4, a5
                  srl          s3, zero, a1
                  sltu         sp, a3, t0
                  bltu         tp, t2, 183f
174:              xori         a5, t2, -1426
                  lui          s11, 173900
                  bgeu         s4, s3, 189f
177:              sltu         t6, t3, a7
                  auipc        a6, 492781
                  srl          sp, a4, a3
180:              bltu         s2, a3, 193f
                  sltu         a2, t6, s2
                  sltiu        t1, s3, -586
183:              beq          s10, a7, 197f
                  srli         s9, s8, 20
                  xori         zero, a5, 560
                  sll          ra, s5, t4
                  srl          a4, s5, s6
                  beq          zero, s11, 192f
189:              srai         a6, gp, 13
                  sltu         s4, a4, s2
                  beq          a3, t2, 209f
192:              andi         tp, t2, -461
193:              xor          s9, t2, a7
                  auipc        ra, 574537
                  sltu         t5, a3, ra
                  ori          ra, tp, -1231
197:              nop
                  sltu         t3, s10, s1
                  srai         s4, s10, 3
                  sll          t5, a4, a2
                  blt          s4, s8, 220f
                  auipc        a5, 94754
                  xori         s0, s7, -1327
                  srai         t5, a6, 17
                  slti         t2, s0, -1052
                  and          s4, t3, t0
                  bne          s7, a2, 225f
                  andi         sp, s10, -1651
209:              sltiu        s9, s2, -107
                  sub          s8, t6, s8
                  slt          s11, t4, a4
                  blt          ra, s1, 231f
                  addi         s0, t1, 1899
                  slt          a4, t3, sp
                  slti         t4, a4, -1971
                  auipc        t6, 113232
                  slti         a1, s0, -942
                  srli         t3, t1, 24
                  srli         t0, t3, 0
220:              bgeu         a1, t3, 235f
                  sra          s3, ra, a2
                  xori         t3, tp, 1929
                  blt          s10, t5, 243f
                  or           a6, a6, a3
225:              xor          t4, sp, t1
                  andi         a2, t6, -226
                  lui          a0, 609317
                  nop
                  sltiu        a4, t1, -893
                  xor          s6, s8, t4
231:              or           s11, a4, gp
                  slli         tp, s9, 20
                  auipc        s11, 215047
                  sll          s3, sp, ra
                  la           s8, region_1+1486 #start riscv_load_store_rand_instr_stream_2
                  slli         a6, t0, 3
                  lui          s3, 21532
                  lbu          s10, 45(s8)
                  nop
                  or           s10, a0, s5
                  lb           a5, -31(s8)
                  add          gp, s3, gp
                  sb           t4, 51(s8)
                  slt          gp, a1, t2
                  lb           tp, -19(s8)
                  sll          a0, t0, t6
                  lbu          a4, -51(s8)
                  sub          s6, t1, zero
                  sra          s7, s3, s7
                  lbu          t3, 13(s8)
                  lh           gp, -46(s8)
                  ori          s7, t3, 1152
                  lhu          t4, -22(s8)
                  lbu          a3, 19(s8)
                  srli         s11, gp, 16
                  lb           t4, -37(s8)
                  srai         a4, s4, 17
                  lbu          ra, 25(s8)
                  sb           a7, -41(s8)
                  lbu          s6, -61(s8)
                  sra          zero, s11, s6
                  sh           a4, 12(s8)
                  slti         ra, s3, 1364
                  sb           s8, -59(s8)
                  slti         s0, t6, 400
                  lb           a6, 63(s8)
                  slt          a6, t3, t4
                  lbu          s11, -23(s8)
                  lhu          s5, -16(s8)
                  sw           a6, 46(s8)
                  sb           a6, 5(s8)
                  andi         sp, s2, 817
                  srl          a4, s7, s8
                  sb           a4, -47(s8)
                  lh           s11, -24(s8)
                  lb           a6, -39(s8)
                  lb           a3, 5(s8) #end riscv_load_store_rand_instr_stream_2
235:              nop
                  and          t2, a0, a3
                  add          a6, s7, a3
                  bltu         a2, t1, 250f
                  auipc        t6, 296485
                  srli         t5, t0, 19
                  bltu         ra, s5, 252f
                  sub          a5, a1, s2
243:              sll          a2, t3, s6
                  lui          a2, 319112
                  sltu         a1, zero, s11
                  srli         s8, s5, 27
                  sra          a5, tp, a2
                  sltu         a5, t0, s8
                  bne          s8, gp, 255f
250:              sra          t6, s3, t3
                  bge          tp, a6, 265f
252:              bgeu         a0, a5, 266f
                  xor          s5, s7, s7
                  sltu         t6, a6, s5
255:              and          s11, gp, t6
                  sra          a0, t6, t4
                  bltu         a4, s5, 261f
                  srli         s11, s3, 1
                  bgeu         a4, t1, 272f
                  addi         s10, s9, -1459
261:              bge          t4, a6, 269f
                  andi         s7, a6, -831
                  srl          gp, ra, gp
                  bltu         a7, a3, 269f
265:              bgeu         a7, s8, 272f
266:              add          t0, zero, s10
                  slti         a0, t0, -1143
                  nop
269:              slti         zero, tp, 1911
                  xor          a2, gp, s8
                  srai         s9, s5, 12
272:              srli         a6, s4, 29
                  sra          a4, a4, s4
                  slli         s11, s5, 6
                  sub          a2, s8, ra
                  xori         ra, s8, -1190
                  nop
                  addi         a6, s7, 1707
                  sltu         t1, s9, t1
                  bgeu         s6, s6, 298f
                  lui          sp, 907509
                  blt          s9, t2, 294f
                  addi         a3, s6, 464
                  sub          s7, a7, s10
                  addi         t3, a0, -427
                  srli         s5, a3, 20
                  add          tp, s9, s6
                  auipc        sp, 589575
                  slti         a0, s5, -842
                  srli         a2, a5, 2
                  xor          gp, t0, s3
                  sra          s7, a6, a4
                  bne          s9, t6, 313f
294:              bne          zero, s7, 304f
                  sltiu        t3, s9, -669
                  add          a0, s4, s4
                  sltiu        a0, s2, -1969
298:              sltiu        a0, t5, 446
                  sll          a2, a2, a5
                  bgeu         s7, s7, 309f
                  srli         s3, s2, 28
                  lui          t3, 262121
                  slti         s8, t5, -240
304:              and          s0, s11, s8
                  or           s6, t2, a2
                  xori         s3, t4, -1166
                  slli         s3, s11, 8
                  sltu         t4, s1, s0
309:              srl          s0, s0, tp
                  sra          a1, a6, s4
                  sra          s7, a4, a0
                  andi         s9, a1, 637
313:              lui          tp, 333320
                  beq          sp, t5, 318f
                  bltu         s2, s3, 330f
                  bne          a3, t6, 321f
                  sll          s7, s9, s6
318:              slli         t6, sp, 21
                  auipc        a1, 389678
                  slli         s3, t0, 11
321:              bgeu         a0, s5, 334f
                  sltu         t0, t3, s3
                  add          t5, s5, s3
                  blt          zero, t5, 330f
                  slli         s11, s11, 6
                  sra          s0, a4, a0
                  andi         a5, s11, 989
                  bgeu         t2, t0, 343f
                  blt          a4, s10, 342f
330:              or           s11, t0, gp
                  sub          t4, s8, s11
                  bgeu         sp, t2, 352f
                  bne          s7, t0, 352f
334:              nop
                  auipc        t5, 802669
                  bltu         t2, s4, 348f
                  nop
                  sll          a6, t5, gp
                  or           a0, s11, s3
                  srl          s4, a6, t6
                  or           gp, s4, a0
342:              sltiu        a1, t5, 1389
343:              srl          s10, s8, a5
                  sll          s7, s6, s10
                  or           a1, sp, s1
                  and          s11, a2, t0
                  or           a1, t6, s4
348:              sra          sp, a1, t0
                  sll          a0, s4, s1
                  xori         s11, a1, 1531
                  xori         t4, s4, -1984
352:              slt          a3, gp, a6
                  bge          s8, s4, 372f
                  sll          a5, a1, zero
                  slt          s3, a5, s11
                  add          s7, tp, t2
                  blt          sp, t1, 361f
                  sub          t1, t2, t4
                  beq          s4, t2, 371f
                  or           t6, t2, s10
361:              bne          s5, s9, 375f
                  srl          t0, t3, s1
                  sll          t3, t5, a6
                  or           s3, a4, s1
                  srli         a2, t5, 14
                  or           tp, s6, s0
                  nop
                  bltu         s9, t0, 382f
                  srli         s3, s9, 19
                  srl          s9, s7, s1
371:              bge          t2, a5, 379f
372:              slt          t3, t2, s8
                  xori         s6, t1, 1833
                  bge          sp, s9, 385f
375:              srai         t6, s11, 3
                  sll          sp, s7, s11
                  andi         a0, tp, 2003
                  or           sp, gp, s4
379:              andi         a6, s10, 91
                  addi         s10, s9, -1480
                  bltu         s1, t3, 388f
382:              addi         t4, s0, 499
                  beq          a4, t1, 398f
                  slt          s5, t0, s0
385:              srl          s11, a0, s9
                  lui          s10, 171447
                  andi         a1, s8, -1526
388:              bge          t5, s11, 406f
                  auipc        ra, 497606
                  slti         a5, a3, -369
                  xor          s3, s7, sp
                  add          a0, ra, s1
                  xori         s6, zero, 1647
                  srli         gp, sp, 12
                  sll          s4, s8, t5
                  sra          s4, t3, a1
                  blt          a1, t3, 410f
398:              bge          gp, a1, 416f
                  blt          t3, tp, 417f
                  bgeu         s4, s5, 418f
                  addi         sp, a0, -973
                  xor          s0, a3, gp
                  la           a6, sub_1
                  addi         a6, a6, -901
                  xori         s11, a2, -858
                  nop
                  ori          tp, s1, 2031
                  andi         t6, s8, -1124
                  bge          t2, s4, main_j2 #branch to jump instr
                  sltiu        s9, a1, -1536
                  xor          a2, a6, a7
main_j2:          jalr         ra, a6, 901 #jump main -> sub_1
                  slt          s5, a4, ra
                  add          a6, s8, a0
                  sltiu        ra, tp, -813
                  auipc        tp, 306769
                  sltu         s4, sp, a0
406:              slt          a4, zero, ra
                  bltu         t1, zero, 415f
                  nop
                  srli         sp, s10, 8
410:              slli         gp, a2, 2
                  andi         t6, s3, 1246
                  sll          a3, t6, t0
                  sltu         gp, t4, a4
                  bgeu         s5, s1, 428f
415:              sra          s9, t4, s6
416:              sltu         t6, a1, a2
417:              bne          gp, a6, 431f
418:              slt          s4, a3, a0
                  bne          ra, t2, 433f
                  sub          t1, t0, a3
                  or           gp, a1, a2
                  addi         a0, zero, -641
                  slti         s4, s10, -520
                  srli         a4, a1, 27
                  slt          s9, s2, s5
                  and          s3, a3, a5
                  addi         a4, s6, 792
428:              sll          s4, a6, ra
                  and          a0, a2, s4
                  slli         s5, tp, 10
431:              srli         t4, s2, 4
                  xor          tp, s6, s10
433:              beq          sp, a3, 439f
                  bltu         s9, s5, 452f
                  srai         a0, t5, 26
                  slt          t5, t3, a1
                  blt          t0, s2, 452f
                  bltu         a7, a1, 443f
439:              srli         a5, a1, 26
                  srai         s8, s5, 28
                  bne          ra, gp, 461f
                  add          a6, a6, s7
443:              bne          s5, a6, 456f
                  sltu         t4, sp, t3
                  xori         s10, tp, 372
                  sltu         t5, a2, s1
                  slti         s8, a3, 1407
                  add          a0, a6, t0
                  srai         s0, s10, 26
                  sltu         s5, tp, tp
                  or           zero, s2, t4
452:              srl          a0, s5, s8
                  sltiu        zero, t6, 1
                  sub          s7, t6, a1
                  srl          t6, s1, s7
456:              beq          zero, a4, 467f
                  lui          a1, 723346
                  auipc        gp, 726907
                  or           a6, s4, a1
                  andi         a0, s5, 1572
461:              slti         gp, a1, -1006
                  sra          ra, a3, a4
                  sub          gp, t5, s11
                  blt          s8, s9, 477f
                  srl          s4, t4, s8
                  and          t3, s5, s2
467:              sll          s3, s3, t5
                  slt          t2, s10, s8
                  and          t6, t5, a6
                  bge          s0, a0, 478f
                  xori         s0, s10, 1284
                  blt          t0, s9, 490f
                  sra          a6, s7, s11
                  srl          a0, a1, s8
                  beq          t4, gp, 484f
                  srli         t4, a1, 16
477:              and          t3, t0, s0
478:              sltu         a4, s7, t4
                  sll          s0, a4, s6
                  blt          t5, s9, 484f
                  srl          a6, a1, s4
                  sub          s9, s3, s5
                  lui          t1, 394554
                  la           sp, region_1+1997 #start riscv_load_store_rand_instr_stream_4
                  xori         s7, s0, 1320
                  lb           t3, -23(sp)
                  add          t6, sp, s9
                  nop
                  auipc        tp, 780384
                  or           a2, s8, sp
                  lb           s7, -58(sp)
                  lw           t0, -9(sp)
                  sb           a2, -63(sp)
                  xori         s6, t5, 34
                  sltu         s9, s9, s4
                  lbu          s9, -60(sp)
                  sh           a1, -29(sp)
                  lbu          s4, -56(sp)
                  sltu         s9, a0, s9
                  slli         gp, a1, 22
                  sltiu        s5, s4, -149
                  lb           s11, -64(sp)
                  nop
                  lb           s7, -42(sp)
                  auipc        a4, 334734
                  ori          s3, s3, 184
                  sltu         a0, s3, s4
                  addi         s11, t6, -1137
                  or           s9, sp, sp
                  add          a1, a6, t2
                  lbu          s10, -36(sp)
                  sltu         t0, s2, a1
                  ori          s11, s10, 647
                  sb           s6, -54(sp)
                  nop
                  lb           s0, -12(sp)
                  and          s6, t3, s11
                  sltiu        t1, t5, 1343
                  srli         zero, ra, 5
                  lb           s4, -54(sp)
                  sltu         s8, a1, a3
                  andi         ra, gp, 1350
                  lb           s4, -6(sp)
                  sb           s8, -10(sp)
                  lb           s9, 1(sp)
                  lbu          s8, -18(sp)
                  lh           ra, -63(sp)
                  slli         gp, a2, 1
                  xor          a0, zero, s11
                  slt          s3, ra, s0
                  sub          t1, a7, t1
                  lhu          t3, -7(sp)
                  lbu          tp, -3(sp)
                  lbu          t6, -19(sp)
                  sb           t1, -64(sp)
                  sra          s11, a7, a7
                  lb           tp, -8(sp)
                  lbu          a0, 1(sp) #end riscv_load_store_rand_instr_stream_4
484:              beq          t0, a5, 498f
                  auipc        a3, 217171
                  lui          a3, 677990
                  xori         s5, t5, 256
                  slti         sp, s9, 2036
                  lui          s6, 810123
490:              srl          s7, s2, tp
                  lui          s6, 381613
                  bltu         s10, t1, 500f
                  srli         a4, a1, 13
                  srli         s8, t5, 31
                  or           t6, a4, tp
                  add          a2, t0, a7
                  slt          t1, t6, t1
498:              bgeu         s2, t1, 510f
                  slli         sp, a6, 15
500:              nop
                  or           a5, s2, a6
                  bge          s6, a6, 520f
                  beq          tp, t1, 513f
                  add          t4, a2, s1
                  ori          t3, zero, -1162
                  andi         s8, sp, 2040
                  add          a6, s1, t0
                  and          t4, zero, a1
                  sltu         s0, s4, t3
510:              slti         sp, t4, -1440
                  slt          t2, s4, ra
                  auipc        a3, 458068
513:              and          s7, t3, s2
                  andi         s4, t2, -1993
                  sltiu        t1, a1, 211
                  slti         a4, s9, 946
                  sub          t3, s0, t0
                  andi         a5, tp, 959
                  and          a6, s11, s2
520:              sub          s11, s10, a6
                  nop
                  xor          s3, s5, s5
                  lui          gp, 31084
                  auipc        t1, 807294
                  slt          a3, a1, s5
                  ori          zero, t4, -1595
                  sub          ra, t3, s8
                  bge          s0, tp, 543f
                  beq          s3, s4, 548f
                  xori         a4, t3, 768
                  lui          gp, 780183
                  xori         s7, t0, 1078
                  slt          a0, zero, a5
                  sltu         s10, a7, t6
                  bltu         a7, t2, 548f
                  slti         t2, s7, -1072
                  sra          s8, s6, a3
                  srli         t4, a1, 0
                  sll          t2, sp, t3
                  xor          t4, a7, s11
                  slti         s6, ra, -1084
                  and          t2, t0, gp
543:              xor          a1, gp, s6
                  sra          a2, a6, a0
                  srl          tp, a2, tp
                  andi         t3, s7, -1697
                  addi         t6, a4, 181
548:              auipc        s10, 641951
                  slti         a4, a6, 2037
                  sll          zero, t4, tp
                  xor          t6, a5, ra
                  nop
                  sub          ra, s11, s7
                  bgeu         t3, a1, 568f
                  lui          s3, 816433
                  sltiu        t6, t5, 1318
                  andi         gp, t1, 1727
                  bne          ra, a2, 576f
                  srai         a3, a5, 12
                  bne          sp, a5, 567f
                  sltu         a5, a2, a1
                  blt          t3, a2, 577f
                  auipc        t3, 15020
                  add          s0, t0, s1
                  bge          s4, t0, 577f
                  bne          t6, s7, 580f
567:              xor          zero, s4, sp
568:              sub          t1, s9, s4
                  and          s4, s2, t2
                  slli         s5, t3, 16
                  sltu         sp, s1, tp
                  srai         s9, ra, 26
                  xori         s7, s4, 1301
                  xor          a3, t5, s2
                  andi         s11, s10, 515
576:              bge          gp, a2, 595f
577:              slli         a2, s1, 23
                  slli         a1, t1, 5
                  addi         t2, t6, -35
580:              auipc        s0, 121898
                  bne          a6, a7, 585f
                  bgeu         t2, ra, 602f
                  srai         ra, s3, 30
                  beq          zero, sp, 602f
585:              add          gp, a5, a2
                  sra          gp, a1, a2
                  beq          s4, t5, 592f
                  bgeu         t5, s2, 600f
                  auipc        a3, 784547
                  xor          s9, t0, a1
                  srai         t3, t6, 11
592:              slt          s11, s1, s6
                  xor          t0, a0, a0
                  sltu         a0, a4, s1
595:              sub          s5, t4, s4
                  sub          t5, s6, t0
                  andi         gp, sp, 1817
                  bne          s5, a6, 618f
                  slt          s4, t3, s3
600:              slti         a5, s9, -1956
                  blt          s8, a4, 608f
602:              or           s4, sp, sp
                  ori          t4, t0, -1709
                  andi         t2, t1, 1126
                  or           s6, t2, zero
                  ori          t2, s8, -1855
                  sub          a3, sp, a6
608:              lui          s0, 511782
                  andi         s7, tp, 1459
                  andi         sp, s5, 1447
                  or           tp, s11, s2
                  nop
                  srli         a1, a3, 2
                  srli         t5, s6, 30
                  add          zero, a6, t4
                  slli         sp, s3, 8
                  slli         a4, s8, 1
618:              bne          s4, zero, 624f
                  bgeu         a2, ra, 628f
                  xor          s10, s2, a2
                  nop
                  auipc        s3, 517360
                  bne          gp, s3, 637f
624:              sra          a4, t3, s10
                  sub          s7, t3, s8
                  andi         s0, s5, 1645
                  auipc        gp, 945399
628:              ori          t2, a6, 136
                  bltu         a7, a4, 637f
                  blt          a7, s11, 634f
                  sub          a1, tp, s7
                  ori          s11, s1, 2010
                  sra          a3, a4, t5
634:              sub          a3, t0, t3
                  and          a4, a0, s1
                  auipc        a4, 406801
637:              or           a0, t2, zero
                  addi         s5, ra, -1922
                  sltiu        s4, a2, -1265
                  sltu         t5, t1, a6
                  bge          a1, s9, 659f
                  and          a3, t6, a3
                  ori          s9, t0, 1446
                  bne          s4, a1, 663f
                  srai         a6, s3, 28
                  slli         s6, tp, 22
                  sra          t2, s3, a6
                  bltu         a7, s8, 662f
                  sra          a3, a6, s2
                  andi         gp, tp, 1694
                  slt          t4, s10, s9
                  sltu         s0, t1, a0
                  sub          a2, a1, a4
                  add          t4, a2, a6
                  add          t3, t5, s6
                  blt          s1, t5, 669f
                  slli         tp, s11, 26
                  bge          a7, t5, 678f
659:              sltu         s8, s7, s8
                  nop
                  or           t2, s1, gp
662:              srl          a0, t1, ra
663:              beq          a7, s2, 677f
                  bne          s9, a4, 675f
                  slti         a4, a7, -500
                  bne          ra, tp, 681f
                  or           s8, t3, s0
                  sll          s6, s9, zero
669:              andi         t0, a7, 1624
                  bltu         s0, a4, 680f
                  bgeu         s0, t1, 689f
                  bltu         sp, a0, 680f
                  srl          a0, s3, sp
                  slt          a2, a3, t2
675:              srl          s5, tp, sp
                  blt          t3, s2, 690f
677:              blt          a4, s7, 692f
678:              add          ra, a3, t0
                  andi         s10, a2, -1026
680:              srl          s4, sp, s11
681:              slli         tp, s11, 14
                  bgeu         ra, a3, 697f
                  ori          a3, s7, -408
                  ori          t5, t4, -704
                  srli         t4, t4, 13
                  or           a0, a1, t5
                  auipc        t1, 139379
                  xor          s8, s3, a1
689:              bgeu         s10, a3, 707f
690:              ori          a0, ra, 739
                  srl          s3, a6, sp
692:              or           s10, s2, s7
                  or           a3, zero, s3
                  srli         a4, s5, 25
                  auipc        s6, 911414
                  slt          s6, s11, s10
697:              or           s10, s11, s11
                  lui          a4, 4590
                  andi         a5, s4, -1394
                  slti         s0, s10, -1620
                  sll          t1, s4, s10
                  sll          s0, s7, zero
                  sltu         s8, s4, tp
                  and          t3, gp, t5
                  xori         a2, t5, -285
                  slli         a1, s8, 3
707:              lui          a5, 547719
                  sub          t2, s9, a0
                  auipc        t4, 186304
                  or           s5, ra, t1
                  slt          gp, ra, a0
                  bne          s5, a4, 724f
                  nop
                  ori          s3, s11, 1904
                  lui          a6, 1024236
                  or           gp, s5, a3
                  ori          s9, t3, 1303
                  add          t6, a3, gp
                  or           s10, s2, a0
                  and          a3, s3, a4
                  addi         t6, sp, -1598
                  la           sp, sub_1
                  sub          t1, s8, a2
                  addi         sp, sp, 507
                  srl          a5, s1, a5
                  beq          a0, s11, main_j1 #branch to jump instr
                  lui          a6, 622208
                  ori          t1, gp, 1515
main_j1:          jalr         ra, sp, -507 #jump main -> sub_1
                  auipc        t4, 550347
                  sltiu        t2, t3, -241
                  or           s3, s11, s8
                  srl          a6, s4, s6
724:              and          a5, s11, s7
                  xor          ra, s1, t5
                  ori          a6, t6, -242
                  srl          a4, a1, s10
                  sub          s10, s6, s9
                  add          s10, s3, s0
                  srli         a0, a3, 24
                  srai         s7, s5, 0
                  bge          s0, a0, 745f
                  bgeu         s10, s2, 746f
                  xori         t3, s5, 1009
                  xori         t4, t1, 535
                  sll          zero, s4, sp
                  xori         s7, t5, 228
                  slti         s9, s7, 602
                  and          t6, a4, a0
                  bgeu         zero, t0, 744f
                  sltiu        t3, t3, 762
                  andi         s9, gp, -1435
                  srl          t4, t2, zero
744:              xori         s10, t1, 356
745:              xori         s3, s1, 423
746:              lui          sp, 29761
                  auipc        t4, 1041824
                  srli         ra, s8, 7
                  and          zero, a6, s9
                  or           s6, s1, t6
                  xor          tp, a0, s1
                  ori          ra, t2, 1020
                  sltiu        zero, a6, -998
                  srl          gp, t3, s6
                  srl          tp, t2, s9
                  slli         t1, zero, 0
                  bne          t5, s10, 776f
                  sltu         s7, s1, s5
                  ori          a6, a7, -935
                  beq          a3, s7, 768f
                  slt          t3, s3, t0
                  bge          s10, s5, 782f
                  bltu         s9, a4, 781f
                  beq          sp, a1, 769f
                  lui          s0, 75582
                  lui          t0, 330211
                  slti         t0, t1, 1466
768:              ori          s4, a5, -35
769:              auipc        a6, 733491
                  sltiu        sp, a0, 1577
                  bgeu         s6, s10, 783f
                  slt          a3, s1, sp
                  lui          tp, 908774
                  xor          s7, s7, a7
                  bge          s11, a6, 783f
776:              sltiu        s5, a4, 1739
                  bne          gp, ra, 790f
                  bgeu         s3, zero, 792f
                  xori         sp, t1, -624
                  andi         a2, a7, -25
781:              slt          t6, t2, t5
782:              xori         tp, t4, -1102
783:              blt          s9, s6, 802f
                  sra          a1, zero, a3
                  lui          ra, 377958
                  slt          s6, s8, gp
                  xori         s3, t4, 2013
                  and          s4, gp, s2
                  bge          tp, a1, 809f
790:              bge          s4, s3, 794f
                  addi         s8, s11, 56
792:              add          tp, t0, s1
                  beq          s11, t4, 811f
794:              or           a0, t1, a4
                  sltu         t1, s5, ra
                  sra          t5, s2, a5
                  blt          s8, t4, 816f
                  and          zero, gp, a1
                  bge          t3, s2, 810f
                  bge          a6, a4, 815f
                  xor          sp, s5, s5
802:              xor          s5, t4, s10
                  and          tp, t4, t3
                  sra          a6, a7, a0
                  slli         s5, s2, 9
                  slti         s7, t1, 147
                  andi         a0, a3, 561
                  slli         t5, s6, 15
809:              sltu         s9, t3, s10
810:              andi         tp, s4, 1613
811:              andi         a5, a6, -779
                  beq          a7, s6, 824f
                  srai         s8, s1, 27
                  addi         s0, sp, -691
815:              slt          s11, s8, t4
816:              bge          s1, s4, 830f
                  addi         a1, ra, 948
                  sltiu        s7, a0, -1271
                  sltiu        a5, a6, 1906
                  bgeu         zero, a0, 838f
                  bge          s7, s5, 828f
                  xor          s8, ra, s5
                  add          t4, s1, gp
824:              bge          s11, tp, 838f
                  bne          tp, t6, 831f
                  xor          sp, a4, t2
                  sll          tp, t5, s2
828:              slli         s11, t4, 29
                  sll          s0, s9, a0
830:              bge          s5, s8, 844f
831:              bltu         a0, s2, 844f
                  auipc        tp, 35775
                  sra          a2, s6, a7
                  or           a0, a3, t2
                  sub          s0, a5, s4
                  sll          t5, t6, t4
                  xori         s10, s8, 26
838:              slli         a6, s9, 29
                  bltu         s3, zero, 854f
                  ori          a4, s4, -1281
                  xor          gp, s10, a1
                  addi         t3, s5, -1127
                  and          t5, gp, t6
844:              blt          a7, s4, 862f
                  bltu         t3, s4, 855f
                  addi         t1, t0, 657
                  sll          s4, s1, s4
                  slt          a3, t5, a0
                  sltiu        s6, a3, -1166
                  sub          a2, s9, a0
                  xori         sp, s7, 147
                  xor          s5, a4, s2
                  andi         sp, t1, -760
854:              lui          ra, 180133
855:              and          t4, s11, s10
                  bne          s11, t5, 865f
                  bge          t5, s1, 870f
                  nop
                  bge          a4, s2, 874f
                  srl          a1, s8, sp
                  sub          zero, a4, a4
862:              bge          a2, a4, 866f
                  auipc        t4, 68003
                  or           a6, s9, t3
865:              xor          t4, a2, s0
866:              xori         zero, gp, -1041
                  sra          s3, t6, t2
                  xori         t5, s11, 882
                  addi         s7, gp, -777
870:              sub          t2, s3, a3
                  ori          tp, s3, -916
                  sll          t5, t1, t3
                  auipc        s0, 479570
874:              xor          a1, s9, s1
                  sltiu        ra, s0, -330
                  andi         t3, t0, 410
                  bgeu         a6, a7, 896f
                  sra          tp, s4, s3
                  bge          t2, tp, 885f
                  srai         t0, s2, 30
                  xor          t3, sp, sp
                  sra          a3, s1, t5
                  srli         a4, a5, 5
                  srli         t5, a2, 20
885:              srai         a0, s10, 23
                  addi         s0, ra, 1103
                  sra          a0, s6, t3
                  slt          t0, s10, gp
                  bne          a7, zero, 901f
                  slt          s4, a2, sp
                  or           s3, s7, ra
                  slt          sp, s5, s11
                  add          a1, s7, s11
                  blt          s8, t6, 908f
                  slli         s0, a0, 15
896:              slti         t2, t0, -436
                  xor          s9, gp, s8
                  addi         t5, gp, 912
                  nop
                  or           zero, s8, a5
901:              slli         t5, t2, 12
                  slti         s6, s8, -1975
                  bgeu         a6, t1, 915f
                  nop
                  add          sp, s7, a0
                  and          s3, t4, s4
                  auipc        s11, 359420
908:              auipc        a6, 4547
                  nop
                  andi         t3, s10, 1975
                  bne          t0, s4, 929f
                  bne          s7, a1, 930f
                  and          ra, ra, s11
                  addi         s7, s7, 1751
915:              xori         t4, gp, 1783
                  bltu         t2, t3, 925f
                  sub          s5, a3, a3
                  beq          s1, a3, 926f
                  andi         a0, s5, 236
                  sll          tp, t3, t1
                  beq          a5, a6, 934f
                  slti         ra, s6, -1093
                  slti         t3, sp, 817
                  sltiu        zero, a5, 1438
925:              bltu         ra, sp, 939f
926:              auipc        gp, 694804
                  bge          s3, s11, 931f
                  slti         s10, s2, -170
929:              and          t1, t1, s9
930:              xori         s4, a5, 1589
931:              srai         s3, a6, 7
                  xori         t5, t3, -607
                  slli         tp, s4, 5
934:              lui          a6, 705219
                  addi         a6, s10, 801
                  slti         t0, s3, -1070
                  addi         a0, s1, 1561
                  sra          t4, s9, a2
939:              andi         ra, gp, 767
                  bne          a3, t6, 955f
                  sltiu        s10, t3, -1802
                  srli         a6, t0, 18
                  slt          t0, tp, s10
                  xor          ra, s11, a2
                  slti         gp, a0, 1305
                  bne          zero, s7, 965f
                  sub          a3, sp, s6
                  bltu         a3, a7, 961f
                  ori          a4, s0, -972
                  blt          a3, a3, 960f
                  nop
                  bltu         zero, t4, 965f
                  lui          gp, 42103
                  sub          ra, s5, s8
955:              ori          gp, a0, -1441
                  bge          s9, s5, 976f
                  bltu         a3, a3, 965f
                  srai         t4, tp, 21
                  or           t1, s6, t2
960:              bltu         t0, s4, 964f
961:              bltu         sp, s8, 976f
                  srai         s0, a7, 20
                  slt          a2, s9, s8
964:              blt          s7, s6, 978f
965:              ori          ra, s0, -1666
                  xori         s5, a5, 1709
                  addi         t0, t1, -382
                  lui          s6, 512799
                  ori          gp, t5, -955
                  auipc        a5, 112532
                  sra          ra, s8, s3
                  bgeu         a7, s2, 977f
                  bne          s10, t3, 988f
                  andi         a0, t3, -715
                  blt          ra, s0, 982f
976:              beq          s7, a2, 990f
977:              bgeu         s2, s8, 988f
978:              srai         a2, s2, 6
                  slt          t4, t6, s6
                  ori          t4, t4, 19
                  add          s9, t3, zero
982:              bge          ra, s10, 1000f
                  bltu         s6, gp, 1000f
                  sltu         tp, s8, t5
                  bgeu         a1, s1, 1000f
                  srl          t3, s2, s11
                  bne          s8, t6, 1000f
988:              xori         t1, s2, 78
                  addi         tp, a1, -1086
990:              auipc        t1, 121760
                  sub          s7, a7, s8
                  ori          ra, zero, -432
                  auipc        a2, 999221
                  blt          a2, a4, 1000f
                  add          t0, a6, s1
                  sltiu        tp, a0, 1145
                  andi         s11, a7, -406
                  sltiu        t0, sp, -300
                  bge          s11, tp, 1000f
1000:             sub          s5, s4, a1
                  la x9, test_done
                  jalr x0, x9, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           and          s6, zero, t2
                  addi         s2, s2, -40
                  add          s10, s5, ra
                  or           s3, t4, a7
                  srl          tp, s3, s10
                  sw           ra, 4(s2)
                  nop
                  srai         t3, s4, 6
                  sub          s8, s2, t1
                  slli         t6, s9, 9
                  sll          t1, s1, t1
                  srl          s0, s3, a4
                  ori          s5, t2, 368
                  addi         s0, t5, 337
                  xori         a3, t4, -1123
                  xor          a3, s0, a4
                  addi         tp, sp, -156
                  add          s9, a3, s0
                  lui          a3, 1032650
                  and          a0, zero, a5
                  blt          tp, s8, 19f
                  andi         a2, gp, 1151
                  lui          a0, 828688
                  srl          t4, t0, s1
                  bgeu         s5, a6, 22f
                  lui          s5, 75117
                  srai         gp, t4, 1
                  nop
                  beq          a0, s3, 31f
                  bgeu         a4, s8, 36f
                  or           a3, s6, t4
19:               slti         a3, a6, -234
                  addi         ra, a2, 1284
                  sll          a4, s1, a1
22:               sra          tp, gp, a1
                  slli         tp, a2, 6
                  slt          a1, s7, sp
                  addi         t4, t1, -199
                  and          s6, t6, sp
                  srli         s5, s1, 27
                  auipc        s8, 378321
                  bltu         gp, s2, 48f
                  bge          s4, a2, 38f
31:               bge          s3, a6, 40f
                  auipc        s10, 657913
                  slti         t3, s9, 462
                  slt          a6, s11, a1
                  slti         s6, t3, -32
36:               beq          t2, s2, 43f
                  sub          s3, a0, a4
38:               xori         s10, gp, 1064
                  add          s0, s11, s3
40:               beq          zero, ra, 45f
                  sra          ra, ra, t5
                  srai         s10, gp, 9
43:               addi         s5, t0, 549
                  or           s10, a6, s5
45:               sltiu        s9, s4, 1667
                  addi         t2, t4, 506
                  sra          a1, ra, s2
48:               blt          a1, s10, 56f
                  addi         t4, t6, 1519
                  xori         s7, s0, -557
                  blt          t4, s8, 55f
                  or           t5, gp, s1
                  bne          zero, a6, 54f
54:               slti         t0, a5, 682
55:               addi         t0, t3, -127
56:               ori          sp, sp, 114
                  sub          t5, t5, ra
                  blt          s8, s2, 63f
                  srl          s0, a6, a5
                  sra          t0, t5, a6
                  sub          t5, t5, tp
                  andi         t0, sp, -601
63:               sra          a3, zero, a4
                  xori         s11, a7, -1378
                  bgeu         t5, t2, 68f
                  slt          a1, t1, s8
                  lui          s11, 914005
68:               or           t0, s3, t6
                  xor          a4, ra, t0
                  sltu         s6, a7, s1
                  lw           ra, 4(s2)
                  and          s10, s10, sp
                  srl          tp, s3, gp
                  addi         s2, s2, 40
                  auipc        a5, 531649
                  sltu         s6, t1, s10
89:               addi x12, x1, 1
89:               jalr x12, x12, 0
sub_3:            and          t3, s1, sp
                  andi         a5, t1, -297
                  srl          s8, s4, a4
                  addi         s2, s2, -52
                  slt          t2, a2, a5
                  xori         a2, s4, 11
                  sw           ra, 4(s2)
                  sub          a0, t6, s3
                  lui          s7, 1037065
                  srl          s4, t6, s3
                  la           gp, sub_4
                  addi         a3, gp, -1020
                  addi         gp, gp, 342
                  bgeu         s11, a0, sub_3_j6 #branch to jump instr
                  and          t5, zero, s9
                  nop
                  sltu         sp, t3, s8
                  slt          sp, a7, s0
                  xori         s7, s10, 1446
                  nop
                  or           a4, t6, a5
sub_3_j6:         jalr         ra, gp, -341 #jump sub_3 -> sub_4
                  la           t3, region_1+1790 #start riscv_load_store_rand_instr_stream_0
                  sltiu        gp, t4, -1517
                  lbu          sp, -528(t3)
                  sll          a4, a0, s1
                  sb           s5, -33(t3)
                  sub          a4, s5, t1
                  xori         s8, ra, -259
                  sll          a1, s1, s4
                  sb           s1, -715(t3)
                  lhu          s5, -124(t3)
                  lb           s10, -1296(t3)
                  sb           s2, -1784(t3)
                  xori         a1, a0, 1937
                  xor          s6, t0, tp
                  lbu          s7, -1129(t3)
                  and          a6, sp, s4
                  add          s3, t3, s2
                  slli         t5, a0, 25
                  sltiu        s6, s11, -532
                  slt          s11, s7, s2
                  ori          s10, s4, 1610
                  xori         t5, s9, -1894
                  xori         gp, s0, 2011
                  andi         a5, zero, -153
                  lbu          zero, -1167(t3)
                  lh           s3, -722(t3)
                  lhu          t4, -1762(t3)
                  sb           zero, -155(t3)
                  lbu          s9, -299(t3)
                  lb           s9, -531(t3)
                  lui          zero, 501859
                  lbu          s6, -1056(t3)
                  addi         a5, a6, 1361
                  lbu          s10, -665(t3)
                  sb           s5, -1731(t3)
                  addi         s8, a0, -1793
                  srl          s5, t4, gp
                  sw           a3, 118(t3)
                  sb           s9, 112(t3)
                  ori          zero, a3, -559
                  lb           a4, 145(t3)
                  lbu          a6, -1524(t3)
                  sb           a5, -1737(t3)
                  sltiu        s3, a1, -849
                  sh           a5, -1274(t3) #end riscv_load_store_rand_instr_stream_0
                  slli         s9, t5, 4
                  auipc        s6, 272505
                  sub          a4, t4, gp
                  add          t2, s6, tp
                  sll          t6, a3, t6
                  nop
                  and          sp, a1, sp
                  or           t1, ra, a2
                  srli         s9, s0, 21
                  xori         s11, s10, 624
                  beq          sp, tp, 16f
                  bltu         t3, a6, 25f
                  nop
                  bltu         a5, gp, 27f
                  auipc        s7, 304656
                  beq          t5, gp, 16f
16:               nop
                  add          s10, t6, s2
                  sltiu        a5, a5, 794
                  xori         a3, gp, 1868
                  or           s9, a3, a5
                  beq          t4, s8, 39f
                  slti         zero, t6, -1839
                  addi         s0, a6, -1489
                  slt          s9, s2, a2
25:               bge          a1, a1, 42f
                  addi         tp, t4, -1248
27:               add          gp, t3, t2
                  srl          t5, s0, a4
                  lui          tp, 863710
                  bgeu         s4, t2, 50f
                  andi         s7, s3, 1148
                  or           a5, s5, a1
                  bgeu         s5, a0, 50f
                  lui          ra, 918525
                  or           s10, s2, t6
                  blt          t3, t3, 45f
                  bne          gp, a3, 49f
                  bne          a1, s2, 46f
39:               bgeu         a5, a0, 52f
                  nop
                  srli         s0, s7, 24
42:               xori         a5, t0, -169
                  and          s5, t4, a5
                  xori         s9, sp, 877
45:               xori         a1, s10, 1180
46:               add          s8, t3, a3
                  sltiu        s0, s11, 1967
                  xor          s4, a4, t1
49:               sub          sp, t3, s0
50:               srl          s3, a2, sp
                  slli         s8, a6, 0
52:               bge          t4, a5, 62f
                  slli         s7, t6, 7
                  lui          s8, 195235
                  add          t6, t6, t6
                  slti         a6, s11, 1664
                  slti         s10, a6, 137
                  or           s7, t1, t6
                  srl          zero, t3, s6
                  xor          s11, a2, t3
                  bltu         s10, t6, 79f
62:               beq          s2, a3, 69f
                  sltu         a0, t2, s6
                  slt          t3, a0, a5
                  slt          ra, s7, a0
                  sra          zero, s0, s11
                  sltu         s8, a6, t6
                  sub          t1, a2, sp
69:               slti         a5, s3, 2026
                  xor          a3, gp, a5
                  beq          s8, t5, 88f
                  bne          a5, sp, 74f
                  auipc        t5, 179901
74:               srl          s4, t0, a6
                  xor          s3, s10, tp
                  addi         a4, t5, -457
                  slti         s8, gp, 775
                  bne          s3, a2, 89f
79:               and          sp, s3, s1
                  bge          t6, s7, 91f
                  ori          s6, s1, 1626
                  bne          a6, t6, 101f
                  blt          s4, s7, 102f
                  slti         s5, ra, 1344
                  bltu         a3, s6, 93f
                  srl          s3, s7, s2
                  lui          a1, 150141
88:               blt          s2, s7, 91f
89:               blt          t4, s2, 97f
                  add          s8, s11, s8
91:               ori          gp, t3, -1817
                  andi         sp, gp, 242
93:               blt          s0, a3, 98f
                  blt          s8, s8, 109f
                  addi         s3, t5, -472
                  lui          zero, 69696
97:               andi         s9, tp, 1980
98:               addi         t5, gp, -1300
                  lui          s9, 892693
                  beq          sp, t6, 106f
101:              and          s4, a0, ra
102:              auipc        a0, 993666
                  srli         s4, s8, 4
                  srl          a4, s4, s3
                  srai         t2, s9, 1
106:              and          zero, tp, s6
                  slti         t6, s4, 1797
                  xori         a4, a4, 1340
109:              and          t3, t2, tp
                  srai         s5, tp, 24
                  xor          s11, t4, a3
                  blt          a1, t0, 130f
                  blt          s3, s11, 130f
                  sra          t0, t3, a3
                  beq          gp, t2, 127f
                  sltiu        t3, s2, 1976
                  slli         s7, a2, 24
                  slt          t4, s8, t3
                  bltu         tp, t6, 137f
                  bne          s1, sp, 132f
                  and          a4, s1, s8
                  addi         s9, t0, 582
                  sub          s4, a6, a7
                  ori          t5, a2, -1221
                  slt          a3, a7, a4
                  xor          t2, t4, a4
127:              srli         s11, s0, 23
                  addi         s7, t5, 1339
                  sltu         t5, a0, s8
130:              bltu         s3, gp, 148f
                  add          s4, a4, t4
132:              slli         s11, a0, 25
                  and          s10, a5, ra
                  srli         t1, a5, 25
                  sltu         a0, ra, s0
                  beq          s1, s7, 155f
137:              slt          t2, t1, t3
                  and          a1, t3, t3
                  sltiu        s8, s2, 885
                  nop
                  bne          t6, a0, 153f
                  sub          t4, s1, a6
                  bgeu         t5, a3, 160f
                  slti         s9, t3, -1790
                  lui          t4, 124808
                  blt          t1, a1, 155f
                  lui          s11, 726552
148:              beq          a5, zero, 151f
                  slli         zero, t6, 26
                  bne          a3, s2, 151f
151:              srli         t6, sp, 10
                  ori          s9, t3, -1671
153:              sltu         s10, t3, s9
                  slt          ra, s9, s9
155:              srai         a6, a5, 23
                  bge          s2, a5, 166f
                  slti         s6, t5, 1451
                  addi         a6, s3, -1806
                  sub          s0, s1, a4
160:              nop
                  blt          sp, sp, 178f
                  bge          t1, sp, 182f
                  sltu         t5, t4, t4
                  slt          gp, s10, a5
                  srl          zero, s2, t0
166:              beq          t6, t2, 183f
                  blt          s7, a6, 178f
                  add          a4, ra, a6
                  la           a2, region_1+952 #start riscv_load_store_rand_instr_stream_1
                  slt          s9, a3, sp
                  sb           s8, -22(a2)
                  xori         s7, t6, 1092
                  addi         sp, a5, 121
                  sra          t0, t3, t3
                  lbu          s8, 38(a2)
                  lhu          a4, -36(a2)
                  nop
                  lh           zero, -6(a2)
                  or           a4, s3, zero
                  slli         a1, t4, 6
                  xor          s8, a6, s6
                  andi         t5, t5, -574
                  lh           t6, -46(a2)
                  sltu         s5, t3, s8
                  lhu          s10, 22(a2)
                  srli         ra, gp, 25
                  xor          s4, sp, s4
                  sb           s5, -29(a2)
                  xor          s11, a6, a1
                  nop
                  sltu         a3, a2, s1
                  lbu          s9, 59(a2)
                  sltiu        ra, a4, -320
                  sll          t3, sp, s6
                  ori          t3, s9, 296
                  add          a5, s8, a1
                  lw           s0, -40(a2)
                  sh           s3, 30(a2)
                  and          t3, t2, s5
                  lh           s3, -56(a2)
                  lbu          t2, 51(a2)
                  lui          s0, 230704
                  slti         s0, a0, 1304
                  xori         t0, a5, -212
                  slt          s7, a1, s5
                  lbu          a4, -57(a2)
                  lbu          t0, -26(a2)
                  lui          s10, 976129
                  sb           ra, 53(a2)
                  sb           t0, -26(a2)
                  sll          tp, s4, s2
                  slli         s9, t1, 16
                  or           sp, s2, s6
                  ori          s9, s10, -501
                  lb           gp, 53(a2)
                  sra          t1, s3, t6
                  lb           a6, 5(a2)
                  lb           t2, -2(a2) #end riscv_load_store_rand_instr_stream_1
                  slt          a2, t1, s7
                  beq          s9, s0, 175f
                  bge          a5, a0, 173f
                  slti         zero, t6, 1981
173:              slti         a4, a5, 288
                  ori          s4, a7, 1433
175:              sub          t6, s1, s1
                  sltiu        s3, t3, -955
                  sll          t4, sp, s6
178:              blt          sp, s3, 184f
                  addi         s9, s7, -1307
                  auipc        ra, 553965
                  sltiu        s5, s5, -541
182:              xor          s6, s10, tp
183:              bne          t0, a4, 194f
184:              sltu         gp, gp, t4
                  sll          a5, t5, s2
                  nop
                  nop
                  lui          a1, 216141
                  and          gp, s4, t4
                  srai         t2, s6, 7
                  xori         a3, s5, 579
                  auipc        s11, 858888
                  sub          gp, t1, s8
194:              blt          a4, t5, 202f
                  slti         s4, t5, 529
                  auipc        a6, 465880
                  slt          t2, sp, a4
                  and          a3, t3, a5
                  slt          s0, a2, s11
                  nop
                  bgeu         ra, s9, 220f
202:              xor          s7, s2, s5
                  lui          s3, 237930
                  bne          s4, a0, 212f
                  xori         t2, a3, -764
                  bne          tp, a7, 213f
                  bltu         s6, s1, 213f
                  srai         t3, a0, 8
                  srl          a2, ra, s9
                  sltu         t4, a4, t4
                  slti         t4, t6, -589
212:              and          t2, s2, a6
213:              slt          a4, a0, s11
                  bge          s6, ra, 228f
                  sltiu        s7, t2, -348
                  beq          a4, a3, 233f
                  sra          gp, s10, s1
                  srl          t6, s11, s3
                  sub          t3, t3, sp
220:              bltu         s3, s4, 234f
                  ori          s6, s1, 1699
                  andi         t3, t2, 1703
                  bge          s5, a0, 238f
                  nop
                  beq          a7, t0, 233f
                  slti         s10, s11, -1471
                  and          a0, a2, a3
228:              or           t0, a5, a2
                  andi         a6, t4, -669
                  xor          a0, s7, ra
                  sltu         t4, zero, s11
                  or           s11, zero, s8
233:              sltu         s5, t2, s9
234:              bne          s2, a1, 252f
                  add          s3, t0, t2
                  or           s4, a1, s5
                  xori         sp, s3, 663
238:              srli         t2, t0, 19
                  blt          a4, s0, 252f
                  srai         s4, t6, 30
                  and          tp, s2, zero
                  srli         a1, gp, 22
                  or           s11, a7, gp
                  nop
                  slli         t5, sp, 19
                  sltu         t1, t5, s0
                  andi         a6, gp, 78
                  sltu         tp, a4, t1
                  and          a3, t3, a7
                  or           a5, s3, s2
                  slti         a3, zero, 1761
252:              andi         s0, a5, 1376
                  bge          a6, s6, 259f
                  bge          s3, zero, 262f
                  srli         a6, a6, 11
                  srli         s6, s7, 18
                  sltu         a2, a2, ra
                  blt          a4, s0, 261f
259:              srli         s9, a4, 2
                  ori          a2, s6, 728
261:              beq          s7, t6, 280f
262:              sub          a6, a3, s7
                  andi         s4, s4, 1357
                  and          t0, a6, t6
                  sll          s7, s6, s4
                  sltiu        s6, zero, -1744
                  sltu         s11, s4, s0
                  slti         s8, a0, 729
                  bge          s7, s0, 286f
                  bne          t0, a2, 284f
                  sltu         t3, s3, s4
                  xor          sp, zero, zero
                  blt          s10, s0, 292f
                  nop
                  blt          a6, ra, 280f
                  and          t4, a4, sp
                  sra          t5, a5, zero
                  or           tp, a7, a2
                  bge          a0, s10, 297f
280:              and          s9, a6, a4
                  sub          a4, a5, t3
                  bltu         t1, s3, 290f
                  srli         s6, s0, 27
284:              and          s10, s7, t3
                  ori          a0, a3, 319
286:              auipc        s11, 520833
                  slli         a2, gp, 0
                  bge          a6, ra, 300f
                  add          a3, tp, a0
290:              srai         s5, s5, 6
                  sra          sp, t0, a3
292:              andi         s7, a3, -773
                  add          t4, a2, sp
                  auipc        t5, 555905
                  slti         t1, s9, 1819
                  beq          t3, zero, 307f
297:              sll          zero, t0, s5
                  lui          s8, 904993
                  lui          zero, 106567
300:              bne          a6, gp, 306f
                  sltiu        ra, a0, -69
                  sub          t5, s3, s6
                  slli         t1, s2, 15
                  blt          gp, a4, 324f
                  sltiu        s3, s4, 1651
306:              sltiu        gp, t6, -1745
307:              srl          tp, sp, sp
                  add          a1, s0, t0
                  lui          s0, 493235
                  bge          a4, s4, 311f
311:              bgeu         s8, s10, 329f
                  bltu         t1, zero, 314f
                  or           a2, t2, a0
314:              sub          s4, s11, s9
                  lui          a2, 281853
                  lui          a2, 661991
                  srai         gp, s8, 12
                  nop
                  and          s6, s3, a6
                  xor          sp, gp, a7
                  blt          gp, s9, 329f
                  bne          ra, t4, 329f
                  sltiu        s9, a6, 1881
324:              andi         s8, a3, -21
                  sra          t6, a5, sp
                  blt          a4, s9, 329f
                  xori         s5, a6, 1480
                  blt          gp, s4, 329f
329:              slt          s7, s9, a7
                  sltiu        gp, s10, 1166
                  srli         t0, t6, 22
                  lw           ra, 4(s2)
                  slti         s6, s5, 1469
                  addi         s2, s2, 52
                  add          a3, a1, t2
                  sll          tp, t2, a2
                  nop
                  sltu         a3, sp, t1
                  nop
                  srli         a2, a3, 20
                  sub          s10, a2, s5
459:              addi x29, x1, 1
459:              jalr x29, x29, 0
sub_7:            auipc        s7, 91215
                  sra          t6, a5, s3
                  slt          s4, a0, t0
                  bge          tp, a6, sub_7_stack_p
                  ori          tp, a0, 448
                  sltiu        s8, s6, 730
sub_7_stack_p:    addi         s2, s2, -36
                  sw           ra, 4(s2)
                  ori          s9, a0, 1340
                  srai         a1, s2, 4
                  xor          a2, s4, sp
                  nop
                  sub          s10, s2, s4
                  srl          t0, t2, s10
                  xori         s5, tp, -1890
                  sltu         s7, ra, s4
                  sll          t5, a1, t4
                  slli         s10, a6, 13
                  add          s11, a2, t0
                  sra          s0, s0, t1
sub_7_j12:        jal          ra, sub_8 #jump sub_7 -> sub_8
                  la           ra, region_0+593 #start riscv_load_store_rand_instr_stream_2
                  lbu          s9, 26(ra)
                  sb           s2, -4(ra)
                  or           a4, tp, s2
                  lbu          a4, 36(ra)
                  or           s3, s4, a0
                  lhu          s5, 29(ra)
                  slti         gp, zero, 1074
                  addi         gp, t3, -1310
                  sw           a0, 15(ra)
                  sb           a4, -22(ra)
                  srl          a5, t1, s9
                  sb           zero, 48(ra)
                  lbu          a4, 22(ra)
                  sltu         gp, gp, s1
                  srai         a6, t5, 8
                  srl          s11, s7, s8
                  or           t2, t5, gp
                  sltiu        a6, s11, 45
                  sh           t4, -61(ra)
                  sb           s10, 8(ra)
                  lui          t4, 46961
                  sh           s7, -31(ra)
                  lb           s11, -61(ra)
                  sb           s10, 10(ra)
                  srl          sp, t2, ra
                  sll          sp, ra, a6
                  lbu          tp, 20(ra)
                  sb           s3, 4(ra)
                  lb           s8, 44(ra)
                  lb           s5, -27(ra)
                  slli         t5, gp, 27
                  nop
                  auipc        tp, 7485
                  slli         t2, a2, 24
                  lhu          s9, 3(ra)
                  sub          t3, t1, t0
                  sra          t3, a1, a3
                  lui          s3, 106471
                  lui          sp, 299345
                  slt          a6, s4, s8
                  sb           a5, -28(ra)
                  lhu          sp, -49(ra)
                  lbu          a4, -45(ra)
                  lbu          a4, 34(ra)
                  ori          a3, t2, -117
                  slti         s0, t3, -1425
                  sltu         t2, s11, a1
                  sb           s4, 2(ra)
                  andi         a4, t6, -1735
                  lbu          t3, -32(ra)
                  srai         t2, a6, 9
                  lbu          s6, 21(ra)
                  lui          a0, 147889
                  lb           t2, -15(ra)
                  lb           t4, 8(ra)
                  lhu          tp, 5(ra) #end riscv_load_store_rand_instr_stream_2
                  la           s5, region_0+37 #start riscv_load_store_rand_instr_stream_1
                  lb           a3, 314(s5)
                  lbu          zero, 369(s5)
                  lb           t2, 1680(s5)
                  lb           sp, 467(s5)
                  sltiu        zero, sp, 1319
                  sra          s3, t1, gp
                  xori         a2, t0, 1365
                  xor          s11, a0, sp
                  lw           t3, 1875(s5)
                  lui          s4, 644070
                  lbu          t2, 413(s5)
                  sb           t2, 1630(s5)
                  lhu          s6, 899(s5)
                  or           a1, sp, a7
                  nop
                  sltiu        s0, a7, 1830
                  sw           a1, -1(s5)
                  lb           s3, 1084(s5)
                  and          sp, s6, sp
                  sltiu        s3, a5, 639
                  lh           sp, 885(s5)
                  sw           s2, 1031(s5) #end riscv_load_store_rand_instr_stream_1
                  la           a6, region_0+365 #start riscv_load_store_rand_instr_stream_0
                  sll          t0, s4, s4
                  lh           s9, 15(a6)
                  lbu          s7, -2(a6)
                  sw           s2, -9(a6)
                  lui          gp, 344656
                  lh           a4, -13(a6)
                  lb           s7, -14(a6)
                  sb           a7, 1(a6)
                  srli         sp, zero, 4
                  add          a3, s11, a1
                  sub          t1, a1, s10
                  addi         t4, a7, 1625
                  slli         t4, s7, 13
                  lbu          a2, 8(a6)
                  sltiu        tp, s5, -845
                  lb           s5, -3(a6)
                  nop
                  and          s0, a7, a6
                  slti         zero, a6, 965
                  sb           s1, -14(a6)
                  lb           s9, -14(a6)
                  sb           a7, -10(a6)
                  lw           a0, 7(a6)
                  sra          zero, a1, s5
                  add          t0, s0, t4
                  slti         s4, a5, 445
                  add          s11, tp, sp
                  srl          s3, s9, a3
                  srl          ra, s4, a4
                  sh           a7, -5(a6)
                  add          a2, s7, s0
                  srai         t2, t5, 10
                  sb           s4, -16(a6)
                  sub          tp, t4, t4
                  lb           a0, -16(a6)
                  lb           a4, -16(a6) #end riscv_load_store_rand_instr_stream_0
                  slt          a5, s1, s3
                  bge          t6, a6, 11f
                  sub          s10, sp, a2
                  andi         a5, s11, -663
                  nop
                  addi         s5, t2, 1087
                  lui          t5, 764556
                  nop
                  xori         a0, a6, 1522
                  nop
                  and          t0, s10, t1
11:               slt          a5, a0, s4
                  beq          t1, a0, 32f
                  slli         a6, gp, 15
                  slti         t4, a4, 290
                  sltu         s10, t5, s0
                  and          s6, gp, a6
                  sll          s7, s6, tp
                  sltiu        a6, s5, -183
                  slli         zero, a1, 28
                  sltiu        s8, a7, -117
                  ori          t6, tp, 998
                  sra          s10, s4, s0
                  beq          tp, t1, 39f
                  srli         s9, s3, 6
                  xori         sp, s6, -775
                  ori          a0, tp, 267
                  andi         a4, s8, 1120
                  xor          a5, s5, tp
                  sltiu        s3, t3, 1465
                  srai         s9, zero, 11
                  slli         zero, s8, 17
32:               bne          sp, zero, 48f
                  sltu         ra, ra, t3
                  addi         t3, zero, 1853
                  andi         s8, s9, -939
                  bne          a0, s1, 43f
                  sub          t4, a1, a2
                  beq          t0, a7, 56f
39:               sltiu        s6, t1, 801
                  bge          t2, t0, 41f
41:               slli         s0, s6, 31
                  sra          t5, t1, s2
43:               lui          t5, 774165
                  ori          s3, a7, 331
                  sub          ra, s3, s9
                  slti         s0, s3, -448
                  slti         s11, s11, 1098
48:               lui          a2, 647827
                  or           s10, s11, t2
                  srl          s4, a5, a6
                  srl          a0, t1, s4
                  add          s5, s9, tp
                  lui          a1, 243708
                  srli         t0, t5, 31
                  srli         s8, a2, 7
56:               srli         s9, s4, 15
                  slti         t2, a3, -1119
                  nop
                  bgeu         a2, s10, 76f
                  or           ra, t4, s4
                  addi         s4, t6, -686
                  bne          s1, t4, 77f
                  slli         s10, zero, 11
                  bge          s2, s5, 67f
                  sub          a0, s7, a1
                  srai         s3, t1, 21
67:               srli         a2, s6, 1
                  or           tp, s3, t6
                  sub          s4, a2, a1
                  srl          a2, t0, t6
                  lui          a6, 598176
                  andi         a0, s8, -704
                  srli         tp, s2, 6
                  sll          t5, s4, ra
                  srai         t6, s5, 19
76:               add          t3, t5, a4
77:               sra          t0, t3, t2
                  bge          t0, a7, 92f
                  lui          s0, 333354
                  bge          a7, s1, 94f
                  slli         s4, a2, 16
                  xori         a6, t0, 1932
                  and          t3, t5, s1
                  slt          tp, ra, a7
                  ori          a3, s6, 570
                  or           a3, s8, a0
                  srl          t4, t0, gp
                  srli         s8, t0, 23
                  andi         tp, a0, 1018
                  addi         a1, a7, -1611
                  bltu         t4, a1, 109f
92:               blt          a2, s0, 101f
                  xori         s10, ra, 845
94:               or           s6, sp, s2
                  andi         t4, tp, 354
                  bne          s3, a0, 102f
                  addi         s4, t3, -1869
                  sltu         t1, ra, s2
                  bge          t4, s10, 102f
                  bgeu         a0, t3, 115f
101:              slti         s0, a5, -1271
102:              lui          s7, 89442
                  srli         s0, t4, 14
                  andi         s10, s3, -1554
                  bne          a2, s0, 121f
                  sll          s7, sp, s8
                  auipc        zero, 825741
                  addi         s11, gp, -860
109:              slli         s5, t0, 31
                  srl          t3, t4, s9
                  srai         sp, s5, 6
                  bgeu         s0, sp, 116f
                  blt          s3, a5, 125f
                  ori          ra, gp, 216
115:              bgeu         s6, s5, 117f
116:              xori         a6, t6, -524
117:              srl          a1, s5, s7
                  bgeu         t5, t1, 131f
                  blt          zero, a7, 125f
                  slli         a4, a1, 15
121:              sltiu        a3, s7, -845
                  sll          s9, s5, a3
                  nop
                  lui          gp, 569926
125:              auipc        tp, 409585
                  xori         t3, a3, 745
                  bltu         t4, zero, 139f
                  sltiu        t2, a4, -1762
                  bltu         a7, s6, 138f
                  bge          a5, s4, 148f
131:              nop
                  auipc        s10, 278822
                  sra          a2, s2, a5
                  or           a0, gp, a4
                  ori          s8, tp, 812
                  srli         gp, a5, 28
                  srai         a2, a0, 22
138:              srl          t4, a6, a2
139:              lui          tp, 989550
                  slli         s11, gp, 29
                  slli         t3, ra, 28
                  srli         s8, t6, 12
                  lui          t3, 677692
                  add          t4, s3, sp
                  sra          t5, s8, s0
                  srl          tp, a7, t6
                  sll          a0, gp, tp
148:              blt          t3, s7, 154f
                  bgeu         a7, s3, 156f
                  ori          zero, t4, -376
                  srai         a6, s2, 19
                  or           s3, a1, s11
                  add          s9, a6, gp
154:              srl          s9, s6, s0
                  bltu         sp, s2, 174f
156:              slt          a3, s6, s4
                  xori         tp, a5, 769
                  lui          s0, 648634
                  bne          s5, sp, 176f
                  blt          a2, t2, 173f
                  auipc        s4, 211618
                  sll          a5, s0, a6
                  xor          a2, t0, t5
                  sltiu        a5, gp, -954
                  sll          a1, s7, a3
                  slt          a4, t5, a5
                  xori         a4, s8, 1728
                  sll          zero, t4, s8
                  add          t1, s9, zero
                  bge          t6, s0, 185f
                  bge          tp, a4, 187f
                  sltu         ra, a5, ra
173:              bne          a5, t6, 191f
174:              xor          s7, s1, t5
                  sra          a5, a7, a1
176:              srl          zero, a3, s4
                  sra          ra, t0, s6
                  sra          s8, a2, s6
                  sltiu        s8, zero, 1741
                  slli         a3, gp, 29
                  sltiu        a3, s10, -1386
                  bgeu         ra, s2, 183f
183:              sll          t0, ra, sp
                  slti         t3, gp, -629
185:              xor          gp, zero, gp
                  nop
187:              srl          t2, gp, s0
                  andi         a2, s5, -230
                  bgeu         s5, s5, 205f
                  and          tp, a2, a6
191:              ori          s11, s0, -240
                  sll          a4, t5, sp
                  bgeu         ra, a7, 197f
                  srli         s0, a4, 16
                  auipc        t2, 894340
                  sra          s6, a2, s10
197:              add          a0, s0, s6
                  or           a6, s8, s2
                  lui          t3, 41758
                  add          zero, s8, s0
                  sltu         gp, a0, s9
                  bgeu         a0, s4, 221f
                  bne          t3, s2, 210f
                  srl          a0, s7, gp
205:              sltu         a2, t1, gp
                  beq          s11, a7, 212f
                  or           t4, sp, s8
                  blt          s5, s7, 218f
                  sll          s0, a6, s9
210:              sub          t3, s3, s3
                  bltu         s3, s7, 223f
212:              ori          t5, t6, -212
                  srai         a4, s0, 31
                  xori         ra, t0, -1885
                  sra          a4, s1, s11
                  auipc        s10, 266936
                  bltu         s11, t3, 232f
218:              bne          t0, a6, 227f
                  bge          a6, a3, 222f
                  bgeu         s0, a2, 222f
221:              nop
222:              slli         a0, s9, 8
223:              blt          s0, a6, 241f
                  slt          t0, t2, a5
                  or           a5, a0, s11
                  bltu         s7, gp, 240f
227:              blt          t1, gp, 234f
                  auipc        a3, 893562
                  srai         a3, a4, 17
                  or           a5, t6, a7
                  sra          s10, sp, s0
232:              xori         s10, a1, 1556
                  bgeu         ra, t0, 239f
234:              srai         s3, s7, 4
                  nop
                  slt          t4, s7, s6
                  andi         t0, tp, -1373
                  auipc        a4, 477091
239:              slt          ra, t0, a0
240:              andi         s11, s1, 1157
241:              nop
                  srai         sp, s10, 20
                  slti         zero, a4, 1269
                  xor          s3, s0, s11
                  sra          s4, s4, s4
                  sltiu        t6, s5, 1437
                  srl          a6, t6, a0
                  srli         t0, s4, 3
                  slli         s8, sp, 16
                  sltiu        s5, t0, 1349
                  sltu         t3, t3, s10
                  addi         s9, s6, -213
                  or           a5, a2, s8
                  beq          s0, s10, 266f
                  bgeu         s9, sp, 272f
                  ori          t6, a7, -1332
                  andi         t5, s8, -153
                  xori         a0, t3, 975
                  slti         a4, s9, -1571
                  srai         t1, t1, 9
                  slti         a3, ra, -1309
                  or           s4, ra, s5
                  slli         t1, a7, 21
                  andi         a2, a0, 458
                  blt          a3, sp, 268f
266:              sll          s8, a6, s10
                  bltu         a0, s6, 287f
268:              srai         tp, ra, 8
                  or           s5, a2, t6
                  bge          s3, a4, 286f
                  sub          a6, tp, s1
                  addi         tp, s11, 1895
                  xor          t1, tp, t0
                  addi         zero, t1, -248
                  lui          a4, 283028
                  sltiu        t6, s11, 1375
                  sll          a5, s11, s10
                  auipc        a3, 1003292
                  slti         t5, t0, -1261
                  sll          s7, s4, s1
                  xori         zero, t2, 1514
sub_7_j11:        jal          ra, sub_9 #jump sub_7 -> sub_9
272:              bne          t3, s6, 281f
                  srli         a6, t0, 1
                  sltiu        gp, a7, -601
                  bne          a3, t4, 281f
                  srl          s3, sp, s5
                  xori         a3, tp, 950
                  bgeu         s1, t4, 296f
                  srai         s0, tp, 27
                  sub          zero, t1, a1
281:              bge          a0, a7, 298f
                  bne          s11, gp, 296f
                  add          s3, tp, s7
                  auipc        tp, 952842
                  blt          s2, t3, 288f
286:              or           s5, sp, t5
287:              bge          t6, s1, 297f
288:              add          s6, a7, t4
                  bltu         a6, s8, 307f
                  bgeu         a7, tp, 310f
                  slli         s10, a7, 19
                  lui          tp, 287243
                  add          t3, s10, sp
                  lui          s6, 830532
                  beq          a5, t4, 304f
296:              sll          t1, s1, s2
297:              addi         s0, t1, -1654
298:              nop
                  or           zero, ra, ra
                  slli         a2, s7, 16
                  xor          ra, gp, s11
                  bge          a4, a1, 319f
                  ori          s0, a2, -166
304:              ori          tp, s7, -1618
                  bltu         sp, ra, 321f
                  auipc        a5, 518514
307:              addi         tp, a7, 811
                  and          t1, t0, s11
                  slt          a0, a5, gp
310:              nop
                  or           t0, s0, zero
                  or           a3, s4, t6
                  xor          sp, sp, a2
                  bgeu         a1, s2, 316f
                  auipc        t6, 656320
316:              auipc        s0, 895849
                  xor          s6, s5, t0
                  ori          s7, s5, -431
319:              xor          s3, ra, s8
                  srai         s4, t2, 25
321:              bgeu         s6, s3, 339f
                  xor          ra, s6, s9
                  sltiu        s8, s11, -394
                  sll          gp, t1, t1
                  srl          a2, t1, t6
                  bgeu         t1, t4, 341f
                  srli         s10, s9, 5
                  bne          sp, s6, 331f
                  blt          t3, s8, 345f
                  blt          s0, s3, 337f
331:              sub          t5, s5, a3
                  addi         t0, s11, 157
                  bne          s4, s4, 337f
                  blt          s7, t2, 353f
                  srli         s6, t0, 26
                  andi         s8, s6, -1757
337:              nop
                  srai         t6, t3, 20
339:              add          a3, tp, s1
                  nop
341:              xori         t5, t1, 803
                  and          s3, a3, a4
                  srai         a4, t4, 29
                  or           t3, a6, zero
345:              srl          s11, a6, s0
                  or           t6, t5, s2
                  srl          t2, t5, s7
                  slt          a4, a1, s2
                  srai         t4, s4, 17
                  bgeu         sp, t0, 363f
                  nop
                  bgeu         zero, a5, 366f
353:              andi         a1, a7, 521
                  xori         t3, t3, -706
                  sra          s11, t2, a6
                  sltiu        zero, t1, 382
                  blt          s7, tp, 374f
                  slti         t6, s4, -287
                  slt          a2, t4, s7
                  xor          tp, a2, sp
                  lui          tp, 252926
                  beq          ra, t2, 371f
363:              slt          s0, gp, s8
                  or           t3, t4, s5
                  addi         zero, a7, 1445
366:              add          t2, s4, ra
                  lui          t3, 948027
                  sll          s0, gp, ra
                  and          s8, t6, t6
                  srli         s0, gp, 8
371:              blt          s7, gp, 387f
                  xori         a5, t2, 1088
                  srl          t5, a2, t2
374:              sltu         a5, gp, s6
                  slt          t0, a1, t4
                  xor          a1, ra, s1
                  bne          a1, a4, 395f
                  srl          zero, t6, s5
                  slt          s3, t6, s2
                  blt          t0, t5, 386f
                  lui          tp, 782927
                  and          ra, ra, s3
                  add          gp, a5, s8
                  srl          t0, s3, a4
                  xor          a0, tp, gp
386:              srli         t0, a3, 27
387:              xori         a6, a0, 1555
                  srl          a4, a4, s6
                  lui          s0, 575700
                  sltiu        s4, a4, -838
                  lui          a1, 681722
                  auipc        tp, 84877
                  auipc        s11, 660112
                  xori         ra, a1, -221
395:              xori         ra, a6, 1622
                  slli         t4, s0, 17
                  ori          zero, t1, -1974
                  xori         t0, s7, 644
                  sub          s6, s0, t2
                  slli         s8, zero, 30
                  xori         t0, s8, 866
                  andi         gp, sp, 501
                  lui          s5, 1002104
                  slti         s6, s11, -1004
                  beq          s4, t4, 406f
406:              sll          sp, t3, s2
                  xori         t5, s7, 165
                  srl          sp, tp, a4
                  bne          a7, s4, 421f
                  xor          s6, zero, t2
                  bgeu         t4, sp, 423f
                  andi         a6, a1, 724
                  bltu         t4, t0, 419f
                  and          a4, t3, gp
                  srli         s9, ra, 25
                  srl          a0, a2, s7
                  slli         s11, t1, 3
                  slti         t3, t5, -1727
419:              sltu         s4, s5, s8
                  auipc        a4, 462763
421:              xor          a5, sp, a1
                  bne          t1, zero, 428f
423:              sll          s0, s5, t4
                  srl          t0, s7, s5
                  andi         s11, a1, 1844
                  srai         zero, s6, 29
                  bgeu         a4, sp, 441f
428:              srli         t2, t0, 27
                  sll          s6, a1, s10
                  sra          a0, s10, gp
                  lui          t0, 523658
                  sra          t5, t5, sp
                  ori          a0, t6, 1797
                  nop
                  beq          s8, t1, 442f
                  or           a0, a1, a7
                  and          s4, t2, t1
                  ori          a6, sp, -1166
                  xor          s6, s7, s3
                  bgeu         s2, s7, 455f
441:              bne          s7, s1, 450f
442:              beq          s11, s5, 449f
                  add          s8, t5, a5
                  ori          a3, s5, -778
                  slli         s4, tp, 14
                  andi         s0, sp, -1865
                  sll          t0, a3, s10
                  auipc        t5, 409639
449:              xor          a1, t4, s4
450:              and          s4, gp, t4
                  bltu         s11, a4, 467f
                  lui          t2, 1037973
                  beq          t6, sp, 459f
                  sltiu        a5, a1, -981
455:              sltu         s6, t5, a2
                  ori          s11, s10, 429
                  and          a6, zero, s9
                  auipc        t4, 878781
459:              beq          t1, sp, 465f
                  nop
                  sll          t4, s3, s6
                  add          a4, s10, s9
                  bltu         a6, t0, 477f
                  slli         t3, t6, 27
465:              sub          t0, t3, a7
                  bgeu         s3, a2, 478f
467:              ori          t0, a7, -1735
                  srli         a5, s7, 21
                  srai         t5, ra, 14
                  srai         s7, t1, 9
                  andi         s4, t6, -1002
                  bgeu         a0, a0, 475f
                  xor          t2, s0, a5
                  xor          t1, s10, s3
475:              sltiu        s3, t0, -1484
                  andi         s0, s8, -275
477:              sub          s8, a3, a7
478:              ori          t4, a7, -173
                  sub          a4, s3, s0
                  sra          sp, t1, a4
                  sltiu        t1, s9, -1180
                  ori          a6, s0, -770
                  and          a0, s0, t4
                  bge          s9, tp, 502f
                  nop
                  sltu         zero, s8, a7
                  sltu         a5, t6, a1
                  andi         a6, t1, -1437
                  add          gp, t1, s2
                  sra          s8, s1, zero
                  slti         a1, a2, -47
                  srli         t1, s8, 19
                  srli         a5, s4, 5
                  slt          t3, s7, a6
                  slli         t6, s8, 15
                  ori          a1, t1, 185
                  slti         t1, tp, 1265
                  blt          a7, s5, 510f
                  bne          t6, a7, 515f
                  beq          sp, s9, 519f
                  bne          s0, a7, 511f
502:              xori         a2, a1, 950
                  srai         zero, s9, 14
                  ori          s0, s8, 1219
                  sra          a4, s1, t5
                  sltu         t0, t4, s10
                  bge          t3, sp, 509f
                  bgeu         s0, s8, 521f
509:              ori          t6, s9, -309
510:              andi         a5, t0, 830
511:              sltiu        t5, s0, -1991
                  and          t5, zero, a6
                  bgeu         t6, a5, 531f
                  auipc        s4, 876494
515:              auipc        a6, 728117
                  add          sp, a3, a5
                  sltu         s10, s4, s1
                  or           a6, t5, s11
519:              sltiu        t4, a4, 918
                  bltu         s7, a4, 535f
521:              xor          zero, a1, s4
                  la           s7, region_1+1401 #start riscv_load_store_rand_instr_stream_3
                  sb           a4, -182(s7)
                  or           s10, t5, t3
                  sb           a0, 185(s7)
                  or           a0, a3, t1
                  lhu          sp, 241(s7)
                  lb           t0, -250(s7)
                  lh           sp, 153(s7)
                  srl          a3, gp, s10
                  slti         t5, t0, 2034
                  lbu          s0, -240(s7)
                  lb           s5, -94(s7)
                  or           t4, s10, a2
                  lbu          a3, 228(s7)
                  sra          t4, s2, s6
                  lb           s0, 148(s7)
                  srl          s6, s1, s10
                  lb           s5, 196(s7)
                  nop
                  lhu          a3, 29(s7)
                  sb           zero, 134(s7)
                  sb           s9, 178(s7)
                  lbu          s11, 128(s7)
                  add          s4, a4, t5
                  lw           s6, 207(s7)
                  lh           s0, -249(s7)
                  xor          a5, s5, s8
                  sll          t1, s10, t5
                  lh           a6, -135(s7)
                  lbu          sp, 6(s7)
                  or           a3, ra, a4
                  sh           a0, -3(s7)
                  add          s8, s11, a0
                  andi         a1, a3, -1052
                  sb           a4, -100(s7)
                  lh           sp, 203(s7)
                  sw           a4, 151(s7)
                  sb           tp, -2(s7)
                  xori         a0, t2, -400
                  sw           sp, -41(s7)
                  ori          a5, s10, -1827
                  sb           t1, -3(s7)
                  sb           a2, -77(s7)
                  lbu          t0, -199(s7)
                  lw           s3, 255(s7)
                  sra          gp, s4, a1
                  lui          gp, 1024626
                  sb           s2, -170(s7) #end riscv_load_store_rand_instr_stream_3
                  bge          s8, s4, 539f
                  xori         s10, a2, 1207
                  bne          s0, t5, 541f
                  sra          t1, a1, s2
                  srl          a5, a4, s9
                  slt          s7, a1, s1
                  slti         s9, gp, -1270
                  bge          t4, t6, 533f
                  andi         s0, s7, 843
531:              andi         s7, a7, -1113
                  sltiu        a3, t4, -192
533:              srli         t1, s10, 23
                  and          a5, a3, s5
535:              blt          t2, t4, 544f
                  addi         s6, gp, 1570
                  slti         a0, s1, 753
                  sra          a1, a3, s6
539:              sltiu        t3, ra, 1123
                  sll          s9, a4, s2
541:              sltiu        s11, a4, -1692
                  sltu         ra, t3, tp
                  andi         s4, s1, -936
544:              ori          zero, s10, -826
                  srl          a6, s6, a0
                  bge          t0, gp, 552f
                  bge          sp, s3, 554f
                  andi         tp, s0, -1634
                  bltu         a6, t4, 554f
                  sub          s11, t4, s3
                  slti         s8, s1, -1766
552:              sub          s8, a3, t5
                  ori          t2, t0, 1650
554:              auipc        s9, 118711
                  lw           ra, 4(s2)
                  srai         t2, s11, 22
                  nop
                  sra          tp, sp, a3
                  sltiu        a0, a5, 598
                  addi         s2, s2, 36
                  or           t2, s4, sp
                  lui          tp, 960879
760:              addi x19, x1, 1
760:              jalr x19, x19, 0
sub_5:            sra          a2, a3, t6
                  or           t2, t6, s9
                  srl          s4, a1, a7
                  blt          s8, t6, sub_5_stack_p
sub_5_stack_p:    addi         s2, s2, -40
                  sw           ra, 4(s2)
                  ori          s3, s2, -129
                  la           a5, sub_6
                  sltu         s5, s8, s9
                  slt          t0, a2, s4
                  srl          s3, s8, zero
                  xori         t0, t2, 741
                  addi         a5, a5, -81
                  beq          gp, s2, sub_5_j9 #branch to jump instr
                  xori         t5, s9, 486
                  sltiu        a0, s9, -714
sub_5_j9:         jalr         ra, a5, 82 #jump sub_5 -> sub_6
                  la           sp, region_1+1027 #start riscv_load_store_rand_instr_stream_2
                  lhu          tp, 53(sp)
                  andi         zero, t3, 1070
                  sltiu        a5, a7, -834
                  lbu          s3, 50(sp)
                  slti         s4, a0, 1598
                  lb           s6, 51(sp)
                  andi         s11, ra, 2016
                  lw           a0, -3(sp)
                  slt          t4, a4, t4
                  sb           t4, -56(sp)
                  xori         s4, s1, -1247
                  sb           a4, -53(sp)
                  lbu          s8, 46(sp)
                  andi         a5, t0, 1422
                  sh           zero, 21(sp)
                  lbu          gp, 0(sp)
                  nop
                  addi         t1, s7, 1533
                  sb           zero, 60(sp)
                  ori          a4, a1, 838
                  sltiu        a2, a1, 991
                  lhu          a6, 53(sp)
                  sb           s11, 32(sp)
                  nop
                  or           a0, t2, t2
                  nop
                  sb           t3, 2(sp)
                  addi         ra, t5, 116
                  sb           a6, 62(sp)
                  slt          s6, a7, t0
                  lbu          a6, 24(sp)
                  sltiu        a2, a2, -815
                  or           a0, ra, a6
                  sb           t6, 60(sp)
                  sw           t5, -47(sp)
                  slti         zero, t3, 1230
                  sb           a4, -35(sp)
                  slt          a0, a0, t3
                  sltiu        tp, t1, -1816
                  lb           s5, 38(sp)
                  and          t1, t5, a5
                  nop
                  srai         s3, t0, 15
                  lbu          t3, 2(sp)
                  lb           a5, -5(sp)
                  xor          s10, t0, s6
                  sra          a1, a5, s5
                  slti         a4, ra, -1739
                  lbu          s11, -34(sp)
                  lui          a4, 797785
                  lb           a0, -62(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s7, region_0+436 #start riscv_load_store_rand_instr_stream_3
                  add          t6, a5, a6
                  lh           gp, -6(s7)
                  srli         a0, t3, 12
                  sb           t3, 16(s7)
                  sh           a4, -16(s7)
                  lbu          s3, -3(s7)
                  lbu          s5, 5(s7)
                  lb           s10, -11(s7)
                  lb           a3, 2(s7)
                  srli         tp, s5, 1
                  add          a0, t4, s8
                  sh           s1, 4(s7)
                  sb           t2, -3(s7)
                  lb           t0, 11(s7)
                  lb           zero, -5(s7)
                  lui          zero, 653614
                  lb           s4, -13(s7)
                  lb           s0, 4(s7)
                  sb           sp, 3(s7)
                  lb           s0, -9(s7)
                  sh           s11, -4(s7)
                  lb           t1, -14(s7)
                  add          a6, a2, t1
                  lhu          a2, 6(s7)
                  or           ra, s6, s11
                  sll          s9, t6, s2
                  sb           t2, -5(s7)
                  lbu          t2, 14(s7)
                  lbu          t4, -1(s7)
                  sltiu        a6, s7, 419
                  sb           a2, 3(s7)
                  lbu          t1, 5(s7)
                  lw           s4, 12(s7)
                  lhu          s8, 14(s7)
                  nop
                  sh           s1, 10(s7)
                  sw           s5, -4(s7)
                  lb           t6, 3(s7)
                  sb           gp, -1(s7)
                  lbu          a1, -5(s7) #end riscv_load_store_rand_instr_stream_3
                  la           s4, region_1+1466 #start riscv_load_store_rand_instr_stream_0
                  sb           s8, 131(s4)
                  sll          s11, s11, a3
                  addi         gp, a6, -960
                  sb           a6, -415(s4)
                  lbu          s9, 77(s4)
                  ori          t6, a6, -134
                  sb           s3, 161(s4)
                  xor          a0, a0, a5
                  lb           t5, -64(s4)
                  nop
                  sll          s8, s0, t0
                  lhu          a3, 430(s4)
                  lbu          t5, -288(s4)
                  sltu         t6, t4, sp
                  lb           a3, -1101(s4)
                  lhu          t2, -548(s4)
                  sh           s2, -1384(s4)
                  srai         s11, s6, 26
                  sb           s9, -487(s4)
                  addi         a6, a0, 1440
                  andi         zero, s2, 1560
                  lbu          s8, -11(s4)
                  sb           a4, -1035(s4)
                  sh           a2, -290(s4)
                  sh           ra, -1352(s4) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_1+1371 #start riscv_load_store_rand_instr_stream_1
                  slti         t4, tp, -547
                  lb           a4, 9(a3)
                  and          t3, s1, a7
                  nop
                  sb           t3, -4(a3)
                  ori          s6, a5, 292
                  sltu         s6, gp, a5
                  lh           t1, 13(a3)
                  sub          s5, a0, s8
                  lbu          t1, 5(a3)
                  sb           s4, -2(a3)
                  srai         sp, a3, 15
                  addi         s9, t0, 1177
                  lbu          a0, -7(a3)
                  andi         t4, s5, 46
                  sb           a3, 2(a3)
                  lb           s3, 7(a3)
                  sub          s10, t1, gp
                  auipc        gp, 749144
                  andi         gp, s9, -95
                  lw           a4, 1(a3)
                  lb           t6, 0(a3)
                  sb           s1, -15(a3) #end riscv_load_store_rand_instr_stream_1
                  la           a3, region_0+1378 #start riscv_load_store_rand_instr_stream_5
                  sra          t5, t3, a3
                  andi         a2, s6, 510
                  sh           tp, -14(a3)
                  slt          zero, sp, ra
                  andi         s3, t6, 1898
                  nop
                  lbu          a6, -12(a3)
                  xori         s7, s6, 1477
                  addi         t5, s0, -397
                  lbu          gp, -13(a3)
                  lb           s8, -11(a3)
                  sra          a4, t5, sp
                  sb           t0, 13(a3)
                  lhu          t4, 4(a3)
                  sb           a0, -15(a3)
                  addi         t5, a1, -800
                  xor          zero, s9, t5
                  lb           a4, 13(a3)
                  sw           s10, 6(a3)
                  or           s8, gp, t1
                  lb           s8, -16(a3)
                  sb           ra, -11(a3)
                  lbu          a0, 8(a3)
                  nop
                  nop
                  andi         a4, s7, -1522
                  lbu          s0, 6(a3)
                  lb           t5, 7(a3)
                  lb           t6, 13(a3)
                  sb           a3, 11(a3)
                  sub          s11, s1, a0
                  lbu          t4, 7(a3)
                  lw           s8, -10(a3)
                  lb           s7, 16(a3)
                  slli         s11, t5, 19
                  srai         t2, t4, 19
                  srli         t6, tp, 11
                  lb           zero, -13(a3)
                  lbu          gp, 7(a3)
                  nop
                  lbu          zero, -7(a3)
                  sb           gp, -8(a3)
                  add          s9, s7, t5
                  ori          t4, a2, 1852
                  lb           a6, -1(a3) #end riscv_load_store_rand_instr_stream_5
                  bltu         t2, t2, 19f
                  sltu         s3, t6, t2
                  beq          s4, s1, 16f
                  xori         s10, s2, 40
                  bge          sp, t1, 5f
5:                bne          t1, sp, 13f
                  bge          a3, s9, 12f
                  bgeu         a7, gp, 20f
                  bne          t5, s3, 27f
                  slli         ra, s11, 26
                  sub          a1, t0, a1
                  sltiu        sp, s1, 1658
12:               and          a4, a1, s6
13:               slti         a4, t2, 591
                  srli         s5, a4, 10
                  bge          s0, s2, 33f
16:               sll          t4, s2, s3
                  srl          a5, t2, s1
                  beq          s10, t2, 21f
19:               sra          s3, t4, t1
20:               sltu         s9, s7, t4
21:               sra          a5, s1, t2
                  srai         t0, a2, 23
                  slt          s9, s4, a5
                  blt          a5, t2, 32f
                  and          a0, a4, ra
                  lui          a4, 584969
27:               auipc        s3, 954841
                  srli         t4, t3, 27
                  sll          t6, sp, a4
                  srli         a0, s10, 28
                  or           a6, t6, t0
32:               bge          s9, a1, 48f
33:               bne          s6, t5, 52f
                  nop
                  andi         s10, s5, -716
                  sll          s11, s6, t3
                  xor          t1, a4, s2
                  bne          s5, t4, 46f
                  slti         a5, t6, -839
                  sub          a3, a7, a1
                  ori          t2, a4, 2046
                  sub          t4, s10, a2
                  sub          a4, a7, s9
                  srl          a2, a7, t2
                  bltu         ra, a2, 63f
46:               addi         a6, t5, -218
                  sll          s3, t4, sp
48:               addi         s4, s9, 692
                  slli         s8, a1, 29
                  lui          ra, 857085
                  auipc        tp, 822162
52:               xor          s4, a3, s9
                  srai         ra, a3, 15
                  blt          s4, t6, 59f
                  srli         s3, s0, 11
                  slti         a0, t5, -2028
                  bltu         s6, zero, 65f
                  srl          s6, s5, s6
59:               lui          t5, 662552
                  slt          t0, a1, s1
                  sra          s4, s1, s8
                  sltu         sp, s7, tp
63:               sll          tp, t0, s11
                  and          a5, s6, a0
65:               bge          a4, a2, 73f
                  auipc        sp, 558544
                  addi         t6, s0, 736
                  andi         a0, t4, 340
                  sll          tp, a4, t4
                  sll          t1, ra, t3
                  slli         a0, s9, 26
                  bltu         s10, s6, 87f
73:               auipc        ra, 884828
                  nop
                  lui          ra, 704504
                  and          ra, a6, sp
                  andi         t5, t1, -1146
                  srai         ra, a1, 7
                  bltu         a3, t4, 90f
                  nop
                  xori         a6, s10, -689
                  lui          zero, 252174
                  xori         a0, a1, -802
                  sltu         a3, gp, s6
                  slt          s11, s1, a5
                  ori          s7, tp, 1327
87:               sltiu        a3, zero, -796
                  sltiu        t6, a2, 1890
                  and          a4, s7, ra
90:               sltiu        ra, a6, -247
                  xori         s5, t1, 1202
                  bge          tp, t0, 94f
                  sra          ra, s2, gp
94:               sra          a6, t1, t0
                  slti         t3, s1, -1203
                  slti         t2, t5, 2015
                  srl          t1, s1, t5
                  ori          gp, s4, -906
                  sltu         s7, a1, t4
                  addi         t6, s5, 1041
                  sub          a1, s2, t1
                  slli         s7, sp, 14
                  blt          s3, a5, 112f
                  srl          s5, a1, t2
                  slti         s9, s7, -1402
                  sll          s10, s7, sp
                  andi         s4, s0, -1460
                  srli         sp, s0, 28
                  bne          t5, t0, 124f
                  slli         s4, a6, 16
                  srai         a3, ra, 23
112:              xori         a5, t4, -73
                  slti         a4, t2, 210
                  bne          gp, t5, 129f
                  or           sp, a0, s3
                  bltu         s11, sp, 122f
                  lui          s5, 771746
                  ori          s10, a7, -1154
                  srai         sp, zero, 5
                  bge          t3, t3, 129f
                  sltiu        t6, t0, 471
122:              srl          s0, t3, s3
                  nop
124:              srai         a6, t3, 11
                  nop
                  beq          a7, s8, 133f
                  nop
                  srai         t1, a2, 8
129:              andi         s11, s7, -2034
                  xor          a3, s2, s4
                  srli         t1, t5, 27
                  slti         tp, s3, -493
133:              slli         a2, s3, 20
                  auipc        s7, 74058
                  sub          gp, s4, a0
                  andi         a4, s11, 618
                  srai         sp, s3, 31
                  blt          t5, sp, 148f
                  nop
                  sltiu        tp, s5, -262
                  sltu         a5, s11, sp
                  nop
                  add          s11, ra, t3
                  beq          t5, a1, 161f
                  nop
                  sltu         t1, t4, t3
                  bltu         a3, s7, 162f
148:              bge          a1, s6, 151f
                  or           s6, t0, gp
                  bgeu         t1, t5, 165f
151:              or           a5, a3, s4
                  bgeu         a6, s3, 154f
                  bgeu         s1, s0, 161f
154:              lui          t5, 246851
                  slt          s6, s2, zero
                  sltu         gp, s10, a6
                  sltu         t2, s11, a2
                  or           a4, s4, s6
                  and          s3, t0, s5
                  auipc        s5, 639836
161:              and          t1, s1, a7
162:              slt          a6, s5, s1
                  slti         s9, s9, -543
                  lui          t2, 133049
165:              slli         a1, a2, 7
                  add          s8, zero, s2
                  andi         t4, gp, 458
                  andi         tp, s5, 1704
                  bgeu         s9, s5, 175f
                  sltu         zero, t2, a1
                  sra          gp, a6, s7
                  srli         s6, s6, 25
                  srli         s6, s11, 27
                  and          s9, s7, t2
175:              srli         t6, s10, 23
                  srli         gp, t5, 14
                  sltiu        s11, s3, -1127
                  add          s10, a0, tp
                  srli         s7, s2, 16
                  srli         a5, gp, 30
                  sltiu        tp, gp, 1874
                  bge          s7, t4, 199f
                  addi         tp, s6, -1773
                  sltu         t1, s4, t1
                  srl          s10, tp, t1
                  andi         t6, sp, 1995
                  sra          a3, a4, t2
                  sltiu        sp, s6, -1180
                  sub          zero, a6, a7
                  slti         t6, s1, -452
                  sra          s4, t4, s7
                  slti         t1, s0, -873
                  sub          a3, t5, s7
                  andi         a3, t4, -1972
                  sll          s0, a6, t2
                  bne          s7, s7, 211f
                  ori          a0, s9, -1852
                  srli         t0, a7, 18
199:              sra          t1, gp, a4
                  bne          t6, s7, 219f
                  bltu         s9, t1, 202f
202:              add          s10, a4, a4
                  and          a4, s9, a3
                  bltu         s9, a3, 210f
                  sll          ra, t1, s4
                  slli         s8, a7, 0
                  blt          t5, a1, 216f
                  or           s8, t2, s2
                  ori          s8, zero, 236
210:              bltu         s9, a6, 228f
211:              addi         t6, t5, 105
                  bge          s5, s11, 227f
                  and          s4, t4, s7
                  slti         s7, s7, -1476
                  auipc        tp, 398093
216:              nop
                  lui          s7, 832441
                  srl          s0, s5, s1
219:              slti         s6, s7, -1568
                  sltiu        tp, a1, 1561
                  slti         t6, ra, -414
                  lui          s5, 210671
                  bne          sp, tp, 233f
                  nop
                  slt          zero, s6, zero
                  blt          gp, a4, 240f
227:              slt          s4, s10, a4
228:              or           s6, s2, s4
                  andi         a6, s0, -1503
                  ori          a0, a2, -1534
                  sltu         tp, t6, t3
                  xor          s10, t0, s0
233:              xori         t2, t5, -1283
                  addi         s5, s5, 1699
                  sltiu        sp, a6, 895
                  blt          a1, t0, 239f
                  beq          s8, a1, 250f
                  blt          t4, t4, 246f
239:              ori          a2, a1, 292
240:              slli         a3, t0, 22
                  lui          s7, 92165
                  or           zero, s1, t2
                  bgeu         s6, a3, 254f
                  blt          s8, a2, 259f
                  bltu         s5, t1, 250f
246:              sub          a2, t4, t5
                  xori         s5, a4, -1028
                  srli         s8, t4, 0
                  beq          a4, a0, 252f
250:              sra          s9, s2, a2
                  sltu         t1, s10, s7
252:              nop
                  blt          t0, a5, 261f
254:              slt          s9, sp, s1
                  srl          s6, a3, t4
                  slli         t2, s8, 31
                  bltu         s4, gp, 265f
                  auipc        a1, 378784
259:              or           a6, a0, a4
                  slti         s4, a6, 270
261:              slti         zero, a1, 1935
                  beq          s2, a4, 271f
                  srli         t6, t4, 16
                  blt          t6, zero, 272f
265:              or           s5, s3, s1
                  srli         t3, s5, 17
                  sltu         s3, t5, a2
                  beq          s11, s6, 275f
                  nop
                  srai         gp, s8, 23
271:              beq          s1, a0, 290f
272:              bge          s2, a4, 290f
                  lui          gp, 38259
                  bne          a4, s2, 290f
275:              bltu         s3, s10, 294f
                  addi         t3, a5, 1025
                  srli         s3, s10, 2
                  slti         t3, s11, -1698
                  srl          ra, t3, s4
                  srl          s9, t3, s9
                  ori          s6, t5, 1721
                  sra          gp, s0, a7
                  slli         s10, s4, 4
                  and          a1, zero, a5
                  slt          t3, a0, a7
                  xor          s6, a7, a3
                  auipc        t6, 590576
                  and          t1, zero, s0
                  bgeu         sp, a3, 297f
290:              slt          s3, s3, a2
                  bgeu         a1, t2, 310f
                  srli         a3, tp, 6
                  beq          sp, zero, 312f
294:              beq          s10, s9, 300f
                  bge          a0, t2, 309f
                  srai         gp, a5, 5
297:              and          s5, a4, a1
                  slt          s5, s9, s11
                  srli         t0, zero, 10
300:              sltiu        s7, s9, -1218
                  add          t1, gp, t6
                  and          t6, s9, s5
                  sra          s0, ra, gp
                  beq          zero, a3, 322f
                  bgeu         a5, s9, 313f
                  slt          s4, a4, s0
                  sub          t3, s4, zero
                  srai         s7, a4, 8
309:              srl          a3, zero, s1
310:              auipc        t3, 538701
                  sll          a1, s2, t3
312:              and          s7, t5, t4
313:              bgeu         a1, s2, 324f
                  xor          s7, s10, s3
                  bge          t4, a7, 330f
                  and          t0, s11, a5
                  slt          a4, a5, s5
                  blt          s1, s10, 327f
                  bgeu         s5, t2, 324f
                  addi         t4, t1, 652
                  slt          t0, t2, s4
322:              sltu         s5, a1, s4
                  nop
324:              auipc        ra, 840222
                  bge          a1, a5, 328f
                  srai         t2, tp, 24
327:              slti         s6, s11, 975
328:              ori          t3, t0, 1946
                  xori         zero, t4, 418
330:              slli         s11, s1, 19
                  sub          gp, s4, a0
                  srli         t6, a0, 9
                  or           a4, t6, t2
                  bge          s9, a4, 342f
                  sltiu        s5, a0, 1907
                  srai         s9, s0, 24
                  or           s5, a0, t1
                  add          t3, s4, zero
                  xor          t3, t1, a6
                  slt          s9, t0, a5
                  beq          s2, ra, 356f
342:              sub          t2, t5, s11
                  sltiu        t0, t5, -70
                  slti         s6, a2, -1512
                  srli         sp, t4, 0
                  bne          t6, s7, 359f
                  srli         s9, a2, 24
                  sltiu        zero, t2, 1770
                  srl          a5, t1, a0
                  xor          s3, tp, t1
                  bge          t3, s8, 357f
                  or           t4, a1, zero
                  slli         t1, ra, 18
                  bgeu         tp, s0, 373f
                  slti         tp, s5, 607
356:              nop
357:              slti         t4, a6, -530
                  srli         s4, s4, 19
359:              sra          t2, a3, s0
                  sll          s6, a4, a7
                  blt          zero, t2, 364f
                  auipc        a6, 486830
                  xori         s4, a0, -1469
364:              sra          s8, zero, a4
                  andi         s10, s1, -996
                  lui          t0, 484929
                  sltiu        s11, a2, -1509
                  xor          t6, s2, s9
                  bge          a3, a1, 377f
                  bne          tp, s11, 378f
                  or           t4, a5, t5
                  ori          t4, t3, -992
373:              sltu         a5, s3, s9
                  bgeu         t2, s4, 392f
                  addi         s3, s6, -1312
                  andi         s5, a2, 864
377:              and          t2, a7, t6
378:              slli         gp, s9, 9
                  srli         a0, s9, 29
                  bgeu         s9, a0, 395f
                  or           a0, a4, s1
                  andi         t2, s7, 1229
                  blt          a4, s6, 393f
                  add          a5, a2, s0
                  xor          t3, t0, a5
                  sltiu        t1, a7, -66
                  bge          s2, s4, 388f
388:              lui          s5, 769883
                  and          t3, s7, s7
                  andi         a2, a2, -859
                  addi         t5, a6, -1390
392:              ori          a2, a2, -1511
393:              bgeu         a6, s5, 410f
                  xori         a2, s3, 1339
395:              ori          a4, a2, -1632
                  blt          s2, gp, 398f
                  bge          tp, s2, 412f
398:              or           a6, a2, s4
                  bne          ra, s7, 406f
                  slli         s9, t0, 29
                  slti         s9, a5, 78
                  xor          zero, s0, t6
                  slli         a1, a1, 1
                  slt          s5, t3, a6
                  slt          s7, t6, a6
406:              or           s0, a7, s11
                  bge          t0, s10, 416f
                  and          a3, s11, a5
                  ori          s9, s4, -1414
410:              sltu         t3, zero, a1
                  sltu         ra, a3, t4
412:              srl          a1, a7, a4
                  or           sp, t2, ra
                  sra          tp, a3, t4
                  lui          s6, 806711
416:              sll          s9, gp, a6
                  slti         s8, t6, -933
                  beq          s2, a3, 434f
                  xori         gp, s4, 291
                  addi         a3, s4, 1350
                  beq          a2, s10, 436f
                  sub          s9, s0, t5
                  sltiu        ra, t4, 533
                  add          sp, s10, t6
                  slli         s3, a3, 3
                  sub          gp, t1, a2
                  sll          a5, t6, t1
                  xor          a5, t5, s1
                  addi         s8, a1, 1527
                  bltu         s1, a6, 433f
                  slli         zero, sp, 10
                  beq          t3, t0, 446f
433:              bgeu         s5, a3, 452f
434:              sub          a2, a7, a1
                  beq          t3, zero, 443f
436:              srl          t4, sp, t0
                  sub          s9, t5, a0
                  add          s11, t3, a0
                  bne          s5, s4, 458f
                  and          a5, t5, s9
                  bne          a0, s8, 456f
                  slli         s8, a6, 6
443:              sltiu        sp, a7, 1519
                  addi         a6, s6, 1246
                  srai         t5, t5, 10
446:              andi         s8, s8, 554
                  xor          ra, sp, a6
                  and          a4, s11, t1
                  or           s4, a6, t2
                  xor          a1, t0, a1
                  xor          s9, s4, s2
452:              srai         gp, s7, 24
                  bgeu         t6, a1, 468f
                  lui          s4, 519146
                  nop
456:              lui          s10, 422364
                  sra          a0, t3, s4
458:              srl          a1, t4, a1
                  slti         t3, gp, 1794
                  andi         t3, ra, 585
                  sra          t2, t3, s7
                  srl          a1, a6, t1
                  sra          t5, sp, a4
                  bge          s0, gp, 479f
                  slt          s5, a4, s8
                  bne          s10, t1, 474f
                  sra          t0, t6, s3
468:              auipc        sp, 646540
                  bltu         t3, t6, 488f
                  slli         sp, a2, 9
                  slt          t1, s1, s11
                  lui          ra, 822913
                  srl          t1, s6, gp
474:              nop
                  and          s0, t0, sp
                  xor          a6, s9, s5
                  sll          sp, sp, a2
                  bge          t3, ra, 496f
479:              blt          a4, ra, 482f
                  xor          t6, a5, a5
                  nop
482:              blt          sp, s10, 498f
                  slt          tp, sp, t2
                  bltu         tp, a0, 492f
                  slti         t4, a7, -636
                  ori          s7, t0, 645
                  bltu         s4, a5, 495f
488:              srai         s7, gp, 13
                  ori          a5, a4, 550
                  sra          s10, a3, a3
                  srai         s4, s1, 16
492:              sub          a2, a0, s11
                  beq          a5, a2, 511f
                  nop
495:              or           s7, t3, gp
496:              add          zero, s6, tp
                  blt          a6, s10, 510f
498:              sltiu        s3, s0, 860
                  sll          ra, a3, a1
                  sll          t5, t1, t2
                  nop
                  bgeu         s3, s4, 510f
                  nop
                  blt          s1, ra, 514f
                  add          s4, s5, s9
                  sub          s5, zero, s10
                  bltu         a7, s11, 513f
                  nop
                  srl          gp, a2, a2
510:              blt          s3, t5, 519f
511:              add          t0, s6, t4
                  srli         t0, gp, 20
513:              blt          a7, s9, 514f
514:              sltu         s6, a6, t3
                  bltu         a2, a7, 524f
                  srai         t0, t3, 23
                  bgeu         s9, t0, 519f
                  and          s10, t5, a1
519:              srli         tp, a1, 4
                  xori         zero, ra, -449
                  ori          a1, zero, -1275
                  blt          a7, s3, 533f
                  sltu         t3, s8, zero
524:              addi         a6, s9, 1191
                  bge          s2, zero, 531f
                  andi         s0, t4, -953
                  slli         s10, s3, 9
                  bgeu         a6, a6, 545f
                  sra          t5, tp, tp
                  blt          tp, a7, 537f
531:              slt          s5, gp, zero
                  auipc        t3, 643046
533:              and          a4, t2, s1
                  srl          s5, s9, t1
                  auipc        a6, 209156
                  and          s3, zero, ra
537:              blt          s7, s2, 542f
                  nop
                  sll          a3, sp, s2
                  bne          s1, a5, 559f
                  addi         s8, ra, -1365
542:              bne          s6, s9, 561f
                  sub          s10, ra, a3
                  bge          t4, s2, 559f
545:              auipc        s8, 349792
                  slt          s0, a3, zero
                  slli         t5, a5, 31
                  srl          s10, s6, s0
                  andi         s11, s8, 1532
                  and          a4, t6, s4
                  srli         sp, a7, 6
                  slli         t0, s9, 28
                  blt          a6, s3, 566f
                  sltiu        s11, a0, -1536
                  addi         a0, gp, 768
                  sll          sp, a1, t6
                  sra          s8, t0, s1
                  and          tp, sp, s1
559:              add          s5, a0, a3
                  xor          s8, a5, s1
561:              or           gp, t2, a1
                  slt          s4, a1, s8
                  xori         ra, s10, 1664
                  bge          a2, s9, 580f
                  bltu         t2, t5, 568f
566:              andi         t1, sp, 505
                  blt          s0, s4, 582f
568:              blt          zero, a6, 583f
                  lui          a3, 1013110
                  slli         s10, s3, 6
                  slt          s11, a5, s4
                  slli         s5, s10, 9
                  bgeu         t5, a5, 588f
                  andi         s10, a4, -95
                  andi         t0, a0, 1485
                  srli         t4, a3, 11
                  nop
                  ori          s10, s5, 852
                  sra          a2, a1, ra
580:              bge          a7, zero, 588f
                  and          s9, s3, a2
582:              sll          gp, gp, a0
583:              bgeu         s5, t3, 593f
                  slti         s4, s2, 563
                  addi         s5, s6, -519
                  bltu         s5, s7, 587f
587:              slti         s0, a1, 1764
588:              bgeu         t5, s10, 596f
                  srai         s7, a5, 20
                  auipc        a4, 484829
                  addi         a1, t0, -1245
                  slli         s4, t3, 23
593:              srai         tp, s10, 27
                  add          s5, s8, a0
                  ori          a6, ra, -1801
596:              or           s11, a7, a2
                  srai         s4, s3, 8
                  addi         s8, s8, 1406
                  slti         s3, s9, 583
                  slti         s3, s8, -1183
                  xor          a6, a5, a0
                  lui          s5, 888427
                  andi         s3, a1, 103
                  nop
                  srl          t2, s0, s1
                  srai         ra, zero, 7
                  xori         s4, a4, -1138
                  bne          a2, t3, 614f
                  slt          s10, a1, a5
                  srl          t5, gp, s8
                  sltiu        s8, a2, 846
                  add          zero, s9, tp
                  bgeu         a6, s0, 622f
614:              add          t5, s10, s0
                  slt          s5, a1, a4
                  sltu         t3, s3, t1
                  bge          s0, a4, 635f
                  slt          s4, t3, gp
                  addi         sp, s7, -325
                  bge          s5, s7, 631f
                  slli         ra, a5, 25
622:              add          tp, a5, ra
                  nop
                  nop
                  blt          t4, t6, 627f
                  sub          a0, s7, s5
627:              xor          a1, s4, sp
                  or           t4, t5, t0
                  sub          s8, t6, s9
                  sra          a4, sp, t4
631:              bgeu         a2, gp, 648f
                  nop
                  slti         s5, gp, 1150
                  nop
635:              slli         t1, s0, 14
                  bltu         s5, a1, 645f
                  bltu         s1, ra, 645f
                  slt          gp, a3, a5
                  ori          s0, s0, 201
                  sra          t3, s4, t1
                  sltu         a3, t4, t2
                  addi         s7, s1, 307
                  bgeu         sp, zero, 651f
                  and          a6, s6, s3
645:              sra          s6, a6, a5
                  xor          a4, a0, s11
                  sub          a5, a3, a7
648:              sub          sp, gp, t4
                  lui          a3, 638537
                  or           gp, s7, s1
651:              sltiu        a1, s1, -1820
                  bltu         a7, s7, 659f
                  bltu         t2, gp, 656f
                  or           t1, a1, s9
                  bge          t5, t1, 674f
656:              bltu         t3, s4, 674f
                  sltu         s8, a2, gp
                  ori          ra, a0, 203
659:              srai         s10, sp, 12
                  slli         a0, gp, 5
                  auipc        a4, 757326
                  sll          tp, t3, tp
                  sltiu        s9, a4, -9
                  bltu         sp, s5, 669f
                  srli         s11, s3, 20
                  auipc        t3, 577034
                  xor          gp, a2, zero
                  blt          s10, s4, 676f
669:              bltu         t5, t1, 683f
                  andi         s9, s8, 991
                  slt          sp, gp, a5
                  ori          a1, sp, 1869
                  xori         tp, zero, 557
674:              slli         sp, s8, 10
                  sra          s7, t4, s2
676:              addi         ra, t5, 1715
                  and          t6, s3, t3
                  and          ra, s4, a0
                  add          t4, a6, t2
                  addi         t6, a7, 464
                  srl          s4, a0, a7
                  srl          a4, a4, s3
                  nop
                  sll          s0, s9, s4
                  bne          s8, s6, sub_5_j8 #branch to jump instr
                  srl          s10, s6, t1
                  add          t4, a3, sp
sub_5_j8:         jal          ra, sub_6 #jump sub_5 -> sub_6
                  xor          a3, zero, tp
                  or           t4, gp, a5
                  add          sp, a4, a4
                  and          s7, a1, ra
                  sra          s5, sp, a6
683:              xor          s7, a6, s2
                  andi         s5, s10, -1396
                  sub          t5, s4, a0
                  ori          ra, sp, -1782
                  sub          s8, s6, t2
                  bltu         t5, s3, 694f
                  lui          t0, 441394
                  sra          s9, s11, s5
                  lui          s9, 603746
                  nop
                  addi         tp, t6, 1864
694:              auipc        t4, 178770
                  sltu         t3, a0, zero
                  sub          t5, t6, a1
                  slli         s5, s6, 24
                  bgeu         s5, a5, 704f
                  or           a4, s8, s5
                  and          t2, t0, tp
                  xor          s5, t4, t1
                  or           t5, a4, a0
                  slli         tp, s2, 17
704:              bne          a6, s6, 712f
                  srl          s7, t5, s4
                  lui          a1, 819281
                  bgeu         a1, s4, 726f
                  andi         a3, a7, 2020
                  nop
                  beq          s5, s3, 727f
                  bge          a5, a5, 726f
712:              srai         t6, a3, 23
                  lui          t2, 119833
                  srli         t0, a6, 17
                  add          t4, s8, zero
                  bgeu         s5, zero, 718f
                  andi         ra, s2, -1092
718:              bge          t0, a6, 726f
                  bltu         t3, t1, 729f
                  sll          a5, t2, s5
                  addi         tp, s1, -1576
                  nop
                  ori          zero, s11, -1805
                  beq          t6, s5, 732f
                  auipc        t5, 289564
726:              srli         a6, a0, 14
727:              ori          t4, zero, -487
                  add          s7, s11, s11
729:              slli         gp, t3, 10
                  bgeu         tp, a6, 733f
                  xori         s11, sp, -1402
732:              srl          a1, gp, s9
733:              addi         s6, s6, -1949
                  sub          a2, s7, a5
                  auipc        s10, 147923
                  ori          a0, sp, -947
                  blt          s4, t2, 753f
                  sra          t6, s1, tp
                  sltiu        s4, s1, 1159
                  bne          zero, a2, 759f
                  slti         s7, a6, -565
                  or           tp, t5, ra
                  auipc        a0, 833661
                  auipc        s11, 735961
                  or           a1, a5, sp
                  srl          s7, zero, t1
                  lui          ra, 526809
                  blt          s6, t0, 766f
                  bge          tp, a0, 755f
                  slti         a5, gp, 1997
                  sll          t4, ra, tp
                  sltiu        zero, s2, 363
753:              xor          s3, s9, t2
                  ori          gp, s9, 152
755:              and          t4, s3, a3
                  blt          sp, t1, 767f
                  slt          s11, a7, tp
                  xori         gp, s6, -1787
759:              auipc        tp, 329853
                  srai         t1, sp, 25
                  sub          zero, a1, a0
                  lui          s8, 1002569
                  sll          a0, s3, t0
                  xori         s6, t1, -752
                  addi         tp, sp, -1118
766:              blt          a0, t4, 767f
767:              bne          t1, s1, 782f
                  slt          sp, a5, s7
                  blt          s1, s8, 778f
                  sltu         s6, zero, a3
                  srai         a5, tp, 30
                  sra          s7, s4, s8
                  xori         a3, s3, 1886
                  ori          t6, t0, -953
                  auipc        a1, 834256
                  bltu         t6, gp, 791f
                  sltu         a2, s6, t2
778:              slti         s3, s0, 1866
                  blt          s5, sp, 794f
                  slli         a2, t0, 17
                  xor          s5, gp, t0
782:              and          s3, s2, s8
                  bge          s8, a3, 791f
                  slti         t3, s1, -315
                  srai         s6, s6, 10
                  bgeu         s2, zero, 800f
                  bge          s3, s0, 800f
                  sltu         gp, s1, s9
                  beq          a4, t0, 798f
                  addi         s3, a4, -462
791:              slti         t1, s9, 767
                  andi         s8, s1, -249
                  bne          t6, t2, 812f
794:              sub          t6, t3, sp
                  bne          gp, s1, 802f
                  sltu         sp, s8, a0
                  bne          s9, a1, 805f
798:              ori          s7, tp, 617
                  ori          t5, s11, -1321
800:              slti         a3, ra, 53
                  auipc        a4, 725129
802:              andi         s5, zero, 179
                  bne          a2, s8, 808f
                  ori          a3, s3, 1059
805:              andi         t4, a1, 1824
                  slti         s4, a4, -1169
                  bgeu         t3, a2, 825f
808:              srli         t0, s10, 3
                  auipc        tp, 22555
                  sub          a5, ra, a5
                  or           a6, zero, a6
812:              srl          t0, t6, s3
                  andi         s10, t4, 1921
                  auipc        s9, 767747
                  la           s11, region_1+1120 #start riscv_load_store_rand_instr_stream_4
                  lbu          ra, 227(s11)
                  and          sp, s4, s4
                  lhu          gp, -162(s11)
                  sll          s6, s0, tp
                  lhu          t4, 8(s11)
                  slli         gp, a0, 7
                  slti         a4, t1, -428
                  lhu          gp, 122(s11)
                  lh           s7, -192(s11)
                  sra          ra, a1, a1
                  lb           s4, 111(s11)
                  lbu          t1, -186(s11)
                  sh           a2, -56(s11)
                  sb           a2, 68(s11)
                  sltu         sp, s6, a1
                  lb           t5, 205(s11)
                  sb           t3, -58(s11)
                  sb           s10, -188(s11)
                  slt          s5, s3, a1
                  lui          a1, 1037686
                  sh           s6, 6(s11)
                  sb           s3, -178(s11)
                  lh           t4, 96(s11)
                  lui          a2, 384381
                  lb           s10, -193(s11)
                  lh           t5, 94(s11)
                  lb           s3, 132(s11)
                  sb           t2, -19(s11)
                  sb           s10, 59(s11)
                  lb           t2, 94(s11)
                  ori          t1, a2, 1351
                  srli         a0, a2, 26
                  lbu          s3, 246(s11)
                  lb           a6, -95(s11)
                  lh           s9, 30(s11)
                  sltiu        a6, s7, -449
                  lh           s6, -188(s11)
                  sltu         t3, t5, gp
                  sltiu        a6, s4, 1878
                  slt          a3, t4, s7
                  sub          s10, t4, a3
                  lhu          t1, 14(s11)
                  lh           zero, 60(s11) #end riscv_load_store_rand_instr_stream_4
                  srl          s11, s11, t6
                  bgeu         t0, a6, 819f
                  sra          a0, s3, a1
                  and          s8, a7, s2
819:              bgeu         s9, gp, 832f
                  slti         s0, gp, 1011
                  nop
                  sll          t5, s8, a7
                  slt          s7, t1, t2
                  slti         t5, s2, -167
825:              nop
                  bge          t1, a5, 837f
                  slt          s10, s1, s10
                  slt          t4, a5, t1
                  andi         a3, tp, 1175
                  beq          s5, a6, 838f
                  xori         t1, a2, -2010
832:              bgeu         a3, s1, 847f
                  bge          t0, zero, 835f
                  slli         ra, a0, 22
835:              bne          s3, t3, 850f
                  or           s9, s3, s9
837:              and          s3, t0, s11
838:              sll          a4, s3, a1
                  bltu         s0, zero, 849f
                  xor          s10, s10, a6
                  slti         t2, ra, -1204
                  sub          gp, s11, tp
                  sll          t5, a3, s1
                  nop
                  andi         t5, a3, -1579
                  slt          s7, s2, sp
847:              srai         a3, s4, 31
                  nop
849:              xori         gp, t2, 130
850:              add          s7, a5, s0
                  or           t4, a5, s10
                  xori         a3, s8, -47
                  or           t5, zero, t1
                  srli         a5, a6, 17
                  xor          t1, a6, s2
                  ori          t2, s4, 485
                  xor          t1, tp, s6
                  bne          s10, a0, 869f
                  sll          a3, t1, a5
                  sra          t5, t0, s1
                  sll          tp, sp, ra
                  blt          a2, t5, 869f
                  sltu         zero, t5, zero
                  and          a4, a4, gp
                  sra          s11, zero, a6
                  blt          t1, s1, 869f
                  sll          t4, s5, s9
                  bltu         s10, sp, 869f
869:              sltu         a0, tp, t3
                  srl          s9, t0, s10
                  srli         t0, gp, 7
                  lw           ra, 4(s2)
                  and          a3, a7, s2
                  andi         s6, sp, 1530
                  xori         s4, s1, 18
                  addi         s2, s2, 40
                  slli         s11, t5, 1
1139:             addi x11, x1, 1
1139:             jalr x11, x11, 0
sub_1:            addi         s2, s2, -32
                  andi         t4, tp, 1252
                  sw           ra, 4(s2)
                  and          t0, a0, sp
                  slli         t0, t0, 3
                  or           s4, t6, t6
                  lui          gp, 755677
                  xor          s4, a7, t4
                  add          s4, zero, ra
                  slti         s9, s8, 1855
                  addi         s4, s11, 284
                  slli         t5, t6, 3
                  nop
                  ori          tp, a7, 696
                  slti         t1, zero, -196
sub_1_j4:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  la           sp, region_1+48 #start riscv_load_store_rand_instr_stream_1
                  lb           s9, 1641(sp)
                  lbu          gp, 602(sp)
                  sb           s8, 822(sp)
                  and          s8, a4, s8
                  lbu          s3, 591(sp)
                  sb           s2, 1026(sp)
                  slli         zero, s11, 4
                  sh           s7, 374(sp)
                  sb           tp, 704(sp)
                  lbu          t1, 741(sp)
                  lui          s11, 144754
                  lb           a2, 1679(sp)
                  slt          a2, s5, s6
                  slli         a6, t0, 26
                  xor          ra, s0, a2
                  slti         s0, t1, 1169
                  sltu         t2, s0, s8
                  lhu          a5, 152(sp)
                  lh           t3, 228(sp)
                  lb           s11, 1163(sp)
                  sra          s0, t6, t6
                  lb           zero, 1691(sp)
                  lbu          a3, 107(sp)
                  sb           s4, 1201(sp)
                  lb           t1, 1227(sp)
                  sb           s10, 1020(sp)
                  lbu          s8, 1822(sp)
                  sb           a0, 1883(sp)
                  xor          s11, a3, s1
                  andi         s7, t4, 666
                  sb           s0, 1439(sp)
                  sb           s10, 1631(sp)
                  sltiu        a2, s3, 1403
                  lh           a4, 1602(sp)
                  sb           zero, 720(sp)
                  sb           a5, 918(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_0+1090 #start riscv_load_store_rand_instr_stream_0
                  slt          t2, s3, sp
                  sra          t5, s1, a6
                  lui          tp, 587437
                  auipc        s4, 459737
                  xori         a5, t0, 1987
                  srai         s8, gp, 10
                  srli         s3, gp, 27
                  lb           a0, -229(s11)
                  andi         s5, ra, 974
                  sltu         a5, s7, t3
                  slli         s4, t5, 21
                  lb           t5, -111(s11)
                  or           s10, s6, s11
                  andi         a2, t0, -522
                  lui          t3, 900899
                  sra          s4, t4, a6
                  sh           zero, -218(s11)
                  lhu          t3, 186(s11)
                  sub          t6, a0, tp
                  xori         s10, t0, -1848
                  sb           t0, -25(s11)
                  sb           s4, -241(s11)
                  and          s9, a7, sp
                  ori          zero, s4, -568
                  lb           gp, -139(s11)
                  lbu          t0, 63(s11)
                  lb           zero, 43(s11)
                  andi         s6, a6, 1381
                  lb           a1, 57(s11) #end riscv_load_store_rand_instr_stream_0
                  slt          t4, s6, ra
                  add          zero, a4, a3
                  or           s3, t5, tp
                  xori         s11, a0, 1120
                  bge          tp, s9, 10f
                  sub          s10, sp, a4
                  bltu         a0, a4, 7f
7:                slt          a6, s1, a5
                  auipc        t6, 736485
                  bge          t2, a2, 20f
10:               add          ra, s11, s6
                  slt          s9, t1, t6
                  lui          s8, 701392
                  xori         a5, t4, 858
                  srl          t6, s1, gp
                  beq          s10, s10, 22f
                  srai         a0, a0, 11
                  bltu         s2, ra, 30f
                  auipc        s10, 820872
                  xori         t5, s2, -1807
20:               srli         t3, a2, 24
                  sub          tp, t4, a2
22:               nop
                  slli         a6, sp, 13
                  sra          a0, s4, t0
                  lui          t6, 1015241
                  slti         sp, a0, -229
                  and          s6, a5, zero
                  sub          t6, zero, t1
                  add          s3, a1, t6
30:               xori         s0, gp, 1021
                  blt          t2, s2, 37f
                  ori          t1, s4, -1179
                  bgeu         a1, t6, 44f
                  xori         a1, a6, -2023
                  ori          s6, a4, 811
                  and          t5, zero, t4
37:               sra          s11, a7, zero
                  nop
                  srli         s7, a0, 19
                  srai         s9, a2, 0
                  and          s10, s1, s9
                  lui          a5, 154110
                  bne          s0, s0, 49f
44:               xori         t4, t5, -184
                  sltu         gp, s10, sp
                  andi         a0, t3, 566
                  auipc        s11, 214987
                  addi         s8, tp, 655
49:               slli         t2, s11, 31
                  xor          a5, s5, t0
                  and          zero, t1, a5
                  sra          sp, t1, a2
                  ori          s5, s1, 245
                  bne          t1, s0, 64f
                  add          s7, a2, s3
                  bge          a4, t4, 64f
                  and          s3, s11, s4
                  addi         s4, tp, 1516
                  srai         t3, s5, 13
                  lui          s4, 1027125
                  srli         tp, s1, 30
                  sub          s4, a4, a3
                  sub          t3, a0, t5
64:               nop
                  andi         a2, zero, -1677
                  beq          s8, s0, 69f
                  srl          t0, a4, a5
                  andi         ra, a2, 246
69:               bgeu         t3, sp, 87f
                  blt          t2, t3, 79f
                  or           s4, t3, t1
                  srli         s8, a2, 9
                  andi         s5, a4, 1360
                  srai         a1, a4, 13
                  slti         t2, s9, 684
                  srai         a0, t4, 28
                  sub          sp, s10, a3
                  xor          a2, a2, t0
79:               add          zero, s5, a4
                  bgeu         ra, a1, 92f
                  srli         t2, a5, 4
                  and          t2, s10, t4
                  bgeu         t5, s6, 96f
                  xor          ra, a1, t0
                  xori         ra, a2, -334
                  bne          t6, t4, 89f
87:               slt          s10, ra, s2
                  beq          s4, s3, 93f
89:               nop
                  blt          ra, s3, 91f
91:               srli         s10, gp, 17
92:               bge          s0, tp, 112f
93:               or           s3, a0, a2
                  blt          a2, t1, 104f
                  ori          t6, t4, -632
96:               or           s5, a7, a6
                  bgeu         a2, a6, 104f
                  addi         tp, s3, -673
                  xori         gp, a1, -433
                  or           t1, t4, t6
                  srli         t6, s4, 5
                  slli         t6, ra, 5
                  srai         a5, t4, 15
104:              srl          s8, a5, a0
                  ori          s11, ra, 1116
                  slti         s3, zero, -130
                  auipc        s7, 286094
                  xori         t4, t0, 769
                  addi         zero, t4, -1232
                  sltiu        s10, t3, -1992
                  sra          zero, s3, a2
112:              sltiu        t3, a6, 707
                  bne          a4, s7, 114f
114:              bge          gp, t2, 122f
                  xori         a1, s8, -881
                  slt          a3, zero, a6
                  blt          s10, s7, 137f
                  andi         a2, t1, 1662
                  srai         s7, a0, 31
                  slt          s10, t5, s6
                  srai         a5, t6, 28
122:              bne          s5, t2, 131f
                  blt          s0, tp, 125f
                  slt          gp, s8, t3
125:              slti         a3, s7, -477
                  slli         a0, t6, 13
                  add          t3, t4, t0
                  slli         t1, a7, 8
                  srai         s8, gp, 29
                  xor          a2, a1, zero
131:              addi         s9, a5, 879
                  srl          t4, s1, ra
                  srai         s5, a2, 11
                  srai         s4, t4, 2
                  ori          t2, s0, -673
                  bgeu         t3, s9, 154f
137:              add          sp, s8, s6
                  bge          s2, s6, 139f
139:              sltiu        t2, tp, -1389
                  bltu         t2, a0, 150f
                  sub          s6, t3, a1
                  auipc        t4, 453385
                  slti         t1, s6, -1257
                  or           s8, gp, a3
                  srai         s10, a0, 13
                  sra          t2, t4, a5
                  xori         a3, s4, -191
                  slt          ra, t1, t3
                  bltu         s1, sp, 162f
150:              bltu         zero, tp, 157f
                  srli         a6, ra, 29
                  bgeu         s6, zero, 162f
                  lui          t5, 367967
154:              bge          s11, s4, 164f
                  nop
                  andi         s9, s9, -2005
157:              bne          t5, s7, 158f
158:              bne          s9, t2, 178f
                  slt          s0, s5, a3
                  slti         sp, s5, 471
                  blt          a4, ra, 179f
162:              sltiu        a6, s3, -131
                  sltiu        t4, s3, -1024
164:              blt          t1, s1, 165f
165:              blt          gp, s5, 171f
                  sll          a2, a3, s2
                  sltiu        t1, t6, 1017
                  sll          s8, s5, t3
                  slli         a1, t1, 5
                  andi         a4, s11, 1507
171:              ori          t3, s2, 541
                  xor          s4, s6, s2
                  bltu         t0, a4, 174f
174:              or           a0, a3, a0
                  nop
                  add          s5, s0, t1
                  srai         t1, s7, 27
178:              slli         a0, t3, 6
179:              slti         t4, t4, 567
                  auipc        a0, 91367
                  and          s0, s4, t4
                  srl          t3, t1, s3
                  lui          a4, 27970
                  sltiu        s11, zero, -1851
                  lui          a3, 354066
                  slt          s11, zero, t6
                  and          s4, s7, t2
                  slt          t2, a6, s2
                  xor          s6, a4, gp
                  sltu         tp, a2, t6
                  bge          s11, sp, 194f
                  slt          t2, t6, t1
                  srli         s7, a2, 26
194:              srl          zero, sp, s1
                  bne          a1, tp, 203f
                  sltiu        a1, s5, -644
                  ori          t1, a6, -1166
                  bgeu         a4, t2, 207f
                  sltiu        t3, ra, 1104
                  beq          a4, a7, 203f
                  andi         t1, s3, -176
                  sltiu        s3, s7, -491
203:              sll          s3, s2, s11
                  add          gp, s2, zero
                  slti         a0, s2, -1885
                  slt          s7, a0, s7
207:              beq          ra, zero, 213f
                  srl          s9, s7, s11
                  andi         s9, s11, 392
                  nop
                  bne          s9, sp, 213f
                  sltiu        t0, a4, -565
213:              bltu         a0, s11, 231f
                  srli         s0, s1, 11
                  auipc        a5, 499414
                  lui          a4, 867403
                  sra          t6, t6, a2
                  sub          t5, s1, s8
                  addi         s0, a3, -1666
                  sub          t4, t5, s0
                  xor          a2, a2, sp
                  add          t0, s3, t6
                  bltu         s3, a5, 230f
                  andi         s7, s3, -468
                  ori          t3, s5, 307
                  srli         s7, a1, 4
                  sltu         s8, t5, s5
                  bltu         s1, s8, 241f
                  bge          t3, t0, 242f
230:              sll          a4, a4, t2
231:              bltu         gp, a1, 242f
                  or           a2, a7, s5
                  srl          a4, a1, t0
                  sltiu        s5, a7, 1832
                  srli         ra, a2, 16
                  slt          s7, s5, a6
                  add          s0, ra, s5
                  addi         t2, a4, -1728
                  srl          s8, s1, tp
                  sltu         a4, t0, zero
241:              lui          a5, 992823
242:              blt          s0, s1, 255f
                  bgeu         tp, gp, 251f
                  srai         s10, sp, 21
                  sltu         s7, t5, a5
                  slti         s5, t0, 495
                  sltu         a4, ra, a7
                  srl          a6, t5, t3
                  slti         a5, s3, 778
                  bne          s0, s7, 251f
251:              ori          a4, a1, -306
                  slt          s8, s0, ra
                  add          t0, a7, ra
                  xor          s0, s3, s8
255:              bge          s2, s8, 265f
                  beq          s2, s10, 265f
                  srai         a0, zero, 2
                  srai         t1, sp, 31
                  slt          t0, s11, s0
                  sra          s7, a2, a5
                  sub          a2, gp, s10
                  and          t6, zero, s3
                  add          tp, gp, a0
                  nop
265:              sub          sp, s6, a6
                  or           s0, s9, s7
                  and          t2, a6, a2
                  bgeu         t3, s9, 274f
                  srai         a5, a0, 29
                  sltiu        t0, t4, 127
                  srai         zero, ra, 18
                  slti         a1, a0, -1612
                  blt          t6, t2, 284f
274:              beq          t0, s6, 294f
                  bltu         t1, s2, 287f
                  xori         s6, a5, 887
                  nop
                  andi         a2, s1, 1204
                  slli         s0, a7, 13
                  srai         a4, s8, 8
                  ori          s4, s0, -279
                  srai         a4, s0, 14
                  and          ra, a7, a0
284:              sll          a5, s2, s3
                  bge          t2, t3, 290f
                  slt          s8, a3, a1
287:              bltu         t4, gp, 295f
                  andi         s11, s3, -1111
                  slli         a6, a0, 9
290:              auipc        a4, 764579
                  srli         a2, ra, 29
                  and          gp, s6, a5
                  ori          s6, a3, -1246
294:              auipc        t5, 7173
295:              sra          s11, zero, tp
                  beq          a7, sp, 309f
                  auipc        t0, 936474
                  beq          s0, t6, 311f
                  add          t6, t4, s5
                  blt          s4, a1, 310f
                  ori          a6, a2, 1496
                  sub          zero, t4, t2
                  la           s6, sub_2
                  srli         zero, s11, 29
                  add          a3, ra, a6
                  sub          s11, s3, s10
                  nop
                  sra          a3, s1, s10
                  slt          zero, s10, zero
                  addi         s6, s6, 861
                  srai         sp, t0, 0
sub_1_j3:         jalr         ra, s6, -860 #jump sub_1 -> sub_2
                  srli         s7, t3, 1
                  sltiu        s7, s11, 1483
                  xor          s9, t6, s11
                  bne          t3, tp, 315f
                  bne          s2, t3, 313f
                  beq          s10, t3, 319f
309:              add          t6, t2, a3
310:              sltiu        s10, gp, -681
311:              sltiu        a2, s2, -1902
                  sltiu        t5, a3, -1554
313:              auipc        a4, 949159
                  sra          zero, s0, t1
315:              nop
                  andi         a4, gp, 1784
                  sll          s9, s2, t2
                  andi         s11, t2, 561
319:              xori         a0, s3, 2041
                  slt          t2, t1, s7
                  srai         a6, s11, 22
                  sltu         tp, t0, t5
                  xori         t4, t5, -99
                  slli         a1, s1, 11
                  add          s7, s8, t5
                  xori         s7, t1, 486
                  sltu         t5, a7, s10
                  beq          a3, s6, 338f
                  slti         s0, s9, -800
                  slti         s7, s9, 1479
                  slt          s8, t0, s4
                  sltu         s9, s6, s10
                  srai         a3, s4, 10
                  bgeu         a5, sp, 345f
                  srli         t5, s7, 18
                  xori         s11, a2, -931
                  andi         t2, ra, 131
338:              ori          a0, a0, 858
                  bge          a3, s5, 340f
340:              bne          s2, ra, 352f
                  nop
                  bne          zero, t4, 345f
                  sltu         a3, a0, zero
                  addi         s3, a7, 1735
345:              bge          t5, s6, 363f
                  slti         t6, t5, -2033
                  bltu         s10, sp, 353f
                  sra          t6, a7, s4
                  sub          a4, t5, s11
                  sltiu        a3, s9, 83
                  sltiu        a3, s8, 871
352:              slti         a4, zero, -1117
353:              sll          sp, t2, sp
                  slti         s5, gp, -1400
                  and          sp, a7, a5
                  sltu         s5, t5, sp
                  ori          a2, s4, -686
                  andi         gp, a5, -1118
                  sra          t0, a0, gp
                  bgeu         sp, tp, 361f
361:              add          s5, s11, t0
                  srl          t6, a7, s10
363:              sltiu        s3, a7, -1105
                  srl          t5, s5, gp
                  bltu         t3, s6, 367f
                  bltu         a7, a3, 367f
367:              ori          t1, a4, -1996
                  add          t0, a3, s5
                  srai         a4, s6, 25
                  srl          a2, a2, a4
                  xori         t0, t5, 1166
                  lw           ra, 4(s2)
                  and          sp, s6, t5
                  addi         s2, s2, 32
                  auipc        s3, 819879
                  or           a6, a6, s9
470:              addi x3, x1, 1
470:              jalr x3, x3, 0
sub_8:            slt          s9, a0, sp
                  beq          sp, ra, sub_8_stack_p
                  slt          s9, t4, a3
sub_8_stack_p:    addi         s2, s2, -28
                  srli         s5, a1, 4
                  sw           ra, 4(s2)
                  ori          a4, a1, -1642
                  la           s0, region_1+788 #start riscv_load_store_rand_instr_stream_0
                  lbu          s11, 411(s0)
                  ori          ra, a0, 1524
                  lb           t0, 37(s0)
                  nop
                  lbu          s10, 159(s0)
                  lbu          t3, 1060(s0)
                  sb           a7, 314(s0)
                  add          s7, ra, s7
                  srli         a4, s10, 11
                  sra          s6, a3, s9
                  srli         ra, s6, 22
                  andi         t5, tp, 759
                  srai         s10, a1, 8
                  lb           t5, 639(s0)
                  sltiu        a5, s10, 1628
                  sb           t0, 477(s0)
                  sb           s8, 213(s0)
                  sb           s9, 544(s0)
                  auipc        s3, 131247
                  lb           sp, 1149(s0)
                  lb           t5, 159(s0)
                  sb           a4, 387(s0)
                  srai         t5, t3, 25
                  lb           a5, 741(s0)
                  lb           a5, 377(s0)
                  sb           a7, -716(s0)
                  slli         s11, gp, 8
                  srli         s4, s7, 19
                  srli         s5, t5, 21
                  lh           a3, -422(s0)
                  lb           s9, -269(s0)
                  lb           a5, -519(s0) #end riscv_load_store_rand_instr_stream_0
                  la           s4, region_1+1970 #start riscv_load_store_rand_instr_stream_1
                  slli         t3, sp, 15
                  slti         a1, s8, -813
                  lb           t0, 9(s4)
                  slli         zero, a7, 26
                  slti         zero, s5, 720
                  sb           t3, 7(s4)
                  sll          s10, s3, s4
                  sll          a6, s7, zero
                  srli         t1, s7, 7
                  slli         t3, s5, 2
                  lbu          s7, 16(s4)
                  lw           t2, -6(s4)
                  srli         gp, s0, 31
                  srai         t1, s4, 28
                  lbu          a5, 3(s4)
                  lb           a2, -12(s4)
                  lbu          sp, -2(s4)
                  sh           s4, 0(s4)
                  sh           t6, -12(s4)
                  sltiu        t3, zero, -1766
                  sb           s8, -13(s4)
                  lhu          a6, -12(s4)
                  lhu          s7, -6(s4)
                  sb           a4, -12(s4)
                  add          a0, sp, s4
                  add          t1, s3, s6
                  sb           a1, -9(s4)
                  srli         s11, tp, 17
                  lb           s8, 3(s4)
                  srai         s3, a0, 6
                  auipc        a6, 1009378
                  sb           s1, -3(s4)
                  srli         a6, t4, 29
                  srl          s8, s0, tp
                  lb           s5, 12(s4)
                  nop
                  lbu          s7, -16(s4)
                  lb           t1, -9(s4)
                  lbu          t0, 3(s4) #end riscv_load_store_rand_instr_stream_1
                  lui          a6, 855624
                  nop
                  xori         a2, s9, 1492
                  srli         t2, s4, 11
                  srai         a4, gp, 17
                  sll          ra, t2, s7
                  sra          s0, tp, a4
                  bne          a7, s7, 20f
                  slt          s5, a7, tp
                  sltu         zero, t2, a4
                  blt          s0, s3, 18f
                  sltu         a5, s4, s11
                  bne          s7, a4, 17f
                  slti         s10, a6, 204
                  or           t0, s5, s4
                  sltiu        s5, s10, -1249
                  srli         t6, a5, 23
17:               xori         zero, zero, 1328
18:               beq          a3, s11, 22f
                  andi         s8, s3, 190
20:               and          zero, s4, a5
                  bltu         a0, t5, 29f
22:               xori         t2, s7, 375
                  addi         t1, a1, -1350
                  srli         s11, a3, 11
                  and          a1, t1, tp
                  sltiu        s11, s11, 2007
                  and          t5, ra, t2
                  srai         a6, s8, 8
29:               ori          sp, s0, -1011
                  add          gp, t4, s3
                  sra          tp, a4, a4
                  xor          s6, a2, t6
                  bge          ra, a6, 35f
                  sltu         s0, a4, t4
35:               sra          a2, a1, t2
                  sll          s3, t1, tp
                  auipc        t4, 273337
                  sll          s6, s11, tp
                  lui          s4, 474124
                  sltu         t3, s0, a7
                  sll          t0, ra, tp
                  andi         tp, s8, 256
                  srl          t5, t0, s6
                  bne          s0, s1, 54f
                  blt          a2, a6, 50f
                  sub          a0, s3, a2
                  xori         s9, zero, 754
                  bge          t1, t2, 68f
                  xori         zero, a1, 33
50:               ori          s9, t3, 269
                  srl          a6, a5, t2
                  andi         s7, s9, -1595
                  xor          s8, a0, s5
54:               bgeu         s8, sp, 71f
                  blt          a4, a6, 75f
                  sltu         s6, s10, gp
                  sll          t1, t0, tp
                  andi         ra, s1, -1202
                  bltu         a7, s10, 62f
                  srai         s4, s11, 29
                  sltiu        a6, s10, -1654
62:               beq          t3, tp, 82f
                  sltiu        s0, a2, -927
                  sltiu        sp, a0, -1740
                  sub          tp, s0, s9
                  slti         t4, s5, 550
                  bne          t2, s1, 87f
68:               bltu         ra, ra, 81f
                  bltu         s3, t2, 74f
                  xor          a0, s0, a7
71:               and          gp, s6, ra
                  slt          a6, t0, s9
                  sltu         s5, s2, a3
74:               addi         s9, a4, -553
75:               srl          t6, t3, a5
                  sra          s9, a1, a1
                  auipc        a1, 300636
                  add          s11, s8, s4
                  auipc        a2, 432149
                  bgeu         t1, s0, 85f
81:               or           s7, ra, t5
82:               xori         a6, s9, -1494
                  nop
                  auipc        s11, 789306
85:               srai         ra, s11, 0
                  or           sp, a5, a4
87:               xor          a0, s3, s7
                  bne          s0, s10, 104f
                  ori          t1, a1, -1101
                  andi         s3, t0, -748
                  xor          s6, a3, a6
                  sub          s10, s5, s2
                  bge          s7, a2, 95f
                  bgeu         a3, s10, 110f
95:               and          zero, tp, s10
                  bgeu         zero, t4, 104f
                  lui          t4, 611701
                  nop
                  blt          sp, t6, 109f
                  srai         sp, t0, 16
                  sltiu        t5, a4, 71
                  xori         t6, s4, 389
                  and          s4, t3, t1
104:              sub          a2, a2, t1
                  and          zero, t1, t3
                  bne          t6, tp, 125f
                  bgeu         s4, a6, 118f
                  lui          tp, 261315
109:              bltu         zero, gp, 111f
110:              auipc        s4, 980188
111:              beq          s1, a0, 128f
                  andi         s3, sp, 235
                  sltu         t3, s9, t5
                  auipc        gp, 721284
                  srai         t3, a3, 18
                  bltu         zero, s1, 130f
                  sltiu        a5, a0, -83
118:              xori         gp, s1, 7
                  add          s9, t1, t5
                  sltu         t6, t0, t6
                  lui          a0, 696033
                  nop
                  xor          a1, t6, s3
                  lui          s11, 343237
125:              beq          a0, ra, 129f
                  sltiu        a1, a7, -704
                  sltiu        s8, t1, -508
128:              slti         a5, t0, 1633
129:              addi         s11, s2, -190
130:              srai         a1, gp, 26
                  lui          a6, 804695
                  lui          t5, 82321
                  beq          ra, t4, 142f
                  or           a1, s9, t6
                  beq          a5, tp, 148f
                  slli         s6, t6, 6
                  or           s11, s8, zero
                  auipc        a6, 445658
                  ori          t2, a6, -59
                  srl          s11, a1, s10
                  slli         a5, a4, 5
142:              sll          ra, t5, a0
                  slt          a6, t4, t0
                  auipc        s3, 367547
                  bge          s9, ra, 148f
                  bge          a7, t6, 154f
                  beq          s8, s0, 161f
148:              sub          a3, t1, a1
                  sll          t6, ra, t2
                  sltiu        a3, gp, -1440
                  sltiu        sp, a7, 1244
                  bltu         s2, s2, 156f
                  andi         a2, s4, 552
154:              sra          s11, a7, s10
                  bgeu         s2, a7, 171f
156:              auipc        t4, 902422
                  andi         a6, t3, -1450
                  beq          ra, t5, 163f
                  nop
                  ori          sp, sp, -528
161:              lui          s10, 561580
                  xor          a6, s6, sp
163:              bge          t0, t3, 180f
                  andi         t6, t1, 1812
                  blt          t5, t6, 185f
                  sub          t4, s3, tp
                  or           t3, zero, zero
                  andi         t6, s5, 656
                  bgeu         t4, a1, 182f
                  and          t5, t0, s8
171:              srli         t1, s7, 20
                  sra          s4, s1, a3
                  xor          a3, s5, a5
                  srai         sp, s1, 17
                  and          s6, s2, zero
                  bge          s4, t2, 181f
                  andi         s3, s9, -77
                  slt          s3, t3, s6
                  srl          zero, s0, a2
180:              lui          tp, 931894
181:              bge          s0, s2, 200f
182:              addi         s0, s3, -1661
                  or           a4, t1, gp
                  sltiu        a1, a6, -1796
185:              ori          a1, s10, 127
                  srli         a1, t0, 3
                  lui          t4, 37736
                  slt          t4, tp, a0
                  bne          s1, tp, 205f
                  xori         s6, s6, 622
                  or           ra, gp, t4
                  sub          s9, s1, t1
                  bgeu         t3, s9, 195f
                  sra          zero, gp, t6
195:              bne          a7, tp, 205f
                  andi         tp, zero, 380
                  bne          s9, t3, 210f
                  bltu         a5, s3, 203f
                  beq          s7, s9, 203f
200:              slt          zero, tp, a7
                  sltu         s3, tp, s2
                  and          zero, s3, t4
203:              slti         zero, a4, -1622
                  sll          s4, s1, t4
205:              bgeu         s2, a7, 225f
                  sltiu        t6, t3, -299
                  bne          a6, gp, 224f
                  srai         t2, tp, 7
                  bge          s1, a7, 229f
210:              sltiu        sp, s1, -258
                  ori          s4, sp, 862
                  srli         s10, ra, 0
                  andi         a3, t2, -1421
                  sltiu        ra, t2, 445
                  or           t5, s11, a4
                  sll          t5, sp, a2
                  slti         sp, a3, -1437
                  andi         t1, zero, -549
                  bge          t6, t5, 227f
                  add          s3, s0, s0
                  bltu         s10, t1, 232f
                  slt          s9, tp, s6
                  sub          t3, a0, sp
224:              auipc        t2, 16846
225:              addi         t0, t6, 659
                  sll          s5, ra, s5
227:              or           a2, a1, s7
                  bne          a2, zero, 248f
229:              sub          s6, a0, t3
                  sltu         s8, s7, t2
                  slti         sp, t4, 783
232:              srai         a3, t1, 30
                  sltiu        t0, s2, 265
                  srai         s7, tp, 23
                  bne          s8, sp, 248f
                  blt          t2, t0, 241f
                  sll          s8, tp, a6
                  slli         s11, s6, 25
                  auipc        gp, 767458
                  slli         s3, t2, 1
                  srai         s3, gp, 9
                  ori          s3, s4, -1615
                  lui          s10, 712059
                  sltiu        a1, a1, -466
                  srl          s10, a4, t5
sub_8_j13:        jal          ra, sub_10 #jump sub_8 -> sub_10
                  slti         a4, t6, 1224
                  sra          tp, s10, s9
                  slti         ra, a2, -814
                  sltu         sp, t4, s9
241:              bltu         s0, t1, 243f
                  slti         tp, s9, 621
243:              and          s8, tp, s6
                  srl          s11, zero, s4
                  slti         t6, s1, -83
                  bltu         s2, gp, 254f
                  sub          a0, a6, t2
248:              add          gp, s5, s2
                  sub          s9, s11, zero
                  or           tp, t2, s3
                  nop
                  srai         a6, t6, 19
                  bgeu         s7, a4, 254f
254:              srl          t1, zero, t0
                  nop
                  sltu         a4, s11, t2
                  lw           ra, 4(s2)
                  addi         s10, s8, 1746
                  addi         s2, s2, 28
                  addi         t1, a6, 1600
                  sltu         t1, t5, a7
                  or           s9, s1, s0
                  slti         a0, s7, -1014
                  slli         s10, a6, 14
                  andi         t3, s0, -840
                  sll          a1, tp, zero
357:              addi x27, x1, 0
357:              jalr x27, x27, 0
sub_4:            srai         sp, t1, 8
                  or           t4, a3, sp
                  xor          s3, a1, s10
                  srl          s10, t3, zero
                  srl          s5, zero, s11
                  auipc        a0, 1000601
                  sra          s6, t0, a5
                  addi         s2, s2, -64
                  srai         a4, s0, 4
                  sw           ra, 4(s2)
                  and          s8, s11, zero
                  sltiu        s7, s4, 1133
                  lui          a0, 667053
                  srl          a2, a7, t0
                  auipc        zero, 180350
                  srai         a4, a5, 13
                  xori         a1, a7, 1346
sub_4_j7:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  la           sp, region_1+1300 #start riscv_load_store_rand_instr_stream_1
                  sh           a7, -46(sp)
                  lb           t4, 0(sp)
                  sub          t4, s2, s2
                  srli         a6, t6, 10
                  lbu          t5, 18(sp)
                  nop
                  lb           s3, 3(sp)
                  and          a1, s0, s5
                  auipc        t5, 874786
                  lb           s4, -23(sp)
                  srai         t5, a3, 29
                  lh           a6, 16(sp)
                  lbu          tp, -4(sp)
                  sub          tp, a5, s11
                  sw           tp, -4(sp)
                  sub          s6, a0, a1
                  lbu          t5, -4(sp)
                  lbu          s3, 7(sp)
                  lbu          t1, 21(sp)
                  lh           t4, -2(sp)
                  xor          tp, a2, a4
                  lw           ra, -4(sp)
                  sh           tp, 34(sp)
                  or           s10, t2, a3
                  lb           s4, -58(sp)
                  nop
                  lb           gp, -13(sp)
                  sltiu        a1, s4, 1571
                  slli         t0, s1, 27
                  lbu          s5, 27(sp)
                  lb           a1, -39(sp)
                  add          t0, a3, t6
                  lhu          s8, -54(sp)
                  sb           s9, -33(sp)
                  lh           zero, -22(sp)
                  sb           s0, -9(sp) #end riscv_load_store_rand_instr_stream_1
                  or           t2, s1, tp
                  bge          t3, s3, 15f
                  addi         t6, a3, 1388
                  sltu         t3, t6, a6
                  srai         zero, s0, 0
                  sltu         s10, a6, zero
                  and          gp, a6, a6
                  slt          a6, a0, s9
                  sltiu        zero, a5, 947
                  add          s0, s8, s2
                  srl          s7, t0, s2
                  addi         s5, s6, 964
                  bltu         t6, t6, 15f
                  ori          sp, a5, 311
                  or           zero, s2, a5
15:               beq          a4, t3, 31f
                  andi         s8, t3, -152
                  bltu         s0, t2, 29f
                  sltiu        a0, tp, 1423
                  slt          s5, tp, a4
                  slli         a3, s1, 8
                  sub          s3, a4, t2
                  la           sp, region_0+703 #start riscv_load_store_rand_instr_stream_0
                  sb           a3, 424(sp)
                  lbu          a1, 941(sp)
                  xor          s11, t5, sp
                  and          s5, tp, s10
                  sb           t4, 304(sp)
                  lhu          a1, 791(sp)
                  slti         s7, t1, 1284
                  addi         a5, s9, 1324
                  xor          s3, a7, t0
                  xori         s8, s0, -1801
                  sh           s5, 183(sp)
                  xor          t4, t3, s3
                  lb           s0, -262(sp)
                  lbu          zero, -700(sp)
                  lbu          t2, -196(sp)
                  nop
                  andi         ra, s7, -929
                  or           t3, s11, t1
                  slti         a4, t5, 491
                  xor          s3, s11, s6
                  lb           zero, 1087(sp)
                  slti         a1, a1, -1012
                  lbu          s9, 386(sp)
                  xor          a3, t4, tp
                  addi         a4, s5, 359
                  srli         t5, s7, 22
                  slli         a0, t2, 23
                  sb           s4, 46(sp)
                  xori         t2, s10, 1707
                  auipc        a2, 933674
                  xori         zero, a3, -666
                  andi         t5, t2, 1056
                  lui          s8, 364844
                  lbu          s6, -628(sp)
                  lh           gp, -493(sp)
                  sb           ra, 1198(sp)
                  andi         t6, s11, -349
                  lbu          s10, -534(sp)
                  add          zero, a4, sp
                  lbu          s0, 638(sp)
                  xori         tp, t1, 1352
                  slti         s4, s1, -396
                  sh           a0, -543(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         t5, s0, s9
                  slli         t4, a5, 20
                  and          s4, t4, s8
                  beq          s0, a3, 44f
                  bne          t6, t4, 30f
                  blt          s6, s4, 46f
                  add          a1, a3, a2
29:               slti         t0, a1, 1875
30:               beq          a6, s2, 47f
31:               slt          s3, gp, s5
                  sltiu        a5, s4, -456
                  auipc        zero, 663037
                  slli         a6, t6, 22
                  bgeu         zero, s11, 38f
                  bltu         s4, a3, 53f
                  ori          s4, t1, -1958
38:               sra          a0, gp, s3
                  bge          gp, sp, 43f
                  sltu         a3, t6, a4
                  auipc        t3, 484880
                  slt          s10, s0, t0
43:               slt          s8, s2, a4
44:               srai         s10, t1, 26
                  add          tp, t6, s4
46:               xori         t4, t3, -1169
47:               srli         s7, s2, 26
                  bne          s0, s5, 62f
                  nop
                  auipc        s6, 877644
                  and          t4, a2, ra
                  srai         a1, s11, 18
53:               sub          zero, tp, a1
                  srai         s0, t0, 13
                  slt          a3, t5, a2
                  slt          s5, a1, t2
                  lui          sp, 275239
                  bne          s9, s2, 76f
                  sra          a0, s2, a6
                  bltu         s10, t6, 68f
                  slti         s0, ra, -1785
62:               sltu         a6, t6, s3
                  addi         t6, s9, -1120
                  sll          s6, t2, s9
                  beq          t4, s6, 70f
                  or           a5, s7, s4
                  addi         s11, s10, -812
68:               slt          a3, s7, s4
                  beq          t5, a6, 82f
70:               sra          a6, gp, a1
                  or           a2, a0, zero
                  xor          s4, sp, s11
                  auipc        ra, 988824
                  nop
                  srai         s11, a1, 28
76:               slt          t5, s0, s3
                  srl          t5, a3, a0
                  slt          s5, s4, s9
                  and          a6, tp, a5
                  sub          a4, gp, a0
                  ori          s3, tp, 1340
82:               bltu         s11, s9, 87f
                  nop
                  srli         a2, t6, 7
                  bltu         s9, tp, 87f
                  slti         s11, s3, -1390
87:               xor          a6, t4, sp
                  bgeu         a5, a7, 102f
                  bltu         tp, ra, 94f
                  nop
                  bge          zero, t5, 102f
                  bgeu         s10, s7, 101f
                  beq          s3, tp, 112f
94:               addi         s4, a1, -436
                  auipc        gp, 783666
                  and          a6, a1, a3
                  addi         zero, s3, -1549
                  slti         s5, s7, -1887
                  sltu         a2, a0, s6
                  lui          s10, 973376
101:              addi         a1, ra, 226
102:              slli         ra, s3, 11
                  blt          t2, t4, 108f
                  srl          zero, ra, t6
                  lui          s6, 34768
                  lui          t5, 882836
                  bge          a2, s1, 121f
108:              and          s6, s9, a5
                  slli         s9, a2, 13
                  sra          t1, s7, t4
                  srli         s4, s10, 18
112:              sltiu        s8, a6, 1791
                  slli         s4, s11, 2
                  sra          t4, t4, s5
                  xor          tp, a5, s8
                  sll          s4, gp, a5
                  add          a0, t0, tp
                  ori          gp, sp, 251
                  bne          a4, s5, 137f
                  ori          t1, t1, 1533
121:              sra          zero, a2, t3
                  bltu         t2, t0, 124f
                  slt          zero, a1, s0
124:              ori          a0, s6, -1541
                  xori         s8, a3, -374
                  auipc        a1, 591522
                  and          sp, s4, t5
                  xori         t3, s3, -1509
                  sra          a2, t3, a1
                  andi         s8, a1, -1266
                  srl          a4, a2, s6
                  add          a6, s10, s9
                  lui          sp, 131651
                  blt          t3, s10, 139f
                  sll          s9, s5, s6
                  auipc        s0, 672367
137:              xori         sp, a6, -504
                  sra          a3, a4, t1
139:              addi         s8, gp, 954
                  xori         s8, t2, 1427
                  bge          s3, zero, 147f
                  srl          t0, t4, a4
                  bne          s4, s7, 149f
                  bgeu         t0, a4, 156f
                  blt          t2, s9, 150f
                  sub          tp, s11, zero
147:              bge          a0, ra, 153f
                  andi         ra, s11, 1527
149:              ori          s10, s11, 1393
150:              srli         a2, a1, 26
                  lui          tp, 805735
                  sltu         s5, s4, s9
153:              slti         a0, s8, 1613
                  bltu         a1, s8, 165f
                  slt          a1, s10, a5
156:              sltiu        s7, a0, -728
                  slli         t5, t1, 6
                  add          t1, s3, s5
                  bge          t4, s4, 168f
                  and          t3, s2, t0
                  sub          s8, tp, s3
                  bltu         s5, a5, 175f
                  bne          s0, a7, 168f
                  beq          t1, a3, 182f
165:              and          a2, t6, gp
                  srli         t3, ra, 8
                  bne          t5, s6, 181f
168:              blt          ra, s4, 187f
                  srai         t4, s4, 14
                  bne          s4, a0, 172f
                  auipc        sp, 156178
172:              slt          ra, s0, s8
                  srl          s11, s2, s8
                  sltiu        a1, s4, 362
175:              srai         s4, a7, 12
                  auipc        ra, 633271
                  beq          s8, s10, 194f
                  nop
                  sub          s10, sp, s3
                  add          gp, a4, sp
181:              srli         s7, t3, 17
182:              slti         s9, s5, 1163
                  bltu         a6, s2, 186f
                  blt          tp, t1, 192f
                  slti         s0, s1, 1015
186:              andi         a5, s10, 594
187:              srli         s11, sp, 8
                  nop
                  srai         s0, t4, 25
                  sub          a4, t6, gp
                  or           t4, t5, t3
192:              bgeu         ra, zero, 197f
                  sra          ra, s1, t4
194:              srl          gp, a5, s3
                  and          s3, s0, a6
                  xor          s10, s2, t4
197:              sltu         t0, s1, t6
                  bge          s8, s9, 203f
                  sll          a6, s5, tp
                  srai         t1, s0, 0
                  addi         s10, s4, -246
                  andi         s8, s6, -1765
203:              sll          sp, a0, s0
                  sub          gp, a2, a7
                  ori          s6, gp, 564
                  sltu         a4, a5, t4
                  andi         t0, gp, -1382
                  sra          t0, sp, t0
                  addi         s10, gp, 1517
                  sll          t0, s1, ra
                  srai         s10, t0, 6
                  ori          t3, zero, 299
                  srl          sp, s10, s7
                  sltiu        t5, s4, -1734
                  nop
                  blt          gp, a2, 221f
                  sltiu        s3, t2, -928
                  beq          t2, t3, 222f
                  sltiu        t2, t2, -1737
                  beq          t6, a4, 223f
221:              bltu         ra, s7, 235f
222:              srai         t4, t3, 21
223:              or           a4, a0, s8
                  bne          t6, s9, 228f
                  addi         s7, s5, -1799
                  ori          zero, t4, 850
                  or           s6, s11, t6
228:              xori         a4, s11, -301
                  blt          s11, gp, 248f
                  sltu         a4, t1, s4
                  srli         t0, s11, 10
                  sltu         s5, s10, a4
                  or           a6, a7, s6
                  sltiu        t0, t1, -1627
235:              srl          zero, a4, a7
                  srl          gp, t3, s6
                  bgeu         sp, s0, 251f
                  sra          s8, s3, t1
                  sltiu        s6, zero, 1178
                  bne          gp, s8, 246f
                  sll          a0, s6, a7
                  xor          s8, t5, sp
                  srli         a0, a2, 30
                  blt          s3, t2, 263f
                  sltiu        sp, s10, 393
246:              slli         s5, t2, 23
                  blt          a5, s6, 261f
248:              bgeu         s2, t0, 265f
                  addi         zero, s2, -1220
                  bne          s11, a0, 266f
251:              slt          ra, zero, t5
                  andi         a4, s9, 65
                  or           a2, t4, s5
                  bge          a6, t1, 272f
                  and          s0, s5, zero
                  slt          tp, s7, s8
                  blt          s7, s5, 259f
                  xor          s10, s2, t6
259:              slli         s0, s3, 9
                  bltu         s10, a1, 279f
261:              bltu         s3, s9, 263f
                  andi         s10, s8, -454
263:              bltu         s3, t5, 268f
                  auipc        t1, 844196
265:              srl          a3, s1, s9
266:              srai         s9, s9, 26
                  add          s10, s0, s6
268:              auipc        s10, 84105
                  bge          a3, s0, 287f
                  xori         t6, s8, 562
                  bne          zero, s1, 285f
272:              bltu         s1, s9, 274f
                  sra          a3, a5, a7
274:              blt          t4, a5, 278f
                  or           s0, a0, s4
                  srai         t4, ra, 24
                  or           a3, s10, t3
278:              srl          t6, t1, a4
279:              slli         gp, s10, 16
                  andi         t2, t1, -1559
                  slli         a4, s5, 17
                  ori          a5, a4, 1693
                  sub          s4, s9, tp
                  add          t4, a7, ra
285:              srai         a0, t3, 18
                  sltiu        a5, s1, -527
287:              xori         t0, t4, 1377
                  bge          a6, s2, 305f
                  srl          s0, s5, a5
                  sll          tp, s2, a1
                  or           gp, s7, s10
                  bne          s0, a2, 298f
                  addi         s3, a2, -1175
                  srli         s3, s11, 13
                  or           a0, gp, s6
                  blt          gp, s7, 301f
                  srl          a5, a4, s5
298:              slli         a6, t3, 16
                  bltu         s11, gp, 302f
                  srli         tp, a1, 28
301:              sub          t1, s9, gp
302:              blt          zero, s0, 314f
                  ori          a3, s5, -943
                  srli         s7, s7, 9
305:              blt          tp, s0, 309f
                  and          sp, a6, s8
                  bge          a3, t0, 318f
                  sll          a0, s11, t4
309:              sub          a4, s1, sp
                  slti         s0, s9, -1956
                  beq          zero, a3, 318f
                  sll          s0, tp, a6
                  bgeu         a3, t5, 318f
314:              sra          ra, a6, tp
                  sltiu        s5, t2, -566
                  srl          gp, s0, s2
                  ori          zero, t2, 1616
318:              srl          t6, s5, t2
                  lw           ra, 4(s2)
                  addi         s2, s2, 64
                  sltu         sp, sp, s11
                  addi         s10, s8, -964
                  lui          t6, 725708
                  slli         a2, t4, 30
424:              addi x5, x1, 0
424:              jalr x5, x5, 0
sub_9:            auipc        s6, 59937
                  sltiu        s8, s1, -804
                  addi         s2, s2, -28
                  nop
                  sw           ra, 4(s2)
                  sub          s10, a3, s4
                  xor          s7, s4, a6
                  bge          t0, s2, sub_9_j14 #branch to jump instr
                  xori         a2, a0, -1152
                  ori          t3, a1, 1177
                  sltu         s9, sp, t6
                  addi         zero, s5, -396
                  addi         s0, a6, 908
                  and          t5, s2, s8
sub_9_j14:        jal          ra, sub_10 #jump sub_9 -> sub_10
                  la           sp, region_1+1354 #start riscv_load_store_rand_instr_stream_0
                  andi         s9, a7, -1850
                  ori          s3, t3, 214
                  lui          tp, 212833
                  lbu          t5, -708(sp)
                  and          s6, a4, s2
                  lui          t4, 907701
                  lbu          a1, -945(sp)
                  sltu         t4, t1, gp
                  lbu          t0, 349(sp)
                  srl          tp, s6, ra
                  xor          s7, s5, t2
                  lbu          tp, 416(sp)
                  srli         s9, sp, 13
                  auipc        ra, 983050
                  sll          t5, s2, s7
                  lui          s8, 772328
                  slt          s5, t2, s2
                  sb           s2, -334(sp)
                  srl          t4, zero, tp
                  lb           a5, -326(sp)
                  slti         s9, a6, -550
                  sw           s6, -446(sp)
                  and          a1, a1, a2
                  sh           s10, -768(sp)
                  lbu          t4, -1303(sp)
                  lui          zero, 507776
                  lb           t2, -1059(sp)
                  sb           t2, 353(sp)
                  sltu         a1, s4, s4
                  lhu          a0, -694(sp)
                  sb           s11, 530(sp)
                  ori          a3, t1, 1605
                  sra          ra, t4, s6
                  xor          t1, sp, a7
                  sh           s4, -1134(sp)
                  lb           a2, -113(sp)
                  andi         t1, zero, -811
                  sw           s8, -882(sp)
                  lbu          s3, 369(sp)
                  sw           t5, 62(sp)
                  lhu          s9, 184(sp)
                  lbu          t1, -160(sp)
                  srl          ra, s11, a4
                  sb           ra, -157(sp)
                  and          s8, s7, a1
                  sb           t4, -601(sp)
                  lb           a2, 51(sp)
                  sltu         a3, a4, s5
                  sll          s10, s10, zero
                  lui          s7, 560359
                  lhu          s7, -534(sp)
                  lb           gp, -329(sp)
                  xor          s10, t4, tp
                  sb           t4, 421(sp)
                  lb           t2, -1262(sp)
                  slli         t3, s1, 30
                  srl          zero, t4, t1
                  lb           s3, -540(sp) #end riscv_load_store_rand_instr_stream_0
                  sll          tp, a0, s5
                  srl          s8, s8, s5
                  addi         tp, s9, 1427
                  auipc        a3, 216913
                  beq          t6, t2, 22f
                  blt          s8, s4, 13f
                  slli         a1, s11, 0
                  sub          sp, a6, s7
                  add          a6, a1, a3
                  sltiu        t3, s11, -687
                  srai         s5, t0, 13
                  sll          gp, s9, a1
                  slli         s10, a2, 9
13:               blt          a2, s9, 14f
14:               bltu         a1, a0, 30f
                  lui          s9, 606884
                  sltu         s0, ra, a6
                  srl          s7, s6, s9
                  xor          a3, s11, a5
                  xor          t2, s10, s2
                  andi         tp, a5, 168
                  xor          t4, t6, s8
22:               slt          a3, s3, zero
                  slt          t6, s10, s5
                  slli         s9, t3, 30
                  sll          a6, ra, tp
                  sub          s6, t1, s4
                  bgeu         a1, s11, 36f
                  slt          t3, gp, s8
                  beq          t2, a0, 36f
30:               nop
                  slli         a2, a4, 18
                  ori          t6, a3, -900
                  sltu         s10, a0, a2
                  srai         zero, s7, 23
                  xori         t6, t1, -1126
36:               sltu         t0, s4, ra
                  slli         t1, ra, 11
                  srai         s5, a5, 26
                  auipc        s11, 684996
                  bne          s3, s3, 46f
                  bne          s2, s2, 42f
42:               sltiu        s3, a6, 468
                  blt          s2, s10, 62f
                  slt          s6, tp, t3
                  nop
46:               xor          t5, zero, ra
                  lui          a5, 744168
                  slli         sp, a5, 5
                  srl          sp, t6, s10
                  slti         a1, ra, -1858
                  xori         t2, s6, -290
                  beq          s11, t0, 54f
                  or           a2, s4, s9
54:               addi         t6, s8, -1457
                  auipc        a6, 526091
                  andi         a4, s11, -882
                  srl          ra, s4, s2
                  slli         s4, s11, 27
                  slt          tp, s2, a6
                  and          sp, s9, t5
                  bgeu         a1, t6, 81f
62:               or           a0, gp, a2
                  sra          s0, t5, t2
                  xor          s0, s9, s6
                  slt          a5, t6, a3
                  srli         a6, a4, 29
                  auipc        t2, 277498
                  sub          t5, a5, zero
                  bge          s5, s4, 73f
                  slt          s9, zero, gp
                  sra          t5, s7, s5
                  andi         t3, t3, 1344
73:               ori          s6, t6, -1867
                  slti         ra, a2, -396
                  sra          t6, sp, s6
                  bgeu         t2, s1, 92f
                  srai         sp, s10, 2
                  sltu         s9, a0, ra
                  bge          zero, t6, 98f
                  add          s8, a7, a5
81:               srl          t0, s7, s0
                  srl          s4, s8, s0
                  auipc        a4, 500659
                  bne          s8, zero, 98f
                  slti         a5, s6, -1691
                  beq          a2, s9, 94f
                  addi         s3, tp, -2043
                  bne          t2, t4, 94f
                  and          t4, s7, a1
                  slli         a1, a6, 16
                  sltiu        t6, s4, 1916
92:               blt          s5, t6, 108f
                  and          sp, t3, s3
94:               sub          s5, s11, s2
                  bltu         s0, t6, 100f
                  srli         a3, a0, 22
                  or           tp, s10, t1
98:               andi         t5, s0, -186
                  add          t0, s7, t5
100:              sll          ra, t1, a5
                  beq          s5, s11, 107f
                  slt          t0, s0, t6
                  nop
                  or           a0, t3, a4
                  srl          s4, s1, s11
                  blt          t1, s5, 125f
107:              bgeu         t0, t5, 119f
108:              slli         a1, t3, 13
                  beq          s9, a5, 129f
                  bne          sp, t6, 120f
                  slli         a0, a7, 13
                  srai         t5, s8, 8
                  ori          s5, s5, -788
                  nop
                  andi         s4, s2, 259
                  srai         s6, s11, 13
                  sltu         t5, s0, s2
                  lui          a1, 133621
119:              beq          a5, t5, 125f
120:              bgeu         t3, t4, 121f
121:              srl          t1, t6, s9
                  srli         t5, s3, 31
                  nop
                  slti         s5, tp, 1440
125:              bne          s7, s8, 143f
                  bgeu         a4, t1, 132f
                  bne          sp, t4, 140f
                  sltu         t2, t1, a2
129:              slli         t0, s6, 16
                  ori          sp, s9, -1346
                  bne          ra, a3, 145f
132:              bge          a3, a6, 148f
                  bltu         s2, t5, 145f
                  ori          zero, s7, -1470
                  andi         a6, a5, -763
                  bgeu         s1, s11, 143f
                  slli         s6, s10, 13
                  andi         a1, gp, 1198
                  slt          s3, s5, t5
140:              sltiu        t2, a6, 1075
                  nop
                  ori          t3, a7, 156
143:              bge          s4, a0, 157f
                  sltiu        ra, s9, 1589
145:              blt          a0, a4, 146f
146:              and          t5, a5, a5
                  bne          t2, a5, 166f
148:              srl          a1, t1, t1
                  and          t0, a0, a4
                  ori          t5, t2, -1779
                  srai         t3, a5, 21
                  xor          s4, s4, a6
                  sra          s10, s6, s2
                  xor          a0, s6, s1
                  ori          a4, s2, 2001
                  lui          tp, 971545
157:              sltiu        a6, a0, 779
                  auipc        t5, 619987
                  sltu         sp, s2, t2
                  sll          t3, tp, s9
                  bge          sp, zero, 181f
                  sltu         sp, s3, s3
                  lui          t2, 321004
                  sltu         s6, s5, s11
                  srl          s11, sp, t2
166:              bge          s3, s11, 172f
                  or           s10, s10, s9
                  ori          s5, s6, -426
                  srli         a2, s10, 18
                  or           s11, gp, t3
                  srli         t2, s9, 0
172:              nop
                  srai         s5, a3, 3
                  slli         t5, s2, 15
                  bltu         a2, s8, 183f
                  slt          s4, s2, s5
                  addi         t6, s7, -794
                  xor          a3, a6, a6
                  lui          a5, 774351
                  bne          t4, a4, 188f
181:              add          t4, s8, s1
                  lui          s0, 757895
183:              add          t6, s2, a2
                  sub          s5, a6, s10
                  bne          t3, tp, 190f
                  bne          a3, tp, 205f
                  auipc        a6, 575040
188:              srl          s8, a6, a6
                  srli         tp, a1, 27
190:              xor          s4, zero, s8
                  slli         ra, s7, 8
                  or           s10, s3, t5
                  auipc        s3, 579284
                  beq          t1, a7, 209f
                  or           t1, a3, s9
                  blt          a3, a0, 202f
                  sub          t0, a1, gp
                  slti         s8, t2, -378
                  sll          a2, tp, gp
                  xor          a1, s2, gp
                  andi         t3, s8, 814
202:              srai         s10, a4, 10
                  addi         s4, t2, -1455
                  slli         s10, ra, 3
205:              bge          s9, s7, 209f
                  addi         s7, s9, -984
                  sub          s8, ra, a2
                  slli         s9, a1, 8
209:              sub          t5, t0, ra
                  or           s9, t5, t3
                  slti         t2, s4, -1622
                  auipc        s9, 483718
                  ori          a6, s4, 1303
                  lw           ra, 4(s2)
                  srli         a6, t6, 5
                  ori          sp, s9, -572
                  sll          s9, a6, a3
                  addi         s2, s2, 28
                  srli         t4, s7, 2
294:              addi x21, x1, 1
294:              jalr x21, x21, 0
sub_2:            and          zero, a0, a0
                  blt          t5, zero, sub_2_stack_p
                  sltu         sp, a3, s10
                  sra          a0, a1, a5
sub_2_stack_p:    addi         s2, s2, -16
                  xori         a1, ra, -1392
                  sw           ra, 4(s2)
                  xor          a0, zero, s9
                  auipc        sp, 468243
                  lui          a0, 215325
                  sltu         t3, a5, s0
                  ori          gp, a7, 1932
                  slli         a2, s10, 0
                  andi         a2, s10, 1013
                  bgeu         gp, gp, sub_2_j5 #branch to jump instr
                  lui          s5, 138977
                  sub          s10, sp, t1
                  slli         tp, t6, 7
                  xori         t5, a3, 175
sub_2_j5:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  sltu         a5, t0, a0
                  lui          t1, 306007
                  or           t6, a2, s2
                  slli         s5, zero, 17
                  add          s3, a7, t2
                  lui          t6, 144883
                  slli         zero, t0, 21
                  xori         t3, s5, -1
                  beq          s5, a5, 14f
                  sub          s10, a5, s4
                  lui          s0, 1010869
                  sltu         s6, a1, t4
                  and          sp, a1, a0
                  srli         a0, t3, 18
14:               lui          s4, 851008
                  xori         s11, t5, -1548
                  srl          t2, a7, t4
                  lw           ra, 4(s2)
                  addi         s2, s2, 16
                  lui          a3, 398439
                  srli         t6, s9, 3
                  slli         a3, t5, 26
42:               addi x21, x1, 0
42:               jalr x21, x21, 0
sub_6:            sltiu        t4, ra, -1032
                  addi         s2, s2, -12
                  slt          s6, t5, s10
                  and          t0, gp, zero
                  sw           ra, 4(s2)
                  nop
                  nop
                  sll          s6, ra, a2
                  la           t4, sub_7
                  sltiu        a6, sp, 798
                  addi         t4, t4, -552
                  or           s9, t6, s0
                  andi         t0, a7, 232
                  bne          a7, a7, sub_6_j10 #branch to jump instr
                  auipc        s8, 598446
                  andi         s6, s1, -13
                  srli         tp, gp, 15
                  addi         t0, tp, -1824
sub_6_j10:        jalr         ra, t4, 553 #jump sub_6 -> sub_7
                  la           sp, region_1+1700 #start riscv_load_store_rand_instr_stream_2
                  srai         t4, t6, 10
                  srl          t1, t6, s9
                  slli         t0, t6, 22
                  sb           s6, -13(sp)
                  lbu          t3, 10(sp)
                  sltu         a1, a4, s11
                  sltiu        a3, a6, 310
                  slli         ra, t3, 23
                  ori          t5, a4, 1816
                  sltiu        a4, s9, -190
                  lbu          s7, -13(sp)
                  srl          a6, s6, s9
                  lh           tp, -4(sp)
                  sh           t0, 4(sp)
                  lh           s3, 6(sp)
                  sub          t3, a1, t5
                  or           t5, s5, s4
                  lbu          s9, -5(sp)
                  lb           s9, -13(sp)
                  sra          a3, t3, a1
                  sra          a4, t6, t0
                  lb           zero, 15(sp)
                  lb           t5, 7(sp)
                  lui          s7, 365298
                  srli         s4, s10, 30
                  andi         t2, s1, -1084
                  lhu          a6, -2(sp)
                  srai         s10, t3, 6
                  xori         s10, a5, -402
                  lhu          t6, 10(sp)
                  sltu         s11, zero, s7
                  lbu          s7, 8(sp)
                  sb           s11, -1(sp)
                  sltiu        s0, t5, 1407
                  sb           tp, -15(sp)
                  sb           a4, -15(sp)
                  sb           a5, -9(sp)
                  lh           a4, -10(sp)
                  and          zero, ra, s11
                  xori         a4, ra, -268
                  lh           s4, 14(sp)
                  lbu          s0, 7(sp)
                  lhu          s7, -4(sp)
                  slli         s0, tp, 15
                  lbu          s3, 9(sp)
                  sb           ra, 4(sp)
                  lhu          t1, 16(sp)
                  sub          t1, s0, s5
                  slt          t4, s4, a2
                  andi         ra, t2, 1491
                  slli         s7, a0, 1
                  xori         s3, ra, 398
                  sb           tp, -2(sp)
                  nop
                  lb           gp, -15(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_1+1168 #start riscv_load_store_rand_instr_stream_0
                  lb           a0, -535(s8)
                  sll          s5, a3, s6
                  and          s10, s6, s0
                  sh           zero, -66(s8)
                  ori          t2, t5, 1232
                  and          a0, a2, a0
                  lbu          s11, 657(s8)
                  lbu          a2, -647(s8)
                  lb           t4, -345(s8)
                  and          s5, sp, a7
                  auipc        a6, 210042
                  nop
                  sb           t2, -838(s8)
                  and          a0, a3, t6
                  sh           t2, -168(s8)
                  lbu          a5, -699(s8)
                  slt          s11, sp, t4
                  andi         s0, a5, 414
                  srai         t3, t2, 12
                  lbu          ra, -706(s8)
                  sb           s9, 709(s8)
                  sw           a5, -272(s8)
                  lbu          s11, 690(s8)
                  sh           s8, 434(s8) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+33 #start riscv_load_store_rand_instr_stream_4
                  srli         s6, s6, 4
                  lui          a6, 74532
                  nop
                  lbu          t0, 1(sp)
                  ori          a1, s9, -1256
                  srai         s7, zero, 11
                  add          t2, t0, s1
                  lh           s8, 11(sp)
                  add          a5, s0, t4
                  lw           a1, -29(sp)
                  or           s8, s2, s3
                  auipc        s3, 459616
                  lb           s9, -12(sp)
                  slt          a6, t0, t0
                  auipc        s7, 972112
                  sltu         s10, a0, s2
                  ori          s9, s8, -40
                  slli         t6, s9, 5
                  sb           s2, 60(sp)
                  auipc        t6, 401188
                  sb           s2, 6(sp)
                  sb           s0, 28(sp)
                  lb           t0, 60(sp)
                  auipc        s8, 942441
                  ori          t6, t1, 142
                  lb           s3, 20(sp)
                  srl          t4, s9, a5
                  sh           s9, -31(sp)
                  sb           s0, 4(sp)
                  sb           t0, -28(sp)
                  lh           a0, -31(sp)
                  or           t2, t1, zero
                  sb           a0, 18(sp)
                  slti         tp, t0, -1716
                  addi         a0, t3, 882
                  lui          a4, 697923
                  lbu          s9, 24(sp)
                  add          s11, s7, t5
                  lb           zero, -28(sp)
                  xori         s4, s8, -1363
                  lbu          t0, 18(sp)
                  sra          s8, a5, t4
                  slli         a0, s1, 16
                  lbu          t6, 30(sp)
                  nop
                  slli         a4, s11, 16
                  sra          tp, s4, t4
                  lhu          tp, -15(sp)
                  lbu          ra, -10(sp) #end riscv_load_store_rand_instr_stream_4
                  la           t6, region_1+571 #start riscv_load_store_rand_instr_stream_6
                  lbu          t2, 18(t6)
                  and          t1, a2, a3
                  sb           gp, 40(t6)
                  lb           s9, -62(t6)
                  sb           tp, -21(t6)
                  lb           t3, 34(t6)
                  lb           a2, -27(t6)
                  sb           s0, -14(t6)
                  slt          gp, t3, s1
                  sltiu        a2, a4, 1065
                  lb           tp, -17(t6)
                  sra          s8, ra, t0
                  lbu          a5, 59(t6)
                  lbu          s6, -18(t6)
                  andi         s4, a1, -1242
                  slt          a2, t3, t5
                  sb           t6, -62(t6)
                  lbu          tp, -54(t6)
                  lh           gp, -55(t6)
                  lb           a3, 31(t6)
                  srl          t0, tp, t0
                  sb           t6, -53(t6)
                  slt          s3, s6, s1
                  or           s4, a0, t0
                  lb           zero, -18(t6)
                  lhu          s6, 35(t6)
                  sltiu        t0, ra, 2012
                  sb           s6, -42(t6) #end riscv_load_store_rand_instr_stream_6
                  la           tp, region_1+31 #start riscv_load_store_rand_instr_stream_7
                  add          s8, t6, t2
                  lb           s0, 442(tp)
                  sb           a2, 1144(tp)
                  lb           s10, 1052(tp)
                  xor          a4, s4, s11
                  lhu          s5, 847(tp)
                  sb           t6, 687(tp)
                  lw           s3, 1621(tp)
                  slt          s5, s10, t5
                  lb           s5, 1297(tp)
                  ori          s0, s10, 1765
                  slti         t3, s0, 1456
                  nop
                  auipc        a2, 641970
                  lhu          s9, 749(tp)
                  lbu          a1, 887(tp)
                  lb           t5, 1814(tp)
                  srli         a6, s8, 15
                  lb           t3, 1855(tp)
                  sb           s0, 745(tp)
                  sb           a4, 1035(tp)
                  lhu          a3, 1283(tp)
                  lbu          t6, 1335(tp)
                  sb           t2, 1648(tp)
                  lhu          a0, 1321(tp)
                  nop
                  sw           s4, 301(tp)
                  sh           a2, 1255(tp)
                  and          s9, t2, a3
                  xori         s10, s2, 247
                  lbu          s5, 1310(tp)
                  or           ra, s5, t5
                  lbu          s10, 14(tp)
                  sltiu        s3, s7, -1765
                  lbu          gp, 1176(tp)
                  sub          s7, s11, sp
                  addi         s6, a4, -989
                  sb           a0, 1500(tp)
                  sb           tp, 1834(tp)
                  lbu          t3, 279(tp)
                  lbu          s9, 1172(tp)
                  and          a3, a7, s10
                  add          s8, a5, tp
                  lhu          t3, 209(tp)
                  add          s4, a3, gp
                  srli         s10, t6, 13
                  lh           a2, 1213(tp)
                  lh           ra, 1281(tp)
                  andi         a6, s10, -246
                  lb           a2, 490(tp) #end riscv_load_store_rand_instr_stream_7
                  la           t0, region_0+659 #start riscv_load_store_rand_instr_stream_1
                  sltu         s5, gp, a6
                  sh           t0, -11(t0)
                  lui          t6, 271635
                  or           a0, s5, a1
                  sltu         s8, t4, a4
                  andi         s0, a6, -632
                  andi         ra, s11, -231
                  lbu          a0, 42(t0)
                  lbu          a0, 27(t0)
                  add          t5, zero, t1
                  slti         tp, a3, 1262
                  xori         t6, s5, 1401
                  sltu         t6, s7, s2
                  lbu          tp, -53(t0)
                  sb           s8, 61(t0)
                  sh           gp, 39(t0)
                  sltu         t1, t0, ra
                  lb           s10, 50(t0)
                  sub          a6, a4, s10
                  lb           s4, 12(t0)
                  lw           a3, 33(t0)
                  sb           s9, -34(t0)
                  slli         a2, s5, 31
                  auipc        a1, 907162
                  slti         t6, ra, -329
                  or           s10, a0, t2
                  slli         tp, t4, 15
                  sub          s7, s8, s2
                  addi         a4, a3, -946
                  sltu         t2, a3, t2
                  lbu          a6, 28(t0)
                  sltu         t4, a5, a1
                  ori          s9, a4, -1332
                  lb           s11, -46(t0)
                  sw           sp, 33(t0)
                  auipc        s8, 629184
                  lhu          s3, -1(t0)
                  srai         s5, a3, 14
                  slti         a1, t1, -1408
                  lh           a4, 51(t0)
                  sb           t1, -8(t0) #end riscv_load_store_rand_instr_stream_1
                  lui          t2, 791984
                  auipc        s5, 944958
                  ori          s7, s5, -1977
                  bgeu         tp, a4, 13f
                  srli         a3, s11, 10
                  sltiu        a4, ra, 9
                  beq          t4, a3, 12f
                  slti         a5, a5, -645
                  andi         a4, t0, -891
                  lui          a0, 624359
                  sra          a3, s10, a0
                  slli         zero, s2, 25
12:               or           t5, gp, s10
13:               nop
                  bltu         tp, a6, 32f
                  slt          s11, s2, sp
                  nop
                  auipc        s4, 330635
                  and          a4, sp, t0
                  xori         zero, s6, 1464
                  or           s3, t6, s11
                  la           sp, region_1+1984 #start riscv_load_store_rand_instr_stream_5
                  sh           a7, -10(sp)
                  lw           s3, -180(sp)
                  lb           s6, -123(sp)
                  lbu          t3, -141(sp)
                  lb           tp, -223(sp)
                  lb           t1, -33(sp)
                  addi         tp, a6, -917
                  addi         a1, ra, 861
                  lbu          s8, -116(sp)
                  sb           t6, -161(sp)
                  lh           zero, -36(sp)
                  auipc        t3, 399849
                  lbu          a2, -5(sp)
                  lbu          a0, -95(sp)
                  sb           a1, -205(sp)
                  lbu          a0, -163(sp)
                  srl          t1, a6, a5
                  lbu          t6, -230(sp)
                  slti         a4, ra, -1920
                  srli         a6, a6, 18
                  or           t2, s7, a5
                  sh           s10, -18(sp)
                  sll          s0, t5, t5
                  srai         t5, a7, 10
                  sb           t3, -126(sp)
                  ori          a4, t1, 2028
                  lb           s10, -105(sp)
                  lh           t4, 8(sp)
                  lbu          a0, -212(sp)
                  sb           s9, -98(sp)
                  sltu         s5, tp, t3
                  lb           zero, -159(sp) #end riscv_load_store_rand_instr_stream_5
                  lui          a1, 884179
                  beq          a5, a3, 36f
                  and          t2, s5, a4
                  srli         t6, s8, 24
                  bgeu         a1, t1, 26f
26:               xor          s9, zero, s8
                  andi         s6, s6, -100
                  sltiu        t1, gp, -1070
                  lui          t5, 850623
                  xori         s6, a3, -1578
                  srli         t2, s4, 3
32:               xori         s8, a0, -890
                  addi         s5, s10, 774
                  sltiu        s6, s5, 2012
                  or           zero, gp, t0
36:               slt          t1, a4, zero
                  sll          s9, t4, s1
                  slti         s3, gp, -1209
                  ori          t2, t6, -176
                  srl          s3, s6, s9
                  sll          a0, t1, t0
                  xor          tp, a7, s10
                  beq          t1, sp, 59f
                  xori         s11, zero, 1030
                  srli         sp, s3, 18
                  auipc        s11, 1028158
                  lui          s6, 591527
                  ori          a0, t5, 1672
                  sra          s4, s3, a6
                  srli         s9, s5, 21
                  srli         t4, s6, 15
                  ori          t0, a3, 1991
                  srai         s6, tp, 29
                  slt          zero, t1, t0
                  lui          s5, 450923
                  bne          s0, s5, 73f
                  nop
                  addi         gp, t3, -523
59:               or           a3, t0, gp
                  bltu         a6, s5, 77f
                  srai         t6, a6, 24
                  slli         t3, a5, 24
                  sltiu        s4, a4, 1989
                  lui          sp, 1037651
                  bne          gp, zero, 84f
                  nop
                  sll          s7, t2, a6
                  slti         a0, s4, -1551
                  add          s9, s6, a0
                  sub          s5, a6, t1
                  lui          s7, 216800
                  beq          s8, s11, 74f
73:               auipc        s9, 954334
74:               andi         s11, tp, 480
                  auipc        s10, 969537
                  blt          t1, s4, 80f
77:               bltu         s4, s8, 92f
                  and          a5, t5, t4
                  ori          t2, a3, 1637
80:               lui          zero, 657557
                  xor          t1, t0, sp
                  srai         a5, s2, 3
                  bltu         a0, s2, 101f
84:               andi         a2, s9, 1699
                  bge          s2, s10, 99f
                  andi         t6, t3, -2045
                  srai         s7, a4, 23
                  addi         a2, s2, -827
                  lui          t2, 295553
                  sub          t3, s9, t5
                  lui          tp, 20889
92:               sra          a6, s1, t6
                  add          t4, gp, s6
                  addi         sp, s0, -1393
                  slt          s3, a2, a5
                  sll          t6, s10, t3
                  srli         a3, s1, 14
                  lui          sp, 273671
99:               or           s8, s11, a6
                  beq          t4, t6, 116f
101:              auipc        t2, 198653
                  and          s5, s9, sp
                  sra          tp, s7, s7
                  xori         s7, s9, 1035
                  slti         a0, s11, 808
                  bgeu         s1, t0, 112f
                  xor          a2, s1, t5
                  or           a5, s3, a2
                  and          s0, s6, s4
                  bge          t4, s11, 121f
                  add          s7, s2, gp
112:              sltu         s7, s3, t1
                  srai         a2, a7, 22
                  sltu         t2, t3, gp
                  addi         t2, s8, 1604
116:              slti         a2, s1, -1302
                  nop
                  slti         a2, s8, 122
                  slli         s8, a5, 13
                  sltiu        s11, sp, -915
121:              xori         t0, s4, 706
                  srli         t5, s8, 23
                  blt          gp, a6, 125f
                  sra          t5, t1, a6
125:              andi         s0, s8, 721
                  add          t2, s10, a3
                  andi         s8, a0, -859
                  bge          s7, s5, 146f
                  xori         a6, gp, -262
                  and          a3, s0, a4
                  slti         t4, ra, 1345
                  ori          s10, a2, -1114
                  blt          a2, a4, 147f
                  sltu         t3, s9, a4
                  andi         s7, s4, 831
                  xori         zero, s6, -1578
                  andi         t6, a2, -155
                  slt          a3, s8, s7
                  srli         s3, a3, 23
                  slti         s3, s3, -1079
                  sra          s3, s0, t1
                  xori         t0, ra, 1072
                  beq          zero, s6, 145f
                  bltu         s8, s1, 158f
145:              add          a4, s5, a6
146:              and          s10, s6, a3
147:              bne          sp, s11, 154f
                  sra          s10, a4, a0
                  sra          tp, a0, a0
                  xori         t1, s7, -512
                  and          s10, t4, t5
                  bne          t1, s8, 154f
                  lui          s3, 838453
154:              bne          s1, s3, 168f
                  and          t5, s11, t2
                  and          s0, a4, s1
                  bltu         s1, s3, 172f
158:              sltiu        s3, s11, -396
                  and          s11, s2, t4
                  srli         a2, a3, 30
                  sltu         t3, a3, s10
                  srli         s11, a1, 10
                  bgeu         s10, s4, 173f
                  sltiu        a0, a0, -283
                  or           t0, t3, s1
                  slti         s5, ra, -53
                  xori         s10, a3, 1646
168:              srli         sp, a4, 20
                  auipc        a0, 873654
                  sltu         a2, a6, s0
                  sll          a6, gp, t3
172:              bltu         s4, s5, 183f
173:              srai         sp, a0, 21
                  andi         s5, t4, -1134
                  ori          t3, s5, -580
                  beq          gp, s7, 185f
                  sra          t2, a5, a3
                  sltu         t0, s11, a1
                  beq          a1, t5, 198f
                  nop
                  srl          s3, a5, t5
                  xori         t6, a7, -1577
183:              sltu         s4, a2, zero
                  beq          a2, zero, 190f
185:              auipc        a4, 608283
                  srli         a4, s6, 30
                  addi         a5, a3, -1770
                  nop
                  lui          t6, 225897
190:              lui          s6, 936982
                  bge          s1, a5, 205f
                  bne          tp, a0, 198f
                  auipc        a0, 251245
                  srl          a6, s11, s6
                  lui          zero, 222464
                  srl          t5, a1, s8
                  nop
198:              srl          t6, t4, t1
                  lui          s10, 517406
                  srai         a5, s1, 2
                  ori          t5, t3, -1733
                  bltu         a1, a5, 203f
203:              addi         s7, tp, -1175
                  ori          s3, a7, -1685
205:              sll          sp, s6, s2
                  nop
                  sltiu        t1, s10, 2023
                  bge          t6, t3, 219f
                  xori         t0, s1, 1223
                  bge          s2, a4, 228f
                  nop
                  add          s6, t3, s0
                  srl          s7, a2, s0
                  xori         zero, ra, 1868
                  ori          a5, a4, -1089
                  nop
                  bge          t0, gp, 231f
                  sra          a4, s11, ra
219:              slti         gp, t2, -1912
                  bltu         s10, t4, 234f
                  srl          sp, s9, s3
                  sll          a5, s11, t6
                  slt          t4, s9, t2
                  nop
                  and          tp, s0, t2
                  bgeu         sp, s4, 241f
                  slli         sp, a6, 25
228:              and          s9, a7, s8
                  sll          s5, a7, s1
                  srli         a1, s9, 18
231:              srl          s4, a6, zero
                  bgeu         s11, s3, 251f
                  bge          t3, a7, 237f
234:              slt          a6, a5, a1
                  and          t3, a0, a0
                  sub          gp, t2, gp
237:              addi         sp, t1, -1945
                  xor          t5, t0, a7
                  srli         s9, zero, 27
                  bgeu         a3, t3, 254f
241:              bge          sp, sp, 260f
                  addi         a3, s4, 1171
                  sub          t0, s8, a7
                  ori          t6, t2, 455
                  slli         s9, a0, 13
                  ori          s6, s5, -506
                  andi         s3, ra, -1655
                  blt          s2, s2, 266f
                  slt          s7, a3, s11
                  add          t2, a6, a4
251:              sltiu        t3, a2, 1962
                  xor          t2, gp, s2
                  xori         t6, t1, -1977
254:              slli         ra, s1, 6
                  bne          t2, a1, 272f
                  slli         t0, s11, 12
                  ori          a0, s2, -1198
                  bge          sp, t1, 274f
                  lui          a3, 782900
260:              bltu         a0, a7, 275f
                  addi         t5, s2, -354
                  slli         a2, s5, 19
                  auipc        t0, 830282
                  bltu         ra, s9, 274f
                  or           s3, a7, gp
266:              slt          gp, s3, s10
                  or           t6, t3, s1
                  sra          s6, tp, a4
                  bne          s3, t5, 285f
                  addi         t4, a4, -651
                  sra          s4, a7, sp
272:              beq          ra, a2, 281f
                  addi         s9, t5, -593
274:              nop
275:              bge          gp, s1, 292f
                  srl          t4, s8, s2
                  srl          a2, t1, s4
                  bge          a4, t3, 280f
                  bltu         t1, t0, 290f
280:              srli         sp, zero, 2
281:              add          s7, t6, t5
                  sra          t1, t5, s5
                  xori         tp, a6, 1479
                  bge          ra, t0, 286f
285:              bltu         a1, sp, 287f
286:              sltu         gp, a6, a4
287:              add          t5, a5, s4
                  slti         tp, t0, 142
                  auipc        t1, 652676
290:              sra          s5, t5, t6
                  slt          a0, s11, s10
292:              srli         zero, a4, 17
                  nop
                  addi         a3, a7, 1057
                  add          s0, s2, ra
                  lui          t3, 530355
                  nop
                  xor          t2, t4, s5
                  lui          a4, 388390
                  slti         s10, a1, -1206
                  bge          s6, s2, 319f
                  ori          s5, a7, 1840
                  addi         t1, a3, 1358
                  blt          a6, s10, 318f
                  slli         a6, s8, 27
                  bne          t4, s10, 308f
                  slti         s7, a6, 531
308:              or           s10, s7, s8
                  srli         t6, t4, 14
                  blt          a3, s3, 320f
                  lui          s11, 645617
                  blt          a2, t2, 319f
                  auipc        t2, 701136
                  slti         s11, s0, -2
                  bgeu         s2, zero, 330f
                  xor          t2, t2, a3
                  slti         s9, s7, -1864
318:              xor          s5, s0, ra
319:              bne          s7, sp, 338f
320:              blt          s4, t3, 331f
                  or           s10, s10, s5
                  bgeu         t0, s8, 324f
                  bne          s5, t3, 333f
324:              andi         a1, ra, -1941
                  sll          a5, ra, a7
                  bge          s9, a5, 336f
                  auipc        s4, 964593
                  srli         a5, t0, 19
                  slti         a4, t2, -1975
330:              xori         tp, tp, 1536
331:              beq          s0, t3, 337f
                  bgeu         s7, s11, 348f
333:              blt          t3, a3, 349f
                  and          s7, s1, ra
                  xor          t1, a6, t1
336:              andi         a3, s9, 1482
337:              slti         sp, ra, -752
338:              bge          t0, s4, 352f
                  sra          s11, a0, sp
                  ori          s4, a0, 1211
                  blt          a2, s8, 345f
                  addi         gp, gp, -508
                  blt          t0, a5, 358f
                  sra          s4, s3, a0
345:              bgeu         s5, t2, 363f
                  bge          a1, s7, 363f
                  srli         t1, s6, 5
348:              or           s4, s8, gp
349:              or           s0, s8, ra
                  sra          s10, a0, a1
                  lui          gp, 715226
352:              srai         s8, s7, 10
                  nop
                  blt          t4, s10, 356f
                  lui          zero, 691218
356:              auipc        s6, 816152
                  slti         t3, s6, 189
358:              nop
                  slt          s8, s3, gp
                  auipc        a0, 992509
                  beq          t1, s11, 367f
                  andi         t1, t3, -1386
363:              xori         s6, a5, -806
                  srli         s7, gp, 27
                  slt          t4, tp, s11
                  sub          a4, a4, s3
367:              andi         a1, s8, -899
                  bge          s0, a0, 379f
                  addi         ra, a4, 855
                  lui          t5, 31686
                  beq          t2, s1, 385f
                  bltu         t1, sp, 374f
                  srl          t4, a2, s0
374:              sll          t4, t1, s4
                  sll          s11, a2, s10
                  or           t6, a5, s2
                  bge          t3, t0, 391f
                  blt          a3, s10, 387f
379:              addi         a2, a3, -609
                  bne          tp, s0, 394f
                  xor          s6, t5, a1
                  lui          t0, 135105
                  slt          gp, s9, t3
                  and          a6, a1, s0
385:              auipc        ra, 403561
                  sltiu        a6, tp, 1499
387:              srai         tp, a0, 22
                  srl          a2, ra, zero
                  addi         a0, a6, 785
                  blt          s4, a5, 397f
391:              addi         zero, s6, 1879
                  slt          s6, s9, a3
                  la           s0, region_1+1296 #start riscv_load_store_rand_instr_stream_3
                  sb           s0, -2(s0)
                  xori         s10, a4, 166
                  sra          a1, t1, s2
                  xori         s3, zero, 1195
                  xori         s8, a1, -1823
                  xor          a0, a6, t3
                  ori          t4, zero, 347
                  addi         t3, a0, 1918
                  slti         s3, t6, 110
                  or           s10, ra, a2
                  slli         a3, zero, 22
                  sltiu        a2, a1, -759
                  lbu          sp, -1(s0)
                  sra          s11, s7, a7
                  andi         s8, s5, 868
                  lbu          a3, -13(s0)
                  lb           s9, 11(s0)
                  sra          a2, s4, t4
                  add          t0, a1, gp
                  sb           a2, -9(s0)
                  sub          a5, tp, s1
                  slt          gp, a6, t4
                  sub          t5, zero, t4
                  addi         t3, s10, 1548
                  sltiu        t0, s9, -1879
                  sb           gp, 9(s0)
                  sh           t0, 8(s0)
                  lhu          a5, 4(s0)
                  lb           a6, 15(s0)
                  add          s3, s8, s6
                  xor          a3, s5, s3
                  sltu         ra, s8, s11
                  sw           s9, -16(s0)
                  lw           s7, -4(s0)
                  srli         sp, t6, 31
                  lh           a5, -16(s0) #end riscv_load_store_rand_instr_stream_3
                  slti         a6, t3, 1394
394:              ori          t3, zero, 947
                  sub          a6, a0, t1
                  srli         s5, a2, 28
397:              srai         t3, s5, 5
                  bltu         a5, s11, 412f
                  blt          ra, t4, 417f
                  slti         zero, tp, 1927
                  bne          s7, s5, 418f
                  xori         a2, t1, -1352
                  slti         t5, s5, 352
                  or           gp, t5, a5
                  lui          gp, 514820
                  lui          t3, 244027
                  bltu         s9, a1, 408f
408:              bne          a7, ra, 426f
                  beq          t1, t1, 411f
                  add          ra, t6, sp
411:              slli         s8, s11, 9
412:              slt          t4, s9, s3
                  bgeu         sp, a1, 432f
                  xori         a3, s3, 1048
                  nop
                  bgeu         tp, a5, 431f
417:              bltu         a5, t5, 436f
418:              slli         s8, a6, 10
                  lui          s10, 901203
                  auipc        s11, 1010864
                  bltu         t0, a1, 439f
                  slli         a3, s9, 1
                  beq          s1, t3, 425f
                  sll          s6, s10, gp
425:              sra          a2, a5, s0
426:              bne          ra, a1, 437f
                  beq          s8, t6, 434f
                  slti         a6, t0, -1548
                  andi         t4, a7, 1817
                  bge          s11, s10, 446f
431:              xori         s10, a5, 234
432:              sll          s10, gp, t3
                  srai         a1, s2, 16
434:              blt          ra, t1, 438f
                  andi         t6, s0, -1052
436:              sltu         s6, s0, s8
437:              lui          t1, 903263
438:              slt          s4, t2, a2
439:              andi         s11, s5, 939
                  or           s6, a7, s0
                  bne          s5, s3, 443f
                  nop
443:              ori          ra, s10, -373
                  beq          a4, s9, 450f
                  slt          a1, a6, s7
446:              xori         a1, s2, 742
                  srl          t5, t5, s9
                  srli         s11, sp, 31
                  or           tp, s4, t3
450:              and          tp, a0, tp
                  bltu         t5, a1, 470f
                  or           gp, s2, s9
                  bne          a7, a0, 455f
                  beq          s6, a3, 468f
455:              lui          sp, 300259
                  sltiu        s4, tp, -494
                  sltiu        t0, t2, 1193
                  nop
                  nop
                  slt          s7, s9, a4
                  or           t3, t0, ra
                  sra          s3, s10, s4
                  xor          t4, s9, s6
                  and          t0, a3, t1
                  sltiu        t4, tp, 1789
                  lui          gp, 63059
                  lui          a2, 624982
468:              bgeu         t3, s2, 486f
                  bltu         a7, a2, 478f
470:              and          t6, gp, t0
                  sll          s0, t1, s10
                  ori          s4, a2, -1769
                  blt          s8, a4, 474f
474:              bgeu         s11, t4, 489f
                  nop
                  nop
                  or           a2, a4, s3
478:              srl          t6, s6, s10
                  bgeu         a3, s8, 481f
                  sub          t3, a0, a3
481:              beq          a0, s8, 499f
                  xori         s8, a7, 1256
                  andi         s5, s1, 1123
                  srl          a6, a0, s2
                  slti         zero, s10, -1634
486:              xori         s5, tp, -131
                  bge          t5, a4, 493f
                  sll          a6, s10, a6
489:              nop
                  xor          s6, s10, ra
                  blt          a7, a0, 501f
                  sltu         s10, s11, a0
493:              slli         t1, t5, 10
                  auipc        s0, 284624
                  bltu         t3, a6, 512f
                  sra          ra, s5, t0
                  sltiu        t0, s7, -1137
                  add          t6, s8, t0
499:              auipc        s7, 469217
                  blt          tp, s6, 510f
501:              srl          ra, a3, s4
                  srl          s9, s3, s2
                  andi         t4, t0, 127
                  sltiu        a5, a7, -1785
                  ori          a1, t2, 533
                  addi         s6, zero, -1454
                  slti         gp, t0, 864
                  sra          t1, t5, tp
                  bltu         a6, a3, 523f
510:              beq          s4, s10, 521f
                  srli         s6, s7, 5
512:              sltu         t3, a3, sp
                  srai         s3, s5, 19
                  sll          s7, s10, sp
                  or           a5, ra, s3
                  ori          s11, t1, 1268
                  bltu         a7, s4, 533f
                  ori          t1, t3, -2041
                  bge          t2, tp, 533f
                  lui          a6, 498243
521:              bne          a4, s10, 535f
                  bgeu         s3, s4, 539f
523:              sra          a5, s10, a7
                  blt          t2, s3, 538f
                  sltu         s7, t6, s2
                  xor          t3, a5, s0
                  and          a3, t0, t1
                  beq          a1, a2, 545f
                  srl          a5, s9, a2
                  beq          a1, a7, 545f
                  xor          zero, a2, a4
                  nop
533:              sll          gp, s0, a0
                  srl          a0, s9, a4
535:              addi         t2, a3, -663
                  blt          sp, t2, 547f
                  lui          t5, 377328
538:              sltiu        t4, tp, -155
539:              xori         s7, s8, -945
                  lui          t1, 93477
                  addi         gp, a6, -766
                  and          t1, s2, ra
                  sll          s8, s6, s8
                  srai         t6, t6, 7
545:              sra          s0, t0, sp
                  slti         s8, s1, 957
547:              blt          s4, a2, 556f
                  andi         sp, a3, 650
                  slt          a4, gp, a0
                  slti         a6, t4, -82
                  and          s0, s4, ra
                  slti         zero, t4, -1625
                  or           t0, a5, t5
                  addi         s3, s6, -249
                  and          a4, t1, sp
556:              blt          a3, a2, 567f
                  xori         t6, s6, 403
                  sltiu        t3, a6, 1843
                  xor          s8, t1, s8
                  lui          a0, 377023
                  bgeu         a2, a2, 576f
                  ori          s11, s3, -638
                  srli         s5, a7, 27
                  sltu         zero, t5, t3
                  ori          s10, a0, -1746
                  sltu         a0, t1, s10
567:              slli         t4, s4, 26
                  auipc        s4, 439512
                  sltu         t5, t6, a0
                  lui          a4, 847426
                  nop
                  srai         s10, t1, 30
                  srai         a2, s5, 25
                  bltu         s11, s3, 576f
                  slti         zero, a1, 57
576:              or           t5, a2, a3
                  or           a2, s4, s5
                  ori          t4, s8, -785
                  lui          t5, 743418
                  blt          t4, gp, 598f
                  bne          zero, t2, 588f
                  slt          s10, a1, a2
                  addi         a2, t5, 564
                  bltu         t5, s0, 603f
                  srli         a4, s11, 27
                  blt          s2, s4, 588f
                  andi         s5, s11, -613
588:              slti         s11, a6, 434
                  xori         t1, ra, -1024
                  add          s7, a7, a7
                  and          t0, gp, s5
                  srli         a6, s2, 14
                  sltiu        t4, t3, 960
                  slt          s4, s4, a5
                  sra          s0, s4, s6
                  nop
                  slt          sp, a1, sp
598:              slti         t2, t1, 1910
                  bge          gp, s6, 601f
                  nop
601:              andi         s0, t4, 304
                  slt          s11, a6, s2
603:              slli         a6, s9, 17
                  bltu         ra, a7, 622f
                  and          ra, s7, sp
                  sltu         s8, s10, a3
                  lui          s3, 253725
                  blt          s11, t2, 622f
                  bne          a2, s2, 615f
                  or           tp, a4, s6
                  blt          ra, a1, 625f
                  nop
                  ori          s3, gp, 1720
                  slti         a6, s5, 912
615:              sll          t0, t1, sp
                  addi         s8, ra, -1623
                  srli         a5, t0, 9
                  andi         s9, gp, -103
                  bgeu         t0, t5, 620f
620:              slli         s8, sp, 20
                  srl          a0, a4, t2
622:              xori         t6, gp, -1013
                  addi         s10, t4, 936
                  srl          s3, t2, t4
625:              andi         t0, t3, -1750
                  auipc        a0, 46515
                  bne          t4, t3, 631f
                  srai         tp, a4, 20
                  slti         a2, t0, 1949
                  sll          t5, t3, s11
631:              or           s4, a5, s9
                  andi         t4, a5, -186
                  beq          s3, s11, 643f
                  slt          sp, s7, s4
                  beq          t5, sp, 654f
                  beq          tp, a3, 642f
                  sll          s5, s2, tp
                  sub          sp, s8, t1
                  nop
                  slti         a5, t4, 1122
                  slt          a3, s2, t1
642:              bne          t2, t0, 659f
643:              srai         t3, s2, 28
                  xori         t4, s4, -1789
                  bge          s11, s7, 663f
                  sltiu        t0, s1, -650
                  beq          s3, s7, 657f
                  andi         a4, sp, -1858
                  xor          s0, s7, t4
                  sltu         t6, a6, tp
                  slt          a5, s2, s11
                  srai         s3, a4, 17
                  nop
654:              add          s3, t2, t2
                  addi         a6, s3, 1821
                  sra          s10, s6, a0
657:              bge          s5, sp, 671f
                  or           sp, gp, zero
659:              bgeu         tp, a4, 675f
                  add          a3, a2, a7
                  slli         s7, s8, 29
                  bne          t0, a5, 678f
663:              bltu         s7, t6, 677f
                  or           s7, a0, t3
                  slli         s11, s4, 5
                  bne          t0, a3, 680f
                  or           s6, s6, s4
                  beq          sp, s4, 670f
                  beq          a1, a1, 671f
670:              xor          a1, s3, s0
671:              and          s5, t2, s8
                  lui          a1, 729604
                  slti         t6, a3, 1651
                  blt          s5, a7, 691f
675:              slli         t4, ra, 27
                  andi         a4, a5, 351
677:              or           t3, a7, zero
678:              auipc        a2, 370685
                  add          s7, s6, t6
680:              nop
                  bge          t3, a6, 698f
                  sll          t1, s11, s9
                  sltu         s6, sp, sp
                  andi         t3, a6, 651
                  sll          t6, ra, ra
                  slti         s9, t2, 304
                  ori          s5, a1, 1021
                  bgeu         zero, ra, 702f
                  sll          s4, t6, a0
                  sltu         s7, a4, sp
691:              bne          a0, t0, 693f
                  bne          a1, t1, 693f
693:              andi         a5, s8, -2044
                  srli         s4, t5, 4
                  slt          sp, t6, a7
                  srai         s4, a3, 15
                  auipc        s9, 939845
698:              add          a2, tp, ra
                  bgeu         t5, s4, 705f
                  sll          t5, tp, t0
                  andi         zero, a1, 1378
702:              srai         a4, a2, 16
                  bge          a1, t0, 719f
                  add          s0, a3, t4
705:              xor          s4, ra, s1
                  bgeu         s5, s11, 712f
                  bltu         t6, s7, 717f
                  xor          a0, tp, s8
                  slti         sp, s8, -1424
                  addi         t3, t4, -67
                  auipc        tp, 721478
712:              sub          sp, t2, s7
                  sub          a3, t3, t5
                  srai         a5, t4, 22
                  slti         s10, t0, 294
                  addi         t0, t1, 1949
717:              addi         ra, s6, -1460
                  beq          t4, s6, 727f
719:              sll          t2, s11, a7
                  sub          t6, s7, t1
                  ori          t3, s2, -1649
                  bltu         s8, t0, 741f
                  xori         sp, s4, 578
                  slli         s9, a4, 26
                  bgeu         s3, t5, 729f
                  sub          a1, t1, s8
727:              srai         s3, t2, 21
                  sltiu        s3, zero, 2038
729:              bge          s2, s11, 731f
                  andi         t2, ra, 1824
731:              slti         a2, a5, 1073
                  sub          a2, t1, s6
                  srai         zero, s11, 26
                  slli         s11, t2, 1
                  sra          t3, t4, s0
                  lui          s4, 294514
                  srli         tp, a5, 1
                  auipc        s5, 283847
                  nop
                  beq          s9, s4, 754f
741:              bgeu         a3, s10, 760f
                  xor          s4, a4, a0
                  sltu         t6, zero, s4
                  srli         a1, t1, 7
                  beq          gp, t3, 763f
                  bltu         sp, t2, 764f
                  andi         s10, s11, 1019
                  sll          a5, t5, sp
                  and          t0, s8, a6
                  sltiu        t5, a1, 736
                  slli         zero, ra, 13
                  srl          a3, t1, s1
                  nop
754:              bgeu         s6, s4, 769f
                  add          s4, sp, s1
                  sub          s10, s8, t2
                  beq          t4, s9, 771f
                  nop
                  addi         s6, s6, 870
760:              sll          a1, a6, t5
                  sltiu        s10, t3, 254
                  sltu         sp, s0, t4
763:              auipc        a5, 785317
764:              xor          a6, t2, ra
                  slti         a6, tp, -1076
                  auipc        a3, 97607
                  slti         a6, t4, 999
                  sll          tp, t4, zero
769:              srli         tp, tp, 20
                  blt          a2, t6, 781f
771:              xor          s9, a4, s2
                  beq          s3, tp, 787f
                  slt          a3, ra, s1
                  nop
                  slti         gp, s5, 430
                  sll          a4, s5, t5
                  sltiu        a4, a3, -1760
                  auipc        t2, 640848
                  or           s0, s9, s8
                  blt          s4, t3, 791f
781:              blt          s8, a2, 791f
                  andi         ra, a5, 1765
                  sra          t0, t4, s2
                  beq          zero, s8, 802f
                  add          s5, t2, s9
                  slli         ra, a0, 4
787:              auipc        zero, 355693
                  slt          t1, s3, s6
                  slli         a0, t5, 0
                  auipc        s10, 190687
791:              slt          tp, s6, s6
                  sll          tp, a4, a7
                  beq          s11, t3, 807f
                  bgeu         s6, t4, 801f
                  xori         a5, a1, -289
                  add          a0, s0, a0
                  sll          tp, zero, gp
                  sll          s10, t4, s4
                  blt          s2, s10, 815f
                  blt          t4, s8, 814f
801:              bgeu         s5, tp, 803f
802:              bltu         s5, t1, 808f
803:              add          t5, a7, a2
                  addi         s0, a0, -1402
                  sub          s6, zero, s5
                  bltu         gp, sp, 824f
807:              slt          a3, a0, s6
808:              slti         tp, a0, -1379
                  addi         t4, t5, -1241
                  beq          s6, a7, 829f
                  sll          s7, s8, t6
                  blt          tp, a4, 819f
                  srl          s6, s7, t4
814:              sll          ra, a2, a0
815:              add          s7, t0, a7
                  and          t1, s6, s6
                  ori          s6, s11, -462
                  beq          s10, t6, 836f
819:              beq          s9, a6, 835f
                  sltiu        s0, a0, 205
                  xori         s3, t5, 702
                  bltu         s4, s6, 836f
                  and          sp, s6, tp
824:              nop
                  bge          s4, a5, 836f
                  and          s11, t2, s4
                  srl          t2, a0, t5
                  bgeu         t3, s5, 845f
829:              sltu         a0, t6, s7
                  slt          t1, s2, s1
                  andi         t5, s0, -861
                  or           t2, a2, t0
                  sltiu        s9, a4, 83
                  srl          a0, s11, s4
835:              andi         s0, zero, 1093
836:              sll          tp, s11, a3
                  srai         s5, s10, 7
                  sltiu        s9, t3, 1071
                  auipc        ra, 432749
                  slt          t1, ra, s3
                  nop
                  lui          s8, 677067
                  andi         s5, s1, 928
                  auipc        t6, 715827
845:              auipc        gp, 504756
                  sra          t1, t0, s6
                  sll          t5, t2, s5
                  bltu         a2, s11, 865f
                  slt          t2, s1, t4
                  sltiu        t6, gp, 944
                  bne          t6, a5, 853f
                  andi         gp, t4, 1280
853:              srli         t1, t3, 9
                  xor          zero, s7, a7
                  nop
                  slli         s7, s2, 10
                  bne          t3, a1, 871f
                  ori          s6, zero, -1472
                  srai         t1, s4, 28
                  bge          s11, a6, 878f
                  slli         t6, t0, 4
                  add          s0, s11, t5
                  sra          s10, a2, t0
                  srli         s11, s9, 1
865:              slti         s3, zero, 1284
                  xori         gp, t2, 1820
                  beq          t3, zero, 871f
                  slt          t0, tp, a1
                  bgeu         s5, a6, 883f
                  sltiu        s6, sp, 195
871:              slti         s6, a4, -1816
                  sub          s7, t2, a6
                  bne          sp, s3, 884f
                  bltu         s3, t6, 883f
                  lui          t0, 792840
                  addi         s3, t5, 1959
                  addi         tp, a2, 168
878:              slli         t4, a7, 28
                  add          s7, s7, a5
                  srli         t2, a4, 5
                  slt          s9, a2, gp
                  sll          t0, a3, t4
883:              srl          ra, t5, gp
884:              srli         s8, s0, 25
                  sltiu        gp, a5, -146
                  nop
                  sltu         t2, a1, s3
                  ori          s7, s9, -301
                  addi         t6, t3, 640
                  auipc        a5, 991292
                  bge          s1, s2, 901f
                  slt          s9, a0, t2
                  sub          s8, s3, t6
                  srl          t4, t4, a2
                  srai         s3, s9, 21
                  bne          s9, t4, 910f
                  slt          t4, zero, s3
                  lui          ra, 431753
                  bge          a2, t5, 918f
                  blt          a7, ra, 902f
901:              ori          ra, a2, 196
902:              lui          s3, 492560
                  slt          t5, a0, s11
                  or           t2, a2, t4
                  xor          a3, s7, s3
                  sub          s11, s11, s7
                  xor          a5, tp, ra
                  sltu         ra, s1, s8
                  sll          s10, s5, a0
910:              sra          a3, a6, a5
                  slt          s6, s4, zero
                  bltu         tp, a3, 914f
                  sltu         a6, a2, t4
914:              sub          a1, t3, t0
                  bgeu         a5, s3, 921f
                  xori         s3, s2, 492
                  srli         s4, t3, 26
918:              sltu         s6, a0, t1
                  bge          a1, zero, 934f
                  slti         t0, s9, -1865
921:              srai         t1, s4, 30
                  lui          sp, 560397
                  slli         s10, s5, 9
                  bne          t1, t2, 939f
                  srai         s11, s11, 5
                  beq          s10, t4, 942f
                  or           t1, t0, s3
                  bge          s2, sp, 942f
                  bge          s11, a3, 939f
                  add          t1, t6, s11
                  xor          a6, s11, tp
                  sll          t6, s2, a7
                  ori          zero, t5, -102
934:              sra          t2, t5, a1
                  bgeu         a3, t0, 936f
936:              srai         a1, s2, 7
                  xor          gp, a1, a7
                  or           a2, gp, s9
939:              srai         s5, s9, 3
                  nop
                  bge          gp, s3, 943f
942:              ori          t0, t4, -2031
943:              xori         s9, t3, -1415
                  srai         t4, ra, 24
                  addi         a0, t2, 934
                  sra          a6, s5, a6
                  lui          t3, 750106
                  sltiu        sp, a2, 23
                  bltu         a6, s9, 963f
                  auipc        t0, 676280
                  beq          t6, s1, 958f
                  sltu         s11, s10, s8
                  andi         s5, t1, 611
                  sub          tp, s11, t1
                  sltiu        a4, t1, -1962
                  sra          a4, t5, t0
                  nop
958:              sub          a1, a0, a2
                  lui          t4, 606245
                  srli         s9, a3, 20
                  auipc        a6, 217681
                  sll          a1, t2, t5
963:              or           s4, s4, gp
                  andi         a0, ra, 611
                  slti         s0, ra, 1377
                  sltu         t1, t1, s2
                  addi         ra, s10, -558
                  slli         s10, s10, 3
                  slt          s3, s9, a7
                  srl          t2, tp, t6
                  slli         t6, s11, 26
                  slti         gp, a7, 433
                  sra          zero, s10, a5
                  lui          zero, 641867
                  nop
                  beq          t5, s10, 986f
                  srai         s7, s4, 16
                  xor          s0, s2, a6
                  blt          t3, s11, 997f
                  bltu         a4, s2, 991f
                  bge          a0, a4, 983f
                  or           a4, tp, s8
983:              ori          t6, s8, 1588
                  bgeu         s1, t0, 993f
                  srai         t4, a0, 2
986:              sltiu        ra, a6, -1633
                  beq          a4, t6, 1001f
                  xor          sp, zero, gp
                  xori         ra, s1, -82
                  add          zero, s0, gp
991:              lui          t1, 325788
                  and          s10, s2, a7
993:              addi         t1, s7, -959
                  srl          s9, t1, zero
                  beq          t5, sp, 1001f
                  addi         t2, a3, 1103
997:              slt          t3, s11, a6
                  nop
                  auipc        tp, 590365
                  ori          a3, s6, 96
1001:             srli         a0, a4, 0
                  nop
                  bgeu         a6, s6, 1006f
                  andi         s11, t2, 1415
                  sub          tp, t4, a1
1006:             slli         s10, t0, 3
                  add          s9, a5, t1
                  slt          s10, s0, s2
                  lui          s10, 438351
                  auipc        t5, 293454
                  nop
                  sltiu        t1, gp, -240
                  sltiu        a0, ra, 1026
                  lw           ra, 4(s2)
                  addi         s2, s2, 12
                  sub          s3, s3, a3
                  sub          a3, s7, t6
1360:             addi x25, x1, 0
1360:             jalr x25, x25, 0
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
                  add x17, x18, zero
                  csrr x11, 0x300 # MSTATUS
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 31
                  bne x11, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x11, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x11, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x11, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x11, x31, ecall_handler
                  li x31, 0x1
                  beq x11, x31, instr_fault_handler
                  li x31, 0x5
                  beq x11, x31, load_fault_handler
                  li x31, 0x7
                  beq x11, x31, store_fault_handler
                  li x31, 0xc
                  beq x11, x31, pt_fault_handler
                  li x31, 0xd
                  beq x11, x31, pt_fault_handler
                  li x31, 0xf
                  beq x11, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x11, _start
                  sw x0, 0(x11)
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x18, x17, zero
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
                  add x18, x17, zero
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
                  add x18, x17, zero
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
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x18, x17, zero
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
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x18, x17, zero
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
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x18, x17, zero
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
