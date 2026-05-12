.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x25, kernel_stack_end

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
                  li x0, 0xb08d8b33
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0xed1fbc37
                  li x4, 0x9a372a7d
                  li x5, 0x5968d1b8
                  li x6, 0xfceadb6e
                  li x7, 0xfe08ee29
                  li x8, 0xfa2c8b5a
                  li x9, 0x8
                  li x10, 0xfea2eefa
                  li x11, 0xfaf827e2
                  li x12, 0xd
                  li x13, 0x0
                  li x14, 0x0
                  li x16, 0x0
                  li x17, 0xe207575
                  li x18, 0x5
                  li x19, 0x92f21a7a
                  li x20, 0xf839cbc9
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0xfd60d6df
                  li x26, 0xefd76668
                  li x27, 0x0
                  li x28, 0xfd329da3
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0x80000000
                  la x15, user_stack_end
main:             la           sp, region_0+59 #start riscv_load_store_rand_instr_stream_0
                  sll          s4, a7, tp
                  sll          t0, s1, tp
                  addi         s1, t5, -944
                  slt          s11, s2, s8
                  sra          t3, s1, a4
                  sra          ra, s4, gp
                  sub          a1, t3, ra
                  nop
                  lbu          s11, -31(sp)
                  lhu          gp, 39(sp)
                  sb           a3, 11(sp)
                  slli         t0, a0, 21
                  srli         t3, ra, 19
                  sh           a4, -41(sp)
                  andi         s10, zero, -1658
                  lhu          s5, -7(sp)
                  lb           a4, 39(sp)
                  lui          tp, 732618
                  slt          t6, t6, s5
                  addi         a2, t6, 41
                  sb           zero, -26(sp)
                  lbu          s5, -52(sp)
                  lw           a6, 53(sp)
                  sll          t2, a4, s11
                  sll          s4, t3, ra
                  lb           ra, -52(sp)
                  lh           t2, -55(sp)
                  slt          t6, gp, t5
                  lbu          t5, -24(sp)
                  srli         t4, s3, 25
                  lw           s5, -11(sp)
                  srli         s8, s6, 18
                  sh           s11, -45(sp)
                  sh           t2, -37(sp)
                  srl          a0, t0, a1
                  lb           t4, -54(sp)
                  lh           a1, 7(sp)
                  and          s11, t5, t1
                  lhu          t6, -57(sp)
                  srli         s4, s7, 1
                  slli         s7, a1, 25
                  add          t6, a4, s10
                  lhu          s8, -1(sp)
                  sb           a7, 44(sp)
                  lbu          s1, -26(sp)
                  sltiu        t1, t0, -500
                  lh           tp, 11(sp)
                  lb           s7, 53(sp)
                  sub          s6, s3, a5
                  addi         a3, tp, 981
                  sll          s4, zero, s3
                  sb           t5, 33(sp)
                  lb           a7, 60(sp) #end riscv_load_store_rand_instr_stream_0
                  xori         s7, t3, -590
                  andi         s11, a3, -124
                  srai         gp, s9, 17
                  beq          t4, tp, 14f
                  sll          s7, a7, s9
                  ori          ra, s0, 1323
                  srai         t2, s7, 9
                  xori         t2, s9, 844
                  auipc        zero, 664711
                  srli         s4, t4, 0
                  blt          s0, t4, 24f
                  slt          s1, t3, t1
                  auipc        s4, 738865
                  and          gp, zero, s3
14:               sra          s2, s3, gp
                  slli         a7, a5, 5
                  bne          t5, s4, 35f
                  blt          s8, s11, 27f
                  slt          zero, t2, a0
                  or           tp, s0, a0
                  srl          a7, a4, a0
                  sll          s5, gp, s0
                  ori          a6, s4, -1904
                  slti         a4, s8, 941
24:               bltu         a6, t4, 31f
                  bne          t2, gp, 35f
                  andi         s6, sp, 1693
27:               lui          tp, 141069
                  add          a6, a3, s2
                  and          zero, s9, t2
                  srl          s0, s4, a1
31:               bltu         s5, s8, 47f
                  addi         a0, sp, -859
                  slti         s1, s5, 247
                  xor          zero, a3, s7
35:               bgeu         t2, ra, 53f
                  or           t3, s11, s4
                  bgeu         a3, a4, 57f
                  add          t3, t2, s7
                  addi         s11, a0, 376
                  xor          sp, s10, a4
                  or           s8, gp, sp
                  beq          s10, t2, 48f
                  slli         s4, gp, 17
                  slti         a4, s10, 2003
                  ori          t5, s3, 488
                  xor          t2, t1, t5
47:               nop
48:               sltu         s6, t2, a2
                  xor          t2, t6, a2
                  bne          s10, s6, 58f
                  srl          s2, s5, s5
                  srli         ra, gp, 16
53:               xori         s6, t3, -834
                  sub          a4, a0, ra
                  bgeu         t1, t3, 75f
                  or           a3, t3, sp
57:               or           a0, zero, s8
58:               auipc        s11, 207161
                  srai         s1, s2, 30
                  bge          a0, s6, 75f
                  nop
                  bgeu         s1, t3, 70f
                  ori          sp, t6, -677
                  or           tp, s8, a7
                  lui          a0, 918029
                  sltiu        s6, a1, -1910
                  slt          s11, a1, a4
                  sll          s7, s0, a7
                  sltiu        t4, tp, 1077
70:               slt          a2, ra, t2
                  sltiu        ra, s10, -1812
                  addi         a1, s11, 1265
                  srl          a1, s8, s0
                  sub          t2, s5, a5
75:               xor          ra, s0, a1
                  addi         s11, tp, -2024
                  slli         sp, a6, 1
                  srli         s7, a1, 20
                  slli         t5, a3, 10
                  srli         s2, s8, 23
                  slt          a3, s7, a4
                  srai         a1, a5, 12
                  sll          zero, a1, s8
                  add          tp, sp, a5
                  ori          s4, a6, 2006
                  bltu         a7, tp, 96f
                  bgeu         s3, zero, 97f
                  and          s1, t5, a5
                  sll          a7, gp, s4
                  lui          t3, 54724
                  sltiu        s2, s10, -1650
                  beq          t0, a6, 109f
                  slt          t1, t2, s4
                  sra          s5, s10, a6
                  srl          s0, t5, a7
96:               bgeu         t0, zero, 111f
97:               slti         t3, s8, -1470
                  sll          s11, t4, a1
                  slt          s4, a5, s3
                  slli         s2, s0, 4
                  sltu         a0, a2, tp
                  sll          a6, a0, sp
                  bne          s6, s9, 113f
                  blt          t2, s3, 113f
                  nop
                  andi         s11, s2, -1979
                  slli         zero, tp, 26
                  bge          t0, s5, 112f
109:              blt          ra, s9, 110f
110:              sltiu        a2, t5, -2003
111:              srai         t0, s9, 12
112:              auipc        t5, 346717
113:              bne          a4, s2, 124f
                  lui          ra, 782212
                  auipc        s6, 782099
                  sltu         t5, a3, a6
                  sra          t6, sp, t1
                  bgeu         gp, s5, 129f
                  slli         t6, t6, 23
                  sltiu        t4, t4, -35
                  nop
                  sltu         a6, t1, s7
                  addi         s11, sp, 1645
124:              bge          t1, t4, 137f
                  add          s1, a1, sp
                  bne          s11, t4, 136f
                  xori         s4, a6, -1815
                  srai         s4, a2, 19
129:              bgeu         s6, t5, 142f
                  add          s7, t2, a7
                  auipc        s11, 1041710
                  xor          a4, t5, t3
                  bgeu         s4, t1, 141f
                  srli         tp, t4, 19
                  or           a7, tp, t5
136:              lui          s0, 846785
137:              sra          s4, s7, gp
                  bltu         a0, a6, 158f
                  bne          s1, s7, 154f
                  lui          a7, 376842
141:              slt          s2, ra, t4
142:              xor          a4, tp, t0
                  srli         s10, s5, 27
                  and          a3, s11, sp
                  bge          s10, s4, 156f
                  xor          s11, t5, s7
                  srl          s7, s0, s10
                  slt          s2, tp, a0
                  bgeu         t6, gp, 157f
                  srli         a1, s10, 12
                  bne          s9, s10, 160f
                  ori          a7, t4, -1991
                  bltu         t3, s8, 166f
154:              or           a4, ra, s10
                  srli         s10, t6, 9
156:              sll          a1, a0, t2
                  la           a7, sub_1
                  ori          tp, s0, -1783
                  sra          s10, tp, a6
                  addi         a7, a7, 64
                  xori         s4, a3, -1353
                  andi         s10, a5, 1375
                  andi         s1, s1, -1385
main_j2:          jalr         t1, a7, -63 #jump main -> sub_1
157:              beq          t0, t5, 170f
158:              beq          ra, s1, 168f
                  sra          t3, sp, t2
160:              srl          a6, t3, s1
                  addi         t3, sp, 626
                  lui          sp, 29036
                  add          sp, a3, a2
                  bgeu         s6, a4, 174f
                  add          s4, a1, a6
166:              srl          t0, s5, a2
                  sra          a2, t2, t4
168:              srli         s11, t5, 23
                  add          t3, a3, a6
170:              bge          s11, t5, 180f
                  bge          s1, s3, 191f
                  slli         sp, s2, 19
                  sll          gp, s5, s7
174:              srli         s7, gp, 18
                  sltu         a0, t2, zero
                  andi         a6, s7, -763
                  xori         t0, a2, -1781
                  sltu         s4, ra, s1
                  slti         s5, tp, 1583
180:              slt          s8, s7, s5
                  and          a6, s10, t3
                  slli         t5, s1, 29
                  andi         a7, s8, 1544
                  bgeu         ra, t5, 191f
                  xori         a4, t1, -953
                  auipc        t5, 1040286
                  auipc        a0, 464376
                  slli         s2, s2, 25
                  beq          gp, a1, 208f
                  xor          ra, t2, s10
191:              slti         a0, s10, 1635
                  sub          t1, t1, t5
                  or           a1, t6, s1
                  sra          a1, gp, zero
                  xor          t6, a0, a6
                  srai         s5, t0, 17
                  la           a0, sub_1
                  auipc        a1, 148507
                  xor          t5, a6, a7
                  addi         a0, a0, -662
                  xor          tp, a2, a7
                  slli         s6, a1, 21
main_j1:          jalr         t1, a0, 662 #jump main -> sub_1
                  blt          s0, a7, 208f
                  slti         s2, a4, -214
                  blt          s8, s9, 205f
                  slli         t5, a2, 10
                  sra          s1, t6, a3
                  xor          a1, zero, s7
                  beq          t4, s3, 214f
                  srl          t3, a4, a1
                  beq          a0, s11, 218f
                  bne          t4, s7, 203f
203:              ori          a0, s2, -651
                  blt          s6, t5, 218f
205:              ori          s10, a1, -320
                  sltiu        s1, s0, -1072
                  nop
208:              sltiu        t0, s7, -1325
                  sra          a3, t1, s1
                  bne          s11, a5, 214f
                  slt          tp, t1, s7
                  lui          t4, 588799
                  ori          gp, a3, 118
214:              ori          a7, sp, -907
                  sub          ra, a7, a5
                  or           sp, ra, a0
                  bge          s2, a2, 218f
218:              srl          s6, a2, t0
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            bgeu         t5, s4, sub_5_stack_p
sub_5_stack_p:    addi         a5, a5, -8
                  sra          s10, a6, a3
                  slli         s4, sp, 27
                  sw           t1, 4(a5)
                  sra          sp, s2, t3
                  la           t3, region_0+156 #start riscv_load_store_rand_instr_stream_1
                  sub          t0, s2, s4
                  xor          s6, a3, tp
                  sw           s9, 848(t3)
                  srai         t4, tp, 0
                  lbu          gp, 1219(t3)
                  slti         s7, t6, -675
                  lb           t0, 119(t3)
                  slti         ra, s8, 1683
                  srl          t1, s8, a1
                  sub          s11, t4, a5
                  lui          s10, 766212
                  add          s8, s2, a6
                  slt          a6, t0, a0
                  sltu         t2, s4, a2
                  sh           s11, 1554(t3)
                  sb           s9, 369(t3)
                  sb           s5, 1129(t3)
                  slli         s0, s1, 2
                  srli         t6, a0, 16
                  lbu          t4, -52(t3)
                  add          a2, sp, gp
                  slli         s2, a7, 3
                  xor          a1, s10, t6
                  nop
                  sb           t6, 1419(t3)
                  srl          a4, s3, sp
                  add          a0, ra, ra
                  addi         s4, ra, -653
                  sll          a6, a2, t6
                  lh           ra, 1282(t3)
                  addi         t6, s3, 1164
                  sltiu        t5, a0, -1618
                  sb           a7, 416(t3)
                  lhu          ra, 764(t3)
                  sb           s0, 1547(t3)
                  srl          s5, gp, zero
                  sb           t3, 1290(t3)
                  lb           a2, 1109(t3)
                  sw           s0, 1840(t3)
                  andi         gp, s2, 38
                  lbu          s8, 1055(t3)
                  slli         a2, t1, 3
                  lb           gp, 577(t3)
                  and          t0, tp, t1
                  sra          a7, s11, s10
                  sb           s1, 1265(t3)
                  sb           tp, 267(t3)
                  srai         a2, a5, 17
                  lbu          a7, 426(t3) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1624 #start riscv_load_store_rand_instr_stream_3
                  sh           a5, -10(sp)
                  lb           s6, -14(sp)
                  slli         t2, t1, 21
                  add          a6, t6, t3
                  slt          s6, s4, t0
                  addi         s6, s11, -376
                  lbu          a3, 9(sp)
                  sub          s2, t6, s7
                  sltu         a7, a6, s2
                  lb           s4, 5(sp)
                  sll          s11, t5, s2
                  sb           a2, 15(sp)
                  slt          t0, s8, s0
                  and          gp, t6, t1
                  lbu          s10, 15(sp)
                  sb           s1, 5(sp)
                  sh           gp, 8(sp)
                  nop
                  sh           s8, -10(sp)
                  lbu          t4, 10(sp)
                  sb           s3, -6(sp)
                  lbu          a1, -9(sp)
                  slli         s11, tp, 26
                  lbu          t4, -5(sp)
                  sll          a7, s6, a3
                  lui          a0, 54607
                  slli         ra, s0, 30
                  lw           a4, -16(sp)
                  srl          s10, s4, a0
                  srai         s4, s10, 8
                  or           s5, t6, s6
                  slti         s2, a2, 1622
                  lbu          tp, -1(sp)
                  add          ra, s2, a6
                  sltu         s10, a7, s2
                  sltiu        t1, t4, -588
                  nop
                  lb           s8, 3(sp)
                  sw           t6, -16(sp)
                  lbu          s0, -11(sp)
                  sb           s6, 5(sp)
                  andi         s1, t1, 1101
                  lb           s10, -7(sp)
                  xor          a4, t2, a3
                  lbu          tp, -3(sp)
                  lhu          s6, -2(sp)
                  or           s6, sp, t2
                  lui          t0, 486616
                  lhu          t2, -16(sp)
                  sw           t3, -12(sp)
                  srli         t0, s10, 6
                  lbu          a6, -10(sp)
                  andi         s1, s1, -58
                  lw           a6, 0(sp)
                  lb           a3, 12(sp)
                  lbu          t0, 14(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_0+410 #start riscv_load_store_rand_instr_stream_2
                  lhu          s11, 128(a6)
                  lb           t5, -60(a6)
                  lb           a3, 77(a6)
                  sb           t1, 240(a6)
                  xor          s10, gp, t5
                  slli         a3, s6, 18
                  or           tp, s6, s7
                  and          sp, sp, ra
                  andi         t3, s8, -1821
                  nop
                  lb           a0, -132(a6)
                  sub          s0, t6, a2
                  nop
                  srli         a4, t3, 16
                  andi         a1, a2, -262
                  sb           sp, -87(a6)
                  sh           a6, 180(a6)
                  slt          s2, gp, tp
                  nop
                  srli         a1, a5, 7
                  sh           ra, 226(a6)
                  sra          t6, t2, s6
                  sh           a6, -104(a6)
                  sltiu        s0, s0, 1615
                  sltiu        s7, s5, 163
                  srl          ra, ra, s6
                  sh           t5, -128(a6) #end riscv_load_store_rand_instr_stream_2
                  auipc        a0, 636143
                  andi         s11, ra, 30
                  xori         gp, a4, -903
                  bltu         ra, s4, 12f
                  or           t3, s7, a6
                  srl          t4, a4, s4
                  bgeu         sp, t3, 15f
                  sll          t3, a3, a3
                  slli         a1, s3, 15
                  slti         s10, t2, 2003
                  and          a1, a2, a4
                  blt          a7, s9, 28f
12:               slt          s0, a2, s11
                  ori          s2, t3, 244
                  addi         ra, s3, -1305
15:               sra          zero, t5, s11
                  blt          t2, a3, 21f
                  slti         gp, gp, -332
                  beq          s2, t6, 19f
19:               andi         s4, s4, 1757
                  sll          s10, t3, a3
21:               add          t1, t4, a3
                  sltu         s1, t4, zero
                  blt          s11, ra, 37f
                  beq          a6, t4, 26f
                  la           gp, region_1+532 #start riscv_load_store_rand_instr_stream_0
                  slti         s11, a7, 733
                  lh           a6, 80(gp)
                  lbu          zero, -102(gp)
                  slti         s5, tp, -1711
                  srli         ra, s9, 5
                  srli         a4, sp, 8
                  srli         t2, s0, 24
                  nop
                  sb           a2, -150(gp)
                  lbu          t2, -130(gp)
                  srai         a2, s1, 2
                  auipc        zero, 174121
                  sltiu        s5, s9, -1837
                  lbu          zero, -29(gp)
                  add          s10, gp, s9
                  slt          s5, tp, s11
                  lbu          sp, 23(gp)
                  lhu          s2, 150(gp)
                  sh           a2, -64(gp)
                  sh           a6, -194(gp)
                  sb           t6, -41(gp)
                  ori          a1, a5, 384
                  lbu          t6, -201(gp)
                  xor          t5, s11, a7
                  lb           a1, -43(gp)
                  slti         s2, s6, -338
                  sb           s5, -25(gp)
                  lbu          t3, 225(gp)
                  lh           t0, 148(gp)
                  lb           a1, -105(gp)
                  add          s6, a7, s1
                  lbu          t4, 17(gp)
                  lbu          a1, -159(gp)
                  sh           a5, 220(gp)
                  lbu          s10, 169(gp)
                  sb           s1, -86(gp)
                  lb           s10, 143(gp)
                  and          s8, t1, t0
                  xor          s11, t3, sp
                  ori          s5, a1, 1840
                  lbu          a1, 93(gp)
                  nop
                  lbu          s8, -142(gp)
                  sb           a0, 142(gp)
                  lh           s10, 82(gp)
                  sb           ra, 108(gp)
                  lb           s5, 242(gp)
                  addi         t0, t6, -1615
                  lw           s1, 112(gp) #end riscv_load_store_rand_instr_stream_0
                  xori         tp, t4, 670
26:               srai         s0, s7, 3
                  slt          t1, t4, tp
28:               beq          a5, a1, 48f
                  ori          t0, a0, 277
                  sub          t6, t3, zero
                  srl          tp, s4, t2
                  xori         a1, a4, -2022
                  xori         ra, t6, -1171
                  sltiu        a7, t1, -1113
                  srai         t6, s0, 24
                  sub          tp, a1, ra
37:               lui          s11, 436132
                  sltu         a7, a6, a5
                  bge          s7, t2, 47f
                  xori         t1, a6, -482
                  srl          s4, s2, zero
                  bltu         s2, s0, 52f
                  addi         a7, a1, -1381
                  andi         a3, t3, 1470
                  bltu         sp, s7, 47f
                  addi         t5, t5, -1843
47:               srli         a1, t6, 30
48:               bne          s0, a6, 52f
                  andi         gp, s7, 982
                  bge          a3, s2, 65f
                  srl          t0, s1, a2
52:               bgeu         a6, tp, 66f
                  xor          a2, gp, ra
                  bltu         a6, tp, 57f
                  slt          t5, t5, a1
                  sltu         a3, ra, gp
57:               slt          t3, t4, a5
                  blt          t6, a0, 78f
                  bge          s0, s5, 63f
                  and          a6, s5, a7
                  andi         a2, s0, 1012
                  ori          t5, s5, 1709
63:               xor          s0, t5, t2
                  srli         a3, s9, 20
65:               addi         zero, s4, 282
66:               blt          a7, s0, 81f
                  auipc        s10, 348852
                  bge          sp, s4, 85f
                  sltiu        gp, gp, 176
                  and          a7, t5, t6
                  srli         t2, s9, 31
                  bgeu         t2, s8, 88f
                  sltu         t1, a3, s3
                  bne          s10, t3, 79f
                  sra          s11, t2, s11
                  bltu         s9, t3, 84f
                  ori          t2, a4, -1976
78:               bgeu         s7, s11, 79f
79:               sub          ra, a7, s7
                  sltiu        s0, t0, 1493
81:               lui          s4, 1025480
                  sub          a2, s9, tp
                  slli         a4, gp, 6
84:               and          sp, s6, t3
85:               nop
                  bne          t1, s10, 97f
                  sub          s11, s5, a4
88:               srli         s0, t5, 14
                  beq          a4, s3, 96f
                  bgeu         s1, s1, 96f
                  andi         a6, t2, 1314
                  nop
                  ori          a3, t1, 1974
                  srai         ra, t4, 24
                  nop
96:               lui          t2, 1004660
97:               bltu         s0, s3, 105f
                  slt          t5, a4, a5
                  bge          a1, zero, 119f
                  nop
                  bge          s0, t2, 120f
                  slti         gp, tp, 1604
                  sll          t5, a4, s4
                  lui          zero, 106818
105:              sltiu        s0, t2, 1479
                  add          t0, s0, t6
                  andi         s0, t5, -1850
                  and          a2, t2, s8
                  blt          a2, s6, 117f
                  blt          a4, a6, 114f
                  bne          ra, t2, 115f
                  xori         a2, s4, -1491
                  bne          a3, sp, 127f
114:              xori         a0, s0, -1940
115:              slt          a4, a7, a2
                  nop
117:              ori          t1, a2, 1658
                  andi         a4, a5, -1369
119:              sub          ra, t6, s5
120:              sra          t0, s9, s0
                  bge          a3, t3, 129f
                  auipc        a3, 269425
                  sll          a3, t3, s8
                  xori         a6, a4, 886
                  bne          a0, t4, 130f
                  slt          a2, a1, s11
127:              nop
                  auipc        s11, 328975
129:              bge          t4, tp, 138f
130:              ori          sp, a5, -1451
                  or           s0, s0, t3
                  slli         a2, a6, 2
                  or           t0, s3, s9
                  nop
                  or           t2, a6, sp
                  ori          t3, t2, -660
                  sll          s11, t5, zero
                  la           gp, region_1+1616 #start riscv_load_store_rand_instr_stream_4
                  srl          a2, a2, t6
                  sll          s0, t3, a4
                  sb           t3, 16(gp)
                  sra          ra, s10, a6
                  slti         s5, t3, -1728
                  lb           zero, 11(gp)
                  slti         sp, s7, -264
                  lui          s0, 882180
                  sltu         s8, s8, ra
                  ori          a7, t5, -913
                  sb           t3, -9(gp)
                  lbu          sp, 6(gp)
                  sb           t3, -3(gp)
                  sb           a6, 5(gp)
                  auipc        a6, 572603
                  slti         t2, a7, -649
                  srai         sp, a7, 18
                  lbu          s8, 11(gp)
                  sb           a6, -1(gp)
                  nop
                  srai         t6, a5, 22
                  sltu         s10, a6, a7
                  lui          a1, 223052
                  auipc        a7, 976331
                  srai         a6, tp, 2
                  lh           t2, -2(gp)
                  sb           a0, -13(gp)
                  lb           t1, -7(gp)
                  slti         s6, ra, -438
                  sltu         a2, t3, t1
                  lb           s6, 14(gp)
                  lbu          t5, -1(gp) #end riscv_load_store_rand_instr_stream_4
138:              addi         t2, a3, 259
                  srl          t1, a7, s11
                  ori          a7, s4, -1797
                  sra          tp, ra, a5
                  beq          a0, a2, 150f
                  blt          a1, s10, 158f
                  sltu         a7, t4, a3
                  and          s7, s2, t2
                  sub          a4, a3, t0
                  bgeu         t1, t6, 157f
                  add          sp, a0, t0
                  bne          a5, s9, 166f
150:              and          sp, t6, t4
                  xor          zero, t5, a3
                  srai         s10, t6, 7
                  auipc        s1, 657755
                  srai         t0, a1, 12
                  auipc        tp, 185951
                  and          s1, tp, sp
157:              ori          a2, zero, 1279
158:              srai         s1, a0, 26
                  add          a7, sp, t1
                  beq          s11, s4, 167f
                  and          s10, s3, s0
                  bltu         gp, s1, 168f
                  add          a0, s5, a2
                  bgeu         zero, t5, 179f
                  sll          a2, s9, a6
166:              slti         ra, zero, 1910
167:              srli         s2, s4, 20
168:              bne          s8, s1, 170f
                  srli         t0, zero, 13
170:              srli         a2, a0, 11
                  srl          t1, ra, t5
                  slt          t2, t4, t2
                  slti         tp, s2, -1586
                  srli         s11, t6, 22
                  sub          s10, t3, t3
                  xor          s2, s8, s11
                  bge          s6, s5, 186f
                  srl          t3, ra, t5
179:              sub          zero, a4, a5
                  bne          t4, a2, 200f
                  slli         t4, t3, 20
                  blt          s3, t3, 187f
                  bltu         a3, a7, 203f
                  or           s4, zero, s4
                  add          s11, s5, s11
186:              slti         s4, t4, 828
187:              sll          t1, s4, s5
                  ori          s7, t5, -703
                  slt          s2, t4, s10
                  slli         t2, s2, 24
                  andi         s7, t2, 78
                  blt          s1, t3, 193f
193:              nop
                  bltu         a5, s11, 214f
                  addi         s8, s6, 1785
                  add          s2, s2, a6
                  bgeu         a1, t6, 214f
                  lui          s6, 882879
                  slli         s8, a2, 29
200:              srli         a0, a2, 28
                  sll          t4, s2, ra
                  nop
203:              blt          t2, t4, 204f
204:              srl          a2, ra, ra
                  slti         a7, a5, -1365
                  sll          a7, s11, gp
                  xor          s5, a0, t2
                  blt          zero, t5, 211f
                  sll          a4, ra, s11
                  slli         s11, s4, 5
211:              bne          ra, t2, 227f
                  sll          t5, sp, tp
                  sll          s5, s7, a2
214:              sub          s10, s5, a2
                  add          a2, s6, a2
                  bltu         s3, s5, 224f
                  and          t3, t4, t6
                  srai         s8, a5, 11
                  nop
                  sltiu        a6, t3, 1330
                  srai         s1, zero, 31
                  srli         a1, a2, 18
                  ori          ra, a0, 98
224:              srli         s5, s7, 1
                  bgeu         tp, s2, 239f
                  slt          a7, s3, t2
227:              add          t2, t4, a7
                  srai         t4, gp, 30
                  slt          zero, ra, t6
                  bltu         t6, t4, 241f
                  or           s2, a6, s9
                  slt          a1, t3, s10
                  slt          a0, tp, s11
                  and          ra, s8, zero
                  ori          tp, t4, 804
                  srl          s5, s2, s8
                  xori         ra, a0, -1767
                  bltu         gp, s1, 240f
239:              sltu         s0, t6, s0
240:              blt          s5, t1, 259f
241:              srl          t2, a2, s2
                  beq          t4, a5, 250f
                  or           s7, a0, a6
                  bltu         s6, a5, 261f
                  addi         a6, ra, -2007
                  andi         s0, s9, -427
                  blt          s2, sp, 254f
                  slt          tp, t6, zero
                  blt          t1, t0, 257f
250:              ori          s11, t4, -1535
                  bne          s7, s4, 259f
                  xori         a6, s4, 824
                  auipc        s4, 353897
254:              slli         s0, a1, 27
                  slti         a2, t2, 1744
                  sub          a2, a5, s7
257:              slti         s5, s1, 880
                  srli         s0, t1, 9
259:              bltu         sp, s9, 264f
                  addi         sp, sp, 214
261:              bltu         a2, s0, 276f
                  auipc        t5, 541598
                  or           t0, tp, tp
264:              beq          s9, ra, 267f
                  sll          s0, s2, zero
                  srli         t4, t5, 1
267:              blt          t5, s1, 271f
                  srli         t4, t1, 29
                  sub          zero, a5, gp
                  blt          s6, s6, 271f
271:              ori          t6, s2, -1495
                  andi         a2, a4, 1721
                  bne          s3, a4, 282f
                  addi         s8, a3, 1339
                  sub          a3, a3, s9
276:              lui          s2, 449011
                  or           a6, s0, a3
                  slt          s5, s7, t5
                  bge          t2, s5, 293f
                  auipc        t6, 87678
                  add          s6, s5, s10
282:              sltiu        s5, s1, -968
                  xori         s11, s6, -1289
                  srai         t0, t5, 17
                  xor          s11, t5, zero
                  sra          s1, sp, gp
                  nop
                  nop
                  auipc        t6, 325848
                  blt          t5, s6, 306f
                  slt          zero, s0, s11
                  slli         s11, zero, 15
293:              sra          a4, s1, t6
                  xori         s5, s6, -1610
                  sltiu        t3, a1, -1045
                  or           a7, a6, a7
                  srli         a1, s3, 17
                  srai         s2, s11, 31
                  auipc        t4, 555983
                  or           t2, t3, t0
                  or           s7, s1, s10
                  beq          a3, t2, 313f
                  sub          a1, t6, a7
                  ori          s2, tp, 249
                  or           t3, s6, sp
306:              bne          s9, t0, 314f
                  andi         s8, t0, 1955
                  add          s2, ra, s9
                  slli         t6, a5, 14
                  xor          t2, a3, tp
                  srli         t2, s2, 28
                  beq          a7, t4, 331f
313:              sra          s7, tp, a5
314:              bgeu         t4, t1, 334f
                  nop
                  xor          s7, t4, t5
                  sltu         t3, s5, a5
                  xor          a6, t3, s9
                  xori         s5, tp, 320
                  addi         a4, s2, 10
                  bne          t3, s5, 341f
                  lui          t0, 369582
                  slti         s6, s5, 1237
                  xori         s10, t3, 1413
                  nop
                  blt          a1, ra, 335f
                  add          a0, tp, s11
                  nop
                  srl          zero, t2, sp
                  sub          sp, s10, s4
331:              slt          a6, s4, s5
                  slli         a7, ra, 9
                  bne          s5, s10, 339f
334:              blt          a6, t0, 336f
335:              andi         s0, a7, -1286
336:              sra          a3, a2, s8
                  blt          s9, s0, 338f
338:              auipc        t1, 924011
339:              bne          zero, s4, 347f
                  add          t1, a3, ra
341:              sll          t3, s3, s1
                  xori         a1, zero, 823
                  sltiu        sp, s0, -393
                  sra          t4, t2, s5
                  bge          t6, gp, 347f
                  bltu         t3, t0, 363f
347:              bgeu         a2, tp, 362f
                  nop
                  sra          t4, s2, s11
                  la           tp, sub_6
                  ori          s11, s8, 684
                  srli         a6, a1, 1
                  addi         tp, tp, -68
                  sub          s11, s0, a7
                  bltu         zero, a7, sub_5_j8 #branch to jump instr
                  sub          s6, t1, t2
                  xori         gp, gp, 1686
                  andi         t1, s6, -1792
                  xori         t5, zero, 1131
sub_5_j8:         jalr         t1, tp, 69 #jump sub_5 -> sub_6
                  srai         a1, a1, 1
                  sra          a0, tp, s2
                  sltiu        tp, s3, -1496
                  bge          a0, t6, 367f
                  slti         ra, a1, 748
                  sra          s6, s5, s4
                  bne          t2, t0, 376f
                  srl          a6, t4, tp
                  andi         s4, sp, 1912
                  sltu         t4, t4, s11
                  slli         t5, a4, 27
                  add          t1, a5, t2
362:              srai         a2, t6, 12
363:              sltu         s11, s7, gp
                  srl          s8, t0, a4
                  auipc        a6, 976758
                  auipc        a6, 281694
367:              xori         s10, s10, -181
                  slti         a3, t0, -162
                  addi         zero, s7, 1490
                  srl          s4, a0, s1
                  or           t2, s0, t2
                  auipc        t0, 771614
                  bge          s6, s1, 378f
                  beq          s6, s7, 378f
                  add          zero, t5, a1
376:              sltiu        a6, gp, 485
                  beq          s4, t6, 387f
378:              auipc        zero, 704818
                  sra          t2, s8, a3
                  bltu         a2, zero, 382f
                  slt          ra, s11, s2
382:              srli         a1, t6, 17
                  lui          t1, 692420
                  sub          s0, s5, t3
                  add          s10, t0, s0
                  ori          s10, a5, -1337
387:              xori         t3, sp, 86
                  bne          ra, s0, 394f
                  slli         s11, a7, 27
                  andi         zero, a0, 1876
                  xori         t4, a1, -1596
                  sltiu        gp, a2, 984
                  xori         a1, s8, -1580
394:              and          t4, s6, a0
                  blt          a1, sp, 412f
                  sra          gp, s1, a4
                  blt          t1, a2, 407f
                  srli         tp, s7, 17
                  bne          a2, s1, 413f
                  bge          t2, t2, 404f
                  slli         s5, t0, 12
                  bgeu         a0, s2, 405f
                  and          a7, s9, a7
404:              xor          s4, s9, s4
405:              slli         s1, sp, 30
                  xori         a2, t0, 1228
407:              auipc        s4, 420170
                  or           gp, gp, a0
                  add          a4, s8, s8
                  blt          s4, t1, 429f
                  nop
412:              slti         s7, a4, -267
413:              ori          t1, s11, -132
                  bge          a6, t2, 422f
                  sltu         ra, t4, t2
                  sub          a6, a5, t4
                  addi         t0, s2, 726
                  sltiu        s4, s1, -637
                  srli         a4, s3, 7
                  srli         s6, zero, 2
                  bgeu         a4, a1, 422f
422:              nop
                  sub          s5, t6, s3
                  srai         gp, a6, 3
                  add          s7, s4, s4
                  bltu         t1, a0, 443f
                  andi         ra, zero, -828
                  sltiu        s0, a5, -463
429:              sra          s7, s8, gp
                  lui          t0, 529250
                  srai         a3, s6, 24
                  add          s2, a6, a5
                  bne          t0, a6, 444f
                  blt          t3, tp, 454f
                  auipc        t3, 417608
                  srl          s2, s8, t5
                  slti         t1, ra, 1160
                  auipc        s0, 134966
                  sltu         s0, s2, a5
                  xori         a4, gp, 168
                  addi         t5, gp, 342
                  bge          a0, s5, 450f
443:              slli         sp, t1, 6
444:              bgeu         t3, a1, 460f
                  slli         a1, s11, 20
                  xori         t6, a5, -116
                  sra          tp, zero, a6
                  andi         zero, s1, -355
                  auipc        a3, 5175
450:              xori         t2, s7, -1894
                  or           s6, s6, s7
                  sra          s1, s0, s0
                  and          ra, s2, s2
454:              sltiu        sp, gp, 798
                  andi         s1, s3, -778
                  bgeu         s3, s11, 465f
                  srai         a0, a0, 19
                  srai         tp, t3, 5
                  bgeu         tp, s9, 461f
460:              auipc        s4, 458210
461:              add          a7, sp, a2
                  bne          zero, s10, 470f
                  slti         a0, a0, 731
                  slti         t0, s5, 74
465:              sra          s2, a1, a7
                  srai         a6, s1, 0
                  slti         tp, s7, -1707
                  xori         sp, a0, -1775
                  ori          gp, s7, 1931
470:              srli         t6, s8, 18
                  bne          a4, s5, 491f
                  slli         a2, t3, 27
                  sll          a2, t2, zero
                  auipc        s2, 920774
                  sll          s8, s6, a2
                  sra          t5, a5, t1
                  blt          t1, zero, 486f
                  bne          zero, s10, 479f
479:              lui          s11, 806871
                  auipc        s7, 63925
                  slt          gp, a3, a3
                  sltiu        t2, s11, 972
                  sltu         s4, s4, a6
                  auipc        a1, 603984
                  bge          s7, s6, 489f
486:              lui          s11, 497463
                  auipc        s5, 184747
                  andi         s1, ra, -992
489:              beq          sp, t2, 494f
                  nop
491:              sll          tp, tp, tp
                  sltu         t6, s6, ra
                  auipc        t1, 641759
494:              auipc        t1, 375884
                  nop
                  xor          a1, t1, tp
                  nop
                  ori          s8, s10, 366
                  slt          a6, a2, s11
                  srai         t5, a3, 18
                  bgeu         s6, a4, 521f
                  xor          t6, sp, t3
                  srli         t4, t6, 5
                  slti         a6, a7, -1896
                  sll          s6, s5, s2
                  xori         s4, zero, -608
                  srl          t0, s1, ra
                  andi         s4, a3, 1452
                  sub          t6, a2, a6
                  and          s2, zero, t4
                  andi         s5, s10, -1370
                  slli         s10, s7, 21
                  lui          t1, 73919
                  sub          tp, a4, t2
                  auipc        a0, 949209
                  lui          s4, 935365
                  slt          t5, t2, t6
                  and          s2, gp, t4
                  blt          s6, ra, 526f
                  or           t6, sp, t4
521:              sltiu        s7, s5, -786
                  bgeu         a2, t5, 527f
                  sltiu        ra, t3, -733
                  blt          zero, gp, 539f
                  sub          s8, t1, s7
526:              and          a2, s0, s9
527:              sra          s5, zero, s5
                  sra          s2, gp, t0
                  xori         t0, t6, -768
                  bne          t0, t5, 544f
                  or           s4, a1, t6
                  sub          zero, a1, s1
                  blt          s5, t2, 541f
                  bge          s4, a1, 549f
                  add          s0, a7, t6
                  sll          a7, a3, s8
                  andi         a2, s3, -1953
                  slt          s4, s4, sp
539:              bgeu         a2, s7, 558f
                  bge          a4, a4, 555f
541:              sll          s7, a6, s9
                  sra          t3, s3, s3
                  andi         s4, t2, 1618
544:              srai         ra, s10, 22
                  blt          a7, a2, 559f
                  sltiu        a7, s1, 1846
                  sltiu        a0, a7, 496
                  slti         gp, a6, -1833
549:              xor          a2, s4, s1
                  srli         zero, a4, 27
                  slti         a2, s4, 62
                  sub          s11, s4, t2
                  slli         s0, a4, 29
                  sltu         s6, t2, s5
555:              sra          sp, t2, t2
                  xor          s0, ra, zero
                  sra          zero, s5, gp
558:              srl          s6, a4, a6
559:              srai         s4, s6, 18
                  srl          tp, s9, s2
                  bge          t2, t1, 566f
                  andi         t1, a3, 1181
                  xori         t3, a2, 120
                  slli         zero, s7, 10
                  auipc        a1, 640651
566:              beq          s8, t1, 580f
                  add          t1, t0, s10
                  lui          a0, 725454
                  add          s7, tp, t0
                  or           zero, a4, a7
                  nop
                  lui          a3, 963245
                  sub          t1, a4, a7
                  slli         t1, t2, 11
                  sll          a3, t5, s2
                  blt          t3, t0, 578f
                  sra          t2, s3, s4
578:              nop
                  blt          t5, a2, 583f
580:              srai         gp, a3, 19
                  bge          s2, sp, 582f
582:              add          s10, zero, a4
583:              srl          s11, s0, s3
                  sltu         t1, t3, ra
                  nop
                  sra          a2, a6, s4
                  nop
                  sub          t0, s5, gp
                  ori          s2, zero, -203
                  sub          a7, s0, s11
                  nop
                  sll          gp, t3, t4
                  bge          s5, a3, 598f
                  beq          s0, s11, 605f
                  bltu         a4, a5, 612f
                  bne          t6, s2, 605f
                  bge          t1, t2, 601f
598:              srli         s1, a1, 29
                  ori          s11, a4, -1930
                  bltu         ra, t4, 615f
601:              and          s8, t6, a7
                  xor          s10, gp, s1
                  xor          s6, s8, s11
                  srl          s10, tp, s3
605:              srl          ra, s5, s5
                  bne          t6, a1, 626f
                  sra          a6, s5, a4
                  ori          t2, a6, -674
                  srl          a6, s4, ra
                  nop
                  and          zero, sp, s11
612:              addi         a2, s2, -1318
                  bne          s3, a2, 615f
                  andi         s10, a0, 333
615:              sltu         s11, s10, zero
                  srai         t1, s8, 5
                  srli         s7, a6, 26
                  sra          t4, s1, s6
                  xori         a3, a5, -1880
                  add          a0, s11, s1
                  blt          t2, tp, 629f
                  bgeu         ra, a2, 638f
                  or           a4, t6, a4
                  sub          t4, sp, zero
                  auipc        ra, 641838
626:              blt          a6, a4, 633f
                  srai         a2, s11, 6
                  blt          a1, a1, 631f
629:              lui          s4, 834505
                  andi         s4, gp, -99
631:              andi         t6, s2, 1083
                  bltu         a2, s5, 633f
633:              sra          a1, s10, t4
                  beq          a6, s0, 643f
                  sll          t4, a2, t0
                  beq          a1, s7, 644f
                  and          t5, t5, s3
638:              lui          t1, 309731
                  beq          zero, a7, 656f
                  bltu         a0, zero, 646f
                  addi         s7, s9, -1918
                  auipc        zero, 254324
643:              beq          s1, t0, 653f
644:              sltu         s8, t5, s2
                  slt          tp, s7, s0
646:              and          a1, a2, zero
                  srl          a6, tp, s7
                  lui          t5, 60304
                  sll          ra, t3, a2
                  bltu         a5, a2, 670f
                  slt          gp, s6, s3
                  slli         t5, t1, 8
653:              bltu         s3, s6, 673f
                  addi         s7, t2, -1960
                  sltu         s2, t4, a2
656:              bgeu         gp, tp, 664f
                  sra          s5, s9, gp
                  lui          a0, 316717
                  sub          gp, a4, tp
                  sub          t0, t6, t1
                  sltiu        s0, a3, 1970
                  srai         t6, s3, 12
                  slli         a7, s5, 15
664:              auipc        t5, 435859
                  nop
                  or           ra, t2, t1
                  and          s5, a2, s10
                  bge          t0, s1, 676f
                  sra          t5, a3, t3
670:              sll          tp, ra, a5
                  sltiu        a0, s0, -657
                  nop
673:              bge          s1, s0, 689f
                  blt          a1, s4, 680f
                  auipc        a7, 487288
676:              slti         a3, zero, -774
                  lui          t0, 850766
                  bltu         s8, t5, 695f
                  slti         a2, s1, -1642
680:              slli         t5, s0, 16
                  beq          a3, ra, 689f
                  sra          t6, s9, s6
                  sltu         a6, a5, s9
                  ori          t3, a5, -793
                  sltiu        s7, s10, -1994
                  sub          s7, sp, s10
                  srai         t0, a7, 24
                  or           t1, a6, s9
689:              sltiu        a3, s0, 356
                  sll          a1, a4, s7
                  auipc        t0, 763289
                  beq          zero, gp, 709f
                  xor          tp, a3, s4
                  slti         s7, s8, 983
695:              sltiu        s4, s1, 1683
                  nop
                  slli         tp, t4, 19
                  lui          s10, 938851
                  lui          s5, 1026687
                  beq          s2, t3, 702f
                  beq          a3, a4, 709f
702:              bne          s2, a3, 703f
703:              srl          a7, s11, a1
                  or           s5, sp, t2
                  andi         s7, sp, -1249
                  addi         ra, zero, -1870
                  andi         s2, t3, -396
                  and          a4, a2, t0
709:              slti         t3, sp, 477
                  and          s10, ra, s6
                  lui          a7, 698849
                  addi         s7, s7, 2019
                  sltiu        s0, t0, -1473
                  slti         t3, tp, 2024
                  lw           t1, 4(a5)
                  addi         a5, a5, 8
                  srl          t4, s3, s1
                  nop
954:              addi x17, x6, 0
954:              jalr x17, x17, 0
sub_8:            bge          tp, s5, sub_8_stack_p
                  sll          t6, a7, s3
sub_8_stack_p:    addi         a5, a5, -28
                  slt          s7, a5, a4
                  lui          a7, 1011191
                  sw           t1, 4(a5)
                  lui          s6, 847434
                  addi         s7, t3, 137
                  add          a7, a4, s11
                  addi         sp, sp, 129
                  bltu         a2, s0, 11f
                  sra          s1, s10, a3
                  bge          s6, tp, 11f
                  beq          t4, a3, 11f
                  srai         gp, ra, 8
                  slli         a0, s3, 0
                  sub          t5, t2, s5
                  beq          s0, s4, 11f
                  sub          s0, t2, s10
                  auipc        s8, 1038374
                  beq          s5, s6, 11f
11:               sub          t0, s7, s1
                  sub          a2, a3, a6
                  lw           t1, 4(a5)
                  andi         t0, s10, 1291
                  slt          s1, s3, t6
                  sra          a0, a7, a7
                  addi         tp, s3, -574
                  addi         a5, a5, 28
                  xor          s1, ra, s4
                  sll          s5, a5, a4
                  srl          a7, t6, t0
                  sra          t2, s7, t0
33:               addi x14, x6, 0
33:               jalr x14, x14, 0
sub_2:            slt          s8, a6, ra
                  sltiu        sp, gp, 987
                  slt          t2, a7, a0
                  blt          t0, s5, sub_2_stack_p
sub_2_stack_p:    addi         a5, a5, -48
                  sw           t1, 4(a5)
                  sll          s7, t0, a3
                  add          a3, a7, tp
                  sra          sp, t1, s4
                  slli         s4, s7, 30
                  lui          a7, 564790
                  xor          t6, t2, a1
                  xori         a1, gp, -1322
                  andi         t4, sp, -1709
                  ori          s6, a0, 1526
                  bltu         s8, a7, 24f
                  lui          gp, 524919
                  sub          s10, s2, a3
                  lui          t0, 985958
                  bgeu         s9, a0, 13f
                  slli         s6, s2, 18
13:               srli         t0, a7, 14
                  sub          s10, s2, a5
                  auipc        a3, 463998
                  addi         s7, gp, -1327
                  xori         t2, a6, 306
                  nop
                  bltu         s9, ra, 22f
                  slt          zero, a6, t3
                  lui          a3, 691595
22:               sub          s8, gp, s5
                  xor          tp, t1, t1
24:               beq          s10, gp, 38f
                  slti         a7, t4, -1251
                  slt          s11, s5, gp
                  srli         zero, a5, 8
                  blt          a6, s7, 30f
                  slti         s0, t5, -1086
30:               or           s5, a1, t1
                  sltiu        a7, s8, 721
                  beq          t2, a0, 40f
                  bltu         s0, s0, 50f
                  slli         s2, a0, 24
                  sltu         s8, s11, a6
                  srl          tp, s2, s4
                  blt          t4, a6, 39f
38:               add          a3, a3, s6
39:               srli         gp, s6, 24
40:               slli         s5, a1, 19
                  slti         a3, a2, 997
                  or           t6, gp, gp
                  lui          t4, 681420
                  srli         s2, a0, 0
                  beq          s0, sp, 63f
                  and          ra, s7, tp
                  xori         gp, zero, -1865
                  beq          ra, s6, 61f
                  and          ra, s2, s4
50:               slli         a6, s5, 10
                  addi         a3, a2, -1709
                  add          ra, s4, gp
                  bge          s10, ra, 62f
                  or           a6, t0, tp
                  slli         a1, s5, 5
                  sub          t3, t3, a2
                  or           t0, s8, a4
                  sltu         ra, t4, a2
                  auipc        a2, 1006427
                  xor          s5, s6, s9
61:               sltu         t2, zero, a1
62:               sra          sp, s1, s3
63:               blt          s1, gp, 67f
                  auipc        a0, 593274
                  lui          s6, 739894
                  sra          ra, a1, zero
67:               srai         a1, ra, 13
                  slt          s5, t4, s4
                  add          s8, a7, a6
                  sltu         s7, s8, t0
                  andi         s8, s11, -330
                  auipc        t0, 334081
                  lw           t1, 4(a5)
                  and          t0, s6, s5
                  addi         a5, a5, 48
                  auipc        s10, 758896
                  sub          t4, t1, a0
86:               addi x12, x6, 0
86:               jalr x12, x12, 0
sub_10:           srl          tp, t1, s9
                  beq          a6, s10, sub_10_stack_p
                  srl          s7, a4, a0
                  slli         s8, a7, 15
                  add          s2, s7, a5
                  andi         s10, s9, -230
sub_10_stack_p:   addi         a5, a5, -24
                  or           a0, a3, t6
                  sll          ra, t0, s7
                  sw           t1, 4(a5)
                  addi         a0, gp, -1763
                  bgeu         s5, sp, 2f
                  xori         s1, s3, -1880
2:                srai         s1, gp, 7
                  auipc        t3, 1004645
                  xori         t2, s8, -913
                  bltu         s6, a1, 13f
                  andi         ra, sp, -1052
                  bltu         s4, t0, 16f
                  bgeu         zero, s5, 9f
9:                bne          s1, s9, 16f
                  sltu         a2, t4, t6
                  slli         t5, a1, 15
                  andi         s4, sp, -1593
13:               slti         ra, a4, 1369
                  sll          ra, s1, s3
                  xor          a3, a5, t6
16:               slt          tp, s11, sp
                  lw           t1, 4(a5)
                  or           gp, t0, sp
                  addi         a5, a5, 24
                  nop
                  srli         a6, t4, 22
33:               addi x8, x6, 1
33:               jalr x8, x8, 0
sub_1:            addi         t2, a6, -1717
                  addi         a5, a5, -40
                  xori         s10, t6, 1531
                  addi         t5, zero, 68
                  auipc        t4, 407851
                  sw           t1, 4(a5)
                  sra          s1, s3, t5
                  addi         sp, t4, -1850
                  andi         a2, t4, 920
                  la           t2, sub_2
                  slt          tp, s6, t6
                  srai         t4, s0, 0
                  addi         t2, t2, 993
                  srl          a3, s2, a7
                  sll          s10, s6, a6
                  bgeu         t6, t4, sub_1_j3 #branch to jump instr
                  addi         a3, a1, 1416
                  addi         a7, a6, -702
sub_1_j3:         jalr         t1, t2, -993 #jump sub_1 -> sub_2
                  bgeu         a3, tp, sub_1_j4 #branch to jump instr
                  xor          t0, a4, a4
                  sltiu        a2, s7, -1646
                  slti         s6, s0, 1364
                  ori          t0, zero, 953
                  sltu         s8, t0, s4
                  srl          t4, a0, s10
                  auipc        a1, 118884
                  auipc        a6, 84345
sub_1_j4:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  and          a3, s8, s10
                  srai         a4, tp, 20
                  srli         a3, a0, 17
                  or           a3, t3, s6
                  xori         a4, a6, 1559
                  srai         a6, s1, 25
                  bgeu         s5, s0, sub_1_j5 #branch to jump instr
                  nop
sub_1_j5:         jal          t1, sub_5 #jump sub_1 -> sub_5
                  la           s6, sub_4
                  xori         s0, a1, 1825
                  add          s11, t2, a7
                  or           s2, s9, a4
                  andi         t6, t2, 2025
                  nop
                  sltiu        a3, a7, -1444
                  andi         s11, s0, -1808
                  addi         s6, s6, -107
                  slt          s0, t3, zero
                  srl          s2, a6, s6
sub_1_j6:         jalr         t1, s6, 107 #jump sub_1 -> sub_4
                  nop
                  bne          t5, s2, 18f
                  andi         a0, s5, 875
                  slti         s2, t5, 1263
                  bgeu         a1, s11, 6f
                  auipc        a7, 155768
6:                nop
                  xori         t3, zero, 1245
                  ori          sp, s1, 14
                  auipc        s0, 271425
                  srai         tp, t5, 11
                  srai         s4, a4, 0
                  sltiu        s1, s9, 1025
                  xori         t6, a6, 552
                  addi         t2, s0, -829
                  ori          t2, s11, 548
                  bne          a3, s10, 18f
                  addi         t5, t6, 517
18:               sltiu        a6, a3, -948
                  slti         t2, s11, -1236
                  sub          s10, ra, a5
                  sll          t6, t2, s0
                  xor          tp, a7, t1
                  srl          t6, sp, a7
                  nop
                  srai         t1, t3, 17
                  andi         s5, t2, 205
                  lw           t1, 4(a5)
                  addi         t2, s4, -962
                  sra          t2, gp, a5
                  addi         a5, a5, 40
                  slli         t5, a7, 23
82:               addi x2, x6, 1
82:               jalr x2, x2, 0
sub_9:            addi         a5, a5, -8
                  sw           t1, 4(a5)
                  andi         s2, ra, 1334
                  sltu         s8, t2, s9
                  xori         s4, t4, -1247
                  sll          sp, t0, t5
                  la           t4, region_0+1346 #start riscv_load_store_rand_instr_stream_0
                  sb           a1, -235(t4)
                  sltu         a3, a7, t1
                  sb           a7, 107(t4)
                  srai         a0, a3, 18
                  auipc        ra, 995716
                  lh           s4, 154(t4)
                  lbu          s1, -40(t4)
                  nop
                  andi         s8, tp, -772
                  lb           s0, 215(t4)
                  addi         s0, t0, -1458
                  srai         t2, s11, 18
                  lb           a7, -229(t4)
                  lb           tp, -71(t4)
                  lhu          s8, 58(t4)
                  slt          s0, s11, s8
                  add          zero, s9, a0
                  slli         t2, t6, 14
                  xori         s0, t5, 1348
                  sb           s3, -161(t4)
                  lw           t6, 142(t4)
                  lb           s4, 211(t4)
                  lhu          t0, 172(t4)
                  sb           a2, 104(t4)
                  sra          t2, s11, t6
                  lui          sp, 146478
                  lb           zero, -213(t4)
                  lw           a3, 242(t4)
                  lhu          zero, -240(t4)
                  lui          s0, 937769
                  srai         t1, t1, 22
                  xor          s6, s6, s7
                  lbu          s0, -138(t4)
                  sub          s5, s0, s9
                  xori         a6, s11, -1173
                  xor          a3, s6, t5
                  sll          s4, a3, zero
                  xor          a7, t2, s3
                  xor          t5, s7, a2
                  or           a1, a7, s2
                  sltu         zero, gp, a4
                  lb           s11, -181(t4)
                  srli         s11, t0, 27
                  sw           t6, -202(t4)
                  lb           t5, 172(t4)
                  slt          s1, s4, t4
                  sh           gp, -68(t4)
                  slti         a2, a4, -397
                  lb           s1, 101(t4)
                  lb           t6, -67(t4) #end riscv_load_store_rand_instr_stream_0
                  ori          a7, s3, 1447
                  bge          s3, t4, 11f
                  add          s11, s5, s3
                  auipc        s6, 971161
                  and          t0, t6, t1
                  addi         s11, a1, -572
                  bne          s9, a7, 11f
                  xor          t4, tp, ra
                  bne          tp, s2, 15f
                  bltu         s1, t0, 24f
                  bgeu         t4, tp, 25f
11:               srl          a7, a1, s4
                  sra          s8, a2, a1
                  andi         sp, ra, -855
                  srai         t3, a2, 13
15:               blt          a7, s8, 27f
                  srli         s11, zero, 28
                  bne          a3, s8, 26f
                  slt          a0, a0, s6
                  xor          s1, sp, a4
                  xor          a2, t5, s1
                  bgeu         s4, a2, 40f
                  beq          a5, a2, 29f
                  bgeu         s2, t2, 43f
24:               srai         s4, s5, 17
25:               or           s7, a3, a6
26:               slli         t3, a1, 24
27:               add          s1, t5, ra
                  nop
29:               bge          tp, s4, 47f
                  slti         s11, s2, -1197
                  sra          s0, a7, a2
                  srai         t1, t6, 11
                  sub          s7, s5, s10
                  blt          s1, s10, 35f
35:               sltu         s0, tp, sp
                  sltiu        s10, tp, 209
                  sltiu        s10, s10, 410
                  lui          ra, 1033480
                  srai         tp, s6, 21
40:               auipc        t2, 567434
                  bne          s1, gp, 50f
                  lui          t1, 709271
43:               lui          s1, 994694
                  sub          s10, a2, s1
                  auipc        ra, 226623
                  blt          a7, s2, 66f
47:               nop
                  slli         t5, a7, 11
                  slti         sp, a5, -676
50:               xori         sp, s2, 1862
                  slli         a6, t4, 27
                  bge          tp, s0, 62f
                  sub          t6, s8, s5
                  slt          s4, t0, s0
                  andi         s11, sp, 690
                  and          s1, s8, s5
                  andi         ra, t1, 1660
                  sltu         gp, s3, t1
                  xor          a2, a7, s8
                  slli         s10, ra, 1
                  slt          s5, gp, s11
62:               srl          a0, s1, a4
                  sltu         a2, gp, ra
                  addi         s5, t4, 23
                  sra          s2, a2, a3
66:               srl          t1, s10, a6
                  blt          s7, a4, 72f
                  slti         s7, zero, 506
                  sra          a7, a5, s7
                  slt          tp, tp, t2
                  bge          s5, s9, 78f
72:               beq          s3, t4, 73f
73:               sub          a2, sp, a4
                  xor          a6, s7, a2
                  lui          t3, 1032393
                  sltu         s11, t5, t3
                  sub          t4, t4, s1
78:               slt          gp, ra, a3
                  sra          sp, t6, a0
                  slt          tp, tp, a3
                  ori          ra, t3, 909
                  bne          a7, a3, 100f
                  and          s11, t4, s2
                  slti         a7, a4, 298
                  beq          zero, ra, 89f
                  bne          a7, t5, 93f
                  auipc        t2, 4046
                  bltu         a6, t0, 107f
89:               and          t3, s9, gp
                  sll          s0, a4, s10
                  xor          t4, s4, s3
                  srl          a4, tp, ra
93:               xor          t3, a6, t0
                  sll          zero, a5, s9
                  slt          t1, a3, s10
                  blt          s4, s8, 103f
                  sub          t4, s2, t4
                  add          a3, t1, ra
                  srli         gp, s8, 7
100:              bge          gp, s1, 110f
                  beq          s6, tp, 108f
                  andi         s1, a0, 926
103:              slti         s6, a7, -1958
                  nop
                  sra          s11, a4, a5
                  slt          t2, s1, t5
107:              auipc        t1, 183005
108:              sra          t5, t3, t0
                  sltiu        s0, s9, -303
110:              sll          t5, a1, s1
                  bltu         gp, t5, 128f
                  slt          s6, a1, s4
                  srai         a1, a5, 12
                  bge          a1, t6, 121f
                  add          s2, sp, a6
                  sltiu        s5, s7, -1589
                  sltiu        t5, s5, -1368
                  xor          s0, tp, a3
                  nop
                  nop
121:              ori          t4, s6, -1521
                  srl          tp, s3, sp
                  srai         s11, a0, 15
                  add          ra, s6, t2
                  sltu         a1, s7, a3
                  srai         a1, t6, 24
                  or           s6, s4, s10
128:              ori          s2, s10, 1609
                  sltu         tp, ra, s0
                  sra          a1, s10, s0
                  ori          s5, a0, -225
                  xori         s7, s7, -1411
                  ori          s7, t6, 1750
                  bge          a3, a7, 140f
                  bne          a3, s3, 144f
                  xor          s0, t5, s7
                  slti         a7, ra, 114
                  srli         a1, t2, 31
                  sub          s11, s4, s4
140:              bne          t0, s2, 144f
                  ori          a2, t4, 873
                  sra          t0, s7, s9
                  sub          s6, s10, s3
144:              and          a2, a5, s5
                  and          gp, s1, t1
                  add          a3, a7, s6
                  addi         s6, a5, -1130
                  sra          ra, t2, a2
                  lw           t1, 4(a5)
                  sltiu        zero, s5, 775
                  auipc        s8, 809752
                  sub          s8, s1, tp
                  addi         a5, a5, 8
                  sltu         s1, s10, s6
212:              addi x26, x6, 1
212:              jalr x26, x26, 0
sub_7:            srl          t4, sp, t2
                  auipc        a3, 961706
                  slti         s0, s6, 1343
                  sll          t6, s7, a5
                  lui          ra, 269922
                  slli         s4, a6, 3
                  addi         a5, a5, -60
                  sw           t1, 4(a5)
                  srai         a0, a3, 20
                  la           s7, region_1+1057 #start riscv_load_store_rand_instr_stream_4
                  sb           s7, 156(s7)
                  lb           gp, 96(s7)
                  nop
                  lb           a4, -168(s7)
                  slt          a2, s9, s6
                  lb           s4, -114(s7)
                  sra          sp, t0, a7
                  sb           t5, 17(s7)
                  lb           a3, 124(s7)
                  xori         sp, a6, 1908
                  lb           sp, -131(s7)
                  lhu          zero, 199(s7)
                  slt          a3, a6, tp
                  srai         s2, t3, 24
                  lhu          a6, -195(s7)
                  addi         t1, zero, -863
                  sb           a1, -144(s7)
                  lbu          ra, -70(s7)
                  andi         s6, gp, 1642
                  sb           t6, 34(s7)
                  lhu          s10, 69(s7)
                  addi         a4, t2, 41
                  lbu          s0, -111(s7)
                  lbu          a0, 112(s7)
                  sb           s6, 242(s7)
                  sb           a6, 238(s7)
                  sra          s2, s7, a4
                  lw           t0, -193(s7)
                  sltu         t3, tp, s4
                  lb           a7, 230(s7) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+171 #start riscv_load_store_rand_instr_stream_16
                  sub          a6, a3, zero
                  lui          s4, 997677
                  lui          a0, 432867
                  sub          tp, a1, t2
                  auipc        t5, 802142
                  lb           t3, -128(sp)
                  sltu         a4, t3, s10
                  xor          a2, a5, a5
                  sltiu        s8, a1, 1115
                  lw           a3, 209(sp)
                  sb           tp, 110(sp)
                  addi         s10, t5, -1755
                  sltiu        gp, t3, -1046
                  sw           a5, 201(sp)
                  lb           tp, 47(sp)
                  slli         a7, s10, 0
                  nop
                  sub          s4, s1, a0
                  sb           gp, -82(sp)
                  andi         s5, s5, -1008
                  auipc        a6, 864413
                  lb           t3, -112(sp)
                  lw           s8, 65(sp)
                  srl          a2, s5, a3
                  sb           a6, -50(sp)
                  add          s0, t5, a5
                  srai         a2, s7, 11
                  sb           t3, 29(sp)
                  sh           t3, -129(sp)
                  addi         s5, s2, 1992
                  srl          s10, t0, s0
                  lb           a7, 194(sp)
                  slli         a6, zero, 31
                  sh           a7, -45(sp)
                  lbu          a6, -64(sp) #end riscv_load_store_rand_instr_stream_16
                  la           s2, region_1+373 #start riscv_load_store_rand_instr_stream_0
                  sh           s5, 517(s2)
                  lbu          s4, -197(s2)
                  lhu          zero, 451(s2)
                  lbu          s4, 1173(s2)
                  lb           ra, 161(s2)
                  slti         s10, a1, -1685
                  lhu          gp, 649(s2)
                  lhu          s5, 29(s2)
                  lhu          a2, 599(s2)
                  sh           a7, 1337(s2)
                  lb           s6, 1494(s2)
                  and          s11, s2, a4
                  sb           s0, 1272(s2)
                  sw           sp, 111(s2)
                  lbu          sp, 566(s2)
                  lb           s8, -289(s2)
                  and          zero, s7, t6
                  lhu          zero, 1601(s2)
                  lb           s4, 932(s2)
                  sb           zero, 29(s2)
                  lbu          t0, 776(s2)
                  slt          tp, t6, t0
                  sw           s9, 243(s2)
                  slt          a7, s6, ra
                  lh           a6, 133(s2)
                  lbu          t2, 480(s2)
                  srl          s5, s8, s4
                  add          t2, s3, t1
                  lbu          s11, 1134(s2)
                  and          a2, s3, a2
                  srli         s8, a4, 27
                  lb           t1, 1534(s2)
                  and          s7, a3, a3
                  lbu          t2, -81(s2) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_0+944 #start riscv_load_store_rand_instr_stream_14
                  ori          t0, s11, 222
                  lbu          t2, 786(t4)
                  lb           s4, -517(t4)
                  sb           s11, 679(t4)
                  sb           gp, 175(t4)
                  and          t2, s2, sp
                  lhu          a6, -248(t4)
                  lb           a4, -100(t4)
                  srl          t3, s6, s8
                  lui          s8, 463932
                  andi         a1, t2, -1538
                  lbu          zero, 1020(t4)
                  sb           s11, 229(t4)
                  lui          t0, 482931
                  lb           a3, -666(t4)
                  sb           t5, 543(t4)
                  and          s1, s5, s9
                  lb           s5, -631(t4)
                  lb           s1, -799(t4)
                  srli         s8, t5, 3
                  xor          s10, s3, t0
                  sb           a7, 1044(t4)
                  sb           s0, -271(t4)
                  lb           s7, 307(t4)
                  sll          a3, t2, t1
                  sub          s7, s9, s1
                  lb           tp, -667(t4)
                  sb           gp, -916(t4)
                  slli         t1, s5, 0
                  lui          s10, 459299
                  lb           s7, -328(t4)
                  xori         a0, s8, 338
                  lhu          t3, 818(t4)
                  and          t3, a4, s8
                  sltu         s8, t1, a0
                  addi         s6, s7, 77
                  sb           s8, 582(t4)
                  lb           tp, -310(t4)
                  lbu          t3, 937(t4)
                  lb           sp, -205(t4)
                  lh           a6, 966(t4)
                  lhu          s0, 838(t4)
                  lb           s1, 650(t4)
                  sltiu        tp, t5, -14
                  lb           s5, 555(t4)
                  lb           tp, -68(t4)
                  lbu          t5, 693(t4)
                  sub          s2, a3, s5
                  lbu          ra, 47(t4) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_1+1972 #start riscv_load_store_rand_instr_stream_5
                  andi         t4, t0, 843
                  lb           t6, -43(sp)
                  nop
                  lb           a1, -221(sp)
                  sll          s2, sp, s2
                  lbu          t3, -1650(sp)
                  ori          ra, t3, 581
                  sh           t6, -810(sp)
                  or           tp, s1, t4
                  lbu          a7, -199(sp)
                  lhu          a1, -1668(sp)
                  slt          t4, a0, s11
                  slt          gp, s5, gp
                  lb           t4, -1745(sp)
                  lbu          s0, -213(sp)
                  xori         s10, s6, -123
                  lbu          t2, -1927(sp)
                  and          s0, a7, s4
                  lbu          t4, -1832(sp)
                  srli         s5, a3, 9
                  sltiu        s5, s2, -609
                  add          s11, zero, a0
                  slli         a2, s2, 11
                  lb           s4, -1455(sp)
                  lbu          t1, -1196(sp)
                  lbu          t1, -798(sp)
                  lb           t1, -1393(sp)
                  sll          gp, s3, a1
                  or           s1, a4, a6
                  addi         t4, s0, 870
                  slli         gp, s3, 4
                  srai         a2, a1, 7
                  slti         s1, t1, -903
                  sb           s6, -653(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1280 #start riscv_load_store_rand_instr_stream_12
                  lh           t4, -120(sp)
                  srli         ra, t5, 29
                  sb           t0, -205(sp)
                  lb           s8, 46(sp)
                  sh           s2, 228(sp)
                  sltu         zero, a2, t4
                  lh           s11, 46(sp)
                  auipc        a6, 909462
                  lb           t5, -172(sp)
                  lhu          t4, -214(sp)
                  sb           s8, -141(sp)
                  lb           a0, 162(sp)
                  lb           s11, 187(sp)
                  sra          t0, a1, tp
                  lb           t0, 207(sp)
                  sub          s8, t6, zero
                  or           s2, a7, s9
                  sb           tp, 127(sp)
                  sb           t6, -26(sp)
                  add          t2, a6, s7
                  slt          s4, s7, s4
                  lh           a0, -46(sp)
                  sll          t3, gp, t0
                  slti         t0, s0, 60
                  sh           s1, 18(sp)
                  ori          t3, ra, -759
                  srl          tp, t5, s8
                  sub          a3, a3, a6
                  lb           zero, 112(sp)
                  sh           s3, 178(sp)
                  ori          s1, gp, 252
                  slli         s1, s6, 24
                  xor          a4, a2, a1
                  lui          a6, 140854
                  lbu          s4, 227(sp) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+995 #start riscv_load_store_rand_instr_stream_11
                  lb           t4, -34(sp)
                  sb           s2, 54(sp)
                  andi         a3, tp, 1349
                  lb           zero, 60(sp)
                  srl          tp, t5, s0
                  lb           s10, -44(sp)
                  xori         s4, gp, 335
                  lbu          tp, -12(sp)
                  lhu          s5, -27(sp)
                  xor          gp, t3, s4
                  sra          s1, ra, a4
                  ori          zero, a5, -1298
                  lhu          a6, -39(sp)
                  auipc        t4, 976018
                  lbu          s10, 6(sp)
                  sb           s3, 22(sp)
                  andi         s10, s10, -308
                  srai         a7, t5, 5
                  lbu          t6, 19(sp)
                  lhu          ra, 43(sp)
                  sb           t5, 26(sp)
                  sra          t0, s10, s7
                  sb           a5, 36(sp)
                  andi         s6, s2, 174
                  sh           s0, 57(sp)
                  sra          t1, s9, s5
                  lb           ra, -7(sp)
                  sltiu        ra, s9, 2007
                  lbu          s2, 44(sp)
                  lhu          zero, -35(sp)
                  lw           s4, 49(sp)
                  lb           a3, -58(sp)
                  lbu          t6, 50(sp)
                  slt          t2, ra, s2
                  sb           t2, -14(sp)
                  lbu          s4, -33(sp)
                  srl          s0, a4, s0
                  lw           t4, -43(sp)
                  sw           s6, 33(sp)
                  lb           a2, 32(sp)
                  lb           t6, 6(sp) #end riscv_load_store_rand_instr_stream_11
                  la           s2, region_1+498 #start riscv_load_store_rand_instr_stream_15
                  srli         s7, s1, 0
                  lb           s0, 669(s2)
                  sltu         ra, a6, sp
                  andi         a1, s2, -1889
                  srli         s1, a5, 25
                  lbu          t2, 773(s2)
                  srli         t6, a4, 5
                  slti         a2, t2, -1120
                  add          t6, s1, s11
                  add          s5, ra, t2
                  add          zero, a7, t5
                  sh           t5, 1368(s2)
                  sll          t4, s2, s11
                  xori         s5, s6, -1620
                  slti         s8, s11, 569
                  xor          zero, s2, t4
                  xori         s6, s8, -1853
                  sb           s5, 196(s2)
                  sb           s10, -81(s2)
                  lh           gp, 502(s2)
                  nop
                  sb           zero, 1103(s2)
                  addi         s10, s6, 1396
                  lb           s6, 1180(s2)
                  or           ra, a0, t0
                  sb           tp, -32(s2)
                  srli         t2, s5, 10
                  lh           a1, 194(s2)
                  sh           a7, 378(s2)
                  slt          s6, t6, zero
                  srl          zero, sp, a1
                  lw           s11, -386(s2)
                  lw           a4, 1406(s2) #end riscv_load_store_rand_instr_stream_15
                  la           tp, region_1+1076 #start riscv_load_store_rand_instr_stream_9
                  slli         zero, tp, 9
                  xor          a2, s7, t0
                  sb           s5, 552(tp)
                  andi         zero, s1, 1714
                  slti         a1, a4, -370
                  lbu          s6, 367(tp)
                  sb           s9, -442(tp)
                  lbu          t3, 426(tp)
                  srl          s5, tp, s0
                  lh           a1, -444(tp)
                  srl          s4, a1, t5
                  lbu          s2, 789(tp)
                  sra          a7, a5, a6
                  lh           a6, 334(tp)
                  lbu          t0, 888(tp)
                  lb           a3, -22(tp)
                  auipc        t6, 904405
                  sw           t1, 540(tp)
                  lbu          a2, 317(tp)
                  lw           t4, -612(tp)
                  lbu          a0, -504(tp)
                  sub          s10, tp, sp
                  sb           gp, -957(tp)
                  auipc        t0, 314371
                  ori          a3, zero, -593
                  and          a2, t5, s9
                  sltiu        s0, ra, -2038
                  slt          t4, s0, gp
                  lbu          t0, 476(tp)
                  add          s10, t6, s5
                  addi         s11, a5, 122
                  sh           t2, 186(tp)
                  andi         s2, s3, -1271
                  sb           t3, -175(tp)
                  lb           a1, -339(tp) #end riscv_load_store_rand_instr_stream_9
                  la           s0, region_0+712 #start riscv_load_store_rand_instr_stream_3
                  lbu          s6, 1(s0)
                  lbu          zero, 8(s0)
                  add          sp, t1, ra
                  sw           t5, 0(s0)
                  sw           a7, 0(s0)
                  sll          s1, gp, s0
                  sltu         s8, a3, t2
                  lbu          s10, -6(s0)
                  sb           t3, -1(s0)
                  lh           a4, 0(s0)
                  sb           a7, 1(s0)
                  sltu         s2, tp, ra
                  sb           a6, -13(s0)
                  lbu          ra, -1(s0)
                  sltiu        tp, s5, 1885
                  or           a2, s5, a2
                  lbu          a7, 1(s0)
                  srli         s1, s8, 21
                  lbu          tp, 13(s0)
                  lbu          tp, -5(s0)
                  slti         s2, ra, -1728
                  or           sp, s9, s10
                  and          t4, t1, s10
                  slli         ra, ra, 1
                  lbu          s5, -1(s0)
                  lbu          t2, -2(s0)
                  lhu          t3, 2(s0)
                  lbu          ra, -6(s0)
                  lb           a0, -16(s0)
                  slti         s11, gp, 974
                  slt          t6, t4, a0
                  xor          gp, a1, s7
                  lh           s5, -6(s0)
                  sb           s3, 1(s0)
                  add          t3, a3, s0
                  lb           s6, -4(s0)
                  lbu          s8, 13(s0)
                  lh           s2, 14(s0)
                  slt          t1, a7, gp
                  slti         a0, s0, 1850
                  lb           sp, 1(s0)
                  lb           t3, 13(s0)
                  lb           s10, -15(s0) #end riscv_load_store_rand_instr_stream_3
                  la           s4, region_1+141 #start riscv_load_store_rand_instr_stream_18
                  lb           a2, 26(s4)
                  sltiu        s0, s9, 1494
                  sh           t0, -59(s4)
                  lb           t5, -35(s4)
                  sltu         s10, t2, s11
                  sra          a6, t1, a0
                  andi         a4, a5, -564
                  and          s2, s5, s1
                  lui          t1, 137369
                  lbu          gp, 14(s4)
                  or           s11, t5, s3
                  lbu          a6, 19(s4)
                  lbu          t2, -56(s4)
                  sltiu        zero, tp, -39
                  or           zero, s1, a5
                  sb           sp, 6(s4)
                  lw           t2, 31(s4)
                  sh           a6, -27(s4)
                  sb           sp, 38(s4)
                  slli         zero, t4, 31
                  srl          s10, zero, s1
                  sub          s10, t1, s4
                  lhu          t2, -15(s4)
                  lhu          sp, 7(s4)
                  srai         s7, a6, 1
                  sltiu        a4, s0, 1986
                  sb           a1, -27(s4)
                  lb           t3, 14(s4)
                  ori          s5, a3, 1849
                  sltu         s6, t6, sp
                  lb           a7, -48(s4)
                  sh           s10, -49(s4)
                  sll          sp, s9, s3
                  lbu          sp, -60(s4)
                  xor          gp, a1, zero
                  sb           s4, 51(s4)
                  lbu          s10, 24(s4)
                  lbu          s10, -24(s4)
                  sb           s11, -14(s4)
                  slt          t4, ra, t0
                  sb           t5, 2(s4)
                  lb           a2, -64(s4) #end riscv_load_store_rand_instr_stream_18
                  la           t0, region_1+291 #start riscv_load_store_rand_instr_stream_8
                  auipc        t3, 13446
                  lh           a1, -127(t0)
                  sb           s0, -165(t0)
                  lui          s4, 379762
                  auipc        a4, 422497
                  srl          s0, sp, sp
                  and          s10, a6, a6
                  xori         t1, sp, -1227
                  and          a2, a5, s7
                  srl          t6, s4, t6
                  srai         a2, t3, 29
                  lbu          s5, 1567(t0)
                  lh           a1, 509(t0)
                  and          a4, ra, gp
                  lbu          tp, 254(t0)
                  slti         a0, gp, -1578
                  sb           a5, 1257(t0)
                  slli         t5, a4, 18
                  lb           s8, 997(t0)
                  lb           s5, -195(t0)
                  lbu          t6, 480(t0)
                  lh           a3, -129(t0)
                  lh           zero, 335(t0)
                  sb           a7, -93(t0)
                  nop
                  lbu          a3, 632(t0)
                  sb           s0, -34(t0)
                  lh           a3, -137(t0)
                  slti         s4, s10, 1672
                  xori         t5, t5, 1244
                  auipc        s7, 243973
                  lbu          s11, 1481(t0)
                  sub          t2, s8, s2
                  sltu         a4, s8, s3
                  lbu          t4, 208(t0)
                  sll          s8, a3, s11
                  slt          t4, t4, s7
                  sltu         s0, s8, gp
                  lbu          sp, 1306(t0)
                  lui          a0, 815301
                  lhu          t1, 1511(t0)
                  lh           gp, -143(t0)
                  sw           t1, 21(t0)
                  lb           t5, 120(t0)
                  sb           a1, 842(t0)
                  auipc        a4, 188427
                  and          s0, s2, s9
                  lhu          s5, 357(t0)
                  sw           tp, 1649(t0)
                  sltiu        sp, s8, -450
                  lhu          ra, 1325(t0)
                  slti         s0, t3, 1277
                  lui          s0, 732166
                  srl          s7, a6, s10
                  lw           gp, 1033(t0)
                  slt          t4, s10, t6
                  lb           a1, 408(t0) #end riscv_load_store_rand_instr_stream_8
                  la           t0, region_0+1832 #start riscv_load_store_rand_instr_stream_1
                  sh           a3, -1448(t0)
                  slli         s7, t3, 17
                  ori          a4, zero, 205
                  sw           a5, 16(t0)
                  lbu          t6, -1731(t0)
                  andi         a0, t2, -1636
                  lhu          s2, -320(t0)
                  sra          s8, a0, tp
                  sb           a5, 141(t0)
                  srl          sp, zero, s0
                  lhu          a6, -552(t0)
                  nop
                  lh           a3, -1730(t0)
                  sub          gp, a7, t2
                  sh           s9, -1740(t0)
                  add          t2, s2, s2
                  sh           s6, -1814(t0)
                  lbu          s1, -861(t0)
                  lb           t2, -418(t0)
                  lb           s5, -1159(t0)
                  or           s10, a1, tp
                  slli         t3, t2, 31
                  lbu          a3, -1790(t0)
                  lb           t2, -929(t0)
                  sb           s11, -650(t0)
                  sra          zero, s4, s9
                  sltu         t3, s6, s11
                  lbu          sp, -714(t0)
                  sw           s3, -72(t0)
                  sb           gp, -109(t0)
                  lb           a3, -1556(t0)
                  sub          s7, a7, a1
                  lb           s2, -1652(t0)
                  lbu          a7, -1824(t0)
                  sh           a4, -514(t0)
                  srli         tp, a5, 9
                  sub          s1, s7, s10
                  xori         s0, s3, -977
                  sub          tp, t2, a2
                  lhu          s4, -494(t0)
                  lb           t6, 128(t0)
                  lbu          zero, -1093(t0)
                  slli         t3, t1, 1
                  lbu          a0, -796(t0)
                  sh           a5, -1302(t0)
                  sb           a4, 115(t0)
                  lbu          gp, -1797(t0)
                  lb           a2, -421(t0) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_1+1848 #start riscv_load_store_rand_instr_stream_10
                  lb           a0, -11(t0)
                  lbu          tp, 2(t0)
                  lw           t1, 4(t0)
                  sh           s5, -10(t0)
                  lbu          zero, 13(t0)
                  xor          a2, s1, t3
                  lb           ra, -1(t0)
                  addi         a1, a3, 1180
                  sb           s3, 15(t0)
                  srl          s6, s1, s9
                  sb           s9, 2(t0)
                  lb           s5, -7(t0)
                  sltiu        s0, zero, -1591
                  auipc        a2, 729300
                  nop
                  lhu          gp, 10(t0)
                  lh           s6, 0(t0)
                  lw           t5, 4(t0)
                  xor          t5, s1, t0
                  srai         s8, t1, 0
                  sh           t1, -16(t0)
                  sltu         a1, gp, a5
                  ori          s4, gp, 727
                  srai         s11, a3, 18
                  auipc        a3, 717294
                  sb           s2, -4(t0)
                  lbu          sp, -13(t0)
                  addi         s8, t0, -95
                  sh           t3, 16(t0)
                  sb           tp, 1(t0)
                  add          t4, t0, a2
                  lbu          gp, -13(t0)
                  sb           a2, -3(t0)
                  sltiu        a2, t3, -1345
                  sub          s0, a2, s4
                  lbu          t1, -9(t0)
                  lbu          s2, 3(t0) #end riscv_load_store_rand_instr_stream_10
                  slli         sp, t6, 13
                  ori          s2, zero, 790
                  slt          s8, s9, s5
                  bltu         gp, tp, 16f
                  or           a4, t4, zero
                  addi         t4, a6, -1849
                  bne          a0, s5, 15f
                  blt          s1, s11, 11f
                  bgeu         s5, s10, 14f
                  sltiu        a0, t0, 763
                  beq          s6, s3, 26f
11:               bltu         s7, a3, 27f
                  addi         t0, a6, -198
                  and          a7, s7, t6
14:               sub          zero, s6, a4
15:               add          tp, t3, gp
16:               sltu         zero, s11, s9
                  la           t3, sub_8
                  lui          a3, 768398
                  addi         t3, t3, 574
                  sltu         a0, s7, zero
                  slli         a2, s5, 19
                  bne          a4, s6, sub_7_j13 #branch to jump instr
                  lui          sp, 139508
                  srai         s11, a7, 9
sub_7_j13:        jalr         t1, t3, -574 #jump sub_7 -> sub_8
                  slt          t2, s1, a7
                  sltiu        a7, gp, -967
                  srai         t5, tp, 30
                  slli         ra, a3, 22
                  blt          s9, s4, 38f
                  bne          t2, t4, 28f
                  sra          t4, s9, t2
                  beq          s5, s0, 27f
                  sltiu        s7, s8, 1613
26:               sltu         a1, a4, gp
27:               addi         s8, a4, -1761
28:               sub          sp, s8, t4
                  srl          ra, t4, s1
                  sra          s4, t4, s1
                  srl          s11, t3, a4
                  srai         t3, s7, 2
                  auipc        t3, 276057
                  sltu         s2, t2, tp
                  or           a2, s2, tp
                  add          ra, s10, s3
                  bge          s11, t6, 50f
38:               auipc        s0, 618437
                  bne          a1, s8, 59f
                  sra          a7, a1, gp
                  sltiu        t4, s5, 1498
                  and          s2, a2, a5
                  auipc        a1, 254981
                  andi         a7, a0, -1453
                  and          t4, s9, sp
                  sll          sp, a0, t2
                  bgeu         s3, a2, 61f
                  sra          s4, s11, s5
                  blt          s5, s6, 57f
50:               slli         t2, t4, 5
                  addi         s8, s11, -1621
                  slt          a6, s6, a3
                  sltiu        t4, t5, -1541
                  add          s2, a7, s7
                  lui          s5, 591966
                  ori          s4, s1, -79
57:               bge          a0, t6, 66f
                  bgeu         a3, t1, 77f
59:               and          a7, t4, a5
                  blt          s2, sp, 67f
61:               sll          a6, s8, a3
                  sub          t4, s1, s9
                  sltu         sp, s7, s9
                  srl          s10, a0, s6
                  beq          a6, s6, 76f
66:               or           a7, a2, zero
67:               auipc        s8, 879634
                  slt          s1, s2, t6
                  slt          a6, sp, s2
                  beq          s5, a3, 84f
                  blt          a5, t6, 81f
                  lui          gp, 53373
                  srai         a0, t6, 5
                  and          s5, a1, a4
                  nop
76:               andi         t3, a6, -939
77:               sltu         t0, s4, t6
                  bne          s6, a4, 93f
                  ori          zero, a5, -1576
                  bne          a5, s8, 100f
81:               and          s0, s8, a7
                  sll          a0, s6, s7
                  andi         gp, a7, 2008
84:               add          s7, t3, s11
                  srai         s7, s2, 16
                  slli         t5, s11, 17
                  slti         a0, t1, -344
                  xor          s8, t1, a6
                  auipc        s11, 89057
                  bgeu         a5, s7, 94f
                  sra          t5, a2, t6
                  andi         a0, a0, 1313
93:               nop
94:               slt          a1, a4, a1
                  lui          sp, 460197
                  srl          a1, gp, s8
                  bge          tp, s4, 98f
98:               sltiu        t4, t0, -1648
                  bne          t1, s0, 110f
100:              nop
                  blt          t5, s6, 114f
                  andi         ra, tp, -296
                  andi         t1, a6, 382
                  slli         t4, t1, 29
                  sll          t2, s4, a7
                  sub          t3, a6, a0
                  sltu         t2, s11, s11
                  blt          s4, s2, 114f
                  auipc        s2, 471905
110:              sll          tp, a4, s11
                  sltu         t0, s1, t4
                  slti         zero, a4, 88
                  auipc        s7, 1012325
114:              add          s4, s0, a4
                  slli         ra, t5, 21
                  andi         s4, t1, 1081
                  blt          t0, a3, 122f
                  ori          t3, t4, -1473
                  xor          t5, s0, a1
                  srai         t0, s9, 19
                  auipc        t0, 942186
122:              ori          tp, a5, 1742
                  slti         a3, t6, -1362
                  srli         t5, s6, 6
                  beq          a4, t4, 127f
                  bge          t5, t3, 138f
127:              addi         s1, a5, 1593
                  sll          t5, t6, s11
                  beq          s2, a4, 146f
                  slli         t6, gp, 25
                  srai         a6, t1, 17
                  bne          gp, a4, 135f
                  addi         s11, s8, 579
                  lui          t3, 230293
135:              xor          s11, s6, s4
                  auipc        t4, 725830
                  auipc        t4, 747354
138:              addi         t1, t6, -1230
                  add          t0, s11, a0
                  srl          t0, a7, s5
                  bge          s8, zero, 152f
                  sltu         tp, gp, zero
                  lui          zero, 844300
                  addi         a1, t6, 23
                  bgeu         s3, t1, 151f
146:              sra          tp, a5, s10
                  or           a4, t2, s10
                  addi         s2, t5, 1294
                  and          t4, s5, s1
                  and          s1, s6, t6
151:              srl          tp, zero, s1
152:              lui          a1, 129426
                  sra          s10, a3, a7
                  lui          t3, 478936
                  sub          s6, a5, s10
                  lui          s5, 956222
                  slli         sp, a6, 3
                  andi         s2, s5, -1730
                  sltu         t4, sp, s11
                  slli         sp, a3, 29
                  slt          s2, a4, s7
                  bgeu         s11, a3, 175f
                  srl          s7, a6, s7
                  or           a2, t5, s6
                  nop
                  xori         s6, t4, -359
                  bltu         t1, sp, 173f
                  sra          t4, s1, s2
                  beq          s5, t1, 174f
                  srli         a4, t6, 29
                  slli         t1, a0, 3
                  slt          gp, s9, s4
173:              andi         zero, s1, 285
174:              bge          a5, zero, 185f
175:              bltu         a2, a0, 187f
                  add          s11, sp, t0
                  bltu         tp, s3, 185f
                  blt          a4, t5, 194f
                  sll          a4, ra, s4
                  blt          t6, ra, 184f
                  addi         t4, s3, 26
                  sltu         s5, a2, zero
                  andi         s1, t4, 283
184:              add          t1, t5, s6
185:              add          gp, s8, a6
                  nop
187:              beq          a6, s7, 201f
                  andi         s5, a4, -1049
                  beq          a2, s2, 209f
                  xori         s0, t6, 1082
                  srl          s7, s8, s7
                  sra          zero, a1, tp
                  slt          s11, a6, zero
194:              bltu         s5, s0, 210f
                  blt          s3, a7, 212f
                  bltu         t1, zero, 202f
                  lui          a3, 824236
                  bge          s9, a6, 199f
199:              sub          s0, a6, s10
                  nop
201:              srl          t4, t3, ra
202:              auipc        t4, 10330
                  bgeu         s6, a1, 220f
                  slti         ra, a1, -994
                  and          s2, s10, t4
                  ori          a4, s1, -274
                  srl          sp, s5, a3
                  sll          a1, a7, s9
209:              beq          zero, s10, 211f
210:              andi         s10, s3, 1819
211:              sltiu        s7, s4, -1310
212:              slti         s11, s9, 1317
                  nop
                  sltiu        t4, ra, 1669
                  srl          tp, s4, ra
                  sltiu        s10, a2, 831
                  bgeu         s9, a3, 232f
                  la           ra, region_1+76 #start riscv_load_store_rand_instr_stream_13
                  xor          a6, zero, s9
                  slti         s0, gp, 1824
                  slt          t0, t5, gp
                  ori          zero, s3, 556
                  srai         s4, sp, 26
                  lui          t2, 978227
                  auipc        a1, 515089
                  sub          a3, a1, a2
                  lbu          s5, -47(ra)
                  sb           gp, 196(ra)
                  lhu          s4, 198(ra)
                  slti         a4, a7, -604
                  lbu          t0, -40(ra)
                  sh           s5, 174(ra)
                  ori          t3, s3, -604
                  sb           t6, -36(ra)
                  srai         t0, t4, 20
                  sb           t4, 16(ra)
                  sltiu        t3, s9, -1777
                  and          s0, a5, s9
                  lh           t3, 104(ra)
                  sb           sp, -9(ra)
                  sltiu        a1, s11, -1817
                  sltiu        a2, a1, -593
                  sltu         s11, t4, sp
                  sll          t3, a1, a5
                  lhu          t5, 120(ra)
                  lbu          a3, -72(ra)
                  sb           t1, 241(ra)
                  lbu          a4, 197(ra)
                  lbu          t0, 197(ra)
                  auipc        gp, 213161
                  lh           t5, -14(ra)
                  add          s5, s2, ra
                  srli         a4, s8, 29
                  lbu          s2, 186(ra)
                  srai         sp, ra, 29
                  slli         t0, a7, 5
                  ori          a6, s1, -2036
                  and          sp, a6, a4
                  lui          s8, 974582
                  ori          t1, t1, 1862
                  and          s4, s9, t5
                  nop
                  lb           s1, 253(ra)
                  andi         a1, a4, 452
                  slti         t4, s4, -293
                  lb           a3, 185(ra) #end riscv_load_store_rand_instr_stream_13
                  srai         a2, t4, 14
                  bge          s1, s1, 232f
220:              and          s1, t2, sp
                  beq          s8, s10, 230f
                  bgeu         s3, s10, 235f
                  slt          s0, s10, s5
                  sub          t4, a2, s0
                  bge          ra, t0, 234f
                  sra          s7, a4, s11
                  bltu         s4, a7, 241f
                  slli         a7, sp, 4
                  slt          t0, t1, t1
230:              srl          s7, s7, s11
                  sltiu        a1, s4, -1089
232:              sltu         s6, zero, s4
                  slt          s6, sp, s1
234:              or           a0, sp, tp
235:              andi         a3, s1, 1425
                  nop
                  or           s8, a3, s1
                  srli         t2, s1, 30
                  blt          a0, t2, 249f
                  slti         s11, s1, 552
241:              sltu         a0, gp, s4
                  srai         gp, s2, 21
                  blt          s8, gp, 247f
                  nop
                  xori         a4, s11, 1189
                  srai         s8, zero, 29
247:              beq          t5, a1, 254f
                  bgeu         t5, a7, 268f
249:              and          s4, t2, s7
                  or           s6, t2, ra
                  addi         s6, s11, -588
                  ori          t6, t6, 1613
                  sra          t5, a2, s6
254:              ori          a2, s1, -1513
                  srl          s6, sp, s11
                  slt          t6, t1, a6
                  beq          a4, t6, 276f
                  add          s2, s5, a6
                  slti         t5, t4, 244
                  andi         t6, s11, 231
                  beq          t3, a6, 278f
                  bne          a6, s2, 282f
                  blt          a3, s7, 268f
                  ori          sp, s10, -271
                  sra          sp, s8, s2
                  blt          t1, zero, 272f
                  bgeu         s6, sp, 276f
268:              nop
                  xor          t3, s3, sp
                  slti         s11, a1, 1730
                  andi         s10, t3, -1635
272:              sll          s0, s9, ra
                  andi         t6, s7, -102
                  xor          a3, a0, t2
                  add          t5, s11, s3
276:              bne          a1, s6, 288f
                  srai         s4, a5, 0
278:              slt          t6, a4, s3
                  xor          t2, s0, s10
                  addi         s4, a4, 479
                  bne          a6, ra, 295f
282:              xor          t6, t5, a6
                  sub          t4, s1, a5
                  bgeu         a0, a4, 287f
                  slli         s1, t4, 21
                  nop
287:              andi         gp, s9, 2000
288:              bne          t0, a4, 305f
                  sub          t5, s7, gp
                  sub          s6, s7, t6
                  andi         a1, a2, 96
                  sll          ra, s2, a1
                  srli         a1, s0, 19
                  srl          t3, tp, a6
295:              xori         a0, s7, 1963
                  ori          zero, t6, 682
                  xor          t6, s1, t1
                  sra          t3, s1, tp
                  bge          s4, a0, 306f
                  and          t0, s11, s4
                  xor          t5, s1, t5
                  beq          a5, a4, 322f
                  xor          t3, zero, s0
                  beq          gp, s6, 317f
305:              lui          t5, 1010789
306:              srl          s5, s5, sp
                  bne          s0, a3, 313f
                  srl          ra, a7, a7
                  xori         t3, t2, -1637
                  blt          a5, s2, 326f
                  addi         t6, a5, 363
                  sltu         s6, a7, s9
313:              blt          a3, t4, 322f
                  xori         zero, t4, -1755
                  slti         s4, a0, 1669
                  sub          s6, gp, t5
317:              sub          a7, t5, t0
                  lui          t2, 346126
                  beq          ra, t3, 323f
                  and          t3, t1, s1
                  srli         a4, t3, 9
322:              slt          a2, a1, sp
323:              slli         s7, s2, 30
                  beq          s2, tp, 338f
                  sra          s4, s3, a0
326:              xori         s5, t5, -1738
                  auipc        s10, 553968
                  bgeu         t2, t6, 339f
                  xor          gp, a0, s8
                  sub          a6, a6, s5
                  bgeu         s7, a4, 342f
                  srai         a4, t2, 1
                  bge          t4, a0, 335f
                  slli         sp, t5, 20
335:              bne          a1, s4, 354f
                  blt          s5, t5, 340f
                  and          s0, gp, s8
338:              srai         a3, t0, 16
339:              addi         t6, a2, 1880
340:              or           a6, s6, s3
                  and          t1, s11, a1
342:              and          t2, a6, s2
                  ori          a3, t4, 453
                  bgeu         a3, t4, 357f
                  srli         s2, a6, 17
                  or           s2, s5, t0
                  ori          a7, s5, 2016
                  sll          s10, s5, s0
                  srl          gp, t2, s0
                  nop
                  addi         t3, s1, 1643
                  sub          s11, t6, t2
                  srl          s10, s4, s0
354:              andi         a0, s9, 221
                  sra          s11, s6, t4
                  and          a2, a2, s7
357:              sra          ra, ra, zero
                  auipc        a6, 42925
                  lui          s7, 114310
                  xori         t0, t1, 1717
                  or           a7, t5, t3
                  sub          t0, s7, sp
                  or           a7, t4, s11
                  nop
                  xor          t6, sp, a0
                  addi         a2, a1, 1688
                  bltu         a4, s7, 375f
                  xor          s1, zero, a3
                  srl          s0, t3, gp
                  bne          a2, s0, 385f
                  add          s5, t0, s11
                  bgeu         a4, a7, 385f
                  auipc        s0, 78640
                  addi         t4, s11, 992
375:              addi         ra, a1, -518
                  sub          sp, a1, t0
                  slli         t6, s2, 15
                  or           a0, s5, t1
                  blt          zero, s9, 395f
                  sltiu        tp, s10, 485
                  srli         s11, s8, 21
                  bgeu         s2, t5, 383f
383:              xori         s7, s7, -1299
                  or           s6, s10, t5
385:              slli         a7, sp, 12
                  beq          a6, a1, 392f
                  bne          a0, s0, 397f
                  bne          s8, s3, 399f
                  slti         t2, ra, 1517
                  slli         s1, a0, 0
                  nop
392:              xori         s8, s0, 2045
                  auipc        t0, 555124
                  bgeu         s0, t6, 408f
395:              add          s10, s6, t5
                  bgeu         tp, s2, 413f
397:              addi         s7, a6, 877
                  and          s10, s8, s3
399:              bne          gp, s2, 402f
                  lui          zero, 367180
                  blt          a1, zero, 408f
402:              srl          a1, s0, t5
                  xori         t4, s10, -429
                  lui          s10, 46725
                  xor          s7, a5, t2
                  beq          a2, ra, 411f
                  and          ra, s1, a7
408:              nop
                  sll          a0, a4, s3
                  lui          s6, 9238
411:              xori         t6, s6, -268
                  sub          t2, s4, s4
413:              auipc        s7, 916871
                  sltiu        a4, s3, -438
                  sra          a6, tp, a1
                  sltiu        a7, s9, 91
                  sub          s1, s8, s11
                  slli         a1, a4, 21
                  slti         t6, s4, 357
                  add          a1, t5, s11
                  ori          t2, t6, 1570
                  slt          a6, t3, t4
                  add          s1, t4, a7
                  add          s2, s9, a6
                  and          s11, s6, s3
                  srai         t2, a6, 10
                  sra          t2, a3, s10
                  srai         a6, t1, 21
                  nop
                  srli         s6, s7, 7
                  sub          a6, t4, gp
                  bgeu         a3, a0, 445f
                  xori         a2, t2, 1013
                  srl          t0, a5, ra
                  and          sp, s2, s6
                  auipc        t4, 967059
                  and          a7, t4, a5
                  addi         a2, t3, 870
                  srai         s11, s1, 6
                  slti         s8, s5, -812
                  or           t1, a0, a3
                  beq          zero, t6, 457f
                  addi         s7, s0, 534
                  slli         t4, s10, 2
445:              slt          s5, t2, s6
                  xori         a3, s5, 600
                  srai         gp, a3, 23
                  sltu         t4, a5, zero
                  sltiu        sp, a7, -1859
                  addi         a2, a4, -1868
                  blt          a2, ra, 468f
                  add          s2, t5, sp
                  slli         a7, s5, 10
                  add          s8, s7, s9
                  srai         s1, s7, 0
                  sra          sp, a7, a7
457:              add          a0, s8, a2
                  slli         a0, a5, 14
                  bltu         a0, sp, 469f
                  blt          t2, t3, 472f
                  andi         s10, s4, -1527
                  sltu         a7, s1, s6
                  sub          a1, s10, s3
                  sub          t4, ra, gp
                  slti         s1, s10, -44
                  add          t6, sp, s11
                  sltiu        s4, s10, -1144
468:              sll          t0, s4, s10
469:              sltu         a7, s10, s5
                  srl          t4, t0, gp
                  sub          sp, s8, t3
472:              bne          a4, t2, 486f
                  blt          a2, t2, 482f
                  slt          s6, sp, a6
                  sltu         t3, a0, s7
                  bltu         t0, t1, 482f
                  add          a1, s0, a0
                  addi         tp, a2, 302
                  xori         t6, s2, -1081
                  xor          a2, t2, s5
                  sltiu        a0, s0, -1153
482:              ori          s1, s8, 68
                  blt          a7, t1, 503f
                  slti         t0, ra, -1793
                  nop
486:              blt          a7, s3, 499f
                  slti         sp, s11, -1288
                  xor          s11, a1, ra
                  sltiu        s0, a3, 870
                  srl          s6, a6, s1
                  nop
                  sll          s7, a2, zero
                  ori          t4, s7, 649
                  sub          s4, a7, s7
                  slti         a6, zero, -97
                  nop
                  addi         s4, s11, -1840
                  sub          a1, t2, s8
499:              sltiu        s2, s11, -420
                  bne          s1, s5, 504f
                  slti         ra, s3, 1964
                  slli         t5, s10, 18
503:              bgeu         t0, s7, 507f
504:              andi         sp, s6, -453
                  blt          s3, gp, 514f
                  sub          s7, t0, tp
507:              xori         t4, s5, -1594
                  bltu         zero, t1, 528f
                  or           s5, gp, s7
                  blt          s4, s4, 518f
                  bne          s2, ra, 517f
                  and          t6, s2, ra
                  slti         t6, s5, 2029
514:              bge          s2, t3, 516f
                  lui          zero, 527202
516:              slli         t4, s11, 22
517:              slti         s4, tp, 1581
518:              srli         a2, a5, 28
                  and          a3, sp, s4
                  slli         a3, s2, 13
                  slt          s4, a5, a0
                  xor          t1, t3, tp
                  xori         a6, a2, -927
                  srai         sp, s8, 13
                  andi         t2, a3, 1280
                  addi         gp, a0, -1670
                  srl          a2, s3, a5
528:              beq          tp, t0, 547f
                  sra          a3, t5, s5
                  bge          zero, a7, 546f
                  lui          t0, 85141
                  xor          a2, a2, tp
                  sll          s8, s1, s1
                  nop
                  bge          t3, t5, 541f
                  nop
                  bne          ra, t1, 553f
                  bge          tp, s5, 549f
                  slti         t6, t2, 1920
                  srl          s2, t2, a6
541:              slli         s4, a6, 16
                  nop
                  bgeu         a7, s6, 544f
544:              xori         s10, t0, 962
                  or           s4, a3, s10
546:              sub          a1, s7, a6
547:              add          t3, t1, s0
                  add          s6, s9, s6
549:              blt          t3, s1, 562f
                  andi         t3, s1, 1025
                  srli         s4, a1, 15
                  srli         s10, a4, 14
553:              sra          s7, a3, t0
                  bge          t0, a4, 571f
                  addi         gp, s9, -1580
                  bne          t0, s8, 559f
                  srl          t5, s0, s5
                  add          s4, t5, s6
559:              and          a7, s2, zero
                  lui          sp, 992099
                  addi         t4, t0, 363
562:              auipc        t0, 481873
                  slli         a2, t1, 22
                  srai         s5, s1, 29
                  bltu         s0, t4, 571f
                  srl          s10, tp, t0
                  sra          t4, t6, t5
                  sll          a7, a4, t0
                  add          a3, a6, s1
                  sub          t2, a2, s8
571:              beq          t1, a1, 572f
572:              bltu         s3, t5, 588f
                  bltu         s2, t2, 589f
                  beq          tp, a0, 580f
                  add          s6, s10, a7
                  lui          t3, 107017
                  slt          a3, gp, tp
                  srli         t0, s0, 31
                  nop
580:              bge          s2, sp, 591f
                  addi         t4, a3, 1291
                  srai         zero, s2, 3
                  sll          tp, gp, t3
                  srai         a6, a2, 15
                  bgeu         t2, s5, 591f
                  bltu         s10, zero, 606f
                  ori          a6, t0, 661
588:              add          s5, s9, s9
589:              bne          t4, s7, 598f
                  andi         s2, s2, -941
591:              sltiu        s6, t2, 1432
                  slt          s2, s0, a0
                  sra          tp, a3, s6
                  or           s1, a2, sp
                  beq          s1, s8, 597f
                  xori         a2, s3, -880
597:              andi         t3, s4, 1121
598:              addi         a6, s10, 1304
                  andi         a7, t4, 385
                  xor          s5, t2, a7
                  bne          s10, t6, 605f
                  srli         ra, a1, 0
                  bne          s4, s4, 623f
                  and          s0, a1, s1
605:              andi         t5, tp, -1554
606:              xori         a3, a1, 544
                  sra          s1, s7, t2
                  andi         sp, s8, -715
                  blt          a7, s3, 624f
                  sub          a4, gp, s5
                  and          zero, s7, s8
                  la           sp, region_1+1833 #start riscv_load_store_rand_instr_stream_17
                  lhu          a0, -57(sp)
                  sb           tp, 46(sp)
                  xori         a0, a3, -1058
                  nop
                  addi         s5, t0, 1561
                  lbu          zero, 60(sp)
                  sb           s3, 29(sp)
                  lh           t2, 55(sp)
                  sh           a4, 27(sp)
                  nop
                  sb           a1, 14(sp)
                  lh           gp, -31(sp)
                  lbu          a7, 0(sp)
                  add          s4, ra, s10
                  lb           s10, -50(sp)
                  sltiu        t2, a6, -349
                  slli         t0, s6, 1
                  sw           s1, 55(sp)
                  sltu         tp, tp, s10
                  lhu          s11, -5(sp)
                  lh           s5, -55(sp)
                  sltu         s6, tp, s1
                  slli         s10, a0, 13
                  sltu         t6, s11, a7
                  sh           s8, -27(sp)
                  sll          gp, a4, a5
                  sb           t5, 32(sp)
                  or           s1, s7, ra
                  lb           zero, -11(sp)
                  sb           s10, 39(sp)
                  andi         a6, a3, -525
                  srai         t0, s1, 29
                  lbu          s8, -26(sp)
                  sb           a6, 16(sp)
                  sh           s3, -51(sp)
                  sub          s6, a2, ra
                  sra          s1, a2, s0
                  sb           s5, 6(sp)
                  xor          t5, t1, s0
                  sb           s4, 32(sp)
                  sltiu        a2, a7, 1157
                  srli         s1, t0, 30
                  lui          s0, 898040
                  sb           gp, -1(sp)
                  srli         zero, s7, 28
                  sub          t1, s1, t6
                  srl          t0, s4, s4
                  srli         t6, s4, 19
                  sub          a6, sp, s1
                  addi         a4, s6, 1861
                  lbu          s0, 12(sp)
                  sb           s2, 54(sp)
                  lhu          a3, 55(sp)
                  sb           a4, 31(sp) #end riscv_load_store_rand_instr_stream_17
                  and          s0, a0, t2
                  srli         tp, s11, 22
                  bgeu         sp, t4, 626f
                  blt          zero, a6, 626f
                  xori         t3, gp, -903
                  slt          zero, a4, a0
                  bgeu         s4, t1, 631f
                  sub          gp, t0, t1
                  slt          s5, s10, t2
                  srai         s10, s10, 13
                  sltiu        t4, s10, -1965
623:              beq          ra, s11, 637f
624:              andi         a1, a1, -662
                  add          tp, gp, a6
626:              or           a2, s4, a0
                  andi         t6, s1, 821
                  bgeu         s10, t2, 645f
                  slli         s4, a5, 21
                  srl          ra, s11, t4
631:              andi         ra, a0, 528
                  srl          t4, a7, s0
                  sll          a6, sp, s2
                  sltiu        s5, zero, -1851
                  sltiu        a3, t4, -617
                  lui          a7, 333217
637:              xor          a7, t6, sp
                  xor          s7, gp, a6
                  xor          sp, s7, s1
                  slli         t3, s9, 0
                  bge          s7, s3, 654f
                  xor          t1, a2, t0
                  auipc        s4, 49565
                  ori          gp, t4, 486
645:              xor          t1, s4, s4
                  bge          t5, gp, 665f
                  auipc        a4, 614079
                  bltu         ra, a4, 653f
                  srli         s6, sp, 8
                  srai         a6, s5, 30
                  ori          s0, gp, 871
                  sltu         s7, t6, s9
653:              addi         a4, t5, 728
654:              slli         s7, t2, 11
                  addi         s8, s0, -1446
                  bge          s7, s5, 669f
                  bge          s2, a7, 666f
                  sll          t1, tp, a1
                  bne          t5, tp, 673f
                  xori         t0, t5, 275
                  sra          a6, tp, t0
                  nop
                  xor          a3, a4, t3
                  bge          s5, t6, 674f
665:              sltiu        tp, s8, -1536
666:              beq          s11, t5, 670f
                  blt          s0, s1, 675f
                  sra          t6, sp, s9
669:              or           t1, s9, s1
670:              ori          s0, t6, 1178
                  slli         t3, zero, 24
                  srl          s11, s1, s4
673:              lui          s11, 863192
674:              xori         t2, s0, 1962
675:              slt          gp, s1, s10
                  bne          s1, tp, 683f
                  sltu         s1, sp, t3
                  beq          tp, s2, 698f
                  bge          t4, s7, 695f
                  bge          t4, a2, 688f
                  nop
                  sltu         s0, s8, a3
683:              blt          a4, s2, 696f
                  srli         s10, s4, 15
                  or           s8, s11, t5
                  sll          s10, t5, t4
                  srai         s10, a6, 24
688:              andi         s5, s0, 940
                  beq          a0, s10, 693f
                  xor          s6, a6, a3
                  bltu         s6, t3, 695f
                  bge          t4, t3, 704f
693:              blt          s4, t1, 702f
                  andi         s4, t6, 1031
695:              slti         s11, t2, -1122
696:              add          sp, s0, sp
                  ori          a3, a0, 349
698:              xor          a4, s6, tp
                  sra          t1, s8, zero
                  andi         t1, t5, -1213
                  ori          t3, t5, -871
702:              and          t3, a4, s10
                  addi         tp, a7, -1280
704:              ori          gp, s4, 636
                  or           t4, s4, t5
                  slti         s0, a0, 1406
                  nop
                  srai         s5, t4, 24
                  sub          t4, a5, s11
                  srli         a2, s5, 14
                  sltiu        s8, t0, -486
                  and          t6, a0, s4
                  srli         t4, t5, 11
                  add          s1, a4, s6
                  or           s8, a5, s6
                  srli         s7, t6, 6
                  or           t0, s0, s4
                  slti         s2, t0, -917
                  slli         s11, a6, 24
                  add          sp, s6, a5
                  or           s10, a0, sp
                  beq          t2, s7, 735f
                  add          s11, t4, t2
                  sra          ra, s0, s5
                  sltiu        t5, ra, 938
                  bne          s7, a1, 743f
                  beq          s10, s10, 746f
                  add          s0, t5, gp
                  bgeu         s10, a1, 735f
                  ori          t4, t0, -251
                  slti         gp, s6, 659
                  bne          s7, s4, 734f
                  and          zero, s3, a7
734:              srli         s1, s9, 24
735:              lui          t1, 150752
                  beq          s3, t3, 750f
                  xor          s11, t5, t1
                  lui          a7, 112751
                  sra          a6, s11, s4
                  slti         s10, s11, -1972
                  srl          s8, s10, s5
                  xori         a1, a3, -322
743:              sltiu        a0, t4, -1735
                  or           s7, tp, a0
                  srl          sp, sp, s1
746:              xor          t3, s10, s7
                  blt          t3, s11, 763f
                  addi         s10, t3, -2023
                  bge          t4, t3, 769f
750:              srli         t5, ra, 21
                  bltu         s2, t2, 764f
                  slli         gp, s0, 13
                  andi         a0, s9, 419
                  bgeu         s0, s1, 769f
                  srl          s10, t1, zero
                  sll          a6, a0, s4
                  addi         a0, t0, -291
                  bge          a0, a3, 768f
                  andi         sp, sp, 1587
                  add          a7, t6, t2
                  ori          t3, a7, 432
                  srl          s6, t6, s7
763:              andi         s2, s4, 1312
764:              sltiu        a3, a6, -1931
                  bne          s6, a2, 766f
766:              blt          t1, t6, 783f
                  auipc        s8, 645519
768:              bne          s1, a0, 771f
769:              sll          a1, s6, s0
                  xori         t0, s1, -489
                  la           sp, region_1+43 #start riscv_load_store_rand_instr_stream_2
                  and          t0, a4, a0
                  srl          t6, t6, t2
                  srl          s11, t6, ra
                  lw           a0, 985(sp)
                  sw           t2, 33(sp)
                  lb           a2, 1383(sp)
                  addi         t0, ra, 1249
                  addi         s6, tp, 1901
                  lb           s2, 50(sp)
                  lbu          t2, 1200(sp)
                  sb           a2, 932(sp)
                  lui          t2, 762715
                  andi         a1, t0, 1119
                  sra          a2, s5, a2
                  srli         a0, t0, 18
                  sb           s8, 367(sp)
                  sh           s9, 1929(sp)
                  lb           s7, 768(sp)
                  add          s1, t6, a0
                  sll          s1, a4, t5
                  sb           t6, 894(sp)
                  lbu          t2, 1860(sp)
                  lb           s10, 1712(sp)
                  ori          t6, s2, 764
                  lb           a6, 1477(sp)
                  lbu          a1, 735(sp)
                  sll          a4, s0, a4
                  auipc        a7, 928135
                  lbu          t2, 539(sp)
                  xor          s2, t2, t1
                  lb           s10, 1022(sp)
                  lbu          t0, 1856(sp)
                  lw           s5, 1909(sp)
                  sb           a6, 460(sp)
                  sh           ra, 713(sp)
                  sh           tp, 103(sp)
                  slli         ra, a1, 13
                  sll          s8, s9, gp
                  lh           s5, 9(sp) #end riscv_load_store_rand_instr_stream_2
771:              bne          t4, a6, 777f
                  sub          t6, a0, t1
                  bne          a0, a1, 787f
                  ori          s6, ra, -693
                  sll          a1, s3, s10
                  ori          a0, ra, 657
777:              xori         t5, t1, -13
                  blt          s3, s6, 787f
                  sltu         t1, t4, ra
                  add          t2, a5, s7
                  xor          a2, t3, a6
                  sra          gp, s8, s1
783:              sub          ra, a5, s9
                  blt          s7, a5, 795f
                  nop
                  bltu         sp, s3, 797f
787:              blt          s4, sp, 793f
                  sra          a1, tp, s9
                  bne          s9, a4, 794f
                  nop
                  sub          s1, a0, t6
                  slti         a2, t3, -749
793:              srai         t6, zero, 17
794:              ori          a0, s4, 1318
795:              bge          s3, a4, 802f
                  auipc        gp, 424735
797:              srai         a6, sp, 11
                  nop
                  ori          s6, a1, 1608
                  lui          a2, 786668
                  lui          gp, 855598
802:              or           s1, s8, a2
                  srl          a7, s10, s9
                  bltu         t0, tp, 821f
                  auipc        a0, 784520
                  slt          sp, t5, s8
                  srli         t4, s5, 17
                  ori          s11, t3, 1211
                  and          a6, a2, sp
                  srai         s2, s3, 11
                  srl          a7, t4, s2
                  sltiu        t3, t0, -1801
                  bltu         t0, a3, 833f
                  sltiu        a7, a1, -1203
                  addi         ra, s11, 644
                  bltu         s6, s3, 825f
                  xor          s6, gp, tp
                  andi         a6, t6, -1137
                  xor          gp, a6, t0
                  blt          s1, t4, 825f
821:              srai         s10, tp, 10
                  slli         s10, s0, 25
                  andi         t0, zero, -1455
                  slt          s7, s1, t3
825:              sltu         t5, t6, ra
                  sra          s4, a5, a1
                  auipc        ra, 537807
                  sra          a3, a2, a2
                  bgeu         s7, s1, 835f
                  and          s2, t1, a7
                  bltu         s0, t6, 835f
                  xor          a0, tp, sp
833:              sub          s6, a5, s2
                  xori         a0, t0, -321
835:              or           a7, s2, s11
                  bne          s10, t0, 849f
                  lui          s6, 217618
                  auipc        a2, 752033
                  beq          s6, a6, 853f
                  bne          tp, a4, 851f
                  sub          s1, t2, s10
                  beq          s8, a4, 858f
                  bge          s6, sp, 844f
844:              srai         t5, t6, 25
                  blt          s0, zero, 864f
                  bge          a4, a3, 852f
                  bltu         t6, tp, 855f
                  srl          t6, ra, gp
849:              slt          s4, t2, ra
                  srl          a2, s3, gp
851:              xori         a4, s11, -1962
852:              sltiu        a2, s4, 1123
853:              slti         s1, s1, 1289
                  slli         s5, t4, 3
855:              xor          s2, s5, s0
                  bge          s7, sp, 866f
                  addi         a1, tp, -1158
858:              auipc        t4, 19848
                  bltu         s1, s4, 874f
                  bne          t5, a3, 863f
                  beq          s11, t4, 870f
                  and          t1, t0, t4
863:              beq          s1, s4, 876f
864:              slli         s8, s11, 22
                  nop
866:              and          t3, s2, s1
                  bge          s6, s11, 871f
                  add          s4, t1, t2
                  slti         a7, ra, 626
870:              sub          s11, a6, t6
871:              srai         sp, s6, 6
                  addi         a2, s10, -341
                  xor          gp, t1, tp
874:              bltu         t2, s0, 885f
                  srai         t0, s11, 26
876:              srai         t5, a3, 17
                  bne          s7, t1, 894f
                  sub          t2, a4, ra
                  lui          s7, 106850
                  srai         sp, s1, 14
                  slti         s6, s2, -1161
                  slt          s6, s0, t2
                  bltu         t1, t1, 897f
                  bge          t0, a6, 904f
885:              sll          s1, t3, a4
                  bgeu         s7, s2, 898f
                  srl          t0, s8, t0
                  sub          s7, s2, s8
                  andi         s6, s8, 2001
                  sll          s1, t3, a4
                  auipc        s5, 786615
                  slt          t4, s2, a6
                  addi         sp, s7, -35
894:              srai         s8, t1, 8
                  bltu         a2, s0, 908f
                  slt          t6, tp, sp
897:              srai         a6, t0, 17
898:              xor          tp, t2, t2
                  srl          a0, s5, s5
                  bgeu         s10, a3, 907f
                  blt          a0, ra, 903f
                  addi         a2, s4, 331
903:              xor          a2, a7, s5
904:              bltu         s6, s5, 920f
                  bne          s5, t0, 911f
                  bltu         t0, t0, 915f
907:              lui          s1, 914420
908:              bne          t5, a2, 910f
                  srl          a2, t1, t0
910:              beq          s3, a0, 918f
911:              srli         t4, t2, 2
                  srl          t6, t1, a5
                  lui          s11, 829492
                  blt          s7, t4, 924f
915:              bltu         t6, s7, 916f
916:              bltu         s10, tp, 930f
                  auipc        t6, 922104
918:              bge          t3, t4, 929f
                  srli         s8, ra, 13
920:              slt          t6, t0, t4
                  ori          s8, a3, 1783
                  sltiu        s4, s7, -11
                  la           t5, region_1+430 #start riscv_load_store_rand_instr_stream_6
                  slt          t6, t6, a2
                  lb           s4, 1223(t5)
                  lh           s7, 1010(t5)
                  and          a7, t5, s11
                  sb           s4, 607(t5)
                  addi         s1, a6, 90
                  sb           s5, 651(t5)
                  sltiu        s11, a2, 1509
                  sub          s0, t3, s5
                  lbu          s0, 434(t5)
                  sh           a1, -200(t5)
                  ori          t0, s6, 1073
                  or           t2, t1, s8
                  auipc        s2, 449624
                  lb           s10, 307(t5)
                  lbu          a4, 678(t5)
                  slti         s0, ra, 1713
                  lb           s6, 572(t5)
                  lbu          s7, 729(t5)
                  lbu          t4, 1345(t5)
                  lw           s8, 1122(t5)
                  lb           t4, 1479(t5)
                  srl          s1, s1, t2
                  slti         sp, sp, -1865
                  slt          gp, s9, s11
                  lw           ra, 530(t5)
                  sw           s10, -78(t5)
                  slli         t3, s0, 23
                  ori          a3, s8, 1653
                  lb           s8, 408(t5)
                  lb           t2, 650(t5)
                  lbu          sp, -36(t5)
                  lb           zero, 465(t5)
                  srl          t0, zero, a1
                  srli         t0, tp, 19
                  lw           ra, 1190(t5)
                  lbu          a4, 577(t5)
                  addi         s8, zero, 1494
                  lbu          a6, 1035(t5)
                  sub          t1, s11, s4
                  lw           gp, -238(t5)
                  sb           a7, 1423(t5)
                  lb           s8, -395(t5)
                  lhu          a6, 260(t5)
                  sh           a1, 688(t5)
                  or           a0, tp, s7
                  addi         zero, ra, 945
                  sll          s6, t2, a1
                  sll          s4, t1, s1
                  lh           t3, -322(t5)
                  sltu         s4, t0, gp
                  lbu          s7, 892(t5) #end riscv_load_store_rand_instr_stream_6
                  bltu         s8, a0, 942f
924:              srai         t0, ra, 2
                  sra          t0, s7, a3
                  slt          s10, a1, a1
                  xor          s11, s5, s5
                  or           t2, a2, a4
929:              sltiu        a1, a3, -1533
930:              sll          t1, t4, t4
                  auipc        t1, 235460
                  auipc        s8, 445678
                  and          t6, a5, s9
                  slli         a7, s2, 14
                  and          t4, s1, t6
                  add          s8, s10, a7
                  auipc        s6, 392683
                  srli         tp, ra, 0
                  beq          sp, s3, 953f
                  andi         gp, t5, 1068
                  bgeu         s9, gp, 950f
942:              xor          s2, t2, s1
                  slt          s10, a0, sp
                  xor          t1, a3, s7
                  sub          s4, s2, t4
                  slt          s8, ra, t6
                  or           gp, s10, t2
                  bne          s1, s10, 955f
                  and          sp, s11, s10
950:              nop
                  blt          a2, a4, 954f
                  srli         a3, s2, 31
953:              sll          t6, s10, s10
954:              nop
955:              sltu         t3, s0, t4
                  bne          ra, s4, 962f
                  or           a7, t4, t2
                  auipc        t4, 576333
                  lui          zero, 979681
                  sltiu        s6, tp, -1953
                  bgeu         a0, sp, 976f
962:              sub          a1, s5, a4
                  sltiu        s8, ra, -1325
                  sub          t0, zero, a2
                  srl          s5, t3, t3
                  blt          t0, t6, 970f
                  and          t3, s9, gp
                  slti         a2, s8, 3
                  sltiu        s4, a3, -878
970:              slt          a3, s8, s6
                  sltiu        s6, s0, 537
                  nop
                  xor          s1, t6, s9
                  add          a3, s0, zero
                  and          a4, a1, sp
976:              addi         s0, t1, -1621
                  and          t3, tp, s4
                  nop
                  add          a0, zero, s2
                  add          tp, t0, sp
                  sub          a1, t3, s0
                  or           t6, s10, s8
                  bge          t1, a2, 996f
                  auipc        a4, 276821
                  slli         a4, t4, 2
                  sub          a6, a7, a0
                  bge          s6, a6, 993f
                  bge          s8, zero, 994f
                  sll          s8, a4, a5
                  sltu         a6, a2, t2
                  bltu         a4, s7, 1011f
                  slt          a0, s9, gp
993:              srai         a3, t2, 22
994:              addi         a2, s8, 1063
                  bne          t6, s2, 1012f
996:              bltu         tp, s1, 1012f
                  sub          a2, ra, s2
                  xori         s10, s9, 1796
                  srli         a2, s3, 19
                  add          s8, s0, s10
                  srl          s6, sp, s8
                  bgeu         s0, ra, 1015f
                  xor          tp, a4, a1
                  nop
                  ori          s11, gp, 478
                  or           s0, t6, s8
                  sltiu        s1, s7, 720
                  lui          s4, 562157
                  add          a6, t0, s4
                  sub          s8, s1, a0
1011:             srai         a7, t0, 22
1012:             srli         ra, s5, 7
                  beq          s3, a6, 1017f
                  and          a2, s8, s5
1015:             auipc        s6, 818967
                  slli         gp, a3, 18
1017:             srl          a7, t1, s9
                  or           s4, s5, s9
                  nop
                  srli         a1, t3, 8
                  sltiu        s2, ra, 1132
                  slt          s8, s1, s7
                  or           s2, t6, s4
                  srli         s10, t3, 25
                  sub          a3, s5, t3
                  blt          t2, t3, 1046f
                  slt          a0, a3, s11
                  or           t5, a4, ra
                  auipc        a6, 872628
                  slt          s2, s1, s1
                  sltu         s0, t3, a5
                  andi         s0, a3, 2002
                  sltu         t4, zero, a5
                  add          a7, zero, a0
                  sra          s4, a1, a0
                  andi         s0, a2, 1371
                  or           ra, a2, sp
                  nop
                  xor          ra, s1, t0
                  sltu         a4, t6, s3
                  bge          gp, a7, 1054f
                  nop
                  slti         sp, s5, 782
                  lui          a6, 544640
                  slli         tp, s5, 30
1046:             and          s6, s7, s11
                  beq          a6, a4, 1059f
                  srl          t4, gp, s10
                  nop
                  beq          t5, a1, 1061f
                  bge          a4, t2, 1056f
                  addi         zero, s5, 1364
                  srl          s2, a5, t4
1054:             or           s10, s11, s9
                  bne          s4, a3, 1072f
1056:             beq          t0, a2, 1072f
                  auipc        s1, 885045
                  srli         s0, sp, 27
1059:             beq          tp, a7, 1078f
                  beq          tp, a7, 1074f
1061:             sltu         s7, gp, ra
                  addi         gp, s3, -533
                  ori          s5, t0, -1216
                  bgeu         a3, t2, 1075f
                  sub          tp, t4, s0
                  lui          s6, 850881
                  lui          s10, 884239
                  srli         tp, t6, 8
                  slt          s2, gp, s11
                  auipc        sp, 495117
                  beq          t3, t5, 1086f
1072:             slli         s0, tp, 25
                  add          gp, s5, t2
1074:             srai         s8, gp, 9
1075:             bltu         ra, gp, 1076f
1076:             and          sp, s9, s8
                  add          a0, t3, a1
1078:             beq          s10, s5, 1091f
                  nop
                  sub          s10, t1, s1
                  bge          t6, a4, 1098f
                  addi         s7, zero, 1859
                  sltiu        a2, s10, -76
                  xori         s10, a1, 153
                  nop
1086:             slli         gp, a3, 9
                  srl          a4, a6, s7
                  srli         t4, t5, 23
                  sll          s2, sp, a4
                  srli         s0, s2, 18
1091:             blt          s3, s10, 1107f
                  sltu         s6, s5, s3
                  sub          t6, s3, t5
                  slt          s2, a0, s11
                  slt          a3, s2, zero
                  blt          t6, t3, 1116f
                  sub          a1, gp, s10
1098:             sltu         t4, s1, s11
                  or           a1, s7, a4
                  beq          gp, tp, 1116f
                  bltu         a3, t6, 1115f
                  sra          ra, s5, ra
                  or           t4, a6, gp
                  andi         a3, gp, 435
                  bge          tp, zero, 1115f
                  lui          s5, 576032
1107:             bne          a4, s5, 1111f
                  slti         s11, s1, -840
                  srai         a1, a2, 6
                  addi         t1, t2, -1179
1111:             or           s8, sp, s3
                  slti         a0, a1, -1433
                  sltu         s10, a4, s10
                  sltiu        s7, t0, 154
1115:             srl          s5, t3, s0
1116:             andi         t6, a4, -642
                  sra          t4, t0, s8
                  sub          t5, s4, s4
                  sub          a4, s1, a0
                  sltiu        t6, t0, 345
                  sub          tp, t5, s6
                  and          t3, s5, a0
                  ori          sp, s7, -1135
                  nop
                  xori         s7, ra, -613
                  bltu         zero, s2, 1131f
                  nop
                  srai         a3, tp, 3
                  xori         a3, s9, 255
                  srl          s2, t3, a7
1131:             blt          ra, a6, 1137f
                  lui          s1, 1012705
                  slt          sp, s7, a6
                  nop
                  andi         a7, a7, -1571
                  srl          a4, a7, t4
1137:             srai         s2, t6, 3
                  lui          s2, 454459
                  sltiu        s10, a7, -1621
                  srli         t1, s3, 13
                  sltu         ra, s2, s0
                  sltu         a3, zero, s7
                  andi         ra, sp, -93
                  add          s7, s5, s10
                  sltiu        zero, t2, -1317
                  auipc        s2, 581800
                  bge          sp, s3, sub_7_j12 #branch to jump instr
                  add          zero, tp, s11
sub_7_j12:        jal          t1, sub_8 #jump sub_7 -> sub_8
                  sltiu        s1, t4, -451
                  bge          gp, s0, 1157f
                  auipc        t4, 373443
                  bge          s3, t4, 1159f
                  slt          ra, t3, s2
                  add          t4, gp, a1
                  srli         ra, t2, 14
                  lui          s4, 31241
                  sll          s2, s3, a0
                  bne          s10, s8, 1158f
                  andi         a0, s11, -77
                  add          s6, s7, ra
                  bge          a6, a7, 1161f
                  blt          s4, s1, 1165f
1157:             srai         s5, gp, 15
1158:             bltu         s5, t0, 1178f
1159:             sll          a7, s2, t5
                  sra          s2, tp, s7
1161:             bgeu         s0, s4, 1178f
                  slt          a7, t3, t5
                  lui          a7, 741307
                  blt          a3, s0, 1171f
1165:             sra          gp, s0, t3
                  addi         a7, t4, 1118
                  nop
                  bgeu         s8, s10, 1176f
                  and          gp, s4, t4
                  xori         a0, t6, 1820
1171:             bgeu         a2, gp, 1175f
                  sll          a0, t6, zero
                  slt          tp, s10, s4
                  xor          s10, a5, t3
1175:             andi         s0, gp, 2006
1176:             beq          t2, ra, 1187f
                  bne          a5, a0, 1189f
1178:             slti         a0, a4, -1352
                  addi         t3, gp, 1238
                  bltu         a5, a5, 1189f
                  xori         t3, gp, -2007
                  bne          t6, s4, 1185f
                  andi         a6, t2, 1156
                  ori          a4, t2, -1770
1185:             bltu         gp, a6, 1187f
                  or           s2, a5, a0
1187:             sltu         ra, s5, t3
                  lui          ra, 23020
1189:             bne          ra, tp, 1202f
                  srli         s11, t1, 22
                  bgeu         a6, s4, 1211f
                  beq          t1, a0, 1195f
                  add          a3, t6, s10
                  add          t3, t2, a2
1195:             or           s2, a2, ra
                  sltu         tp, s8, s6
                  addi         a3, s0, 1001
                  xori         t4, s0, -559
                  sll          ra, t5, s8
                  sll          zero, gp, t5
                  xori         s8, s11, 93
1202:             bgeu         a2, a2, 1211f
                  ori          s0, s0, -1742
                  add          t0, s9, sp
                  addi         a1, a6, -492
                  xor          s10, t5, s4
                  andi         s11, t6, 1201
                  xori         t0, s6, -1535
                  lui          t0, 46202
                  srai         s11, s9, 17
1211:             bne          s2, a6, 1226f
                  slt          s2, t4, s2
                  slt          s2, a2, s10
                  xori         t0, t5, -1214
                  nop
                  lui          gp, 968417
                  or           ra, a4, a3
                  blt          s3, s7, 1225f
                  addi         s5, s4, -1977
                  srl          a7, t5, sp
                  sub          s1, s1, s10
                  ori          s8, t2, 1600
                  srai         s10, t2, 29
                  sub          a3, t4, a4
1225:             or           t3, s9, s6
1226:             blt          s5, t0, 1237f
                  bltu         a2, t2, 1229f
                  bne          tp, s6, 1240f
1229:             sub          a4, a2, t5
                  xori         t0, s0, -1417
                  bltu         t0, t5, 1251f
                  sub          gp, t6, a0
                  srli         a4, t5, 30
                  auipc        t6, 452856
                  bgeu         tp, s10, 1241f
                  andi         t4, gp, -533
1237:             ori          t0, a5, -1149
                  sltu         t6, a0, s5
                  ori          t2, a0, 152
1240:             andi         s5, s4, 2030
1241:             nop
                  sra          a0, tp, s1
                  slli         a4, a0, 16
                  and          s0, s0, s4
                  andi         t1, tp, -1686
                  nop
                  sra          s6, t3, s7
                  blt          s9, t1, 1249f
1249:             and          ra, a6, a7
                  slt          a2, a6, t0
1251:             ori          a4, a3, 33
                  beq          t3, a1, 1269f
                  beq          s10, a3, 1262f
                  bge          a4, a0, 1258f
                  bne          gp, t1, 1265f
                  nop
                  ori          s1, tp, -50
1258:             auipc        t2, 185469
                  auipc        sp, 440937
                  srai         s8, s8, 29
                  auipc        gp, 927872
1262:             sra          s11, t4, a2
                  beq          s9, a0, 1271f
                  ori          t0, tp, -1112
1265:             bge          a7, a0, 1270f
                  sub          s7, gp, t6
                  andi         t2, a1, 1182
                  srl          a0, a1, s1
1269:             slt          zero, s6, s6
1270:             sll          s0, t6, s11
1271:             bgeu         t2, s2, 1275f
                  auipc        s6, 376750
                  slli         t3, a4, 19
                  slt          s2, t5, t2
1275:             slti         a0, ra, 1138
                  auipc        sp, 905687
                  xor          a0, a4, t3
                  bne          t5, s11, 1292f
                  sltu         s4, s5, s7
                  ori          s1, a4, 960
                  blt          s1, a1, 1297f
                  slti         a0, tp, -998
                  bne          s1, s2, 1300f
                  bltu         t5, s10, 1290f
                  nop
                  sltiu        sp, s1, -767
                  or           s2, s8, s7
                  addi         a7, s9, 288
                  nop
1290:             sub          t6, s0, s7
                  blt          t0, s8, 1304f
1292:             sltiu        a3, s6, 387
                  bge          t4, s8, 1309f
                  bgeu         ra, s8, 1313f
                  sltu         t1, a2, s11
                  srl          t2, s2, t1
1297:             bne          a1, a7, 1303f
                  sltu         s10, s3, a1
                  ori          a6, ra, 1896
1300:             slli         a0, t0, 13
                  sll          t1, t6, tp
                  bgeu         t1, s8, 1315f
1303:             sltiu        a0, s11, -845
1304:             bgeu         s1, s10, 1318f
                  blt          s2, s8, 1316f
                  andi         a1, sp, 1465
                  slt          s8, a4, t2
                  add          s1, s2, s11
1309:             sub          a7, a7, a5
                  srai         a0, t0, 21
                  slli         s11, s3, 9
                  and          tp, s5, tp
1313:             slli         t6, a7, 18
                  addi         tp, t1, -991
1315:             ori          a0, a1, 1479
1316:             srai         s0, zero, 27
                  slti         a7, ra, 239
1318:             srai         zero, t2, 5
                  sltiu        s5, a2, -844
                  andi         s10, a6, 2012
                  add          a1, a7, t2
                  bgeu         s3, t6, 1337f
                  sub          a1, s11, s10
                  bgeu         a1, t1, 1341f
                  sra          s1, sp, t1
                  addi         a3, a6, 313
                  addi         t5, tp, 225
                  bge          a4, s11, 1338f
                  xori         t4, t2, 894
                  bgeu         t0, t5, 1339f
                  bltu         ra, a2, 1348f
                  xori         s5, s10, 681
                  bgeu         s2, a4, 1342f
                  srli         gp, t2, 27
                  add          a1, t6, t3
                  xor          sp, a0, a5
1337:             ori          t6, t5, -377
1338:             slt          t6, gp, tp
1339:             bge          a7, s10, 1352f
                  sll          tp, s1, s5
1341:             srli         t1, a5, 20
1342:             srli         t2, tp, 15
                  addi         s1, a1, 2023
                  srl          s1, t1, s5
                  srli         a6, s3, 0
                  slti         a3, t4, 1794
                  slli         s4, t0, 7
1348:             sll          s11, a4, a6
                  sra          a6, t4, a5
                  lui          t5, 60483
                  or           a6, a7, gp
1352:             sltu         a4, a5, ra
                  sltiu        s7, s4, 1238
                  bgeu         a1, s3, 1365f
                  sll          a3, s5, tp
                  nop
                  slli         s11, s6, 10
                  sltiu        a4, s8, -1362
                  bltu         s3, t4, 1372f
                  beq          s6, s9, 1380f
                  srl          t0, s3, s4
                  sll          gp, a2, s3
                  bltu         s5, t6, 1367f
                  add          t6, s7, tp
1365:             nop
                  srli         s1, a4, 12
1367:             bge          a6, zero, 1375f
                  sltu         ra, s9, a7
                  bge          s8, a7, 1372f
                  srai         a0, t6, 26
                  beq          s3, s8, 1377f
1372:             bltu         zero, a1, 1388f
                  addi         t1, a7, 1183
                  sll          a4, t0, s4
1375:             sltu         a4, t6, t1
                  beq          s8, s7, 1396f
1377:             beq          s0, a2, 1383f
                  add          s8, a5, s11
                  andi         s4, s1, 1634
1380:             ori          a1, a5, 1515
                  sltiu        t5, s1, 698
                  sll          a7, s6, s4
1383:             sltu         a1, s8, s11
                  sll          s4, s6, t6
                  srl          a4, t0, a6
                  lui          tp, 350683
                  andi         a7, s10, -83
1388:             bgeu         tp, s2, 1407f
                  sra          a3, s5, t1
                  lui          s4, 63816
                  slti         s5, s2, 1334
                  sra          s1, t6, s11
                  slli         s11, s7, 24
                  slti         s1, a4, -1610
                  ori          gp, a7, -609
1396:             bltu         zero, s8, 1407f
                  addi         a1, tp, -683
                  xori         t0, t6, 1246
                  bltu         s6, a0, 1406f
                  srl          a7, a0, s5
                  nop
                  sra          s4, t6, a2
                  lui          sp, 985723
                  nop
                  or           t3, a5, t3
1406:             and          a0, s9, a5
1407:             nop
                  slli         a4, s10, 14
                  slt          s2, a2, s4
                  ori          a6, s9, -1389
                  sub          tp, s2, a7
                  srl          gp, sp, a2
                  lui          a1, 859895
                  slti         sp, s9, 1246
                  bge          a1, s6, 1421f
                  auipc        a4, 623061
                  bgeu         s2, a2, 1431f
                  andi         s6, t4, -1676
                  bne          a2, s5, 1433f
                  nop
1421:             add          s5, a7, s10
                  bne          t2, t3, 1424f
                  xori         a2, tp, 1808
1424:             xori         tp, a6, 1083
                  slti         t5, t3, 36
                  slt          s5, s11, a7
                  nop
                  bge          t3, a0, 1429f
1429:             xor          ra, s2, s2
                  slli         s4, tp, 15
1431:             sra          s10, t0, s9
                  auipc        a3, 554327
1433:             slti         t6, s3, 1471
                  and          t6, t3, ra
                  bltu         sp, a6, 1440f
                  ori          a4, s11, 968
                  sltiu        s4, tp, -893
                  ori          a0, s6, 528
                  bne          s10, s1, 1452f
1440:             beq          sp, t1, 1456f
                  srai         s4, t3, 7
                  slti         gp, a6, -1555
                  or           sp, s7, a5
                  slt          s10, a4, sp
                  nop
                  sll          sp, s3, s10
                  srli         s7, a2, 20
                  or           s6, a0, s6
                  blt          s6, s8, 1453f
                  bltu         a1, a7, 1462f
                  bge          s4, s7, 1457f
1452:             srli         s5, s3, 24
1453:             xor          s2, s1, zero
                  slli         s6, s4, 26
                  auipc        sp, 52612
1456:             andi         t6, s3, -373
1457:             bgeu         t2, s2, 1474f
                  bgeu         t4, gp, 1467f
                  slt          t2, a2, s8
                  sll          a7, t3, s8
                  slti         s5, s1, 915
1462:             andi         sp, zero, 806
                  beq          a3, sp, 1467f
                  sltiu        a1, a2, -133
                  slti         a2, s6, 800
                  sll          s0, t4, a5
1467:             xori         s7, t3, 80
                  andi         sp, a5, 185
                  add          s2, s2, s4
                  xor          a6, s8, zero
                  bltu         a1, a7, 1484f
                  srai         s0, t5, 17
                  sra          s11, s5, s9
1474:             ori          s10, a5, 170
                  srli         a3, a3, 9
                  and          gp, s0, ra
                  sub          a0, a7, tp
                  xor          zero, gp, s2
                  bne          s1, t6, 1498f
                  auipc        t0, 1018597
                  srai         s5, a7, 27
                  bltu         gp, s8, 1492f
                  bltu         s7, a5, 1496f
1484:             bge          t0, s5, 1487f
                  sltiu        s8, a2, -1315
                  srai         a4, a0, 15
1487:             nop
                  slli         s7, s6, 29
                  or           t4, s10, a7
                  bge          s10, a0, 1505f
                  ori          t2, tp, -276
1492:             bge          t6, t6, 1512f
                  andi         a7, s1, -1996
                  xori         s11, s0, -2022
                  srli         t3, tp, 9
1496:             sll          s2, s2, s8
                  srai         s7, ra, 13
1498:             nop
                  sltu         t1, a1, a6
                  bge          t0, s3, 1517f
                  bgeu         a3, s1, 1515f
                  lui          s1, 302318
                  lui          s7, 734676
                  slti         a6, t6, 1526
1505:             slti         t2, a1, 1969
                  add          a7, a7, s10
                  lui          s6, 16567
                  nop
                  xori         s1, sp, -2045
                  sra          s0, s11, s2
                  srl          s5, tp, a4
1512:             slli         a7, tp, 15
                  srai         t6, a5, 15
                  sll          tp, s11, ra
1515:             sra          a0, s10, a2
                  xor          s11, sp, a6
1517:             sltiu        s11, t0, -1126
                  sltu         s4, sp, s6
                  sll          sp, t6, s4
                  bne          s8, s8, 1526f
                  slli         gp, tp, 27
                  lui          s6, 904377
                  xori         t1, s2, -2043
                  beq          t2, a0, 1531f
                  slt          a4, t0, s5
1526:             srai         tp, s10, 8
                  add          gp, s2, t5
                  bne          t4, s9, 1548f
                  auipc        gp, 959770
                  xor          gp, s6, t4
1531:             addi         a0, s7, 1176
                  nop
                  sra          t5, s4, s2
                  andi         a0, a3, 956
                  addi         a1, gp, -1285
                  srli         s11, zero, 24
                  bge          sp, a3, 1546f
                  blt          gp, a3, 1549f
                  nop
                  sra          s10, s11, t4
                  slti         a1, s11, -15
                  or           s2, a5, t4
                  sra          a7, s8, t1
                  sll          t2, gp, s0
                  slti         t4, gp, -336
1546:             srai         s7, s3, 27
                  beq          gp, a3, 1560f
1548:             xor          t6, zero, s3
1549:             slt          t3, s3, t3
                  slti         t3, t3, 1243
                  srai         t6, t3, 2
                  beq          t1, t1, 1553f
1553:             blt          a2, t5, 1565f
                  sra          a2, t0, s5
                  bgeu         ra, t1, 1561f
                  bge          s10, s0, 1558f
                  sltiu        a3, a0, 1755
1558:             ori          s7, s2, -1243
                  lui          s5, 780812
1560:             bne          t0, sp, 1565f
1561:             andi         ra, a5, -838
                  slt          zero, s5, t0
                  srai         a7, ra, 18
                  slli         s8, s11, 14
1565:             slti         s11, s0, -522
                  ori          s2, a7, -2018
                  bge          tp, a2, 1578f
                  nop
                  bgeu         t4, t0, 1583f
                  add          s2, s11, t0
                  slt          sp, a5, a1
                  ori          a4, t4, 1805
                  sll          s10, t3, a4
                  slt          a7, s10, s9
                  or           tp, tp, s5
                  slli         a0, s2, 4
                  sra          a3, a0, a1
1578:             nop
                  srl          t4, s3, s4
                  addi         s0, tp, 593
                  srai         a7, t6, 24
                  andi         gp, a0, -120
1583:             slli         a4, s7, 1
                  sll          tp, sp, t4
                  xor          t2, s2, s1
                  bne          s4, a6, 1602f
                  sub          t5, s10, a6
                  slti         a6, t3, -561
                  or           a3, t6, a1
                  sub          t6, t2, zero
                  andi         t4, zero, 541
                  slt          s7, s6, a0
                  bge          gp, a3, 1597f
                  blt          t2, s6, 1602f
                  ori          s6, s1, 663
                  and          s2, ra, t4
1597:             xor          a1, a6, t1
                  ori          tp, t2, -204
                  bltu         ra, t5, 1615f
                  slt          s0, s4, a4
                  blt          a1, s6, 1607f
1602:             ori          tp, t0, 317
                  srl          s2, t4, s6
                  slli         t2, tp, 2
                  xor          a3, s5, ra
                  add          tp, a0, a5
1607:             xori         ra, t5, -1547
                  lui          t3, 154720
                  xor          tp, t0, zero
                  xor          a4, a4, s4
                  sltu         t3, s4, s8
                  auipc        s8, 786186
                  add          a3, t5, ra
                  andi         t1, s0, 1449
1615:             xori         t4, s6, 1726
                  xor          s6, s3, a0
                  nop
                  bgeu         s10, a3, 1635f
                  sub          a6, t1, a7
                  beq          t5, a6, 1621f
1621:             sra          t4, a2, s2
                  xor          t4, sp, t0
                  lui          a4, 913673
                  bgeu         s9, t4, 1634f
                  bne          a5, ra, 1639f
                  xori         t4, s11, -85
                  nop
                  bge          s9, s4, 1645f
                  srl          a1, a5, s5
                  xor          a0, s5, s3
                  slli         tp, t2, 25
                  nop
                  sra          a0, t0, s5
1634:             ori          s8, s11, 338
1635:             slt          s2, ra, a3
                  nop
                  bgeu         a3, s4, 1645f
                  sltu         s6, ra, t2
1639:             addi         gp, s1, 1567
                  bgeu         sp, s5, 1645f
                  sra          s4, a5, s1
                  lui          gp, 507824
                  xor          t2, ra, s10
                  blt          a6, s0, 1656f
1645:             bltu         s5, s10, 1654f
                  sub          s11, t2, s1
                  ori          s6, s4, 1330
                  slti         s2, a5, -61
                  sltu         a7, s6, t0
                  sra          t2, t6, tp
                  bgeu         t3, t6, 1653f
                  sra          a2, s4, s2
1653:             beq          gp, sp, 1666f
1654:             sltiu        s11, zero, 707
                  sltiu        a7, gp, 1321
1656:             sll          t5, s6, t0
                  sra          a4, s5, t2
                  sub          a2, s6, s0
                  bge          a3, s7, 1666f
                  and          s1, s6, t2
                  auipc        s1, 507583
                  addi         a2, zero, 1273
                  sll          t0, s3, a7
                  srli         s6, tp, 8
                  slti         s2, ra, 1172
1666:             sra          a3, a2, s0
                  sltiu        s8, s1, 1357
                  sub          a4, tp, s10
                  auipc        a1, 440158
                  sll          s11, a5, t3
                  slli         t0, a7, 2
                  sra          s4, a2, a4
                  addi         sp, t1, 372
                  slli         a1, s2, 15
                  bge          a2, s0, 1686f
                  beq          s6, s9, 1696f
                  andi         t2, sp, -757
                  sra          a2, a6, t6
                  sltu         t0, s1, gp
                  addi         gp, s2, 1761
                  bne          tp, a4, 1684f
                  bltu         zero, s8, 1688f
                  addi         t6, a1, 40
1684:             srai         t3, s0, 23
                  slti         a6, s10, 603
1686:             xori         s1, a2, 38
                  xori         t2, t5, -1553
1688:             or           a0, a4, s7
                  sltu         s1, a4, t0
                  bne          t4, t4, 1701f
                  blt          s3, s11, 1704f
                  bltu         a5, s7, 1712f
                  beq          a6, sp, 1706f
                  slti         s6, tp, 777
                  auipc        a1, 42732
1696:             slli         t2, t5, 8
                  andi         zero, t3, -1185
                  xori         sp, s3, 180
                  sltiu        s0, t1, -2010
                  ori          zero, s2, -2048
1701:             ori          a6, t1, 1973
                  auipc        t5, 1038761
                  srai         t5, s11, 1
1704:             xor          s2, a3, s1
                  addi         a2, t6, 1305
1706:             andi         a7, t2, -1150
                  auipc        a3, 886769
                  add          tp, a3, s10
                  slt          a0, zero, a2
                  and          s2, s4, sp
                  addi         tp, a5, -618
1712:             blt          t5, s9, 1721f
                  bne          a4, s8, 1727f
                  blt          a3, t1, 1730f
                  bgeu         ra, s8, 1730f
                  bltu         a4, a6, 1722f
                  add          s11, s5, s10
                  bgeu         a7, a2, 1737f
                  bne          a1, s4, 1723f
                  lui          t0, 97394
1721:             andi         s8, gp, 1412
1722:             sltiu        gp, t0, -1000
1723:             srl          s11, s3, s8
                  slli         s8, gp, 16
                  addi         a1, s4, -853
                  bne          a7, s1, 1742f
1727:             srl          t2, a7, s7
                  xor          t4, gp, t5
                  bne          tp, s4, 1733f
1730:             slti         a6, sp, -1262
                  beq          s6, t2, 1737f
                  bne          t3, a2, 1749f
1733:             blt          sp, a1, 1750f
                  or           s1, t2, t0
                  ori          sp, s8, -1873
                  auipc        s2, 832263
1737:             andi         tp, a4, 823
                  lui          a7, 287712
                  ori          ra, t3, 958
                  sltu         t1, t1, s0
                  srai         s1, s7, 11
1742:             beq          s0, a4, 1758f
                  or           t5, t2, a5
                  sub          s10, s9, s3
                  lui          s1, 773336
                  srli         t0, t6, 24
                  xor          a1, s1, t4
                  sub          a4, s8, s8
1749:             sltiu        t5, t5, 1684
1750:             srai         s11, sp, 27
                  slli         s7, s0, 8
                  srli         a3, s2, 30
                  bne          s2, a0, 1759f
                  bne          zero, s3, 1774f
                  addi         s5, s7, 750
                  addi         a7, s5, -1506
                  slt          a2, s6, a6
1758:             bge          s10, s2, 1760f
1759:             sra          s11, ra, a4
1760:             lui          a6, 450833
                  xori         s4, s8, -653
                  lui          sp, 863127
                  srl          s7, a3, ra
                  sll          t3, t4, a7
                  bltu         zero, a6, 1776f
                  and          a2, s4, s1
                  sll          t5, s10, s2
                  nop
                  bne          s10, a3, 1788f
                  sll          s2, s10, s8
                  sub          s5, zero, a3
                  slt          t2, gp, s6
                  sra          zero, t4, a4
1774:             slli         gp, s6, 26
                  or           s5, a0, sp
1776:             add          gp, s8, a2
                  auipc        a0, 644695
                  sltiu        t0, t5, 486
                  sltiu        s11, s6, -817
                  auipc        s1, 653835
                  add          sp, a4, t2
                  sra          tp, s8, s2
                  nop
                  lui          t4, 203506
                  andi         t6, t4, -1237
                  srai         t0, s5, 18
                  bltu         t1, a0, 1801f
1788:             srai         a4, s0, 23
                  xori         a6, s5, 1117
                  slt          tp, s3, s5
                  sub          a4, s1, t6
                  or           a0, a1, s5
                  or           t0, s10, s10
                  sll          t3, s1, t4
                  slli         a3, s3, 3
                  bltu         t1, s11, 1800f
                  addi         a6, a2, 1094
                  slt          s10, a6, sp
                  slli         s5, a1, 24
1800:             sra          t0, zero, s0
1801:             blt          a7, s10, 1810f
                  auipc        a1, 467817
                  sub          a7, s5, a5
                  lui          t0, 538478
                  srl          s5, a6, a3
                  slli         a4, s3, 17
                  bltu         s4, a0, 1813f
                  sltu         s8, a2, s9
                  slti         tp, a6, 1939
1810:             blt          ra, t6, 1818f
                  nop
                  srl          t4, t5, s2
1813:             sll          zero, a5, a6
                  srli         t0, s8, 22
                  nop
                  bgeu         t1, s4, 1832f
                  srli         s4, a6, 2
1818:             xor          gp, s5, a0
                  xori         s6, a2, -1706
                  bne          a1, a2, 1830f
                  bge          t1, t5, 1824f
                  srli         s0, a1, 28
                  srli         t0, s8, 13
1824:             beq          s4, s6, 1833f
                  ori          t1, s10, 1749
                  beq          tp, s10, 1827f
1827:             blt          zero, t2, 1847f
                  auipc        t0, 1028397
                  add          s10, a0, s10
1830:             blt          s5, s8, 1843f
                  srai         a3, ra, 18
1832:             xor          s7, a5, gp
1833:             sub          s1, a6, s0
                  ori          ra, a4, -579
                  andi         t5, a3, -535
                  blt          t5, t1, 1851f
                  beq          a4, gp, 1850f
                  or           t2, t2, tp
                  srai         sp, t2, 12
                  bltu         t1, a2, 1852f
                  xori         a6, gp, -1808
                  srl          tp, s4, a6
1843:             sra          a6, a5, a2
                  srl          a6, t3, s7
                  srai         a4, s5, 24
                  sub          t2, t6, sp
1847:             addi         s7, s0, 1108
                  and          a1, a0, gp
                  nop
1850:             andi         zero, t0, -1899
1851:             sll          t1, t4, s9
1852:             sra          a1, a3, tp
                  bne          s9, a4, 1864f
                  or           t0, a7, a3
                  lui          s7, 153088
                  sll          ra, a5, t5
                  andi         a6, s8, 268
                  xor          t1, s2, s10
                  add          gp, s4, a2
                  xor          t3, sp, a7
                  and          s5, s5, s10
                  xori         t6, t2, 1088
                  srl          s1, zero, t0
1864:             srli         t2, ra, 8
                  and          t2, s5, a1
                  and          s2, a4, s6
                  srli         ra, a7, 14
                  srli         t4, a2, 31
                  sll          gp, s8, s5
                  srl          s1, t0, s3
                  xor          a1, s2, s9
                  sltu         t2, a6, s2
                  andi         s0, s8, 1166
                  ori          t5, t0, 670
                  bltu         t0, s11, 1880f
                  nop
                  bgeu         s5, zero, 1881f
                  ori          s8, t0, 886
                  bne          a7, s0, 1886f
1880:             slti         s1, t0, 1053
1881:             and          s8, s9, a4
                  sltiu        s5, t0, 930
                  nop
                  beq          a4, a5, 1898f
                  bge          sp, s9, 1898f
1886:             sll          s4, s1, t4
                  sltu         a2, t5, a5
                  xor          a7, sp, s11
                  sll          s6, s2, t0
                  sltiu        a0, s7, 7
                  srl          t4, t4, a1
                  addi         gp, t4, -1569
                  or           s5, a3, s7
                  add          s7, t5, s3
                  or           s11, t5, t4
                  sltiu        t6, s6, 1940
                  slli         t3, tp, 25
1898:             bltu         s2, t3, 1911f
                  sltu         ra, zero, a3
                  sltiu        s11, a3, -1440
                  slti         t0, a7, 1124
                  lui          s7, 460546
                  slti         t5, s3, 1155
                  slli         t6, a1, 1
                  xor          a6, s8, ra
                  nop
                  srai         t4, t0, 28
                  bltu         gp, s5, 1911f
                  bne          s4, s1, 1929f
                  sra          s5, s8, s0
1911:             bge          a2, s9, 1913f
                  srli         a4, s1, 28
1913:             beq          s9, t0, 1929f
                  bge          s3, s0, 1931f
                  slli         a1, s3, 7
                  slt          t5, s11, ra
                  xori         t1, t4, 251
                  sll          t5, t1, t4
                  nop
                  bge          sp, a4, 1933f
                  auipc        a2, 617560
                  slti         t2, a2, -929
                  srli         t6, s2, 19
                  bgeu         s11, t0, 1930f
                  srli         s5, a0, 11
                  srai         t5, tp, 27
                  nop
                  ori          a0, a6, 109
1929:             or           t4, a1, gp
1930:             nop
1931:             bltu         a3, s11, 1943f
                  andi         s2, tp, -590
1933:             xori         a7, s9, 1447
                  add          t6, a1, zero
                  sll          t4, gp, a3
                  and          a4, zero, a6
                  la           a6, sub_9
                  sra          t4, a4, t1
                  srai         a4, gp, 18
                  addi         a6, a6, 485
                  srl          ra, a2, a3
                  slt          a4, s3, s7
                  ori          a0, s1, -1179
sub_7_j11:        jalr         t1, a6, -484 #jump sub_7 -> sub_9
                  add          s8, t6, a6
                  xor          zero, t1, s7
                  bne          s2, a2, 1943f
                  bgeu         t1, t1, 1959f
                  srai         s1, a4, 18
                  sll          a6, s10, t2
1943:             ori          a6, gp, -1982
                  addi         tp, zero, -1771
                  sltu         s8, a5, t2
                  la           a7, region_0+1659 #start riscv_load_store_rand_instr_stream_7
                  sll          s0, tp, t6
                  lhu          t3, 27(a7)
                  sltiu        sp, s5, 59
                  add          s0, gp, a7
                  sb           s0, -102(a7)
                  srli         a3, s1, 11
                  ori          s1, s1, -1049
                  sb           zero, -64(a7)
                  sw           a0, 89(a7)
                  auipc        s8, 301755
                  sltu         a0, t1, zero
                  xor          a4, t1, a5
                  nop
                  sll          a0, ra, s3
                  srli         s5, a5, 2
                  lbu          a4, -29(a7)
                  sub          ra, zero, t0
                  lbu          a6, -117(a7)
                  addi         s1, s3, 948
                  sb           s1, 62(a7)
                  nop
                  srai         s5, s2, 0
                  slt          zero, s8, a0
                  lui          s6, 456550
                  lhu          sp, -233(a7)
                  or           t2, s2, s6
                  sb           s8, 111(a7)
                  ori          a2, t1, -414
                  sb           a3, 51(a7)
                  sltu         ra, t4, s3
                  sh           s10, -161(a7)
                  sb           s6, -69(a7)
                  lhu          ra, 121(a7)
                  lh           t3, -49(a7)
                  andi         a6, a2, -966
                  auipc        s5, 529831
                  slli         s1, s1, 19
                  srai         s0, t3, 16
                  sb           s9, 229(a7)
                  lw           a4, 61(a7)
                  lui          s4, 758853
                  xori         s11, zero, 644
                  lb           s2, 74(a7)
                  lbu          s10, 159(a7)
                  sra          gp, a2, tp
                  slli         t1, a5, 1
                  addi         t1, gp, 883
                  slli         s6, a2, 22
                  sb           t4, -140(a7) #end riscv_load_store_rand_instr_stream_7
                  addi         s6, a5, 1307
                  srai         s2, a2, 13
                  or           s8, s7, t1
                  auipc        t3, 166818
                  and          a4, s5, s10
                  srai         a3, tp, 28
                  xor          a0, a4, t0
                  beq          t4, s6, 1954f
1954:             bge          a2, s1, 1970f
                  slt          a4, a3, s1
                  sll          s1, s1, a3
                  srl          a3, tp, sp
                  bne          t6, t0, 1969f
1959:             beq          s3, a0, 1964f
                  sra          a0, t5, t4
                  srai         t6, s11, 5
                  srli         s2, t6, 5
                  sll          a0, s3, s3
1964:             xor          s2, a3, s4
                  slti         s2, s7, -262
                  lui          gp, 656196
                  srli         a6, t3, 0
                  srli         a2, s3, 5
1969:             auipc        a1, 71572
1970:             bne          zero, s3, 1984f
                  bne          s5, a2, 1979f
                  slli         s11, s8, 20
                  srai         a6, s1, 2
                  slti         ra, t4, -854
                  slt          sp, s8, s7
                  bltu         ra, t2, 1983f
                  sra          s11, s2, t2
                  add          ra, s11, a1
1979:             sltiu        a3, t5, 618
                  sltiu        a7, s8, -1703
                  beq          t6, s10, 1992f
                  or           a6, t5, s6
1983:             nop
1984:             bgeu         a0, t0, 2004f
                  lui          zero, 28431
                  sll          s8, s6, sp
                  slli         t1, t2, 4
                  lui          s5, 252265
                  slt          a6, t2, s2
                  sub          t2, s3, sp
                  add          s5, t1, s6
1992:             srl          t5, s3, a6
                  srl          s5, ra, a7
                  auipc        s10, 826840
                  xor          s0, sp, a3
                  sltu         s4, t6, a1
                  blt          s8, a5, 2007f
                  auipc        a0, 522644
                  beq          a3, s10, 2008f
                  srli         s8, s1, 13
                  or           s0, s10, a3
                  sltiu        t1, s7, -207
                  beq          s1, s2, 2018f
2004:             bltu         a1, t6, 2010f
                  slli         t1, s5, 23
                  sub          s1, s4, s1
2007:             srli         s0, s2, 9
2008:             slti         t2, s8, 534
                  blt          s5, s11, 2018f
2010:             slt          s8, s8, s3
                  xor          a3, a5, gp
                  sltiu        s4, a1, -222
                  sub          t3, zero, s11
                  add          t2, a2, s8
                  bltu         s7, t1, 2019f
                  srai         a4, s9, 6
                  sra          a3, t6, t6
2018:             srai         s2, s1, 9
2019:             nop
                  bltu         a2, t1, 2037f
                  bltu         zero, ra, 2034f
                  add          s6, s0, s5
                  srli         t5, sp, 16
                  and          a0, a5, a0
                  sub          sp, a2, tp
                  slt          t3, s6, s0
                  bltu         a0, a7, 2033f
                  sltiu        a7, a7, -1942
                  sltu         s6, t2, t1
                  slti         s4, t4, -94
                  slt          s4, s11, sp
                  beq          a2, a3, 2046f
2033:             add          a2, a4, s5
2034:             add          t1, s0, a2
                  slt          s2, s5, a6
                  slti         a0, s8, -507
2037:             andi         t4, ra, -1923
                  blt          t4, s10, 2054f
                  srli         gp, t1, 9
                  xor          tp, t0, t2
                  addi         sp, a5, -458
                  auipc        a7, 655894
                  xor          s1, a5, a6
                  srl          s7, s7, s7
                  srl          s11, tp, a5
2046:             bgeu         a7, ra, 2066f
                  bgeu         t2, s0, 2066f
                  bgeu         a2, t1, 2057f
                  sra          t6, tp, a1
                  srli         a2, s6, 11
                  slt          ra, s0, zero
                  blt          s8, s1, 2061f
                  sub          t6, sp, a5
2054:             sltu         s10, t2, a7
                  slt          s11, t2, t0
                  andi         t5, s1, 913
2057:             addi         a6, a3, -137
                  bltu         s8, t4, 2072f
                  andi         t4, s2, 1544
                  blt          a1, s10, 2071f
2061:             srl          s1, a4, a3
                  or           s4, a4, t4
                  or           a4, t6, s1
                  sll          t0, s6, a0
                  bltu         a5, s4, 2071f
2066:             slli         t6, t0, 26
                  slti         s8, t4, 1175
                  ori          a7, s3, 1572
                  nop
                  bltu         s4, sp, 2090f
2071:             bgeu         t4, s5, 2084f
2072:             ori          t2, gp, 1885
                  lui          t4, 291792
                  sltu         sp, t6, s2
                  srl          a7, s1, gp
                  andi         s0, t5, -415
                  or           s7, s7, zero
                  sltu         s7, s10, s8
                  srai         s2, a5, 17
                  sll          s2, s7, t5
                  sltiu        zero, tp, 138
                  sltu         a7, t6, s4
                  srl          s2, a3, s5
2084:             addi         tp, s7, 1241
                  slt          ra, s3, ra
                  sub          t5, t6, s9
                  sll          t0, a0, a7
                  auipc        gp, 340311
                  srl          s0, s0, a4
2090:             ori          a2, s2, -1727
                  srl          t6, zero, s7
                  lui          s0, 743529
                  srli         tp, s4, 21
                  slt          t3, s2, a6
                  sub          gp, a4, s4
                  xor          s11, a7, a6
                  sub          sp, t1, a5
                  slt          a3, a7, s9
                  andi         a4, a4, -1956
                  or           a7, s11, a6
                  slli         t1, a6, 28
                  ori          t6, a4, 455
                  and          s10, s4, a5
                  bne          t6, gp, 2120f
                  sra          tp, gp, a6
                  addi         a1, s11, -322
                  bltu         a1, t4, 2112f
                  beq          t6, zero, 2110f
                  slt          s1, a6, s4
2110:             and          ra, s8, t6
                  bgeu         s7, a5, 2115f
2112:             ori          t0, t1, -1865
                  sub          t6, a6, s11
                  srl          s11, t0, gp
2115:             or           t5, ra, zero
                  nop
                  nop
                  bltu         s2, s7, 2135f
                  add          sp, t6, ra
2120:             nop
                  sltiu        s10, sp, 953
                  nop
                  or           t2, s7, s2
                  srl          t3, a3, a7
                  sra          t3, t4, t3
                  nop
                  xor          t0, a6, t0
                  or           s8, s8, t4
                  slli         a6, ra, 8
                  xori         t5, a3, 1970
                  ori          s10, gp, 1672
                  bge          a3, ra, 2144f
                  srli         t3, s8, 4
                  xori         s4, t2, 1877
2135:             sub          s7, s5, a1
                  blt          s1, a5, 2143f
                  sra          s2, t3, tp
                  sll          s1, a5, s8
                  sub          sp, ra, t6
                  auipc        t0, 489719
                  slt          s0, s5, t2
                  sll          a7, s2, s5
2143:             andi         sp, gp, 37
2144:             lui          s6, 1017284
                  sltu         tp, s3, a0
                  sub          s6, ra, s10
                  slt          tp, s6, t2
                  bne          s5, a3, 2154f
                  sltu         zero, s5, a3
                  add          s0, t6, t6
                  nop
                  addi         t4, t3, 655
                  and          sp, s7, t2
2154:             auipc        t6, 693478
                  addi         s6, sp, 890
                  bgeu         t2, gp, 2160f
                  sltiu        a3, t5, -970
                  bgeu         t1, s11, 2169f
                  blt          s5, a1, 2172f
2160:             xori         s4, s11, -1208
                  sltiu        s1, sp, -1720
                  add          s0, s9, t0
                  ori          s5, t1, 162
                  xor          a1, s8, a3
                  sltiu        s10, a1, 1329
                  nop
                  bltu         t1, s10, 2182f
                  lui          s0, 320148
2169:             bne          a7, s0, 2183f
                  blt          s2, s10, 2173f
                  slt          s1, a0, ra
2172:             srli         sp, gp, 19
2173:             and          s2, t4, s3
                  auipc        s1, 350892
                  srl          s8, a0, s4
                  sltu         s11, t2, s0
                  sra          sp, ra, s4
                  bne          t6, zero, 2184f
                  bltu         s1, s0, 2192f
                  slti         a6, s6, 539
                  add          a6, t1, t6
2182:             nop
2183:             nop
2184:             srl          s2, t4, a6
                  andi         s7, a7, 988
                  srai         s10, a0, 15
                  nop
                  sltiu        sp, s5, -244
                  bgeu         a1, s11, 2206f
                  andi         s6, t1, 585
                  ori          s0, s11, 1467
2192:             xori         t4, sp, -1226
                  srl          s6, t1, s10
                  nop
                  auipc        s7, 260906
                  bltu         s4, s7, 2204f
                  or           t4, s2, a4
                  sltiu        ra, s7, -1577
                  sltiu        a1, a0, 23
                  addi         a2, t3, 1467
                  nop
                  sub          a1, a3, s0
                  or           a6, s4, s10
2204:             slli         t4, s5, 30
                  or           t4, a1, t6
2206:             add          t5, s11, a5
                  nop
                  xori         s5, t4, -1961
                  sltiu        gp, tp, -427
                  bgeu         s3, s11, 2220f
                  bge          t4, tp, 2212f
2212:             nop
                  ori          a7, s4, 816
                  xori         t5, s0, -1617
                  srl          t1, a0, s4
                  bge          a7, s2, 2230f
                  xori         s4, s9, -1716
                  lui          s11, 804258
                  slli         t5, s3, 30
2220:             slti         s5, a3, -1779
                  sltu         t1, t2, ra
                  srai         s0, t5, 29
                  srl          s8, t2, s4
                  nop
                  bge          t2, s5, 2242f
                  bltu         t1, t2, 2235f
                  bltu         t1, a6, 2240f
                  ori          gp, tp, -1450
                  sll          tp, sp, s0
2230:             andi         a7, a6, -892
                  sra          a3, gp, s8
                  add          a3, a6, s4
                  la           s2, sub_10
                  xor          s4, zero, s0
                  srl          t3, zero, a4
                  srai         a1, zero, 28
                  addi         s2, s2, 594
                  add          zero, sp, a2
                  and          s6, a4, s9
sub_7_j10:        jalr         t1, s2, -594 #jump sub_7 -> sub_10
                  or           a0, a0, a1
                  bltu         s8, zero, 2235f
2235:             slli         t0, ra, 23
                  blt          zero, s5, 2244f
                  sltu         gp, tp, a2
                  srli         a2, sp, 21
                  beq          s9, t2, 2250f
2240:             andi         t1, a3, -984
                  slli         s11, a1, 17
2242:             sub          gp, tp, s10
                  bne          t6, s10, 2258f
2244:             bgeu         tp, a5, 2248f
                  bgeu         s10, gp, 2252f
                  xor          s10, t5, t5
                  and          t0, t5, a6
2248:             sltiu        s11, t0, 647
                  slti         zero, s2, 1533
2250:             blt          sp, tp, 2256f
                  addi         s11, s5, -384
2252:             xori         a7, s11, -1678
                  sltiu        tp, s11, -1748
                  add          t3, a7, sp
                  lui          s1, 531397
2256:             srli         zero, a3, 6
                  slti         s0, s5, 1738
2258:             bltu         a1, t5, 2262f
                  slti         s0, a2, 786
                  lui          s6, 726012
                  bgeu         t5, s7, 2274f
2262:             bne          t3, gp, 2272f
                  slti         t1, s8, -110
                  srai         a0, a1, 9
                  auipc        s2, 356186
                  sll          s8, s0, a2
                  or           a4, zero, a2
                  xori         ra, s11, -1147
                  and          gp, a7, a2
                  beq          s7, a1, 2289f
                  xor          a1, a4, a3
2272:             bgeu         s2, gp, 2278f
                  sltu         s5, tp, s1
2274:             auipc        t2, 679128
                  xori         s5, s5, 1987
                  slt          ra, a1, s1
                  bge          s10, t2, 2283f
2278:             sltu         t4, t1, s3
                  and          t0, s2, a0
                  auipc        t0, 1033232
                  srl          s5, a2, s7
                  bgeu         a3, sp, 2296f
2283:             add          t5, s10, s7
                  xori         s7, a6, -806
                  sll          a1, a6, t5
                  nop
                  srl          s6, t1, t4
                  xor          s4, s4, a2
2289:             sltu         s0, zero, t1
                  slt          a6, sp, gp
                  addi         t4, a3, 791
                  slli         s0, zero, 19
                  or           a3, t1, ra
                  slt          a7, s6, s7
                  and          a0, s1, t6
2296:             addi         t1, a2, 1837
                  lui          s0, 418478
                  or           gp, sp, tp
                  sll          sp, a6, ra
                  sltiu        s6, s8, -1216
                  auipc        t1, 930533
                  slt          sp, s0, t3
                  bgeu         a4, a0, 2319f
                  slti         s4, ra, 1332
                  blt          s8, sp, 2325f
                  sra          s11, gp, s10
                  srl          s10, tp, ra
                  nop
                  xori         t3, sp, -704
                  srl          t3, a4, a7
                  andi         s10, s7, 1953
                  blt          s10, s6, 2317f
                  srai         s0, s9, 25
                  sra          t5, ra, s5
                  beq          t1, s10, 2331f
                  lui          s11, 127461
2317:             sub          gp, s0, s0
                  or           sp, s10, a7
2319:             bltu         a3, zero, 2332f
                  and          a7, a2, s8
                  slli         s8, t6, 21
                  or           tp, t5, s2
                  sub          gp, t0, ra
                  srli         sp, s8, 0
2325:             add          a3, s4, t1
                  andi         t2, t4, -1823
                  srai         tp, t1, 16
                  sub          s4, a3, s10
                  srli         t1, a4, 27
                  nop
2331:             add          a0, s7, s8
2332:             sll          a0, ra, a7
                  srai         s4, t2, 20
                  auipc        a2, 537159
                  sub          sp, sp, a4
                  sub          s11, s5, s11
                  sltu         s10, t0, t0
                  slti         s4, t4, 1009
                  srai         a4, t2, 3
                  sltu         a0, s5, s3
                  sra          s2, s11, t4
                  or           t5, gp, s2
                  srl          t4, s3, t4
                  srai         sp, t2, 21
                  sltu         t1, a7, s7
                  slli         t6, s3, 9
                  bne          a3, t5, 2356f
                  blt          a6, a5, 2365f
                  srai         a6, a2, 25
                  bge          a7, ra, 2353f
                  xor          s0, t4, a2
                  sra          zero, gp, a6
2353:             and          a3, s5, t6
                  ori          ra, s7, -1517
                  blt          t5, s5, 2367f
2356:             or           a0, a1, t6
                  srai         a1, a4, 15
                  slli         s11, a3, 12
                  bne          s9, s7, 2370f
                  sra          tp, a4, t5
                  sra          zero, t1, s5
                  sra          zero, s9, t0
                  bgeu         s9, s1, 2365f
                  add          gp, s1, a3
2365:             bne          a4, s1, 2385f
                  and          t1, a1, s7
2367:             sub          zero, a5, t0
                  bge          zero, ra, 2381f
                  auipc        a1, 939693
2370:             xori         a3, s9, -543
                  andi         s1, gp, 594
                  lui          t5, 509288
                  slti         ra, s10, -1185
                  sltiu        t6, s5, -1000
                  slti         a4, s11, 274
                  bgeu         a1, t0, 2382f
                  sll          t0, a0, sp
                  sub          a6, a0, s2
                  sltiu        t1, s3, 1541
                  andi         s1, s9, -357
2381:             sra          t1, t2, a7
2382:             sltu         t0, a2, s6
                  andi         gp, s1, -603
                  lui          s11, 532054
2385:             lui          s8, 156773
                  sltiu        t4, a1, 266
                  addi         gp, a3, -839
                  bge          t1, s10, 2402f
                  sltu         a4, t2, s3
                  blt          a0, a1, 2406f
                  srli         a2, s7, 4
                  bltu         a2, s2, 2407f
                  slti         s0, s8, -1492
                  bgeu         ra, a1, 2404f
                  ori          a6, ra, -1842
                  auipc        tp, 213080
                  xori         t4, a2, 2018
                  srl          s5, s2, t6
                  lui          a1, 61010
                  xor          ra, s1, t3
                  bge          s5, ra, 2408f
2402:             slli         s11, gp, 30
                  xori         t0, a4, -709
2404:             xor          s5, t1, t6
                  bne          s5, t1, 2411f
2406:             add          t2, s4, t0
2407:             sltiu        s4, t3, -1404
2408:             andi         a6, tp, -2026
                  ori          t0, t5, 2021
                  slti         a3, t1, -1564
2411:             and          s8, s9, a2
                  srl          t5, s9, t5
                  xor          s1, t6, a5
                  sub          t3, a3, a3
                  nop
                  or           tp, a1, s2
                  slti         t6, s8, 1600
                  bgeu         a6, s5, 2424f
                  bgeu         a3, t0, 2422f
                  beq          s3, a6, 2433f
                  bne          a3, t3, 2434f
2422:             srai         s7, gp, 15
                  xori         s1, t2, -1286
2424:             slt          s8, s2, s11
                  xor          a2, t1, s0
                  srai         s5, a6, 6
                  auipc        s8, 118314
                  slt          zero, a3, a6
                  bge          a6, s1, 2435f
                  beq          t0, gp, 2435f
                  addi         a6, s0, -960
                  srai         s10, t3, 21
2433:             sltu         s7, t6, s2
2434:             sltu         t1, s7, t1
2435:             sltu         s1, s6, a5
                  lw           t1, 4(a5)
                  srli         t2, a4, 20
                  add          sp, a1, t6
                  addi         a5, a5, 60
                  srai         s0, a3, 30
3296:             addi x31, x6, 1
3296:             jalr x31, x31, 0
sub_4:            addi         a5, a5, -24
                  ori          s4, s11, 1454
                  slt          s8, s0, s6
                  sw           t1, 4(a5)
                  srai         tp, s0, 14
                  auipc        a4, 395741
                  sub          t3, tp, s7
                  andi         t3, s9, 1339
                  addi         s1, sp, -1953
                  ori          tp, a2, 922
                  andi         sp, s4, 907
                  or           s11, a5, s1
                  srli         s5, sp, 21
sub_4_j7:         jal          t1, sub_6 #jump sub_4 -> sub_6
                  blt          s2, t1, 20f
                  beq          s6, a0, 2f
2:                addi         s6, gp, -148
                  sll          sp, s9, t3
                  and          s7, a1, a0
                  lui          t6, 748703
                  sltu         a7, a4, s6
                  addi         t2, s4, 1040
                  and          s1, s0, s1
                  srl          s4, t2, sp
                  add          a1, s9, s11
                  or           gp, t0, s7
                  srli         s6, ra, 2
                  bne          a3, s5, 15f
                  add          zero, t2, s11
15:               srl          a2, sp, s1
                  add          a1, s9, a7
                  sub          a3, t1, gp
                  bgeu         s3, tp, 34f
                  sub          t4, t1, ra
20:               sltiu        s6, a0, -1519
                  add          s6, a4, t5
                  slt          s10, t0, zero
                  auipc        s7, 116733
                  slli         zero, s5, 16
                  sltiu        a4, a5, 1237
                  bne          ra, t1, 44f
                  srl          gp, s4, t0
                  bgeu         a7, s6, 34f
                  slt          sp, a5, s5
                  bge          s11, a4, 45f
                  auipc        a0, 427752
                  sltu         ra, a5, s2
                  bge          s7, ra, 45f
34:               and          t4, zero, a7
                  sltiu        zero, s5, 917
                  and          sp, s11, s0
                  or           a1, tp, s10
                  sltiu        s4, s1, -1881
                  nop
                  srai         a7, t4, 19
                  ori          t2, s9, 1084
                  addi         zero, a0, -514
                  bne          t2, a2, 48f
44:               bge          s7, t1, 47f
45:               slli         s4, s10, 4
                  beq          s7, s3, 48f
47:               sltiu        t6, a6, -962
48:               or           t2, a7, s10
                  srl          s2, s11, t5
                  andi         gp, s10, 1864
                  and          s10, tp, s3
                  lw           t1, 4(a5)
                  lui          tp, 643157
                  sltu         a7, s11, a0
                  addi         a5, a5, 24
                  sltu         s10, t1, s11
71:               addi x27, x6, 0
71:               jalr x27, x27, 0
sub_6:            addi         a5, a5, -32
                  slti         t2, s6, -67
                  slli         a7, s1, 15
                  sltu         s0, s2, gp
                  srai         a2, s7, 31
                  add          t5, t0, t1
                  sltiu        s0, a0, 1241
                  xori         s2, s4, 1369
                  lui          a4, 1020779
                  sw           t1, 4(a5)
                  xori         s10, t1, 1704
                  la           gp, region_0+370 #start riscv_load_store_rand_instr_stream_0
                  lbu          a1, 15(gp)
                  sll          s5, t1, ra
                  lh           s7, 20(gp)
                  lb           t4, 1(gp)
                  sh           t1, -14(gp)
                  lb           s11, 4(gp)
                  lbu          zero, 3(gp)
                  sb           s3, 34(gp)
                  lb           t1, 54(gp)
                  nop
                  or           zero, a4, a0
                  lhu          t1, 62(gp)
                  sb           s4, -57(gp)
                  sb           sp, 25(gp)
                  sh           s10, 0(gp)
                  sb           zero, -2(gp)
                  lh           s0, -46(gp)
                  and          t4, a2, zero
                  srli         s8, s5, 6
                  sb           tp, 31(gp)
                  slt          a3, s10, zero
                  nop
                  sltiu        s2, s7, 747
                  lh           s6, 36(gp)
                  lbu          a6, -3(gp)
                  lbu          tp, 31(gp)
                  sh           s5, -54(gp)
                  lbu          a4, 8(gp)
                  sub          ra, s0, s3
                  sb           ra, -9(gp)
                  lbu          s7, 47(gp)
                  lb           t2, 12(gp)
                  slti         s11, t5, 1972
                  lbu          ra, -11(gp)
                  sh           a2, 54(gp)
                  sb           s4, 19(gp)
                  lb           t4, -50(gp)
                  sra          s7, a3, a2
                  lb           s5, -39(gp)
                  lw           t0, 54(gp)
                  lhu          t1, -42(gp) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_0+485 #start riscv_load_store_rand_instr_stream_4
                  lh           s10, 117(t4)
                  sra          ra, sp, sp
                  slt          s0, a4, t6
                  sb           s1, 244(t4)
                  sh           sp, -125(t4)
                  sb           a2, -122(t4)
                  or           gp, s0, s6
                  lb           t5, 44(t4)
                  sb           a4, 132(t4)
                  sll          s5, tp, a7
                  lbu          sp, 170(t4)
                  sb           t1, -120(t4)
                  sb           a7, 211(t4)
                  lw           s10, -249(t4)
                  lb           a3, 178(t4)
                  sltiu        tp, t2, 350
                  add          t5, s5, s9
                  sb           s7, 164(t4)
                  lb           s8, 215(t4)
                  sb           a2, -104(t4)
                  srl          a1, a7, s1
                  add          a0, gp, s11
                  lhu          ra, -221(t4)
                  nop
                  sltu         a3, s6, a5
                  sb           a4, -108(t4)
                  lb           a0, -253(t4)
                  sb           s6, -4(t4)
                  srl          s10, s5, t2
                  addi         s0, sp, -277
                  xori         zero, s9, -1666
                  sb           s2, -166(t4)
                  slti         tp, a5, 813
                  lw           a1, -89(t4)
                  lbu          t6, -92(t4)
                  slt          s11, s8, s2
                  auipc        s11, 710888
                  lhu          t6, -189(t4)
                  sb           s2, 26(t4)
                  sb           s7, -25(t4)
                  or           a2, s7, s9
                  add          a3, a4, s3
                  addi         a2, t2, 1414
                  lbu          s0, -86(t4) #end riscv_load_store_rand_instr_stream_4
                  la           a3, region_0+207 #start riscv_load_store_rand_instr_stream_5
                  lhu          t6, -7(a3)
                  slti         t0, s4, -1557
                  xori         s1, s8, 1496
                  xori         sp, t4, 1597
                  lbu          gp, -1(a3)
                  xor          ra, a2, gp
                  ori          a6, a1, -524
                  slti         s4, s5, -1998
                  lb           s1, -1(a3)
                  lb           zero, 10(a3)
                  sh           s0, 11(a3)
                  sw           a4, 1(a3)
                  lh           t2, -7(a3)
                  lb           t5, -10(a3)
                  sb           t1, -16(a3)
                  lb           gp, -8(a3)
                  slt          t0, s9, sp
                  srli         a1, a0, 30
                  sll          s11, a5, a6
                  lb           a2, 7(a3)
                  sll          t0, a7, a3
                  sh           t6, 7(a3) #end riscv_load_store_rand_instr_stream_5
                  la           t4, region_0+1243 #start riscv_load_store_rand_instr_stream_2
                  sb           a4, -292(t4)
                  lb           t3, -1158(t4)
                  sb           a7, -539(t4)
                  sh           a1, -853(t4)
                  lhu          t0, -321(t4)
                  lb           a0, 151(t4)
                  slt          t1, sp, s4
                  xori         s0, s11, -2018
                  lhu          t0, -343(t4)
                  sb           s10, -831(t4)
                  sb           a5, -1100(t4)
                  sb           s6, -817(t4)
                  sltiu        s8, gp, -750
                  add          a0, s4, t4
                  lb           s1, -455(t4)
                  sub          a3, t4, a5
                  sb           s4, 293(t4)
                  srai         t3, gp, 17
                  sub          t2, zero, gp
                  lw           a0, 729(t4)
                  lbu          s2, -408(t4)
                  sh           tp, -199(t4)
                  sb           a5, 201(t4)
                  xor          t6, s2, sp
                  sll          t0, t1, a0
                  sb           s2, 254(t4)
                  xor          s7, s7, a7
                  slt          t0, sp, s4
                  sra          a2, ra, a1
                  sb           s0, -822(t4)
                  xor          t2, t3, a7
                  srl          a0, t3, a2
                  srai         a4, a4, 4
                  lhu          a4, -119(t4)
                  sh           s1, 629(t4)
                  srl          t5, t5, tp
                  lb           t1, -1149(t4)
                  sb           s2, 721(t4)
                  xor          sp, t4, t0
                  lhu          a4, 563(t4)
                  lw           t6, -1179(t4)
                  nop
                  lb           gp, -311(t4)
                  lui          ra, 966856
                  sb           t1, -764(t4)
                  lbu          t5, -1164(t4)
                  xori         s7, a2, -794
                  lhu          s5, -973(t4) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1820 #start riscv_load_store_rand_instr_stream_7
                  lbu          a0, -1367(sp)
                  and          s4, s2, t4
                  sw           a5, -1644(sp)
                  sh           tp, 38(sp)
                  or           s0, t6, t0
                  lbu          s1, -1625(sp)
                  lh           a1, -710(sp)
                  sb           s7, -1249(sp)
                  lbu          s11, -1758(sp)
                  slli         s1, a7, 18
                  lbu          s10, -254(sp)
                  xor          t6, zero, s10
                  lw           s4, -1536(sp)
                  lhu          t1, -1590(sp)
                  lh           s4, -1258(sp)
                  lb           ra, -1287(sp)
                  sltiu        a3, ra, -1754
                  lhu          t0, -1160(sp)
                  slli         s2, s10, 14
                  lh           a7, -914(sp)
                  lb           s5, -1772(sp)
                  sb           a6, -705(sp)
                  lh           a0, -1752(sp)
                  sll          s11, tp, a0
                  ori          s5, tp, 910
                  sb           s10, -1573(sp)
                  lb           s11, -333(sp)
                  lb           a2, -1622(sp)
                  lhu          t0, -168(sp)
                  lb           a3, 11(sp)
                  lui          s5, 862680
                  lw           a0, -1284(sp)
                  srai         a2, s6, 22
                  srai         s6, s10, 14
                  lb           t4, -1514(sp)
                  lhu          s1, -812(sp)
                  srai         s0, a6, 4
                  slt          t3, a3, s2
                  lb           t3, -1614(sp)
                  addi         s1, s1, 331
                  sub          s6, t6, zero
                  slt          s10, t1, a2
                  sltu         zero, sp, a1
                  sb           s3, -1275(sp)
                  lbu          t4, -79(sp) #end riscv_load_store_rand_instr_stream_7
                  la           t4, region_0+746 #start riscv_load_store_rand_instr_stream_3
                  lui          a4, 553809
                  or           t3, s10, sp
                  lw           sp, -166(t4)
                  srl          sp, gp, s9
                  lbu          t6, -95(t4)
                  lb           zero, 64(t4)
                  sltiu        a7, t3, 170
                  srl          t2, t2, t3
                  xori         zero, s6, -170
                  lbu          s0, 197(t4)
                  slt          a6, gp, tp
                  xor          t6, a5, a2
                  sb           a7, 75(t4)
                  andi         zero, s4, -1455
                  lb           a1, -109(t4)
                  lh           a6, 202(t4)
                  or           tp, s9, t0
                  sb           ra, -195(t4)
                  sll          sp, t6, t2
                  and          a0, s4, a0
                  and          s4, t6, t3
                  lbu          s11, 157(t4)
                  sltu         ra, zero, s10
                  lb           gp, -156(t4)
                  add          t3, t0, a3
                  nop
                  sub          t5, a3, a2
                  lbu          a7, -107(t4)
                  srl          gp, t2, s7
                  lui          a4, 480502
                  sh           a4, -166(t4)
                  lbu          sp, 75(t4)
                  nop
                  lbu          t3, 177(t4)
                  sll          s11, t0, s11
                  slt          t1, s9, tp
                  sh           s11, -126(t4)
                  sh           a1, -176(t4)
                  lh           t3, 96(t4)
                  srli         s10, zero, 10
                  sb           gp, 156(t4)
                  addi         s6, ra, 1051
                  slt          s4, s5, gp
                  slli         t2, t0, 4
                  sh           a6, 46(t4)
                  sb           s0, -40(t4)
                  add          s0, a6, a3
                  sb           ra, -165(t4) #end riscv_load_store_rand_instr_stream_3
                  la           s2, region_0+957 #start riscv_load_store_rand_instr_stream_1
                  sra          a2, s10, s6
                  sb           s11, -3(s2)
                  lbu          a3, 0(s2)
                  slti         s10, a2, -196
                  nop
                  sb           s0, -8(s2)
                  slt          s5, gp, t5
                  lh           s10, -3(s2)
                  and          a6, s6, a0
                  lbu          t2, -8(s2)
                  xor          s7, s8, a7
                  add          s10, a5, t4
                  lw           t3, 11(s2)
                  sh           a4, -15(s2)
                  lbu          a2, 2(s2)
                  slli         a6, s10, 18
                  lh           zero, -9(s2)
                  lbu          s6, 15(s2)
                  sb           s10, 0(s2)
                  lbu          s10, 0(s2)
                  srai         s0, a3, 23
                  auipc        t4, 635142
                  lbu          sp, -8(s2)
                  or           s0, t0, sp
                  lhu          t0, -7(s2)
                  lb           a3, -12(s2)
                  lh           tp, 13(s2)
                  lui          t6, 469989
                  addi         s5, sp, -521
                  xor          t2, t2, t6
                  lhu          gp, 15(s2)
                  or           t0, a6, s5
                  slt          t3, tp, a3
                  sll          a7, gp, s1
                  sh           a0, -7(s2)
                  sb           a2, 6(s2)
                  lhu          gp, 7(s2)
                  srli         zero, s9, 26
                  lbu          s7, -11(s2)
                  lui          ra, 487111
                  sb           a4, 1(s2)
                  lb           t5, 1(s2)
                  lbu          ra, -13(s2)
                  sll          a1, s2, s4
                  auipc        t4, 103174
                  srl          a2, s0, s4
                  lb           t5, -4(s2)
                  sra          t2, zero, t4
                  slli         a2, s4, 4
                  xor          a3, a3, s1
                  lh           ra, 1(s2)
                  lbu          s8, -2(s2)
                  lb           tp, -2(s2) #end riscv_load_store_rand_instr_stream_1
                  or           s1, s4, s4
                  bge          s2, t3, 7f
                  srli         sp, t3, 7
                  sltiu        sp, s3, 285
                  sub          tp, s8, t3
                  bge          t5, s0, 24f
                  and          s5, t3, t1
7:                slt          s4, zero, gp
                  srli         gp, t0, 21
                  auipc        a3, 900297
                  srl          s7, a1, t6
                  or           gp, a6, zero
                  sltiu        t0, a3, -313
                  beq          a6, t2, 29f
                  srai         t3, tp, 2
                  srli         t3, t5, 30
                  srai         gp, a1, 24
                  srli         a6, t4, 25
                  xori         a2, s8, 2001
                  sltiu        a4, s6, 1308
                  srl          a4, tp, a1
                  ori          t4, s6, -1335
                  or           s1, a6, a6
                  andi         s0, a1, 1105
24:               sll          s4, t3, t2
                  beq          s2, t6, 30f
                  addi         tp, t1, -584
                  xori         s7, t0, -1758
                  bltu         s1, t2, 29f
29:               bge          s6, s11, 38f
30:               slt          t4, a3, s4
                  bltu         s3, s3, 40f
                  bne          t3, t5, 41f
                  bne          sp, a3, 50f
                  auipc        a3, 551507
                  xori         s6, s11, 1339
                  auipc        zero, 1021553
                  or           ra, s11, a3
38:               ori          a3, gp, 670
                  addi         t5, gp, -251
40:               slli         ra, s6, 31
41:               bltu         s10, t4, 52f
                  srl          a3, a7, t5
                  add          a6, s3, s3
                  srl          s5, s11, sp
                  addi         tp, s7, 963
                  sub          s0, a2, s7
                  blt          a3, a6, 61f
                  auipc        s2, 750045
                  nop
50:               add          s6, a2, t4
                  sra          a7, a0, s0
52:               sra          a7, s8, t4
                  slli         ra, s6, 2
                  and          a3, a3, t2
                  sub          s6, s0, a4
                  slt          s6, s0, s2
                  bge          s6, a7, 58f
58:               slti         a0, gp, 382
                  slli         a7, s10, 24
                  bne          a3, t3, 73f
61:               srli         t4, s11, 30
                  lui          gp, 863461
                  beq          s5, s5, 82f
                  sll          a0, s4, tp
                  sll          s4, t1, a6
                  srl          gp, a5, s2
                  bltu         s2, a1, 72f
                  sltu         s10, a3, s5
                  xori         tp, tp, 421
                  addi         s5, a3, -1625
                  sll          t6, sp, a4
72:               bltu         tp, s7, 83f
73:               lui          t6, 508120
                  sltu         t2, s3, a4
                  slti         t0, s9, 446
                  bne          t1, s2, 92f
                  xori         a4, s3, -1175
                  sltiu        a3, s11, 1302
                  srl          s1, a1, t4
                  bltu         a6, a5, 86f
                  sra          t6, t0, t0
82:               andi         t3, gp, -268
83:               bge          t0, a6, 93f
                  xor          a0, a7, s1
                  beq          a6, a2, 91f
86:               addi         s10, a3, -804
                  slti         t0, s9, -1494
                  addi         t4, t2, -551
                  slti         tp, a2, -1272
                  andi         t5, a1, -1140
91:               srli         s10, s4, 6
92:               sltu         s8, a5, zero
93:               nop
                  bltu         a3, t5, 102f
                  add          t3, gp, s11
                  andi         ra, gp, 1157
                  xori         t5, a7, -933
                  andi         s7, s9, -751
                  sltu         a0, t6, s10
                  or           a7, s4, s4
                  andi         s0, s6, -160
102:              lui          s5, 574268
                  add          s10, a2, a1
                  blt          t6, a1, 105f
105:              slli         s11, gp, 4
                  bltu         s10, t4, 125f
                  bltu         t5, s6, 115f
                  add          s1, a6, s5
                  sra          a7, t3, sp
                  srli         t5, s5, 7
                  srl          a1, s1, ra
                  sra          s4, t2, s7
                  bge          gp, s11, 128f
                  slti         zero, s5, -805
115:              and          t6, t3, ra
                  blt          t5, t1, 132f
                  sll          zero, tp, s11
                  sltiu        a2, s2, -1697
                  and          s10, a1, s10
                  xor          t2, s10, t3
                  sltu         t0, zero, s0
                  auipc        ra, 115578
                  andi         tp, t1, -1679
                  bne          a4, gp, 141f
125:              sltu         t6, s0, t2
                  auipc        a0, 184601
                  xori         s2, a4, -1381
128:              nop
                  add          s11, t5, t1
                  or           a1, s3, zero
                  addi         s1, s1, 408
132:              bgeu         s11, s7, 144f
                  sra          t0, s0, tp
                  bne          t2, t3, 146f
                  xor          tp, a5, s10
                  sra          a2, a1, s2
                  addi         a7, s11, -1274
                  bgeu         a7, s0, 144f
                  blt          t2, s1, 155f
                  bne          s0, a5, 155f
141:              sltu         s2, t6, sp
                  slli         s11, tp, 1
                  add          t2, ra, a7
144:              slti         a3, s0, -286
                  xor          t0, s5, t3
146:              srai         s6, t2, 12
                  ori          a3, zero, -1468
                  add          tp, a4, s8
                  nop
                  ori          t4, tp, -1297
                  sltu         s5, tp, s1
                  and          sp, tp, s1
                  auipc        s11, 1034348
                  slti         a7, a2, -1072
155:              sltu         t0, a5, s9
                  sltu         zero, ra, t2
                  srai         t1, s5, 0
                  xori         a7, sp, 89
                  or           t4, s6, a1
                  slt          s1, s2, s1
                  blt          t2, s0, 167f
                  bltu         t4, a3, 168f
                  bge          s2, t0, 176f
                  bltu         s7, t2, 173f
                  bgeu         tp, zero, 171f
                  sltiu        t3, s5, 289
167:              andi         gp, a1, 1748
168:              slli         gp, s7, 25
                  auipc        sp, 945200
                  beq          sp, s8, 179f
171:              lui          t1, 642086
                  bge          s8, a5, 188f
173:              blt          t0, a3, 182f
                  bge          a5, s7, 180f
                  sra          a4, s8, s8
176:              sra          s4, t5, sp
                  slti         t4, ra, 367
                  nop
179:              slli         zero, t2, 19
180:              bltu         t2, a5, 181f
181:              andi         s6, t3, 1257
182:              sub          a7, a2, s9
                  beq          s4, s0, 200f
                  blt          s8, s9, 203f
                  srai         s0, tp, 15
                  srli         ra, s3, 6
                  bgeu         s4, s3, 201f
188:              srai         t6, s2, 27
                  sub          ra, s0, a6
                  ori          t4, t2, -89
                  srli         a2, sp, 17
                  sra          a3, s10, a0
                  nop
                  xori         s6, ra, -1884
                  ori          t1, s5, -2029
                  or           ra, a1, s7
                  sra          s8, s7, gp
                  xori         s0, t2, -1527
                  bge          t3, s4, 211f
200:              add          a1, s3, t4
201:              auipc        t2, 8602
                  slt          s6, a2, t2
203:              srli         t0, a4, 15
                  sra          gp, t5, s7
                  lui          ra, 746066
                  sra          sp, s0, sp
                  ori          a2, a3, 1612
                  sll          a0, s0, t5
                  auipc        a2, 779199
                  addi         a1, tp, 1673
211:              slt          s4, s11, s5
                  lui          s1, 807753
                  bne          s5, a7, 223f
                  ori          s1, s10, 159
                  addi         t3, sp, -1898
                  bne          s1, a0, 217f
217:              slt          t2, a7, s10
                  xori         s4, t2, 796
                  xor          a6, a2, s6
                  bgeu         s5, zero, 237f
                  and          s0, a6, t6
                  sll          s0, t5, t5
223:              bne          t2, s0, 235f
                  or           s0, ra, s3
                  xori         s1, s3, -1564
                  and          s8, s0, t6
                  xor          a6, a5, t1
                  sub          s6, s6, s4
                  sra          a4, t5, s1
                  bge          sp, s2, 249f
                  blt          gp, t2, 250f
                  xori         a4, s10, -822
                  bne          a2, t2, 238f
                  bltu         t1, t1, 242f
235:              sltiu        t6, t0, -670
                  sll          s4, zero, t4
237:              and          s7, gp, s0
238:              slti         a0, t4, 1053
                  ori          a6, t4, 1081
                  sub          ra, sp, s6
                  xori         s4, t0, 342
242:              sltiu        t4, zero, 271
                  bltu         s10, t1, 244f
244:              and          s4, ra, a0
                  blt          s11, t1, 256f
                  and          gp, s9, sp
                  sra          gp, s6, s10
                  bgeu         s3, ra, 259f
249:              sltu         zero, tp, a0
250:              nop
                  auipc        s7, 50929
                  sltu         t0, s6, s3
                  srli         ra, a7, 20
                  slt          s5, a6, s9
                  add          t5, ra, s6
256:              auipc        s10, 765627
                  xor          s4, t4, a5
                  blt          s11, tp, 266f
259:              ori          s6, s9, -1376
                  sub          s1, s0, a2
                  slli         ra, a0, 24
                  sltu         a3, s6, s11
                  beq          ra, a2, 279f
                  auipc        t1, 310741
                  sltiu        zero, a5, -225
266:              beq          zero, a5, 271f
                  srl          s6, a1, s9
                  slli         ra, s4, 6
                  sub          tp, t6, t4
                  or           a2, a4, a3
271:              slli         t5, s6, 12
                  xor          s7, a5, t0
                  sra          t2, a4, t3
                  slt          s8, s8, s2
                  bgeu         s0, a6, 283f
                  lui          s10, 384596
                  slli         ra, s7, 27
                  sltu         gp, a3, s7
279:              ori          s10, t6, 669
                  slli         t4, t2, 31
                  xori         s6, s9, 2011
                  sltu         s10, a5, s5
283:              and          t4, zero, tp
                  slli         s2, s0, 29
                  nop
                  auipc        s8, 99878
                  bltu         tp, tp, 298f
                  bge          s4, a2, 298f
                  sll          s0, t6, t5
                  auipc        a2, 779398
                  slti         s2, s4, -1516
                  bge          s2, gp, 311f
                  srai         s11, a6, 22
                  add          a6, a5, ra
                  xor          s4, s3, gp
                  srl          s7, s0, s6
                  or           s5, t0, t3
298:              andi         gp, t1, -637
                  lui          s10, 756765
                  addi         t6, s11, 1352
                  add          s11, t4, t4
                  srl          a0, tp, t0
                  add          t5, gp, t2
                  xori         s10, s8, 1558
                  bge          s2, a2, 311f
                  add          s8, s7, s0
                  sra          a4, s0, s0
                  bne          s9, gp, 320f
                  sra          zero, gp, a4
                  nop
311:              sltiu        a4, s1, 401
                  sltu         a0, gp, a5
                  srli         a4, a4, 20
                  slt          a1, s7, a3
                  sub          s7, s9, s2
                  blt          t2, s11, 317f
317:              bltu         s9, t4, 328f
                  sltu         s7, a2, a2
                  addi         s1, t4, -463
320:              sub          s1, t6, ra
                  andi         ra, a5, 1763
                  blt          sp, s10, 338f
                  ori          a0, a2, -1752
                  blt          t0, gp, 329f
                  ori          a4, s2, -1271
                  slti         s11, t0, 984
                  slt          ra, t6, t0
328:              xori         t1, s3, -366
329:              srl          a7, a4, t3
                  bltu         s7, a4, 336f
                  bgeu         s5, a3, 337f
                  slli         s7, a4, 13
                  slt          t5, a2, a2
                  srli         t6, s5, 21
                  srl          sp, s3, s9
336:              andi         s6, a5, -1205
337:              andi         tp, a4, 256
338:              bge          s0, sp, 353f
                  andi         s5, a1, -911
                  andi         s6, t4, 189
                  ori          a4, s8, 976
                  nop
                  slt          a2, a2, a7
                  sltiu        t6, t1, -1021
                  and          s0, zero, s7
                  srli         t1, t1, 4
                  and          a6, s6, s2
                  ori          s10, s2, 1738
                  addi         tp, a5, -863
                  and          s6, a1, t1
                  srl          s2, t3, t5
                  and          s7, a5, a4
353:              sra          s10, t3, s11
                  slt          a0, s4, s4
                  bgeu         s3, s5, 363f
                  or           s8, t1, s9
                  sub          s8, tp, s0
                  blt          t0, a6, 370f
                  srli         t1, s2, 9
                  sltu         s6, tp, a3
                  bgeu         t3, a7, 375f
                  sra          tp, tp, s5
363:              slt          s2, s6, gp
                  bltu         s0, t2, 380f
                  or           t5, tp, a4
                  bge          zero, zero, 375f
                  and          s1, s1, s0
                  xor          t6, t1, s0
                  sub          t1, a1, s1
370:              andi         gp, s4, -1772
                  slli         t4, t6, 21
                  addi         s10, s10, -1209
                  bge          a0, t3, 389f
                  srl          t1, t1, a3
375:              xor          ra, a2, t4
                  xori         ra, s9, 470
                  xor          zero, t6, t1
                  xori         s10, s10, 1743
                  sltu         s1, a2, a6
380:              or           s5, a7, t1
                  srl          a1, s4, zero
                  bgeu         s6, s5, 401f
                  slli         tp, a4, 4
                  srl          sp, s5, s8
                  sra          a0, s5, a6
                  slli         s0, s7, 3
                  slti         a4, s10, -841
                  bltu         a3, a6, 397f
389:              ori          s10, tp, -182
                  blt          s11, sp, 396f
                  lui          a1, 1024701
                  beq          a5, a4, 393f
393:              xor          s8, zero, s2
                  slli         t4, tp, 11
                  bgeu         t4, a7, 408f
396:              bne          a2, s7, 405f
397:              bge          a3, t0, 398f
398:              slli         s1, s9, 1
                  xori         s4, t3, -1687
                  or           a2, s2, t4
401:              sra          s11, s2, s11
                  bge          a5, ra, 419f
                  and          a1, s9, a1
                  xor          s10, s10, s10
405:              slt          t5, s11, s8
                  srli         sp, s8, 18
                  slt          zero, s8, s5
408:              bltu         s2, a4, 413f
                  and          a1, t4, t3
                  slt          a7, a4, s8
                  srl          sp, s6, a2
                  addi         a3, a4, -787
413:              sltiu        a4, s7, -380
                  slti         gp, t2, 247
                  sltu         s1, t2, a2
                  xor          ra, a4, sp
                  bne          tp, zero, 436f
                  bge          a4, s6, 435f
419:              srai         s4, t4, 5
                  sltu         t1, s1, gp
                  beq          a0, s8, 427f
                  slli         s6, a1, 19
                  sll          tp, t6, a2
                  sra          s0, a3, s11
                  bge          a1, s11, 436f
                  and          a7, gp, s2
427:              beq          a6, s10, 436f
                  srl          t0, a5, s2
                  beq          t6, t0, 439f
                  slt          a4, zero, s4
                  sll          ra, t4, t2
                  xori         a1, a2, -1807
                  add          t0, a1, a2
                  andi         ra, ra, -650
435:              and          s0, tp, s7
436:              beq          t0, s9, 450f
                  and          s5, t4, t3
                  bne          t6, s10, 439f
439:              bge          t3, s11, 445f
                  slt          t2, t2, tp
                  xori         t4, a0, -1432
                  xor          ra, s11, t4
                  lui          s8, 281501
                  blt          a4, a4, 461f
445:              addi         t6, zero, 1872
                  blt          a3, t2, 465f
                  slli         t4, s8, 13
                  bgeu         a1, t6, 459f
                  sltiu        a1, a6, 1031
450:              beq          zero, a5, 459f
                  xor          a7, a0, gp
                  bne          s8, a3, 468f
                  sub          a3, t3, t3
                  sub          a4, t1, t1
                  slti         a0, s1, -71
                  or           sp, t2, a4
                  lui          tp, 458471
                  sll          t4, t0, a5
459:              nop
                  sll          t2, a7, ra
461:              srai         s10, s1, 13
                  slti         t6, a2, 526
                  sll          tp, sp, t2
                  add          s2, s0, t6
465:              bge          s3, a1, 482f
                  andi         t2, s4, -1357
                  sltiu        t5, a2, 1578
468:              andi         s4, s3, 811
                  bne          s1, s3, 481f
                  blt          s8, s10, 471f
471:              bge          s7, t5, 479f
                  auipc        tp, 96515
                  bge          zero, s3, 486f
                  slt          a6, a7, s1
                  or           s8, a6, s1
                  bltu         a6, zero, 484f
                  and          a2, s10, t2
                  sltiu        t4, s7, -332
479:              add          sp, s11, s4
                  bgeu         a1, t2, 485f
481:              srl          s11, t6, s11
482:              sra          t6, s11, s9
                  addi         s11, a2, -776
484:              slt          a0, zero, s10
485:              slt          a4, s2, a4
486:              srli         t0, s11, 10
                  sll          a1, a1, a7
                  lui          sp, 887682
                  add          s4, s3, a6
                  and          a4, s0, tp
                  xor          s10, s5, s8
                  sltiu        t1, s2, -1545
                  sub          s4, a3, s10
                  lui          a1, 666915
                  bne          a6, s8, 501f
                  auipc        s1, 107962
                  lui          t4, 1020197
                  sra          s2, a3, s10
                  addi         tp, a7, 116
                  sltu         s5, t2, zero
501:              bgeu         s0, a7, 510f
                  blt          s1, t2, 508f
                  sub          s6, a3, s1
                  bge          s8, a3, 509f
                  slt          sp, gp, s3
                  bge          zero, a0, 507f
507:              slti         zero, a0, 1310
508:              auipc        sp, 98888
509:              add          sp, s4, s2
510:              nop
                  auipc        s2, 259065
                  auipc        s1, 335935
                  sltiu        a0, t0, 1235
                  srl          t1, t1, ra
                  beq          a3, s11, 534f
                  bltu         s11, t0, 528f
                  ori          t4, s3, 1783
                  ori          a2, s9, -492
                  xor          a4, a0, s11
                  sltu         s11, t0, a6
                  sll          t4, s1, s3
                  bltu         s11, s10, 541f
                  sltu         a1, s11, a4
                  and          a2, sp, s6
                  srl          t4, s1, s9
                  and          t4, a5, a1
                  lui          a2, 504458
528:              sra          s11, a6, t6
                  bne          t2, s2, 545f
                  bgeu         a5, a6, 546f
                  lui          s4, 70909
                  auipc        a0, 931651
                  and          t3, s9, t0
534:              sltu         s2, t3, t0
                  slti         a6, tp, -1308
                  sra          t4, a5, s5
                  nop
                  xor          s8, t1, ra
                  sll          s7, s10, a6
                  slt          s11, s3, t5
541:              sltu         a1, s2, s9
                  slli         t6, a0, 14
                  sra          s0, s3, a0
                  sll          a1, a4, s2
545:              addi         tp, gp, -2047
546:              addi         s10, s2, 1646
                  sltu         s8, a3, t0
                  sltu         s0, s10, a2
                  auipc        t4, 885070
                  slti         a7, a5, 1894
                  auipc        s1, 1019070
                  srl          s11, s2, zero
                  addi         s11, a5, 1600
                  srl          a3, a1, s7
                  slti         t5, t2, -1622
                  beq          s10, s3, 571f
                  xor          t3, t0, s10
                  bgeu         t2, t2, sub_6_j9 #branch to jump instr
                  andi         s11, a5, -839
                  or           t3, a6, a6
                  xori         t5, t2, 1027
                  lui          s5, 771559
                  and          tp, s6, gp
                  auipc        a2, 119190
                  xori         t3, t0, -452
                  ori          s2, a0, -2035
                  addi         a6, s8, -781
sub_6_j9:         jal          t1, sub_7 #jump sub_6 -> sub_7
                  xor          a6, s7, s10
                  sra          t4, s3, s11
                  beq          t1, t3, 569f
                  sra          t2, s0, s9
                  or           s0, t0, s1
                  or           s8, a0, a6
                  slt          t5, a6, s2
                  auipc        a1, 842179
                  andi         t5, t1, -1236
                  nop
                  slti         a6, a6, -1685
569:              beq          t6, s3, 588f
                  bge          t5, s6, 576f
571:              bltu         t2, a3, 588f
                  bltu         a0, t3, 588f
                  addi         s11, s1, -1222
                  srli         gp, a2, 30
                  bltu         s3, s5, 583f
576:              slt          s6, t2, s7
                  nop
                  blt          s3, t2, 594f
                  sltiu        s11, sp, 688
                  xori         s7, t4, 1887
                  bgeu         zero, ra, 591f
                  srai         s0, s4, 25
583:              add          gp, zero, a4
                  lui          gp, 957284
                  srai         a4, a1, 29
                  sltiu        sp, s7, -1805
                  slti         s4, a4, -1646
588:              blt          s1, s10, 599f
                  srl          sp, sp, a6
                  lui          t5, 19925
591:              sltiu        t5, a1, -928
                  xor          s8, s4, tp
                  sra          s8, ra, t1
594:              auipc        a2, 439157
                  bge          t4, s4, 601f
                  bgeu         t3, t0, 597f
597:              xor          tp, t0, sp
                  bge          s11, s1, 610f
599:              slli         a2, zero, 12
                  blt          t3, t1, 619f
601:              srli         t2, a2, 18
                  sub          tp, s11, a3
                  sll          t6, s2, sp
                  sltiu        s1, s5, 1391
                  sll          ra, sp, t5
                  slt          s5, a7, t3
                  bgeu         s6, s9, 624f
                  add          a3, t6, s1
                  auipc        t6, 727294
610:              blt          a7, s0, 624f
                  xor          t6, sp, s1
                  addi         s11, s6, 1115
                  sra          t0, tp, s7
                  addi         s4, t3, 1076
                  bge          a4, t5, 616f
616:              addi         zero, gp, 650
                  beq          a3, s5, 623f
                  bge          a5, a7, 623f
619:              xor          zero, t6, t3
                  bne          s11, s7, 639f
                  sltiu        a6, t4, -641
                  bge          sp, zero, 631f
623:              auipc        s7, 694766
624:              xori         s8, t6, -1785
                  slli         t0, s6, 20
                  or           s5, t4, a3
                  nop
                  or           a0, s0, t5
                  ori          zero, t1, 1381
                  add          s7, a2, a2
631:              srai         s0, s10, 31
                  andi         s4, s3, -1378
                  sltiu        t6, s9, 1883
                  sra          s0, a2, a5
                  auipc        s4, 301170
                  addi         s5, s8, -1098
                  auipc        tp, 930536
                  lui          t1, 334964
639:              add          gp, s2, s4
                  bltu         zero, s9, 653f
                  bgeu         t5, s4, 652f
                  beq          t1, s11, 648f
                  ori          zero, t6, 1
                  bne          s6, t3, 653f
                  sltu         t0, a5, a6
                  andi         s11, ra, -778
                  beq          gp, s2, 652f
648:              ori          a1, t4, 1887
                  beq          s2, s1, 665f
                  auipc        s8, 292851
                  slli         s10, t4, 24
652:              bge          a5, t3, 660f
653:              srai         a6, a2, 21
                  slli         s4, t0, 15
                  addi         s5, s10, -2006
                  sra          sp, a1, t4
                  or           t3, t2, s3
                  bgeu         a2, s8, 673f
                  slti         t1, s8, -342
660:              bgeu         t6, s7, 672f
                  slt          s4, t4, s1
                  add          t1, t2, zero
                  srai         s6, s11, 31
                  bltu         s11, a1, 665f
665:              srli         s8, t2, 31
                  blt          a5, s6, 676f
                  xori         t6, t0, -1084
                  beq          s0, a2, 677f
                  bgeu         s8, s8, 685f
                  slti         ra, a4, 2032
                  slti         s1, s11, 1212
672:              add          gp, tp, s6
673:              auipc        t0, 331931
                  srli         gp, s0, 4
                  slt          a4, tp, s6
676:              add          t4, a3, a6
677:              xori         a6, ra, -1123
                  beq          a4, a6, 686f
                  bne          a5, a1, 688f
                  auipc        sp, 709936
                  sltu         s11, a0, t1
                  sltu         s2, s2, a5
                  xori         a4, s4, -263
                  auipc        t5, 278874
685:              sltu         a1, s9, s7
686:              sltiu        gp, a5, -769
                  bge          s0, ra, 693f
688:              srli         s7, s10, 14
                  sltu         a0, a3, a4
                  lui          tp, 564440
                  srai         a2, gp, 12
                  andi         zero, gp, -1080
693:              addi         a4, t2, -1994
                  slti         tp, a6, 176
                  lui          a7, 575899
                  andi         ra, a2, -242
                  lui          gp, 712941
                  srl          t6, s8, t2
                  srl          a1, s7, t0
                  sltu         a3, a0, t1
                  nop
                  and          a0, t4, s5
                  auipc        s7, 795113
                  bgeu         s2, ra, 719f
                  ori          a2, t6, -642
                  sra          s11, a4, s7
                  slli         zero, s7, 19
                  sltu         s4, t0, a7
                  bge          t5, s7, 715f
                  srli         t0, s0, 28
                  bge          s9, a4, 728f
                  xor          a1, a5, s8
                  beq          a6, s4, 725f
                  slti         t2, t4, 682
715:              and          sp, t3, t4
                  srai         a6, t4, 11
                  ori          sp, s5, -1845
                  bltu         s1, s2, 737f
719:              sll          t4, tp, s9
                  slli         s7, a1, 4
                  slt          gp, s4, a4
                  addi         sp, sp, -806
                  or           a6, s5, a1
                  blt          s6, s5, 732f
725:              bne          t5, s7, 738f
                  slti         a3, t1, 1652
                  and          s8, s11, t1
728:              addi         s4, s1, 399
                  auipc        gp, 776601
                  addi         a7, a6, 1854
                  bge          t4, s1, 747f
732:              xori         ra, t2, 785
                  and          s1, tp, t1
                  bltu         s6, t6, 735f
735:              bne          t1, tp, 751f
                  srli         gp, a3, 18
737:              bge          s10, s11, 751f
738:              bltu         a3, t6, 750f
                  xor          a1, gp, sp
                  sltiu        s2, t3, 87
                  ori          s5, s9, -1884
                  lui          a2, 374689
                  sltu         ra, s1, a7
                  addi         t3, t4, -2029
                  sra          a4, a7, a7
                  xor          t1, s7, a1
747:              nop
                  bne          s4, t1, 754f
                  sll          s0, s11, s7
750:              bgeu         a5, s6, 755f
751:              sll          sp, s7, s3
                  andi         t1, s8, -1650
                  bgeu         s10, zero, 762f
754:              and          s7, a6, s11
755:              bge          tp, t2, 761f
                  lui          t0, 874391
                  ori          t3, t4, 764
                  addi         sp, s5, 398
                  srai         t2, a4, 13
                  sltiu        s4, t1, 46
761:              andi         t3, s1, 1032
762:              and          a2, t1, s4
                  srai         a0, s6, 8
                  sltu         t5, t4, s2
                  andi         a1, t5, -1194
                  bge          gp, s11, 785f
                  srai         a6, s9, 19
                  and          a6, a5, s6
                  nop
                  sub          t3, t4, s7
                  xori         zero, s5, -1296
                  beq          t2, t1, 791f
                  lui          t5, 267435
                  sra          s6, t5, s2
                  beq          t4, s0, 792f
                  slt          ra, a7, a4
                  ori          t5, t2, -1850
                  bne          t1, t5, 779f
779:              addi         a3, t2, 1178
                  or           t0, s0, a6
                  ori          a4, a7, 1095
                  bgeu         s8, tp, 783f
783:              bge          t5, s4, 794f
                  auipc        sp, 942843
785:              add          sp, ra, t4
                  slli         t3, a6, 29
                  and          a2, s9, t0
                  andi         s2, a2, -761
                  auipc        s5, 539895
                  srl          s7, s8, s2
791:              slli         a2, gp, 0
792:              lui          a0, 761558
                  xor          s1, ra, t1
794:              bltu         a1, s6, 805f
                  slli         a2, s8, 29
                  bge          a2, t1, 801f
                  auipc        t3, 462390
                  srl          a2, a7, t4
                  sll          t3, ra, t0
                  auipc        a6, 142513
801:              slli         s11, tp, 16
                  blt          tp, a5, 803f
803:              addi         sp, a2, -1043
                  sra          t1, t4, a1
805:              andi         t2, s7, -236
                  or           a6, s3, s3
                  slt          t6, a1, s11
                  and          s6, t3, tp
                  andi         t6, a4, -622
                  slt          s8, s2, a6
                  srli         s7, s9, 19
                  ori          ra, a1, 764
                  sub          t2, t3, s6
                  ori          t1, a2, 1955
                  beq          a6, a7, 816f
816:              slli         tp, a1, 31
                  beq          sp, s3, 834f
                  add          a4, s11, s8
                  sra          s6, s5, s10
                  lui          s6, 819067
                  sltiu        s4, a1, 108
                  bne          s10, t6, 834f
                  slti         t3, a3, -1906
                  bge          t5, t0, 830f
                  and          sp, s9, t6
                  lui          t2, 876763
                  blt          s8, zero, 838f
                  and          s4, t6, s4
                  lui          s2, 935322
830:              sra          zero, t4, s0
                  bgeu         a3, s3, 839f
                  xori         s6, s5, -991
                  blt          a5, a5, 843f
834:              and          t3, a0, s9
                  lui          zero, 970890
                  bltu         s11, s6, 852f
                  and          s4, t0, s1
838:              bne          s7, s0, 857f
839:              sltu         s0, s8, s9
                  sltu         a6, t3, a6
                  auipc        s8, 341544
                  sra          s1, a3, a0
843:              sub          sp, s2, a5
                  bne          gp, a5, 861f
                  xori         t2, s1, -36
                  xori         t3, a4, -189
                  lui          s10, 467189
                  srli         s4, s0, 13
                  srli         gp, ra, 12
                  ori          s4, s9, 1911
                  and          t2, s10, a7
852:              beq          s11, s3, 871f
                  nop
                  xor          t5, tp, a4
                  slti         gp, s3, 469
                  auipc        a0, 604566
857:              bge          s5, a3, 876f
                  srai         t3, t0, 12
                  andi         t2, zero, -1021
                  srl          t5, t1, s5
861:              sub          s11, ra, a2
                  slli         s2, s9, 6
                  slli         ra, t6, 28
                  slli         t3, a3, 7
                  bltu         a6, t3, 870f
                  xori         a0, ra, 1451
                  blt          a7, t1, 878f
                  xori         t5, a3, -507
                  bgeu         s8, a6, 870f
870:              sub          s8, zero, s10
871:              addi         tp, ra, -1083
                  sub          t4, s1, s6
                  addi         t1, t6, 1012
                  sub          s10, s10, a7
                  addi         a1, t0, -163
876:              nop
                  slt          a1, s8, s7
878:              and          s7, a5, a3
                  bne          t2, t3, 885f
                  bgeu         a0, t1, 889f
                  bne          a0, s2, 887f
                  ori          s2, s3, -165
                  sltu         a0, s10, s5
                  bge          t2, t4, 900f
885:              srai         s8, zero, 18
                  and          s11, a5, s1
887:              sra          sp, t6, s5
                  slli         s4, s11, 19
889:              and          t4, a3, t1
                  srli         t0, t4, 25
                  auipc        a7, 697950
                  sltiu        a0, a4, -124
                  nop
                  and          t5, t0, a6
                  addi         s0, a2, -1395
                  ori          s7, a4, 1043
                  sltu         t4, a1, s5
                  and          gp, s5, a4
                  la           s1, region_0+1738 #start riscv_load_store_rand_instr_stream_6
                  lbu          gp, 199(s1)
                  sltu         s5, t5, a4
                  sra          a4, s2, s9
                  lb           sp, 210(s1)
                  xori         ra, a7, -767
                  ori          tp, a5, 595
                  lbu          gp, -69(s1)
                  lui          s4, 344504
                  xor          a1, t4, s6
                  lbu          s5, 83(s1)
                  lhu          zero, -184(s1)
                  sw           s1, -42(s1)
                  sb           s1, -80(s1)
                  ori          a2, s3, -1731
                  add          a7, gp, a2
                  sb           s6, -141(s1)
                  ori          a0, s1, 1753
                  lui          gp, 370759
                  ori          a2, s3, 911
                  srai         s8, zero, 4
                  slli         sp, s0, 25
                  lb           a4, -85(s1)
                  sb           t3, 76(s1)
                  sra          s10, a0, a2
                  srli         s11, s6, 20
                  sb           a2, -101(s1)
                  xori         a1, s3, -89
                  add          t0, t0, s11
                  sltiu        sp, a3, -1733
                  sb           s1, 11(s1)
                  sra          s11, t4, t3
                  sb           a3, 137(s1)
                  sra          t6, t6, s3
                  sll          s0, s6, a1
                  lbu          t4, 133(s1)
                  sb           s4, -243(s1)
                  slli         t6, s6, 10
                  sb           s7, 34(s1)
                  sll          t5, a3, s2
                  lb           s0, 173(s1)
                  sll          a4, s10, s4
                  slt          s5, a1, zero
                  ori          t0, s9, -975
                  lbu          a4, -123(s1)
                  sb           s9, -249(s1)
                  lbu          a4, -125(s1)
                  ori          a3, t5, 686
                  sub          tp, a7, gp
                  slli         t2, a7, 3
                  lbu          s8, -157(s1)
                  lb           a7, -199(s1) #end riscv_load_store_rand_instr_stream_6
                  auipc        s11, 445892
900:              slt          tp, s8, s10
                  srl          t1, a6, t3
                  slti         t3, a6, -1603
                  beq          a0, a4, 918f
                  bne          t0, tp, 912f
                  bgeu         a4, t3, 911f
                  addi         t4, a2, 1501
                  srl          s1, t3, zero
                  or           s7, a2, zero
                  slli         t1, s5, 9
                  beq          s4, t3, 926f
911:              addi         t1, a7, 240
912:              sltiu        t5, ra, 2037
                  bgeu         a0, s11, 918f
                  srl          t3, s7, s1
                  or           a0, s0, sp
                  xori         zero, a4, 1758
                  beq          a3, sp, 931f
918:              ori          s6, a5, 571
                  blt          t3, t3, 931f
                  slt          t4, a6, ra
                  slli         s4, a2, 27
                  sltu         sp, s8, s5
                  slt          t5, ra, s8
                  srl          s11, gp, t3
                  ori          s7, s2, -1317
926:              and          s10, a2, t0
                  slt          a1, t0, zero
                  sra          s6, t2, t1
                  sll          a0, s6, t4
                  bne          s2, zero, 939f
931:              andi         t1, s4, 58
                  add          a0, t4, s8
                  blt          t3, s0, 942f
                  bge          t1, a3, 947f
                  or           s8, s3, s10
                  blt          a0, s4, 951f
                  slt          s7, tp, zero
                  sltiu        a0, t3, 1451
939:              bgeu         t3, a0, 953f
                  lui          t6, 1029271
                  xor          ra, t5, sp
942:              lui          s8, 17765
                  or           t4, t1, s3
                  slli         s0, s8, 8
                  addi         s8, zero, -810
                  srai         a1, a4, 24
947:              xori         s4, a3, 1572
                  srl          t6, s4, s2
                  sltiu        a4, a7, 1990
                  auipc        sp, 828416
951:              bltu         a3, a4, 962f
                  lui          t4, 677203
953:              bge          a5, a1, 970f
                  lui          t1, 493396
                  sltu         a0, s1, zero
                  add          s7, t0, a7
                  sll          zero, t2, t1
                  slli         t1, a2, 28
                  sltiu        t0, a7, 613
                  ori          a1, s1, 1117
                  bge          s8, s1, 969f
962:              lui          t1, 213071
                  bgeu         s9, t6, 969f
                  beq          s9, a3, 965f
965:              beq          t3, t2, 971f
                  beq          tp, s2, 972f
                  andi         a1, t1, 1340
                  ori          a1, tp, -161
969:              sll          a1, gp, s8
970:              bge          s6, s0, 986f
971:              andi         s5, t4, -728
972:              lui          sp, 947053
                  nop
                  xori         a1, s9, -519
                  bge          s9, a4, 994f
                  xori         ra, s7, -1390
                  lui          s10, 950588
                  srai         t6, a7, 11
                  or           a7, t0, tp
                  lui          a4, 39758
                  auipc        s6, 1035564
                  blt          ra, s10, 991f
                  beq          s7, s4, 984f
984:              bne          s7, tp, 1003f
                  srl          zero, s4, a3
986:              slli         a3, t4, 21
                  or           a2, a3, zero
                  sub          s1, s8, t3
                  bltu         a2, s11, 1008f
                  sltiu        s10, a2, -1867
991:              xori         gp, a3, -889
                  add          s10, s5, a6
                  slli         s1, s2, 23
994:              add          s8, s1, s1
                  nop
                  lui          s10, 364536
                  xori         a0, s3, 1311
                  add          s7, t5, s8
                  sra          s4, t1, a2
                  slt          a3, s5, s11
                  add          a4, s2, a1
                  beq          a1, s9, 1013f
1003:             andi         t6, t2, 784
                  bltu         s10, s7, 1020f
                  bge          s6, tp, 1014f
                  add          t4, s1, a4
                  bne          t0, t4, 1015f
1008:             xori         s0, ra, -1678
                  addi         sp, a1, 1775
                  xori         sp, tp, -1887
                  slli         t4, tp, 22
                  auipc        s0, 340490
1013:             sll          s4, a4, t6
1014:             srli         tp, s10, 5
1015:             andi         a6, t1, 1941
                  or           s11, s8, s7
                  sll          zero, a7, a7
                  xori         t3, t0, 1332
                  andi         s1, s0, 1202
1020:             xor          sp, a2, t4
                  srl          zero, zero, zero
                  slti         a0, t3, 1201
                  srl          t2, s0, s8
                  slt          ra, s1, s6
                  bgeu         a2, t5, 1037f
                  bge          gp, s0, 1039f
                  bgeu         s4, s5, 1044f
                  sltiu        tp, s8, -1806
                  andi         s7, a4, -1153
                  bltu         zero, s11, 1039f
                  srl          s10, t4, a6
                  sra          a7, s5, gp
                  sltu         zero, s11, s4
                  bgeu         s2, a1, 1040f
                  slt          t5, s3, s1
                  slti         s2, a2, 1127
1037:             slt          s2, s10, a1
                  slti         a3, a6, 1431
1039:             add          sp, a2, a2
1040:             ori          sp, a5, -602
                  nop
                  sub          s10, ra, sp
                  add          s5, s7, s10
1044:             blt          s7, t2, 1060f
                  sll          a2, a1, a5
                  slli         a4, a5, 25
                  lui          zero, 188724
                  or           s8, ra, t4
                  xor          zero, a7, t2
                  ori          gp, a4, -1030
                  bltu         s4, a6, 1056f
                  beq          a4, t4, 1053f
1053:             addi         s0, a0, 364
                  nop
                  sra          t5, s3, s9
1056:             and          t3, s3, tp
                  bgeu         t3, a7, 1062f
                  or           s6, t5, a4
                  xori         a6, t5, 1849
1060:             andi         s6, t2, -984
                  and          s11, a6, a0
1062:             blt          t1, tp, 1072f
                  sltu         t0, a2, a4
                  andi         a2, s5, 398
                  slt          ra, t6, t3
                  add          t0, a2, s11
                  blt          a3, t3, 1077f
                  lui          s8, 871787
                  nop
                  sub          ra, tp, s3
                  srli         t3, s9, 23
1072:             sra          t3, sp, gp
                  xori         t2, s4, -912
                  sltu         s11, s4, s11
                  beq          a3, a0, 1077f
                  andi         t4, gp, -356
1077:             srli         s0, a7, 7
                  sll          zero, ra, t0
                  slti         s8, t4, -694
                  add          s0, s3, gp
                  sltu         s10, t3, t6
                  and          a3, sp, s4
                  auipc        t2, 427921
                  lui          s5, 683385
                  lw           t1, 4(a5)
                  addi         a5, a5, 32
                  ori          t5, sp, -2021
1470:             addi x24, x6, 1
1470:             jalr x24, x24, 0
sub_3:            or           a2, ra, a6
                  bltu         zero, t4, sub_3_stack_p
sub_3_stack_p:    addi         a5, a5, -48
                  sltiu        a3, a5, -1219
                  sw           t1, 4(a5)
                  lui          tp, 43410
                  bgeu         t4, s9, 2f
                  lui          t6, 919926
2:                and          a2, t4, s4
                  slli         gp, t5, 16
                  beq          t0, s10, 6f
                  sub          a7, a4, t6
6:                sub          s0, gp, s2
                  add          sp, s3, t3
                  slt          zero, t1, zero
                  sub          a7, s4, a1
                  srl          s5, s1, a6
                  sra          zero, s3, gp
                  slt          s6, s0, s6
                  srai         t6, t4, 12
                  srl          a3, s6, t3
                  sltu         a2, s6, s8
                  sltiu        s6, ra, -1342
                  addi         t0, s8, -1732
                  add          s1, t6, s2
                  slti         sp, a7, -591
                  srl          sp, a3, t6
                  xor          tp, s5, s11
                  slli         a7, s7, 26
                  nop
                  add          t6, t2, s4
                  slli         a4, a3, 23
                  add          s1, s10, tp
                  sltu         s8, s5, t6
                  addi         s6, t2, 1557
                  bgeu         s9, gp, 46f
                  addi         s6, zero, 1331
                  bne          a4, t0, 43f
                  srli         s4, a4, 0
                  srai         s11, a3, 31
                  bne          s8, s4, 51f
                  nop
                  srli         ra, a7, 11
                  bne          s2, t6, 47f
                  slli         s7, t3, 26
                  ori          a2, a4, -52
                  lui          zero, 592069
                  xor          t2, t2, t2
                  bltu         gp, a4, 49f
43:               sra          s6, t5, s1
                  beq          t2, s3, 54f
                  ori          t1, a1, -799
46:               lui          a4, 679674
47:               xor          gp, a2, a6
                  bge          t0, a5, 64f
49:               srli         s5, ra, 30
                  xor          tp, t4, s5
51:               sub          a7, s4, a3
                  bge          t4, s5, 56f
                  beq          a3, s5, 67f
54:               slt          t4, s1, a4
                  add          s5, a3, a2
56:               sll          s1, t2, a6
                  sltiu        sp, t4, 1214
                  sltiu        s7, t1, 2041
                  blt          a2, a1, 67f
                  auipc        s1, 633844
                  srai         s0, a5, 15
                  bne          t2, s3, 80f
                  srli         zero, a6, 0
64:               beq          t1, t2, 71f
                  slt          a1, s0, s3
                  sra          a3, a5, s0
67:               addi         s7, s3, -1190
                  srai         t2, a7, 22
                  bne          t4, ra, 89f
                  sra          t1, t0, tp
71:               srli         t3, t4, 2
                  and          s8, a1, a1
                  bgeu         s9, zero, 92f
                  addi         s4, s2, -1282
                  sltu         t1, a2, s1
                  slli         t5, zero, 21
                  bltu         s6, s6, 80f
                  xori         sp, a3, 615
                  slt          s11, s8, t6
80:               xor          a6, t0, t2
                  lui          t6, 398008
                  beq          s10, s0, 86f
                  bltu         s4, s11, 88f
                  addi         sp, t5, 1799
                  ori          s8, a6, 1022
86:               slt          t5, a3, a6
                  bgeu         s0, s11, 92f
88:               slti         s7, t2, -1004
89:               xor          a2, a0, a5
                  bge          sp, a4, 97f
                  srl          s4, a7, a3
92:               beq          s0, s0, 98f
                  sll          s5, ra, s10
                  lui          t6, 62200
                  xor          gp, a5, s7
                  bne          t4, t0, 102f
97:               slli         s0, s9, 20
98:               bltu         t2, a5, 101f
                  xori         sp, s2, -2031
                  sub          a1, t3, gp
101:              slli         t6, s4, 30
102:              srai         s11, zero, 1
                  and          s8, s7, t5
                  sltu         tp, gp, s5
                  sll          a2, a0, s4
                  sltiu        s6, s0, -1513
                  sltu         s8, s9, t1
                  sltiu        gp, s6, 1908
                  srli         s8, s7, 13
                  srl          a6, gp, t1
                  slt          tp, t6, t4
                  sub          a1, s5, s5
                  la           sp, region_0+476 #start riscv_load_store_rand_instr_stream_0
                  lb           gp, -1(sp)
                  xori         s11, s9, -387
                  sh           s6, 4(sp)
                  lb           ra, -7(sp)
                  andi         s2, a5, 1168
                  sltu         s2, s8, t5
                  lh           s5, -16(sp)
                  lb           s1, -1(sp)
                  xori         gp, a1, 1546
                  srl          t0, a7, s0
                  lbu          t2, 13(sp)
                  sb           a1, 9(sp)
                  xor          tp, a1, a6
                  lhu          a7, -2(sp)
                  lh           a0, -10(sp)
                  addi         t5, t5, -1231
                  sra          t1, s0, a0
                  sltu         s0, zero, s9
                  lb           s11, 15(sp)
                  sh           a0, 10(sp)
                  and          t0, a1, t4
                  lbu          a2, 7(sp)
                  lhu          zero, -2(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         ra, s10, s5
                  add          tp, t0, s5
                  srai         t4, s8, 14
                  blt          s9, s10, 119f
                  addi         gp, t6, -1935
                  or           a7, a1, a2
119:              auipc        s10, 658194
                  srli         s0, gp, 27
                  bne          s7, a6, 124f
                  bge          a2, t6, 140f
                  srl          a1, s3, s3
124:              andi         s11, s3, -1145
                  srai         t4, s6, 20
                  add          t4, t4, t2
                  blt          a2, t1, 143f
                  add          t1, t1, t4
                  srai         s10, t4, 4
                  sra          t2, a6, sp
                  nop
                  sltiu        a3, a5, 379
                  bne          s5, a3, 138f
                  bge          a2, t2, 141f
                  or           t0, s6, t2
                  sltu         s4, s5, a3
                  addi         a0, t1, 1317
138:              nop
                  sltiu        a2, s3, 404
140:              ori          s0, s3, 1294
141:              sub          s11, t4, a7
                  xor          a1, s1, t0
143:              srai         s2, t3, 14
                  and          a7, s5, t0
                  andi         tp, a7, -1438
                  lui          s8, 1013908
                  andi         s4, s7, -566
                  addi         s7, t6, 872
                  sra          a6, t0, t2
                  nop
                  sll          gp, a2, a0
                  addi         t0, a3, 2005
                  bne          a7, s3, 163f
                  xor          a0, s5, t4
                  slli         t0, a2, 15
                  ori          ra, a6, 829
                  sll          a4, s10, s9
                  auipc        s11, 1024768
                  add          tp, s4, a6
                  srli         s6, s3, 12
                  bge          s3, sp, 164f
                  lui          t4, 47985
163:              slt          a4, a7, s0
164:              bltu         a2, a0, 170f
                  xori         a4, s2, -111
                  slli         a2, a0, 21
                  sra          s5, a5, s5
                  bge          gp, t1, 182f
                  srli         a0, a2, 29
170:              and          a3, ra, s3
                  xori         s1, t0, 1144
                  sra          s0, sp, s8
                  add          gp, t5, ra
                  or           s1, t5, s10
                  sra          a0, s6, ra
                  bne          s6, s5, 194f
                  slli         t3, s5, 4
                  srai         s4, s10, 11
                  nop
                  bne          t5, zero, 200f
                  bge          a2, a5, 198f
182:              beq          a2, t4, 187f
                  sltiu        s8, s1, -564
                  andi         a6, sp, 1408
                  srl          a3, t4, s4
                  xor          a6, a7, s9
187:              andi         s10, sp, -412
                  lui          s10, 455655
                  srli         t2, s7, 6
                  bgeu         t0, t1, 206f
                  beq          s8, a6, 209f
                  auipc        zero, 255030
                  bgeu         gp, s10, 200f
194:              lui          gp, 958760
                  auipc        a0, 506132
                  bgeu         s8, a5, 203f
                  sll          t6, t2, s3
198:              auipc        t4, 27980
                  lui          t1, 936843
200:              srl          a1, t3, t6
                  srl          s5, zero, t2
                  auipc        a1, 656094
203:              nop
                  slt          s11, t1, s6
                  sltiu        s4, zero, 676
206:              slti         a4, t1, -1867
                  bltu         s2, a0, 224f
                  blt          tp, s0, 211f
209:              sll          a6, t4, s1
                  lui          s7, 979357
211:              addi         gp, a0, -1474
                  bge          sp, s0, 214f
                  and          tp, a6, a3
214:              or           t1, s11, s5
                  blt          s7, a0, 222f
                  xori         tp, a4, 1347
                  andi         a7, t3, -610
                  bne          gp, s9, 222f
                  sub          s5, s11, s5
                  slli         a3, tp, 1
                  slt          s8, s5, tp
222:              xor          s6, a3, s4
                  sltu         s8, a3, s6
224:              or           a4, a2, t5
                  srli         s10, s11, 7
                  auipc        s1, 447675
                  slt          t2, a1, s7
                  nop
                  sub          a0, s4, s2
                  addi         a7, gp, -1731
                  sll          sp, s10, t2
                  beq          s0, s1, 236f
                  slt          t4, t3, a4
                  sub          t6, t4, s7
                  xor          t6, s5, s11
236:              sra          sp, s8, s3
                  srai         s6, sp, 19
                  xori         t5, a0, 1661
                  srl          t6, tp, s1
                  xor          t6, gp, s0
                  lw           t1, 4(a5)
                  add          t6, sp, a6
                  sltu         sp, t2, t6
                  or           zero, t3, a7
                  nop
                  sltiu        a7, sp, -697
                  addi         a5, a5, 48
                  slti         s10, s11, 34
279:              addi x2, x6, 0
279:              jalr x2, x2, 0
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
                  add x25, x15, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x20, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x20, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x20, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x20, x31, ecall_handler
                  li x31, 0x1
                  beq x20, x31, instr_fault_handler
                  li x31, 0x5
                  beq x20, x31, load_fault_handler
                  li x31, 0x7
                  beq x20, x31, store_fault_handler
                  li x31, 0xc
                  beq x20, x31, pt_fault_handler
                  li x31, 0xd
                  beq x20, x31, pt_fault_handler
                  li x31, 0xf
                  beq x20, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

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
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x15, x25, zero
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
                  add x15, x25, zero
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
                  add x15, x25, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x15, x25, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x15, x25, zero
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
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x15, x25, zero
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
