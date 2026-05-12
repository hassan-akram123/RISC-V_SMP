.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 0
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0xf4a6b8c6
                  li x1, 0xfda6c358
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xd
                  li x5, 0x4c4de517
                  li x6, 0x25b7daa8
                  li x7, 0x80000000
                  li x8, 0x82bf7e08
                  li x9, 0x0
                  li x11, 0xfefac4fa
                  li x12, 0x80000000
                  li x14, 0x5
                  li x15, 0x0
                  li x16, 0x85e084d1
                  li x17, 0x13ebce5b
                  li x18, 0xcc0020ce
                  li x19, 0x80000000
                  li x20, 0xa
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0xd
                  li x24, 0xbc2dcdf9
                  li x25, 0xf4c9864a
                  li x26, 0x1
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x698d7c50
                  li x30, 0x0
                  li x31, 0xf63c5898
                  la x10, user_stack_end
main:             la           tp, sub_3
                  addi         tp, tp, -433
                  srai         t0, a1, 14
                  addi         a1, s5, -1669
                  bgeu         s9, s1, main_j2 #branch to jump instr
                  sltu         s1, t2, t4
                  lui          t4, 35221
                  lui          s1, 466765
                  xor          s4, s5, s3
                  or           a6, gp, a1
main_j2:          jalr         a7, tp, 434 #jump main -> sub_3
                  or           s9, a6, s2
                  sltiu        t3, tp, -1829
                  la           s0, sub_2
                  addi         s0, s0, -1015
                  slli         s10, a4, 2
                  srai         t4, t6, 3
                  slli         t3, t1, 10
                  srl          s7, a4, s5
                  xor          a2, a5, a1
                  xori         a2, t5, -1332
                  add          s11, sp, t4
main_j3:          jalr         a7, s0, 1016 #jump main -> sub_2
                  nop
                  srli         t1, s7, 2
                  add          t2, tp, s5
                  srli         zero, t0, 19
                  slli         zero, gp, 16
                  la           sp, sub_1
                  slt          tp, s10, gp
                  sub          zero, a0, s5
                  addi         sp, sp, -732
                  sra          a5, t4, gp
                  andi         t2, t4, 1332
main_j4:          jalr         a7, sp, 732 #jump main -> sub_1
                  addi         s8, zero, 3 #init loop 1 counter
                  sltu         a5, t3, a6
                  slli         s0, s11, 30
                  sltiu        t6, s7, 850
                  or           gp, t0, s9
                  auipc        tp, 604907
                  srai         zero, s1, 19
                  addi         sp, zero, -6 #init loop 1 limit
                  nop
main_0_1_t:       slt          s1, s7, a1
                  and          zero, t0, s7
                  sltiu        t6, s3, -1316
                  sub          s7, t4, a4
                  addi         s8, s8, -9 #update loop 1 counter
                  nop
                  and          t5, gp, s0
                  addi         s6, zero, 1 #init loop 0 counter
                  sltu         t0, a2, s4
                  xori         a2, s3, 1291
                  addi         s10, s11, 1968
                  addi         a6, zero, -14 #init loop 0 limit
main_0_0_t:       xor          ra, s0, s6
                  auipc        a5, 443616
                  nop
                  addi         s6, s6, -8 #update loop 0 counter
                  slti         s3, a0, -746
                  bge          s6, a6, main_0_0_t #branch for loop 0
                  and          t2, t3, s11
                  beq          s8, sp, main_0_1_t #branch for loop 1
                  slt          s4, a2, s3
                  bgeu         t3, a6, 17f
                  and          sp, t2, a4
                  xor          t1, s1, a4
                  add          a6, t5, t3
                  bne          s9, s7, 21f
                  blt          s9, a2, 9f
                  bge          t6, s0, 12f
                  bgeu         s0, t3, 25f
                  bgeu         s8, s1, 14f
9:                andi         s1, s4, 1466
                  sra          a7, s4, gp
                  slti         sp, gp, -132
12:               bltu         tp, gp, 22f
                  sub          s7, s4, zero
14:               sub          t6, a6, gp
                  nop
                  andi         a6, a5, -1974
17:               slt          gp, zero, s11
                  xori         sp, s7, -104
                  bgeu         s0, a7, 26f
                  sra          t1, t6, a0
                  la           t3, sub_4
                  addi         t3, t3, -891
                  slli         a4, t4, 9
                  and          t4, s1, ra
                  andi         s0, s11, -367
                  auipc        t5, 338847
                  slli         gp, ra, 22
                  sra          t1, a7, s7
main_j1:          jalr         a7, t3, 891 #jump main -> sub_4
                  sltiu        t5, a0, -854
21:               add          a2, t5, s6
22:               bne          s10, a2, 26f
                  xori         gp, a1, 1420
                  ori          s3, s10, 1578
25:               beq          t1, t2, 26f
26:               andi         a5, t0, -464
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            auipc        t4, 115984
                  sll          s10, t1, zero
                  bge          zero, t2, sub_2_stack_p
sub_2_stack_p:    addi         a0, a0, -32
                  auipc        t6, 768965
                  xori         t3, s1, -747
                  sw           a7, 4(a0)
                  srl          s7, s11, gp
                  nop
                  addi         a1, zero, 10 #init loop 1 counter
                  srai         tp, a0, 25
                  srl          s3, a0, t3
                  slli         s4, s8, 29
                  addi         t3, zero, 10 #init loop 1 limit
                  slt          s4, tp, s2
sub_2_0_1_t:      slt          zero, s10, s7
                  addi         a1, a1, -9 #update loop 1 counter
                  sltiu        a7, t3, -1170
                  addi         t6, zero, 4 #init loop 0 counter
                  sll          gp, s0, a5
                  addi         s7, zero, -9 #init loop 0 limit
                  add          t1, a4, s7
sub_2_0_0_t:      slti         a7, s2, -1149
                  ori          a5, t4, -1055
                  addi         t6, t6, -10 #update loop 0 counter
                  ori          a4, gp, -1264
                  slt          s9, a3, s0
                  bge          t6, s7, sub_2_0_0_t #branch for loop 0
                  srai         a7, t2, 4
                  bgeu         a1, t3, sub_2_0_1_t #branch for loop 1
                  auipc        a5, 198387
                  addi         t4, zero, 5 #init loop 1 counter
                  sra          t2, t2, s11
                  addi         t1, a1, -1752
                  slli         s7, s4, 16
                  addi         s1, zero, 19 #init loop 1 limit
sub_2_1_1_t:      xori         a7, s7, 914
                  addi         t4, t4, 7 #update loop 1 counter
                  or           gp, gp, t3
                  slt          s8, s6, a4
                  ori          a2, t1, -715
                  xor          a6, gp, a4
                  sll          t2, s11, t0
                  ori          zero, s4, 1232
                  addi         s10, zero, -10 #init loop 0 counter
                  addi         s3, zero, 6 #init loop 0 limit
                  sub          t3, a3, s2
sub_2_1_0_t:      addi         gp, a3, -1116
                  sltiu        tp, t4, 1008
                  xori         tp, t3, 325
                  addi         s4, a6, 505
                  addi         s10, s10, 8 #update loop 0 counter
                  auipc        s11, 743983
                  bne          s10, s3, sub_2_1_0_t #branch for loop 0
                  auipc        a4, 229728
                  sra          t1, s10, s5
                  slti         a5, t4, -1503
                  slt          s0, s0, t6
                  sra          a4, t2, a0
                  or           zero, a6, s5
                  beq          t4, s1, sub_2_1_1_t #branch for loop 1
                  addi         t5, a2, 314
                  addi         s1, zero, -1 #init loop 1 counter
                  addi         zero, a7, 1352
                  and          ra, a5, sp
                  addi         t5, zero, 17 #init loop 1 limit
                  sub          gp, t3, a5
                  sra          t6, t2, s5
                  slti         t6, s0, -92
sub_2_2_1_t:      ori          ra, s3, 1098
                  nop
                  sra          s10, s10, tp
                  andi         a7, zero, 281
                  xor          s4, gp, a0
                  addi         s1, s1, 10 #update loop 1 counter
                  sltu         t6, sp, t0
                  srai         zero, s5, 14
                  auipc        a4, 952870
                  srl          a6, s5, t4
                  addi         s7, zero, 2 #init loop 0 counter
                  addi         a2, zero, 17 #init loop 0 limit
                  sub          sp, s9, t5
sub_2_2_0_t:      nop
                  sra          s10, sp, s1
                  addi         s7, s7, 9 #update loop 0 counter
                  bltu         s7, a2, sub_2_2_0_t #branch for loop 0
                  lui          a1, 768971
                  srai         s9, s5, 19
                  xori         s10, a1, -1587
                  slli         zero, a2, 3
                  bltu         s1, t5, sub_2_2_1_t #branch for loop 1
                  add          zero, s0, s2
                  addi         a6, zero, 10 #init loop 1 counter
                  addi         a1, zero, 20 #init loop 1 limit
sub_2_3_1_t:      slt          t3, a6, a5
                  andi         s0, sp, -50
                  addi         a6, a6, 2 #update loop 1 counter
                  slti         s6, t1, 27
                  slt          a2, a7, tp
                  srli         s10, tp, 21
                  addi         gp, zero, 7 #init loop 0 counter
                  addi         s11, zero, 7 #init loop 0 limit
sub_2_3_0_t:      addi         t1, zero, -267
                  auipc        s7, 329635
                  addi         gp, gp, -5 #update loop 0 counter
                  srli         s9, s11, 29
                  xori         a5, s9, 172
                  bgeu         gp, s11, sub_2_3_0_t #branch for loop 0
                  or           a4, t1, s3
                  xori         s10, s4, -576
                  xor          t1, s6, zero
                  bne          a6, a1, sub_2_3_1_t #branch for loop 1
                  add          sp, s4, s3
                  ori          t3, ra, -105
                  xori         s6, t3, -90
                  xor          t3, s4, gp
                  srai         a7, a1, 24
                  xor          a4, t4, t0
                  srl          s1, s1, s8
                  and          t6, a7, t1
                  srli         t1, t0, 31
                  slti         s4, zero, -826
                  srai         zero, a5, 0
                  addi         s11, s11, -1207
                  beq          a7, s10, 24f
                  sltu         t4, t4, s7
                  slt          s4, sp, t6
                  srli         t0, s11, 27
                  or           t4, ra, t5
                  addi         a6, t0, -81
                  srli         s3, ra, 8
                  addi         a7, zero, 3 #init loop 0 counter
                  srl          s8, s3, s11
                  slti         s4, t6, -956
                  auipc        gp, 173375
                  and          gp, gp, a5
                  addi         t6, zero, 8 #init loop 0 limit
                  slt          t4, s2, ra
                  slt          a2, t3, s8
                  lui          a6, 39651
                  sra          s7, t2, a2
                  slti         s1, sp, -1216
                  xori         a6, t3, 1869
                  and          tp, a6, t2
                  sll          gp, a2, a0
                  srli         zero, t6, 13
                  lui          s4, 762927
                  and          s0, t4, zero
                  sra          sp, s11, sp
sub_2_4_0_t:      lui          s0, 985395
                  xor          s8, tp, s3
                  and          s3, t5, a6
                  srli         t2, t1, 15
                  addi         a7, a7, 5 #update loop 0 counter
                  xori         gp, s5, 1936
                  xor          t0, a6, a0
                  and          t5, a5, t0
                  nop
                  bne          a7, t6, sub_2_4_0_t #branch for loop 0
                  nop
                  addi         a1, sp, 940
                  lui          s10, 101833
                  or           a7, a5, s7
                  bne          a0, gp, 27f
                  sra          s3, ra, s5
                  lui          s7, 455052
24:               sll          s8, s10, s1
                  xori         a6, a3, -1411
                  auipc        a5, 7156
27:               bgeu         s7, a4, 28f
28:               xor          s11, gp, s3
                  or           t6, a7, a4
                  or           gp, s6, a5
                  add          s9, s10, t1
                  sra          s4, a6, s10
                  xor          t0, ra, s2
                  xor          a6, s6, t1
                  beq          s2, s10, 51f
                  srl          a6, t1, s11
                  srli         a5, sp, 20
                  or           s1, t2, sp
                  sra          sp, ra, a1
                  addi         t4, t4, 319
                  sll          ra, t5, s7
                  bgeu         t6, s11, 55f
                  bne          a2, s7, 52f
                  slt          t6, gp, s1
                  slt          t4, a3, s10
                  ori          s8, a4, -141
                  or           t1, t1, a6
                  sub          t0, ra, t1
                  beq          t1, t5, 52f
                  bge          s4, t5, 56f
51:               slt          t4, s5, s10
52:               ori          sp, a5, 637
                  xor          a4, s8, a3
                  xori         a1, ra, 663
55:               add          a4, a0, t1
56:               srl          t2, a0, s0
                  and          a4, s4, t1
                  beq          t4, a6, 63f
                  sub          a6, s4, s10
                  bge          s7, ra, 69f
                  bltu         s6, t6, 76f
                  lui          s7, 370652
63:               add          tp, a4, a0
                  bltu         t3, a7, 79f
                  slt          t5, t6, t0
                  bne          a3, t3, 84f
                  andi         tp, s7, -1353
                  xori         a6, gp, 873
69:               and          s8, a0, a0
                  slli         t4, t6, 10
                  sltu         a1, s0, a6
                  auipc        a5, 981112
                  slti         gp, s10, 1253
                  beq          a2, t6, 81f
                  slli         a4, s6, 5
76:               slt          t0, t2, s6
                  bne          zero, s3, 84f
                  slt          a1, s11, gp
79:               sltu         a5, s5, t5
                  nop
81:               srli         sp, t1, 10
                  and          s8, s3, sp
                  beq          s11, a6, 102f
84:               bge          a7, s0, 91f
                  lui          s4, 315830
                  bne          a0, s11, 103f
                  bge          gp, tp, 97f
                  slli         s7, s1, 2
                  srl          a5, s0, a1
                  sra          t3, s2, s8
91:               blt          t5, s3, 103f
                  auipc        t1, 32392
                  sub          zero, a2, t5
                  bltu         sp, sp, 106f
                  sra          a1, tp, s4
                  sub          s10, t2, t5
97:               slt          s3, t5, s8
                  add          a5, s4, s7
                  add          a4, t0, t4
                  add          t5, s7, gp
                  srl          zero, zero, s5
102:              or           a7, s2, t2
103:              lui          s3, 639418
                  sll          sp, t5, ra
                  bge          sp, t5, 106f
106:              bgeu         t3, s8, 126f
                  bltu         gp, a4, 122f
                  slti         s3, ra, -145
                  blt          a6, a2, 125f
                  add          s6, s2, s10
                  addi         gp, a3, -244
                  auipc        zero, 511569
                  sltu         a5, a5, t2
                  slli         t4, t5, 19
                  sltiu        gp, s5, -1751
                  xor          t1, a5, s6
                  sll          a5, s3, s11
                  sltu         gp, tp, s7
                  srli         s8, t6, 4
                  xor          gp, a3, s10
                  srl          t0, a1, a0
122:              sll          a1, a1, a4
                  slti         a5, s1, -1777
                  slti         s2, t6, 1322
125:              xori         s0, s8, -973
126:              slt          a5, t4, t6
                  add          s7, s1, zero
                  slti         t3, a7, 2024
                  srai         s9, s6, 6
                  addi         a4, t6, 1463
                  lui          a4, 286353
                  or           t6, s8, a4
                  xor          s10, t0, a1
                  slt          a6, t1, s8
                  bltu         s5, t0, 140f
                  add          a5, s11, s11
                  bgeu         t5, a3, 151f
                  sltiu        s9, t1, 816
                  slt          t6, s5, s11
140:              andi         s2, sp, -1658
                  xor          gp, t0, t2
                  bge          t0, s4, 143f
143:              srai         s8, a6, 2
                  beq          a3, zero, 159f
                  slli         s8, s11, 14
                  nop
                  srl          a5, s4, sp
                  slti         s0, s2, 2008
                  sra          s0, a6, tp
                  xor          a6, s4, s3
151:              auipc        zero, 507441
                  srli         a7, t5, 20
                  ori          tp, t5, 1713
                  slt          a6, s3, s8
                  auipc        t3, 198283
                  srl          s2, a5, t2
                  srl          s2, s11, gp
                  sll          t5, a7, a3
159:              blt          t2, s3, 179f
                  addi         t1, s2, 1214
                  nop
                  sll          s6, a7, s10
                  bgeu         a6, s5, 177f
                  srl          s2, zero, a2
                  sra          t6, t2, a4
                  bge          ra, s8, 179f
                  ori          s8, t1, -35
                  or           s6, a0, t5
                  slti         s0, ra, -1244
                  srli         tp, a4, 20
                  lui          s0, 808136
                  sll          a2, t0, s4
                  nop
                  sll          a4, s2, t2
                  bne          gp, a6, 176f
176:              sll          a2, s0, a0
177:              sltiu        a6, s0, -103
                  bge          gp, s2, 183f
179:              and          gp, t4, zero
                  lui          a2, 684317
                  bne          s4, s0, 188f
                  bne          t5, t6, 195f
183:              sub          sp, s11, s4
                  blt          s7, t1, 199f
                  srli         s9, a6, 10
                  slti         t4, s10, 115
                  addi         a7, a6, -1170
188:              srli         s11, s1, 3
                  srli         t6, s7, 21
                  srai         s7, s11, 7
                  beq          t2, s9, 209f
                  or           s4, a1, s2
                  srai         a2, s3, 16
                  sub          a6, s1, s2
195:              or           s3, s3, s3
                  add          zero, a7, s11
                  lui          a4, 439213
                  add          s11, t4, s10
199:              andi         t4, s4, -668
                  slti         t6, s2, -1410
                  bge          a0, a2, 216f
                  sltiu        a7, s3, 492
                  slt          s9, s10, t3
                  auipc        t5, 645910
                  slt          t0, s11, s6
                  bgeu         s5, zero, 218f
                  ori          s4, t1, 158
                  sltiu        s6, a7, 1194
209:              addi         s7, s5, -468
                  sll          s3, s9, s8
                  sltiu        t6, t6, -905
                  and          s4, s3, t3
                  beq          ra, zero, 222f
                  or           a6, s0, s7
                  bltu         t1, s3, 225f
216:              bltu         s9, gp, 232f
                  auipc        a7, 776182
218:              sub          s9, a6, s11
                  sltiu        s9, sp, -1539
                  bge          a1, s3, 236f
                  srai         tp, sp, 13
222:              sll          t2, s7, sp
                  slti         a5, t4, -577
                  auipc        zero, 749415
225:              sltiu        t3, s11, 2039
                  bge          a1, s6, 235f
                  slt          s9, a6, s2
                  sub          a6, a3, s3
                  srl          ra, a7, a6
                  sra          a2, ra, a0
                  beq          s2, a4, 236f
232:              sltiu        a7, s9, -1295
                  and          t4, s5, sp
                  srai         s6, t0, 1
235:              addi         gp, a5, -209
236:              blt          gp, s8, 256f
                  nop
                  auipc        a4, 243197
                  nop
                  nop
                  xor          a2, a2, zero
                  srl          t0, a1, a2
                  sltu         tp, gp, s11
                  bgeu         t5, a5, 263f
                  slti         s0, t5, 1031
                  lui          t6, 624761
                  srai         t5, s10, 16
                  auipc        gp, 1011351
                  beq          s1, s0, 269f
                  bge          a2, t3, 267f
                  sltu         t3, t2, t1
                  ori          s0, a1, -888
                  add          s0, a6, a6
                  addi         t0, a2, -1564
                  sltu         a4, a6, s7
256:              slli         s6, zero, 12
                  srl          t3, s11, t2
                  srli         a4, s2, 21
                  sltiu        t0, s0, 1573
                  bltu         sp, s9, 263f
                  blt          t4, gp, 262f
262:              bge          zero, s2, 277f
263:              srai         ra, t6, 7
                  addi         s11, s9, 712
                  bgeu         t5, t2, 266f
266:              slt          s2, s10, s3
267:              andi         s1, a4, -1562
                  slt          s10, ra, s11
269:              slt          s8, s4, ra
                  bgeu         a7, s2, 282f
                  add          s4, a2, s4
                  andi         a6, t4, -282
                  slt          s7, t3, t0
                  srl          sp, t6, zero
                  sll          s10, s8, t5
                  and          t6, a0, s1
277:              xor          zero, s10, s5
                  add          t4, s4, gp
                  or           s9, s8, a5
                  bgeu         t3, t5, 287f
                  bgeu         s11, ra, 288f
282:              srai         s2, s10, 27
                  srai         t2, t1, 22
                  sub          s2, t2, s2
                  bne          sp, s4, 290f
                  bltu         s8, ra, 290f
287:              lui          a2, 512467
288:              and          t5, t2, s6
                  bge          s2, s8, 290f
290:              addi         a4, t5, 730
                  srli         s0, s1, 20
                  srli         sp, t5, 22
                  xori         tp, t3, 1468
                  lw           a7, 4(a0)
                  srl          s3, tp, a1
                  addi         a0, a0, 32
                  auipc        s6, 487568
                  sltu         gp, s1, a4
                  sltu         s7, s6, t3
                  xor          t5, t4, a5
443:              addi x3, x17, 1
443:              jalr x3, x3, 0
sub_4:            srli         s7, t0, 7
                  beq          t2, s10, sub_4_stack_p
                  slti         gp, sp, -1757
                  ori          a4, a2, 614
sub_4_stack_p:    addi         a0, a0, -52
                  sll          s8, t4, ra
                  auipc        s0, 1017294
                  xor          t3, zero, s10
                  sw           a7, 4(a0)
                  xor          sp, t3, a3
                  addi         a1, zero, 3 #init loop 1 counter
                  slti         a4, tp, 1411
                  srai         t5, s7, 28
                  sll          zero, s0, t3
                  addi         sp, zero, 12 #init loop 1 limit
                  auipc        s6, 260522
sub_4_17_1_t:     addi         a4, t1, -800
                  addi         a1, a1, 9 #update loop 1 counter
                  xor          t3, a1, a7
                  sltu         s4, t6, t6
                  nop
                  sltiu        s3, a1, 804
                  sra          zero, t4, s7
                  slli         gp, s11, 28
                  lui          t0, 153507
                  sltiu        a5, s0, -44
                  and          s7, a0, s11
                  addi         s10, zero, 3 #init loop 0 counter
                  auipc        a5, 578589
                  auipc        t1, 124340
                  addi         t4, zero, -4 #init loop 0 limit
sub_4_17_0_t:     nop
                  ori          a2, t3, -144
                  addi         s10, s10, -5 #update loop 0 counter
                  lui          s0, 318213
                  bge          s10, t4, sub_4_17_0_t #branch for loop 0
                  beq          a1, sp, sub_4_17_1_t #branch for loop 1
                  sll          gp, a6, s11
                  addi         s2, zero, 1 #init loop 1 counter
                  sltiu        t0, t4, -1124
                  addi         s4, zero, -9 #init loop 1 limit
sub_4_12_1_t:     or           t3, s10, s4
                  and          t2, a0, s5
                  addi         s2, s2, -10 #update loop 1 counter
                  addi         t6, zero, 2 #init loop 0 counter
                  sltiu        tp, t4, 789
                  addi         s8, zero, 4 #init loop 0 limit
sub_4_12_0_t:     add          ra, t4, t1
                  addi         t6, t6, 8 #update loop 0 counter
                  sltiu        a2, s6, -57
                  bltu         t6, s8, sub_4_12_0_t #branch for loop 0
                  beq          s2, s4, sub_4_12_1_t #branch for loop 1
                  lui          s10, 815342
                  addi         s2, zero, -7 #init loop 0 counter
                  nop
                  sltiu        a2, tp, 1467
                  xori         s4, s9, -852
                  sltu         a2, t0, a1
                  and          s0, s6, a6
                  nop
                  xor          t1, a4, s4
                  addi         a7, zero, 2009
                  addi         t6, zero, 13 #init loop 0 limit
                  sltiu        t3, a6, -1556
                  lui          t1, 709456
sub_4_1_0_t:      sltiu        s11, a1, 1107
                  sll          s9, a6, a0
                  addi         s2, s2, 10 #update loop 0 counter
                  lui          s0, 786974
                  srl          t1, s9, a2
                  add          a5, t3, tp
                  slti         s8, t2, -1939
                  addi         s1, a7, -723
                  add          s0, t6, t5
                  xori         a7, gp, -1660
                  bltu         s2, t6, sub_4_1_0_t #branch for loop 0
                  srl          a7, t4, a6
                  addi         s2, zero, 4 #init loop 1 counter
                  addi         a4, zero, -11 #init loop 1 limit
sub_4_0_1_t:      add          a1, a5, s9
                  srli         t5, s3, 17
                  sltiu        ra, ra, 77
                  andi         t3, a4, -1527
                  addi         s2, s2, -3 #update loop 1 counter
                  addi         a5, zero, -10 #init loop 0 counter
                  ori          t0, s2, 1464
                  addi         s8, zero, -16 #init loop 0 limit
                  xori         a7, a6, 1918
                  sra          t3, t4, t1
sub_4_0_0_t:      xor          a6, t5, a1
                  addi         a5, a5, -6 #update loop 0 counter
                  auipc        gp, 119743
                  sra          s11, a6, s1
                  and          s4, t2, t4
                  bne          a5, s8, sub_4_0_0_t #branch for loop 0
                  slli         tp, t6, 2
                  addi         s11, t0, 130
                  slli         t0, a4, 5
                  xori         gp, s4, -594
                  andi         t2, s8, -1713
                  xori         s7, t2, -1612
                  ori          s11, t0, -1794
                  nop
                  sra          a2, sp, zero
                  srai         s1, a0, 9
                  sub          t6, s6, sp
                  beq          s2, a4, sub_4_0_1_t #branch for loop 1
                  add          s1, gp, a7
                  addi         ra, zero, 2 #init loop 0 counter
                  slti         t5, s3, -1878
                  sll          t2, sp, s7
                  auipc        sp, 401871
                  addi         t3, zero, -13 #init loop 0 limit
                  addi         sp, t0, -224
                  addi         s2, s8, -1588
                  srai         a2, tp, 14
                  nop
                  srli         a5, a3, 27
                  lui          t2, 561220
                  auipc        a4, 314776
sub_4_18_0_t:     slti         s0, zero, 1824
                  lui          s6, 667324
                  ori          a5, zero, -2
                  addi         ra, ra, -5 #update loop 0 counter
                  bge          ra, t3, sub_4_18_0_t #branch for loop 0
                  lui          a1, 961698
                  addi         a5, zero, 2 #init loop 0 counter
                  sub          ra, t0, s2
                  slli         s6, s2, 14
                  slt          t1, s2, tp
                  addi         a4, zero, -17 #init loop 0 limit
                  ori          tp, a2, -550
                  slt          s4, s2, a3
sub_4_22_0_t:     auipc        s3, 1044295
                  slti         gp, gp, 1778
                  slt          s1, s3, a5
                  nop
                  addi         s11, s10, 580
                  addi         a5, a5, -6 #update loop 0 counter
                  bge          a5, a4, sub_4_22_0_t #branch for loop 0
                  lui          t2, 726023
                  addi         s4, zero, 10 #init loop 0 counter
                  srl          t3, ra, t6
                  srli         sp, ra, 7
                  addi         s6, zero, 1 #init loop 0 limit
                  and          s0, a6, s11
                  slli         s10, s0, 29
                  addi         gp, a4, 855
                  sub          t3, t4, s4
                  xori         a2, t2, -674
sub_4_10_0_t:     sltu         a2, t5, a5
                  xori         s11, tp, -1827
                  sub          gp, s6, a7
                  xor          s9, s3, s11
                  addi         s4, s4, -2 #update loop 0 counter
                  srai         gp, t2, 11
                  lui          s11, 220486
                  nop
                  bge          s4, s6, sub_4_10_0_t #branch for loop 0
                  slti         gp, s0, -444
                  addi         s3, zero, -1 #init loop 1 counter
                  slt          s10, t4, s5
                  addi         s0, zero, -19 #init loop 1 limit
sub_4_15_1_t:     sltiu        t2, s7, 1952
                  addi         s3, s3, -9 #update loop 1 counter
                  addi         t6, zero, 2 #init loop 0 counter
                  addi         a5, zero, -19 #init loop 0 limit
                  sra          t4, t4, t0
sub_4_15_0_t:     or           s10, s8, a5
                  addi         t6, t6, -7 #update loop 0 counter
                  bne          t6, a5, sub_4_15_0_t #branch for loop 0
                  beq          s3, s0, sub_4_15_1_t #branch for loop 1
                  addi         a7, t6, -502
                  addi         t2, zero, 9 #init loop 1 counter
                  addi         s9, zero, 9 #init loop 1 limit
                  sra          s11, t6, a3
                  sltu         tp, a1, a7
sub_4_13_1_t:     nop
                  sll          t0, s11, s1
                  and          t1, t2, t0
                  addi         t2, t2, -7 #update loop 1 counter
                  sll          a6, s9, s0
                  and          t5, a2, a3
                  ori          a2, a4, -1082
                  ori          t1, s7, -1313
                  xor          s10, s7, a1
                  addi         s6, zero, 9 #init loop 0 counter
                  and          s7, sp, ra
                  addi         t6, zero, 8 #init loop 0 limit
                  auipc        sp, 322954
                  addi         tp, s2, 927
sub_4_13_0_t:     slti         a5, t4, -157
                  addi         s6, s6, -4 #update loop 0 counter
                  slt          s1, a6, s2
                  and          zero, a4, tp
                  bgeu         s6, t6, sub_4_13_0_t #branch for loop 0
                  sll          a4, s5, a0
                  bgeu         t2, s9, sub_4_13_1_t #branch for loop 1
                  slt          a1, a3, t1
                  addi         s2, zero, -6 #init loop 0 counter
                  slt          s1, s2, t3
                  xor          a5, s4, s10
                  xor          gp, a4, s3
                  srl          ra, a5, t3
                  addi         s7, zero, 10 #init loop 0 limit
                  addi         gp, t6, 1118
                  sra          a7, s3, t0
sub_4_21_0_t:     sub          t4, s9, s4
                  sll          t0, t3, zero
                  auipc        sp, 974682
                  addi         s2, s2, 2 #update loop 0 counter
                  add          t5, s4, gp
                  sltu         s11, t4, gp
                  lui          t5, 700750
                  andi         a4, a4, -1953
                  auipc        gp, 583686
                  beq          s2, s7, sub_4_21_0_t #branch for loop 0
                  slti         sp, a1, -1055
                  addi         s3, zero, -2 #init loop 1 counter
                  addi         s1, zero, 13 #init loop 1 limit
sub_4_9_1_t:      slti         s7, zero, -1389
                  addi         s3, s3, 1 #update loop 1 counter
                  nop
                  addi         t2, zero, 6 #init loop 0 counter
                  addi         s6, zero, 18 #init loop 0 limit
sub_4_9_0_t:      ori          s4, t0, 601
                  addi         t2, t2, 5 #update loop 0 counter
                  blt          t2, s6, sub_4_9_0_t #branch for loop 0
                  bltu         s3, s1, sub_4_9_1_t #branch for loop 1
                  srl          t3, a7, a1
                  addi         tp, zero, 7 #init loop 1 counter
                  xor          t1, t3, s11
                  srli         ra, s9, 21
                  sltu         t0, s11, s9
                  addi         s1, zero, -5 #init loop 1 limit
                  ori          t2, sp, 1446
                  slt          t3, a1, tp
sub_4_6_1_t:      add          t0, t0, sp
                  or           s3, a6, s0
                  xor          t1, s3, t2
                  srai         s8, s0, 9
                  addi         tp, tp, -6 #update loop 1 counter
                  sra          a2, s5, s8
                  addi         t6, zero, 8 #init loop 0 counter
                  nop
                  sra          gp, s7, sp
                  addi         s7, zero, 8 #init loop 0 limit
sub_4_6_0_t:      sltu         gp, s11, s7
                  addi         t6, t6, -7 #update loop 0 counter
                  srli         s0, zero, 24
                  ori          s11, a0, 2018
                  add          a7, tp, s2
                  bgeu         t6, s7, sub_4_6_0_t #branch for loop 0
                  add          zero, sp, s2
                  ori          t1, a7, 163
                  sltiu        a7, s2, -1307
                  add          s3, t2, s8
                  beq          tp, s1, sub_4_6_1_t #branch for loop 1
                  add          s8, s6, a6
                  addi         sp, zero, 5 #init loop 1 counter
                  addi         t3, zero, 11 #init loop 1 limit
                  xor          tp, a1, tp
sub_4_3_1_t:      xori         s6, a0, 1077
                  addi         sp, sp, 3 #update loop 1 counter
                  addi         a4, zero, -9 #init loop 0 counter
                  addi         s0, s7, 560
                  addi         s4, zero, -14 #init loop 0 limit
sub_4_3_0_t:      lui          a2, 1010452
                  addi         a4, a4, -2 #update loop 0 counter
                  bge          a4, s4, sub_4_3_0_t #branch for loop 0
                  bne          sp, t3, sub_4_3_1_t #branch for loop 1
                  sra          s10, s5, t2
                  addi         s0, zero, 8 #init loop 1 counter
                  addi         s6, zero, 8 #init loop 1 limit
sub_4_2_1_t:      sub          t1, a0, t6
                  addi         s0, s0, -3 #update loop 1 counter
                  addi         s8, zero, 9 #init loop 0 counter
                  addi         t6, zero, 7 #init loop 0 limit
sub_4_2_0_t:      andi         zero, s3, 2008
                  addi         s8, s8, -2 #update loop 0 counter
                  bgeu         s8, t6, sub_4_2_0_t #branch for loop 0
                  bgeu         s0, s6, sub_4_2_1_t #branch for loop 1
                  slli         sp, t4, 27
                  addi         s4, zero, 3 #init loop 0 counter
                  slli         t0, s3, 23
                  sltu         t0, t2, s2
                  nop
                  addi         a1, zero, 20 #init loop 0 limit
                  andi         t5, a2, -843
                  sltiu        t0, s5, 1171
sub_4_19_0_t:     add          t3, tp, sp
                  slti         zero, s3, 967
                  add          zero, t5, a4
                  addi         s4, s4, 6 #update loop 0 counter
                  sltiu        ra, a0, 1515
                  slti         sp, t4, -444
                  slt          s0, ra, gp
                  blt          s4, a1, sub_4_19_0_t #branch for loop 0
                  sltu         t6, s11, t2
                  addi         s7, zero, 9 #init loop 0 counter
                  srai         a7, gp, 10
                  addi         t5, zero, 10 #init loop 0 limit
                  sltu         a4, t5, a1
sub_4_11_0_t:     sub          t4, a1, t6
                  slli         ra, a0, 6
                  srli         t3, t5, 31
                  addi         s7, s7, 4 #update loop 0 counter
                  bltu         s7, t5, sub_4_11_0_t #branch for loop 0
                  sltiu        s6, s11, -984
                  addi         s6, zero, -1 #init loop 1 counter
                  andi         t4, s11, 840
                  addi         s9, zero, 15 #init loop 1 limit
                  sub          s1, zero, s10
                  slt          tp, s6, a7
sub_4_23_1_t:     slti         t0, s10, 583
                  or           t4, t5, s1
                  addi         s6, s6, 10 #update loop 1 counter
                  sll          s1, s10, s3
                  addi         a1, zero, 6 #init loop 0 counter
                  addi         gp, zero, 6 #init loop 0 limit
                  srli         s4, ra, 14
sub_4_23_0_t:     auipc        t0, 422688
                  addi         a1, a1, -4 #update loop 0 counter
                  sltiu        t0, sp, -1472
                  bgeu         a1, gp, sub_4_23_0_t #branch for loop 0
                  lui          s1, 350190
                  blt          s6, s9, sub_4_23_1_t #branch for loop 1
                  add          s0, t0, s11
                  addi         t3, zero, 8 #init loop 1 counter
                  sra          a5, s9, t2
                  srl          s1, a2, t1
                  slli         s3, s6, 20
                  slt          t2, s3, s7
                  slli         s6, a7, 16
                  auipc        s8, 144102
                  addi         a1, zero, 17 #init loop 1 limit
sub_4_7_1_t:      sltu         a5, s2, s8
                  addi         t3, t3, 3 #update loop 1 counter
                  addi         tp, zero, 2 #init loop 0 counter
                  ori          s9, s11, 700
                  xori         a6, s10, -990
                  srl          s8, s5, a0
                  addi         a7, zero, -12 #init loop 0 limit
sub_4_7_0_t:      addi         s11, a4, -604
                  addi         s7, gp, -1703
                  addi         tp, tp, -7 #update loop 0 counter
                  beq          tp, a7, sub_4_7_0_t #branch for loop 0
                  srai         t2, ra, 24
                  xor          t0, s3, s2
                  bne          t3, a1, sub_4_7_1_t #branch for loop 1
                  or           s9, s5, s10
                  addi         s10, zero, -10 #init loop 0 counter
                  lui          t3, 930432
                  andi         s0, t0, -731
                  addi         tp, zero, -18 #init loop 0 limit
sub_4_8_0_t:      or           a1, t5, s7
                  sra          a4, s10, s3
                  addi         s10, s10, -4 #update loop 0 counter
                  beq          s10, tp, sub_4_8_0_t #branch for loop 0
                  and          t3, t6, a5
                  addi         a7, zero, 2 #init loop 1 counter
                  auipc        s11, 175225
                  xor          a2, s0, a0
                  addi         tp, zero, 2 #init loop 1 limit
                  sltiu        s9, s4, 1417
                  nop
                  sub          t3, t6, t1
sub_4_16_1_t:     xori         a4, s11, 472
                  addi         a7, a7, -1 #update loop 1 counter
                  add          t2, a4, t5
                  addi         a5, zero, 6 #init loop 0 counter
                  sll          s7, s8, s3
                  addi         s0, s1, -199
                  sub          t0, a5, ra
                  addi         s10, zero, 19 #init loop 0 limit
                  sltiu        s9, s11, 805
sub_4_16_0_t:     lui          s9, 548499
                  addi         a5, a5, 7 #update loop 0 counter
                  srai         s11, s7, 3
                  bltu         a5, s10, sub_4_16_0_t #branch for loop 0
                  xori         s3, t0, 656
                  addi         ra, a3, 1747
                  sub          zero, s8, sp
                  bgeu         a7, tp, sub_4_16_1_t #branch for loop 1
                  slt          t5, ra, sp
                  srl          s0, t4, s6
                  blt          sp, s4, 19f
                  andi         zero, s7, -1950
                  sra          s0, sp, s0
                  ori          a2, s5, -1677
                  and          t3, t6, a6
                  bgeu         s9, s10, 19f
                  slli         s11, a5, 31
                  or           t6, s10, s11
                  srl          sp, t3, sp
                  andi         s9, tp, 1356
                  auipc        s0, 673131
                  ori          s9, s0, 448
                  sub          t2, s5, s6
                  srl          tp, t6, s3
                  auipc        s6, 386868
                  and          a1, a0, t4
                  xori         t5, s6, 1735
                  ori          s10, s11, 670
19:               srai         s4, s11, 10
                  lui          a1, 445631
                  addi         gp, s9, -1092
                  bgeu         a4, s1, 27f
                  xor          t0, a4, gp
                  srai         t3, tp, 4
                  bne          s10, tp, 40f
                  auipc        a4, 826394
27:               blt          t4, a2, 44f
                  and          sp, t0, a3
                  sltu         s9, s0, a6
                  sltiu        t1, t0, 406
                  and          a1, ra, t5
                  sub          s2, s10, t0
                  bge          s6, s5, 37f
                  slti         t6, gp, 664
                  bgeu         t1, s1, 39f
                  srai         gp, a5, 11
37:               lui          zero, 227266
                  and          s1, t4, s2
39:               addi         a6, gp, 1822
40:               bltu         a6, a3, 53f
                  sltu         t0, a6, a6
                  blt          a4, s7, 57f
                  lui          s7, 961564
44:               slti         t3, s1, 209
                  sltiu        tp, t2, 765
                  sll          zero, sp, t5
                  blt          s8, s2, 64f
                  bge          s1, sp, 49f
49:               bgeu         tp, s6, 52f
                  slt          a7, gp, tp
                  and          s3, t5, s1
52:               sltu         s2, t4, s6
53:               auipc        a4, 799933
                  ori          t5, t3, -1792
                  add          t5, s2, t4
                  srli         a7, a7, 16
57:               addi         t5, s9, 283
                  srl          t0, s10, s11
                  add          s10, a1, sp
                  srai         a6, t3, 11
                  bge          s11, t4, 72f
                  addi         s1, a0, -672
                  andi         zero, tp, -1986
64:               blt          ra, s11, 66f
                  slt          a7, s9, a4
66:               xori         zero, s5, -1661
                  xor          t0, a5, s10
                  sltiu        s8, s8, 388
                  addi         s0, s0, -1658
                  sltiu        a4, a6, 1108
                  bne          s0, s8, 72f
72:               sll          s4, t0, zero
                  bgeu         a2, s10, 89f
                  andi         t2, t1, 208
                  addi         s1, a5, 1
                  sra          s8, s4, gp
                  srl          a5, s8, s4
                  bgeu         t1, zero, 91f
                  xor          t3, a1, s6
                  nop
                  blt          a4, s9, 86f
                  addi         s9, zero, -169
                  slti         t2, t4, -666
                  addi         a2, s2, 8
                  bltu         a1, s9, 96f
86:               bltu         a3, s3, 89f
                  sra          t2, t2, s7
                  nop
89:               srli         s1, a1, 2
                  sub          tp, a4, s10
91:               sub          s7, gp, t3
                  nop
                  srl          sp, a7, s11
                  slli         t3, s9, 16
                  ori          t6, s1, -658
96:               slti         t2, s11, -256
                  slt          s6, s0, sp
                  sltiu        s2, a3, -1447
                  bltu         t2, t1, 119f
                  auipc        s8, 59526
                  srli         a2, t1, 18
                  beq          a3, s4, 109f
                  and          t0, tp, gp
                  sub          s3, s8, s2
                  bge          zero, s7, 124f
                  sll          s1, s8, t5
                  xor          t2, sp, t3
                  srl          s3, sp, a6
109:              beq          s0, a4, 120f
                  srai         tp, t5, 18
                  slli         s8, s6, 2
                  sltiu        a2, t1, 476
                  beq          t3, s6, 124f
                  and          zero, zero, a3
                  andi         s3, s1, 161
                  bgeu         t6, ra, 119f
                  srai         t3, gp, 17
                  srl          a1, tp, s11
119:              srai         ra, sp, 5
120:              and          a2, s6, s3
                  srai         t6, zero, 14
                  blt          a2, t4, 125f
                  xor          ra, s3, t5
124:              xori         s4, tp, 1477
125:              slt          s6, a3, sp
                  sltiu        t3, s2, 331
                  add          s2, t3, a3
                  sra          s7, t3, a1
                  ori          ra, zero, 670
                  sra          s10, s2, a5
                  sll          s6, t0, a3
                  sub          s2, s9, t2
                  ori          s1, s5, 1962
                  and          s2, a4, t0
                  sub          s8, s11, t6
                  sra          t1, s1, s2
                  andi         a6, a0, -1914
                  bge          zero, a3, 151f
                  srl          a2, a0, s4
                  auipc        s11, 585285
                  bge          a7, t4, 155f
                  sltiu        a5, t3, -1797
                  slli         s9, a6, 7
                  xor          s0, zero, gp
                  bgeu         s1, t2, 158f
                  or           a2, t5, s10
                  srl          t0, a7, s5
                  andi         sp, t1, -1868
                  sll          s2, a1, sp
                  bne          tp, gp, 163f
151:              srai         t1, s3, 6
                  lui          tp, 148020
                  xor          s11, t2, a7
                  andi         a5, a6, 210
155:              addi         a4, t5, -1014
                  sll          a1, s3, a2
                  srl          a2, zero, t1
158:              auipc        t5, 619209
                  bgeu         s4, s5, 174f
                  and          a4, a1, a2
                  blt          tp, t4, 176f
                  sll          s2, s2, a4
163:              sltiu        s2, a6, 1079
                  auipc        t3, 800612
                  auipc        gp, 1009602
                  sra          t6, s1, s9
                  andi         s4, s1, -1892
                  add          t6, s3, t6
                  slt          a4, s10, a3
                  slti         s7, t0, -1172
                  lui          t5, 305520
                  slt          a1, t5, t0
                  slt          s9, s0, t1
174:              srai         s8, tp, 13
                  sll          zero, s11, s4
176:              slt          tp, s11, s7
                  auipc        s11, 1032613
                  srli         s6, s6, 31
                  addi         a1, s7, -1380
                  blt          s10, s10, 184f
                  add          s9, a2, zero
                  beq          s2, a4, 184f
                  sltu         s4, a3, a3
184:              sltu         a4, ra, s0
                  xor          s9, s9, s7
                  bge          t1, s8, 191f
                  sll          tp, t0, a0
                  sra          a6, ra, s8
                  lui          t4, 312229
                  and          t3, a4, s6
191:              nop
                  srl          s3, s0, a4
                  beq          tp, t2, 210f
                  add          t4, s8, a3
                  andi         s7, s10, 1004
                  lui          t3, 901349
                  slt          s0, t3, s9
                  sll          s2, s2, a3
                  sub          s9, t1, a5
                  nop
                  srai         a1, a0, 4
                  ori          s9, tp, -911
                  sll          zero, s4, t4
                  blt          s2, a3, 207f
                  ori          t3, a6, 1772
                  bge          a5, s1, 209f
207:              slli         a7, t4, 15
                  and          ra, t0, s10
209:              slti         s8, s10, 1093
210:              sra          t0, s7, s8
                  ori          gp, s11, 597
                  slli         s11, s10, 25
                  beq          s3, s1, 229f
                  sra          s11, s7, s0
                  sltiu        a4, gp, -1270
                  slt          s11, t0, s2
                  or           a6, tp, ra
                  andi         s10, gp, -794
                  xori         a1, s8, -36
                  or           a2, s11, a4
                  srli         s1, s9, 22
                  bge          a3, gp, 223f
223:              bltu         a2, t5, 242f
                  auipc        gp, 48468
                  blt          a4, a2, 236f
                  bgeu         s4, ra, 230f
                  srai         t2, s2, 28
                  sll          t2, s8, s9
229:              xori         gp, s6, 1027
230:              slli         s8, s9, 16
                  and          t4, a3, tp
                  sub          s2, a4, a2
                  ori          t5, a4, 176
                  andi         tp, a0, -191
                  addi         s4, t6, -869
236:              addi         s7, s6, -1921
                  slli         s7, s6, 21
                  add          a1, a5, tp
                  slt          s8, s2, s5
                  bltu         s4, t6, 254f
                  bgeu         a3, s5, 254f
242:              srl          tp, s8, a1
                  bgeu         a6, s2, 250f
                  sra          t5, s1, t6
                  and          a4, zero, t1
                  sub          a7, t0, zero
                  sltu         s2, sp, a5
                  or           a4, t3, s11
                  ori          s11, s2, -1746
250:              blt          t6, t4, 261f
                  bgeu         a0, s1, 264f
                  xori         s11, a5, 713
                  srli         s1, s3, 20
254:              auipc        a4, 854863
                  xori         ra, t3, -501
                  nop
                  xor          s8, t5, s6
                  sub          t4, a4, s2
                  bgeu         gp, t0, 277f
                  auipc        s3, 775513
261:              bgeu         s7, t4, 274f
                  addi         a6, zero, 6 #init loop 1 counter
                  add          ra, s7, s3
                  xori         ra, t3, 421
                  or           s4, s7, a2
                  slti         t3, s2, 536
                  srai         t5, s3, 14
                  slt          s3, zero, s10
                  addi         s11, zero, 4 #init loop 1 limit
                  sub          ra, zero, s0
                  slti         a7, t6, -14
sub_4_20_1_t:     add          ra, gp, s4
                  ori          s7, ra, -390
                  addi         a6, a6, -2 #update loop 1 counter
                  and          a4, s10, t1
                  or           gp, a3, t2
                  sltiu        t2, gp, -1187
                  addi         a2, zero, -10 #init loop 0 counter
                  or           a7, a1, gp
                  srai         s7, zero, 8
                  addi         s9, zero, -18 #init loop 0 limit
                  lui          s1, 596393
                  or           t0, t2, t1
sub_4_20_0_t:     lui          t0, 432765
                  sra          a4, s2, s3
                  addi         a2, a2, -6 #update loop 0 counter
                  sub          t3, a2, s5
                  bge          a2, s9, sub_4_20_0_t #branch for loop 0
                  ori          t5, s1, -491
                  bgeu         a6, s11, sub_4_20_1_t #branch for loop 1
                  srl          t6, s8, s8
                  lui          a5, 773670
                  sra          zero, a0, gp
264:              sltiu        s1, a4, -1264
                  slt          s8, s4, a5
                  slli         a1, a7, 31
                  bge          a4, t5, 278f
                  bne          s10, t0, 269f
269:              sll          t4, t3, s6
                  sra          s4, s9, t6
                  andi         a5, s9, -21
                  or           tp, a3, t2
                  sra          s2, s3, s1
274:              sll          s10, t5, t2
                  srl          ra, s0, t6
                  slt          t0, a7, t2
277:              bne          t4, s4, 280f
278:              add          s6, gp, t3
                  and          a4, t5, s5
280:              sll          t1, t6, s4
                  sltiu        a7, s3, -466
                  sltu         t6, s3, s11
                  slli         gp, s4, 4
                  ori          s1, t5, 327
                  blt          ra, t4, 296f
                  sra          s4, s10, gp
                  lui          s4, 819624
                  ori          t2, gp, 1743
                  bge          t6, a7, 309f
                  xor          a5, s7, a4
                  sll          gp, tp, a6
                  bgeu         t3, a1, 309f
                  xor          t2, s4, gp
                  and          sp, gp, t2
                  and          s11, a2, s7
296:              lui          a4, 431942
                  slt          t3, s2, t4
                  auipc        t3, 343791
                  add          s10, a7, a2
                  auipc        s0, 898115
                  sltiu        a7, a1, -378
                  bgeu         s8, s9, 305f
                  srl          s0, s5, a6
                  bgeu         a5, a7, 317f
305:              lui          t0, 707806
                  slli         t6, s6, 30
                  slli         t4, t1, 3
                  lui          a5, 152098
309:              srli         s6, s8, 20
                  slt          a6, s10, t1
                  sub          s0, t0, t0
                  nop
                  xori         ra, t1, 20
                  auipc        a2, 618758
                  sltiu        a6, t3, 1612
                  blt          a2, a7, 321f
317:              nop
                  andi         t4, t6, 614
                  addi         zero, a5, -114
                  bltu         a5, t1, 322f
321:              sra          s6, s9, a1
322:              sll          zero, a5, a5
                  srli         t5, a2, 29
                  blt          s1, zero, 337f
                  srli         s2, a5, 28
                  or           sp, s5, sp
                  sll          s4, a3, s6
                  and          gp, t1, tp
                  xor          ra, sp, t6
                  srli         a7, a7, 16
                  ori          t2, s10, -508
                  and          a6, s7, gp
                  addi         gp, s10, -975
                  sltiu        s2, s11, -1035
                  ori          a4, a6, 991
                  slli         s9, zero, 2
337:              sltiu        s0, tp, -300
                  lui          ra, 276303
                  auipc        t2, 816239
                  sll          t1, t5, t1
                  sltiu        t4, t6, -50
                  or           zero, s8, gp
                  and          t4, a2, a3
                  beq          s2, a5, 347f
                  sltiu        tp, s4, 422
                  srai         sp, s2, 14
347:              andi         sp, a1, 467
                  slt          a1, sp, a4
                  slt          t5, tp, zero
                  bgeu         s1, a0, 351f
351:              sub          sp, s2, a4
                  bge          sp, t2, 355f
                  srl          a4, s1, t5
                  srl          t5, s9, a0
355:              bge          a7, t5, 366f
                  andi         sp, gp, -100
                  ori          ra, zero, 257
                  bltu         s9, s11, 361f
                  srl          s7, t6, tp
                  nop
361:              add          gp, a3, a7
                  slti         s7, a1, -1045
                  slti         s7, a6, -369
                  nop
                  slli         s2, s2, 11
366:              bne          ra, a1, 380f
                  slt          zero, t0, s4
                  nop
                  sll          zero, gp, a4
                  addi         t6, zero, 10 #init loop 0 counter
                  lui          s9, 480718
                  addi         s10, zero, 5 #init loop 0 limit
sub_4_14_0_t:     auipc        zero, 830600
                  and          tp, gp, ra
                  addi         t6, t6, -4 #update loop 0 counter
                  srai         ra, s5, 19
                  bgeu         t6, s10, sub_4_14_0_t #branch for loop 0
                  auipc        a6, 706166
                  auipc        t5, 230032
                  bne          s6, s2, 390f
                  sll          tp, s1, s0
                  bne          s10, t1, 386f
                  slti         a5, s11, 258
                  sltiu        s0, s10, 134
                  slt          s3, a6, a7
                  srai         tp, s10, 19
                  sll          t5, t5, s2
                  bge          s4, a4, 386f
380:              srl          a1, s3, t2
                  ori          s0, s10, -1649
                  blt          s6, t3, 398f
                  xori         s0, s10, -686
                  andi         t4, tp, 1289
                  slt          s4, s8, a3
386:              andi         gp, s1, 1717
                  srli         s6, a4, 30
                  slti         s3, a1, -807
                  blt          sp, a6, 400f
390:              sltu         s11, a4, s4
                  xor          a6, s8, s5
                  bge          zero, s10, 410f
                  nop
                  nop
                  xor          t0, t5, s8
                  sub          tp, tp, a1
                  bge          a1, zero, 412f
398:              bge          a6, t5, 415f
                  slti         t0, s3, -1434
400:              sltu         s4, t1, s5
                  beq          s3, a2, 404f
                  slt          s1, s9, s11
                  xor          s0, a3, gp
404:              beq          t4, t5, 421f
                  ori          t0, t3, -1214
                  slt          s4, ra, t5
                  srl          s10, a3, t4
                  srli         t4, s3, 20
                  nop
410:              lui          gp, 886751
                  slli         t4, s6, 2
412:              nop
                  sltiu        s7, s11, 1483
                  slt          t5, t2, s3
415:              bge          ra, t4, 435f
                  auipc        t1, 1038946
                  slli         t1, t2, 24
                  xor          tp, tp, a3
                  auipc        a1, 1020418
                  addi         t5, s7, -1224
421:              sra          a1, s6, s5
                  blt          s0, a1, 426f
                  lui          ra, 776480
                  beq          t6, s10, 435f
                  nop
426:              sltu         t0, s3, t5
                  sra          ra, t4, t1
                  srl          a5, a0, s2
                  sub          t4, a6, t2
                  sltiu        s0, s7, -422
                  lui          a7, 519397
                  blt          t1, s5, 436f
                  nop
                  beq          s5, tp, 439f
435:              sra          a5, t2, t3
436:              andi         s4, s9, 1868
                  bne          a0, s2, 452f
                  and          zero, s10, s11
439:              slli         s3, a1, 11
                  sll          t0, s11, a5
                  bgeu         s11, sp, 454f
                  slt          s0, t2, s8
                  slli         t2, s4, 26
                  sltiu        a2, t3, -444
                  add          a5, s7, s7
                  sub          s4, s9, s7
                  xor          s1, a6, s11
                  nop
                  sltu         a6, t1, a7
                  xor          a5, zero, s6
                  ori          gp, s3, -211
452:              srl          a4, s10, s1
                  nop
454:              bgeu         a1, a0, 465f
                  slt          s6, s4, t2
                  or           t1, a1, s11
                  bge          t6, s1, 458f
458:              and          s2, s4, a6
                  beq          a2, a5, 472f
                  ori          t6, t3, -1693
                  ori          a4, tp, 1243
                  add          s8, a2, t4
                  blt          tp, s8, 476f
                  xori         t4, a3, -1529
465:              slli         t5, ra, 21
                  sra          a7, a0, s1
                  bne          a0, t2, 472f
                  bne          a4, s2, 482f
                  add          s9, t5, s3
                  srai         t4, t3, 30
                  srai         t1, zero, 27
472:              sll          ra, s3, t3
                  xor          sp, t2, a3
                  sra          s2, t4, t5
                  or           s3, gp, s9
                  slt          s8, s9, a0
                  srl          s9, a7, t0
                  lui          sp, 289383
                  nop
                  xor          s9, s8, a2
sub_4_j6:         jal          a7, sub_5 #jump sub_4 -> sub_5
                  slt          tp, a3, s8
476:              bge          a2, tp, 493f
                  blt          zero, t6, 480f
                  slt          s11, t1, a0
                  and          s6, s8, tp
480:              nop
                  xori         s0, a0, -41
482:              srai         a5, s11, 28
                  or           t0, t5, a5
                  srl          zero, tp, a4
                  srai         t3, sp, 23
                  xor          s8, s4, a3
                  andi         s10, tp, 406
                  sra          a6, s9, a5
                  add          s7, s8, s3
                  srai         s10, s1, 26
                  bgeu         a1, a3, 504f
                  sltiu        s8, s8, 970
493:              sll          t3, t5, s10
                  beq          s3, s8, 496f
                  auipc        s0, 905700
496:              slli         s4, s9, 14
                  srai         a7, a0, 26
                  slt          s9, s10, t0
                  sltu         tp, ra, t2
                  xor          t6, t3, s9
                  auipc        t4, 210885
                  bgeu         s0, sp, 513f
                  blt          t4, s1, 516f
504:              and          sp, s0, s7
                  beq          s10, s4, 506f
506:              add          t5, a5, a5
                  bgeu         s7, a5, 512f
                  or           t5, a4, s10
                  slt          s10, s8, s9
                  slli         s3, t0, 1
                  andi         t2, t1, -1952
512:              sra          tp, s2, a6
513:              bgeu         t2, a6, 520f
                  srl          s4, a7, s8
                  slti         zero, t4, 381
516:              sub          a4, s9, ra
                  slt          zero, a3, t4
                  srl          a2, s2, t4
                  srli         s10, s2, 27
520:              sltu         t6, a5, a0
                  sll          t2, t0, t5
                  sub          tp, zero, s0
                  bge          s0, s6, 538f
                  srli         t5, t1, 10
                  sll          ra, a6, s9
                  beq          s8, t4, 545f
                  beq          a5, a7, 538f
                  andi         a6, s7, 778
                  sra          t1, s3, s9
                  slli         t6, a6, 1
                  andi         ra, s7, -604
                  andi         s7, t6, -1207
                  xori         a5, t6, 15
                  bne          s0, zero, 537f
                  slti         t0, s11, 2045
                  ori          t6, s1, -1101
537:              sltiu        a5, a5, 718
538:              srai         t1, s8, 3
                  or           s2, a0, s5
                  lui          ra, 262108
                  beq          s0, t6, 545f
                  slti         t1, gp, -1648
                  nop
                  srl          s7, s4, a7
545:              slli         zero, s8, 25
                  bne          a0, s11, 562f
                  sltiu        t1, s0, 44
                  xori         s9, s2, 1975
                  auipc        a5, 281027
                  bge          ra, t3, 570f
                  beq          t1, t3, 556f
                  addi         sp, gp, -925
                  slli         a2, s11, 28
                  or           t2, t5, s4
                  bgeu         a2, a4, 558f
556:              ori          ra, a0, 983
                  addi         s8, ra, 1010
558:              nop
                  or           ra, s7, a7
                  bgeu         ra, t6, 578f
                  slli         t5, sp, 13
562:              sra          a7, s5, t0
                  auipc        t0, 725072
                  srai         s9, a3, 15
                  add          s0, s6, a5
                  ori          t1, t2, -1551
                  slti         s6, s5, 104
                  auipc        gp, 533943
                  lui          s2, 452398
570:              bgeu         a7, sp, 571f
571:              slli         tp, s7, 27
                  xori         s9, t1, -1451
                  srai         a2, zero, 12
                  lui          a1, 36363
                  add          tp, s6, t2
                  srl          t6, s2, s8
                  xori         t3, t3, -1385
578:              sltiu        a7, s2, 1588
                  xori         s9, a6, -568
                  xori         a5, s8, 937
                  slli         a4, a3, 13
                  blt          a4, a0, 595f
                  auipc        sp, 789598
                  sltiu        t6, s6, 600
                  bgeu         a4, a5, 598f
                  sub          tp, t0, s9
                  beq          s3, gp, 591f
                  auipc        s11, 198792
                  sub          s2, a5, sp
                  slt          tp, s0, sp
591:              bne          t5, zero, 608f
                  addi         sp, a7, 1883
                  addi         zero, a3, -398
                  bge          a2, s6, 605f
595:              bge          s4, s1, 606f
                  or           t3, t3, s2
                  add          s7, sp, s6
598:              sra          s10, t6, t6
                  bgeu         zero, t4, 614f
                  auipc        a6, 69024
                  bne          s3, t2, 604f
                  addi         s1, s2, -481
                  srl          ra, s2, s2
604:              sub          tp, t3, s3
605:              and          a2, t0, s8
606:              sltu         zero, a2, t2
                  and          s2, ra, a6
608:              and          s6, a5, a2
                  sltiu        a2, a2, 805
                  srai         s10, s11, 3
                  ori          t0, gp, -715
                  ori          s1, a2, -1774
                  ori          a2, s10, -1072
614:              sll          ra, s9, t2
                  auipc        s3, 485659
                  sltiu        gp, a3, 90
                  nop
                  bltu         a6, a3, 631f
                  xor          a6, s5, tp
                  nop
                  add          zero, t6, t3
                  xor          t0, zero, gp
                  nop
                  add          t4, t0, a7
                  nop
                  slli         a7, t6, 24
                  slti         t3, t4, -832
                  bge          a6, t4, 633f
                  or           t6, t3, s6
                  xor          t4, s7, t3
631:              xori         tp, s0, 656
                  and          sp, a0, t3
633:              bge          s2, gp, 635f
                  beq          s0, a1, 641f
635:              bgeu         a4, s5, 654f
                  bgeu         s1, s6, 651f
                  auipc        s0, 531711
                  sll          s6, t4, t4
                  nop
                  add          a1, t1, s6
                  addi         ra, zero, 10 #init loop 1 counter
                  addi         sp, zero, -14 #init loop 1 limit
                  xor          t5, s10, t5
sub_4_4_1_t:      sltu         t1, ra, s11
                  addi         ra, ra, -8 #update loop 1 counter
                  addi         a7, zero, 1 #init loop 0 counter
                  ori          t1, ra, 403
                  slt          t0, t5, t2
                  addi         t2, zero, 5 #init loop 0 limit
                  slli         t4, s7, 18
sub_4_4_0_t:      sltiu        s10, s2, -280
                  addi         a7, a7, 2 #update loop 0 counter
                  sub          s10, a0, s10
                  blt          a7, t2, sub_4_4_0_t #branch for loop 0
                  slti         s4, a5, 172
                  nop
                  beq          ra, sp, sub_4_4_1_t #branch for loop 1
                  srli         a6, s1, 27
641:              srai         a5, a6, 29
                  bne          s1, a4, 643f
643:              andi         gp, t2, -114
                  sub          s7, t3, a3
                  ori          a6, s8, -1480
                  add          ra, t4, t5
                  auipc        s7, 915639
                  addi         a1, t3, 952
                  bltu         a7, a0, 669f
                  bltu         s2, s10, 655f
651:              ori          s0, s7, 1056
                  addi         a6, a0, -566
                  slt          s11, a3, s3
654:              bgeu         ra, s10, 667f
655:              xori         a5, sp, 994
                  sra          gp, a2, s9
                  addi         t0, t3, -1896
                  sltiu        gp, a2, -1657
                  bne          sp, a7, 663f
                  blt          t3, s6, 671f
                  add          t4, t4, s3
                  beq          s8, s10, 675f
663:              add          zero, sp, t6
                  beq          sp, s3, 675f
                  sub          s11, t2, s0
                  ori          ra, t2, 12
667:              bne          s2, s8, 680f
                  srl          a6, zero, a2
669:              srli         s6, tp, 5
                  addi         t6, tp, 2021
671:              slli         s0, s5, 6
                  nop
                  srl          s9, s2, a4
                  blt          s10, t0, 687f
675:              and          s8, gp, t4
                  slt          a4, sp, t4
                  sltiu        s8, t3, 856
                  srl          s7, t4, tp
                  ori          a1, sp, -1591
680:              or           gp, a1, s6
                  auipc        a1, 640445
                  xor          s1, s0, s10
                  slli         s4, ra, 18
                  or           a7, s4, a4
                  slti         a7, a4, -711
                  sub          s7, gp, s5
687:              sub          s1, s10, t2
                  sra          t5, s11, a0
                  ori          s8, s1, -1590
                  and          tp, a4, a0
                  slt          a6, t0, s11
                  slti         t2, a2, 1722
                  sub          s11, a5, a4
                  srl          t2, t2, ra
                  slli         t5, a7, 7
                  slti         a5, tp, -502
                  add          a5, t4, a0
                  srai         t1, s6, 8
                  and          tp, a1, s7
                  bge          a0, a5, 703f
                  srl          s8, gp, a5
                  srli         a6, t5, 12
703:              sll          s3, s5, a4
                  and          t1, s10, ra
                  xor          a7, a7, a1
                  bgeu         a3, t0, 723f
                  sll          s9, zero, zero
                  bgeu         s0, a3, 719f
                  beq          a5, a1, 724f
                  xor          s6, sp, s1
                  srli         t4, a0, 1
                  andi         s6, a6, -1448
                  nop
                  sltiu        a5, a4, -8
                  bltu         a0, t5, 732f
                  sltiu        s7, a6, 105
                  xori         s11, s9, -1262
                  and          s7, t6, a3
719:              bge          a0, a7, 722f
                  andi         s3, a1, 368
                  srl          a4, a6, t3
722:              lui          a5, 901087
723:              andi         gp, gp, -702
724:              ori          s11, s4, 1796
                  sub          a5, a1, a6
                  bge          tp, s11, 729f
                  bgeu         ra, s4, 740f
                  srli         s9, s8, 6
729:              bgeu         s9, a4, 732f
                  bne          t3, s8, 746f
                  sltiu        s11, s2, 800
732:              and          a1, s11, a4
                  sll          s3, s3, a2
                  slti         a7, t0, 1144
                  sra          s10, a2, s6
                  srai         t6, t6, 17
                  and          sp, tp, t2
                  slti         a6, a2, 696
                  xori         tp, s9, 85
740:              sll          s8, a3, t6
                  srli         s8, a5, 30
                  srl          a1, zero, t3
                  ori          s11, zero, 2010
                  slti         a6, a3, 258
                  srli         a5, gp, 16
746:              lui          t0, 169586
                  slt          a7, s1, sp
                  xori         t2, a5, -1149
                  srai         t0, s6, 18
                  nop
                  add          t5, t2, a4
                  bge          t0, t1, 770f
                  srai         s10, s2, 24
                  slt          t2, gp, a4
                  slli         s11, a4, 25
                  ori          a6, a1, -1570
                  beq          s2, t2, 768f
                  srli         sp, s4, 6
                  sll          a5, a3, s1
                  and          t3, gp, s0
                  bltu         s3, s5, 762f
762:              sltu         s7, t1, s0
                  slli         ra, t2, 28
                  srli         s11, a5, 29
                  srai         t3, ra, 13
                  auipc        t6, 884400
                  slti         t5, s9, -1788
768:              ori          t0, s8, -664
                  and          s3, a7, s11
770:              sltiu        s0, a5, 1060
                  sub          a4, a3, tp
                  sra          t6, gp, s3
                  beq          tp, s4, 787f
                  bne          ra, s10, 778f
                  bgeu         t3, t1, 786f
                  xori         s2, t2, -327
                  srli         a2, t2, 16
778:              xori         s4, t0, 781
                  xori         a4, a7, 507
                  bne          gp, a2, 793f
                  blt          a4, t4, 784f
                  addi         a2, s1, -998
                  lui          s3, 627057
784:              bge          t1, s3, 797f
                  xor          a4, a2, sp
786:              bge          gp, s4, 789f
787:              ori          sp, a6, 1083
                  slti         a6, a7, 1101
789:              sltu         s3, zero, s10
                  slti         t1, sp, -1419
                  sltu         t5, s4, t5
                  xor          t5, t0, s3
793:              srl          s1, a6, s0
                  auipc        s7, 1024408
                  lui          s0, 448724
                  srai         s4, s11, 5
797:              and          s6, s3, t3
                  nop
                  bgeu         s8, t2, 802f
                  bgeu         s0, s6, 817f
                  slt          s2, sp, t3
802:              bltu         s4, s0, 813f
                  slt          t3, gp, zero
                  bltu         t0, gp, 811f
                  auipc        sp, 497795
                  slli         a6, a7, 8
                  nop
                  srl          tp, a1, s5
                  lui          s1, 434522
                  lui          s4, 242464
811:              sra          s6, gp, a2
                  auipc        s7, 450255
813:              addi         a4, s1, 1901
                  slti         a1, s5, 1019
                  lui          t4, 735046
                  auipc        a4, 726811
817:              srl          gp, s2, tp
                  sub          sp, t2, a1
                  sltu         ra, s10, t1
                  and          a4, s9, a6
                  slli         s0, s7, 20
                  srli         t6, s4, 18
                  add          a7, s5, tp
                  bgeu         a5, a6, 825f
825:              sub          ra, a4, t6
                  bltu         a4, s3, 839f
                  srai         a4, sp, 19
                  add          gp, s0, t2
                  beq          s7, sp, 849f
                  lui          tp, 540441
                  blt          a6, a1, 835f
                  andi         a6, s1, -120
                  nop
                  andi         s10, s7, -490
835:              beq          gp, zero, 839f
                  lui          t2, 808846
                  bge          t0, tp, 851f
                  sltu         s2, s0, t1
839:              slli         tp, a0, 0
                  sra          a6, s2, a7
                  add          a5, s0, ra
                  sll          s6, s8, t1
                  sltu         a6, s8, sp
                  andi         s7, ra, 501
                  bgeu         ra, s3, 856f
                  sltu         s9, t4, sp
                  and          a4, t2, s7
                  bge          a5, s6, 861f
849:              and          s8, sp, gp
                  blt          t3, t0, 868f
851:              srli         s6, t0, 10
                  blt          t5, s10, 855f
                  blt          t0, t3, 869f
                  xori         s4, a3, 152
855:              or           t1, t6, t0
856:              xori         t6, s1, -1530
                  lui          ra, 626940
                  slli         s8, a5, 28
                  xori         s9, s10, -1518
                  srai         gp, s7, 26
861:              xor          t0, s3, s8
                  xori         s7, s3, -492
                  slti         t6, t5, 1597
                  bge          s2, a1, 879f
                  bltu         t3, t6, 880f
                  sltiu        s11, a5, -1029
                  slt          s3, a1, s10
868:              srl          t3, t0, gp
869:              add          zero, s2, a4
                  sll          s6, a2, tp
                  srl          t3, s0, a7
                  beq          gp, a6, 889f
                  bne          t3, ra, 886f
                  srai         s9, s4, 9
                  slti         t3, a7, 1213
                  bltu         tp, s7, 895f
                  slli         t1, a2, 31
                  or           a4, s8, zero
879:              sub          a6, s9, s1
880:              bne          s2, s9, 881f
881:              bgeu         a4, a2, 886f
                  sll          s11, a4, s2
                  xori         t2, s4, 1787
                  or           s1, a1, s10
                  xori         s7, s7, 547
886:              bne          t4, t3, 891f
                  sltu         a5, gp, s11
                  lui          a5, 381137
889:              slli         t3, s9, 8
                  and          a4, a2, t1
891:              sra          s7, t2, t6
                  lui          s1, 484407
                  sltiu        t1, s0, 1552
                  auipc        a5, 1046618
895:              sll          ra, s3, s10
                  or           s9, s1, s9
                  ori          s3, s6, -656
                  xori         a5, a3, 1129
                  blt          s2, a5, 910f
                  lui          s2, 826990
                  blt          a1, a1, 903f
                  lui          sp, 244604
903:              or           zero, s10, a7
                  and          s1, s11, t0
                  srai         s7, gp, 11
                  addi         a7, ra, -1271
                  bgeu         a5, s9, 918f
                  add          s0, t3, zero
                  and          t6, t6, t2
910:              nop
                  lui          s6, 671505
                  nop
                  sub          gp, s0, tp
                  xori         s4, s9, 1298
                  beq          a3, a0, 918f
                  srai         zero, a5, 11
                  slt          zero, s2, s4
918:              xor          s11, s3, gp
                  slti         tp, t6, 239
                  bne          zero, s10, 925f
                  slti         a2, s10, -781
                  ori          s8, t3, 1971
                  and          s4, s3, sp
                  slt          s2, a2, a5
                  addi         a6, zero, 9 #init loop 1 counter
                  sub          t3, s5, a5
                  addi         a4, zero, 8 #init loop 1 limit
sub_4_5_1_t:      auipc        t2, 64475
                  addi         a6, a6, -5 #update loop 1 counter
                  xor          a2, s6, t6
                  srl          s6, t4, t0
                  sra          s6, a7, zero
                  addi         t6, zero, 10 #init loop 0 counter
                  andi         t3, a3, 213
                  addi         gp, zero, 16 #init loop 0 limit
                  sltu         s11, s9, a4
sub_4_5_0_t:      slt          s9, t4, s0
                  xor          s0, t3, s2
                  andi         s10, s11, -1651
                  srl          s10, a7, a4
                  addi         t6, t6, 6 #update loop 0 counter
                  xor          s7, a7, t5
                  sra          sp, s11, tp
                  bne          t6, gp, sub_4_5_0_t #branch for loop 0
                  bgeu         a6, a4, sub_4_5_1_t #branch for loop 1
                  addi         t5, s3, 1111
925:              srli         s9, s1, 26
                  srli         ra, s11, 17
                  xori         t5, t3, 2031
                  slli         sp, zero, 5
                  sra          s7, t0, s6
                  lui          s2, 1036984
                  xor          s2, a3, t0
                  ori          s4, a7, -1990
                  srli         t6, s5, 1
                  lui          t6, 62994
                  beq          a3, gp, 942f
                  slt          s4, t1, a1
                  add          tp, sp, s4
                  add          t5, t2, t1
                  xori         s10, a3, -1511
                  andi         t4, s6, -887
                  bltu         t2, ra, 954f
942:              nop
                  add          t0, s10, a7
                  sltiu        a1, tp, 616
                  andi         t1, a3, -256
                  ori          s8, ra, -304
                  xori         s0, zero, -150
                  slti         s3, ra, 1784
                  xori         s0, t0, -1743
                  ori          s1, a7, 919
                  add          s4, a5, s9
                  xori         t5, t3, 1411
                  srl          s8, tp, t0
954:              blt          s0, s3, 957f
                  auipc        t5, 640475
                  bltu         a0, t1, 969f
957:              ori          t1, s0, -173
                  beq          s7, sp, 974f
                  nop
                  auipc        s3, 535020
                  or           s8, a0, a4
                  sll          ra, t2, s7
                  nop
                  andi         a1, a2, -1497
                  lui          a5, 442538
                  nop
                  bltu         a0, s3, 984f
                  sltiu        s0, a4, 732
969:              srli         s8, s8, 11
                  sub          a4, s10, ra
                  srai         zero, t2, 2
                  bgeu         a3, a7, 977f
                  bge          a6, s10, 992f
974:              bne          t4, zero, 978f
                  slli         s2, t1, 11
                  blt          t6, t1, 987f
977:              sub          s2, a2, gp
978:              xori         t2, a5, -1662
                  xori         s8, ra, 762
                  and          a7, s3, a0
                  ori          t1, s9, 971
                  slli         s11, sp, 9
                  auipc        tp, 4031
984:              sltu         s0, s8, s7
                  or           t3, a6, t2
                  sltiu        s11, t2, 306
987:              bltu         a5, a7, 988f
988:              beq          a4, a0, 991f
                  sra          a2, s11, a5
                  beq          t2, zero, 1004f
991:              and          s7, s3, a6
992:              add          s3, zero, a0
                  srl          a7, s7, s8
                  bge          a7, a2, 1007f
                  lui          a4, 236233
                  srli         s2, a4, 26
                  bgeu         s2, a1, 999f
                  beq          a5, t4, 1001f
999:              bne          s2, s2, 1012f
                  or           s6, a3, t4
1001:             bgeu         t4, t2, 1021f
                  or           a6, tp, s4
                  sltu         ra, s6, t1
1004:             sll          a6, s11, s9
                  bltu         tp, s2, 1016f
                  and          s6, t0, s8
1007:             srli         t4, a5, 17
                  and          s9, s8, t3
                  auipc        s4, 113364
                  and          s4, a5, t4
                  sltu         a5, a3, s3
1012:             bltu         s10, t2, 1030f
                  xori         t0, s6, 122
                  srai         s9, a3, 8
                  srli         gp, s7, 30
1016:             or           t5, a4, t6
                  andi         sp, s7, 484
                  xori         t5, s7, -617
                  ori          s11, a4, -414
                  andi         s0, s0, -1062
1021:             ori          gp, zero, 1455
                  lui          s0, 13423
                  srl          s2, t0, s2
                  add          t2, t2, a0
                  slt          t1, t0, a4
                  xor          s7, s2, a3
                  srl          a6, ra, t2
                  slli         s4, s8, 15
                  add          t0, sp, a1
1030:             srl          s10, s1, t0
                  slli         s10, t5, 7
                  nop
                  and          zero, s7, s0
                  beq          t0, a7, 1049f
                  slli         s10, ra, 7
                  sll          s0, s1, t3
                  andi         t3, s10, 861
                  srli         s1, t2, 28
                  slti         t0, zero, 1279
                  add          s3, t2, zero
                  sra          a6, s5, s6
                  auipc        sp, 586246
                  ori          t1, s11, -2021
                  slti         s8, s11, 1864
                  auipc        a5, 540516
                  andi         t2, s9, 1751
                  xori         sp, sp, 1190
                  slti         sp, ra, -1233
1049:             addi         t6, t4, -1727
                  sltu         s4, a7, a4
                  nop
                  slt          a2, t0, t5
                  bltu         s8, a5, 1054f
1054:             bge          t3, s1, 1071f
                  andi         s4, a0, 1818
                  ori          s3, s6, 986
                  slti         t1, s10, 1347
                  sltiu        s2, zero, 1466
                  nop
                  bne          ra, s3, 1064f
                  lui          s0, 54053
                  beq          s0, s10, 1075f
                  auipc        t1, 429514
1064:             srli         t6, a3, 11
                  sltu         t0, s11, sp
                  blt          a6, s11, 1081f
                  ori          t2, s3, 1835
                  blt          t1, a1, 1079f
                  addi         s0, tp, -446
                  bltu         t5, t6, 1081f
1071:             srai         t0, a2, 13
                  sra          a1, a7, t1
                  xori         ra, t4, 616
                  auipc        t0, 416494
1075:             auipc        s7, 964031
                  xor          t3, t1, s7
                  srl          gp, s5, a5
                  srai         s0, s0, 19
1079:             sra          tp, s11, s0
                  sll          a5, t2, a4
1081:             sltu         t4, s5, s0
                  sra          s9, s4, a7
                  slti         s8, s4, 16
                  addi         s0, a4, 807
                  xori         t0, t4, 2039
                  nop
                  sltiu        s1, t2, -677
                  bltu         a1, t2, 1093f
                  bne          s8, ra, 1102f
                  sll          a2, s3, s3
                  beq          a4, s9, 1094f
                  lui          t3, 463099
1093:             sltu         a7, a5, a4
1094:             nop
                  and          tp, a1, s7
                  sra          s3, a5, s6
                  blt          t6, s1, 1112f
                  andi         gp, zero, 293
                  sll          s1, a4, t6
                  sll          t4, s5, sp
                  or           t6, a2, zero
1102:             slt          t6, t4, s1
                  addi         s7, s8, 193
                  beq          s8, t1, 1115f
                  slti         s8, s0, -2033
                  slli         sp, a2, 21
                  bltu         tp, a0, 1122f
                  slt          t4, s5, s0
                  addi         s0, sp, -543
                  nop
                  sra          s0, s5, a0
1112:             blt          t5, gp, 1113f
1113:             slt          a2, a5, s0
                  bne          s4, s10, 1121f
1115:             sltu         a2, a7, gp
                  srli         t1, ra, 31
                  auipc        s1, 417613
                  sltiu        a7, t2, 1687
                  bltu         s3, t5, 1123f
                  sll          zero, s11, ra
1121:             sltiu        tp, s8, 538
1122:             srai         s8, s4, 22
1123:             bltu         s5, s2, 1139f
                  sll          s4, s9, a7
                  srli         s9, a2, 25
                  slli         a7, s10, 12
                  lui          s8, 445089
                  sltiu        tp, t5, 1645
                  sra          s3, s10, s7
                  bgeu         a0, s3, 1149f
                  sltiu        a6, tp, 623
                  xor          a5, a2, t2
                  nop
                  srl          a7, s7, s3
                  bltu         t1, t6, 1136f
1136:             slti         s11, a4, -1096
                  addi         tp, sp, 807
                  slli         t0, t4, 20
1139:             srai         a2, ra, 26
                  slli         s2, s4, 26
                  xori         s10, a7, -1828
                  sll          t5, s1, t5
                  sub          sp, s7, s4
                  slti         s10, t4, 1716
                  blt          t1, t2, 1158f
                  xori         t2, t6, 1320
                  or           s3, s7, s2
                  sub          a2, s5, s3
1149:             and          s4, s8, a6
                  sra          s1, a5, s2
                  auipc        s3, 426214
                  bge          s7, gp, 1154f
                  bne          t3, s0, 1166f
1154:             and          s0, ra, t2
                  beq          zero, sp, 1168f
                  srl          a2, tp, ra
                  slti         t2, t6, 1243
1158:             nop
                  xor          s1, a0, a1
                  or           t5, s9, a6
                  bge          s2, gp, 1174f
                  slt          s7, a5, s8
                  slti         s0, a7, -912
                  slt          s2, ra, a3
                  xori         a6, s0, 1257
1166:             or           t5, gp, t2
                  slli         tp, s5, 30
1168:             slt          s9, gp, a6
                  addi         t2, s11, 47
                  slli         gp, s11, 6
                  sltiu        t5, sp, 244
                  or           s4, s1, s8
                  bgeu         a5, gp, 1176f
1174:             beq          a2, gp, 1185f
                  sub          a2, s0, s1
1176:             xor          s8, a4, s7
                  lui          t2, 851987
                  sltiu        s1, s9, 1069
                  slli         s6, sp, 12
                  andi         a5, s8, -1199
                  auipc        s7, 713385
                  sub          s4, s3, s5
                  sub          s10, sp, zero
                  or           t5, t6, t3
1185:             xor          s0, s6, s11
                  auipc        s9, 236488
                  sub          s0, t5, t2
                  sltiu        sp, s9, 451
                  and          sp, s3, t1
                  bge          zero, s2, 1193f
                  add          t1, t0, t6
                  sltu         ra, s4, a0
1193:             blt          a3, a1, 1198f
                  auipc        a1, 654949
                  lui          a6, 222451
                  slt          s0, s5, s8
                  sll          t3, a3, a3
1198:             srl          zero, s11, a6
                  slli         t5, t5, 24
                  slli         a1, s11, 23
                  ori          s10, s11, 1927
                  srl          ra, s7, t0
                  srli         s8, gp, 20
                  xor          s0, t2, t6
                  sub          s8, t1, t2
                  lui          s2, 433154
                  lw           a7, 4(a0)
                  sra          s1, a4, s11
                  addi         a0, a0, 52
                  nop
1682:             addi x24, x17, 1
1682:             jalr x24, x24, 0
sub_3:            ori          s6, s7, 1451
                  and          a5, a3, s0
                  srli         a5, s5, 31
                  slt          gp, t5, s7
                  bge          s0, a1, sub_3_stack_p
                  slli         sp, zero, 26
                  srli         s0, t2, 19
sub_3_stack_p:    addi         a0, a0, -40
                  sw           a7, 4(a0)
                  nop
                  addi         s1, zero, 5 #init loop 1 counter
                  auipc        t1, 422778
                  lui          sp, 212990
                  addi         t2, zero, 20 #init loop 1 limit
                  and          s6, gp, s10
                  nop
sub_3_1_1_t:      lui          gp, 450790
                  nop
                  nop
                  addi         s1, s1, 3 #update loop 1 counter
                  nop
                  and          s8, tp, t6
                  addi         s4, zero, 0 #init loop 0 counter
                  andi         s6, t5, -1804
                  slti         a1, sp, 943
                  nop
                  slt          gp, zero, a2
                  slt          s11, ra, a0
                  addi         ra, zero, -10 #init loop 0 limit
sub_3_1_0_t:      xori         a1, s1, 154
                  addi         s4, s4, -10 #update loop 0 counter
                  andi         t6, t0, 1530
                  auipc        t0, 747515
                  xor          s8, s2, a3
                  sub          s0, s7, t3
                  beq          s4, ra, sub_3_1_0_t #branch for loop 0
                  or           s11, s7, t5
                  slli         tp, a6, 3
                  ori          s11, a6, -1243
                  bne          s1, t2, sub_3_1_1_t #branch for loop 1
                  sltiu        t3, t6, -1864
                  addi         t6, zero, 0 #init loop 1 counter
                  srli         t1, s7, 12
                  srai         a1, s9, 18
                  addi         t5, zero, -16 #init loop 1 limit
                  srl          sp, s11, s0
                  addi         t4, s4, 1338
sub_3_0_1_t:      nop
                  sub          a4, tp, zero
                  or           s2, t4, s7
                  addi         a6, s0, -1753
                  addi         t6, t6, -5 #update loop 1 counter
                  ori          gp, a0, 1459
                  addi         t3, zero, 8 #init loop 0 counter
                  addi         t2, zero, 17 #init loop 0 limit
                  sra          s0, a2, t2
                  srli         t0, s7, 9
                  ori          ra, t1, 1619
sub_3_0_0_t:      sltu         a1, t5, s3
                  sltu         s10, a0, t3
                  andi         t1, t3, -700
                  srl          t1, a1, t3
                  addi         t3, t3, 8 #update loop 0 counter
                  bltu         t3, t2, sub_3_0_0_t #branch for loop 0
                  and          s9, s1, a5
                  xor          a4, s2, t6
                  and          t4, s6, t1
                  bge          t6, t5, sub_3_0_1_t #branch for loop 1
                  slti         s8, t5, 383
                  addi         t5, zero, 5 #init loop 1 counter
                  or           s10, t6, s4
                  addi         t2, zero, 5 #init loop 1 limit
sub_3_2_1_t:      addi         a4, tp, 754
                  slli         a7, s5, 22
                  addi         t0, t3, 95
                  addi         t5, t5, -3 #update loop 1 counter
                  slti         s11, s4, 1977
                  addi         s4, zero, 1 #init loop 0 counter
                  addi         s9, zero, 10 #init loop 0 limit
                  auipc        tp, 498652
sub_3_2_0_t:      or           s3, zero, t4
                  sll          a2, s6, t5
                  addi         s4, s4, 1 #update loop 0 counter
                  sub          a5, s2, a6
                  bltu         s4, s9, sub_3_2_0_t #branch for loop 0
                  bgeu         t5, t2, sub_3_2_1_t #branch for loop 1
                  or           s6, t4, s3
                  addi         s7, zero, -9 #init loop 0 counter
                  sub          t4, s7, a3
                  addi         t1, zero, -14 #init loop 0 limit
                  srl          zero, t2, s9
                  sltiu        t5, s5, 58
sub_3_3_0_t:      and          a5, s1, s4
                  sub          t5, zero, gp
                  addi         s7, s7, -5 #update loop 0 counter
                  srl          a4, ra, s7
                  bne          s7, t1, sub_3_3_0_t #branch for loop 0
                  andi         t4, s1, 975
                  lui          t0, 1035947
                  nop
                  sub          s8, a4, s3
                  lui          s7, 552346
                  sll          s2, a1, gp
                  ori          s8, sp, 8
                  xor          t2, a4, s11
                  slt          a2, s5, s7
                  bne          t6, a3, 16f
                  sub          t3, s3, s8
                  bge          a4, a2, 19f
                  srai         s8, gp, 23
                  and          t4, s8, s9
                  slti         s6, s2, -1172
                  xor          a5, t0, s1
                  or           s7, gp, s2
16:               srli         a5, a6, 26
                  auipc        s11, 617964
                  bgeu         s10, a7, 25f
19:               xori         t0, ra, -146
                  sltu         zero, s2, s3
                  bgeu         t6, a3, 39f
                  bltu         s8, t2, 32f
                  andi         s6, t1, -1212
                  slti         zero, t0, 329
25:               bgeu         a3, s0, 42f
                  xori         zero, t4, -1427
                  beq          tp, t3, 34f
                  slti         s10, t3, 230
                  add          s4, a3, s8
                  slli         a6, t1, 30
                  srai         s0, a5, 14
32:               lui          s6, 597346
                  nop
34:               nop
                  srli         s9, a4, 29
                  addi         s6, a5, 381
                  slli         s6, s9, 1
                  srl          t2, s1, s7
39:               sll          a2, gp, t2
                  bge          s1, t0, 53f
                  bltu         s11, t1, 46f
42:               bge          a0, s0, 56f
                  bgeu         a4, a7, 53f
                  andi         a4, s5, 442
                  blt          s0, gp, 60f
46:               sltu         a1, s3, t5
                  sltiu        s0, t3, -425
                  sltu         t0, t2, s10
                  sltiu        a6, s7, 1059
                  srl          s11, t1, s3
                  bge          s7, a0, 56f
                  lui          t5, 438452
53:               addi         a1, a1, -1493
                  beq          s0, s11, 71f
                  beq          a1, t0, 66f
56:               slt          a7, t3, a4
                  slt          ra, s2, zero
                  bltu         a3, a0, 68f
                  slt          a4, s0, gp
60:               slt          a6, t6, s9
                  bge          s3, t1, 68f
                  addi         s4, a1, 317
                  lui          t6, 37399
                  or           t1, a1, gp
                  and          zero, t3, t1
66:               bne          s4, a3, 83f
                  and          s7, s10, a6
68:               add          ra, t4, a1
                  add          s8, s7, zero
                  bge          a5, sp, 71f
71:               auipc        t6, 502453
                  srli         s7, s9, 11
                  addi         t0, s0, 764
                  lui          s8, 220422
                  beq          zero, s8, 95f
                  lui          t4, 997269
                  lui          s3, 987500
                  blt          s7, s11, 80f
                  bne          t1, s5, 84f
80:               slt          t3, t1, a3
                  addi         s3, s10, 370
                  slt          s8, gp, s6
83:               xor          s10, s9, a3
84:               sra          s3, sp, gp
                  slli         a5, s7, 16
                  blt          s0, t0, 101f
                  srai         a4, s3, 6
                  srl          tp, a4, s7
                  addi         tp, s0, -1976
                  xor          a4, s6, t6
                  bltu         t3, s0, 94f
                  xori         sp, s8, 1525
                  bgeu         zero, ra, 99f
94:               blt          a1, s10, 98f
95:               bgeu         ra, zero, 100f
                  slt          s7, s11, t3
                  ori          s6, sp, 825
98:               slti         s10, t1, 970
99:               sub          s3, a4, a6
100:              ori          ra, s2, -296
101:              auipc        tp, 457314
                  sra          t1, a3, s6
                  andi         s6, s1, -303
                  sra          a4, sp, s11
                  slti         gp, a0, -778
                  srli         s6, s3, 18
                  slti         a1, t2, 598
                  xori         s6, t0, 2004
                  srl          s8, s4, a4
                  xori         a5, s0, 1891
                  srl          ra, s1, t5
                  lui          t0, 856080
                  addi         a1, gp, 66
                  bltu         a1, t6, 120f
                  slti         t4, s4, 1805
                  lui          t3, 367922
                  xori         s6, s1, -1557
                  bltu         a5, s9, 125f
                  slli         t1, t3, 5
120:              beq          ra, s7, 139f
                  srli         a6, gp, 22
                  or           a7, zero, s8
                  xori         ra, t2, -1446
                  andi         a4, a1, 997
125:              lui          t4, 588329
                  addi         s0, s5, -644
                  xori         s2, zero, 1671
                  blt          ra, a6, 142f
                  sra          t2, s9, a0
                  srl          s0, a6, s2
                  addi         a1, t2, -438
                  and          a5, t1, a4
                  slli         a1, a4, 19
                  ori          t0, t0, -1358
                  auipc        t1, 799370
                  sltu         s3, s10, zero
                  srai         tp, t4, 7
                  slt          t3, s1, s7
139:              slti         s11, a6, -1290
                  addi         tp, s4, 1356
                  srai         zero, s3, 5
142:              beq          sp, a5, 145f
                  bltu         a6, s6, 148f
                  xor          gp, a0, s2
145:              srli         s6, tp, 25
                  srai         t2, s9, 20
                  add          a5, a2, s11
148:              sltiu        t0, a1, -1289
                  lui          ra, 282499
                  sll          s2, a1, ra
                  sll          tp, s11, s1
                  and          t4, t2, s8
                  slli         s11, t1, 3
                  xor          a6, s7, s4
                  beq          tp, t4, 175f
                  bge          s10, s9, 161f
                  or           t2, sp, a2
                  bne          s6, gp, 168f
                  sltu         a1, s5, a2
                  xor          t4, a0, s4
161:              beq          a7, s10, 166f
                  bne          t0, a0, 175f
                  bltu         t6, s4, 180f
                  sltiu        a1, s10, 1406
                  addi         s7, t1, 1215
166:              slt          a1, s1, s1
                  lui          gp, 1026343
168:              andi         t2, t6, 907
                  add          s1, s8, s0
                  lui          gp, 652369
                  blt          s6, s7, 179f
                  slt          t3, a3, t3
                  slli         t0, a0, 15
                  andi         s10, s11, 1753
175:              slli         s0, s11, 15
                  srl          t3, s0, s1
                  bgeu         s6, sp, 195f
                  bgeu         t1, s4, 189f
179:              slt          a4, s4, a3
180:              or           a4, a1, s10
                  ori          s0, a1, 808
                  and          a4, t2, s8
                  bgeu         gp, s7, 190f
                  auipc        t4, 663591
                  nop
                  slti         s1, s1, 1455
                  auipc        t4, 873287
                  beq          s5, a6, 195f
189:              bne          s4, gp, 196f
190:              srli         s9, s5, 22
                  ori          s0, zero, -181
                  lui          s7, 571293
                  bge          a5, a7, 199f
                  auipc        s10, 222909
195:              andi         s9, sp, 882
196:              beq          tp, ra, 208f
                  addi         s9, a1, -1340
                  slli         s1, tp, 25
199:              and          s2, zero, t2
                  andi         sp, a5, -1809
                  bltu         s7, t6, 208f
                  bne          s4, s11, 206f
                  sltu         t0, t4, t6
                  srli         s4, a7, 29
                  sltiu        s2, t4, -1239
206:              bltu         s1, tp, 208f
                  bltu         sp, s6, 208f
208:              sltiu        gp, s9, -1523
                  lw           a7, 4(a0)
                  sltu         tp, s4, a0
                  addi         a0, a0, 40
                  srai         a2, t3, 29
                  add          t2, sp, a7
312:              addi x12, x17, 1
312:              jalr x12, x12, 0
sub_1:            addi         a0, a0, -56
                  slt          s4, a1, a4
                  sltiu        zero, zero, -1146
                  slt          t1, s5, ra
                  sw           a7, 4(a0)
                  slli         t5, s7, 7
                  addi         s3, zero, -2 #init loop 1 counter
                  addi         a1, zero, 12 #init loop 1 limit
sub_1_1_1_t:      sltiu        t4, s11, -2033
                  addi         s3, s3, 7 #update loop 1 counter
                  addi         s4, zero, 5 #init loop 0 counter
                  sltiu        sp, s4, -550
                  addi         t2, zero, 10 #init loop 0 limit
sub_1_1_0_t:      sltiu        t4, s9, 42
                  addi         s4, s4, 9 #update loop 0 counter
                  blt          s4, t2, sub_1_1_0_t #branch for loop 0
                  bltu         s3, a1, sub_1_1_1_t #branch for loop 1
                  sra          t5, s6, t3
                  addi         t3, zero, 10 #init loop 0 counter
                  sra          gp, s3, zero
                  slti         s3, s4, 137
                  sll          gp, t3, s10
                  slt          a7, a3, s1
                  ori          ra, t6, -1410
                  srli         a1, t2, 6
                  xor          tp, zero, a6
                  srl          a2, a6, s2
                  addi         s2, zero, 9 #init loop 0 limit
                  andi         s7, a7, -1062
sub_1_0_0_t:      xor          ra, s8, a3
                  xori         s4, a7, -1430
                  sll          tp, a2, a1
                  addi         t3, t3, -8 #update loop 0 counter
                  slt          t5, tp, t4
                  sub          a7, a5, s2
                  and          s8, t4, s8
                  sltu         a6, a7, a5
                  add          s6, t3, tp
                  bgeu         t3, s2, sub_1_0_0_t #branch for loop 0
                  sltu         s8, a6, s11
                  addi         t2, zero, 0 #init loop 0 counter
                  or           t1, zero, a1
                  srai         t3, t1, 23
                  lui          s6, 10871
                  andi         s6, t1, 1223
                  addi         t4, zero, 11 #init loop 0 limit
                  sll          a6, s8, s6
                  add          t3, t4, s8
                  slt          sp, s3, s1
sub_1_2_0_t:      and          s8, tp, a1
                  auipc        ra, 926050
                  xori         gp, gp, 704
                  xor          a5, a6, s1
                  sltiu        s1, s10, -1152
                  xori         t0, a6, 1197
                  ori          t5, s5, -1587
                  xor          gp, s7, s10
                  slli         a4, ra, 12
                  ori          a6, s2, 2038
                  andi         t1, a7, -1105
                  addi         t2, t2, 9 #update loop 0 counter
                  or           s3, t6, s11
                  ori          a4, s6, -542
                  sltiu        t5, ra, 358
                  slli         t6, sp, 29
                  bltu         t2, t4, sub_1_2_0_t #branch for loop 0
                  srli         a1, a6, 6
                  addi         a6, zero, 5 #init loop 0 counter
                  add          t6, s4, s1
                  slt          s3, a7, gp
                  sll          s1, t3, t2
                  addi         gp, zero, 11 #init loop 0 limit
                  srli         s2, s9, 19
                  slti         t1, s3, 547
                  and          s0, t2, a2
                  auipc        a7, 656679
                  slt          zero, s11, s9
                  srai         a1, s1, 31
sub_1_4_0_t:      or           t2, t4, a2
                  and          t4, s8, ra
                  addi         a6, a6, 8 #update loop 0 counter
                  sltu         s9, a0, t0
                  or           s8, a7, a6
                  sltu         s11, gp, s11
                  sll          t2, a4, t1
                  or           t4, s10, a0
                  auipc        t4, 60161
                  sra          s0, a4, a2
                  srli         tp, a5, 10
                  bltu         a6, gp, sub_1_4_0_t #branch for loop 0
                  sll          t2, a1, s4
                  bgeu         s10, s2, 1f
1:                srli         s4, t4, 16
                  srai         a7, s10, 21
                  blt          s7, zero, 16f
                  srl          s0, t1, s1
                  and          gp, t3, sp
                  sltu         a2, s2, tp
                  bgeu         s3, t0, 20f
                  slti         s3, sp, -542
                  addi         s11, tp, 1218
                  srl          s9, t2, s1
                  beq          s11, gp, 17f
                  xor          s11, a0, t6
                  slli         t2, s5, 16
                  beq          a3, zero, 29f
                  sub          t3, a6, a0
16:               xori         s6, gp, 1223
17:               sll          tp, a2, t1
                  sra          t3, a6, t1
                  andi         s10, s7, 1767
20:               slti         tp, t1, 176
                  andi         t2, s2, -243
                  slli         s11, s0, 23
                  slli         s7, s7, 5
                  bne          t3, gp, 35f
                  lui          s11, 358029
                  beq          a5, a7, 42f
                  lui          s0, 335433
                  xor          t1, a5, t6
29:               nop
                  bne          s9, s2, 34f
                  bltu         tp, zero, 33f
                  beq          s5, a6, 42f
33:               lui          t2, 1040838
34:               addi         tp, t4, 1378
35:               nop
                  nop
                  sub          s2, s11, ra
                  sltu         t2, t4, s4
                  srl          ra, gp, a3
                  slli         s3, s1, 15
                  ori          s0, a0, 926
42:               srl          a1, t5, a0
                  sltu         t0, zero, s0
                  beq          a1, s8, 49f
                  srl          s0, s8, sp
                  srl          s11, a6, ra
                  sub          ra, s5, a1
                  slt          s1, t2, a0
49:               or           a5, s7, zero
                  auipc        s8, 120643
                  slli         t0, a5, 21
                  srl          zero, t2, t3
                  sll          gp, t6, sp
                  xor          a4, a7, s1
                  bltu         s11, s2, 72f
                  sub          s6, t2, s7
                  xori         tp, t1, -576
                  sra          t5, t2, s1
                  bgeu         a2, s1, 67f
                  srli         s2, a0, 16
                  bne          s1, s4, 63f
                  sltu         s9, a1, a1
63:               ori          a7, s5, -141
                  sltu         s6, a2, gp
                  lui          s2, 940717
                  slli         s8, a1, 5
67:               slli         zero, tp, 14
                  blt          s10, a4, 73f
                  bltu         t0, t1, 81f
                  sub          t3, s3, s7
                  bgeu         s11, s2, 76f
72:               beq          a1, s5, 88f
73:               addi         t2, s0, -1128
                  xor          t1, t2, s9
                  bgeu         s6, s4, 93f
76:               lui          sp, 61945
                  sltiu        a6, a0, -1305
                  and          a4, s7, a7
                  sltu         t2, s11, s6
                  add          t2, sp, zero
81:               bge          t3, t0, 95f
                  slli         t5, a0, 21
                  bltu         t0, t6, 100f
                  bgeu         s10, gp, 101f
                  bne          t2, tp, 100f
                  blt          s9, t3, 106f
                  srai         t0, a2, 21
88:               andi         t4, tp, -1442
                  ori          s1, s0, -359
                  xor          a5, s6, a2
                  slti         s7, a5, -1819
                  or           s2, gp, t1
93:               xor          tp, t5, a7
                  sub          a7, t6, a4
95:               slt          a1, sp, s7
                  slli         t5, a7, 14
                  addi         t1, a7, -1631
                  ori          tp, a4, 596
                  sub          s7, s4, s8
100:              auipc        a6, 285135
101:              lui          t5, 846695
                  nop
                  sra          s9, s7, s1
                  auipc        s0, 365412
                  srl          a6, s2, sp
106:              sub          gp, s3, a3
                  beq          s9, a2, 124f
                  andi         tp, zero, -700
                  bne          s2, s9, 114f
                  srli         gp, t5, 8
                  sltu         sp, s1, t2
                  addi         a7, a2, 391
                  slli         s2, s8, 31
114:              bne          t5, s6, 132f
                  srl          ra, t6, t1
                  bge          s7, s1, 118f
                  bge          t2, zero, 135f
118:              bltu         s6, t1, 133f
                  bne          t0, sp, 136f
                  and          s0, ra, a0
                  sltiu        t4, gp, 1223
                  nop
                  or           s4, t5, t4
124:              andi         t4, t3, 191
                  lui          t1, 328558
                  sll          a6, a1, t3
                  sltiu        s1, gp, 1425
                  ori          s4, s4, -1792
                  andi         s11, gp, -1065
                  auipc        t1, 787061
                  blt          a2, t2, 151f
132:              slt          s2, s3, s11
133:              slti         t4, s3, -284
                  xori         s8, a5, -659
135:              auipc        s11, 153335
136:              xori         s10, a1, 1016
                  beq          a1, t3, 145f
                  slli         ra, a4, 29
                  nop
                  sub          t4, s0, a4
                  sltiu        t3, zero, 151
                  and          a7, t5, a3
                  sub          t5, a5, a0
                  slli         t2, s7, 24
145:              bne          s9, t0, 149f
                  xor          zero, s2, zero
                  and          s11, a1, s9
                  or           s9, sp, t5
149:              sltiu        t5, s4, 762
                  blt          s1, a2, 165f
151:              andi         s11, a4, -967
                  xori         t2, zero, -681
                  sltu         a5, a2, sp
                  auipc        s1, 988837
                  srl          t4, s10, s10
                  addi         a1, t5, -656
                  add          t0, a1, t0
                  sub          s2, s11, s11
                  and          t0, s9, gp
                  sra          t3, s11, s5
                  or           zero, s10, s0
                  xor          a7, a6, s5
                  lui          zero, 291612
                  bltu         zero, s9, sub_1_j5 #branch to jump instr
                  srl          s3, t0, t4
                  and          a7, tp, t1
                  srli         s0, s5, 21
                  andi         a2, s9, -1768
sub_1_j5:         jal          a7, sub_5 #jump sub_1 -> sub_5
                  bge          s2, s2, 178f
                  or           s7, zero, a0
                  bltu         sp, t4, 176f
                  sll          sp, s7, t2
165:              sub          s2, a4, s8
                  srai         s6, t5, 28
                  bne          s4, a6, 168f
168:              sltiu        s0, a7, 444
                  nop
                  lui          ra, 825027
                  sra          gp, t3, s8
                  slli         t0, s1, 5
                  sll          t3, t5, s11
                  addi         t3, zero, 8 #init loop 1 counter
                  slti         a7, s5, -1299
                  ori          zero, s2, -526
                  addi         s10, zero, 6 #init loop 1 limit
sub_1_3_1_t:      nop
                  addi         t3, t3, -3 #update loop 1 counter
                  sra          t5, s6, a5
                  addi         t6, zero, 6 #init loop 0 counter
                  addi         s4, zero, 6 #init loop 0 limit
sub_1_3_0_t:      slti         tp, a2, 1639
                  addi         t6, t6, -5 #update loop 0 counter
                  srli         s7, t4, 10
                  bgeu         t6, s4, sub_1_3_0_t #branch for loop 0
                  slli         s0, sp, 31
                  andi         t1, s10, 591
                  bgeu         t3, s10, sub_1_3_1_t #branch for loop 1
                  srai         a2, s11, 11
                  sll          s9, s6, a7
                  and          a7, t1, a7
176:              addi         s4, tp, 1991
                  bltu         a3, s1, 191f
178:              bgeu         s4, s6, 191f
                  sltiu        a7, zero, -1015
                  slli         a5, sp, 24
                  lui          s0, 674949
                  slli         zero, tp, 12
                  add          zero, t2, s11
                  beq          s10, s6, 199f
                  add          s0, sp, t3
                  bgeu         s8, a6, 203f
                  or           t6, s2, s0
                  srai         s3, a4, 17
                  srl          t5, s5, s6
                  srli         t3, t6, 24
191:              or           s10, t3, a1
                  nop
                  srli         s6, a6, 7
                  bne          t4, tp, 212f
                  nop
                  sll          t6, t0, s8
                  srai         s9, a4, 14
                  slt          a6, s9, sp
199:              bge          t3, ra, 211f
                  blt          s0, s11, 216f
                  lui          a5, 635723
                  srl          t0, zero, gp
203:              srai         t5, a2, 25
                  bge          s7, tp, 209f
                  lui          s0, 886038
                  andi         t4, s3, -2042
                  sub          a4, s5, t6
                  slli         ra, s7, 22
209:              bltu         s6, gp, 227f
                  andi         t1, gp, -245
211:              bgeu         tp, a1, 226f
212:              xor          s7, s1, a1
                  xor          s2, tp, s10
                  andi         s6, t5, 257
                  sll          a1, t6, s6
216:              blt          t4, t4, 221f
                  sra          s9, a6, t0
                  slti         t1, s2, 1369
                  slli         t2, a0, 11
                  sltiu        a1, s5, 930
221:              addi         a5, s11, 522
                  bge          s3, t1, 240f
                  bge          t5, a5, 225f
                  addi         gp, a7, 140
225:              lui          s10, 114123
226:              sltiu        s4, s10, -930
227:              sltiu        gp, s1, -933
                  sra          t6, t0, a2
                  xor          s0, s3, tp
                  srli         ra, s10, 11
                  sltu         t1, t0, s5
                  auipc        gp, 444762
                  xor          s0, t0, s3
                  xori         s4, tp, 46
                  blt          t5, s0, 237f
                  beq          s3, t5, 241f
237:              sltiu        t3, tp, -147
                  slt          t1, a1, a4
                  ori          a1, a7, -1138
240:              sub          gp, a2, a6
241:              slti         s3, s5, -1174
                  bge          t3, tp, 253f
                  srli         t4, a6, 28
                  srl          ra, s8, a2
                  auipc        t0, 877696
                  slti         t2, s1, -219
                  blt          a4, a1, 258f
                  auipc        s10, 418219
                  addi         s0, s1, 839
                  addi         s6, t5, 20
                  addi         a6, a3, 1100
                  bge          t6, t2, 258f
253:              auipc        a1, 675729
                  bgeu         s2, s11, 258f
                  and          s6, s5, a5
                  lui          s0, 1008470
                  sra          sp, t5, a2
258:              slli         a2, a5, 4
                  nop
                  slt          s6, t1, gp
                  lw           a7, 4(a0)
                  addi         a0, a0, 56
                  srl          t1, s10, a3
381:              addi x19, x17, 0
381:              jalr x19, x19, 0
sub_5:            slt          s9, tp, a7
                  bltu         a6, t5, sub_5_stack_p
                  auipc        s0, 435180
sub_5_stack_p:    addi         a0, a0, -16
                  sltu         a2, a7, t1
                  sra          tp, s6, s3
                  auipc        s2, 16663
                  xor          t0, zero, a6
                  sw           a7, 4(a0)
                  sub          t5, s6, a4
                  or           a4, s7, s9
                  sra          ra, a7, s3
                  andi         s8, t0, 466
                  xori         t2, s6, -1640
                  srai         zero, s6, 11
                  ori          s10, ra, 412
                  and          t0, ra, a0
                  andi         a4, t6, 1745
                  slt          t2, s5, a3
                  and          t5, s4, t4
                  sra          t6, t2, s9
                  sltu         s11, s5, s9
                  addi         s3, ra, 1512
                  lw           a7, 4(a0)
                  or           s8, a0, ra
                  addi         a0, a0, 16
                  srli         a1, t1, 28
                  xor          t0, s11, a0
                  nop
29:               addi x14, x17, 0
29:               jalr x14, x14, 0
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x13, x10, zero
                  csrr x5, 0x300 # MSTATUS
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 31
                  bne x5, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x5, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x5, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x5, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x5, x20, ecall_handler
                  li x20, 0x1
                  beq x5, x20, instr_fault_handler
                  li x20, 0x5
                  beq x5, x20, load_fault_handler
                  li x20, 0x7
                  beq x5, x20, store_fault_handler
                  li x20, 0xc
                  beq x5, x20, pt_fault_handler
                  li x20, 0xd
                  beq x5, x20, pt_fault_handler
                  li x20, 0xf
                  beq x5, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x10, x13, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
