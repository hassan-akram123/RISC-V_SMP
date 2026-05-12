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
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 1
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0xa569297c
                  li x7, 0x0
                  li x8, 0x80d58b15
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x2c9742fc
                  li x12, 0xf8f64123
                  li x13, 0x80000000
                  li x14, 0xf0a399f9
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0x4
                  li x18, 0x7
                  li x19, 0xfaead4bf
                  li x20, 0xe
                  li x22, 0xf98e29d1
                  li x23, 0xf091aa4a
                  li x24, 0xa
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x1
                  li x29, 0x0
                  li x30, 0xb
                  li x31, 0x80000000
                  la x28, user_stack_end
main:             srli         s11, s0, 30
                  la           a0, sub_3
                  slli         t2, ra, 15
                  sub          t1, s1, a1
                  sll          s0, s4, a2
                  nop
                  addi         a0, a0, -67
                  auipc        s0, 252020
                  andi         t4, s11, 4
main_j3:          jalr         t5, a0, 67 #jump main -> sub_3
                  la           t5, region_0+966 #start riscv_load_store_rand_instr_stream_0
                  sh           s0, 836(t5)
                  addi         s4, s8, -1557
                  sltu         a7, t0, a3
                  sub          s6, a6, s4
                  lbu          ra, 711(t5)
                  lb           a2, -155(t5)
                  lb           a5, -527(t5)
                  srl          s6, t0, a2
                  srai         s11, t5, 1
                  sltu         s10, a0, t2
                  lbu          s9, 91(t5)
                  lhu          s1, 942(t5)
                  sub          a1, a3, t5
                  lui          t6, 260945
                  lui          gp, 680455
                  sra          a2, s0, a6
                  addi         sp, s11, -853
                  lui          t2, 651449
                  slt          s1, a2, s0
                  sub          a6, s6, t3
                  lbu          s11, -45(t5)
                  xor          a0, s5, t3
                  lbu          a1, -920(t5)
                  srli         t6, a6, 28
                  lbu          a4, 382(t5)
                  lb           s0, 414(t5)
                  srl          t1, a1, a7
                  sltu         gp, a0, a7
                  lbu          t4, -44(t5)
                  add          a1, sp, t3
                  lbu          a5, 666(t5)
                  or           s10, s4, sp
                  auipc        s1, 530269
                  nop
                  slt          a0, a6, ra
                  sh           s3, 986(t5)
                  sh           a1, 1030(t5)
                  lbu          tp, 693(t5)
                  lw           s10, -194(t5)
                  lb           s8, 727(t5)
                  sll          a1, a7, t1
                  ori          t6, tp, 672
                  srl          s8, s8, s4
                  lbu          a1, -107(t5) #end riscv_load_store_rand_instr_stream_0
                  sltiu        tp, zero, -1760
                  nop
                  addi         s10, a5, 36
                  andi         s8, s1, -441
                  xor          a0, s9, s5
                  addi         a6, s3, 1622
                  add          a1, zero, s7
                  la           a2, sub_1
                  addi         ra, a6, -1610
                  addi         a2, a2, 694
                  ori          s10, a3, -1402
                  sll          gp, sp, a1
                  or           t5, a1, sp
main_j1:          jalr         t5, a2, -693 #jump main -> sub_1
                  bne          s4, t1, 20f
                  xor          s3, t5, s0
                  slt          a0, gp, t4
                  slli         s3, s2, 7
                  add          a1, s5, s7
                  bge          s11, s8, 19f
                  srl          s4, t5, tp
                  srai         s3, a6, 28
                  add          gp, s0, t2
                  srl          s1, s2, s4
                  or           zero, s8, s1
                  add          s2, t3, a0
                  sll          s4, a3, a1
                  blt          ra, a1, 18f
18:               srai         tp, s4, 22
19:               bgeu         a6, a6, 30f
20:               ori          a5, gp, -747
                  slt          s8, s11, a3
                  ori          t5, a1, 826
                  slt          a3, a4, s10
                  beq          tp, tp, 41f
                  and          s6, tp, s6
                  srai         s2, t5, 17
                  addi         a2, s9, 328
                  srli         gp, s7, 13
                  bge          tp, a0, 39f
30:               xor          a0, t4, a6
                  sll          t2, s1, t6
                  slli         a6, sp, 6
                  lui          t2, 143000
                  sra          s9, s11, sp
                  nop
                  sltiu        a3, s7, 1546
                  lui          tp, 568670
                  blt          s2, a0, 57f
39:               srl          a7, sp, t3
                  xor          s2, t4, ra
41:               lui          a1, 667152
                  bne          gp, a0, 57f
                  bne          s3, t6, 54f
                  add          a1, a6, a3
                  andi         gp, a6, 998
                  sra          s0, s11, a1
                  sll          s6, ra, t2
                  sub          a0, s6, ra
                  sra          a4, t0, t1
                  and          a5, s11, a1
                  sub          s9, gp, s1
                  srli         s11, a0, 24
                  and          a6, s9, t6
54:               blt          t6, t6, 58f
                  blt          gp, s2, 70f
                  sltu         s4, zero, sp
57:               sltiu        a1, sp, 1413
58:               add          s2, a6, tp
                  blt          s9, s9, 63f
                  or           a7, zero, s0
                  andi         s0, t5, 1279
                  slti         s6, t3, -1337
63:               xori         a3, a7, 328
                  xori         s10, t5, -1946
                  blt          s6, s3, 78f
                  bge          t3, s0, 84f
                  sltiu        a4, gp, 1692
                  srli         s3, s6, 9
                  blt          a5, a5, 84f
70:               ori          tp, s11, 509
                  add          a7, t3, s2
                  xor          sp, a1, a4
                  andi         tp, s0, 2036
                  auipc        s3, 858592
                  srai         a3, a0, 31
                  sltu         s2, s10, s0
                  auipc        s0, 126826
78:               srl          a1, s8, a7
                  ori          gp, a2, 629
                  bgeu         s5, a4, 97f
                  and          s9, tp, a5
                  auipc        s9, 275719
                  slti         t0, s0, 892
84:               and          t0, tp, s0
                  nop
                  srai         tp, s11, 11
                  sltiu        t1, t0, -607
                  srl          s3, s4, s4
                  sra          a5, t2, t6
                  srl          a5, s5, a2
                  lui          tp, 518765
                  la           a7, sub_1
                  sltiu        zero, s0, -1748
                  auipc        a2, 514538
                  xori         a1, s1, -1787
                  auipc        a4, 102563
                  addi         a7, a7, -701
                  bgeu         tp, s3, main_j2 #branch to jump instr
                  or           s9, t0, s3
main_j2:          jalr         t5, a7, 702 #jump main -> sub_1
                  or           ra, s4, t5
                  nop
                  bge          s9, t1, 104f
                  srli         s0, a5, 1
                  andi         t4, s11, 168
                  ori          a0, a1, -1138
97:               blt          a4, s5, 104f
                  srli         a1, s2, 27
                  beq          a5, t4, 115f
                  add          zero, s2, t4
                  nop
                  sra          a5, t0, a5
                  addi         a6, s9, 2021
104:              nop
                  slli         a7, t5, 31
                  srl          s9, s6, s2
                  bltu         t4, a1, 121f
                  addi         t4, a5, 350
                  xor          t0, t2, tp
                  slli         sp, t3, 0
                  la           a0, sub_2
                  and          a7, t0, t0
                  slli         s11, a1, 16
                  addi         a0, a0, 981
                  add          s3, a1, s11
                  xori         tp, s2, 1306
                  bge          s2, a6, main_j4 #branch to jump instr
                  lui          s0, 438666
                  slti         ra, a4, 1709
main_j4:          jalr         t5, a0, -981 #jump main -> sub_2
                  srl          t5, t4, a1
                  srai         s11, s1, 30
                  sll          s9, t2, a4
                  sltu         s10, t0, t3
115:              xori         s3, zero, -1047
                  andi         t4, a0, -2009
                  srai         t4, s11, 29
                  andi         t1, sp, 341
                  srai         t2, gp, 6
                  xori         sp, a4, 906
121:              add          a0, a0, a2
                  bge          s5, s2, 138f
                  sltiu        tp, t5, -534
                  blt          s10, t0, 143f
                  sll          a5, gp, t4
                  bne          a7, a5, 140f
                  xori         t4, s0, -1956
                  nop
                  srl          t5, ra, gp
                  bge          a1, s6, 137f
                  blt          a6, ra, 143f
                  bge          s11, s0, 144f
                  lui          s1, 1036067
                  bge          sp, s6, 137f
                  blt          a7, t4, 147f
                  sltu         s6, s4, s2
137:              or           a5, a2, sp
138:              add          a0, t4, gp
                  beq          t6, t0, 149f
140:              srl          a3, s8, a4
                  andi         t6, t2, -1783
                  blt          t1, s6, 153f
143:              auipc        s11, 1042920
144:              nop
                  andi         s10, t6, 1563
                  and          t6, s7, a1
147:              sub          t5, t2, zero
                  slti         a7, s10, 518
149:              andi         s3, a5, -1872
                  blt          s8, s2, 163f
                  beq          t4, a4, 152f
152:              and          a7, t0, t0
153:              lui          t2, 138393
                  ori          a5, sp, -1283
                  bltu         s3, ra, 165f
                  ori          t2, a2, -443
                  bge          s9, s6, 176f
                  srli         t4, s5, 13
                  srli         s9, t1, 5
                  slti         gp, s6, -1417
                  nop
                  slti         t4, s4, 602
163:              sub          zero, a4, a7
                  srai         gp, a2, 20
165:              slt          s1, t2, t4
                  andi         t6, t6, 1180
                  sll          s10, s4, s1
                  slli         s3, zero, 1
                  and          s9, t1, t1
                  andi         s11, a3, -146
                  sltiu        s3, a5, -1214
                  sltu         a3, s1, s7
                  auipc        sp, 275166
                  srai         s10, s1, 26
                  blt          a7, s7, 187f
176:              sll          zero, a5, a7
                  srl          tp, gp, s8
                  srli         t1, a4, 20
                  andi         t4, t1, -618
                  slti         s10, a5, -1809
                  bne          a3, s0, 188f
                  nop
                  auipc        s1, 567476
                  lui          t0, 721262
                  lui          a2, 791052
                  slli         s6, zero, 5
187:              bge          s1, s9, 197f
188:              bne          s5, s6, 200f
                  xor          s11, ra, t3
                  addi         t5, s5, -1476
                  sltu         s4, s4, a1
                  sltu         a3, a6, sp
                  bne          s8, sp, 211f
                  beq          a5, t5, 210f
                  slt          a5, a3, t5
                  lui          s3, 364851
197:              sltu         s11, a3, s10
                  srli         a0, s8, 25
                  slt          t6, t6, t4
200:              nop
                  auipc        t6, 647197
                  slti         sp, t6, -1211
                  sltiu        t1, t2, 476
                  and          s1, a0, gp
                  slt          ra, s1, t3
                  add          ra, a2, s1
                  srl          tp, a5, s1
                  or           s10, a7, tp
                  auipc        a0, 880878
210:              sll          tp, s3, s6
211:              sra          zero, s3, t3
                  sub          s10, s10, zero
                  xori         s1, a1, -2048
                  slli         sp, s7, 20
                  addi         s0, a5, 1067
                  bltu         a5, s8, 227f
                  nop
                  slti         t6, s8, 436
                  slt          t2, s3, s3
                  srli         s9, s8, 14
                  sltiu        t0, s11, -1102
                  bltu         a6, s3, 231f
                  xor          t1, a1, s7
                  and          gp, s1, a4
                  xori         ra, s8, 1250
                  add          t6, t6, s2
227:              ori          s3, s4, -1117
                  bgeu         gp, a6, 231f
                  lui          s0, 598535
                  sll          s9, t6, a1
231:              addi         t0, t6, 248
                  la x23, test_done
                  jalr x0, x23, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi         a3, ra, -893
                  addi         t3, t3, -56
                  srai         s10, a2, 17
                  sw           t5, 4(t3)
                  lui          a7, 33456
                  add          sp, t5, s1
                  and          s0, s2, s4
                  la           sp, region_1+1322 #start riscv_load_store_rand_instr_stream_1
                  xor          t1, a1, t5
                  xori         s8, s9, 1065
                  lb           zero, 79(sp)
                  srl          tp, t4, a0
                  ori          s6, zero, -1618
                  srai         a7, t5, 29
                  sra          a7, tp, s0
                  auipc        a1, 1029968
                  sub          s1, t6, t4
                  lb           t4, 29(sp)
                  sra          gp, a6, a6
                  lui          gp, 417265
                  lbu          t4, 59(sp)
                  lui          ra, 1011786
                  sub          a2, a0, s11
                  sb           t1, -253(sp)
                  sra          s2, sp, s2
                  lb           a3, -35(sp)
                  sub          a5, a7, tp
                  sub          t6, a1, a2
                  lhu          s8, -176(sp)
                  addi         s11, t2, 1656
                  sll          t5, gp, s2
                  sb           gp, -3(sp)
                  nop
                  lb           a1, 130(sp)
                  andi         a0, s11, 299
                  lb           ra, 247(sp)
                  addi         a2, s7, 50
                  srl          t6, gp, s1
                  lbu          s4, 141(sp)
                  sb           t2, 138(sp)
                  lbu          a4, 98(sp)
                  sw           t4, -250(sp)
                  ori          zero, t6, 1826
                  xor          t5, s3, s4
                  slt          a6, zero, t3
                  lh           t5, -134(sp)
                  sltu         s3, a7, gp
                  slli         s10, t4, 23
                  lb           s9, 108(sp)
                  sll          gp, s11, a0
                  lb           s0, -45(sp)
                  slli         s4, s3, 18
                  auipc        t2, 261432
                  lhu          t6, -174(sp)
                  andi         s10, t4, -1458
                  lbu          a7, -168(sp)
                  lh           a5, -180(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a4, region_1+1487 #start riscv_load_store_rand_instr_stream_0
                  sltiu        s8, t2, -132
                  lb           t2, -225(a4)
                  sb           ra, 34(a4)
                  sltiu        t6, a5, -1065
                  andi         gp, s2, 1941
                  lh           a6, -95(a4)
                  slt          s9, t1, t4
                  lb           a1, 206(a4)
                  lb           sp, -67(a4)
                  sb           s10, -149(a4)
                  sra          s8, s10, s7
                  lh           s8, 59(a4)
                  sra          zero, a7, s7
                  slt          tp, t1, s0
                  lb           t6, 95(a4)
                  sll          a0, t4, t2
                  lh           s2, -149(a4)
                  lb           s11, 204(a4)
                  sltu         t2, t5, a4
                  slli         t1, gp, 31
                  sltu         a7, a7, a0
                  or           tp, a6, a2
                  andi         t6, s0, -2031
                  add          t5, s6, zero
                  lb           s8, 240(a4)
                  sub          ra, t2, s2
                  lbu          t0, 180(a4)
                  ori          s8, s6, 82
                  sh           zero, 117(a4) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_1+1766 #start riscv_load_store_rand_instr_stream_3
                  sb           t1, 145(ra)
                  lbu          s8, -109(ra)
                  slt          t4, s8, a2
                  sb           s1, -179(ra)
                  sra          a0, t5, a2
                  sh           a0, -144(ra)
                  sb           s3, -28(ra)
                  sra          a1, ra, s5
                  xor          s2, t3, a6
                  sb           sp, 149(ra)
                  lbu          s10, 45(ra)
                  srli         t6, s4, 18
                  sll          s6, t4, s5
                  sw           t3, 14(ra)
                  sub          t5, s1, s0
                  lb           zero, -177(ra)
                  lbu          a2, -192(ra)
                  sh           t5, 216(ra)
                  lb           t5, -94(ra)
                  sll          a1, sp, s1
                  lui          t5, 31549
                  lbu          s9, 229(ra)
                  add          s10, t1, a6
                  addi         a6, s1, 529
                  lb           sp, -251(ra)
                  xori         s4, t0, -734
                  lh           t2, 118(ra)
                  lb           t0, 81(ra)
                  sb           t2, -223(ra)
                  sltu         t1, a3, a6
                  xori         a4, zero, -1366
                  xor          sp, a3, a1
                  or           s8, t0, t5
                  srai         s0, a0, 7
                  sltiu        s3, t2, -599
                  lb           sp, 24(ra)
                  sb           t3, -188(ra)
                  lb           a2, 73(ra)
                  lhu          s6, -234(ra)
                  sh           a5, -214(ra)
                  sb           a7, 51(ra)
                  and          a3, s0, t4
                  lhu          a7, 42(ra)
                  sb           s5, -133(ra) #end riscv_load_store_rand_instr_stream_3
                  bne          ra, s8, 12f
                  bge          gp, s8, 4f
                  sltu         s8, t5, s6
                  add          t2, t0, t1
4:                slti         sp, a5, -913
                  auipc        t2, 420339
                  sltiu        gp, s11, -1484
                  slti         a2, s6, 581
                  beq          s10, s10, 27f
                  xor          t0, a7, s1
                  ori          t1, t4, -125
                  ori          t4, t4, -825
12:               srli         t6, s7, 30
                  sll          ra, s5, t2
                  beq          t1, s0, 31f
                  sltiu        a6, s2, -487
                  bltu         a1, t4, 30f
                  or           a1, sp, t4
                  bltu         a1, t4, 28f
                  slti         s3, a5, 769
                  beq          zero, s11, 25f
                  xor          a2, s7, t6
                  sll          a7, s8, s3
                  srai         s1, a2, 5
                  or           t2, s4, s11
25:               sra          a2, a3, tp
                  sub          t5, sp, a7
27:               srl          t4, t4, t5
28:               slt          t1, a7, s4
                  bne          a2, t6, 37f
30:               addi         a2, t3, 2032
31:               srli         t5, zero, 21
                  bgeu         s2, s2, 40f
                  srai         t4, s10, 5
                  sra          a5, s9, a3
                  xori         s4, t3, 1362
                  add          t1, zero, t4
37:               andi         a7, t2, -662
                  sll          t1, a2, s0
                  sll          a3, a3, gp
40:               slti         s10, t1, 1650
                  addi         s3, a3, 863
                  nop
                  srai         s10, a0, 26
                  nop
                  nop
                  sub          a6, s2, a1
                  srai         gp, s9, 12
                  slt          s3, s6, t2
                  sltiu        t1, t6, -1954
                  srl          t5, t4, t3
                  bgeu         t2, s6, 60f
                  sltiu        a5, t1, -991
                  srl          s3, t3, s11
                  andi         t0, a5, 2009
                  sltiu        t2, t4, -183
                  sltu         s1, t1, t1
                  sltiu        gp, sp, 572
                  add          s9, t2, s8
                  srl          sp, t1, a7
60:               slli         s0, zero, 5
                  bgeu         a2, t5, 79f
                  xori         t4, zero, 1330
                  sll          s0, sp, a6
                  sub          tp, t4, s0
                  and          tp, s0, t5
                  slt          a0, s2, s5
                  sub          s0, s8, a1
                  sltiu        a1, s11, 1717
                  sub          s3, s1, s3
                  slli         a0, zero, 14
                  bgeu         s0, t0, 73f
                  blt          a7, sp, 90f
73:               sltiu        s2, sp, 1238
                  sub          sp, s4, s1
                  auipc        sp, 270425
                  srai         a0, a2, 19
                  sub          s1, t2, s5
                  auipc        s6, 1004261
79:               sub          gp, s7, ra
                  blt          t1, a6, 94f
                  ori          sp, ra, 1202
                  sra          tp, s3, s2
                  bne          s2, s8, 98f
                  slli         s10, ra, 22
                  addi         t1, s1, -1796
                  xor          a5, t3, s8
                  sub          t0, a0, s6
                  bge          t4, a7, 97f
                  sltiu        t6, ra, 93
90:               addi         a3, a4, -1469
                  xori         s0, s3, -973
                  bltu         a6, a6, 98f
                  sub          s11, s4, a3
94:               bne          s4, s0, 104f
                  auipc        s1, 503734
                  beq          a0, s2, 116f
97:               and          sp, tp, a1
98:               andi         s4, sp, 846
                  slti         a5, t4, -1672
                  andi         s6, a4, -1166
                  sub          sp, s10, t0
                  sub          s10, s6, s4
                  nop
104:              slti         s8, s11, -911
                  srl          zero, t2, t6
                  add          s10, a4, t3
                  xor          a1, a1, s3
                  addi         s8, s3, -1617
                  bne          s2, a2, 111f
                  srli         s2, tp, 17
111:              add          a5, a0, s7
                  xori         a2, ra, 1938
                  blt          s11, s9, 127f
                  slli         s10, t0, 22
                  bgeu         a1, a7, 117f
116:              sltu         a5, tp, t5
117:              nop
                  andi         s11, s8, -1518
                  sltiu        s0, a4, 227
                  addi         s8, t0, 1883
                  lui          s4, 875629
                  add          s9, s10, s9
                  sra          a0, sp, ra
                  sra          s4, gp, t5
                  beq          t5, s3, 134f
                  srai         s10, s2, 28
127:              slli         t4, t2, 20
                  srl          s0, a7, sp
                  xor          ra, s4, a3
                  sll          ra, t0, gp
                  slti         a6, sp, 1848
                  nop
                  auipc        a3, 635032
134:              srl          s2, s9, t6
                  nop
                  blt          s6, s7, 138f
                  slti         gp, s0, 628
138:              nop
                  add          s11, a3, s8
                  bne          s10, sp, 149f
                  slt          t1, s7, s0
                  and          a6, a3, tp
                  bgeu         s0, t2, 158f
                  sub          sp, s11, t3
                  xor          s2, s5, t1
                  sra          tp, zero, t4
                  nop
                  srl          a7, s10, s7
149:              and          s6, s5, gp
                  srai         t1, tp, 6
                  auipc        a4, 217571
                  bge          s2, s7, 158f
                  bltu         s7, t0, 163f
                  slti         t2, s0, -1342
                  bge          s1, t5, 166f
                  sltu         s3, a1, zero
                  add          a0, sp, a4
158:              andi         s10, a2, 413
                  srl          tp, s1, tp
                  beq          s6, s10, 171f
                  bltu         s4, s0, 181f
                  srai         a1, t5, 18
163:              sra          a2, t4, s7
                  bltu         a0, t2, 175f
                  bltu         a6, tp, 170f
166:              add          s11, a7, s4
                  blt          a0, a5, 176f
                  lui          s8, 665575
                  or           t0, sp, a3
170:              srli         t1, a5, 21
171:              blt          t1, a6, 185f
                  bne          s11, s10, 174f
                  sltiu        s4, s11, 121
174:              slti         a6, s1, -729
175:              add          gp, t5, a0
176:              or           t4, a5, s2
                  bltu         zero, zero, 186f
                  auipc        sp, 833508
                  slti         t4, a5, 1278
                  bltu         a1, tp, 191f
181:              bne          zero, a7, 190f
                  xori         sp, s10, 1746
                  sltu         a7, t5, s4
                  slli         s1, t0, 1
185:              beq          a5, ra, 191f
186:              add          t5, sp, t4
                  sltiu        s11, t2, 127
                  andi         a0, t5, -517
                  andi         tp, t2, -1035
190:              bltu         sp, a3, 199f
191:              sra          s6, a5, a7
                  srai         gp, s11, 5
                  nop
                  slli         t2, t2, 28
                  sra          a2, a0, s3
                  ori          tp, a1, -1136
                  sll          t0, t1, s9
                  sltiu        s2, tp, -1036
199:              lui          t6, 285508
                  slti         s6, a1, 175
                  beq          s6, t4, 211f
                  bgeu         s0, zero, 208f
                  bge          s4, a3, 211f
                  srai         a1, a3, 13
                  bltu         s7, a6, 220f
                  slli         s2, a7, 8
                  bgeu         zero, a1, 225f
208:              ori          s3, tp, -746
                  bltu         zero, t1, 226f
                  bltu         a5, ra, 220f
211:              srli         t1, s7, 21
                  ori          s11, s9, -810
                  auipc        t5, 263353
                  ori          a0, a0, 1621
                  slli         s11, a2, 15
                  sub          s11, ra, a7
                  bne          s8, s1, 220f
                  sub          t2, tp, zero
                  beq          s2, a7, 234f
220:              sltiu        s9, sp, 301
                  and          a7, a1, a5
                  bgeu         a4, gp, 236f
                  beq          a5, a1, 231f
                  slt          tp, a1, s6
225:              sll          tp, t4, t1
226:              ori          s1, a3, -753
                  bge          zero, t1, 245f
                  ori          a7, a0, 1858
                  slli         s6, s8, 24
                  bne          s4, a3, 232f
231:              andi         a5, s8, 455
232:              slli         s2, a7, 25
                  sltiu        s3, s9, -1938
234:              nop
                  lui          s9, 224574
236:              and          zero, sp, s6
                  lui          a3, 846960
                  bgeu         t3, a5, 248f
                  srai         a3, s7, 18
                  add          t5, a1, a0
                  or           a4, a0, a3
                  beq          s2, a4, 254f
                  sltu         gp, t1, s1
                  bgeu         a6, a7, 258f
245:              add          t1, a0, s10
                  bgeu         gp, s2, 265f
                  sll          a0, s9, sp
248:              sltiu        t5, s11, -780
                  slti         a4, ra, -934
                  and          a1, s10, t4
                  srl          s9, s3, a0
                  slt          s10, t2, a0
                  slt          sp, s8, a5
254:              sltiu        s10, sp, 1402
                  auipc        a0, 842538
                  blt          s9, a5, 258f
                  andi         s1, gp, -866
258:              slli         t4, a2, 14
                  or           s1, a1, a4
                  sra          a1, s4, a4
                  srli         a2, t0, 0
                  bge          s3, s6, 264f
                  srl          a6, s3, t3
264:              xori         tp, a4, 984
265:              sll          s4, s8, t5
                  sll          t6, t3, s4
                  or           t5, s9, t0
                  xori         t4, a7, -803
                  slli         a3, t2, 6
                  ori          t2, a2, 9
                  auipc        s8, 485663
                  slti         a2, s6, -11
                  blt          t6, t2, 282f
                  srli         t1, a2, 14
                  bge          ra, a0, 281f
                  addi         s1, s6, -1162
                  srli         a1, s10, 27
                  ori          a4, a2, -134
                  sra          zero, a6, a1
                  srai         a2, s3, 13
281:              slti         a0, s7, -1740
282:              or           a6, t2, s6
                  add          a4, a5, a7
                  sub          s9, t4, s3
                  bltu         s5, a7, 287f
                  nop
287:              srai         s0, t1, 24
                  auipc        t4, 141205
                  nop
                  ori          t2, s0, 522
                  lui          a2, 1025287
                  sltu         t0, s10, a3
                  slli         s0, ra, 16
                  add          gp, sp, s2
                  bgeu         a4, t2, 303f
                  or           a6, s1, s5
                  andi         a2, t2, 1649
                  and          a0, t3, sp
                  slli         tp, sp, 25
                  slti         a2, tp, 1521
                  blt          t5, s4, 310f
                  bgeu         s7, s8, 316f
303:              bne          s10, a1, 323f
                  xori         t1, s10, -1114
                  andi         t5, tp, -353
                  srli         t1, sp, 20
                  sll          a7, t0, zero
                  slti         t0, a0, 1808
                  andi         t2, t1, 1167
310:              xori         a3, s5, -841
                  and          a6, a0, t1
                  add          sp, sp, s6
                  and          a5, a1, s4
                  srl          a7, a0, t2
                  lui          t0, 83768
316:              nop
                  sltu         a3, t5, s0
                  sub          ra, sp, t0
                  bge          t5, a4, 329f
                  slli         s6, t1, 2
                  bne          s9, t1, 330f
                  bltu         t5, s8, 325f
323:              slli         a7, t4, 10
                  lui          s0, 359486
325:              addi         gp, tp, -221
                  xor          s3, gp, sp
                  auipc        a0, 129351
                  blt          a3, s4, 346f
329:              srli         s0, gp, 4
330:              or           a4, a6, a1
                  xori         a7, t2, -149
                  sra          s10, a5, t1
                  xor          t5, a5, t0
                  add          tp, zero, a1
                  andi         t0, s2, 303
                  slt          t0, s4, a2
                  sll          ra, a6, a3
                  ori          t6, a4, 1536
                  sltiu        gp, t0, 1466
                  la           tp, region_0+1380 #start riscv_load_store_rand_instr_stream_2
                  lh           t4, -14(tp)
                  sb           t4, 4(tp)
                  slli         t6, s4, 16
                  or           t1, t0, t4
                  lb           t6, -9(tp)
                  sh           s4, -2(tp)
                  lhu          s9, 14(tp)
                  slt          a7, t1, t6
                  sltu         t5, s7, s5
                  sb           t0, -16(tp)
                  ori          a0, t6, -2030
                  lhu          s8, 14(tp)
                  lb           a5, 1(tp)
                  sll          t4, t0, s0
                  slti         a0, t2, -263
                  lbu          s8, 10(tp)
                  lb           s9, 12(tp)
                  lb           a2, -16(tp)
                  lui          a1, 409531
                  lb           a5, -1(tp)
                  sltu         t1, zero, s2
                  srli         s9, s11, 24
                  lbu          t6, 3(tp)
                  sb           t2, -11(tp)
                  lbu          a1, -8(tp)
                  andi         zero, s8, -1582
                  lhu          sp, 10(tp)
                  srl          s1, s4, a2
                  add          t1, a3, t6
                  or           s10, a7, t5
                  lbu          t1, 10(tp)
                  sb           s11, -13(tp)
                  lh           a2, 2(tp)
                  lh           gp, 12(tp)
                  lw           s3, -4(tp)
                  sb           gp, -9(tp)
                  auipc        a3, 646917
                  lhu          s4, 8(tp)
                  sw           s8, 12(tp)
                  andi         a7, s11, -1190
                  lb           t2, 12(tp)
                  lhu          t2, -12(tp)
                  lbu          a1, -7(tp)
                  slli         t0, t1, 24
                  srai         s1, a4, 13
                  lbu          sp, 9(tp)
                  srai         s11, t0, 13
                  sltu         t5, ra, a3
                  addi         a0, s10, 197
                  xor          a5, a3, s11
                  lb           s2, 1(tp)
                  sb           sp, -12(tp) #end riscv_load_store_rand_instr_stream_2
                  xori         a3, t5, -1046
                  srai         ra, s5, 4
                  andi         s1, sp, 1282
                  auipc        a6, 158731
                  lui          t4, 671215
                  sltiu        t1, s6, 900
346:              nop
                  sub          a7, s4, s8
                  srli         s1, t3, 13
                  lui          t5, 577150
                  bltu         t5, a2, 352f
                  srli         t1, a2, 14
352:              xor          s3, s0, a1
                  bne          a4, a3, 372f
                  srli         a7, t2, 23
                  auipc        s1, 567357
                  bge          tp, zero, 366f
                  slli         a7, a3, 14
                  and          s2, s3, t5
                  slt          s9, s10, a6
                  bgeu         s4, zero, 374f
                  or           tp, gp, a2
                  blt          t0, s3, 364f
                  and          a1, t4, zero
364:              ori          s0, s0, -706
                  or           s9, t5, t4
366:              andi         t0, s8, 618
                  srai         tp, s7, 2
                  addi         t0, s11, 1972
                  sltiu        a1, s0, 1394
                  slt          a1, a6, s6
                  add          s10, s4, s3
372:              auipc        s9, 443821
                  srai         s0, s8, 5
374:              addi         t1, t2, -1393
                  blt          s4, t5, 383f
                  ori          a2, a2, -545
                  sltiu        s0, t3, -987
                  bge          a4, a7, 393f
                  blt          sp, a3, 390f
                  srl          tp, s3, s9
                  bgeu         zero, t4, 392f
                  nop
383:              srai         tp, a1, 1
                  sltu         sp, t5, a5
                  lui          a5, 695294
                  sltu         t0, t1, a5
                  srai         a2, a4, 19
                  sltu         t6, ra, t6
                  ori          s2, t0, -1527
390:              sub          t5, t6, s8
                  bne          a2, gp, 400f
392:              sltiu        t1, s2, 3
393:              ori          s9, sp, 1018
                  auipc        s8, 886381
                  bne          s2, t6, 397f
                  sltiu        a2, t6, 624
397:              xori         ra, t3, -779
                  sra          t0, t0, s0
                  srl          zero, s0, ra
400:              beq          t0, a4, 417f
                  sub          s2, t4, zero
                  sra          t4, a3, s0
                  xori         s4, s2, -1028
                  ori          s11, t3, 1960
                  srli         t1, s9, 20
                  addi         s9, t1, -1000
                  beq          a5, ra, 425f
                  slt          s10, s5, s4
                  andi         s8, t0, 1854
                  slti         s2, t2, 763
                  sra          s3, s8, gp
                  bltu         s10, s2, 422f
                  beq          a4, s7, 427f
                  lui          gp, 80285
                  or           s1, sp, ra
                  bltu         t1, s8, 421f
417:              or           s4, t5, a5
                  srli         t4, s10, 14
                  beq          a1, a6, 434f
                  xori         a3, t2, -1644
421:              sltu         s8, a2, s7
422:              addi         zero, s4, -1462
                  bgeu         s2, a0, 429f
                  bne          a1, s3, 436f
425:              sltu         s6, a5, s2
                  srai         s8, t0, 24
427:              ori          t6, a1, 1157
                  addi         s11, t5, 997
429:              slli         t4, t6, 20
                  xor          a6, a2, a6
                  sltiu        a5, a1, 1150
                  xori         t4, gp, 338
                  slt          a3, t6, t2
434:              srli         a5, a2, 4
                  ori          s1, a4, 480
436:              bgeu         sp, a7, 445f
                  srli         a1, a4, 2
                  slti         t1, s4, 542
                  slli         s8, a5, 16
                  blt          gp, s8, 454f
                  andi         gp, a2, -1324
                  xor          s8, t2, a3
                  andi         s1, s9, 1697
                  and          ra, a4, s11
445:              srli         a1, a6, 17
                  andi         sp, s7, -1672
                  srai         t6, s1, 3
                  xori         s0, a4, 614
                  xori         gp, t6, -608
                  bltu         a7, a2, 458f
                  sll          a6, sp, s1
                  sra          s0, a0, s8
                  or           tp, gp, s0
454:              srli         gp, a1, 2
                  bgeu         sp, a0, 457f
                  xori         s0, s8, 349
457:              bltu         t3, a5, 467f
458:              bge          s1, a1, 472f
                  nop
                  srai         s0, a0, 24
                  srai         zero, t1, 16
                  add          t2, t2, s5
                  add          t5, s7, tp
                  nop
                  xori         zero, t4, 467
                  blt          t4, sp, 472f
467:              bge          s2, a4, 481f
                  and          a0, s3, s5
                  sub          a2, s8, s7
                  lui          ra, 173343
                  sub          tp, s1, a2
472:              auipc        t6, 159109
                  bge          t2, a5, 483f
                  slti         a6, s2, 720
                  xori         s8, s7, 330
                  srai         s1, t3, 2
                  bne          t4, gp, 485f
                  blt          ra, s10, 487f
                  and          s9, a2, s4
                  sra          s2, t4, a2
481:              addi         t4, s5, -1982
                  xor          s8, t6, s10
483:              sltu         sp, s4, a7
                  nop
485:              sra          a3, t6, s7
                  or           a1, a1, gp
487:              slti         s0, a5, -181
                  sra          t2, a0, a0
                  xor          tp, t6, s11
                  srai         a1, s3, 15
                  add          s10, t5, s2
                  bgeu         s9, t1, 503f
                  sra          t5, s7, s2
                  sltu         s4, t2, zero
                  add          t6, zero, s5
                  bne          t0, t2, 508f
                  addi         s11, t6, 530
                  slli         s10, a2, 11
                  slti         s3, t5, 730
                  sll          s3, t0, a2
                  srl          gp, s0, t5
                  nop
503:              slti         s11, a0, -113
                  blt          s7, t2, 506f
                  srli         t1, s5, 25
506:              bltu         t1, a0, 515f
                  bgeu         a6, a2, 516f
508:              sltiu        s0, sp, 1915
                  srai         s1, s7, 19
                  nop
                  and          a5, t5, a2
                  nop
                  srl          s4, t2, t5
                  sub          a3, ra, zero
515:              add          s2, s4, s1
516:              bgeu         ra, a5, 519f
                  slli         a0, ra, 26
                  beq          s1, t6, 533f
519:              beq          t2, s7, 521f
                  xor          a6, tp, s4
521:              blt          s3, s10, 526f
                  srai         t2, t1, 22
                  srl          a6, t3, t1
                  sra          s6, a4, t1
                  xori         a4, a5, 1989
526:              blt          a2, s9, 536f
                  xor          a7, a3, s1
                  ori          s11, a0, -1975
                  beq          ra, ra, 546f
                  add          s6, ra, s11
                  add          a1, t3, t2
                  lui          zero, 304321
533:              blt          t5, zero, 535f
                  add          s4, s5, ra
535:              xori         t2, s1, -1105
536:              slli         ra, t0, 17
                  slt          t0, s0, ra
                  bne          s9, t1, 549f
                  sll          sp, t4, t3
                  sltiu        zero, a2, -1436
                  la           t6, region_1+1396 #start riscv_load_store_rand_instr_stream_4
                  sltiu        a2, s3, -133
                  slli         s2, t4, 20
                  add          s6, a6, t4
                  lbu          a1, 47(t6)
                  lui          t5, 303220
                  sw           t3, -56(t6)
                  and          t1, s2, a6
                  sh           s0, 32(t6)
                  lb           ra, 2(t6)
                  slt          a5, s7, t4
                  sb           s3, 27(t6)
                  slti         s4, t6, 95
                  xori         t5, a5, 1173
                  addi         a2, s5, -34
                  sltu         a4, s0, a1
                  slti         s2, s2, 392
                  lui          t4, 1041269
                  or           tp, s6, t6
                  sw           s11, 56(t6)
                  lb           sp, -54(t6)
                  addi         gp, s3, -715
                  slti         t1, s3, 485
                  lui          s0, 349052
                  ori          s11, t1, 1650
                  lhu          gp, 64(t6)
                  sltu         s0, s5, s7
                  lb           a0, -39(t6)
                  srai         s10, gp, 22
                  lw           a4, 60(t6)
                  andi         s3, s1, 613
                  lbu          gp, -49(t6)
                  sub          ra, a7, s10
                  sra          a6, t1, tp
                  lbu          sp, -41(t6)
                  and          t5, t3, s6
                  sb           t4, -45(t6)
                  lh           zero, -52(t6)
                  lbu          zero, 25(t6)
                  lbu          ra, -57(t6)
                  sltiu        a3, sp, -908
                  lbu          s3, -14(t6)
                  addi         s4, s0, -519
                  sb           t4, -3(t6) #end riscv_load_store_rand_instr_stream_4
                  ori          t1, a3, -1120
                  bge          s0, a6, 560f
                  xori         s0, sp, 369
                  add          s6, ra, t3
                  auipc        ra, 21052
546:              xor          gp, s11, ra
                  bltu         a5, t0, 562f
                  and          a6, a6, a1
549:              xor          t1, t2, s4
                  andi         s1, zero, 1478
                  addi         a1, s2, 71
                  nop
                  xor          a5, s2, s6
                  andi         s3, s11, 202
                  sra          a5, a6, s1
                  auipc        tp, 247090
                  andi         t4, s7, -24
                  sub          a1, s1, ra
                  xori         s2, s2, -695
560:              auipc        a6, 399062
                  addi         tp, s11, -1012
562:              sll          tp, s5, sp
                  bne          t1, s6, 582f
                  and          s8, a2, s3
                  xor          a3, s1, s4
                  andi         a5, a7, -1400
                  and          gp, a0, t6
                  lui          t0, 634510
                  xori         t5, t6, 1604
                  nop
                  slt          sp, s4, s10
                  nop
                  ori          a5, s6, 381
                  ori          a4, s9, -358
                  lui          a3, 696128
                  slt          s8, t0, t2
                  xor          s10, s0, s1
                  xori         s1, a7, 1467
                  auipc        a2, 892991
                  slti         a6, a1, -1201
                  bne          sp, s6, 601f
582:              sub          t1, t3, ra
                  addi         s0, a2, -1026
                  srli         ra, t4, 14
                  auipc        a2, 316000
                  and          a3, s3, a1
                  srai         t1, a4, 23
                  srl          t6, zero, s8
                  sll          ra, ra, s8
                  andi         a3, sp, -1939
                  xori         s10, t1, 461
                  or           t1, s4, ra
                  addi         s11, a5, 513
                  sra          t2, ra, zero
                  nop
                  slt          s4, a1, a3
                  sltu         a1, s8, s5
                  andi         s9, s3, 367
                  lui          gp, 639556
                  bgeu         s11, ra, 606f
601:              srai         a7, s7, 22
                  sltu         s8, a4, s9
                  nop
                  xori         s10, s11, -953
                  bne          s4, s6, 623f
606:              sltiu        s9, a3, -1811
                  sub          a0, a6, s4
                  auipc        gp, 304922
                  slti         s0, s7, 831
                  sub          t0, zero, tp
                  sll          t4, s2, s2
                  xori         s6, s2, 1167
                  sltiu        s1, a6, -1408
                  slt          s3, tp, a7
                  add          s6, zero, s3
                  bne          zero, s9, 622f
                  and          tp, gp, s6
                  lui          s1, 682464
                  slt          s9, ra, s3
                  slli         a1, s8, 15
                  slli         t0, s1, 18
622:              sltiu        t6, a7, -1837
623:              lui          s3, 190298
                  bgeu         a2, t1, 626f
                  sub          ra, t0, a4
626:              srai         sp, a1, 21
                  bltu         s7, zero, 637f
                  lui          sp, 640084
                  bge          a4, t0, 641f
                  srl          s11, tp, gp
                  sra          s9, s7, t1
                  lui          a5, 807652
                  bgeu         s4, a3, 651f
                  sltu         t6, sp, t2
                  addi         a1, t0, -2030
                  slli         s10, t4, 19
637:              addi         a5, s4, 72
                  andi         s2, t5, -270
                  slt          a5, a5, a7
                  beq          s0, a2, 650f
641:              blt          gp, a3, 650f
                  sltiu        t0, t4, -1225
                  blt          t1, s8, 660f
                  bge          a3, t3, 646f
                  beq          s1, a3, 647f
646:              andi         s4, s8, 517
647:              and          s11, a3, a6
                  sub          a7, a5, t2
                  srai         zero, a3, 28
650:              or           s0, s0, zero
651:              andi         s8, tp, -812
                  bgeu         gp, a2, 654f
                  blt          ra, zero, 662f
654:              sltiu        a6, s6, 937
                  sub          s10, a0, t3
                  nop
                  add          s6, t4, ra
                  addi         s8, t3, 1039
                  xori         tp, gp, -1249
660:              sra          t4, sp, t1
                  andi         a4, t2, 1855
662:              bne          t6, gp, 671f
                  bge          ra, a7, 678f
                  srai         a2, a4, 20
                  blt          t1, zero, 680f
                  srli         gp, s5, 21
                  bltu         a3, s5, 681f
                  sra          a0, s1, a3
                  bge          a3, s0, 679f
                  srai         t4, t1, 4
671:              sub          s10, s2, t2
                  srli         t6, s2, 28
                  sltu         t0, a7, s6
                  slt          a2, sp, s11
                  sltiu        ra, s4, -519
                  andi         s9, s0, 497
                  bltu         s11, t6, 685f
678:              xor          s4, a3, s0
679:              bgeu         s2, a2, 685f
680:              beq          a6, gp, 691f
681:              slt          tp, t5, s11
                  lui          gp, 581223
                  srli         t2, a3, 25
                  or           s8, t0, s5
685:              srai         s4, s0, 10
                  xori         s3, a1, 1495
                  srli         sp, tp, 19
                  slti         s0, s4, 716
                  lui          s0, 597700
                  slt          t5, a6, t2
691:              add          t6, s2, s11
                  and          s0, t0, s8
                  ori          t4, t0, 959
                  xor          a4, s4, a1
                  or           t0, t3, zero
                  nop
                  blt          a7, a1, 705f
                  slli         s4, s10, 27
                  add          t5, sp, s4
                  srl          zero, a0, t6
                  sra          s10, a3, s5
                  bltu         s4, s3, 720f
                  andi         s0, t0, -2010
                  srli         s11, s4, 11
705:              srl          s4, s10, t0
                  sltu         s4, zero, s8
                  bne          s7, a5, 721f
                  bltu         s5, t0, 728f
                  slti         s2, t5, 1893
                  lui          t5, 151301
                  bltu         s11, tp, 725f
                  bge          a4, t1, 721f
                  lui          s6, 391717
                  sra          s9, a3, a7
                  bne          s3, ra, 720f
                  slt          t0, a6, s9
                  bne          zero, s6, 734f
                  beq          zero, a3, 729f
                  xor          a0, a0, t4
720:              xor          gp, s3, s0
721:              nop
                  beq          a2, s10, 725f
                  sll          s0, s2, s5
                  srai         s10, a3, 29
725:              beq          ra, t2, 727f
                  andi         a2, t0, -1260
727:              xori         a0, t4, 650
728:              addi         s0, s10, 1965
729:              bge          a3, a4, 734f
                  blt          a6, s2, 734f
                  andi         s1, a2, -1550
                  srl          tp, ra, zero
                  and          s4, t0, zero
734:              srl          a6, zero, a5
                  and          t1, s0, a2
                  sltu         s1, a7, a4
                  lw           t5, 4(t3)
                  srli         a2, t1, 7
                  addi         t3, t3, 56
                  slt          t6, a1, ra
                  addi         s2, s5, 1088
                  add          s6, t0, s3
                  add          s3, s6, s8
                  auipc        t2, 454420
                  slli         gp, s5, 5
                  addi         a2, t5, 272
976:              addi x24, x30, 1
976:              jalr x24, x24, 0
sub_3:            bne          t2, s2, sub_3_stack_p
                  sltiu        t4, a1, 1574
                  and          s8, t4, a6
sub_3_stack_p:    addi         t3, t3, -16
                  sw           t5, 4(t3)
                  or           a3, a6, a7
                  nop
                  xori         s10, a2, -1551
                  la           t5, sub_7
                  slli         a6, s4, 24
                  sll          sp, t5, s3
                  srli         t2, t0, 10
                  sltiu        a1, s11, 1156
                  or           sp, zero, s3
                  addi         t5, t5, 54
                  add          s8, a0, s4
                  bne          s6, tp, sub_3_j9 #branch to jump instr
                  xor          s4, s7, t1
                  slti         s9, sp, -348
sub_3_j9:         jalr         t5, t5, -54 #jump sub_3 -> sub_7
                  auipc        s6, 961693
                  add          gp, gp, s11
                  xor          s11, sp, s11
                  sub          s11, tp, s0
                  xor          gp, tp, a4
                  sltu         t1, a3, t2
                  bge          a6, tp, 12f
                  slti         a7, s0, 852
                  slti         zero, a6, 294
                  auipc        s10, 578919
                  slt          a6, t5, t1
                  sltu         gp, t6, sp
12:               sll          a7, t0, a3
                  slt          s10, t5, ra
                  and          t1, s2, s1
                  slli         s2, s5, 13
                  bge          s1, zero, 21f
                  and          s9, s6, a4
                  bgeu         t6, a0, 34f
                  bltu         t4, tp, 21f
                  ori          s1, a7, 96
21:               nop
                  sltiu        s4, s8, 594
                  sub          a5, a7, t0
                  ori          a0, s0, 1601
                  sub          a1, a2, a1
                  srli         zero, zero, 10
                  srl          s9, t2, t1
                  and          t6, s3, t4
                  ori          a4, a5, 1979
                  and          s10, s10, tp
                  andi         a6, s10, 782
                  srli         t2, ra, 26
                  slli         s6, s6, 29
34:               bltu         a4, s8, 54f
                  ori          t2, s8, -1618
                  beq          ra, a0, 49f
                  andi         s4, sp, -820
                  nop
                  beq          a0, a0, 45f
                  slti         s10, a7, -732
                  slti         s2, sp, -1362
                  beq          ra, s3, 50f
                  blt          t6, tp, 63f
                  sltiu        s1, a5, -917
45:               or           sp, s1, s0
                  srli         a0, s1, 4
                  slti         a1, a1, -1469
                  slt          zero, s9, s2
49:               sra          a1, a7, s4
50:               and          a0, s10, s10
                  bgeu         t1, t3, 65f
                  sltiu        a2, gp, -92
                  xor          a2, s1, ra
54:               sub          t2, t5, a6
                  bltu         a4, a2, 75f
                  auipc        a1, 561101
                  slt          a2, a7, s8
                  srai         gp, s6, 7
                  bltu         a7, a5, 77f
                  sub          s6, s5, gp
                  andi         a6, a6, -1650
                  auipc        a5, 1047168
63:               bge          s2, s4, 71f
                  srai         t4, s4, 15
65:               xori         tp, s2, 1360
                  xor          s10, s10, t4
                  slt          a5, t6, s2
                  sltu         s10, t5, t3
                  srai         s3, s7, 4
                  srli         s1, s11, 18
71:               or           t2, s8, a5
                  sub          a0, tp, s2
                  ori          s4, a1, -453
                  slli         a6, zero, 31
75:               bge          a3, zero, 85f
                  addi         a0, t2, -1879
77:               bge          sp, t2, 78f
78:               beq          t2, a2, 79f
79:               bne          a2, a0, 98f
                  auipc        gp, 851873
                  slti         s3, ra, -746
                  nop
                  bgeu         a7, a5, 99f
                  slt          tp, s0, s9
85:               lui          t6, 808759
                  andi         zero, zero, 1742
                  sltu         zero, s1, t0
                  sltiu        a5, ra, -525
                  slli         gp, s7, 9
                  blt          a4, t3, 92f
                  sltiu        a4, ra, -1783
92:               slli         sp, s8, 29
                  bne          s8, s3, 103f
                  bgeu         t6, zero, 100f
                  nop
                  add          t6, sp, s7
                  beq          a6, ra, 103f
98:               srl          a5, t2, t5
99:               bltu         t0, a3, 103f
100:              bne          t4, s6, 103f
                  srl          sp, s8, s9
                  and          tp, a1, t2
103:              ori          t4, a1, -1257
                  and          t0, tp, t0
                  lw           t5, 4(t3)
                  srl          s6, a6, ra
                  nop
                  srai         sp, sp, 23
                  xori         ra, s7, 1971
                  sll          a2, a2, t3
                  sll          a2, t2, ra
                  addi         t3, t3, 16
                  xori         ra, s0, 9
                  slt          ra, a7, ra
135:              addi x11, x30, 1
135:              jalr x11, x11, 0
sub_9:            nop
                  slt          a2, s0, s6
                  addi         t3, t3, -28
                  sra          s6, s6, sp
                  add          s8, a0, a1
                  lui          s0, 487721
                  sw           t5, 4(t3)
                  lui          tp, 1000965
                  slt          gp, s7, a0
                  xor          s8, t1, a2
                  sltiu        t4, ra, -430
                  srli         t0, s9, 15
                  la           s10, region_0+1181 #start riscv_load_store_rand_instr_stream_1
                  and          ra, ra, t5
                  slli         s3, s5, 11
                  lh           s4, -169(s10)
                  or           t1, a4, zero
                  ori          zero, a7, -886
                  xori         t4, s10, 509
                  lui          s0, 1003225
                  srli         t0, t5, 24
                  auipc        sp, 635304
                  addi         s2, t4, -1527
                  sb           a4, -3(s10)
                  sltu         s1, ra, a7
                  sb           s11, 238(s10)
                  and          s3, s11, gp
                  sb           t2, 71(s10)
                  slti         ra, a0, -760
                  lbu          t1, 192(s10)
                  sll          a2, s3, t1
                  sb           a5, 216(s10)
                  slti         a3, sp, -691
                  lhu          a5, 213(s10)
                  ori          ra, a2, -1906
                  nop
                  lb           t0, 120(s10)
                  sltiu        s8, t3, -1673
                  lbu          s1, 70(s10)
                  nop
                  sb           a3, 52(s10)
                  lw           s8, 115(s10)
                  lhu          sp, 171(s10)
                  and          a0, a2, t3
                  sltu         t1, s9, t1
                  ori          s6, s3, -903
                  lhu          a2, -89(s10)
                  srl          a6, s1, s8
                  sb           t5, -205(s10)
                  lui          a1, 555917
                  lbu          s2, 80(s10)
                  sb           s9, -145(s10)
                  sub          a5, s11, t4
                  ori          a1, t5, -1092
                  lbu          t2, -236(s10)
                  lbu          a4, -186(s10)
                  sub          a4, t1, a5
                  slt          s8, a3, s5
                  slti         a6, s0, 332
                  lbu          s2, -40(s10)
                  xor          a2, s4, t6
                  sltiu        t5, sp, 559
                  sw           s6, -141(s10) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1651 #start riscv_load_store_rand_instr_stream_3
                  sltiu        gp, t6, 1008
                  lui          s8, 501470
                  lb           s0, -44(sp)
                  sra          s11, t0, s5
                  srli         tp, s3, 23
                  srai         t0, tp, 18
                  xor          a5, s7, a4
                  sra          tp, sp, tp
                  sltu         a7, s5, a2
                  lbu          s0, 26(sp)
                  and          a4, s1, zero
                  slt          t0, t3, ra
                  slli         a2, s5, 26
                  lbu          s1, -180(sp)
                  andi         t1, t4, 472
                  auipc        s4, 593346
                  srli         t0, s4, 22
                  lb           s1, -102(sp)
                  lbu          s10, -159(sp)
                  sb           zero, -180(sp)
                  slti         s11, a0, -1082
                  lw           s3, 93(sp)
                  xori         s10, t4, 2045
                  sltiu        s8, t5, 1307
                  addi         a4, t5, 477
                  sb           sp, 144(sp)
                  auipc        a7, 229222
                  addi         s2, s3, 881
                  sw           zero, -139(sp)
                  lb           t2, -106(sp)
                  lbu          s9, 96(sp)
                  lbu          t2, -78(sp)
                  lb           t6, -56(sp)
                  sh           s3, -57(sp)
                  sh           a4, 161(sp)
                  lbu          s10, -50(sp)
                  lb           ra, -154(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1057 #start riscv_load_store_rand_instr_stream_4
                  lhu          s8, 11(sp)
                  sh           a5, -13(sp)
                  sll          t6, a7, t6
                  sb           t6, 2(sp)
                  lbu          a6, -11(sp)
                  sll          s3, a2, t3
                  srli         a1, t1, 10
                  sb           a2, -8(sp)
                  sb           a7, -6(sp)
                  sll          gp, t6, s6
                  sltiu        s8, t5, -1215
                  srl          s0, a2, a6
                  andi         s4, tp, 416
                  lb           a7, 13(sp)
                  lb           t2, 0(sp)
                  sb           s5, -14(sp)
                  lb           a1, 6(sp)
                  lb           a0, -8(sp)
                  lb           s9, 6(sp)
                  lbu          a6, 2(sp)
                  lhu          a4, 5(sp)
                  lh           a4, 1(sp)
                  sb           a2, 6(sp)
                  sb           a1, 0(sp)
                  lhu          a6, 3(sp)
                  sb           t6, 16(sp)
                  auipc        t2, 19902
                  sltu         a7, s10, t2
                  ori          a6, s4, 994
                  sb           s10, 16(sp)
                  lbu          t6, -4(sp)
                  sb           a0, 14(sp)
                  or           t5, a5, t0
                  lbu          a4, -4(sp)
                  or           a1, s8, a6
                  sb           gp, -16(sp)
                  lbu          s2, 9(sp)
                  sb           t2, 10(sp)
                  sh           tp, 13(sp)
                  sb           s8, -7(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+338 #start riscv_load_store_rand_instr_stream_0
                  or           s9, t6, ra
                  sb           s6, 57(sp)
                  sltiu        t0, s6, 496
                  sltu         t4, s3, a5
                  lui          s10, 619406
                  lb           s1, -24(sp)
                  sll          t2, s3, a5
                  lb           gp, -3(sp)
                  add          t4, a2, t3
                  sra          a6, t1, a0
                  lhu          ra, 46(sp)
                  and          tp, gp, sp
                  addi         t2, s5, -148
                  lb           t4, 53(sp)
                  lhu          ra, 30(sp)
                  lui          ra, 1047133
                  lhu          s8, 2(sp)
                  add          t1, a2, t6
                  slti         s6, t6, -386
                  lbu          s9, 39(sp)
                  add          s4, s2, s6
                  and          a7, t5, t6
                  lbu          t0, 61(sp)
                  slli         a5, t5, 12
                  sll          s9, t2, s11
                  sb           s8, -1(sp)
                  lb           ra, 63(sp)
                  xori         a0, a3, 440
                  lh           s8, 56(sp)
                  lw           a7, 58(sp)
                  and          a5, t1, a0
                  lbu          t4, -13(sp)
                  sw           s11, 2(sp)
                  lh           a4, 2(sp)
                  lhu          gp, -8(sp)
                  lh           gp, 64(sp)
                  or           a1, s8, t4
                  slti         t0, s5, -1633
                  sh           s8, -50(sp)
                  lb           t4, -7(sp)
                  sb           s9, -43(sp)
                  sb           ra, -20(sp)
                  lbu          t2, 57(sp)
                  lb           a5, 64(sp)
                  lbu          a5, -48(sp) #end riscv_load_store_rand_instr_stream_0
                  nop
                  or           a5, a4, ra
                  auipc        s8, 224474
                  ori          s11, a0, -31
                  srai         s9, t6, 22
                  xori         zero, t2, 380
                  auipc        zero, 479999
                  slti         s4, zero, -555
                  andi         s1, a3, -1234
                  blt          t5, t1, 20f
                  lui          a7, 488390
                  beq          a2, t2, 22f
                  slt          gp, t3, a5
                  auipc        sp, 944604
                  beq          s4, s2, 22f
                  srli         s0, s6, 18
                  bgeu         s6, a4, 35f
                  srli         sp, a4, 10
                  blt          a1, gp, 20f
                  ori          s6, s3, 815
20:               and          s3, s7, t6
                  bge          s3, gp, 30f
22:               sub          a0, tp, t6
                  ori          a0, s1, 1402
                  sll          t6, t6, t2
                  and          s2, a4, s4
                  andi         s2, s8, 1819
                  add          a7, a2, t3
                  ori          a7, t6, 1702
                  xori         t4, t5, 693
30:               sll          a0, t5, t5
                  srli         s9, t2, 29
                  slti         s0, s9, -767
                  bge          t0, zero, 48f
                  sra          ra, t0, t6
35:               addi         a6, s3, -943
                  or           ra, a0, a1
                  xor          sp, t3, t4
                  beq          s7, t4, 44f
                  addi         a2, s7, -852
                  lui          a2, 372932
                  srli         a1, a4, 27
                  lui          s11, 769118
                  xori         s6, s9, -892
44:               addi         sp, a2, 1103
                  bgeu         tp, t3, 64f
                  andi         a3, t3, 127
                  or           s3, t1, s8
48:               ori          s3, s8, 79
                  sll          s6, s6, s5
                  sll          s2, s0, t3
                  bge          s1, a2, 70f
                  sub          gp, s11, a5
                  slti         a5, a3, -1626
                  xor          a3, a3, zero
                  slti         s9, s11, -475
                  ori          s3, a4, 1104
                  srai         s2, t2, 26
                  srli         s11, t2, 22
                  addi         t5, a4, 179
                  blt          s9, tp, 76f
                  slt          s0, t1, t2
                  bge          t0, s3, 68f
                  lui          t6, 677984
64:               sub          s4, gp, a2
                  blt          t6, t1, 81f
                  andi         a6, s8, 718
                  lui          a4, 1022688
68:               srai         s8, a4, 11
                  slli         zero, a1, 31
70:               bgeu         s2, s7, 72f
                  sltiu        t0, s3, -1344
72:               sra          t2, s6, ra
                  bge          s11, s2, 74f
74:               xori         t5, s9, -2043
                  ori          s4, s8, -323
76:               andi         a1, s5, -123
                  xori         zero, s10, -1301
                  nop
                  beq          t3, s8, 83f
                  slli         zero, s1, 25
81:               andi         t5, t0, 868
                  and          s2, zero, s11
83:               andi         t6, s9, 266
                  beq          a2, zero, 95f
                  srl          a2, t1, a5
                  andi         s8, t0, 728
                  bgeu         s8, a6, 103f
                  srli         a7, ra, 8
                  slt          a7, s2, a4
                  sra          a7, t1, a4
                  or           s11, t3, t0
                  addi         s10, zero, 1591
                  slt          ra, a2, s4
                  xori         a0, s11, -1672
95:               bne          s7, s9, 109f
                  srli         t6, ra, 3
                  sra          a1, a5, a7
                  slti         a2, s6, 653
                  and          s2, a3, a7
                  and          ra, ra, a2
                  nop
                  slli         a3, a7, 11
103:              and          s10, s5, a4
                  or           t2, t1, t3
                  beq          s6, a7, 124f
                  andi         t6, t2, 1303
                  xori         t4, s1, 1872
                  add          a0, t0, s1
109:              bne          s9, s1, 115f
                  addi         t1, a1, 697
                  and          s11, s3, a0
                  blt          a7, t0, 113f
113:              sltiu        s4, s6, -999
                  xor          a3, a7, tp
115:              xori         t2, a5, 1526
                  bgeu         s5, s0, 131f
                  beq          a3, s2, 135f
                  sub          s10, a7, t0
                  ori          t6, a3, -1601
                  and          a1, t1, tp
                  sltiu        t5, s5, 1927
                  bne          a5, a3, 139f
                  sub          gp, s1, a0
124:              or           a5, a0, s9
                  andi         s9, t3, 1025
                  slli         a4, s7, 1
                  bne          s7, s9, 140f
                  andi         a6, t2, 608
                  sltu         a4, t3, t5
                  beq          s2, s8, 137f
131:              and          t0, s0, a0
                  sltu         a3, ra, a2
                  lui          s0, 637556
                  srl          s9, a3, t6
135:              slt          t4, a4, t1
                  slt          zero, sp, t6
137:              and          s11, s9, a1
                  slti         s2, a2, -1235
139:              ori          t2, s0, -1618
140:              blt          t6, a7, 149f
                  lui          a1, 204798
                  bne          s4, gp, 147f
                  bgeu         ra, t2, 150f
                  auipc        sp, 111286
                  srli         sp, t5, 9
                  sll          ra, s8, s8
147:              beq          ra, a3, 163f
                  blt          s4, s4, 155f
149:              bgeu         t0, t0, 168f
150:              andi         a7, s11, -1566
                  andi         s11, a4, -1017
                  addi         a4, s11, -462
                  sll          s1, s3, a0
                  andi         s11, t3, 1972
155:              slli         s3, s2, 1
                  slti         t4, a2, 1165
                  nop
                  nop
                  blt          s7, s8, 160f
160:              ori          a0, t4, 683
                  srl          t0, a2, a0
                  srai         a4, t0, 15
163:              add          s4, a1, t5
                  beq          s4, s8, 170f
                  bgeu         t3, s5, 172f
                  and          a2, s7, gp
                  bge          s4, ra, 173f
168:              srai         t6, s5, 9
                  bne          a7, s0, 188f
170:              or           t5, a7, a1
                  blt          s5, a1, 189f
172:              lui          tp, 647358
173:              sub          t5, s6, s0
                  lui          a1, 536542
                  sltiu        s11, t4, -1446
                  xor          gp, a1, s9
                  slti         a2, a1, 215
                  auipc        t4, 276450
                  sltu         a2, tp, s5
                  addi         s9, gp, -597
                  bgeu         s9, s5, 187f
                  beq          a7, t5, 198f
                  xori         sp, a6, 392
                  bge          s7, s8, 195f
                  andi         s8, t5, -705
                  srai         ra, a0, 19
187:              or           t0, a2, s2
188:              add          zero, s10, t6
189:              lui          tp, 964336
                  slli         ra, a1, 16
                  sltiu        a6, gp, 1073
                  bge          s11, s9, 203f
                  or           a2, s3, s10
                  sll          s8, s6, a1
195:              or           s9, a4, s1
                  slli         a2, t0, 21
                  xor          a0, s2, s4
198:              addi         t6, s5, 1991
                  slt          t6, t4, s11
                  addi         a5, a3, -1357
                  or           s1, a4, t1
                  ori          s11, t2, -637
203:              auipc        t2, 1041200
                  xori         a7, t5, 1125
                  blt          t0, a3, 207f
                  srai         t4, ra, 24
207:              lui          s2, 729315
                  bge          s10, s11, 216f
                  srai         s3, zero, 29
                  sltu         t1, s11, s0
                  and          a1, t5, s9
                  add          s11, s2, t0
                  sltiu        t1, a0, -212
                  slt          a4, s7, t1
                  bltu         a0, s5, 230f
216:              sra          gp, s1, t6
                  sra          tp, s2, s6
                  beq          t3, t6, 222f
                  nop
                  addi         s3, s0, -1071
                  bgeu         zero, ra, 235f
222:              lui          s1, 510183
                  bge          t6, s0, 240f
                  blt          t6, a1, 243f
                  srl          zero, a4, s9
                  and          a2, s7, ra
                  and          t6, s0, a3
                  nop
                  bge          s4, s10, 248f
230:              sltiu        t1, s2, 1575
                  ori          t0, a5, 1020
                  sltu         t1, t4, a4
                  sltu         tp, a0, t4
                  ori          a7, sp, -445
235:              bltu         a0, s10, 248f
                  andi         s0, s2, -765
                  andi         t0, gp, -1690
                  nop
                  bne          a7, a6, 240f
240:              sltiu        t2, s7, 851
                  auipc        t1, 972337
                  xor          a0, t4, zero
243:              sub          a1, a4, t6
                  beq          t1, s5, 246f
                  blt          s1, a4, 254f
246:              srai         t1, t2, 7
                  slt          t2, a4, t4
248:              nop
                  sltu         s10, a5, s9
                  xori         s8, a2, 451
                  bge          a0, a4, 260f
                  sll          s10, gp, s2
                  auipc        s8, 273034
254:              nop
                  ori          t1, a5, -83
                  andi         s11, s1, 1945
                  slli         a2, s1, 12
                  sub          t2, ra, s11
                  addi         zero, s8, 1921
260:              addi         s10, s11, -450
                  sltu         s2, s9, zero
                  sll          t1, t5, s7
                  sub          s1, s5, s7
                  sltu         tp, s10, s6
                  lui          a2, 441954
                  nop
                  ori          a1, a7, -1341
                  sltu         s9, tp, t6
                  sra          t0, ra, gp
                  ori          t0, a6, 37
                  auipc        s2, 1038643
                  ori          a1, a0, -1241
                  sltu         a2, t4, s0
                  add          a7, s9, a7
                  add          t4, a7, t6
                  slti         ra, gp, 1138
                  srli         a4, t4, 22
                  bge          gp, s2, 289f
                  blt          s7, s11, 284f
                  srli         s0, t6, 21
                  slli         s2, a4, 12
                  bltu         s0, a7, 297f
                  sltu         gp, gp, s1
284:              nop
                  beq          t0, zero, 301f
                  addi         a7, s8, 1107
                  xori         sp, t2, -656
                  sub          s1, s1, s7
289:              srli         t6, a5, 7
                  xori         ra, t6, -320
                  sra          s9, s5, t4
                  slt          s2, t0, t6
                  sltiu        t4, s8, -1953
                  slti         a3, s6, 790
                  slt          t1, s1, s10
                  slti         s6, t6, 1107
297:              lui          s4, 1001846
                  srai         t1, s6, 27
                  sra          a4, t6, t2
                  add          s6, t5, a7
301:              slt          t1, a1, s3
                  andi         a5, t6, 570
                  srai         s8, tp, 26
                  bne          s11, s11, 312f
                  srai         s1, t6, 18
                  sub          a2, s9, t5
                  sltu         s2, t5, gp
                  srai         gp, s4, 5
                  srl          s10, sp, a3
                  sra          a7, a0, a1
                  bne          t2, gp, 330f
312:              or           zero, tp, t3
                  sll          a2, a3, a7
                  bge          gp, a7, 330f
                  lui          t0, 500680
                  add          t2, a1, s6
                  auipc        t1, 525414
                  sltiu        t4, a4, -1325
                  bge          t0, a4, 334f
                  slti         t1, a5, 1660
                  ori          t2, a6, -590
                  nop
                  addi         a4, tp, 1297
                  or           s3, t1, a4
                  sltu         sp, s6, s5
                  sltu         t5, a7, s9
                  bne          s4, a4, 328f
328:              ori          a2, s7, 1463
                  nop
330:              ori          a6, a0, -376
                  sltu         sp, s4, s6
                  ori          s8, t5, 274
                  slli         s4, sp, 17
334:              slti         s6, t3, 727
                  xor          a2, t1, a1
                  sub          a7, t1, s6
                  srai         tp, s0, 30
                  add          a2, t5, s9
                  sltu         s0, t6, gp
                  sltiu        t2, t2, 1793
                  ori          s9, t1, 1000
                  nop
                  bltu         t4, a2, 348f
                  sll          a5, s3, a6
                  sltu         s1, gp, s7
                  addi         sp, s11, -1310
                  addi         s2, t6, -1755
348:              andi         s2, s9, 1014
                  and          ra, t1, s11
                  beq          a0, t4, 363f
                  beq          ra, a4, 367f
                  xor          a7, a4, s5
                  ori          ra, t0, 1181
                  sub          t2, s11, sp
                  nop
                  srli         s11, s2, 8
                  auipc        s10, 122439
                  sll          zero, s7, a5
                  srli         sp, s7, 23
                  sltiu        a3, s10, 237
                  lui          a2, 37469
                  andi         s4, a5, -1650
363:              slli         a6, t5, 20
                  slli         s1, s9, 29
                  auipc        a7, 429637
                  nop
367:              bge          t3, s10, 376f
                  slti         s8, a0, -1905
                  bgeu         s3, s0, 371f
                  and          a4, s2, s10
371:              and          a2, a7, a0
                  auipc        s8, 665291
                  bge          a6, ra, 387f
                  addi         t2, s11, 1372
                  nop
376:              xor          gp, a0, s3
                  or           a0, t5, s4
                  sltu         t0, s10, s10
                  bltu         t4, a6, 388f
                  or           s4, t1, t4
                  sra          s10, t2, a2
                  nop
                  slti         a2, t0, -583
                  slt          a6, a7, a7
                  auipc        t4, 1028935
                  auipc        s1, 812385
387:              slli         a5, t3, 22
388:              sra          s3, tp, t3
                  or           a6, s3, t5
                  addi         a1, s5, -390
                  sra          t0, a6, s9
                  bltu         t3, tp, 403f
                  andi         a4, a6, -1161
                  lui          t2, 130155
                  xor          t1, s7, s0
                  nop
                  beq          s7, t6, 403f
                  sltiu        t1, s5, 1869
                  sub          a6, ra, s0
                  srai         a0, s4, 14
                  xor          t6, t0, s1
                  xor          s2, a6, a0
403:              ori          s6, t6, -1325
                  bne          s2, t0, 423f
                  bltu         s7, a4, 416f
                  srai         gp, s7, 30
                  auipc        t6, 944802
                  slli         a7, a1, 19
                  xori         s6, a4, -326
                  blt          s5, sp, 416f
                  nop
                  slti         a0, a2, -1685
                  sub          a3, a6, t1
                  slt          a4, t6, ra
                  blt          t5, t6, 434f
416:              add          ra, sp, s8
                  and          gp, s11, a7
                  andi         tp, sp, 455
                  slti         s11, t2, -1235
                  addi         s8, s0, 748
                  addi         a6, s10, 1213
                  slti         s4, gp, 1804
423:              beq          s6, t5, 429f
                  bge          sp, s7, 431f
                  lui          zero, 233648
                  xor          a2, a1, ra
                  add          gp, ra, s11
                  lui          gp, 576375
429:              bgeu         a3, s9, 436f
                  nop
431:              nop
                  sub          a5, t6, s0
                  xori         s3, a6, 435
434:              srai         a4, s1, 28
                  and          a5, t3, s9
436:              andi         a2, s8, -273
                  slt          a3, s6, s5
                  add          sp, s2, t4
                  bne          a7, a6, 454f
                  and          a6, a1, s9
                  blt          t5, a6, 459f
                  sub          a7, sp, t1
                  sra          a1, t1, s0
                  bgeu         a0, a6, 460f
                  slt          a7, s9, tp
                  srai         s6, s6, 15
                  and          a2, s5, a3
                  srai         zero, s0, 29
                  xori         t2, a3, -249
                  ori          a6, a0, 447
                  add          a2, s10, s8
                  sub          t6, s0, s0
                  bltu         a0, tp, 464f
454:              srl          s4, zero, t6
                  sltu         a2, s3, t0
                  sra          a1, sp, gp
                  bne          a5, s1, 461f
                  sub          ra, a1, t0
459:              xori         sp, gp, -1038
460:              bltu         s7, sp, 479f
461:              xor          a2, s2, s11
                  or           s1, t2, a1
                  or           gp, t0, a0
464:              lui          ra, 615675
                  or           s4, s6, a3
                  srli         a2, s7, 24
                  srl          gp, t1, s1
                  add          s9, s8, s3
                  auipc        s10, 378547
                  lui          t4, 177802
                  slt          s3, s6, s9
                  addi         a6, ra, -1372
                  addi         t1, t1, 1608
                  lui          s4, 396323
                  sltu         t1, a4, t2
                  xori         s2, s0, 835
                  auipc        a3, 22993
                  ori          tp, t1, -25
479:              sll          s8, s5, s2
                  andi         s0, a0, -974
                  sra          zero, sp, a4
                  andi         s8, a0, 1325
                  blt          s11, s0, 500f
                  sub          s3, t0, s5
                  ori          a4, s8, 175
                  xor          s8, s4, s3
                  or           s2, t1, t5
                  sll          t6, a4, t2
                  xori         t6, s1, 603
                  xor          s4, s10, tp
                  bgeu         tp, s5, 492f
492:              and          a7, t1, s9
                  bge          zero, s5, 495f
                  sltu         t6, t6, t4
495:              lui          sp, 20926
                  xor          a1, s6, t6
                  add          ra, a0, s1
                  bge          s9, s11, 514f
                  add          s4, t5, t5
500:              blt          ra, a7, 509f
                  srli         a7, t3, 6
                  sll          s9, s7, s6
                  addi         s2, zero, 1178
                  sltu         t5, a2, s3
                  sub          s10, a6, s5
                  sra          s8, t2, sp
                  xori         t0, s9, 226
                  bge          a5, s10, 526f
509:              ori          t4, s8, 734
                  bne          tp, a5, 518f
                  beq          s6, a2, 518f
                  lui          a2, 234804
                  bge          s6, t1, 529f
514:              bge          t0, s4, 520f
                  and          s4, a7, a4
                  slti         s4, a4, -1326
                  andi         t6, a7, 422
518:              bne          s10, a0, 523f
                  add          s8, s7, a7
520:              nop
                  bgeu         zero, t4, 523f
                  bgeu         a4, s5, 536f
523:              bge          t4, ra, 530f
                  slti         a6, t6, 613
                  addi         t0, t6, 1361
526:              addi         t5, s5, 1376
                  srl          a2, s9, t4
                  sll          s3, s1, a0
529:              nop
530:              slli         a7, t2, 30
                  slt          a5, s6, s5
                  or           sp, s11, a2
                  xori         s9, t6, -1762
                  srli         a1, a0, 29
                  srli         t1, a2, 8
536:              lui          s4, 63119
                  srai         s6, s4, 20
                  auipc        t1, 987434
                  srai         ra, s11, 8
                  srai         a6, zero, 11
                  srl          ra, a6, a3
                  sub          s2, s0, t3
                  slli         s11, a0, 20
                  blt          t6, s9, 561f
                  sltu         s11, s8, s4
                  lui          t0, 632134
                  slti         a7, a4, -1019
                  sub          s2, a0, s3
                  ori          a4, s7, 668
                  sub          s4, a2, t3
                  andi         s1, a6, -1350
                  bgeu         s11, a5, 561f
                  srl          s11, a4, t1
                  bne          a4, s4, 555f
555:              xor          t0, s10, s10
                  srl          s9, ra, t1
                  bltu         ra, t0, 576f
                  sltu         t2, a5, a2
                  sub          a2, t0, a6
                  slti         ra, s3, 899
561:              slli         s8, a5, 15
                  auipc        t5, 373347
                  slti         t0, s8, 964
                  sub          a1, a5, a7
                  bne          s8, t2, 569f
                  addi         ra, s3, 1384
                  xori         t6, s5, -975
                  bgeu         t0, s0, 574f
569:              srai         a1, sp, 17
                  nop
                  beq          t1, t0, 577f
                  sltiu        s8, t6, -462
                  xor          t5, zero, s7
574:              sll          a7, tp, a1
                  slti         s3, a2, 618
576:              lui          a3, 827216
577:              nop
                  bltu         a3, s11, 597f
                  xori         s11, a0, -1079
                  bge          t4, s2, 595f
                  addi         t1, ra, 965
                  sll          t1, tp, s4
                  blt          a5, s5, 594f
                  lui          s4, 49856
                  bltu         s4, s6, 596f
                  slt          zero, t2, s6
                  auipc        s3, 265739
                  sltiu        ra, t5, 238
                  lui          zero, 503834
                  xori         a1, s3, -273
                  andi         a2, t4, -1109
                  la           a5, region_1+358 #start riscv_load_store_rand_instr_stream_2
                  andi         s3, t2, -795
                  xori         t2, s5, 1111
                  sw           s4, 6(a5)
                  sh           a6, -2(a5)
                  slti         t2, s2, -42
                  xor          s9, t5, s0
                  xor          a7, s9, s11
                  andi         sp, s7, -1518
                  lbu          s1, -11(a5)
                  srl          a3, s4, t4
                  nop
                  sb           t3, 1(a5)
                  lhu          ra, 0(a5)
                  sw           t3, -6(a5)
                  srli         gp, s11, 31
                  sltu         s2, a7, ra
                  lbu          s6, 14(a5)
                  sb           t0, 7(a5)
                  slti         t5, a6, 994
                  sub          t4, s3, a0
                  sb           s11, -16(a5)
                  andi         a0, t2, 1206
                  lhu          s1, -10(a5)
                  slt          s8, a2, s4
                  lw           ra, -6(a5)
                  sltiu        tp, s1, -1097
                  srli         a6, t5, 16
                  lbu          s3, -4(a5)
                  sb           a3, -7(a5)
                  lh           tp, 0(a5)
                  sb           t1, 11(a5)
                  srl          t1, gp, s6
                  lbu          a1, 15(a5)
                  sltiu        sp, a3, -946
                  addi         a7, t4, 241
                  lbu          t0, -1(a5)
                  lhu          s8, 4(a5)
                  slt          ra, a1, sp
                  sra          s11, s7, s6
                  srl          gp, a4, t6
                  slti         sp, a6, -1449
                  andi         s2, a2, 836
                  ori          a2, s4, -1213
                  addi         s8, gp, -502
                  sb           a7, -11(a5)
                  lbu          s3, 15(a5)
                  lbu          s11, 1(a5)
                  sub          s10, t1, a2
                  lbu          zero, -5(a5)
                  sh           s10, 4(a5)
                  slti         ra, tp, -182
                  lb           gp, 15(a5)
                  sub          s2, s3, t6
                  lbu          t4, 8(a5) #end riscv_load_store_rand_instr_stream_2
                  srai         s10, s2, 1
                  addi         a0, t6, -1085
594:              slti         s3, t1, -1953
595:              sub          t1, a4, t6
596:              addi         zero, zero, -1754
597:              sub          s10, a7, t0
                  srl          s3, a3, s9
                  auipc        s8, 524408
                  addi         a6, t3, 1467
                  addi         s4, a3, 923
                  slt          gp, ra, s1
                  srai         a3, zero, 12
                  slli         a5, s10, 18
                  or           a3, s3, t2
                  srli         t5, t2, 24
                  addi         gp, a6, -540
                  srli         a7, s8, 26
                  srli         s4, s5, 25
                  sub          a7, a4, t6
                  bgeu         s10, a2, 626f
                  bltu         s0, a6, 625f
                  bne          t0, a5, 632f
                  xori         t0, a5, -757
                  sltu         gp, a0, tp
                  srai         zero, s11, 28
                  andi         s6, zero, -1817
                  sub          a0, s4, s1
                  auipc        s8, 819336
                  sra          ra, s4, sp
                  lui          a6, 144814
                  and          a0, a7, s8
                  xor          zero, a7, ra
                  slt          a1, a1, sp
625:              slt          a3, a1, sp
626:              sltiu        s10, a0, 472
                  bltu         t4, s6, 643f
                  xori         a4, a0, 873
                  bgeu         ra, s1, 640f
                  andi         gp, t6, 894
                  and          a4, s8, sp
632:              addi         s9, a7, 643
                  blt          s8, sp, 652f
                  andi         tp, a4, 1611
                  sub          s8, a2, s3
                  srl          a2, a2, a7
                  bne          a6, s0, 639f
                  xori         s6, s9, -1493
639:              bgeu         t0, a1, 640f
640:              auipc        tp, 535686
                  addi         a5, s1, 1328
                  srai         a1, a5, 3
643:              xori         s3, s11, 178
                  beq          s5, ra, 648f
                  nop
                  lui          a5, 886855
                  sltiu        t5, t5, -1300
648:              bge          t3, a2, 657f
                  blt          s3, s1, 650f
650:              srli         s0, s3, 24
                  addi         zero, a4, 2015
652:              sltu         s4, a1, sp
                  sltu         s1, t1, s3
                  blt          t3, t3, 660f
                  slli         a0, gp, 1
                  sltu         a1, s11, a7
657:              slli         zero, t6, 5
                  and          s6, s1, t0
                  addi         a7, s5, -650
660:              nop
                  or           s1, sp, a2
                  bltu         s11, s3, 679f
                  slti         s6, s1, 609
                  auipc        a7, 680268
                  bge          a6, sp, 680f
                  sltu         s4, a4, ra
                  sub          gp, t3, t4
                  sll          t0, a7, t1
                  and          gp, t5, ra
                  slti         s8, a0, 1813
                  blt          t3, a3, 676f
                  bgeu         s4, s10, 685f
                  sub          t6, a2, t0
                  bne          a6, a3, 682f
                  xor          s9, t3, s10
676:              ori          s8, s4, -1148
                  sub          a7, t3, gp
                  sltiu        s11, s2, -2015
679:              bltu         t3, s9, 690f
680:              sub          t4, a1, a3
                  slli         gp, t1, 11
682:              add          a1, s11, s6
                  sll          s11, a6, s4
                  sltu         t1, s10, s3
685:              bne          s2, s9, 704f
                  andi         a7, a1, 664
                  or           s9, sp, t4
                  slli         t4, s10, 6
                  bgeu         a2, s10, 700f
690:              bgeu         t2, t4, 706f
                  slti         t0, a3, -812
                  lui          gp, 102311
                  or           a5, s6, a2
                  addi         a7, t2, 2006
                  nop
                  slt          ra, a1, a1
                  or           a4, s1, t6
                  sll          s6, s8, a7
                  addi         a1, s8, -852
700:              xor          s10, s0, s1
                  lui          ra, 785496
                  slli         a2, a4, 15
                  srai         a3, zero, 20
704:              bne          a7, t2, 707f
                  slt          ra, sp, t5
706:              srai         s11, s7, 25
707:              and          s9, a6, t6
                  nop
                  nop
                  addi         s1, a7, 568
                  lw           t5, 4(t3)
                  and          s8, t4, a1
                  lui          s10, 999867
                  sll          ra, t5, s11
                  addi         t3, t3, 28
                  addi         a4, a3, 589
960:              addi x24, x30, 1
960:              jalr x24, x24, 0
sub_10:           srl          s9, s10, t4
                  bge          s7, s10, sub_10_stack_p
                  sll          a0, a3, a6
                  srai         gp, a1, 15
sub_10_stack_p:   addi         t3, t3, -16
                  slti         s9, s4, -286
                  sw           t5, 4(t3)
                  and          a6, a0, s8
                  slli         a1, s3, 28
                  srai         tp, gp, 0
                  sll          s10, s4, t2
                  sltu         a7, a2, s9
                  slti         s8, t0, 1459
                  slti         tp, s5, -42
                  xori         s0, t0, 1806
                  slti         a5, s8, -760
                  auipc        a0, 706615
                  xori         a4, tp, -502
                  bltu         a1, s6, 21f
                  slli         ra, t1, 3
                  slli         gp, s3, 21
                  slt          s9, ra, s5
                  bge          t5, s10, 30f
                  srai         a4, s0, 20
                  sra          s10, s8, s10
                  bge          s10, a4, 30f
                  sub          a4, a5, a2
                  sll          a5, t4, s4
                  and          t6, t0, t5
21:               andi         s9, t3, 1777
                  auipc        t4, 363852
                  xori         s4, gp, -686
                  lui          s2, 533837
                  sltu         tp, s2, zero
                  or           tp, ra, a6
                  slt          a2, s8, s7
                  lui          a2, 525906
                  bltu         s6, a7, 30f
30:               sltiu        s9, t5, 3
                  slti         a2, t4, -101
                  lw           t5, 4(t3)
                  and          ra, s3, tp
                  addi         t3, t3, 16
                  srai         gp, t5, 12
44:               addi x25, x30, 0
44:               jalr x25, x25, 0
sub_4:            lui          s10, 204809
                  addi         t3, t3, -60
                  slt          a1, gp, s0
                  sw           t5, 4(t3)
                  slt          t6, a3, s6
                  la           s3, region_1+1178 #start riscv_load_store_rand_instr_stream_2
                  ori          t5, tp, 1562
                  sh           s8, -14(s3)
                  lbu          t1, 1(s3)
                  xori         gp, s11, -498
                  sb           s8, -7(s3)
                  auipc        a4, 842072
                  lh           s2, 8(s3)
                  lh           s4, -10(s3)
                  sh           a7, 8(s3)
                  xori         gp, s10, 1953
                  andi         s11, t3, 1832
                  and          a2, t5, s7
                  srl          ra, s0, s7
                  lbu          t5, -14(s3)
                  lbu          sp, 15(s3)
                  addi         a3, t0, -2001
                  lh           t1, -6(s3)
                  sb           a5, 7(s3)
                  lh           a7, -8(s3)
                  sltiu        tp, a1, 156
                  sltiu        s1, t5, -446
                  lbu          t0, -2(s3)
                  lb           s1, 11(s3)
                  sh           t4, -6(s3)
                  sb           a1, 1(s3)
                  lbu          a4, -9(s3)
                  add          a6, s3, sp
                  sh           s2, 6(s3)
                  lbu          a5, -14(s3)
                  auipc        gp, 933922
                  srai         s2, t1, 3
                  sh           s5, 4(s3)
                  lhu          s1, -6(s3)
                  lw           t5, 2(s3)
                  lhu          a4, 4(s3)
                  lbu          t6, -10(s3)
                  sb           a5, -12(s3)
                  lb           s4, -9(s3)
                  lbu          t4, -15(s3)
                  lbu          s8, -11(s3)
                  auipc        gp, 495212
                  sh           t4, 16(s3)
                  lb           t5, -13(s3)
                  sb           s1, 15(s3) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1447 #start riscv_load_store_rand_instr_stream_4
                  lb           zero, 154(sp)
                  slt          s11, tp, s7
                  xori         a1, a0, 1683
                  sb           s4, 100(sp)
                  auipc        a5, 40614
                  srl          a5, a0, a6
                  add          t5, a5, a3
                  srai         s1, t5, 20
                  lbu          t1, 94(sp)
                  nop
                  ori          a2, tp, 1024
                  srai         tp, a0, 8
                  srai         s10, zero, 24
                  srl          s1, a6, s5
                  lhu          a1, 75(sp)
                  sra          t4, s1, a0
                  srl          a6, t4, s8
                  lbu          s4, -256(sp)
                  lb           s8, 48(sp)
                  ori          s1, a5, -712
                  sltiu        s8, a2, 1911
                  sltiu        a5, a2, -1649
                  srli         s2, t6, 22
                  andi         s0, a7, 692
                  add          a1, a3, ra
                  slt          s9, s2, t0
                  lbu          t2, 232(sp)
                  sb           gp, -73(sp)
                  lbu          t4, 183(sp)
                  sb           s7, -172(sp)
                  sra          s1, a0, a4
                  lb           t5, -19(sp)
                  srli         s9, t0, 10
                  slli         ra, s0, 24
                  sb           t5, 34(sp)
                  add          a5, tp, sp
                  sw           t4, 205(sp)
                  sb           s4, -225(sp)
                  and          s9, s0, s0
                  sb           a5, 62(sp)
                  lbu          t5, 126(sp)
                  lb           zero, -32(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+550 #start riscv_load_store_rand_instr_stream_0
                  nop
                  add          ra, t3, s1
                  sub          gp, s8, t3
                  addi         s10, a4, -563
                  ori          s0, s9, 507
                  ori          s10, s9, -872
                  lbu          a6, 55(sp)
                  sra          s11, t2, t2
                  sb           tp, 53(sp)
                  srli         zero, a5, 25
                  sb           s4, -149(sp)
                  sub          ra, a3, ra
                  lui          s8, 880061
                  slli         gp, s11, 17
                  sh           t1, 58(sp)
                  xor          t0, t2, a1
                  lbu          s6, -137(sp)
                  andi         t6, t3, -132
                  xor          s0, s5, t5
                  lb           t2, -148(sp)
                  or           a4, t3, s7
                  lbu          a1, 3(sp)
                  lbu          s3, -133(sp)
                  sub          a4, s6, a3
                  lbu          a0, -165(sp)
                  slli         s3, t3, 24
                  sb           s9, 166(sp)
                  sb           t2, -249(sp)
                  sb           gp, 195(sp)
                  slti         t4, a4, 450
                  lui          zero, 1035675
                  and          a5, s2, s11
                  or           a7, a1, zero
                  xori         t5, s7, 1350
                  sltiu        s10, ra, -1853
                  sltiu        a1, sp, -282
                  lbu          s0, 25(sp)
                  sra          s9, t6, gp
                  auipc        s8, 118847
                  auipc        ra, 376115
                  sb           t0, 149(sp) #end riscv_load_store_rand_instr_stream_0
                  la           tp, region_0+330 #start riscv_load_store_rand_instr_stream_1
                  sh           t3, 10(tp)
                  lb           gp, 829(tp)
                  lbu          t1, 609(tp)
                  lbu          a1, 576(tp)
                  sw           s7, 274(tp)
                  lbu          s9, 263(tp)
                  xor          t1, a0, s6
                  lhu          t2, 980(tp)
                  lui          a7, 440616
                  srl          s1, s6, t0
                  sb           a4, 1519(tp)
                  sll          a4, t4, a5
                  slt          gp, s4, t6
                  nop
                  auipc        t4, 1043873
                  xori         a5, s6, -67
                  auipc        t2, 700239
                  slli         s1, gp, 20
                  and          ra, t1, ra
                  add          s0, s0, s2
                  sh           a4, 758(tp)
                  srai         s3, tp, 22
                  xori         a0, a6, 747
                  lb           s6, 1473(tp)
                  lbu          s9, 1565(tp) #end riscv_load_store_rand_instr_stream_1
                  sltiu        a0, s5, 1886
                  srl          t4, s2, a2
                  sltu         s6, s2, t1
                  slti         ra, s2, -773
                  andi         tp, s8, 345
                  nop
                  bne          zero, a5, 16f
                  sltu         s11, s1, t5
                  and          a6, s4, s3
                  sll          s6, s9, tp
                  auipc        tp, 916087
                  nop
                  xor          zero, t1, s0
                  addi         s3, a5, -332
                  and          s6, t2, a2
                  nop
16:               srli         a3, t3, 10
                  beq          a7, gp, 27f
                  srai         s6, s1, 6
                  andi         a5, s7, 1738
                  add          tp, s8, t5
                  andi         s8, zero, -1772
                  srai         a1, a2, 1
                  auipc        a2, 430612
                  andi         t4, s0, -886
                  blt          a1, s1, 41f
                  sra          a2, s6, a1
27:               sll          a2, gp, tp
                  ori          a6, s8, 1530
                  blt          tp, s9, 38f
                  bltu         a0, t5, 33f
                  or           s4, t6, t5
                  bne          a0, s8, 42f
33:               slti         a1, t2, -1614
                  beq          a3, s0, 50f
                  bltu         a0, s6, 52f
                  auipc        t5, 538202
                  add          a1, a0, a1
38:               bgeu         s8, t1, 40f
                  xori         a4, gp, -779
40:               and          t2, s3, gp
41:               bne          ra, s2, 42f
42:               sll          a7, s8, tp
                  bgeu         a4, t0, 63f
                  sltiu        t1, t1, -1341
                  bgeu         t5, t1, 49f
                  bge          zero, s3, 48f
                  andi         a5, t6, 163
48:               sltiu        s8, t5, 1830
49:               sltiu        s1, s10, -1052
50:               add          zero, s8, s9
                  slt          s4, t4, tp
52:               bltu         sp, ra, 67f
                  sll          a2, s11, t6
                  andi         s9, t5, 91
                  xori         t5, s4, -276
                  bge          t6, gp, 76f
                  sll          zero, zero, a0
                  auipc        s3, 649384
                  ori          sp, s5, 1437
                  bgeu         t4, a1, 62f
                  slt          s8, gp, s6
62:               add          a0, tp, sp
63:               and          s3, s9, zero
                  slti         a5, s3, 922
                  addi         a3, a7, 1389
                  bltu         sp, s1, 84f
67:               srl          ra, t5, a4
                  bgeu         t4, a0, 79f
                  sll          t6, t2, s7
                  ori          s6, s4, 828
                  srai         s2, s4, 2
                  auipc        s11, 377943
                  slt          a6, t5, gp
                  sub          sp, s0, a6
                  lui          s6, 6560
76:               srli         gp, a7, 30
                  bgeu         t2, a2, 85f
                  or           a6, a2, a3
79:               srai         a1, a0, 27
                  slt          sp, s7, s8
                  andi         t4, a0, -1810
                  nop
                  sub          s2, a2, a0
84:               sltu         s0, a6, t5
85:               sltu         a0, s4, s4
                  beq          s5, a4, 103f
                  ori          s11, s10, 56
                  sra          a7, a5, t0
                  sra          a4, ra, t5
                  bltu         a5, a6, 110f
                  srl          sp, a5, t6
                  srli         a7, ra, 29
                  sub          s11, t1, a1
                  xor          a4, a6, sp
                  nop
                  xor          zero, zero, t2
                  bgeu         t0, a2, 111f
                  srli         gp, sp, 3
                  slli         a1, s7, 13
                  lui          s1, 918782
                  slli         gp, t2, 5
                  sltiu        a6, s4, -576
103:              slt          s4, s1, a5
                  srai         s1, t4, 2
                  addi         t2, s6, 977
                  xori         zero, s6, 968
                  bge          a6, s8, 126f
                  slli         a5, s8, 25
                  bgeu         s2, s11, 123f
110:              slt          t6, s10, t1
111:              bgeu         a5, s8, 119f
                  sub          sp, s7, s1
                  addi         s0, t6, -761
                  beq          s9, s9, 120f
                  andi         ra, a4, -1092
                  sll          sp, s10, t2
                  sltiu        s11, a3, 578
                  blt          a5, s11, 121f
119:              ori          t1, s7, 2005
120:              sltiu        a2, t4, -1980
121:              sll          a2, s11, a3
                  nop
123:              xori         s1, a4, -413
                  blt          s0, s3, 142f
                  bne          s10, t5, 138f
126:              sltu         t0, a4, t6
                  andi         t1, t3, -456
                  sll          a0, t3, s7
                  slli         a2, s2, 29
                  xor          s8, s7, t4
                  andi         a6, tp, -304
                  nop
                  beq          a0, s9, 146f
                  xor          a5, a2, s0
                  sra          a3, a5, a1
                  srai         s10, zero, 29
                  srai         s1, s10, 12
138:              bltu         s5, s8, 148f
                  sra          a5, gp, a4
                  and          s6, s6, t6
                  bgeu         zero, s8, 159f
142:              lui          s3, 210393
                  xori         t6, t4, 405
                  srli         a2, s0, 25
                  sltiu        sp, t3, 127
146:              sra          a1, t1, t2
                  slti         t1, a0, 1372
148:              blt          a7, sp, 165f
                  ori          s2, sp, 1328
                  auipc        a4, 357292
                  addi         s10, s4, -1968
                  srai         ra, s3, 26
                  sll          s9, a5, sp
                  xori         a0, s0, 1067
                  blt          s2, s1, 171f
                  ori          a7, s5, -1757
                  beq          a3, zero, 166f
                  slti         t5, ra, 545
159:              blt          zero, t6, 177f
                  xori         t1, a6, -169
                  xor          a2, t4, ra
                  bne          a6, t6, 170f
                  slli         ra, a3, 29
                  bne          gp, t2, 166f
165:              sltu         t1, t6, s8
166:              slti         a4, s5, -519
                  nop
                  srli         gp, s5, 21
                  sra          t4, s0, gp
170:              blt          s8, t3, 183f
171:              xor          s8, a4, t3
                  beq          a0, a0, 183f
                  slt          gp, tp, a0
                  lui          t1, 252939
                  slt          s3, a7, s1
                  slti         s10, s11, -974
177:              auipc        a3, 928108
                  sra          a6, gp, ra
                  auipc        s10, 44029
                  slti         t2, s3, -296
                  lui          t2, 328211
                  srli         t1, s11, 18
183:              xor          a5, t5, a2
                  srli         s6, t0, 19
                  addi         t4, s10, 221
                  auipc        a3, 190554
                  sub          s6, s8, s0
                  nop
                  slli         s2, t6, 28
                  slli         t4, a7, 29
                  bltu         a0, ra, 211f
                  addi         t5, a7, -1141
                  add          a2, a5, t1
                  ori          s9, s2, 1829
                  slli         a7, a1, 1
                  or           s6, t3, a6
                  sub          a1, s7, gp
                  bltu         t2, s10, 218f
                  bltu         t3, s3, 209f
                  or           gp, s1, ra
                  srli         s0, s7, 10
                  bltu         t6, t2, 208f
                  xor          a2, a4, t3
                  sub          s8, a0, a7
                  srl          s3, s2, s3
                  auipc        s6, 346697
                  nop
208:              or           a5, t3, a3
209:              ori          gp, sp, -679
                  xori         ra, s6, -1366
211:              nop
                  slt          a4, a2, gp
                  slt          t5, ra, s5
                  lui          a1, 574575
                  andi         a2, s10, 471
                  ori          s8, a4, 1111
                  sra          ra, s7, s10
218:              nop
                  beq          s10, s6, 234f
                  ori          a3, a6, -1088
                  sll          s8, zero, gp
                  srli         s4, s6, 28
                  srl          s3, t1, tp
                  slt          s3, s0, t5
                  addi         t1, s11, -1540
                  slt          a2, t0, t2
                  srl          ra, a7, a7
                  beq          t0, t4, 242f
                  sub          s1, a6, a5
                  sltu         t2, a0, tp
                  slli         tp, a4, 17
                  srai         a1, s10, 17
                  srli         t0, zero, 7
234:              nop
                  and          s3, a4, sp
                  ori          a3, sp, -1897
                  xor          s3, tp, s3
                  sltu         gp, s7, s8
                  bne          s4, t0, 258f
                  slt          a5, t3, t4
                  nop
242:              sltiu        zero, t1, -345
                  xori         a2, a1, -514
                  srl          s6, sp, a6
                  srl          t6, s2, zero
                  lui          s0, 241378
                  slli         a0, t6, 12
                  andi         a0, s6, -403
                  and          t6, gp, s9
                  srl          t1, ra, s8
                  bge          t3, s9, 254f
                  sll          s0, t6, s2
                  or           a0, zero, sp
254:              sltiu        s4, t3, -211
                  srai         a1, s10, 26
                  blt          a0, s0, 272f
                  ori          a3, a7, 1614
258:              add          sp, t6, t2
                  bne          a7, s8, 261f
                  beq          t4, a1, 264f
261:              slli         t5, t0, 4
                  lui          a7, 1045922
                  sltiu        a5, a7, 1222
264:              srli         a0, s9, 12
                  slli         s1, zero, 1
                  blt          s1, a6, 276f
                  addi         gp, t1, 218
                  beq          s5, zero, 276f
                  bltu         ra, t5, 272f
                  srli         zero, s10, 16
                  slt          a1, s3, a1
272:              or           s4, t4, tp
                  lui          zero, 67268
                  srai         s4, tp, 24
                  lui          a4, 13828
276:              and          s3, a7, s4
                  slli         s4, s0, 16
                  bgeu         sp, t3, 298f
                  sltiu        s1, t6, -1165
                  lui          a4, 941289
                  bne          t5, s3, 283f
                  blt          t3, s9, 295f
283:              auipc        s1, 634308
                  beq          zero, a6, 301f
                  slt          tp, a2, a5
                  and          gp, zero, a2
                  ori          a4, a7, -469
                  slli         s4, a0, 7
                  or           sp, t6, t1
                  bne          t2, t5, 304f
                  bne          a6, a4, 292f
292:              sltiu        a4, t4, -83
                  srl          a1, ra, s5
                  slt          s1, a1, s6
295:              beq          t4, s9, 308f
                  slli         t4, a1, 21
                  add          a4, s1, t2
298:              slt          zero, t5, s6
                  slli         s10, a5, 16
                  bltu         a6, t0, 320f
301:              sltiu        s10, t2, -1758
                  and          gp, s5, s0
                  add          s6, s5, s5
304:              bltu         s3, s8, 305f
305:              addi         s3, t5, -911
                  nop
                  slli         a4, gp, 1
308:              bgeu         a2, a6, 314f
                  slti         t4, s11, -859
                  sltu         s11, s11, a3
                  bltu         ra, a2, 314f
                  bge          t5, a6, 320f
                  slli         s4, s2, 8
314:              sltu         ra, a5, t3
                  bltu         a6, a3, 332f
                  slti         s3, s5, -1036
                  slli         t5, a3, 5
                  sll          s0, sp, s11
                  andi         s8, t1, -624
320:              nop
                  srli         t4, t5, 2
                  ori          a7, sp, -806
                  bgeu         s10, a6, 338f
                  bltu         s0, a7, 343f
                  bge          s0, s0, 339f
                  sltu         s11, a7, s11
                  or           s11, s10, s6
                  sltu         a5, s2, a5
                  blt          s3, s11, 339f
                  xor          s4, s5, t0
                  slt          t2, s2, s2
332:              xori         tp, sp, 1548
                  sltu         s6, t4, t3
                  slli         a5, s1, 26
                  sltu         a3, s4, s10
                  beq          a7, t0, 347f
                  bge          t0, s0, 345f
338:              sra          a4, a5, t4
339:              bltu         a1, a4, 356f
                  beq          t3, s3, 342f
                  slli         s11, s1, 22
342:              addi         t2, s1, 741
343:              slli         t4, a5, 8
                  bgeu         zero, sp, 358f
345:              auipc        ra, 1012957
                  srai         t1, zero, 9
347:              lui          t1, 104763
                  sub          s0, gp, t3
                  andi         s8, t4, 537
                  xori         s9, s6, -1308
                  lui          s0, 126775
                  sub          s9, s11, sp
                  bltu         s0, a1, 363f
                  lui          s0, 648063
                  andi         a6, a0, 765
356:              lui          t1, 751826
                  slli         s2, a2, 22
358:              beq          s8, a3, 368f
                  sra          s4, a3, t4
                  andi         t4, t0, -801
                  ori          t4, s11, 490
                  bgeu         tp, a4, 371f
363:              blt          s6, s5, 376f
                  xori         a7, zero, -42
                  lui          a0, 938232
                  and          a1, t2, s7
                  blt          a0, a0, 385f
368:              andi         s9, a3, -1960
                  auipc        s4, 561082
                  addi         a2, sp, -473
371:              add          a1, s1, s0
                  xor          sp, s8, t3
                  sub          s8, s7, a3
                  slt          s6, s6, a3
                  bltu         t4, s10, 391f
376:              srl          s9, tp, s10
                  nop
                  bge          a0, a5, 380f
                  sltu         zero, a7, a1
380:              srl          s10, a5, tp
                  xor          ra, s5, s10
                  bltu         a5, t6, 400f
                  beq          s3, t1, 399f
                  sub          gp, a3, s11
385:              bne          t6, s4, 405f
                  lui          a4, 523440
                  srli         a3, s1, 23
                  xori         t0, s4, -1908
                  bgeu         t3, zero, 393f
                  or           s8, a6, t6
391:              srl          s10, ra, s1
                  sra          gp, t1, s3
393:              auipc        a0, 260565
                  slt          tp, s10, s11
                  bne          s2, s1, 397f
                  nop
397:              nop
                  sltu         s6, a0, a7
399:              sll          s10, s1, s11
400:              bge          t1, s11, 420f
                  bge          a6, a6, 404f
                  auipc        tp, 136657
                  lui          zero, 462601
404:              slli         a3, s0, 10
405:              lui          s2, 599389
                  lui          a3, 602504
                  or           s11, a5, s6
                  nop
                  nop
                  bgeu         a7, s4, 421f
                  ori          sp, s8, -625
                  andi         gp, t4, -1596
                  sra          t2, zero, s4
                  slti         s6, s1, -820
                  sub          s9, s4, tp
                  srli         s4, s8, 29
                  auipc        s10, 716808
                  srai         t0, s7, 25
                  ori          s4, a3, -38
420:              and          a5, s6, s1
421:              bgeu         a2, a2, 429f
                  beq          t0, s6, 432f
                  auipc        s3, 928998
                  srli         a5, s6, 14
                  sltu         a1, tp, s5
                  ori          a5, t2, 1169
                  and          ra, s10, s8
                  or           s11, s7, t5
429:              and          t2, zero, a2
                  bltu         s1, tp, 432f
                  ori          s4, gp, -689
432:              sltiu        s3, s0, 1091
                  or           s8, s10, s9
                  blt          s1, s1, 454f
                  sltu         s3, s3, t4
                  sltiu        s10, s7, 1075
                  andi         a1, s2, 180
                  srl          zero, t4, tp
                  bgeu         t5, gp, 455f
                  auipc        s1, 722260
                  bne          s5, a5, 458f
                  ori          t1, s0, -1397
                  or           a2, s2, s3
                  bge          s11, a7, 450f
                  auipc        ra, 317790
                  sll          s3, a1, s0
                  andi         s1, zero, -1234
                  sll          s6, s2, s6
                  sll          zero, a6, a0
450:              ori          a3, a3, -649
                  slli         s3, a0, 15
                  bne          a1, s5, 455f
                  slti         t5, t0, -1660
454:              sll          ra, t5, a4
455:              srai         a6, sp, 18
                  or           s2, s7, s5
                  bge          t1, t2, 465f
458:              bne          a5, s7, 460f
                  lui          a4, 915724
460:              bgeu         t6, s7, 461f
461:              blt          t4, s5, 463f
                  blt          zero, t3, 479f
463:              bge          a6, a6, 481f
                  slli         tp, a3, 21
465:              beq          t3, t5, 468f
                  slti         a3, sp, 1816
                  sub          s6, a4, sp
468:              bge          s9, t5, 482f
                  srli         s6, t3, 9
                  sltu         a5, a6, ra
                  srli         sp, gp, 2
                  ori          tp, gp, 646
                  srl          s8, a5, sp
                  srl          a4, s8, a0
                  or           s0, t2, s9
                  add          s6, tp, tp
                  xori         a6, s5, -958
                  srl          a2, a0, s3
479:              xori         s2, s1, -700
                  blt          ra, a5, 484f
481:              or           sp, t0, t5
482:              srai         gp, t0, 28
                  blt          s5, a0, 496f
484:              sltiu        s3, t2, 395
                  add          tp, s9, s10
                  la           s1, region_1+161 #start riscv_load_store_rand_instr_stream_3
                  lb           t2, 49(s1)
                  xor          gp, a2, t6
                  lb           a2, 1312(s1)
                  sb           gp, 199(s1)
                  auipc        s10, 24773
                  sltu         t1, t3, s0
                  lhu          t0, 961(s1)
                  lbu          s2, 659(s1)
                  sb           s7, 269(s1)
                  and          s9, a6, s1
                  nop
                  lw           a5, 1707(s1)
                  srli         zero, zero, 9
                  slt          a7, a3, t0
                  lb           t1, 1186(s1)
                  ori          sp, sp, -1213
                  slli         t4, a2, 10
                  sltu         t6, s9, t6
                  sltiu        s11, a5, 675
                  or           zero, a7, tp
                  lbu          a2, 1582(s1)
                  addi         s11, gp, -936
                  lbu          t4, 1522(s1)
                  sh           a6, 1647(s1)
                  nop
                  sub          s4, a3, s5
                  lh           s8, 183(s1)
                  srl          t4, s10, a0
                  sra          a2, a7, a0
                  srli         a5, s2, 11
                  sb           a7, 284(s1)
                  xor          s11, a4, s10
                  lbu          t4, 700(s1)
                  addi         s2, t4, -1726
                  sub          t5, a6, s6
                  or           s10, gp, s11
                  xor          s10, s3, ra
                  lw           s8, 1275(s1)
                  sll          a1, s11, a4
                  or           tp, ra, tp
                  lbu          s11, 108(s1) #end riscv_load_store_rand_instr_stream_3
                  beq          t2, a2, 506f
                  xor          a5, t6, tp
                  xori         t6, gp, 576
                  lui          a0, 173286
                  bne          t4, t6, 505f
                  sra          t5, a5, s11
                  bltu         a5, t4, 510f
                  beq          s11, s7, 507f
                  or           t4, s0, s8
                  beq          s5, zero, 511f
496:              slli         ra, s10, 21
                  srl          tp, t2, a5
                  bgeu         ra, t1, 508f
                  slti         s9, s11, 1385
                  nop
                  bne          s6, a3, 511f
                  andi         zero, s0, -1958
                  sltu         t6, s0, a3
                  slt          sp, sp, s8
505:              slli         s2, s1, 4
506:              ori          a0, a6, -107
507:              slti         s8, s7, -1345
508:              beq          t5, t2, 527f
                  xor          s3, s6, s4
510:              srl          s10, t2, gp
511:              auipc        t4, 428193
                  srai         zero, t6, 2
                  andi         t5, s6, -821
                  and          a7, t1, a7
                  sltiu        a6, ra, 453
                  beq          s0, t0, 525f
                  sra          sp, s1, a7
                  slti         s9, s1, -1172
                  lui          tp, 892860
                  bne          s9, t5, 533f
                  add          t6, a0, ra
                  ori          t0, s0, -706
                  ori          s9, a3, 113
                  bltu         t5, tp, 544f
525:              andi         sp, sp, 151
                  addi         s6, a1, 1986
527:              srl          a6, t0, s5
                  or           s9, a7, s6
                  srli         s1, s0, 18
                  slti         gp, s3, -1852
                  addi         s4, t4, 365
                  xor          t6, s10, t4
533:              lui          a1, 680127
                  sltu         sp, a1, a0
                  auipc        sp, 367041
                  andi         a2, a3, 883
                  bne          s7, s0, 550f
                  auipc        gp, 35990
                  sub          ra, a4, a5
                  srai         t2, s0, 25
                  add          s6, t5, t3
                  beq          t0, t5, 544f
                  bge          a4, s6, 554f
544:              slli         t0, a6, 1
                  and          s0, s8, a4
                  andi         s11, zero, 1649
                  auipc        sp, 845116
                  beq          zero, tp, 565f
                  xor          a4, t4, a5
550:              blt          t1, s3, 570f
                  beq          t1, s8, 567f
                  sub          s10, s0, a0
                  addi         a6, a7, 1067
554:              srai         s4, t0, 13
                  beq          s0, a5, 558f
                  xor          a7, s9, sp
                  sltiu        a2, s1, 1090
558:              sra          a2, t6, a6
                  ori          s6, s1, 245
                  addi         gp, t6, -1088
                  sra          s2, a3, t2
                  slti         a5, s5, 1775
                  auipc        ra, 999322
                  xori         a5, t3, 1209
565:              slli         s2, t0, 31
                  slli         a6, t1, 21
567:              srl          t5, t5, t0
                  slti         s9, a3, 124
                  srl          a5, t6, a4
570:              srai         t0, t4, 1
                  add          s10, s2, s8
                  xor          a2, a2, t4
                  sra          a1, t1, s9
                  srli         t0, s0, 17
                  srli         a6, s9, 15
                  bgeu         zero, s8, 596f
                  nop
                  beq          zero, a7, 581f
                  bne          s5, a5, 593f
                  sra          s11, s2, s6
581:              srl          t5, tp, zero
                  xori         a2, t1, 91
                  nop
                  srai         s10, a7, 13
                  auipc        s11, 813573
                  bltu         s1, ra, 599f
                  nop
                  xori         a7, t5, -1250
                  sltiu        t4, t1, -361
                  or           s3, a6, a4
                  bne          tp, s5, 609f
                  srli         a6, a0, 31
593:              srli         s9, a2, 4
                  srl          s6, sp, sp
                  sltu         a2, ra, s10
596:              bge          s2, s8, 600f
                  xori         s8, a5, -1365
                  and          a0, t3, s2
599:              sub          zero, s5, s1
600:              slt          tp, a0, ra
                  bge          t4, a6, 615f
                  nop
                  beq          t3, a0, 613f
                  bltu         t5, s10, 623f
                  ori          a7, a2, -1054
                  srl          s4, a4, s5
                  sll          t1, s8, s1
                  sltu         t0, s0, sp
609:              bne          gp, s2, 615f
                  xor          s1, t1, s3
                  addi         a4, zero, -1692
                  add          t2, s11, t3
613:              add          s2, s5, s2
                  addi         a0, a6, -1079
615:              xor          s3, sp, a7
                  add          a4, a7, t5
                  bltu         a5, sp, 625f
                  bne          t2, s8, 620f
                  bne          t6, a4, 628f
620:              sub          a7, t4, a4
                  srli         ra, s8, 2
                  slt          gp, tp, zero
623:              srl          a0, tp, zero
                  slli         a5, t0, 30
625:              bltu         s7, s9, 627f
                  sub          s11, s4, a1
627:              beq          sp, tp, 636f
628:              bltu         s9, s4, 636f
                  blt          a7, s6, 636f
                  srli         t4, s8, 9
                  andi         s4, s4, 1940
                  bge          a2, s11, 636f
                  srl          a6, t3, s9
                  sub          s9, sp, t4
                  bgeu         a7, s0, 636f
636:              lui          ra, 810600
                  nop
                  lw           t5, 4(t3)
                  srai         t6, ra, 16
                  nop
                  addi         t3, t3, 60
                  slli         s4, s10, 10
846:              addi x25, x30, 0
846:              jalr x25, x25, 0
sub_2:            bltu         ra, a0, sub_2_stack_p
                  lui          s9, 552980
                  sll          t2, t0, s7
                  nop
sub_2_stack_p:    addi         t3, t3, -48
                  slt          a0, sp, s7
                  andi         t1, s3, -572
                  sub          sp, s11, a1
                  andi         gp, s1, 1508
                  or           s3, tp, s4
                  sw           t5, 4(t3)
                  sltu         s1, a7, a4
                  la           s3, region_1+1596 #start riscv_load_store_rand_instr_stream_3
                  lb           s1, -73(s3)
                  slti         s0, s6, 1179
                  sltu         a0, s9, s4
                  lb           s9, 243(s3)
                  sw           a6, -132(s3)
                  auipc        tp, 372194
                  sll          t6, s1, sp
                  addi         a4, a1, -1615
                  lui          s9, 523619
                  addi         sp, t4, 1714
                  slti         s11, ra, -1936
                  lhu          a2, -224(s3)
                  andi         ra, tp, 576
                  sll          sp, s5, ra
                  sb           s1, -235(s3)
                  sh           t1, -22(s3)
                  srl          t4, s0, s4
                  add          s9, s6, tp
                  andi         t4, sp, 107
                  sb           ra, -69(s3)
                  lui          s9, 91777
                  andi         zero, s7, -357
                  sub          s0, t3, gp
                  lhu          s10, 10(s3)
                  sb           s3, -19(s3)
                  sll          t6, s4, a6
                  sb           s0, -229(s3)
                  sra          s9, gp, a5
                  xor          s4, a3, s0
                  lhu          t1, -32(s3)
                  srli         a1, s5, 21
                  lui          s8, 165571
                  sb           a6, -153(s3)
                  ori          tp, s8, -101
                  sltu         s8, t4, a4
                  sb           gp, -95(s3)
                  slli         t4, s4, 30
                  xor          s10, sp, ra
                  slt          zero, s7, t3
                  sb           zero, -199(s3) #end riscv_load_store_rand_instr_stream_3
                  la           s2, region_1+103 #start riscv_load_store_rand_instr_stream_4
                  slli         t1, s10, 7
                  xori         zero, a5, 606
                  lhu          a6, 1767(s2)
                  lui          a0, 905472
                  lhu          zero, 1277(s2)
                  add          a0, a0, s9
                  or           s9, a3, ra
                  sra          sp, tp, sp
                  lbu          a1, 664(s2)
                  xor          s11, s4, s8
                  nop
                  xori         s8, a3, -903
                  srl          a7, s6, t1
                  sh           a3, 1101(s2)
                  sb           t2, 607(s2)
                  lh           ra, 1805(s2)
                  sltu         zero, t0, tp
                  or           s9, s5, a5
                  sltu         tp, t2, s4
                  lhu          s9, 1595(s2)
                  lb           a6, 388(s2)
                  addi         t1, t3, -991
                  lb           t4, 1535(s2)
                  lb           t2, -60(s2)
                  andi         t6, a2, -853
                  srl          s4, s5, a2
                  slli         s0, ra, 12
                  srli         gp, t6, 7
                  lbu          s10, 380(s2)
                  sh           a1, 181(s2) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+827 #start riscv_load_store_rand_instr_stream_0
                  sh           s10, 1123(sp)
                  sub          t0, s2, t6
                  sltiu        t5, s9, -1530
                  lbu          s6, 148(sp)
                  sb           a2, -273(sp)
                  sb           a2, -406(sp)
                  lw           t0, -763(sp)
                  ori          a7, t4, -555
                  lbu          s0, -544(sp)
                  sltu         tp, s3, t1
                  slt          zero, s0, a0
                  ori          s4, s0, -1670
                  nop
                  xor          s9, s0, s4
                  sh           t3, -133(sp)
                  sb           gp, -272(sp)
                  lui          s2, 219443
                  or           a7, a2, s7
                  lbu          a0, -426(sp)
                  lb           s0, 1096(sp)
                  slti         ra, sp, 949
                  sra          a5, a5, a2
                  sltu         s10, s9, a6
                  and          t6, a2, t0
                  srli         gp, a1, 3
                  ori          s0, s9, -523
                  lbu          s3, 216(sp)
                  and          t0, t5, s6
                  srli         a0, s5, 17
                  srl          a3, tp, s3
                  sb           t0, 871(sp)
                  auipc        a3, 647130
                  nop
                  slt          t5, a0, a1
                  lbu          a5, 151(sp) #end riscv_load_store_rand_instr_stream_0
                  slli         a6, ra, 16
                  blt          s2, gp, 2f
2:                bltu         s7, sp, 11f
                  xori         a5, t5, 997
                  sll          a6, a0, s5
                  ori          a6, zero, 1659
                  bne          a4, s9, 12f
                  nop
                  blt          tp, s7, 22f
                  slt          s4, t4, gp
                  addi         zero, a0, -1888
11:               srai         s1, t4, 8
12:               sll          t5, a6, t5
                  lui          s10, 545727
                  or           t1, s11, s7
                  beq          s1, a3, 23f
                  slt          s3, a1, t0
                  bge          t6, t4, 22f
                  add          s6, s9, s7
                  sltu         t2, a4, t3
                  xor          a1, t0, a0
                  bltu         t3, a5, 28f
22:               slli         t0, ra, 22
23:               bltu         s6, t1, 43f
                  slt          gp, s3, a2
                  or           t5, s0, s11
                  srli         gp, s9, 19
                  sltiu        t6, t6, 1587
28:               nop
                  nop
                  slti         gp, s3, 908
                  xori         a5, a3, -351
                  slli         a5, a4, 22
                  ori          ra, t1, 1502
                  and          s6, s8, s11
                  slli         s3, a2, 18
                  auipc        a5, 1009043
                  bltu         s10, a4, 55f
                  or           t1, s7, t6
                  bgeu         s7, s6, 41f
                  addi         zero, s11, -1297
41:               sll          a7, a0, a4
                  bltu         t6, t1, 60f
43:               and          gp, s2, a4
                  slt          zero, t2, zero
                  sll          zero, s2, zero
                  and          t4, zero, t6
                  nop
                  beq          a0, a2, 63f
                  beq          ra, t1, 68f
                  srli         sp, s11, 26
                  slt          t6, zero, s9
                  sub          sp, s7, s9
                  slli         t5, a0, 25
                  slti         s2, a5, 1452
55:               andi         a3, s10, 1431
                  nop
                  andi         s11, s9, -1644
                  srai         a4, a4, 1
                  sra          s1, s4, a7
60:               slt          a0, t1, t1
                  ori          t6, t2, -1923
                  bge          zero, t5, 63f
63:               xor          s6, s0, s6
                  sltiu        gp, s8, 1829
                  bltu         s10, s0, 69f
                  sll          a1, s4, a5
                  blt          a1, gp, 68f
68:               ori          s3, s11, -344
69:               beq          a2, t6, 81f
                  bne          t5, s11, 80f
                  bge          s3, a2, 90f
                  sll          t1, s7, t0
                  and          s6, s11, s1
                  add          t5, a6, t2
                  bltu         ra, a6, 81f
                  ori          a3, t4, 1404
                  bltu         s8, a7, 91f
                  sltu         a7, t3, s11
                  ori          s9, a4, -1969
80:               sub          t6, s4, t0
81:               sll          a4, t0, s8
                  bltu         s6, a7, 87f
                  and          s9, tp, s1
                  or           a4, s5, s0
                  addi         a3, s11, 1079
                  lui          a0, 870415
87:               blt          s0, s3, 99f
                  bltu         s10, sp, 90f
                  slli         tp, sp, 29
90:               addi         a6, a1, -992
91:               and          zero, s0, s2
                  bgeu         a0, a6, 107f
                  auipc        s1, 831732
                  auipc        t4, 513109
                  sub          gp, s10, ra
                  bltu         t0, s11, 104f
                  sub          s4, a2, tp
                  sltu         s1, s9, s2
99:               slli         a4, s11, 20
                  lui          a3, 951416
                  or           t5, s4, s11
                  or           s8, tp, s7
                  bne          s9, a2, 107f
104:              sltu         t2, tp, s11
                  auipc        a1, 131163
                  bgeu         a4, t2, 124f
107:              slli         t0, s2, 20
                  slti         t2, t5, 359
                  sll          t4, s4, s11
                  sra          t4, sp, t2
                  xor          tp, t6, a6
                  blt          s10, s11, 120f
                  sra          t6, tp, a0
                  nop
                  sra          s0, s5, s10
                  sra          s2, s11, s0
                  or           sp, s0, s5
                  sub          t0, s0, a5
                  sll          ra, s7, t1
120:              slti         a7, s2, -562
                  auipc        t5, 329850
                  bge          a4, s9, 130f
                  nop
124:              bgeu         t1, a5, 139f
                  nop
                  nop
                  addi         s0, tp, -99
                  srli         t0, s3, 26
                  sll          t6, s9, s3
130:              sll          gp, tp, zero
                  bltu         a4, t3, 140f
                  addi         sp, s4, -1181
                  slti         gp, s1, 931
                  addi         s4, t0, -1651
                  beq          a5, t2, 143f
                  beq          tp, s3, 154f
                  or           t2, t5, s8
                  add          a0, s8, ra
139:              and          t0, a0, a3
140:              nop
                  srli         s3, a0, 27
                  sll          zero, t0, s0
143:              sra          t4, sp, ra
                  bge          t1, a3, 151f
                  sltiu        sp, a3, 1276
                  andi         s0, t1, 124
                  bne          t1, s11, 161f
                  ori          a7, gp, -1287
                  xori         a7, gp, -723
                  or           t4, a2, a3
151:              bltu         a4, s3, 156f
                  slt          a6, a2, s2
                  blt          a2, a7, 173f
154:              slli         t2, a0, 29
                  srli         ra, a3, 19
156:              sra          gp, a3, t2
                  sra          a1, t3, a2
                  bltu         s0, s6, 159f
159:              sra          a6, a3, s0
                  add          a4, ra, a1
161:              andi         a5, a6, 726
                  sltu         ra, s2, a0
                  nop
                  nop
                  or           a3, s8, s4
                  beq          t4, s6, 181f
                  sub          s9, t5, t5
                  bgeu         t0, s0, 173f
                  bne          sp, sp, 183f
                  and          t5, s10, gp
                  la           sp, region_1+1044 #start riscv_load_store_rand_instr_stream_1
                  sb           t3, -173(sp)
                  sb           a2, -5(sp)
                  sb           s4, -172(sp)
                  and          t5, t3, a7
                  sltiu        s9, t6, -1385
                  sltu         a3, sp, s2
                  ori          t0, s6, -43
                  sw           s6, -188(sp)
                  srli         s6, s5, 12
                  sll          ra, a0, t3
                  sh           t0, 24(sp)
                  xor          s0, s10, a2
                  xori         s1, t5, 907
                  andi         zero, a6, -1660
                  lbu          t0, -46(sp)
                  add          gp, s4, t5
                  xori         s6, s11, 1026
                  sltiu        t0, s1, 961
                  srli         s9, s3, 6
                  xori         s1, s11, -1141
                  sltu         a5, zero, s10
                  xori         a3, t6, 170
                  or           t6, s10, t4
                  or           a2, s7, s10
                  auipc        s3, 904225
                  lb           a3, 38(sp)
                  lb           a2, -159(sp)
                  lbu          s4, -189(sp)
                  nop
                  add          s0, s1, a7
                  slli         s3, a7, 20
                  sub          a4, s8, s0
                  sra          a2, t1, sp
                  sltu         a7, t5, t2
                  andi         a6, s4, 1680
                  sh           s7, -46(sp)
                  sb           zero, -132(sp) #end riscv_load_store_rand_instr_stream_1
                  bgeu         t1, t6, 179f
                  add          a4, s5, s2
173:              xor          s11, t0, gp
                  xor          t0, a5, zero
                  andi         s10, s4, 1016
                  srai         s10, s11, 7
                  ori          a3, s11, 228
                  bne          s3, s8, 186f
179:              sll          s0, t3, s0
                  nop
181:              ori          a5, s3, -65
                  beq          s7, t4, 186f
183:              sra          t6, t6, s6
                  addi         a1, s2, 1677
                  srli         s11, s1, 2
186:              sltu         t6, s0, s0
                  srli         a7, a5, 12
                  sra          gp, a4, gp
                  beq          s9, s1, 197f
                  auipc        s11, 558398
                  la           sp, region_1+1355 #start riscv_load_store_rand_instr_stream_2
                  sb           t2, -14(sp)
                  lb           t4, 13(sp)
                  xori         a0, a2, -1679
                  sra          t4, tp, s11
                  lui          s11, 627391
                  lbu          s11, 4(sp)
                  sub          s3, s4, s2
                  sb           t2, -14(sp)
                  lb           t1, -11(sp)
                  xor          a6, t4, t4
                  slt          t2, s6, s3
                  ori          a4, a2, -531
                  lbu          a7, 3(sp)
                  sltiu        s9, a3, -1314
                  lhu          s4, -13(sp)
                  sb           t3, 4(sp)
                  lbu          t4, -8(sp)
                  sb           a0, 8(sp)
                  sb           t6, 6(sp)
                  sb           s1, -6(sp)
                  lhu          s2, -7(sp)
                  lbu          s10, 6(sp)
                  sub          s11, a1, s5
                  sra          t1, ra, s9
                  srai         a2, t6, 2
                  sb           tp, 10(sp)
                  lb           t5, -4(sp)
                  xori         s6, t4, 1976
                  xor          gp, s1, s11
                  sb           t2, 12(sp) #end riscv_load_store_rand_instr_stream_2
                  srai         t5, s6, 6
                  lui          zero, 967373
                  lui          s9, 161884
                  bne          a5, t5, 212f
                  ori          s0, a1, 1964
                  blt          s11, t2, 215f
197:              srli         s8, s1, 12
                  slli         t6, s5, 14
                  slt          sp, a0, t4
                  add          s11, a6, t2
                  bne          t2, t4, 203f
                  lui          t5, 975337
203:              bgeu         a7, s10, 222f
                  slt          a1, a3, s8
                  and          s9, t1, t4
                  srai         s11, a2, 24
                  srl          t2, t1, a0
                  and          a5, ra, zero
                  bge          s1, s2, 213f
                  lui          s6, 900933
                  add          a0, a2, tp
212:              bgeu         zero, t5, 222f
213:              bne          t5, s8, 215f
                  sltu         s2, s8, t4
215:              or           sp, a4, s7
                  bge          ra, a0, 217f
217:              auipc        s10, 895371
                  and          t0, a7, s0
                  slli         t1, s5, 6
                  xor          s2, a2, sp
                  andi         zero, a5, 346
222:              addi         t0, zero, -1871
                  beq          s0, a3, 229f
                  slt          t0, t4, s3
                  sltiu        s10, a4, -2006
                  xor          t0, s8, t3
                  sltu         a7, zero, ra
                  sub          s3, s5, s10
229:              sub          ra, s3, s8
                  auipc        gp, 298241
                  sll          s4, t0, s3
                  auipc        s3, 572807
                  addi         s1, sp, -933
                  slt          s9, t1, s10
                  and          a3, s10, a6
                  bltu         s11, t1, 237f
237:              ori          t0, s2, 1476
                  sltu         t6, s0, t2
                  sra          a3, s5, s6
                  sll          zero, t0, a4
                  slt          a6, a6, s6
                  bgeu         t0, s2, 254f
                  addi         a2, t6, -756
                  beq          a1, a7, 262f
                  beq          t5, s8, 257f
                  auipc        a3, 852482
                  sub          a1, s1, s11
                  srl          s8, s8, a1
                  srli         a0, s8, 9
                  slt          a3, a1, s6
                  nop
                  xor          t6, zero, s5
                  sub          s11, a3, t1
254:              sll          a1, a2, s11
                  xori         a4, s0, 809
                  bne          s8, t3, 262f
257:              ori          s6, gp, 246
                  blt          s8, sp, 277f
                  srai         s4, s3, 26
                  auipc        t5, 509103
                  bgeu         t5, t5, 271f
262:              auipc        s9, 905534
                  ori          a6, t5, -1117
                  slti         s0, s2, 1074
                  xor          ra, s7, gp
                  slti         t4, s5, -1117
                  slli         s3, s10, 7
                  or           zero, gp, a7
                  ori          a7, a2, 138
                  nop
271:              srl          s4, s1, a4
                  beq          tp, s4, 287f
                  sltu         s3, s4, sp
                  bltu         a7, s4, 275f
275:              blt          tp, s4, 283f
                  srai         a4, a2, 4
277:              lui          s10, 668435
                  lui          t5, 811761
                  bne          sp, t6, 297f
                  slti         t4, gp, 1086
                  slt          t6, s9, s5
                  sltu         a0, t6, zero
283:              ori          t1, t4, -1379
                  srai         a2, t0, 12
                  bgeu         s11, t2, 294f
                  sub          ra, s0, a5
287:              add          t6, ra, s2
                  xor          s10, a1, tp
                  bne          zero, a7, 301f
                  addi         a1, a5, -1160
                  bltu         tp, s7, 305f
                  andi         ra, zero, 1910
                  and          a6, t3, gp
294:              lui          a4, 721397
                  srai         s2, a1, 30
                  slt          t6, sp, t6
297:              auipc        s4, 377302
                  srli         a7, s2, 8
                  slti         t4, t3, -289
                  ori          s4, t2, 1827
301:              sra          tp, a3, s7
                  slti         a6, t3, -518
                  nop
                  bge          t6, a4, 316f
305:              sltu         s1, t4, a6
                  srl          s10, a1, a4
                  bgeu         a4, s5, 314f
                  slt          t4, s0, s7
                  or           sp, t0, s8
                  beq          t3, s9, 328f
                  sltu         tp, s0, tp
                  beq          a6, s7, 317f
                  sra          a4, a6, t1
314:              srai         tp, s6, 23
                  bgeu         ra, s7, 335f
316:              addi         a2, sp, -1237
317:              srl          s3, t4, s0
                  beq          t2, a1, 322f
                  srli         a5, tp, 21
                  xor          t0, s6, a2
                  srl          a7, zero, a0
322:              bgeu         a2, s1, 336f
                  sub          s0, a4, ra
                  bgeu         a2, s7, 326f
                  srai         t5, a1, 22
326:              xor          t1, t1, tp
                  srli         t0, s10, 10
328:              ori          s0, s4, 1834
                  bne          s6, a3, 347f
                  slti         t1, s5, 1074
                  sltu         s0, zero, ra
                  or           s1, t2, t3
                  bgeu         s1, a2, 334f
334:              xor          ra, ra, a4
335:              xori         gp, s6, -1093
336:              srai         sp, s11, 20
                  slt          s8, a2, a4
                  xori         tp, a6, 949
                  blt          zero, gp, 341f
                  auipc        t1, 800333
341:              andi         ra, a2, -39
                  srli         sp, ra, 11
                  addi         s9, ra, -1573
                  beq          a5, t4, 359f
                  add          gp, t1, t1
                  srli         sp, s11, 30
347:              and          s8, a6, a7
                  xori         t2, sp, 1645
                  andi         s6, a2, 16
                  beq          s6, zero, 356f
                  xor          sp, s9, s10
                  sll          s8, a1, s10
                  srl          gp, a7, s2
                  bne          s8, a3, 358f
                  slti         zero, a6, -266
356:              slti         s11, s7, 2007
                  add          a6, a5, t0
358:              xor          s2, a2, ra
359:              srai         s2, s6, 25
                  srai         zero, a7, 4
                  and          t0, a6, a0
                  nop
                  addi         t0, t3, -425
                  bgeu         t0, s10, 372f
                  srli         tp, tp, 26
                  sub          ra, s8, s6
                  lui          zero, 318096
                  nop
                  ori          sp, a6, -391
                  bgeu         gp, a0, 375f
                  slli         t1, ra, 8
372:              xor          a4, t4, t3
                  xor          a2, s2, a6
                  sra          s1, s5, t6
375:              sltiu        s9, zero, 746
                  srl          t1, s6, a5
                  ori          a6, s5, -2031
                  beq          a1, t6, 386f
                  slti         s0, t4, 1678
                  add          sp, t0, t3
                  ori          sp, t2, 837
                  or           t1, a1, t3
                  sra          t0, gp, t2
                  sll          a6, a2, a5
                  bne          s8, ra, 404f
386:              and          a0, t3, ra
                  lui          t0, 823109
                  nop
                  sll          ra, t0, t1
                  blt          zero, tp, 391f
391:              slli         s0, tp, 15
                  addi         a3, sp, -354
                  bgeu         s8, t6, 401f
                  ori          s2, s3, -592
                  sra          t0, s7, a1
                  slli         t2, s6, 5
                  bgeu         a7, t2, 403f
                  srl          t5, s3, t5
                  or           a7, a5, zero
                  sltu         t2, s7, a0
401:              srl          ra, a1, t3
                  or           s3, s0, a7
403:              xori         a0, s0, 593
404:              srl          t5, s7, tp
                  ori          t4, s0, 834
                  andi         a1, a0, -1863
                  beq          s7, s5, 422f
                  ori          s1, t0, -915
                  beq          t0, t3, 416f
                  andi         t5, s9, 1311
                  blt          a3, s3, 417f
                  slti         t1, a3, -37
                  sra          a0, t6, a0
                  srli         s2, ra, 26
                  bgeu         t0, a2, 434f
416:              bge          t6, a6, 421f
417:              srai         s3, a6, 15
                  bgeu         sp, gp, 433f
                  bgeu         a5, s11, 437f
                  ori          a6, sp, -1900
421:              beq          t3, s8, 435f
422:              xor          t4, s2, zero
                  beq          a1, s5, 442f
                  bne          t5, ra, 432f
                  bge          t4, s11, 433f
                  srl          a1, t0, sp
                  srli         a5, s0, 24
                  sub          a4, a3, s4
                  sltu         t2, t3, s9
                  srli         s2, s7, 24
                  beq          t3, a3, 441f
432:              or           gp, t0, s10
433:              bgeu         s8, s2, 434f
434:              addi         a7, t4, 1635
435:              and          ra, tp, s7
                  add          s10, zero, s4
437:              srl          a5, ra, a1
                  bne          gp, s3, 442f
                  slli         t2, t1, 27
                  and          t6, t6, s1
441:              add          a1, a1, s6
442:              bne          t5, s5, 443f
443:              auipc        s4, 12449
                  bne          t6, s5, 450f
                  and          s9, t1, t6
                  and          ra, s7, t3
                  srl          s0, s6, a6
                  sub          tp, t5, gp
                  sub          t2, t4, a4
450:              sll          t4, a4, gp
                  ori          s1, a7, -528
                  xor          a0, s11, t3
                  bgeu         s1, a4, 455f
                  add          gp, a0, a4
455:              and          t4, s5, tp
                  slt          t2, t5, sp
                  lui          a6, 949492
                  and          t5, s3, a0
                  bltu         a6, t0, 479f
                  ori          t4, a5, 1938
                  slt          s10, t6, s0
                  sltu         s9, tp, s7
                  sltiu        a2, t0, 576
                  bne          s5, tp, 482f
                  slt          s4, t2, a2
                  srai         tp, t0, 24
                  blt          a5, s4, 468f
468:              or           a1, a5, a2
                  sub          s9, s10, t5
                  srai         s6, a6, 23
                  srl          a6, zero, tp
                  or           t4, a7, a5
                  blt          s9, a0, 478f
                  sra          ra, s6, a2
                  slli         a0, ra, 7
                  sub          a7, s1, a1
                  add          s1, s5, zero
478:              ori          a4, s9, 802
479:              srli         s3, t4, 1
                  bne          sp, a1, 484f
                  or           a7, a6, t6
482:              auipc        t5, 549219
                  slli         s1, a3, 29
484:              slli         s10, s0, 11
                  srai         ra, a4, 25
                  sltu         t1, a4, s11
                  srl          t1, s8, t4
                  lui          s1, 73471
                  andi         s11, t6, -1709
                  or           t0, sp, t4
                  or           a4, tp, s5
                  srl          t4, t4, t6
                  sub          s10, sp, s11
                  blt          a1, s2, 502f
                  srai         a1, ra, 26
                  ori          t0, s11, -1425
                  lui          a4, 571022
                  and          ra, a4, s4
                  blt          a2, s2, 511f
                  ori          s11, s8, -1807
                  slt          a3, a6, t3
502:              slli         s1, gp, 13
                  xor          tp, zero, s3
                  sltu         a7, a2, s7
                  auipc        s10, 882711
                  srai         s10, s4, 17
                  add          s11, t3, s1
                  sltiu        s1, s0, 11
                  slli         a5, s7, 14
                  blt          s1, s8, 512f
511:              srl          t6, a2, a4
512:              sub          a4, tp, s9
                  nop
                  sltu         s3, t3, t4
                  slli         t0, a2, 11
                  srl          a3, s0, a2
                  or           a4, s10, t4
                  andi         tp, t4, -1653
                  sltiu        s9, s7, -342
                  slti         a5, s5, -602
                  blt          s4, ra, 535f
                  auipc        t5, 248457
                  bltu         zero, t1, 535f
                  auipc        zero, 913339
                  add          s9, gp, s5
                  add          gp, a4, s0
                  slt          a1, a7, t3
                  and          s8, a0, s11
                  bgeu         a6, t6, 547f
                  sra          sp, ra, t3
                  slt          a3, a3, t1
                  beq          a0, ra, 541f
                  lui          s10, 279667
                  sltu         a1, s4, s6
535:              bne          t1, s9, 543f
                  sub          ra, gp, t1
                  sltiu        tp, s4, 1878
                  srai         t1, s5, 24
                  auipc        tp, 160011
                  bne          s9, s8, 546f
541:              srli         t4, a1, 25
                  and          sp, s6, s0
543:              or           a2, s5, a7
                  and          s1, s11, sp
                  srl          t1, s3, sp
546:              srai         a7, zero, 31
547:              and          s1, s2, s0
                  slli         s1, gp, 1
                  bge          s4, s5, 554f
                  nop
                  ori          gp, s7, 1018
                  bne          sp, s1, 570f
                  blt          t5, gp, 557f
554:              add          s11, t4, s5
                  srai         s4, a1, 28
                  sltu         a1, tp, s0
557:              or           s8, s10, a3
                  sll          s10, t3, t0
                  sltiu        a5, t5, 430
                  sra          t2, t0, gp
                  nop
                  xori         a2, s2, -1282
                  andi         a1, s11, 1489
                  slt          s1, a3, t3
                  blt          t6, gp, 577f
                  and          a7, s10, s1
                  slt          tp, s10, tp
                  ori          zero, a0, 1494
                  srai         s0, s11, 31
570:              slti         a7, t3, -1682
                  sltu         t5, t4, sp
                  slti         a5, s9, -1665
                  sra          a4, a1, zero
                  addi         s10, a1, 2043
                  xori         a3, a7, -1140
                  auipc        s3, 227325
577:              xori         t6, a5, -1835
                  bgeu         t0, t3, 590f
                  slti         s6, s9, 1352
                  auipc        a2, 915349
                  or           a1, t1, t1
                  srl          t4, t2, ra
                  bgeu         s4, t4, 593f
                  sll          t2, s8, a7
                  bltu         a7, s8, 592f
                  bltu         t0, s2, 591f
                  ori          s2, gp, -1887
                  lui          s8, 515191
                  nop
590:              srli         s0, sp, 8
591:              sltu         s6, a6, zero
592:              sub          zero, t4, s10
593:              sub          s10, a2, t3
                  slti         s11, t2, -1206
                  sltu         s10, a3, a5
                  auipc        s9, 34856
                  lui          s8, 145210
                  srai         s8, s4, 25
                  and          s9, s10, s10
                  auipc        gp, 385580
                  sll          s1, a3, s9
                  xor          s0, a4, s6
                  and          a2, s10, s9
                  addi         s1, s5, 1425
                  ori          a5, s1, 1761
                  beq          t4, s7, 614f
                  lui          a7, 252950
                  andi         t2, t3, 723
                  bltu         gp, tp, 615f
                  beq          a4, s1, 628f
                  srai         gp, t2, 22
                  add          a4, s4, a2
                  slli         s11, a7, 8
614:              and          s6, zero, a6
615:              sll          a1, t0, t0
                  sltu         tp, s3, a6
                  blt          a3, s8, 618f
618:              ori          zero, gp, -200
                  bltu         s7, s11, 620f
620:              bne          gp, s1, 628f
                  or           t1, t6, s4
                  beq          s2, s11, 630f
                  sra          t0, ra, s2
                  blt          s7, s11, 632f
                  lui          a4, 268380
                  slli         s2, tp, 23
                  srl          s3, zero, a6
628:              bne          t3, t5, 643f
                  slti         ra, s0, -159
630:              beq          t0, s2, 632f
                  bge          gp, s10, 649f
632:              andi         a5, s4, 648
                  sltiu        zero, t5, -1696
                  nop
                  bne          ra, s1, 649f
                  addi         t4, a6, -1003
                  bltu         t1, s0, 651f
                  slti         s9, tp, 209
                  srli         ra, a5, 24
                  lui          zero, 240709
                  or           s2, t5, gp
                  xori         s6, s4, 608
643:              sub          s11, t4, s2
                  auipc        a6, 254113
                  xor          ra, zero, a3
                  blt          s3, s3, 650f
                  blt          a4, t5, 648f
648:              slti         s2, t3, 1126
649:              sltu         s1, ra, t0
650:              nop
651:              auipc        t0, 864428
                  xor          s6, s1, s6
                  srl          a3, a2, zero
                  lw           t5, 4(t3)
                  or           a0, zero, a2
                  nop
                  addi         t3, t3, 48
                  addi         ra, a1, -640
848:              addi x7, x30, 0
848:              jalr x7, x7, 0
sub_8:            blt          t1, sp, sub_8_stack_p
sub_8_stack_p:    addi         t3, t3, -60
                  add          a0, s5, sp
                  slti         a0, a6, -1764
                  sw           t5, 4(t3)
                  srl          t0, tp, gp
                  sltiu        s3, s11, -1524
                  andi         s9, s10, -1459
                  slt          zero, s6, tp
                  la           a0, sub_10
                  addi         a0, a0, 874
                  and          s8, s11, a5
                  srli         s9, s8, 16
                  beq          a4, a2, sub_8_j12 #branch to jump instr
                  srli         gp, a7, 29
                  srli         t1, a2, 3
sub_8_j12:        jalr         t5, a0, -873 #jump sub_8 -> sub_10
                  srli         a4, sp, 9
                  ori          t2, a6, 1376
                  xor          s11, a3, t5
                  srl          s3, a3, sp
                  bne          ra, a4, sub_8_j13 #branch to jump instr
                  xori         s9, t1, -138
                  addi         gp, s11, 1610
sub_8_j13:        jal          t5, sub_10 #jump sub_8 -> sub_10
                  sltiu        s11, a0, -1210
                  sll          t1, t1, s7
                  bltu         a6, t4, sub_8_j14 #branch to jump instr
                  lui          t6, 297139
                  and          gp, t5, ra
                  slti         t1, gp, 1588
sub_8_j14:        jal          t5, sub_9 #jump sub_8 -> sub_9
                  slti         t6, s0, -1527
                  bltu         t0, a0, 10f
                  beq          ra, a1, 4f
                  add          a2, t3, s4
4:                ori          t0, s2, 1522
                  bne          s2, t3, 25f
                  and          s10, t6, a6
                  slti         gp, t1, 893
                  lui          t0, 280421
                  bge          s9, ra, 14f
10:               srl          ra, s4, s7
                  sra          a6, t2, t0
                  or           a0, t6, a3
                  addi         a1, sp, -549
14:               bgeu         a3, s9, 21f
                  beq          s5, t4, 32f
                  sltu         s0, s8, s1
                  xor          t4, s9, s6
                  and          a3, t1, t6
                  sll          t6, s5, a6
                  sra          t4, s1, s10
21:               add          s3, a2, s4
                  auipc        a5, 339419
                  andi         s6, a6, 931
                  lui          a4, 467849
25:               or           t2, s7, t2
                  ori          s1, s1, 650
                  sltu         a4, s6, s10
                  andi         a2, s11, -824
                  sra          s2, a5, a4
                  auipc        s9, 156525
                  andi         t0, a5, -1436
32:               srai         s1, a5, 29
                  lui          a4, 808011
                  lui          s11, 991263
                  andi         t0, gp, 352
                  or           a6, a2, a4
                  lui          s1, 432556
                  auipc        s10, 843593
                  and          a6, s11, tp
                  auipc        s10, 934977
                  bgeu         s10, a1, 46f
                  bltu         tp, s5, 61f
                  srl          s4, a2, t6
                  slti         t2, gp, 661
                  andi         s3, sp, -24
46:               nop
                  nop
                  or           s9, s4, a1
                  slli         a6, t4, 9
                  srai         s11, a5, 13
                  andi         zero, s9, -1365
                  add          a0, a6, a6
                  xor          t1, a6, gp
                  sra          a4, sp, a1
                  blt          a7, a5, 61f
                  andi         t0, t0, -1021
                  lui          s10, 204441
                  bgeu         t4, t5, 59f
59:               sll          a5, a2, a7
                  slti         s6, sp, -1452
61:               srl          s10, a7, a6
                  or           s2, a6, ra
                  sra          a0, a2, t0
                  slt          a7, s6, a4
                  sltu         t0, a4, a7
                  or           s0, a6, t3
                  lw           t5, 4(t3)
                  srai         a4, a0, 23
                  sub          t2, a1, s6
                  sub          a1, t3, s9
                  addi         t3, t3, 60
                  auipc        a3, 659086
105:              addi x29, x30, 0
105:              jalr x29, x29, 0
sub_6:            add          gp, a2, t2
                  addi         t3, t3, -52
                  and          a1, a2, t6
                  xor          s8, a2, a0
                  sub          t2, tp, t3
                  and          t2, s3, a5
                  sw           t5, 4(t3)
                  sll          s11, s3, s2
                  la           a0, region_0+614 #start riscv_load_store_rand_instr_stream_1
                  slt          t0, s3, s10
                  sb           t0, -7(a0)
                  lbu          s1, -17(a0)
                  slt          sp, s8, t6
                  lb           t6, -5(a0)
                  lui          s1, 1042770
                  sb           ra, -5(a0)
                  sb           a0, 43(a0)
                  andi         gp, sp, 1259
                  slli         s0, t4, 22
                  lb           t1, 27(a0)
                  lh           s2, -8(a0)
                  lw           a7, 54(a0)
                  add          t0, a4, s4
                  sub          ra, t2, a4
                  ori          a3, t1, -1181
                  lb           t1, -47(a0)
                  lb           s4, 25(a0)
                  slli         gp, t6, 21
                  sb           ra, -55(a0)
                  srl          s9, s6, sp
                  lh           zero, 64(a0)
                  lb           ra, 44(a0)
                  sb           a1, 54(a0)
                  lw           t6, 50(a0)
                  lbu          a6, 41(a0)
                  lbu          s2, 0(a0)
                  sb           zero, -55(a0)
                  add          gp, a5, gp
                  lb           a3, 8(a0)
                  ori          a6, t0, 362
                  lbu          a1, 63(a0)
                  xor          s11, t2, sp
                  lbu          s8, -27(a0)
                  addi         s1, a0, 1483
                  sub          a7, s3, t1
                  srl          sp, s4, t5
                  sb           s7, -38(a0)
                  srai         a2, t4, 25
                  lh           t5, 64(a0)
                  slli         sp, gp, 16
                  lb           s9, 13(a0)
                  or           s10, a4, t5
                  lb           s2, -48(a0)
                  srli         gp, a4, 4
                  sw           t0, -6(a0)
                  sh           s10, 42(a0)
                  lbu          a7, 57(a0)
                  sltu         a3, s6, s6
                  sll          a1, sp, ra
                  srli         a3, s4, 15
                  sll          t4, s7, a6
                  xori         t4, sp, 1887
                  lb           a5, -5(a0)
                  nop
                  sra          zero, s8, t6
                  sltu         a5, s10, t6
                  lbu          s2, -47(a0) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_1+423 #start riscv_load_store_rand_instr_stream_0
                  lbu          a4, -9(a1)
                  lb           ra, -16(a1)
                  lbu          s9, -4(a1)
                  lh           t2, -13(a1)
                  sw           tp, -3(a1)
                  srl          a7, a2, s8
                  lbu          a7, -10(a1)
                  sll          a0, t5, s1
                  sh           s7, -1(a1)
                  lh           a7, -13(a1)
                  lb           s11, 9(a1)
                  andi         s1, ra, 357
                  lbu          a6, -12(a1)
                  ori          gp, t6, -1404
                  nop
                  lb           a6, -2(a1)
                  lb           s11, 8(a1)
                  sb           a5, -12(a1)
                  lb           a7, -5(a1)
                  lbu          a2, -2(a1)
                  sb           s9, 1(a1)
                  nop
                  addi         s10, sp, -501
                  sb           s8, 14(a1)
                  ori          s3, t1, 1513
                  lb           t2, 10(a1)
                  lh           s4, -9(a1)
                  sb           a7, -4(a1)
                  lbu          sp, -14(a1)
                  addi         s8, t5, -422
                  srai         s4, tp, 1
                  sb           a3, 1(a1)
                  lhu          s6, -5(a1)
                  sh           s8, -7(a1) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_1+848 #start riscv_load_store_rand_instr_stream_3
                  slt          ra, s11, t1
                  srli         zero, s6, 1
                  sra          a7, s4, t4
                  sb           t3, 45(s11)
                  lb           s6, 58(s11)
                  slt          a3, t4, a1
                  slt          s4, s7, s5
                  sb           ra, -47(s11)
                  andi         t4, t3, -1633
                  nop
                  slti         t0, s0, -1653
                  slti         s4, a5, 1160
                  lhu          s4, 36(s11)
                  andi         s3, s10, 1609
                  srai         s6, s2, 0
                  srl          s8, s2, a5
                  auipc        a5, 973725
                  slli         s3, t2, 0
                  sh           s7, 6(s11)
                  lb           s1, 63(s11)
                  srai         t1, a5, 20
                  ori          a0, a6, 670
                  xori         s1, ra, -822
                  slt          sp, t2, gp
                  sltu         t6, t0, t0
                  lbu          s2, -45(s11)
                  sb           s9, -25(s11)
                  lbu          t5, -31(s11)
                  andi         s6, ra, -348
                  lb           s0, -45(s11)
                  addi         a1, s6, -282
                  ori          a4, t4, -1732
                  srai         a5, tp, 27
                  or           t6, s11, t1
                  addi         t6, t5, 1249
                  xor          t5, gp, a6
                  slti         ra, ra, 1167
                  auipc        gp, 587781
                  lb           s3, 51(s11)
                  lb           a1, -23(s11) #end riscv_load_store_rand_instr_stream_3
                  srli         a7, s11, 7
                  srl          a1, a5, s10
                  lui          a0, 508922
                  xor          gp, s4, t1
                  sra          a2, s5, t6
                  bge          ra, a4, 20f
                  slli         t1, zero, 15
                  bne          sp, a3, 13f
                  sltiu        s3, t2, 370
                  sll          tp, s5, s0
                  auipc        s10, 487643
                  bltu         s10, s3, 17f
                  srli         a5, s0, 23
13:               slt          t2, s7, s1
                  beq          t1, s10, 31f
                  ori          t6, a2, 988
                  slt          s3, s9, t2
17:               xor          a2, t5, s7
                  sra          a4, zero, s6
                  bge          tp, zero, 38f
20:               slt          a3, s11, a1
                  sll          s10, t0, a2
                  beq          s7, s6, 39f
                  andi         s4, s9, -397
                  xor          a2, t3, s11
                  sltu         a7, s11, s4
                  nop
                  sub          s4, ra, s5
                  sltiu        t1, gp, 1741
                  beq          a4, zero, 35f
                  sra          ra, s5, s10
31:               addi         s1, t5, 960
                  ori          a6, t5, -1151
                  blt          s8, ra, 45f
                  and          t2, sp, a2
35:               beq          t4, s8, 42f
                  lui          tp, 1016958
                  sll          s9, s9, sp
38:               srl          t4, t3, t4
39:               srli         s10, gp, 5
                  sll          t0, s11, s8
                  srl          t6, t6, a2
42:               auipc        s10, 918883
                  and          a5, a1, tp
                  srl          s10, a6, t0
45:               xori         s0, sp, -1582
                  lui          gp, 377253
                  beq          a6, gp, 53f
                  srl          s9, a3, a4
                  bne          t1, t1, 54f
                  slt          s1, t1, sp
                  sub          a7, a7, a5
                  addi         s1, sp, 206
53:               ori          t6, t3, -759
54:               sra          s8, s8, t4
                  xor          t1, a6, s11
                  xor          a1, gp, gp
                  or           t2, s10, s8
                  slti         tp, s10, -1681
                  blt          t0, a5, 78f
                  sltiu        t2, s11, -1928
                  or           t5, s3, zero
                  or           zero, t2, t5
                  srli         a5, gp, 19
                  addi         a2, zero, 925
                  slti         s2, s8, -2009
                  bge          t6, a2, 84f
                  sub          a5, s10, a6
                  sub          a5, a6, tp
                  andi         t1, a5, -1585
                  ori          a0, a1, 1954
                  bgeu         s7, s4, 87f
                  add          s0, a0, zero
                  sra          s8, s8, a1
                  slli         s0, s7, 26
                  blt          t2, t5, 92f
                  or           zero, a0, sp
                  andi         t2, a1, -767
78:               blt          a5, sp, 95f
                  bgeu         s9, a4, 84f
                  srli         s4, s9, 12
                  bgeu         s9, t1, 87f
                  nop
                  sltiu        a1, s8, 1421
84:               sll          a2, a6, a6
                  sub          a4, t5, s5
                  sub          s4, ra, a2
87:               bge          t0, a6, 95f
                  sra          t2, tp, s11
                  auipc        t5, 664044
                  sub          s11, s0, s8
                  slti         gp, s7, 1849
92:               andi         gp, s10, -1628
                  slli         t0, s7, 26
                  bne          ra, t3, 100f
95:               bgeu         s5, sp, 104f
                  xor          s3, s5, s11
                  slt          s8, t6, t3
                  and          s4, a5, a3
                  slli         sp, t1, 29
100:              nop
                  and          ra, a1, t4
                  srl          a7, t0, a1
                  addi         t2, a2, 1612
104:              bge          s7, s7, 110f
                  srli         t6, s2, 23
                  blt          a2, a3, 122f
                  beq          s4, zero, 116f
                  srli         s6, t6, 23
                  lui          t0, 990383
110:              nop
                  ori          a0, a1, -975
                  srli         a3, s10, 4
                  auipc        ra, 405332
                  slli         tp, a3, 29
                  auipc        gp, 788302
116:              addi         s1, s2, 1125
                  addi         t0, s6, 1286
                  beq          a4, tp, 137f
                  bltu         sp, sp, 127f
                  srl          a5, s5, a2
                  and          s2, a3, s4
122:              xori         gp, tp, 470
                  bne          a3, s10, 131f
                  or           tp, s2, sp
                  sltu         t1, gp, s5
                  srai         t6, a1, 9
127:              srl          a3, t3, s3
                  bge          ra, t4, 131f
                  or           sp, a0, a5
                  srai         s3, s1, 18
131:              bltu         s0, s11, 138f
                  slli         s3, sp, 24
                  slti         zero, zero, -1142
                  srli         a2, t4, 8
                  sltu         a6, s4, t0
                  addi         s1, t2, 1711
137:              and          t4, t4, ra
138:              lui          s6, 433350
                  srai         t1, s10, 26
                  sub          s0, s2, s11
                  xor          tp, s7, s11
                  lui          t4, 755867
                  xori         gp, s5, -197
                  bne          t3, s5, 146f
                  sltu         s2, t5, s4
146:              xori         s0, s4, 818
                  xori         a6, t3, -1892
                  sltiu        a7, s9, -1103
                  sltu         s10, t3, s5
                  lui          s2, 109077
                  srli         a2, gp, 3
                  bgeu         t2, a5, 160f
                  bge          a2, t2, 161f
                  bltu         t5, a3, 171f
                  srli         s1, s5, 5
                  andi         a1, tp, -2023
                  srl          zero, s7, a3
                  bne          t5, s3, 163f
                  sub          s4, a2, t4
160:              sltiu        a0, a1, 1964
161:              bge          sp, s1, 180f
                  xor          a6, t4, t2
163:              bgeu         t2, a4, 169f
                  bne          a4, s0, 170f
                  sra          s9, s5, t1
                  sub          s4, a7, s4
                  addi         ra, t1, -962
                  or           t6, tp, gp
169:              slt          s6, s6, t6
170:              sra          a0, sp, a6
171:              sra          a3, sp, s4
                  srai         a0, t3, 24
                  xor          t6, tp, zero
                  and          s9, a3, t3
                  sub          a2, s5, a7
                  beq          sp, s6, 182f
                  sltiu        s2, a3, -437
                  nop
                  nop
180:              bne          ra, s7, 189f
                  srli         zero, gp, 12
182:              addi         s6, t4, 593
                  srai         a5, t0, 14
                  blt          t3, t0, 202f
                  bne          a2, t5, 204f
                  sub          a4, s9, zero
                  sltiu        tp, a4, -2016
                  bltu         s8, s9, 197f
189:              and          s3, gp, a5
                  srai         s4, gp, 0
                  and          s9, a3, s3
                  srl          s0, t2, t4
                  bgeu         s6, t0, 212f
                  xor          a5, s0, s2
                  or           t5, s3, a4
                  beq          a2, a2, 213f
197:              sub          a2, a6, sp
                  srli         gp, t6, 23
                  lui          s2, 958524
                  sltiu        s10, t5, -1840
                  xor          s2, s7, a3
202:              slt          s11, s11, t4
                  bge          t3, s1, 219f
204:              xori         s0, t3, -70
                  sltu         a4, s2, a4
                  blt          s8, a3, 211f
                  srli         s8, a1, 30
                  bltu         s11, s4, 225f
                  or           a4, a7, s4
                  srai         s3, s6, 30
211:              slli         sp, s5, 16
212:              bge          a4, s1, 227f
213:              slli         s6, a0, 22
                  slti         a7, s6, -1507
                  sltiu        s8, tp, -1543
                  xor          s11, a7, sp
                  slti         a5, gp, -1191
                  lui          s9, 360042
219:              lui          ra, 179219
                  sltu         a4, t1, s5
                  addi         t1, a6, -2029
                  ori          s0, s2, -564
                  xori         t1, a3, -689
                  bge          s3, a1, 226f
225:              bge          s9, sp, 233f
226:              bgeu         t1, a3, 232f
227:              sltiu        s10, a1, 1826
                  bne          t0, zero, 234f
                  bltu         s0, s4, 232f
                  srli         ra, gp, 26
                  srli         t5, a0, 0
232:              srai         a1, t4, 0
233:              or           a4, zero, s0
234:              bltu         a0, gp, 241f
                  auipc        a4, 556426
                  sll          tp, tp, a1
                  lui          s3, 759291
                  slti         t6, s10, -539
                  sra          tp, s10, a4
                  bge          gp, s3, 246f
241:              srai         a7, t2, 4
                  slti         zero, a2, 40
                  bne          s11, t6, 249f
                  sltu         ra, t0, a7
                  addi         s11, s7, 1614
246:              ori          a1, t2, -1371
                  nop
                  sub          s6, s4, gp
249:              sra          tp, ra, a5
                  and          a5, a6, s9
                  beq          a2, gp, 263f
                  bgeu         s2, t0, 269f
                  slli         t6, t3, 14
                  sltiu        a4, t1, -1879
                  nop
                  sltiu        s8, t5, 1590
                  addi         a7, ra, -1590
                  bge          t1, a1, 265f
                  xor          a1, s10, s7
                  ori          a4, s2, -1094
                  srai         a2, a5, 29
                  addi         s8, s8, 1984
263:              slt          zero, sp, a0
                  slti         t2, s3, 409
265:              blt          t6, a1, 281f
                  sra          t6, t4, tp
                  xori         t0, t1, 545
                  xor          a1, t1, gp
269:              srai         s11, a3, 17
                  bne          a3, s0, 289f
                  lui          gp, 579615
                  sltiu        a5, s0, 2042
                  slli         s3, s6, 3
                  ori          t1, a0, 1403
                  bgeu         t3, s11, 294f
                  bge          zero, s7, 282f
                  bne          t1, a3, 294f
                  sll          a2, s5, a5
                  slli         a6, zero, 17
                  xor          zero, a0, t0
281:              xor          tp, s11, t6
282:              lui          s2, 830095
                  bltu         t6, s3, 289f
                  ori          tp, t2, 1591
                  auipc        gp, 1039891
                  srai         t6, s5, 18
                  slli         s10, t2, 25
                  srl          a7, s10, s8
289:              and          sp, t1, a0
                  srai         t4, s4, 12
                  nop
                  andi         s9, a7, -604
                  sub          s4, a3, a6
294:              blt          s6, s10, 303f
                  bne          a6, s2, 303f
                  add          s6, a7, s8
                  beq          s8, gp, 302f
                  bgeu         a1, s10, 305f
                  slli         t6, s5, 28
                  andi         s6, s7, 1910
                  auipc        sp, 364260
302:              auipc        zero, 76581
303:              andi         s4, s10, 1389
                  sltiu        s3, a5, 1976
305:              sub          s10, zero, a2
                  bge          a2, s11, 323f
                  xor          s0, s3, s7
                  bgeu         s0, a2, 320f
                  srli         t1, t0, 5
                  slti         ra, a1, -771
                  xori         a0, s6, 1181
                  add          a0, t4, s11
                  bgeu         s9, a4, 319f
                  xori         ra, a2, 589
                  slt          a6, a3, s5
                  auipc        s2, 897653
                  blt          t0, a2, 336f
                  srai         gp, a1, 10
319:              xor          s10, s1, s4
320:              bltu         t0, s7, 336f
                  xori         t4, a6, 1622
                  or           tp, t3, a4
323:              srli         a4, t3, 22
                  xori         s3, t0, -969
                  slli         sp, s10, 27
                  slti         s4, t3, -93
                  sub          ra, a3, s3
                  or           t5, s11, s11
                  ori          t1, sp, -173
                  xori         a3, tp, 278
                  slti         s6, a3, -1490
                  bge          a2, s0, 350f
                  beq          s4, ra, 350f
                  xori         a1, s10, -420
                  srai         a3, a6, 21
336:              or           s1, s11, tp
                  srli         t5, t6, 30
                  addi         t1, a1, -949
                  la           s8, region_0+331 #start riscv_load_store_rand_instr_stream_4
                  sh           a0, -47(s8)
                  lb           a4, -31(s8)
                  lb           s1, -24(s8)
                  slti         zero, a1, 601
                  lb           zero, 36(s8)
                  lui          s6, 494582
                  srai         a1, t5, 14
                  lb           s1, 4(s8)
                  or           a3, t6, a3
                  sltu         a0, t1, t5
                  lbu          s3, -9(s8)
                  nop
                  slli         t6, s7, 2
                  sra          a1, s2, a7
                  add          t6, zero, a6
                  lb           a7, 19(s8)
                  sb           s2, 18(s8)
                  lh           s3, -43(s8)
                  lbu          a2, -12(s8)
                  sll          t5, s5, a0
                  add          s9, t4, a1
                  sh           ra, 17(s8)
                  ori          a4, s4, -1517
                  sub          s10, t3, ra
                  sra          zero, t4, s8
                  sb           s9, -34(s8)
                  slli         a1, a6, 23
                  xor          a0, t2, s0
                  auipc        t1, 273242
                  lbu          s4, 38(s8)
                  sb           s4, -31(s8)
                  sltu         t0, s1, sp
                  sb           t6, -49(s8)
                  xor          t1, t4, s0
                  add          a6, s9, a1
                  and          t0, t3, ra
                  lb           s10, 63(s8)
                  auipc        s4, 831481
                  andi         a6, s0, 1540
                  sb           s5, -33(s8)
                  srai         s9, ra, 26
                  sb           s6, -32(s8)
                  lb           a5, -38(s8) #end riscv_load_store_rand_instr_stream_4
                  nop
                  lui          t6, 423916
                  srai         s9, a4, 27
                  xori         t2, t4, -176
                  beq          s5, tp, 351f
                  addi         t4, s0, 1399
                  xor          a3, a0, t5
                  bltu         s10, s9, 352f
                  slt          s11, t6, t1
                  blt          a3, s1, 356f
                  sltu         a6, sp, t1
350:              srli         gp, s6, 25
351:              addi         s9, ra, -1500
352:              andi         t2, a4, 49
                  sltu         t5, tp, s9
                  sltiu        t1, zero, -1142
                  sll          t0, a0, s8
356:              bgeu         s4, s2, 373f
                  slti         s1, a0, 815
                  auipc        s9, 328273
                  beq          s10, a4, 374f
                  add          ra, t3, ra
                  sra          gp, s2, tp
                  xori         s8, s7, -1092
                  auipc        a6, 344924
                  beq          s4, s3, 366f
                  bne          s8, t1, 374f
366:              ori          a5, zero, -1329
                  bne          a1, a0, 373f
                  add          t0, s3, t1
                  srl          a6, s4, t1
                  srli         s1, t5, 20
                  andi         s11, s8, 1651
                  slt          a7, a1, s5
373:              srli         s8, t5, 2
374:              srai         s11, s8, 23
                  sltiu        s4, s5, -2025
                  beq          a7, a5, 383f
                  la           ra, region_0+1522 #start riscv_load_store_rand_instr_stream_2
                  sb           s11, -1(ra)
                  sltiu        s8, zero, 1830
                  lbu          t5, -1(ra)
                  sra          a4, a3, t2
                  sh           s3, -6(ra)
                  and          a1, a4, a2
                  sb           a1, -16(ra)
                  lh           t4, 0(ra)
                  sh           s3, -12(ra)
                  lb           s4, 1(ra)
                  lbu          s11, -11(ra)
                  sb           ra, 16(ra)
                  sw           sp, 10(ra)
                  lb           s3, -11(ra)
                  lb           s4, 1(ra)
                  lbu          s8, -1(ra)
                  sb           s2, 2(ra)
                  lb           sp, 0(ra)
                  lb           s3, -7(ra)
                  lb           tp, 16(ra)
                  lbu          s10, -1(ra)
                  lui          s8, 460814
                  lb           s4, 10(ra)
                  srli         s10, a4, 20
                  sh           t3, -16(ra)
                  lhu          a6, 2(ra)
                  sub          s2, s0, s3
                  andi         t1, s10, 353
                  sltu         s8, s6, zero
                  lb           s3, 11(ra)
                  sub          a3, t2, sp
                  lb           s2, 16(ra)
                  lb           t2, 1(ra)
                  and          zero, s6, a5
                  sh           t0, 16(ra)
                  lb           t2, -5(ra)
                  andi         a2, t6, 1195
                  lbu          s0, 8(ra)
                  lbu          a3, 1(ra) #end riscv_load_store_rand_instr_stream_2
                  bltu         s10, ra, 383f
                  srai         gp, sp, 23
                  srl          s2, s2, a2
                  bgeu         s7, a0, 383f
                  sra          s3, t5, a1
                  or           s2, t6, s6
383:              ori          t5, s9, -1520
                  or           s1, t5, gp
                  xor          tp, t6, s4
                  sra          zero, tp, ra
                  blt          s3, t1, 393f
                  srai         s3, s5, 27
                  andi         t5, t0, 145
                  sub          a4, s8, a2
                  bne          a6, s3, 407f
                  srli         a1, sp, 5
393:              bne          a5, a1, 398f
                  srai         a0, zero, 6
                  sltu         s8, a2, a0
                  bne          s0, s11, 404f
                  bltu         a7, a7, 414f
398:              sltiu        s9, a0, -1570
                  sltiu        t4, a1, -1511
                  bne          zero, tp, 419f
                  ori          s6, a3, 296
                  slli         a0, a3, 25
                  sub          s3, s9, a1
404:              bgeu         sp, s7, 410f
                  sra          t5, zero, a5
                  bltu         s11, a1, 425f
407:              beq          t4, s7, 413f
                  auipc        s3, 164895
                  xori         sp, zero, 308
410:              and          s9, s0, a5
                  sra          t5, a0, t2
                  slti         t2, tp, 1417
413:              sll          t4, s4, t3
414:              and          s1, s2, s0
                  bne          s9, t2, 433f
                  sub          t0, a0, t3
                  blt          t2, t6, 426f
                  add          a3, gp, a4
419:              add          t4, ra, s9
                  sra          s11, s2, a6
                  nop
                  xor          a6, t2, t4
                  sltiu        a4, t0, -1585
                  slt          t1, s8, gp
425:              or           sp, zero, t1
426:              bltu         t5, s4, 445f
                  andi         a6, a4, -709
                  sll          zero, a2, s0
                  srli         t6, s9, 27
                  srli         a4, sp, 1
                  sll          s8, a1, s11
                  sltiu        s2, t5, 1588
433:              sltu         t1, s2, s11
                  ori          t4, s0, 1085
                  slti         s4, s10, 124
                  bne          s1, s9, 443f
                  xor          s9, t2, zero
                  andi         s2, s10, -1417
                  slli         s10, zero, 30
                  slt          a7, s5, a0
                  andi         tp, t1, 1082
                  sltiu        s10, s4, 23
443:              sltu         a1, s11, sp
                  andi         s4, s9, 414
445:              srai         a2, sp, 9
                  bge          s2, a3, 451f
                  srli         s3, s6, 29
                  sll          s3, t3, ra
                  add          gp, t2, ra
                  beq          a6, a6, 467f
451:              andi         ra, a3, -154
                  bltu         a5, s8, 454f
                  slt          a7, s7, ra
454:              auipc        s0, 169768
                  auipc        a6, 106227
                  ori          sp, a0, 621
                  slt          s6, s8, a7
                  lui          ra, 449324
                  xor          a0, s10, t6
                  slti         t1, a7, -1112
                  and          a7, t3, s4
                  slti         a6, a1, -1251
                  andi         s8, s3, -1500
                  blt          a3, s3, 470f
                  xor          s6, sp, t6
                  sll          t1, a0, s6
467:              bltu         a0, s5, 483f
                  beq          t1, zero, 484f
                  add          t5, tp, tp
470:              and          a5, s8, a4
                  sub          a7, s6, a7
                  or           s4, s7, a4
                  ori          t0, a5, 531
                  nop
                  and          s10, t2, s8
                  sra          t2, t3, s6
                  srai         s8, zero, 26
                  srai         a3, a0, 29
                  or           a4, s10, sp
                  or           t2, ra, t3
                  bgeu         sp, s1, 487f
                  auipc        t1, 184634
483:              or           s3, s5, s10
484:              sll          t1, sp, s9
                  add          a3, t3, ra
                  xori         t2, t6, 1772
487:              xori         a0, a2, 895
                  sltiu        a1, a1, 296
                  ori          s10, sp, -19
                  xor          sp, s4, t0
                  bne          s2, a0, 497f
                  sltiu        a6, a5, -1319
                  sltiu        t1, s2, -566
                  ori          a6, s0, -1965
                  bne          tp, s4, 500f
                  beq          a7, sp, 503f
497:              blt          s5, a0, 500f
                  bltu         a2, t6, 515f
                  xori         gp, a7, 1666
500:              bne          a2, s2, 517f
                  bne          s4, s11, 516f
                  and          gp, s6, t5
503:              blt          sp, a5, 511f
                  xor          t5, ra, s11
                  xor          a7, a6, s2
                  add          s1, a4, a5
                  or           t4, t2, zero
                  bltu         s0, gp, 516f
                  sra          gp, t1, s4
                  bltu         s10, t4, 519f
511:              bge          t0, t0, 523f
                  xori         a1, t5, 1382
                  xor          s1, t3, gp
                  bne          s9, s2, 520f
515:              bge          a1, tp, 521f
516:              xor          t0, s4, s9
517:              or           gp, s10, s0
                  xori         t0, t5, 1188
519:              srl          t4, t5, s5
520:              or           a1, s4, s8
521:              sltiu        a7, t1, 1354
                  blt          s9, t6, 528f
523:              or           a0, a5, a5
                  sra          a6, t3, ra
                  sub          a3, s8, s2
                  sltu         s0, s3, t3
                  srli         s11, a0, 0
528:              slt          t5, s7, t0
                  addi         s9, t2, -1903
                  andi         s6, s8, -167
                  nop
                  slli         a6, a6, 27
                  nop
                  bgeu         a6, a6, 551f
                  or           s4, t2, a4
                  bne          s7, s4, 553f
                  sub          a0, t3, s1
                  blt          a2, ra, 557f
                  bltu         zero, ra, 547f
                  sll          s6, s1, sp
                  blt          s11, s1, 546f
                  slt          a6, a6, sp
                  sltiu        ra, t4, 347
                  xori         t1, a6, -1757
                  auipc        gp, 832907
546:              lui          a6, 116054
547:              sll          s0, a2, t0
                  sltiu        s6, s4, -1722
                  nop
                  and          s4, s2, s0
551:              addi         s0, t3, -776
                  bltu         s6, t4, 558f
553:              addi         s10, a4, -775
                  bge          a6, s4, 561f
                  bne          a0, a5, 567f
                  sra          a0, s11, t6
557:              xor          s1, t0, s9
558:              slli         a3, s2, 25
                  bgeu         t2, s5, 562f
                  sll          sp, s3, t3
561:              bne          a0, s5, 567f
562:              andi         s11, a5, 1374
                  xor          a0, s9, s0
                  add          a3, a0, zero
                  slli         a3, a6, 18
                  or           s6, s1, a6
567:              sltu         t5, ra, a6
                  bge          t4, a2, 574f
                  xor          s2, t2, s2
                  slti         s3, tp, 256
                  and          t5, t5, a2
                  slt          a7, t6, s8
                  bltu         a0, s7, 591f
574:              bltu         a0, s6, 582f
                  addi         s2, s1, -241
                  and          s2, a1, s6
                  bgeu         t5, a5, 583f
                  sra          a6, s4, a2
                  or           a3, t1, a0
                  ori          s10, a7, 1285
                  xori         t4, a6, 1026
582:              bge          a7, t3, 589f
583:              srai         t1, s3, 23
                  andi         tp, t3, 947
                  slt          a5, s2, t2
                  sra          s11, tp, a3
                  or           t0, s5, s9
                  srli         a6, s1, 18
589:              bne          s4, a3, 608f
                  bltu         s10, zero, 599f
591:              addi         t2, t6, -1054
                  blt          s4, t2, 608f
                  add          t0, s4, tp
                  add          t2, a4, t2
                  sra          a0, s5, t2
                  sra          s10, s2, sp
                  bgeu         a3, t1, 612f
                  blt          t2, s5, 604f
599:              xor          s4, tp, a6
                  sltu         s4, a5, a5
                  xor          t5, a7, t2
                  blt          sp, a0, 608f
                  sll          a3, t1, a1
604:              sll          t2, s5, s4
                  bge          zero, gp, 614f
                  auipc        t1, 1026690
                  add          s8, t5, s8
608:              slt          a4, gp, a7
                  or           a0, s7, a3
                  beq          sp, gp, 629f
                  xor          zero, s6, ra
612:              bgeu         s5, s5, 629f
                  srli         a0, t2, 3
614:              srli         gp, a5, 30
                  slli         s9, t5, 12
                  sra          a2, s0, s10
                  andi         ra, a0, 1774
                  bge          tp, s11, 626f
                  sltu         a4, s10, s1
                  lui          gp, 74539
                  nop
                  lui          s4, 610623
                  bltu         gp, a1, 640f
                  nop
                  and          s3, s10, a5
626:              srl          t0, a2, gp
                  sltiu        s1, a3, -1337
                  srli         s0, sp, 3
629:              srli         a7, t3, 26
                  slt          t0, tp, s2
                  nop
                  bge          t3, a6, 634f
                  sub          t1, t0, s1
634:              blt          s4, s0, 639f
                  sll          s2, s10, s5
                  xori         a4, t1, 2023
                  lui          ra, 115167
                  bge          t4, s7, 654f
639:              slli         a2, t0, 0
640:              add          a6, s0, gp
                  blt          s8, a0, 647f
                  blt          s5, s10, 657f
                  bgeu         a5, a2, 649f
                  bne          t1, s0, 652f
                  beq          sp, t5, 651f
                  beq          a4, s5, 652f
647:              addi         sp, t5, 483
                  sltu         sp, a0, t3
649:              beq          s6, s0, 665f
                  beq          s1, a6, 655f
651:              bgeu         s8, a0, 665f
652:              bgeu         s0, s4, 665f
                  ori          t6, t3, -745
654:              bltu         t0, ra, 663f
655:              nop
                  lui          a3, 337658
657:              sltu         a5, s1, s0
                  or           a6, s8, s7
                  bgeu         t3, a2, 662f
                  sltiu        s4, t2, 1167
                  and          s10, a3, tp
662:              lui          s10, 340536
663:              auipc        a7, 908393
                  beq          gp, a6, 665f
665:              sub          a2, gp, s2
                  lui          tp, 787511
                  lw           t5, 4(t3)
                  andi         s6, sp, 615
                  lui          a5, 433961
                  addi         t3, t3, 52
                  andi         t4, a7, -549
899:              addi x27, x30, 1
899:              jalr x27, x27, 0
sub_7:            addi         t3, t3, -60
                  sra          a4, ra, s4
                  xori         sp, gp, -663
                  slli         s9, t3, 18
                  lui          s8, 55608
                  and          gp, a3, s11
                  sw           t5, 4(t3)
                  sll          t6, s9, s8
                  lui          a1, 52796
                  srai         t0, s1, 29
                  bltu         a4, t2, sub_7_j11 #branch to jump instr
                  andi         a7, s2, -1234
                  sltiu        gp, zero, -1159
                  sra          gp, s8, s10
                  andi         t5, ra, 625
                  xor          t6, t4, a1
sub_7_j11:        jal          t5, sub_8 #jump sub_7 -> sub_8
                  la           sp, region_0+1272 #start riscv_load_store_rand_instr_stream_6
                  ori          s6, t2, -87
                  andi         t2, t6, -1553
                  lb           t4, -1(sp)
                  sb           a7, -9(sp)
                  sh           t2, -2(sp)
                  lbu          t1, 6(sp)
                  lb           a3, 5(sp)
                  lh           s2, -14(sp)
                  nop
                  add          a6, t4, s6
                  sb           zero, 11(sp)
                  lb           t1, -5(sp)
                  lbu          t2, -3(sp)
                  srl          s1, s6, ra
                  or           a5, a2, s10
                  lb           s6, -14(sp)
                  lhu          zero, -14(sp)
                  srai         s2, s8, 30
                  lui          s1, 426324
                  lbu          t0, 13(sp)
                  sw           t4, -4(sp)
                  addi         s3, s8, -193
                  or           t5, s5, s9
                  lb           t1, -5(sp)
                  sub          t5, s6, t6
                  andi         t6, t5, -1709
                  addi         t0, a2, -777
                  sb           a1, -12(sp)
                  or           s6, s7, s2
                  lui          t2, 253362
                  sb           a5, 16(sp)
                  sltiu        s2, s3, 357
                  auipc        t0, 211345
                  lui          t0, 754836
                  lbu          s6, -9(sp)
                  lbu          a3, -10(sp)
                  and          gp, ra, t3
                  lb           ra, 13(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+856 #start riscv_load_store_rand_instr_stream_1
                  sb           s4, 3(sp)
                  sltiu        t2, s5, -726
                  auipc        a4, 217603
                  sltiu        a3, a4, 157
                  sb           t4, -8(sp)
                  sh           ra, 4(sp)
                  lbu          s2, -7(sp)
                  auipc        a2, 213615
                  slli         s1, s11, 0
                  srl          s3, a2, s1
                  and          s3, s1, sp
                  srl          s6, s10, s0
                  sb           s5, 14(sp)
                  slt          a6, s10, ra
                  sb           t5, 16(sp)
                  xori         a1, s0, 162
                  xori         t4, s8, 891
                  lh           a6, 4(sp)
                  slti         t0, a6, 1559
                  xor          s2, t2, zero
                  slli         a2, s11, 0
                  sub          t2, s3, t1
                  ori          s1, sp, 771
                  sltiu        a7, s11, -588
                  lb           a6, 16(sp)
                  lhu          a5, 2(sp)
                  srl          ra, t2, a2
                  sub          a7, gp, s9
                  lw           t0, -8(sp)
                  sra          tp, a5, a2
                  lbu          s11, -7(sp)
                  and          a1, t2, sp
                  sub          a7, s6, a0
                  and          a3, t5, a2
                  auipc        tp, 1002173
                  lb           s10, -1(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s6, region_1+729 #start riscv_load_store_rand_instr_stream_2
                  srli         a2, s7, 20
                  slt          ra, a6, s1
                  lh           s0, 131(s6)
                  ori          a5, sp, 899
                  sb           t3, -413(s6)
                  nop
                  sb           a7, -706(s6)
                  lbu          gp, -357(s6)
                  add          a7, s4, s6
                  srli         s4, a1, 13
                  sb           tp, -165(s6)
                  nop
                  lhu          a2, 543(s6)
                  sub          a6, t4, a6
                  srai         a6, gp, 24
                  sll          a5, t3, t3
                  lbu          t4, 775(s6)
                  lb           t5, -62(s6)
                  sltu         a0, a0, gp
                  lb           a2, 599(s6)
                  sb           s2, 280(s6)
                  sb           tp, 757(s6) #end riscv_load_store_rand_instr_stream_2
                  la           s2, region_1+1391 #start riscv_load_store_rand_instr_stream_5
                  sra          a1, zero, s0
                  lb           t1, 388(s2)
                  slti         a6, s2, -1687
                  xor          t1, s4, a3
                  slt          t6, a2, s6
                  lb           t0, -1302(s2)
                  srli         gp, s2, 23
                  srli         a3, s8, 20
                  sb           s8, -28(s2)
                  srai         a0, t3, 10
                  lb           zero, -18(s2)
                  andi         s9, a6, -770
                  nop
                  andi         gp, s2, 158
                  sb           s2, 308(s2)
                  lh           t0, -683(s2)
                  sub          t5, a1, s11
                  srai         a3, a2, 17
                  addi         gp, sp, -614
                  srli         s9, t5, 14
                  lb           t4, -278(s2)
                  slti         zero, t4, 1645
                  and          t6, zero, s0
                  xor          t6, a6, a6
                  add          t0, a4, a4
                  sb           a4, 417(s2)
                  sb           tp, -464(s2)
                  or           s4, s3, a1
                  lbu          a6, -281(s2) #end riscv_load_store_rand_instr_stream_5
                  la           s8, region_1+575 #start riscv_load_store_rand_instr_stream_8
                  lb           a4, 743(s8)
                  xori         a6, t1, 1506
                  ori          a5, s11, 464
                  ori          s11, t1, -879
                  sltu         a2, a4, s8
                  auipc        s2, 14959
                  srai         s4, t1, 31
                  ori          a0, t5, 528
                  srli         a5, gp, 22
                  lbu          t6, -15(s8)
                  slti         a1, s8, -1486
                  lw           tp, -459(s8)
                  sb           t1, -558(s8)
                  xor          t5, a1, s11
                  lh           s6, 1407(s8)
                  slli         a7, t6, 13
                  lb           gp, 490(s8)
                  sub          s9, a3, s8
                  sb           s8, 563(s8)
                  sb           s10, 475(s8)
                  xori         a0, sp, 1452
                  lhu          a7, 313(s8)
                  sb           a6, -118(s8)
                  nop
                  lw           s0, 1261(s8)
                  lbu          a6, -204(s8) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1671 #start riscv_load_store_rand_instr_stream_7
                  add          s10, a1, s9
                  sb           a3, -103(sp)
                  lb           a7, 174(sp)
                  sb           a2, -170(sp)
                  srli         a2, tp, 3
                  sltiu        ra, a6, -469
                  sb           a4, -146(sp)
                  sltiu        t6, s7, -1390
                  sh           s7, -129(sp)
                  slt          s0, s8, t6
                  srai         a2, a4, 15
                  lui          t2, 530102
                  lhu          t4, -245(sp)
                  lui          a1, 533345
                  lhu          s1, 91(sp)
                  sra          s8, a1, ra
                  lbu          a5, -35(sp)
                  sb           a2, -86(sp)
                  lb           tp, 84(sp)
                  lb           gp, -201(sp)
                  lhu          a5, -105(sp)
                  sb           s3, 72(sp)
                  sll          t2, a1, tp
                  srai         ra, a3, 25
                  lhu          t2, -253(sp) #end riscv_load_store_rand_instr_stream_7
                  la           t2, region_0+715 #start riscv_load_store_rand_instr_stream_0
                  sb           t1, -8(t2)
                  slli         tp, a0, 24
                  sb           t2, 15(t2)
                  lb           zero, -4(t2)
                  or           zero, s6, a2
                  lb           t6, -12(t2)
                  lb           t5, 4(t2)
                  sll          t6, s7, t0
                  srli         a1, s6, 11
                  sra          a1, s3, s7
                  sb           s7, 1(t2)
                  srli         zero, a6, 21
                  lbu          a7, -11(t2)
                  srli         a3, s2, 16
                  nop
                  lb           t4, -8(t2)
                  auipc        s9, 310008
                  lb           a1, -6(t2)
                  addi         t5, t6, 1565
                  sb           s3, 10(t2)
                  srai         a0, s8, 3
                  addi         a7, a7, -152
                  xori         a2, s3, -1589
                  sb           t2, -3(t2)
                  sb           a7, -7(t2) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_0+471 #start riscv_load_store_rand_instr_stream_4
                  srai         s4, a3, 25
                  lui          a1, 703658
                  addi         s11, a2, 1442
                  xori         s1, t6, 88
                  addi         a4, a1, 123
                  lbu          s6, -6(a7)
                  sltiu        a6, sp, -1042
                  srai         t0, t6, 17
                  lbu          t6, 26(a7)
                  add          gp, a5, s6
                  lb           t0, 50(a7)
                  sb           a3, -32(a7)
                  nop
                  sub          ra, s5, a1
                  lb           a0, -32(a7)
                  lb           s4, 50(a7)
                  sltu         t1, a3, a6
                  lb           s0, 12(a7)
                  sra          s2, a2, a0
                  add          ra, s2, ra
                  lb           a1, 14(a7)
                  srli         t2, ra, 10
                  auipc        s11, 344437
                  lb           s0, -25(a7)
                  xori         ra, a0, -396
                  xor          t2, t2, s5
                  lh           s9, -13(a7)
                  sll          s1, a6, t2
                  sb           a5, 24(a7)
                  sra          zero, t4, a5
                  lh           s0, -53(a7)
                  andi         t5, zero, 1658
                  lb           t6, -4(a7)
                  lbu          t4, 62(a7)
                  srl          zero, s8, a0
                  sb           ra, -3(a7)
                  lb           s1, 0(a7)
                  sub          t1, s7, t5
                  lb           s11, 6(a7)
                  xor          ra, t6, sp
                  sll          t0, a7, s0
                  and          s11, s1, gp
                  srl          s0, sp, s6
                  lb           s1, 26(a7)
                  lbu          s4, 6(a7)
                  addi         a2, gp, -1703
                  sll          s10, s1, zero
                  sh           t5, 41(a7)
                  lb           s8, -13(a7) #end riscv_load_store_rand_instr_stream_4
                  xori         zero, s0, 1891
                  ori          t1, t1, 1243
                  bgeu         s0, s1, 3f
3:                xor          a0, t0, a7
                  sltu         t4, t1, s1
                  bge          t0, s4, 17f
                  bgeu         a6, ra, 20f
                  sra          a7, s3, gp
                  ori          t1, s3, -46
                  ori          s3, a1, -1050
                  sltu         s4, s1, gp
                  bltu         s9, s9, 15f
                  sub          s1, s5, t1
                  blt          a0, a1, 20f
                  bgeu         s1, a4, 30f
15:               add          a4, gp, s7
                  sltu         tp, s3, s7
17:               nop
                  slt          s1, s6, s1
                  bge          a6, zero, 22f
20:               andi         a0, zero, -994
                  slt          s9, a4, s1
22:               lui          sp, 702284
                  sra          a6, s8, s2
                  srli         tp, sp, 27
                  sub          ra, s10, s11
                  bltu         s1, s8, 46f
                  srli         tp, s5, 30
                  sltu         a3, s3, t0
                  sub          a0, sp, s9
30:               bgeu         sp, s6, 34f
                  sltiu        s2, s0, 101
                  sra          gp, a4, s3
                  lui          s9, 124407
34:               bne          s10, s6, 47f
                  addi         tp, a0, 1066
                  slti         s0, s6, 453
                  nop
                  sra          s4, gp, s2
                  ori          t1, s3, -578
                  addi         s3, a6, -131
                  or           tp, s3, gp
                  xor          t0, t6, s7
                  sltiu        s11, s11, 1583
                  addi         t5, t3, 1761
                  andi         a5, a1, -1418
46:               or           t0, s1, t1
47:               srli         a6, t4, 22
                  addi         s4, s1, 1103
                  beq          s5, t1, 58f
                  srli         gp, s11, 8
                  addi         s2, s2, -1543
                  auipc        s4, 792515
                  bltu         s5, t1, 55f
                  srai         a5, sp, 24
55:               xori         t6, a0, -669
                  srai         t4, a5, 0
                  srai         a3, s3, 18
58:               nop
                  slti         s10, t4, -1127
                  sub          a2, s8, a4
                  beq          ra, t4, 69f
                  blt          s6, sp, 69f
                  xori         s9, a7, 295
                  srl          t5, s9, gp
                  xor          s8, a4, t6
                  sltu         a6, s6, t6
                  sub          a7, gp, s9
                  addi         a2, s2, -1928
69:               srli         t1, a2, 7
                  xori         a7, t2, -1868
                  xor          s3, a4, gp
                  srl          a7, t6, s0
                  srai         a1, a4, 28
                  srl          a6, a2, a6
                  add          t0, s1, s3
                  sltu         tp, sp, s4
                  and          tp, s4, zero
                  srai         t4, a1, 3
                  addi         a0, a7, 466
                  lui          s2, 897295
                  blt          t4, s9, 94f
                  bltu         t6, t2, 100f
                  blt          gp, t1, 90f
                  bltu         t1, gp, 103f
                  add          ra, t5, s8
                  bgeu         s10, s10, 91f
                  sll          a6, zero, t4
                  ori          s4, sp, 12
                  add          gp, a4, a0
                  srai         a7, a0, 24
                  lui          t5, 75787
                  nop
                  sltiu        tp, t1, 323
                  sltu         s10, a2, s5
                  srl          s3, s7, a0
sub_7_j10:        jal          t5, sub_8 #jump sub_7 -> sub_8
                  or           s6, s11, a6
90:               srai         t6, a6, 8
91:               ori          s1, t2, -2021
                  sltiu        s4, s9, 749
                  slti         t1, s11, 1728
94:               and          s2, t1, a7
                  blt          a0, s8, 115f
                  xori         a2, s3, -1732
                  sltiu        sp, tp, 1862
                  bge          s1, a5, 108f
                  addi         s3, t6, 1858
100:              sll          ra, t0, s0
                  srl          zero, s4, s6
                  and          a0, t5, t1
103:              blt          a3, sp, 104f
104:              bne          gp, a6, 105f
105:              bgeu         s10, t3, 107f
                  xor          t6, a0, s3
107:              srli         s0, a6, 16
108:              bne          a0, s4, 128f
                  and          t6, sp, t5
                  or           a2, s11, t0
                  sltiu        ra, s10, 1411
                  xori         t6, a6, 864
                  srli         s4, s8, 15
                  and          s1, a2, s2
115:              add          t5, s4, gp
                  sltu         t0, s1, sp
                  bgeu         a6, t3, 135f
                  andi         a5, gp, -44
                  bge          a0, s5, 130f
                  sra          t4, zero, ra
                  srai         s3, ra, 17
                  srai         gp, s11, 4
                  auipc        t6, 741793
                  slt          s4, a4, gp
                  sub          a1, a0, t0
                  add          a1, gp, s3
                  slli         s9, s7, 6
128:              bge          ra, a6, 132f
                  xor          s9, a6, a3
130:              beq          a6, s1, 145f
                  nop
132:              addi         a7, zero, 79
                  bge          a6, t5, 138f
                  slti         a4, a0, 1606
135:              srli         a7, s8, 20
                  auipc        a5, 1035933
                  srl          a4, t4, s6
138:              slli         t1, s6, 11
                  or           s9, t3, tp
                  auipc        a7, 234867
                  xor          zero, s10, t5
                  bge          s4, t6, 157f
                  addi         t4, s8, 217
                  ori          a5, s5, 1067
145:              slt          a5, tp, t3
                  slli         a4, tp, 4
                  bltu         t0, a1, 155f
                  slli         zero, t3, 22
                  bne          t5, s5, 151f
                  bltu         t4, t1, 162f
151:              slli         sp, t1, 26
                  srli         s11, sp, 19
                  bltu         s9, a5, 171f
                  add          t5, tp, s2
155:              xor          a1, zero, s8
                  add          t2, ra, t1
157:              blt          a4, s4, 158f
158:              xor          s4, s10, a5
                  bgeu         a5, s5, 163f
                  xor          s2, a4, t2
                  blt          s3, a0, 166f
162:              slt          s10, a2, s1
163:              bne          a0, tp, 164f
164:              add          s8, a1, t4
                  bne          a7, t4, 175f
166:              blt          a2, t1, 186f
                  srai         s9, a6, 20
                  sll          s6, a3, s9
                  or           sp, a7, s11
                  slli         a1, t6, 5
171:              add          s3, s5, s6
                  ori          sp, a2, 1562
                  bltu         s0, s3, 182f
                  or           s1, t0, a1
175:              auipc        s4, 88777
                  xor          a7, zero, s7
                  bge          t4, s8, 181f
                  xori         zero, s0, 1775
                  srai         a2, s7, 26
                  auipc        t5, 408621
181:              add          zero, a7, s2
182:              bgeu         a2, t0, 186f
                  sub          a5, s8, gp
                  bne          s10, s3, 203f
                  auipc        s10, 754217
186:              sra          a4, s11, ra
                  sra          t0, a1, a1
                  slti         s3, s6, 634
                  and          ra, tp, a4
                  and          t4, a7, t4
                  beq          a2, s9, 198f
                  auipc        s0, 654611
                  lui          s1, 717553
                  auipc        zero, 825681
                  bge          a6, t2, 215f
                  bne          s11, s2, 210f
                  sltiu        gp, s1, -1952
198:              lui          a2, 607334
                  addi         ra, s10, 1032
                  lui          ra, 245883
                  andi         a0, ra, -1087
                  add          s9, a3, a0
203:              slt          zero, a4, zero
                  ori          tp, s10, 2007
                  slli         s1, a2, 21
                  xori         s11, a0, -6
                  bgeu         a0, t6, 220f
                  sub          s8, t0, t4
                  sra          s8, ra, s4
210:              bltu         gp, s2, 221f
                  or           s8, a1, t0
                  slli         a1, a6, 19
                  or           sp, s5, a1
                  beq          t2, s5, 234f
215:              nop
                  srli         s8, a7, 12
                  add          s9, a6, a2
                  bne          a6, s10, 221f
                  nop
220:              slt          s6, s1, t2
221:              bge          a3, ra, 228f
                  lui          s2, 766147
                  xor          a4, s2, s6
                  xori         s4, tp, -616
                  sra          tp, s7, a3
                  slli         s2, s2, 4
                  slti         a0, a6, 1596
228:              xor          sp, a1, a5
                  blt          a7, s9, 247f
                  sltu         a0, s7, s0
                  sltu         sp, s4, a7
                  and          t2, zero, s11
                  sltiu        s3, t3, 569
234:              addi         tp, a7, 1846
                  sub          t5, tp, a4
                  ori          a2, zero, 1768
                  add          s11, s11, s1
                  or           s10, a0, a5
                  sll          s4, s5, s4
                  blt          t6, s1, 253f
                  ori          t0, s2, -315
                  sll          t2, s2, s1
                  bge          t5, t5, 259f
                  sll          s1, t2, a0
                  or           s6, s8, s6
                  bge          a3, s3, 251f
247:              blt          s9, t2, 248f
248:              srl          a4, s0, a4
                  sll          ra, t1, s10
                  srli         s10, tp, 29
251:              addi         a4, a4, -409
                  auipc        s10, 309454
253:              sltu         sp, s9, s3
                  beq          s0, a6, 256f
                  slli         a7, a1, 31
256:              xor          sp, gp, t4
                  andi         s11, s2, 734
                  sra          tp, s4, zero
259:              add          sp, t1, a5
                  or           a0, s6, sp
                  slti         s9, a4, 473
                  auipc        t6, 685075
                  sltu         gp, s9, t0
                  nop
                  srl          t1, t0, zero
                  sra          t6, t2, t0
                  srai         ra, t3, 5
                  beq          t3, a3, 275f
                  blt          a5, t2, 271f
                  sub          s8, s9, zero
271:              sra          zero, s8, t4
                  srli         t2, s10, 27
                  xor          a3, a3, s7
                  and          ra, a5, gp
275:              sra          s2, s0, s10
                  slt          a1, s7, a0
                  srai         a3, t0, 0
                  auipc        s4, 273751
                  sll          s11, a2, a7
                  bgeu         s11, s10, 285f
                  or           ra, t4, t4
                  blt          s5, s9, 289f
                  lui          a7, 129975
                  blt          a1, ra, 296f
285:              sltu         a4, a6, s9
                  slt          t2, t2, tp
                  sltiu        a2, t0, 1937
                  blt          t0, a6, 293f
                  la           a2, region_1+171 #start riscv_load_store_rand_instr_stream_3
                  lh           t1, -13(a2)
                  sltiu        t6, a5, -1475
                  nop
                  lbu          s11, 7(a2)
                  nop
                  nop
                  sll          s10, a2, t1
                  lbu          t1, -94(a2)
                  lb           a6, 251(a2)
                  sh           s8, 47(a2)
                  srli         a7, t1, 10
                  sltu         sp, s8, s10
                  sh           s3, -19(a2)
                  lbu          t0, 74(a2)
                  slti         a4, zero, 1615
                  nop
                  srli         s2, s7, 22
                  sh           t6, 171(a2)
                  slli         s3, t5, 12
                  lbu          s6, -114(a2)
                  nop
                  sw           a1, 53(a2)
                  lbu          t2, -56(a2)
                  nop
                  add          s3, t1, s1
                  ori          t4, s2, 46
                  srli         t1, s7, 18
                  sll          gp, t1, t2
                  auipc        a5, 539848
                  srl          a3, t6, ra
                  lb           a4, 162(a2)
                  sb           t6, -33(a2)
                  lb           a5, 171(a2)
                  lhu          s8, 21(a2)
                  andi         s11, a6, 424
                  lhu          s2, 11(a2) #end riscv_load_store_rand_instr_stream_3
289:              slti         t0, s0, -719
                  slli         a0, ra, 10
                  slli         a2, s0, 22
                  and          ra, s9, s5
293:              auipc        s3, 311373
                  slt          s3, s10, t1
                  sltiu        a1, gp, 1380
296:              sll          s2, s9, s1
                  bne          tp, s2, 305f
                  bltu         gp, a1, 302f
                  srai         a0, s1, 7
                  slli         ra, ra, 17
                  xori         a1, a1, 1208
302:              xori         s6, s6, 631
                  and          a2, s5, s4
                  sra          s1, a0, t0
305:              xor          gp, t6, a2
                  bge          a2, s8, 319f
                  addi         t5, s7, -339
                  slt          t4, s2, a5
                  or           s8, a2, t5
                  and          t6, t5, s4
                  slti         s6, t3, -1348
                  addi         a5, tp, 51
                  slti         s9, s10, -220
                  slt          t5, s0, t0
                  slti         t5, s5, 1916
                  addi         t6, s7, 1799
                  blt          s1, t6, 327f
                  xor          s0, a0, s0
319:              slt          t5, t4, s9
                  srli         t2, a3, 14
                  sltu         a1, t5, a0
                  and          s2, sp, t2
                  add          s11, t1, s7
                  andi         t6, a1, 1840
                  bge          gp, sp, 345f
                  sll          gp, s7, a7
327:              beq          tp, zero, 340f
                  slt          s9, gp, a1
                  blt          a3, s6, 330f
330:              bgeu         s10, s7, 350f
                  srl          a5, t6, t0
                  lui          sp, 74318
                  sltu         tp, t5, s10
                  auipc        tp, 648518
                  sub          zero, s5, s2
                  slli         s8, t0, 5
                  ori          a2, a4, -407
                  beq          s4, a4, 358f
                  nop
340:              sll          a5, t0, s4
                  srai         a0, zero, 22
                  slli         s6, s11, 6
                  addi         s0, a3, 565
                  lui          gp, 270634
345:              bne          t6, s10, 354f
                  slti         a1, s3, -1586
                  slli         s10, s10, 13
                  bgeu         a5, ra, 349f
349:              and          s8, t3, s9
350:              or           a3, a1, s1
                  and          s3, t4, s0
                  slti         s4, t0, 1363
                  andi         a5, s7, -1714
354:              xor          s4, s7, a5
                  srai         s10, t4, 1
                  srl          s10, a5, tp
                  srai         t5, t1, 14
358:              nop
                  bne          s7, s8, 362f
                  slti         t0, t5, 1160
                  slli         s6, s0, 8
362:              sll          s3, s1, t2
                  blt          s3, sp, 381f
                  auipc        a5, 524056
                  nop
                  sll          s8, t2, s3
                  xori         s4, s9, -428
                  srai         zero, t0, 13
                  bne          a3, t2, 373f
                  andi         s10, s0, -389
                  sltu         s4, s4, s5
                  bge          a5, t5, 379f
373:              xor          s0, s1, zero
                  beq          sp, a3, 392f
                  bge          a0, s1, 377f
                  andi         t0, s9, -317
377:              sra          s4, t6, s8
                  or           s11, t1, tp
379:              blt          s6, s3, 380f
380:              srai         s3, a5, 18
381:              slli         zero, s11, 24
                  and          zero, s2, s10
                  addi         s8, t3, 924
                  sltu         s11, t6, s7
                  slt          a3, a4, s10
                  bltu         s10, a1, 390f
                  and          sp, tp, gp
                  xor          t5, zero, t0
                  and          a2, s8, t1
390:              srl          t0, a2, s10
                  andi         a5, t2, 877
392:              xor          s1, t4, t0
                  nop
                  srai         t6, tp, 10
                  srli         zero, gp, 10
                  sub          a1, s6, s1
                  lui          s3, 42170
                  sra          s9, a7, s2
                  add          s2, t4, a0
                  sltu         s1, a1, a1
                  sub          t0, s11, t2
                  beq          ra, s1, 409f
                  bne          a1, s4, 419f
                  bne          tp, a5, 423f
                  lui          sp, 491369
                  blt          t1, t0, 420f
                  andi         a7, s1, -466
                  srai         s1, a2, 8
409:              srl          s3, sp, t4
                  slli         a1, t0, 20
                  slli         a2, t3, 12
                  sltiu        a4, zero, -1046
                  beq          s0, a5, 428f
                  bge          s7, t3, 425f
                  auipc        s1, 623170
                  slti         a5, a2, -190
                  srai         gp, ra, 13
                  sll          a3, gp, s0
419:              addi         a3, a6, -1551
420:              sltu         t5, s1, s3
                  beq          s11, zero, 432f
                  sub          ra, t1, a0
423:              sltu         a7, a3, s2
                  slt          a4, s0, s4
425:              blt          t0, a4, 441f
                  bge          a5, s3, 446f
                  sra          s6, s10, s11
428:              bltu         a5, t6, 429f
429:              or           t0, s9, t1
                  andi         a6, ra, 321
                  sll          t1, t4, zero
432:              sltiu        s1, t5, -1012
                  slti         tp, a7, 1720
                  sltiu        s2, a5, -1472
                  bltu         s4, a3, 455f
                  lui          zero, 1038871
                  sra          s0, s10, s5
                  sltiu        s6, zero, 261
                  bltu         t2, s7, 449f
                  nop
441:              sltiu        a2, s0, 972
                  add          s6, a3, ra
                  srl          s6, a6, s4
                  beq          s0, a3, 447f
                  sra          zero, a7, ra
446:              sll          gp, gp, a7
447:              nop
                  xori         t1, a2, -774
449:              nop
                  xori         a3, t1, -1875
                  srl          s2, s11, a2
                  sub          s3, a5, t5
                  bgeu         a4, a2, 472f
                  bltu         a2, sp, 472f
455:              auipc        sp, 601212
                  xor          s0, t1, a7
                  add          t0, tp, zero
                  bltu         t5, t1, 463f
                  sra          t1, a2, s7
                  xor          sp, s10, a7
                  beq          t4, s11, 466f
                  or           s9, a5, s5
463:              or           ra, a7, s5
                  srli         a1, tp, 3
                  auipc        s1, 310229
466:              xori         tp, s8, 755
                  nop
                  bne          s9, t5, 475f
                  add          sp, zero, a0
                  srl          s6, s11, gp
                  beq          a3, a0, 475f
472:              sltu         s2, s10, s4
                  sra          t5, s0, a5
                  bltu         s9, t3, 486f
475:              slt          s0, s4, s4
                  slli         a2, t6, 31
                  ori          a4, t2, 1048
                  nop
                  srli         gp, zero, 10
                  srli         t4, ra, 9
                  nop
                  sub          a3, s8, s8
                  bltu         s5, a6, 492f
                  nop
                  or           s8, s4, a4
486:              srl          s2, ra, t4
                  lui          a3, 680320
                  sltu         tp, t0, t1
                  srai         a0, s11, 0
                  slli         s0, gp, 3
                  add          a6, s6, ra
492:              slt          a7, s1, a3
                  nop
                  bge          t6, s8, 495f
495:              blt          ra, s0, 499f
                  srl          s6, tp, a6
                  lui          a6, 189849
                  sub          t4, a0, a0
499:              slli         s11, s0, 30
                  beq          s8, a7, 507f
                  nop
                  bgeu         tp, t3, 503f
503:              and          gp, t4, s6
                  add          s11, s10, a5
                  slli         t6, t3, 31
                  ori          s4, s11, 428
507:              sra          zero, a5, s5
                  srai         s1, s8, 12
                  bne          s4, t4, 513f
                  bge          s1, s8, 525f
                  xor          s2, s6, a0
                  srli         a5, t1, 20
513:              andi         t6, t5, 29
                  slti         a0, zero, 1915
                  ori          a4, s7, 817
                  auipc        s8, 944928
                  auipc        t2, 450897
                  sub          a2, a1, s8
                  sra          zero, s11, a4
                  sub          a2, ra, a6
                  srli         zero, t6, 5
                  nop
                  srai         s6, tp, 6
                  xori         a7, s0, 473
525:              bge          tp, t3, 538f
                  slli         s10, a5, 17
                  bne          s7, t6, 547f
                  andi         a7, a6, 836
                  slli         a7, a1, 30
                  addi         t6, a1, -926
                  slli         s1, a1, 28
                  srli         a2, s8, 24
                  xori         s2, s10, -736
                  slt          a7, a3, s4
                  add          s9, gp, s1
                  sltiu        a1, a5, 1008
                  lui          t6, 766240
538:              bge          a6, t1, 551f
                  add          t6, s2, s3
                  srl          gp, s2, tp
                  slt          gp, a6, zero
                  blt          s0, s1, 544f
                  bgeu         s8, t2, 551f
544:              bltu         t6, t1, 562f
                  or           a7, s6, a7
                  auipc        ra, 986503
547:              sltu         tp, t2, t0
                  bne          s3, zero, 555f
                  nop
                  andi         s9, t4, 450
551:              sltiu        t1, tp, -950
                  lui          a3, 173856
                  srai         a5, s6, 23
                  sltu         a5, s2, t4
555:              xor          t1, a5, s2
                  srl          ra, t6, zero
                  bltu         gp, t5, 559f
                  sll          t6, t2, s3
559:              andi         s6, s7, 1336
                  beq          a7, s0, 574f
                  sltu         t0, s7, t2
562:              bge          s7, s2, 580f
                  slli         s3, a4, 13
                  bge          t3, gp, 583f
                  lui          gp, 995158
                  or           zero, sp, a2
                  sll          s9, s1, s8
                  ori          a2, s3, -1487
                  add          a6, s6, t6
                  ori          t1, a2, 621
                  and          gp, s5, s7
                  bge          s10, s10, 588f
                  lui          a0, 860009
574:              sltiu        s1, a3, -1317
                  sltu         a0, tp, ra
                  sll          t1, t5, t2
                  xor          gp, s10, a3
                  nop
                  sll          tp, a6, s11
580:              bne          a7, t5, 589f
                  slti         sp, t5, 1163
                  and          t2, s5, s11
583:              sltu         sp, a2, t6
                  slti         a5, t0, -274
                  sll          gp, a4, t4
                  andi         a4, a2, 115
                  bge          t3, t3, 588f
588:              sll          a0, t1, s5
589:              lui          a4, 370807
                  srli         s11, s2, 30
                  blt          a0, t6, 609f
                  slt          s9, s10, s3
                  auipc        a7, 522613
                  srai         a7, a6, 1
                  add          s10, gp, s6
                  or           s10, a1, a5
                  lui          a2, 33157
                  sub          s9, a6, a2
                  bge          s5, ra, 606f
                  ori          s8, s8, 1871
                  srli         t1, t0, 29
                  xori         ra, t3, -1934
                  sltiu        s0, s11, 1783
                  sltiu        ra, s11, 426
                  srl          s11, sp, a3
606:              sra          a6, a6, t4
                  nop
                  andi         a1, a5, -1279
609:              addi         s8, a5, -1641
                  add          ra, s5, t4
                  andi         zero, t4, 1918
                  srl          a0, a1, s7
                  andi         s6, t4, 953
                  sll          s2, a7, s11
                  add          tp, zero, a7
                  bgeu         a4, tp, 624f
                  bgeu         s6, a3, 618f
618:              auipc        a3, 623074
                  sra          s4, s6, a0
                  xori         tp, a7, -208
                  slt          s3, t0, t5
                  beq          s0, s1, 642f
                  xori         t0, sp, -502
624:              sll          t4, s4, s6
                  lui          tp, 747478
                  srli         a1, s9, 24
                  add          a3, t4, tp
                  beq          s8, a4, 633f
                  slli         a6, sp, 24
                  sra          s9, t1, a3
                  sub          gp, t1, t2
                  auipc        a1, 740452
633:              slli         s10, a0, 15
                  slli         a3, s5, 26
                  sra          s6, a4, ra
                  slt          s8, a4, a1
                  xor          ra, s5, t2
                  or           a3, a5, a4
                  ori          t4, a2, -944
                  srl          a6, s9, gp
                  bge          s7, a7, 648f
642:              srli         a3, t0, 9
                  and          s2, ra, t0
                  lui          s8, 101681
                  bgeu         t4, sp, 655f
                  ori          t0, s4, -90
                  addi         sp, s11, -1902
648:              addi         t5, gp, -1561
                  bgeu         a5, a6, 669f
                  lui          s10, 602568
                  bltu         zero, a6, 671f
                  slti         zero, s2, 1275
                  bgeu         t5, a7, 656f
                  sub          t4, t1, ra
655:              sra          t1, s9, a0
656:              nop
                  or           s11, s9, a3
                  bltu         s11, a7, 663f
                  auipc        a1, 594277
                  and          tp, s5, s10
                  or           s4, s7, a2
                  sra          t2, t1, a2
663:              slt          s3, t6, t2
                  nop
                  sra          a5, a2, s1
                  slt          a7, t1, tp
                  sub          s8, s3, a5
                  addi         t1, s11, -135
669:              bltu         t5, t5, 671f
                  lui          s10, 714104
671:              beq          s1, a0, 673f
                  xor          s10, t4, ra
673:              bltu         a1, t6, 684f
                  srl          a0, a2, s9
                  lui          t2, 299478
                  bge          a0, t5, 683f
                  sltu         ra, s11, ra
                  add          s11, t1, s10
                  sub          s0, s3, s0
                  slt          a3, s11, a7
                  srl          s10, a7, ra
                  bge          s1, s10, 686f
683:              bgeu         a5, t5, 696f
684:              srai         a4, t3, 2
                  slt          s9, t1, t1
686:              slti         t2, zero, 1412
                  srl          t2, ra, t3
                  addi         s4, t4, -387
                  bltu         a0, sp, 702f
                  blt          s1, a0, 702f
                  bltu         s1, tp, 695f
                  srl          zero, s5, s8
                  sll          s3, t4, tp
                  or           tp, zero, t5
695:              sltu         t5, s8, t6
696:              sltiu        a2, s0, 1741
                  srai         t0, ra, 14
                  or           s6, t0, t2
                  addi         sp, tp, 65
                  addi         zero, s6, -2032
                  srai         s10, a0, 22
702:              sll          s6, t5, a5
                  addi         t2, t4, 1620
                  srai         t2, t5, 16
                  and          a6, s9, a0
                  bltu         t5, zero, 721f
                  and          a7, s0, t4
                  srl          a2, sp, s3
                  slli         s11, a1, 13
                  sll          a1, t4, a4
                  srl          s6, gp, a4
                  bgeu         ra, tp, 716f
                  addi         a0, s3, 549
                  bne          s3, t5, 715f
715:              addi         t2, s7, 923
716:              slli         a2, s5, 3
                  beq          t5, zero, 731f
                  bge          a7, a5, 723f
                  srl          s0, a5, a0
                  and          a2, ra, s2
721:              bltu         tp, a3, 741f
                  srli         a6, t1, 28
723:              andi         s10, s8, 1674
                  bne          t4, t2, 744f
                  and          s11, s9, a7
                  or           a4, s6, a4
                  andi         s6, t4, 890
                  auipc        a6, 3059
                  xor          a6, s0, a3
                  and          a1, a6, sp
731:              slt          sp, ra, a3
                  slt          s0, zero, ra
                  nop
                  sltiu        a3, tp, -128
                  nop
                  sub          gp, s1, s11
                  srl          zero, t5, a2
                  bgeu         a5, s2, 742f
                  sub          s11, s9, ra
                  xori         a5, a2, -1216
741:              slt          t6, t6, a7
742:              nop
                  or           s3, a2, s2
744:              add          a3, s5, ra
                  xori         s6, t1, 1550
                  add          s1, gp, t5
                  andi         t1, a7, 1189
                  bgeu         t2, a3, 750f
                  xor          t6, s3, a1
750:              auipc        s11, 168203
                  sll          sp, ra, t0
                  beq          t0, a6, 764f
                  ori          sp, t6, 388
                  srai         t6, t6, 15
                  addi         s6, a6, 479
                  sra          t6, s11, s8
                  blt          s4, a1, 761f
                  slli         ra, s1, 5
                  bgeu         s1, sp, 772f
                  bne          tp, s10, 778f
761:              auipc        a0, 747090
                  sra          s9, s8, t5
                  and          t1, s4, t1
764:              srai         t4, s9, 0
                  auipc        gp, 1038611
                  srl          tp, s4, a1
                  bltu         t2, s7, 774f
                  slli         s8, sp, 4
                  andi         a1, s7, 509
                  bge          a4, t1, 783f
                  addi         sp, s9, 1039
772:              add          ra, s9, s10
                  srl          t5, s7, s4
774:              addi         s3, a1, -1578
                  andi         s8, s2, -760
                  blt          s11, a7, 787f
                  blt          t0, a4, 787f
778:              slli         s2, s10, 29
                  bge          s4, t5, 799f
                  sub          s11, s11, a4
                  slt          t0, gp, t6
                  sll          zero, a0, t6
783:              or           s4, zero, ra
                  srai         s9, s7, 29
                  bge          t1, a7, 790f
                  xori         t5, s1, 31
787:              sltiu        s10, tp, -353
                  lui          a4, 142966
                  sub          s9, a0, s1
790:              bge          a4, t3, 792f
                  add          tp, zero, a5
792:              xor          tp, t6, s2
                  beq          s4, t4, 812f
                  or           s9, a6, a3
                  blt          t1, sp, 802f
                  xori         t1, a3, -1666
                  sll          t5, a5, s1
                  addi         s10, s3, -782
799:              slti         tp, s4, -109
                  sub          s2, a0, zero
                  sltiu        a0, t6, -154
802:              add          s0, a5, a3
                  add          t4, s11, t0
                  sll          s3, s7, a5
                  nop
                  and          t0, s0, a1
                  ori          gp, t3, -697
                  ori          s3, a3, 173
                  srl          zero, a6, s5
                  sltiu        a4, ra, 506
                  slti         t6, a5, 1293
812:              andi         a5, s2, -1147
                  srli         sp, a0, 30
                  slti         sp, t0, -622
                  or           zero, a1, a5
                  add          s10, a0, t5
                  slt          s3, s7, sp
                  bne          t1, s9, 826f
                  sltiu        a0, t1, 1950
                  srli         s1, s2, 26
                  bgeu         t2, s3, 828f
                  slti         a2, t3, -1166
                  add          s3, t1, a5
                  sll          tp, t1, zero
                  srl          a1, s11, a7
826:              and          t5, zero, t1
                  sltiu        a1, s5, 1836
828:              nop
                  sll          a3, t2, s2
                  sltiu        sp, zero, -1139
                  blt          a7, a7, 832f
832:              or           a1, t0, s3
                  nop
                  beq          s1, a3, 837f
                  and          a1, a4, gp
                  addi         ra, s10, -714
837:              slti         t2, a6, 1269
                  slt          t2, s10, s6
                  and          a7, a3, t1
                  slt          t5, sp, s8
                  andi         a6, t1, -1481
                  srai         a1, a4, 12
                  xor          ra, s10, t1
                  or           zero, a2, t2
                  sll          a3, s8, t4
                  and          t5, s10, t4
                  sltiu        s3, t5, 1867
                  bge          t6, t3, 866f
                  srai         s2, s0, 27
                  auipc        gp, 610008
                  and          t1, t6, a2
                  blt          t4, a6, 861f
                  lui          a1, 184936
                  bne          s9, a7, 870f
                  bltu         s11, ra, 869f
                  slti         t5, tp, 182
                  bgeu         a7, a7, 858f
858:              srai         s11, a3, 22
                  slli         s2, s10, 3
                  slt          s6, zero, a3
861:              andi         a0, t1, 1243
                  blt          a2, s5, 863f
863:              blt          tp, a7, 878f
                  slti         s1, gp, -1794
                  srli         s2, s11, 17
866:              sltiu        a0, s4, -1881
                  addi         s6, sp, 1333
                  sll          tp, s5, a0
869:              beq          t1, t6, 873f
870:              bne          s3, tp, 890f
                  and          s9, s6, s2
                  nop
873:              nop
                  xor          s1, t1, s10
                  lui          s11, 980746
                  srai         s11, s1, 11
                  bgeu         a2, zero, 881f
878:              slt          a1, s11, a4
                  srli         s6, s6, 22
                  sub          t5, t6, a3
881:              or           sp, s0, a0
                  srai         s4, t0, 5
                  bge          s4, s5, 895f
                  lui          t0, 499579
                  bltu         t4, s0, 899f
                  sltiu        a2, a7, 1249
                  and          a7, s7, a6
                  srai         a0, a1, 11
                  beq          t0, a6, 894f
890:              lui          a1, 160378
                  lui          ra, 277297
                  nop
                  bltu         gp, a6, 901f
894:              nop
895:              slti         s0, t3, 1210
                  srai         s4, t6, 2
                  or           a2, t3, s7
                  beq          a7, s6, 899f
899:              and          s1, t4, t1
                  slli         s4, t3, 16
901:              xor          a7, zero, s9
                  bge          s2, t0, 922f
                  beq          a5, s7, 908f
                  srli         s11, s3, 28
                  xori         a3, t3, -1506
                  ori          a4, a3, 872
                  bltu         s0, s7, 926f
908:              bge          s6, a2, 928f
                  sltiu        s10, a4, -830
                  addi         s9, t6, -910
                  srli         tp, a6, 25
                  beq          gp, s10, 921f
                  lui          t6, 87309
                  lui          t1, 1029104
                  slli         ra, t6, 2
                  sltu         s8, t4, t1
                  sltu         s3, s7, a5
                  srl          a7, tp, s1
                  bgeu         t5, s9, 920f
920:              sll          a3, s9, ra
921:              bgeu         a1, s11, 924f
922:              sll          s9, a6, t3
                  andi         a5, ra, -1044
924:              ori          a1, t6, 724
                  add          s2, a4, s2
926:              add          a3, a5, s3
                  bge          a7, gp, 945f
928:              slt          s8, s5, s8
                  andi         a5, t1, 1194
                  addi         s9, s11, 1301
                  bge          a0, s8, 947f
                  srli         ra, s2, 13
                  or           a5, tp, s2
                  nop
                  bne          t5, gp, 946f
                  ori          s8, s3, 1527
                  sub          s1, s6, zero
                  sub          t5, s7, s4
                  beq          tp, s11, 952f
                  add          s6, t0, t6
                  xor          t2, a3, s1
                  lui          s4, 554753
                  bltu         sp, a7, 945f
                  addi         t5, a7, 34
945:              xori         s1, t6, 877
946:              lui          a5, 187303
947:              or           t0, s10, tp
                  srli         t1, t4, 14
                  srl          t2, a2, s2
                  beq          ra, s9, 963f
                  bne          s3, s10, 958f
952:              slti         a4, a5, -1435
                  slli         zero, s6, 7
                  beq          s0, t3, 958f
                  addi         a7, t3, 1151
                  xori         s4, s10, 1700
                  slti         s11, t0, 858
958:              ori          s4, a0, -2002
                  bge          a4, a0, 974f
                  srli         t2, s9, 21
                  blt          a6, s4, 968f
                  blt          s9, s4, 980f
963:              sll          s8, t1, s8
                  beq          s3, a0, 974f
                  bltu         s9, a0, 969f
                  srai         tp, t3, 14
                  xori         t2, t2, 1676
968:              sltiu        t0, a7, -305
969:              ori          a2, t1, 1483
                  sltiu        a7, t3, 1755
                  bgeu         a0, a4, 978f
                  srl          s6, a1, a3
                  slti         t0, a5, 1450
974:              slt          a6, a0, gp
                  lui          s10, 43206
                  srai         s8, s8, 19
                  srl          t6, t1, t1
978:              ori          s9, s1, 1725
                  or           s11, t1, s2
980:              or           s1, a5, t4
                  bltu         s0, t5, 982f
982:              srai         a3, a7, 13
                  xori         s2, a2, -1051
                  bltu         s1, t0, 986f
                  beq          tp, s10, 993f
986:              sub          zero, s0, ra
                  sra          gp, gp, a3
                  addi         a0, tp, -218
                  sltu         a7, s6, s1
                  slli         sp, a6, 20
                  nop
                  and          s1, s8, s0
993:              auipc        gp, 363971
                  andi         a5, a0, -828
                  add          gp, a3, s9
                  blt          ra, t6, 1005f
                  srl          s4, a2, a6
                  sra          t2, t2, a5
                  auipc        sp, 12602
                  sltu         ra, tp, s0
                  sll          a0, s4, t1
                  bge          s6, s1, 1009f
                  nop
                  srai         t5, s6, 26
1005:             lui          a2, 879507
                  nop
                  addi         a1, sp, -253
                  srai         s9, t3, 17
1009:             srai         s2, ra, 12
                  add          sp, t6, a1
                  bgeu         t5, s11, 1027f
                  blt          a4, a7, 1016f
                  sra          s4, t5, s3
                  bgeu         s0, t5, 1032f
                  xori         tp, s6, -1355
1016:             bgeu         t5, t4, 1018f
                  srai         s3, gp, 19
1018:             srai         t6, zero, 19
                  nop
                  auipc        s6, 516060
                  sub          a5, t4, s11
                  addi         s3, a2, -785
                  auipc        s6, 107163
                  sll          s11, a1, s1
                  slt          tp, s1, t2
                  srli         s11, s0, 26
1027:             beq          t6, ra, 1047f
                  srli         s10, ra, 29
                  sll          sp, s5, t1
                  slt          tp, zero, s9
                  sub          a1, a0, a0
1032:             slli         a7, s2, 10
                  slti         s4, zero, 313
                  andi         sp, a3, 709
                  srli         s6, s5, 16
                  nop
                  blt          a5, zero, 1057f
                  bgeu         ra, s3, 1039f
1039:             bltu         a7, s5, 1043f
                  nop
                  bge          t2, t6, 1059f
                  slt          sp, s6, a0
1043:             nop
                  slt          a7, s2, t6
                  add          s3, s2, s4
                  bltu         a3, a6, 1061f
1047:             andi         a3, zero, 1728
                  bne          s11, s4, 1061f
                  lui          t1, 651071
                  addi         a1, t5, -920
                  slli         t4, s4, 10
                  slti         a7, a0, -377
                  nop
                  sra          s4, sp, t4
                  slli         s1, a0, 25
                  bltu         tp, s9, 1058f
1057:             auipc        s10, 116351
1058:             auipc        s9, 763446
1059:             lui          t4, 188671
                  beq          t5, tp, 1061f
1061:             srl          s1, a6, gp
                  bge          zero, gp, 1072f
                  add          s8, tp, t2
                  and          s6, s7, a0
                  and          t5, s4, s10
                  blt          a2, s0, 1069f
                  and          s4, a1, sp
                  slti         gp, s8, 970
1069:             xor          t5, t1, s4
                  srai         gp, a0, 4
                  bge          tp, s0, 1076f
1072:             slli         s1, s10, 29
                  bge          s6, a5, 1077f
                  ori          s0, s7, 362
                  and          gp, s9, t3
1076:             sra          gp, t3, a6
1077:             xori         t6, gp, 1632
                  srai         t2, t2, 8
                  srli         s8, s8, 10
                  slli         a3, s11, 21
                  srai         zero, s2, 28
                  xori         a0, a1, 1560
                  slti         t0, a4, 1471
                  addi         s2, s11, 1022
                  nop
                  ori          gp, a0, -1968
                  lui          gp, 983090
                  andi         sp, a1, 1058
                  srli         a5, s9, 8
                  bge          t4, s8, 1110f
                  sra          s9, sp, a6
                  sra          s3, a3, s4
                  bgeu         s7, a2, 1094f
1094:             srli         t6, s0, 18
                  lui          t6, 571190
                  srai         tp, s9, 19
                  sltiu        s6, t1, 1305
                  and          t2, a7, t2
                  or           s1, t0, s11
                  sltiu        t2, a7, 1428
                  sll          a3, a5, s10
                  bgeu         ra, a1, 1121f
                  bgeu         sp, a1, 1110f
                  bge          s3, s9, 1116f
                  xor          s2, sp, a5
                  or           t2, t6, a4
                  bge          sp, a5, 1118f
                  nop
                  bne          a2, s7, 1116f
1110:             nop
                  srli         a4, t5, 15
                  bgeu         s5, s7, 1117f
                  beq          a2, s8, 1127f
                  ori          s10, zero, 1403
                  beq          gp, t1, 1128f
1116:             bltu         a2, t6, 1120f
1117:             and          s10, a0, a3
1118:             andi         a5, s9, -714
                  auipc        s4, 269124
1120:             add          a4, a2, zero
1121:             ori          t0, a3, -1375
                  nop
                  slt          a4, s2, a6
                  sltiu        gp, t2, 1583
                  blt          t4, a0, 1131f
                  slli         s8, s10, 15
1127:             and          s8, a7, s11
1128:             and          s1, s5, a5
                  lui          s2, 839803
                  srli         s10, a5, 26
1131:             or           a3, gp, s2
                  nop
                  xori         s6, s1, 400
                  xori         a3, tp, -965
                  auipc        t1, 115457
                  lw           t5, 4(t3)
                  sltu         s9, sp, s0
                  addi         t3, t3, 60
                  sll          zero, ra, gp
                  srli         ra, s6, 22
                  add          s11, a4, gp
                  andi         s6, s7, 177
1463:             addi x24, x30, 0
1463:             jalr x24, x24, 0
sub_1:            beq          a3, a4, sub_1_stack_p
                  andi         s8, t3, -1535
sub_1_stack_p:    addi         t3, t3, -20
                  add          sp, t6, zero
                  auipc        a7, 1006006
                  addi         t6, a0, -906
                  addi         s6, s11, 1072
                  auipc        ra, 725006
                  sw           t5, 4(t3)
                  and          a5, t2, s6
                  srl          a3, a6, a5
                  nop
                  sra          a0, s9, s0
                  addi         t5, a5, -1791
                  and          a1, t1, t5
                  andi         t4, s2, 1765
                  addi         t0, t6, 593
sub_1_j5:         jal          t5, sub_4 #jump sub_1 -> sub_4
                  la           s9, sub_6
                  addi         s9, s9, 976
                  xori         a6, a0, -1729
                  sra          s2, s3, s4
                  lui          t5, 627440
                  bltu         s4, sp, sub_1_j6 #branch to jump instr
                  auipc        ra, 1046488
                  ori          s2, s10, -1931
                  srli         s11, a7, 9
sub_1_j6:         jalr         t5, s9, -975 #jump sub_1 -> sub_6
                  la           ra, sub_4
                  sll          t0, s10, s6
                  nop
                  and          a5, t1, t1
                  nop
                  xori         s3, s6, 1108
                  auipc        t5, 339411
                  addi         ra, ra, -887
                  sll          s10, a2, s0
                  bgeu         a5, tp, sub_1_j7 #branch to jump instr
                  sltiu        a2, a7, -811
                  and          a0, t6, t1
                  addi         s3, ra, -553
sub_1_j7:         jalr         t5, ra, 888 #jump sub_1 -> sub_4
                  srl          s9, t1, s10
                  sra          s1, a4, a4
                  andi         t6, s0, 1672
                  sra          s11, s1, t4
                  xor          s4, s4, tp
sub_1_j8:         jal          t5, sub_5 #jump sub_1 -> sub_5
                  lui          s11, 663786
                  or           tp, t4, s9
                  srai         s10, t6, 23
                  blt          t6, ra, 13f
                  blt          sp, s11, 6f
                  auipc        s3, 51147
6:                sltu         gp, s8, a4
                  addi         a6, ra, -1576
                  slli         s1, zero, 3
                  srli         zero, a1, 27
                  sra          a5, a0, zero
                  blt          s6, a3, 29f
                  sub          t2, gp, a1
13:               add          s11, t6, tp
                  blt          s4, t1, 19f
                  bltu         a3, t0, 25f
                  sub          sp, a5, t2
                  sub          s0, t0, s11
                  auipc        zero, 865911
19:               nop
                  addi         ra, t1, -604
                  slti         a2, s5, -891
                  andi         s2, zero, -1509
                  srai         ra, a7, 14
                  xori         s6, s5, -562
25:               bne          t3, a1, 34f
                  sltu         ra, s10, s5
                  blt          tp, s4, 34f
                  bgeu         s9, s7, 34f
29:               sub          a6, t1, s7
                  bgeu         t6, zero, 34f
                  slli         t0, t1, 10
                  add          a0, s9, zero
                  slti         t4, tp, -562
34:               add          a3, t5, ra
                  lw           t5, 4(t3)
                  xor          s3, s6, gp
                  addi         t3, t3, 20
                  slti         t1, t6, -1579
                  lui          s11, 157252
88:               addi x24, x30, 1
88:               jalr x24, x24, 0
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
mmode_intr_vector_1:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_2:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_3:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_4:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_5:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_6:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_7:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_8:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_9:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_10:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_11:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_12:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_13:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_14:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_15:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x21, x28, zero
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x14, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x14, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x14, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x14, x9, ecall_handler
                  li x9, 0x1
                  beq x14, x9, instr_fault_handler
                  li x9, 0x5
                  beq x14, x9, load_fault_handler
                  li x9, 0x7
                  beq x14, x9, store_fault_handler
                  li x9, 0xc
                  beq x14, x9, pt_fault_handler
                  li x9, 0xd
                  beq x14, x9, pt_fault_handler
                  li x9, 0xf
                  beq x14, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x28, x21, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x21, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x21, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x28, x21, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x28, x21, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x28, x21, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
