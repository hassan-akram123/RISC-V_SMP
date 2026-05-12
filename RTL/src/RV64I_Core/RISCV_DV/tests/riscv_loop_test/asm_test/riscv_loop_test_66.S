.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 0
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0xeec43d01
                  li x1, 0xf1430622
                  li x2, 0xff67ef75
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0xb
                  li x8, 0x365bb29e
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x772c5427
                  li x13, 0xd
                  li x15, 0x8
                  li x16, 0x295344e
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0xfa325586
                  li x20, 0xe
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x7e378668
                  li x25, 0xf3e6905c
                  li x26, 0xb
                  li x27, 0x0
                  li x28, 0xfdf090cc
                  li x29, 0xf5f2f1fc
                  li x31, 0x1ac558e1
                  la x30, user_stack_end
main:             addi         a3, zero, 3 #init loop 0 counter
                  lui          t4, 901233
                  addi         a1, a1, -1215
                  slti         t2, s5, 216
                  srl          a6, s8, a7
                  and          a6, tp, t3
                  addi         s11, zero, -11 #init loop 0 limit
main_1_0_t:       andi         tp, a1, 432
                  sra          t3, a6, ra
                  addi         a3, a3, -7 #update loop 0 counter
                  srl          s4, s6, s1
                  sll          s0, a2, zero
                  sll          s9, s1, s7
                  srli         s2, a0, 7
                  add          a7, a1, a0
                  or           t1, t2, ra
                  or           sp, a0, t3
                  nop
                  bne          a3, s11, main_1_0_t #branch for loop 0
                  add          s8, zero, a2
                  addi         s1, zero, 6 #init loop 0 counter
                  srl          s11, s10, s2
                  xor          t4, s8, a4
                  addi         t0, zero, 16 #init loop 0 limit
                  and          t6, t1, a3
                  sll          a1, s8, s10
                  sltu         s11, s5, a0
                  slti         zero, t6, 2046
                  andi         sp, a5, -275
                  sltiu        a6, t1, -1821
                  srli         a0, s6, 10
main_2_0_t:       slti         s6, t1, -370
                  slli         a7, gp, 8
                  addi         s1, s1, 8 #update loop 0 counter
                  xori         ra, s7, 1792
                  addi         sp, s10, 514
                  bltu         s1, t0, main_2_0_t #branch for loop 0
                  addi         t4, a4, -1972
                  addi         s5, zero, -4 #init loop 0 counter
                  andi         s9, a4, 1444
                  sub          tp, t5, ra
                  addi         sp, t3, 189
                  srai         a3, a5, 23
                  lui          t4, 46950
                  add          t6, a0, a6
                  auipc        a7, 454023
                  sltu         gp, t1, s6
                  sub          a3, s6, t4
                  slli         a1, gp, 25
                  andi         ra, s5, 386
                  addi         s4, zero, -11 #init loop 0 limit
                  andi         s7, t3, 379
                  slti         t3, s8, 906
                  addi         s9, a7, -1237
                  sub          a2, s11, t0
                  sll          ra, a3, t6
main_3_0_t:       slt          sp, s10, tp
                  srl          s7, s0, t2
                  lui          a0, 918456
                  addi         s5, s5, -7 #update loop 0 counter
                  sra          a6, a4, a7
                  andi         t0, s9, 528
                  slli         t0, a7, 6
                  beq          s5, s4, main_3_0_t #branch for loop 0
                  or           zero, s7, t6
                  blt          s8, s3, 10f
                  and          a3, s8, t5
                  sra          t1, zero, sp
                  sub          sp, s11, s6
                  or           s5, a2, t5
                  sra          a2, t2, a0
                  sll          t2, s0, t0
                  addi         t0, a7, 1952
                  bltu         t1, s7, 18f
                  slti         t1, t5, 215
10:               sll          a3, s2, s11
                  srai         t3, a2, 31
                  blt          a1, zero, 22f
                  bgeu         s9, zero, 30f
                  bge          t5, s3, 33f
                  slt          s7, a4, s9
                  sll          s9, gp, s8
                  srl          gp, a5, tp
18:               srai         t0, s11, 24
                  sltu         s11, s10, a2
                  beq          a3, zero, 34f
                  ori          s5, a2, -1945
22:               bltu         a7, a1, 35f
                  srai         a3, a5, 12
                  sltiu        s2, a5, -1270
                  sub          t3, t2, a6
                  addi         t4, zero, 6 #init loop 0 counter
                  srl          a7, s10, t5
                  addi         ra, s4, -1294
                  or           a7, a6, s6
                  slli         s11, a7, 5
                  slti         s0, a1, 1113
                  addi         a1, s0, 377
                  slli         t3, s4, 12
                  xor          s6, s11, zero
                  slti         t0, s10, 1359
                  nop
                  addi         a3, zero, -11 #init loop 0 limit
                  slt          s9, a4, a1
main_0_0_t:       sltiu        a7, a0, -398
                  srai         s8, a2, 19
                  slli         zero, s6, 27
                  addi         t4, t4, -7 #update loop 0 counter
                  srai         gp, a6, 7
                  slti         ra, t0, -1879
                  sltiu        ra, a1, 1947
                  srl          s5, a7, s5
                  bge          t4, a3, main_0_0_t #branch for loop 0
                  or           a5, a4, s4
                  slt          a6, s7, t2
                  beq          t1, ra, 38f
                  auipc        a5, 633816
                  auipc        t0, 102822
30:               bgeu         tp, gp, 37f
                  add          s2, tp, t6
                  sltu         s5, s8, s7
33:               sltiu        a0, t2, 1259
34:               xor          gp, t4, s1
35:               slt          t2, s0, s6
                  srli         a7, sp, 28
37:               bltu         ra, s10, 50f
38:               lui          s3, 976529
                  slti         s2, s9, 1288
                  or           a6, a4, s4
                  sub          t1, a1, t4
                  bgeu         t2, s3, 48f
                  srli         s1, a4, 17
                  sra          t6, s0, t6
                  srli         gp, s3, 1
                  beq          t6, s10, 64f
                  bge          tp, s10, 63f
48:               bltu         sp, s5, 56f
                  lui          s6, 240956
50:               bne          t6, s7, 58f
                  srli         t0, ra, 16
                  or           t1, a5, a4
                  xor          a0, t5, a0
                  bltu         t0, ra, 59f
                  xori         ra, gp, -661
56:               slti         sp, zero, -8
                  slti         s2, s6, 349
58:               srai         s9, ra, 13
59:               blt          a2, t3, 78f
                  slli         s8, s5, 22
                  sub          a1, t2, ra
                  ori          s9, a4, -531
63:               sub          s6, t2, a3
64:               sltiu        s7, s2, -594
                  lui          gp, 401431
                  bne          a6, t4, 84f
                  sub          sp, a2, a4
                  nop
                  srai         a1, a5, 10
                  sltiu        zero, t6, -1629
                  andi         a2, s0, -433
                  sra          a1, s8, tp
                  addi         s11, s0, 949
                  lui          a2, 134415
                  slt          a7, t6, s6
                  bge          t2, s6, 90f
                  sll          s3, a4, a7
78:               or           s7, zero, s2
                  xori         a3, s9, -446
                  auipc        s4, 651948
                  bltu         t5, s2, 95f
                  slli         t2, ra, 17
                  slli         a5, t4, 20
84:               beq          s2, zero, 94f
                  slt          tp, t3, s0
                  sll          s9, s2, ra
                  bgeu         s8, s0, 107f
                  sltiu        t2, s3, -1211
                  bltu         sp, t1, 95f
90:               nop
                  sll          a1, t4, a4
                  and          a1, s3, a7
                  ori          s11, t0, 624
94:               lui          t4, 846582
95:               andi         a5, zero, -996
                  add          ra, s3, s3
                  beq          a3, tp, 104f
                  bgeu         tp, s8, 114f
                  addi         s6, t6, -1266
                  slli         a1, t0, 8
                  addi         t3, a1, -733
                  ori          a3, a6, -1549
                  sub          tp, s6, a7
104:              add          s1, s4, t2
                  blt          t4, a6, 116f
                  srli         s1, s11, 20
107:              xor          a1, s11, s11
                  srli         t6, s7, 30
                  slt          a5, s11, s4
                  bne          s4, t2, 116f
                  sll          zero, s5, s10
                  sltiu        gp, t4, -1915
                  bgeu         s7, s3, 128f
114:              beq          s4, a4, 121f
                  srai         t2, a5, 8
                  sltu         s8, tp, a1
                  slt          t2, a5, zero
                  slt          s4, t3, a6
                  la           a1, sub_1
                  addi         a1, a1, 348
                  srai         t6, a2, 3
                  bne          a0, tp, main_j1 #branch to jump instr
                  ori          t1, a3, 1375
main_j1:          jalr         a1, a1, -347 #jump main -> sub_1
                  andi         t4, zero, 222
116:              srli         s4, s8, 22
                  sub          a0, t3, a2
                  bge          s7, s10, 133f
                  sltiu        s2, s8, 1468
                  srl          a3, t2, s5
121:              sltiu        s1, s1, 1238
                  add          t0, sp, s5
                  add          a7, s0, a2
                  auipc        tp, 107813
                  bltu         s10, s10, 140f
                  addi         s11, s2, -1816
                  srl          t0, t0, s2
128:              sra          sp, a0, a3
                  srai         s3, s11, 12
                  or           a5, s4, s4
                  sub          t2, s10, s9
                  slti         s8, t4, -1821
133:              srai         s8, a2, 0
                  blt          a4, gp, 144f
                  bne          s4, a0, 149f
                  bltu         t3, s0, 144f
                  bltu         s2, s1, 153f
                  ori          s6, t6, -817
                  slli         tp, s1, 20
140:              sltu         ra, s10, s9
                  srai         s2, t2, 24
                  beq          a7, s11, 155f
                  srai         t4, t5, 12
144:              lui          a0, 622640
                  beq          s6, s4, 158f
                  sra          tp, t2, zero
                  andi         a5, a7, 1185
                  or           t6, s6, s5
149:              sub          a0, t4, s7
                  slli         t0, s7, 2
                  add          t3, s11, sp
                  slti         s5, t5, -961
153:              sra          tp, t5, t6
                  andi         a6, s3, -1395
155:              andi         t4, zero, 156
                  bltu         zero, s8, 173f
                  bge          s5, a7, 167f
158:              sub          s2, s4, a4
                  slli         s0, zero, 23
                  addi         a0, s8, 1498
                  blt          s5, gp, 180f
                  slti         s9, s1, -1828
                  or           a1, a1, s11
                  lui          a0, 985840
                  sll          a3, s9, a3
                  and          sp, t5, a2
167:              beq          t1, a6, 185f
                  and          s9, a2, s0
                  bltu         s8, tp, 183f
                  srai         s4, t1, 12
                  sra          t3, s6, s10
                  ori          s1, a7, -1976
173:              sltiu        ra, s3, -696
                  bge          s8, s10, 190f
                  addi         a6, t0, -716
                  lui          a2, 431056
                  bltu         tp, ra, 184f
                  srl          sp, s6, t4
                  sub          s11, t1, s8
180:              xori         t3, s9, -768
                  blt          t1, t5, 186f
                  lui          s1, 1046722
                  la           t3, sub_1
                  auipc        s8, 171186
                  auipc        ra, 65263
                  addi         t3, t3, 370
                  srai         a5, s8, 27
                  sub          a3, t0, s9
                  lui          a3, 818273
                  auipc        a6, 683500
                  and          s6, s2, a1
                  slti         sp, a3, 1812
                  srl          a7, s3, t1
main_j2:          jalr         a1, t3, -369 #jump main -> sub_1
183:              slt          t2, s4, t1
184:              sltiu        a2, t5, -38
185:              srl          a5, s0, a7
186:              and          a3, a7, t0
                  slli         t6, t6, 17
                  slli         s0, a3, 22
                  sltu         a3, t1, s4
190:              add          s6, t4, t0
                  addi         s8, s8, -747
                  auipc        s6, 217355
                  slt          s6, a2, s6
                  lui          a2, 428524
                  sra          t2, s2, s10
                  bltu         a1, a0, 202f
                  xori         tp, s5, 1625
                  ori          a7, s11, -844
                  sra          t2, a3, t0
                  auipc        t6, 7648
                  andi         s11, zero, 1162
202:              nop
                  slt          s9, ra, t3
                  sra          s11, s5, t4
                  bltu         a0, s0, 212f
                  srli         s3, t3, 24
                  srli         t3, s9, 30
                  add          gp, sp, t4
                  slt          s7, gp, s0
                  sltu         s4, a5, a3
                  slt          t4, a4, s8
212:              xor          tp, t1, t3
                  beq          s3, s5, 220f
                  bge          s6, s0, 220f
                  blt          t0, t2, 220f
                  bne          s5, t6, 220f
                  add          a0, s2, s4
                  bne          a4, s4, 220f
                  sub          s7, s1, s1
220:              sll          tp, t1, s0
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         t5, t5, -24
                  sw           a1, 4(t5)
                  srai         s3, s6, 9
                  nop
                  srai         s1, s0, 3
                  la           s2, sub_3
                  nop
                  nop
                  slt          t0, s9, s4
                  auipc        s8, 679922
                  and          ra, a3, s1
                  addi         s2, s2, -124
                  sub          zero, s8, zero
sub_2_j5:         jalr         a1, s2, 124 #jump sub_2 -> sub_3
                  addi         gp, zero, 5 #init loop 0 counter
                  slt          t3, s10, zero
                  slt          s0, gp, a4
                  slti         s2, s8, -710
                  addi         s11, zero, -15 #init loop 0 limit
                  nop
sub_2_1_0_t:      xor          a3, t1, s6
                  srli         a1, s11, 22
                  auipc        ra, 451977
                  andi         s8, s8, 1978
                  ori          t6, s8, 710
                  addi         gp, gp, -5 #update loop 0 counter
                  sra          a3, t0, a0
                  slt          sp, a3, t5
                  beq          gp, s11, sub_2_1_0_t #branch for loop 0
                  slli         s6, t6, 8
                  addi         a7, zero, -8 #init loop 0 counter
                  or           t6, s10, s11
                  sltiu        a1, gp, -1352
                  andi         s7, a7, 244
                  srl          t6, sp, s5
                  srli         ra, s9, 25
                  xor          zero, t6, t0
                  xori         gp, s2, -211
                  sll          a5, t1, a0
                  sll          s8, t4, a3
                  sub          a6, s4, t3
                  srl          a2, s0, s3
                  or           t2, tp, t5
                  ori          ra, t2, 586
                  and          s4, t2, gp
                  lui          s4, 401435
                  sub          t2, tp, ra
                  addi         t1, zero, 13 #init loop 0 limit
                  ori          gp, t2, 708
sub_2_0_0_t:      auipc        s7, 144627
                  addi         s1, s5, -1060
                  slli         a3, zero, 30
                  sub          s4, t2, a1
                  sub          t4, s5, s8
                  addi         a7, a7, 9 #update loop 0 counter
                  srai         s1, s4, 8
                  blt          a7, t1, sub_2_0_0_t #branch for loop 0
                  xori         tp, ra, -1190
                  srl          a0, s4, zero
                  and          t1, s2, zero
                  slli         s9, a0, 13
                  bltu         s2, t3, 15f
                  blt          zero, a4, 19f
                  sll          t4, s1, a4
                  blt          s8, s5, 20f
                  sltiu        s11, a7, -495
                  slli         a6, s11, 3
                  bne          s7, a6, 19f
                  sltu         s1, a6, a6
                  slli         a6, a4, 5
                  and          a2, gp, s6
                  bne          t2, s7, 26f
                  sll          a6, s2, t6
15:               slli         a0, a4, 24
                  sub          a1, ra, t5
                  sll          a3, ra, t6
                  add          gp, t6, a5
19:               xor          s4, a6, sp
20:               beq          a1, s6, 39f
                  lui          s3, 731055
                  nop
                  srai         a7, t0, 7
                  and          a3, t6, zero
                  blt          t4, a3, 32f
26:               slt          s0, a3, a7
                  and          a5, a5, a2
                  bltu         t1, s5, 44f
                  xori         a5, tp, -1960
                  slli         s2, sp, 25
                  sub          s11, s6, t6
32:               srl          ra, a5, a3
                  slt          a1, s11, t1
                  add          s7, s7, a1
                  sll          zero, t5, s5
                  slli         a6, a0, 6
                  srai         a3, t1, 29
                  bge          t1, s5, 58f
39:               srli         t4, s0, 21
                  andi         t4, t0, -1673
                  sltu         s9, zero, s5
                  ori          s0, s5, 1545
                  lui          s4, 913306
44:               andi         a2, sp, 932
                  auipc        tp, 909092
                  addi         sp, s10, 1548
                  sub          s11, a3, a4
                  slti         t1, t1, -1833
                  bge          a1, tp, 51f
                  slt          sp, s1, a6
51:               sltiu        s11, s3, -557
                  beq          a3, s11, 70f
                  srl          t0, t2, t6
                  xori         tp, a2, -753
                  slli         a1, s7, 26
                  add          t2, sp, a4
                  or           t6, t2, t0
58:               beq          s2, tp, 71f
                  ori          s7, zero, 732
                  andi         s6, t5, -1901
                  bne          s6, s7, 75f
                  srai         s1, sp, 15
                  add          s0, a6, gp
                  slti         s4, a2, 109
                  bge          s9, a7, 80f
                  auipc        s2, 842683
                  addi         a2, a4, 1117
                  or           t1, t2, zero
                  nop
70:               ori          ra, gp, -1345
71:               xor          t3, s2, tp
                  bge          s3, a7, 77f
                  addi         s0, s6, 229
                  srl          s7, s6, ra
75:               srai         s6, s2, 21
                  sll          s2, ra, t4
77:               sll          ra, sp, zero
                  sll          t4, t4, s1
                  sub          s2, s5, gp
80:               blt          a0, a0, 85f
                  srl          s9, s5, s3
                  srai         t2, gp, 22
                  addi         a7, t3, 697
                  bgeu         s1, s9, 90f
85:               sub          s4, a1, a7
                  auipc        s6, 136298
                  bge          s2, s9, 93f
                  sub          t0, t0, t1
                  sra          s11, a3, s11
90:               srai         tp, t6, 25
                  bgeu         s7, s5, 102f
                  lui          a3, 128834
93:               beq          t1, s10, 101f
                  ori          s2, t2, -1910
                  sll          a7, s5, ra
                  bne          t1, s5, 103f
                  and          tp, a6, s4
                  slli         s0, sp, 1
                  addi         s6, t0, 760
                  nop
101:              auipc        s1, 198334
102:              nop
                  addi         s6, a1, -480
                  or           s8, t4, t6
                  bgeu         s6, gp, sub_2_j4 #branch to jump instr
                  sra          t4, s6, a2
                  auipc        s4, 553155
                  ori          s5, s4, -318
                  nop
                  sltu         a6, s4, s5
                  srl          s9, t1, s11
sub_2_j4:         jal          a1, sub_3 #jump sub_2 -> sub_3
103:              blt          tp, t0, 106f
                  and          a0, a1, t3
                  sltiu        s4, t0, -930
106:              addi         t6, tp, 1399
                  slli         s11, t6, 21
                  and          a3, a4, s10
                  slt          t4, a7, tp
                  add          s7, t0, gp
                  andi         t3, s1, 40
                  slti         a6, t2, 1900
                  xori         a6, s8, 405
                  lw           a1, 4(t5)
                  addi         t5, t5, 24
                  addi         t4, a2, 725
185:              addi x23, x11, 1
185:              jalr x23, x23, 0
sub_5:            bgeu         t3, s8, sub_5_stack_p
                  andi         tp, sp, 2023
sub_5_stack_p:    addi         t5, t5, -44
                  sw           a1, 4(t5)
                  and          s0, t3, s2
                  and          ra, t6, t6
                  addi         s8, zero, 7 #init loop 0 counter
                  slli         s4, a3, 6
                  addi         a3, a4, 895
                  xori         a1, tp, -1582
                  addi         s0, zero, 9 #init loop 0 limit
sub_5_0_0_t:      sltu         a6, s6, a7
                  sltu         s11, a4, gp
                  srli         t6, t1, 14
                  xor          gp, a4, a1
                  sra          gp, a5, a0
                  addi         s8, s8, 4 #update loop 0 counter
                  nop
                  or           s6, a3, a0
                  blt          s8, s0, sub_5_0_0_t #branch for loop 0
                  srai         tp, a6, 26
                  or           a2, a0, s3
                  bge          gp, zero, 3f
                  xori         s0, t6, 870
3:                sltiu        a3, a0, -760
                  sub          s4, s8, a3
                  sra          s7, s6, t1
                  add          s1, s8, ra
                  sll          zero, sp, s0
                  slt          s6, zero, a7
                  andi         a7, t0, 1458
                  ori          gp, a6, 247
                  lui          t0, 524544
                  sra          t1, t1, s3
                  bge          a5, s8, 29f
                  nop
                  bge          a3, tp, 27f
                  bgeu         s8, tp, 20f
                  ori          s9, a1, 450
                  slt          a6, tp, t2
                  ori          s5, s11, 180
20:               sra          t1, a2, s9
                  sub          a2, t4, t4
                  auipc        t4, 201835
                  sra          t0, a2, s2
                  slli         zero, t6, 9
                  slti         a2, a2, -292
                  srai         t1, s7, 29
27:               sra          a6, gp, s8
                  srai         a5, t3, 20
29:               sltiu        t0, gp, -300
                  auipc        a3, 1044130
                  bge          s1, s8, 41f
                  and          s6, s11, t3
                  sltiu        s8, a0, -1767
                  sltiu        a1, s2, 80
                  add          tp, s6, s5
                  sra          t3, t5, s11
                  sra          s0, t4, t5
                  addi         t2, s3, 1631
                  andi         a3, s1, -1644
                  srli         a6, tp, 24
41:               addi         s1, t2, -1850
                  bne          t3, s8, 62f
                  bge          t1, s9, 56f
                  auipc        a2, 569173
                  ori          tp, t0, -783
                  andi         s7, s9, -1606
                  nop
                  blt          t0, s2, 61f
                  andi         a5, t2, 856
                  slti         gp, s6, -821
                  sub          a0, t0, t2
                  slli         s6, a0, 31
                  sltu         a6, zero, s6
                  beq          a2, a2, 65f
                  sll          t2, a5, s2
56:               sltiu        t3, a5, -1730
                  bne          t3, t2, 76f
                  xor          s4, ra, s5
                  sra          s3, t4, t6
                  sra          t2, a4, s6
61:               bgeu         s10, tp, 73f
62:               bgeu         s7, t4, 72f
                  xor          s6, t4, ra
                  srl          ra, t0, s7
65:               slti         t3, t0, -1483
                  andi         tp, a5, 1628
                  sll          s0, s11, t3
                  bltu         a7, t3, 82f
                  sll          t0, a2, s6
                  ori          a5, s3, 887
                  slt          sp, a6, t4
72:               auipc        a3, 627077
73:               or           t1, a7, s9
                  or           ra, a0, t6
                  xor          zero, t6, tp
76:               lui          s11, 651596
                  or           s0, s4, gp
                  add          a6, t4, s7
                  andi         a2, a1, 575
                  bne          a5, tp, 83f
                  srl          s5, a2, ra
82:               xori         gp, s7, 261
83:               auipc        s9, 313742
                  lui          a5, 777156
                  sll          t1, t2, gp
                  bgeu         s11, a2, 88f
                  xor          s6, tp, s2
88:               sltiu        gp, s10, -1281
                  or           s4, sp, s4
                  or           a2, tp, ra
                  lw           a1, 4(t5)
                  ori          a3, a7, -1391
                  addi         t5, t5, 44
                  or           a2, s6, s2
                  srai         t3, s4, 20
117:              addi x6, x11, 1
117:              jalr x6, x6, 0
sub_1:            xori         zero, t6, 899
                  addi         tp, gp, -1843
                  slti         s5, s9, 1040
                  lui          zero, 86278
                  bgeu         gp, t2, sub_1_stack_p
                  xori         s6, s11, 1036
sub_1_stack_p:    addi         t5, t5, -12
                  srli         s4, s9, 16
                  sw           a1, 4(t5)
                  addi         s0, t3, 1611
                  andi         gp, s1, -931
                  la           t3, sub_2
                  sub          t6, t6, gp
                  xor          t6, gp, a3
                  addi         t3, t3, 293
                  srl          a6, t4, s6
                  or           s1, a0, s6
                  xor          s1, t6, a3
                  slti         s8, s0, -1950
sub_1_j3:         jalr         a1, t3, -292 #jump sub_1 -> sub_2
                  blt          ra, a4, 6f
                  blt          zero, t0, 7f
                  sub          a2, t3, s3
                  or           gp, a7, t6
                  slt          a1, a7, a4
                  slt          s9, s2, s8
6:                beq          ra, ra, 12f
7:                lui          a7, 1010672
                  blt          t6, a3, 12f
                  slti         gp, zero, 221
                  andi         gp, t3, 1570
                  srai         tp, tp, 18
12:               addi         s4, t6, -1764
                  lw           a1, 4(t5)
                  addi         t5, t5, 12
                  ori          t3, a5, -1352
                  srl          s11, s1, gp
                  slt          s4, s1, zero
                  ori          s9, t4, 560
39:               addi x16, x11, 1
39:               jalr x16, x16, 0
sub_4:            addi         t5, t5, -28
                  lui          t4, 110430
                  sw           a1, 4(t5)
                  sll          a2, a1, t2
                  and          s1, sp, a7
                  add          a5, s0, s3
                  xor          ra, t1, s5
                  or           s7, s1, s11
                  sltiu        a1, t3, 1944
                  ori          ra, ra, -1593
                  srl          a3, a0, a4
                  slti         a5, s9, -1712
                  srl          zero, tp, s10
                  lui          s2, 689026
                  addi         s4, a7, 950
sub_4_j8:         jal          a1, sub_5 #jump sub_4 -> sub_5
                  addi         a1, zero, 1 #init loop 1 counter
                  addi         s0, zero, 16 #init loop 1 limit
                  sub          t1, t2, t5
sub_4_3_1_t:      sub          s9, s2, s4
                  add          t4, a6, s3
                  nop
                  addi         a1, a1, 8 #update loop 1 counter
                  srli         t1, t2, 13
                  addi         t3, zero, 4 #init loop 0 counter
                  xor          s1, s7, t0
                  addi         s6, zero, 3 #init loop 0 limit
sub_4_3_0_t:      and          t6, s6, t3
                  xor          a6, tp, s8
                  sra          s7, s2, ra
                  addi         t3, t3, -2 #update loop 0 counter
                  slti         zero, a3, -1873
                  bgeu         t3, s6, sub_4_3_0_t #branch for loop 0
                  sltiu        a5, a3, 956
                  blt          a1, s0, sub_4_3_1_t #branch for loop 1
                  slt          s1, s3, gp
                  addi         s0, zero, 10 #init loop 1 counter
                  lui          s8, 236491
                  addi         a1, zero, 11 #init loop 1 limit
                  ori          s7, t6, -315
sub_4_8_1_t:      xor          ra, s1, s8
                  addi         s1, s11, 382
                  srli         a0, a3, 9
                  addi         s0, s0, 9 #update loop 1 counter
                  and          t1, t4, zero
                  sltu         ra, s11, t0
                  addi         t4, zero, -3 #init loop 0 counter
                  slti         s8, t1, 235
                  addi         s6, zero, -15 #init loop 0 limit
sub_4_8_0_t:      xori         tp, ra, 707
                  sub          t1, zero, a4
                  addi         t4, t4, -3 #update loop 0 counter
                  lui          ra, 960520
                  ori          t3, s7, 308
                  bne          t4, s6, sub_4_8_0_t #branch for loop 0
                  blt          s0, a1, sub_4_8_1_t #branch for loop 1
                  slti         tp, a4, 1893
                  addi         a6, zero, 7 #init loop 1 counter
                  andi         a3, s11, -1724
                  lui          s3, 430789
                  sub          s9, zero, a0
                  slti         a7, a6, 135
                  lui          a0, 274982
                  addi         tp, zero, -16 #init loop 1 limit
                  sll          zero, s11, t5
                  srl          t3, t6, a6
sub_4_6_1_t:      sub          t3, s10, a0
                  addi         a6, a6, -6 #update loop 1 counter
                  sub          gp, s2, gp
                  sltu         t4, t6, sp
                  sll          a0, s9, s4
                  add          t6, s5, s3
                  addi         s11, zero, -7 #init loop 0 counter
                  slli         s5, s11, 24
                  and          a0, a5, a3
                  addi         s0, zero, 5 #init loop 0 limit
                  sra          s5, a5, s6
                  srai         t4, a6, 6
                  srai         a3, a5, 14
                  slti         a5, t2, -2008
                  srl          s5, zero, s3
sub_4_6_0_t:      sltiu        a2, s9, 1326
                  sltiu        a1, a5, -823
                  addi         s11, s11, 3 #update loop 0 counter
                  andi         s8, a7, -321
                  sra          zero, gp, s1
                  beq          s11, s0, sub_4_6_0_t #branch for loop 0
                  add          s6, sp, a5
                  sub          t1, a2, s8
                  bge          a6, tp, sub_4_6_1_t #branch for loop 1
                  sltu         s1, s2, zero
                  addi         a6, zero, 8 #init loop 0 counter
                  and          a7, s0, a6
                  and          t2, gp, s4
                  and          t2, gp, ra
                  addi         sp, zero, 16 #init loop 0 limit
                  nop
                  sltiu        t2, zero, -2005
                  and          a5, gp, s0
sub_4_0_0_t:      sltiu        s0, t6, -614
                  xori         zero, s1, -1024
                  xor          t1, a0, gp
                  addi         s2, t4, -1589
                  sll          s1, tp, s5
                  addi         a6, a6, 4 #update loop 0 counter
                  lui          s3, 742696
                  sra          s0, t6, zero
                  slli         t2, a4, 11
                  sra          s1, a5, a3
                  slli         t0, ra, 4
                  slt          s9, s1, ra
                  or           a5, tp, s2
                  bne          a6, sp, sub_4_0_0_t #branch for loop 0
                  slt          s5, gp, s8
                  addi         ra, zero, 6 #init loop 1 counter
                  slt          t1, s0, s2
                  srli         gp, tp, 17
                  slli         a3, s10, 23
                  slli         a7, ra, 12
                  andi         a3, a7, 1819
                  addi         gp, s8, -1439
                  nop
                  slt          a6, gp, tp
                  addi         sp, zero, -8 #init loop 1 limit
                  sltiu        a2, t1, 976
sub_4_9_1_t:      ori          a6, s0, -270
                  addi         ra, ra, -2 #update loop 1 counter
                  sra          t4, t3, s4
                  andi         s4, s10, -1358
                  xori         t2, a0, 790
                  addi         s0, zero, 10 #init loop 0 counter
                  srai         gp, t5, 20
                  slli         t6, t1, 12
                  ori          t2, sp, 499
                  andi         a5, a2, 1516
                  sra          a7, s3, t2
                  addi         t0, zero, 8 #init loop 0 limit
                  sra          a6, t0, t3
sub_4_9_0_t:      add          zero, s8, tp
                  slli         gp, s9, 13
                  addi         s0, s0, -7 #update loop 0 counter
                  slli         t6, s7, 16
                  bgeu         s0, t0, sub_4_9_0_t #branch for loop 0
                  auipc        gp, 39361
                  bge          ra, sp, sub_4_9_1_t #branch for loop 1
                  add          t3, s3, a2
                  addi         t3, zero, -8 #init loop 1 counter
                  srl          a7, t5, t4
                  slt          s3, s5, t3
                  slti         t1, a6, 201
                  addi         s9, zero, 4 #init loop 1 limit
                  sll          gp, s4, gp
sub_4_4_1_t:      andi         t6, a7, 1233
                  ori          s6, t2, -556
                  addi         t3, t3, 6 #update loop 1 counter
                  slli         s4, s1, 17
                  sub          a7, s0, a0
                  addi         a3, zero, 10 #init loop 0 counter
                  srai         s6, s3, 18
                  addi         t4, zero, 10 #init loop 0 limit
sub_4_4_0_t:      slt          a1, a6, a4
                  xori         s1, tp, -599
                  sltiu        a7, t2, 979
                  addi         a3, a3, -5 #update loop 0 counter
                  slli         s8, s7, 9
                  lui          a2, 308093
                  srl          sp, a4, a6
                  and          a6, tp, s6
                  bgeu         a3, t4, sub_4_4_0_t #branch for loop 0
                  slti         s4, a7, -878
                  xori         gp, t6, -1994
                  sltiu        tp, gp, -477
                  slli         ra, s1, 20
                  bne          t3, s9, sub_4_4_1_t #branch for loop 1
                  srl          a1, a7, tp
                  addi         s7, zero, 3 #init loop 1 counter
                  sub          s0, t5, s4
                  addi         a5, zero, 15 #init loop 1 limit
sub_4_5_1_t:      ori          t3, a0, 1036
                  addi         s7, s7, 10 #update loop 1 counter
                  addi         a6, zero, -4 #init loop 0 counter
                  sll          t6, s7, a7
                  addi         s5, zero, 3 #init loop 0 limit
sub_4_5_0_t:      addi         s4, s9, -924
                  addi         a6, a6, 7 #update loop 0 counter
                  bltu         a6, s5, sub_4_5_0_t #branch for loop 0
                  bltu         s7, a5, sub_4_5_1_t #branch for loop 1
                  lui          a0, 462766
                  addi         s0, zero, 6 #init loop 1 counter
                  sltu         t3, t5, s5
                  addi         t6, zero, 13 #init loop 1 limit
                  nop
                  nop
sub_4_10_1_t:     addi         s9, a2, 46
                  addi         s0, s0, 6 #update loop 1 counter
                  slt          zero, s9, a6
                  addi         s2, zero, 3 #init loop 0 counter
                  sll          s4, t1, s8
                  addi         a0, zero, 14 #init loop 0 limit
                  srl          t1, t6, s3
                  andi         a1, s9, -2042
sub_4_10_0_t:     sub          tp, a4, sp
                  addi         s7, zero, 908
                  slt          s11, a2, a3
                  addi         s2, s2, 10 #update loop 0 counter
                  and          s9, a6, gp
                  blt          s2, a0, sub_4_10_0_t #branch for loop 0
                  bltu         s0, t6, sub_4_10_1_t #branch for loop 1
                  nop
                  xor          t1, t3, t3
                  sub          ra, s11, t0
                  slti         a1, ra, 1749
                  bne          s1, ra, 18f
                  srl          s11, t5, s6
                  srli         t1, s6, 28
                  blt          t2, tp, 23f
                  srl          a7, zero, a3
                  sra          s11, a2, a5
                  add          ra, t6, gp
                  ori          t2, s1, -1143
                  srai         a1, a3, 10
                  sltu         a1, a7, a0
                  slli         a5, s2, 6
                  xori         t1, t4, -187
                  and          t4, a4, s7
                  bne          s5, t5, 29f
                  xor          a1, a3, a5
18:               slti         gp, s8, -1488
                  bne          s7, s0, 37f
                  or           a6, s0, t3
                  bltu         s4, s7, 26f
                  lui          t4, 700603
23:               sltu         s0, sp, s3
                  slli         s6, t2, 3
                  bge          t5, s9, 26f
26:               lui          t3, 429485
                  auipc        gp, 825431
                  ori          a7, s7, 1820
29:               slti         sp, t3, -1124
                  bge          t2, s3, 46f
                  bne          t0, s1, 40f
                  add          a6, a2, s0
                  add          s4, s9, s2
                  srl          a7, s10, a4
                  xori         s4, t4, 1174
                  slti         s6, s1, -1247
37:               bge          tp, t4, 44f
                  bne          ra, a6, 58f
                  nop
40:               bltu         s9, s11, 45f
                  sltiu        t0, s1, -248
                  bne          s10, a1, 43f
43:               add          s3, s11, t1
44:               bne          a2, t0, 46f
45:               bgeu         a5, a1, 52f
46:               srai         s4, a2, 10
                  srli         a2, zero, 1
                  sltiu        a6, ra, 1653
                  sltu         gp, t6, tp
                  slli         t0, t3, 6
                  ori          s1, tp, -1076
52:               and          t3, s4, s7
                  slli         s2, t1, 14
                  auipc        sp, 699335
                  srai         t0, s8, 14
                  nop
                  beq          ra, s5, 74f
58:               sra          a3, t0, s8
                  slti         t4, s8, 525
                  sltiu        gp, t4, 104
                  ori          a5, a2, -85
                  nop
                  blt          a1, a1, 72f
                  andi         s4, a4, 60
                  sltiu        a1, a3, 929
                  slt          s7, a6, sp
                  srai         s1, a0, 20
                  sub          s0, a1, s7
                  sll          s11, s9, zero
                  beq          s8, a0, 79f
                  xor          s8, a7, s8
72:               sra          s1, t6, s4
                  bltu         a0, s8, 80f
74:               andi         s0, t3, -1318
                  srai         s4, s1, 8
                  slt          s2, ra, a5
                  beq          s9, s11, 94f
                  srl          zero, s1, t1
79:               andi         s7, ra, -1110
80:               andi         t4, s0, -581
                  andi         t2, sp, -1092
                  sltu         t3, s10, a3
                  slli         s4, s8, 24
                  blt          a0, a2, 88f
                  sra          s1, s5, s9
                  sltiu        a3, sp, -422
                  srli         s1, a1, 19
88:               and          a5, a6, t2
                  or           s6, s8, a6
                  slli         t4, s3, 22
                  slti         ra, a6, -868
                  addi         s4, s10, -795
                  sll          s7, t1, sp
94:               srl          s6, s8, a7
                  bltu         a7, t1, 98f
                  bge          s7, s10, 113f
                  blt          s6, t4, 117f
98:               nop
                  bge          t6, a7, 105f
                  xor          s7, s1, t0
                  ori          s5, s0, -165
                  addi         gp, a2, 412
                  bltu         a7, a1, 121f
                  sltiu        s8, s10, 613
105:              slti         s2, t3, -766
                  srli         a7, a6, 6
                  xor          t4, t1, s2
                  xori         t1, ra, 278
                  bne          t5, gp, 128f
                  sub          s4, t6, t5
                  or           a2, gp, s10
                  bltu         s4, s8, 130f
113:              nop
                  and          t3, gp, a3
                  addi         a6, s1, 1694
                  bne          s4, gp, 122f
117:              auipc        a0, 496020
                  srl          t4, zero, t4
                  and          sp, s7, s6
                  sltu         s8, t3, s5
121:              srli         a5, t1, 11
122:              srl          s7, s11, s1
                  auipc        a3, 188510
                  bge          s6, a5, 144f
                  ori          t6, t5, -1321
                  slt          zero, s6, t3
                  sra          s6, t4, a6
128:              bgeu         a3, s0, 139f
                  bltu         s4, t0, 146f
130:              nop
                  ori          t1, s0, 860
                  srai         s5, tp, 20
                  xori         s9, s11, 1373
                  and          s5, s6, ra
                  bltu         t4, a0, 154f
                  slt          s8, s3, zero
                  sub          t3, t0, a7
                  sltiu        a0, tp, 1962
139:              srai         zero, gp, 15
                  bltu         s6, s1, 157f
                  slt          tp, t1, s2
                  auipc        a2, 844932
                  bne          t5, a1, 158f
144:              blt          t4, a3, 150f
                  nop
146:              andi         zero, a7, -1733
                  xor          s11, t4, s6
                  blt          s9, s11, 153f
                  sub          a5, s7, t6
150:              sltiu        s8, s1, 941
                  bne          s9, s9, 152f
152:              bltu         t6, s4, 170f
153:              addi         a3, gp, -597
154:              bltu         t3, t5, 172f
                  addi         t1, t1, 1857
                  srl          t2, t3, t3
157:              nop
158:              srl          t3, t3, ra
                  bge          s3, t4, 160f
160:              srai         a1, tp, 18
                  srl          s11, gp, gp
                  beq          a1, a1, 173f
                  andi         a2, a5, -499
                  or           s6, s9, s10
                  beq          a3, s11, 172f
                  blt          s3, s8, 184f
                  slli         s3, s8, 3
                  slt          s11, s4, s5
                  and          t1, a4, t5
170:              sra          zero, a2, a4
                  ori          t0, t5, 679
172:              nop
173:              srai         s11, zero, 9
                  beq          s10, gp, 191f
                  nop
                  sub          s11, a5, s10
                  srai         t0, t5, 17
                  or           t1, s9, sp
                  lui          sp, 1008192
                  ori          a1, t5, -1311
                  xori         s2, t3, -877
                  andi         a2, a2, 272
                  auipc        t6, 1047675
184:              sll          gp, tp, a5
                  addi         gp, zero, 4 #init loop 1 counter
                  srli         t3, s10, 28
                  auipc        t6, 568245
                  sll          s8, s11, t3
                  addi         a3, zero, -18 #init loop 1 limit
                  xori         s1, t0, -1384
                  andi         t3, s9, 376
                  add          a1, tp, s10
                  srai         s3, ra, 2
                  slt          s1, s3, s3
                  or           t1, s7, zero
sub_4_7_1_t:      add          s2, s10, a7
                  lui          t2, 232996
                  sltiu        a2, s1, -1105
                  and          s5, s4, gp
                  sra          s0, zero, t0
                  addi         gp, gp, -9 #update loop 1 counter
                  nop
                  xor          s2, zero, t3
                  slti         s5, a5, -1010
                  slli         s6, t2, 27
                  addi         s11, zero, 0 #init loop 0 counter
                  srli         s1, s4, 19
                  addi         t0, zero, 3 #init loop 0 limit
sub_4_7_0_t:      slti         t3, t0, -1955
                  ori          s7, gp, 1713
                  addi         s11, s11, 3 #update loop 0 counter
                  and          a1, s11, s0
                  addi         a2, ra, 2013
                  beq          s11, t0, sub_4_7_0_t #branch for loop 0
                  bge          gp, a3, sub_4_7_1_t #branch for loop 1
                  and          s7, t1, a7
                  srai         s6, t3, 30
                  lui          t1, 652580
                  sra          tp, t0, gp
                  lui          s7, 63893
                  auipc        t3, 446299
                  bge          zero, t4, 197f
191:              srl          a1, t6, t4
                  slti         s8, s3, 584
                  or           s8, tp, t2
                  andi         gp, s7, -838
                  addi         a3, s8, 98
                  sll          t2, s8, a1
197:              addi         s4, tp, -960
                  srl          ra, a4, ra
                  bge          a7, s11, 219f
                  lui          a1, 327721
                  ori          a3, a6, -1092
                  andi         a1, t6, -1168
                  sltu         gp, t2, t6
                  bltu         a4, a1, 220f
                  srli         s7, s9, 16
                  bge          sp, a0, 215f
                  sll          s0, s6, gp
                  sltu         s5, s1, a3
                  lui          s0, 168784
                  xor          ra, s1, sp
                  lui          s5, 656911
                  sltiu        a7, t0, -476
                  bgeu         gp, a6, 233f
                  srai         s2, t3, 20
215:              blt          gp, s0, 224f
                  add          t4, t5, a3
                  ori          s8, sp, -1950
                  or           s8, a1, zero
219:              sra          t4, a2, gp
220:              sltu         t2, sp, s5
                  sub          tp, s6, ra
                  xori         a2, a1, 51
                  slti         t1, a3, 209
224:              lui          s5, 780046
                  andi         tp, s4, 1250
                  blt          t1, a1, 235f
                  blt          s3, a1, 232f
                  slt          a1, ra, s3
                  slt          t3, s11, t1
                  bne          s8, zero, 232f
                  sll          s5, s11, s1
232:              sltiu        s1, a7, 640
233:              slli         t2, t0, 16
                  ori          s8, s7, -893
235:              sra          tp, a7, s8
                  slt          s3, a4, s2
                  blt          t2, t0, 244f
                  blt          a5, gp, 242f
                  srai         a3, a1, 17
                  xori         s5, s4, 1570
                  nop
242:              sra          zero, s8, zero
                  add          s6, a5, ra
244:              slli         tp, s8, 21
                  xor          s2, a4, s10
                  lui          t2, 290346
                  addi         s6, zero, 6 #init loop 1 counter
                  addi         t0, zero, -2 #init loop 1 limit
                  or           t2, s2, s9
sub_4_2_1_t:      addi         s7, a0, 284
                  addi         s6, s6, -8 #update loop 1 counter
                  srli         t4, tp, 1
                  addi         s2, zero, -9 #init loop 0 counter
                  addi         s9, zero, 8 #init loop 0 limit
                  xori         s8, s3, 1047
                  slti         s7, a1, -1792
                  slti         t2, a1, -278
                  sra          sp, s2, a1
                  srli         ra, ra, 24
sub_4_2_0_t:      sltiu        a5, s7, 977
                  addi         s2, s2, 2 #update loop 0 counter
                  sra          s5, ra, a0
                  slti         a5, s1, 165
                  blt          s2, s9, sub_4_2_0_t #branch for loop 0
                  srl          s7, t6, t0
                  beq          s6, t0, sub_4_2_1_t #branch for loop 1
                  sra          t2, gp, zero
                  andi         s2, s11, -1080
                  addi         t3, s1, -1876
                  auipc        ra, 248695
                  srai         a1, s10, 29
                  bgeu         a5, t2, 257f
                  sra          t2, s7, ra
                  bgeu         t5, s7, 266f
                  sra          a3, s1, s1
                  ori          s7, s11, -1529
                  sll          t6, s6, zero
257:              ori          ra, s7, 1456
                  or           s6, t4, a4
                  slti         t2, s6, -1397
                  bgeu         sp, t0, 280f
                  add          s11, s3, zero
                  bltu         a2, a5, 265f
                  xor          zero, a1, s9
                  bne          s11, s11, 281f
265:              blt          a1, a1, 283f
266:              nop
                  sub          t2, a1, a0
                  srl          s4, s9, tp
                  srli         a2, s4, 1
                  bgeu         s9, s1, 275f
                  add          sp, t0, s8
                  ori          a6, a2, -1336
                  bgeu         s1, sp, 291f
                  add          s2, a1, t1
275:              andi         s1, a2, 1350
                  xori         gp, t3, -1655
                  auipc        gp, 105656
                  auipc        t2, 729077
                  sltiu        a5, a6, -314
280:              srli         s6, s7, 21
281:              sub          s11, s11, t0
                  add          t2, s10, zero
283:              sltiu        s4, s7, -1098
                  addi         s11, a1, -1300
                  ori          s11, s1, 1942
                  bge          s0, s2, 302f
                  bge          a3, s0, 296f
                  or           s6, t0, t5
                  sltiu        a5, a1, -298
                  addi         a7, t2, -1093
291:              or           a0, zero, s4
                  sra          t4, t5, s2
                  slli         s7, s2, 31
                  slt          a3, gp, zero
                  xor          t6, s11, zero
296:              xor          a7, sp, a4
                  slti         a0, a5, -380
                  srai         a6, t1, 19
                  bne          s3, a0, 302f
                  auipc        s6, 819841
                  bge          s7, t1, 319f
302:              nop
                  and          s6, t3, sp
                  sub          t4, ra, s1
                  nop
                  auipc        sp, 145405
                  auipc        s5, 547296
                  srl          s7, a4, zero
                  andi         s2, t3, -112
                  addi         a7, tp, -2000
                  bge          t3, t0, 315f
                  bne          t2, s9, 319f
                  blt          gp, gp, 330f
                  slli         a0, t3, 23
315:              auipc        a5, 971540
                  add          t6, tp, s2
                  srli         a1, a0, 17
                  slt          s8, s2, t5
319:              lui          s11, 525076
                  bge          t5, s1, 333f
                  sltu         a5, zero, a3
                  blt          a2, t2, 337f
                  add          a7, s0, s0
                  slli         s0, s2, 26
                  lui          t0, 1031366
                  ori          a2, t1, -732
                  srli         s0, a1, 31
                  sll          s7, t4, sp
                  auipc        gp, 902897
330:              xor          s0, ra, a2
                  slti         tp, s0, 1688
                  srl          s7, s0, s4
333:              auipc        zero, 346190
                  srl          t2, sp, t4
                  xor          s9, sp, t5
                  sra          s6, s5, a4
337:              bgeu         t0, a6, 357f
                  sltiu        sp, s9, 1056
                  slli         sp, gp, 12
                  ori          a6, s10, -1533
                  xor          a7, s6, t2
                  sll          ra, s6, a7
                  srl          s6, tp, s11
                  sub          s6, s4, s1
                  xori         a1, s9, 1958
                  auipc        a5, 927318
                  bgeu         s5, s10, 354f
                  andi         s3, t6, 722
                  srl          a1, s2, s9
                  slt          s1, t1, t3
                  bltu         s3, t4, 368f
                  srl          t4, s0, s8
                  andi         t3, a0, 1965
354:              sll          s0, s0, a1
                  slli         zero, a6, 12
                  addi         s3, s0, -1817
357:              sll          sp, t5, a2
                  bne          s2, t1, 377f
                  ori          s8, a4, 700
                  add          s8, t4, s11
                  bgeu         s5, t1, 378f
                  auipc        s3, 846304
                  slli         s9, s10, 7
                  xori         t1, a5, -806
                  andi         tp, t1, -1828
                  bge          s11, t3, 367f
367:              addi         s9, t1, -221
368:              bgeu         tp, s6, 375f
                  srli         a3, s8, 15
                  sltiu        t3, s0, -764
                  slli         t1, a1, 5
                  sra          t0, t6, s5
                  nop
                  blt          t4, t5, 391f
375:              nop
                  sltu         s3, t5, s5
377:              sub          s6, t3, ra
378:              sub          tp, s10, s11
                  slti         gp, t4, 1367
                  bgeu         t6, t5, 386f
                  sub          t4, a1, t3
                  slli         ra, a7, 25
                  or           a7, s5, s0
                  slti         s8, ra, 460
                  srai         s0, a7, 7
386:              srli         gp, tp, 11
                  srli         s1, s9, 19
                  xor          t2, s0, s4
                  addi         ra, sp, 1204
                  blt          a1, sp, 399f
391:              srai         a2, a4, 2
                  add          s2, s2, s3
                  nop
                  sltu         s11, s1, s6
                  slt          s3, s1, t4
                  lui          s8, 116320
                  sra          ra, t0, s6
                  bne          a0, t3, 407f
399:              addi         t4, a7, 1095
                  xor          a0, a7, t1
                  slt          gp, ra, t5
                  addi         t6, zero, -9 #init loop 1 counter
                  sll          sp, zero, s7
                  addi         a2, zero, -5 #init loop 1 limit
                  slti         a0, tp, 1112
                  sll          s3, s0, t2
sub_4_1_1_t:      sltiu        s2, a0, -1354
                  addi         t6, t6, 4 #update loop 1 counter
                  xor          s6, a1, a3
                  addi         a5, zero, 8 #init loop 0 counter
                  addi         s11, zero, -3 #init loop 0 limit
sub_4_1_0_t:      sub          a0, s8, t4
                  srai         zero, gp, 14
                  sltiu        a7, s1, 1774
                  addi         a5, a5, -7 #update loop 0 counter
                  nop
                  bge          a5, s11, sub_4_1_0_t #branch for loop 0
                  auipc        t4, 427379
                  sra          s7, s10, a3
                  sub          t2, tp, s11
                  srli         a0, s10, 21
                  auipc        t1, 253049
                  nop
                  auipc        s1, 723921
                  lui          s3, 851974
                  slli         gp, s5, 17
                  slt          s3, a1, a7
                  slt          s1, t2, t4
                  slli         s4, t3, 12
                  bne          t6, a2, sub_4_1_1_t #branch for loop 1
                  nop
                  srli         s8, s1, 24
                  auipc        a0, 588472
                  xori         t6, t6, 1191
                  nop
                  beq          t5, s11, 408f
407:              sltu         gp, tp, s5
408:              addi         s8, t1, -749
                  srl          a3, a7, t6
                  srl          t0, s6, t1
                  addi         t0, a5, -289
                  bgeu         s7, s9, 417f
                  andi         t1, t6, 668
                  srli         s7, s5, 24
                  nop
                  sll          s11, t0, a0
417:              andi         s0, t2, -1196
                  add          s7, a0, a0
                  slti         s5, a2, 212
                  sub          t1, s10, a0
                  blt          tp, s6, 441f
                  sub          t0, zero, s8
                  srai         t4, s2, 8
                  and          ra, t2, s11
                  ori          tp, s4, 1330
                  slti         a3, ra, 1298
                  bne          t1, a7, 438f
                  andi         gp, t1, -130
                  lui          t2, 730114
                  slt          s6, s2, t6
                  beq          s10, t2, 437f
                  slt          gp, a7, a4
                  xor          a3, s7, s7
                  xor          s3, s2, s1
                  slt          a3, gp, a1
                  bne          t6, sp, 456f
437:              ori          t3, s8, 466
438:              sub          t0, a6, a6
                  auipc        t2, 637457
                  blt          s9, gp, 441f
441:              srl          t3, s9, t1
                  srai         s4, t0, 22
                  addi         s1, zero, 375
                  xor          s6, s1, a3
                  xori         a1, a6, -249
                  srl          s6, s4, a4
                  sub          a0, a3, a7
                  lui          sp, 993207
                  sll          tp, t6, s1
                  addi         s11, s0, -1313
                  srl          s11, s4, gp
                  srli         t4, gp, 6
                  srli         s1, a3, 8
                  sltu         s2, s10, s10
                  lui          t0, 657441
456:              auipc        t0, 915742
                  sub          s7, a0, tp
                  sltu         s1, t6, tp
                  slt          a5, s0, gp
                  srli         s8, gp, 11
                  slli         s2, t2, 29
                  srli         gp, s0, 5
                  add          t3, gp, tp
                  andi         a2, a1, 939
                  srli         sp, s1, 4
                  bltu         t0, s7, 471f
                  blt          s5, zero, 483f
                  or           t0, t5, gp
                  srl          s1, a3, zero
                  addi         s0, t6, 2028
471:              sltu         s1, s11, sp
                  andi         t2, t1, -976
                  bltu         s4, s3, 474f
474:              srl          gp, a5, gp
                  slti         sp, s5, -1632
                  ori          a5, s0, -1749
                  add          zero, s8, a2
                  slli         s11, t0, 30
                  sll          s3, a1, a3
                  slt          a2, zero, a7
                  and          s0, s0, s2
                  xori         a2, s1, 494
483:              srl          s9, t1, a7
                  slt          t1, t1, a1
                  xor          sp, a6, a3
                  bgeu         a7, t5, 503f
                  ori          t6, s5, 1373
                  srli         a6, t2, 9
                  add          a6, t1, t0
                  sub          a3, s1, a3
                  auipc        s1, 558300
                  add          t1, t0, s2
                  sub          sp, s11, s6
                  beq          a2, sp, 503f
                  addi         ra, s7, -97
                  bgeu         t4, gp, 514f
                  sll          a1, t0, s4
                  bne          s0, a3, 505f
                  add          s4, tp, a3
                  ori          s6, t2, -1427
                  sub          s0, s5, s10
                  and          a3, a0, zero
503:              beq          s5, s8, 509f
                  sra          a0, t0, s5
505:              sltiu        s11, sp, 591
                  bgeu         s11, s3, 519f
                  slti         gp, s3, -473
                  nop
509:              andi         a5, ra, 1098
                  slli         a7, a1, 30
                  bge          s6, a1, 530f
                  addi         tp, zero, -667
                  bgeu         t3, a2, 528f
514:              bltu         s11, s4, 531f
                  srai         tp, tp, 26
                  bge          a2, a0, 534f
                  and          s1, t5, s2
                  bne          a6, s0, 524f
519:              sll          zero, s5, tp
                  beq          s1, a4, 537f
                  ori          s4, s2, 1684
                  andi         s1, s10, -1635
                  sra          a5, a2, s2
524:              addi         a1, t2, 1840
                  srai         t6, s11, 7
                  bne          s2, s8, 529f
                  beq          s2, gp, 534f
528:              beq          ra, zero, 548f
529:              sll          zero, s11, t6
530:              auipc        ra, 575540
531:              slli         s4, a2, 5
                  slti         sp, s3, -1838
                  slt          ra, s4, t1
534:              srli         t4, a6, 11
                  addi         t2, t1, 1341
                  xori         t4, s6, -1582
537:              srl          s6, s10, s4
                  andi         t4, a0, -272
                  bge          a1, s7, 559f
                  nop
                  sra          sp, s7, s6
                  blt          tp, t1, 544f
                  slli         a6, s0, 15
544:              bne          t6, s6, 553f
                  sra          tp, t2, tp
                  andi         a0, s6, 1989
                  srai         tp, a5, 2
548:              and          s1, s11, zero
                  auipc        t4, 487201
                  bgeu         a6, t4, 557f
                  blt          a6, a0, 556f
                  lui          tp, 211951
553:              bgeu         s5, tp, 554f
554:              ori          t4, s2, 1159
                  bgeu         a2, a0, 564f
556:              slt          a7, a0, a4
557:              slli         a5, s5, 8
                  bgeu         s6, s3, 576f
559:              bge          t6, s3, 579f
                  slti         ra, a6, 1726
                  srai         s8, s10, 26
                  addi         gp, s3, -633
                  beq          s2, a4, 567f
564:              and          s4, a3, t3
                  addi         t1, s2, 1243
                  beq          t6, s2, 577f
567:              blt          a3, s5, 584f
                  srl          t1, s11, t0
                  and          a3, a6, sp
                  sll          t3, a7, s3
                  nop
                  or           s9, a0, t3
                  lui          s6, 321369
                  lui          s11, 338962
                  srli         a3, t1, 19
576:              srli         s4, t0, 27
577:              andi         s8, a7, -1088
                  auipc        a5, 970011
579:              sub          ra, s6, t2
                  sltu         tp, s0, zero
                  add          s9, t0, s11
                  auipc        sp, 636355
                  sll          a0, gp, s10
584:              ori          t2, t6, 385
                  addi         s3, s5, 752
                  sltu         s4, ra, a3
                  bgeu         s10, t3, 597f
                  slli         s5, t2, 10
                  sltiu        t3, t4, 1183
                  andi         s7, s7, 1617
                  addi         t1, s1, -625
                  or           a2, s11, s6
                  sltiu        t2, a1, -762
                  slli         t1, s10, 23
                  blt          s8, s1, 597f
                  and          s8, s7, t6
597:              or           t0, t4, tp
                  lw           a1, 4(t5)
                  sll          t2, ra, a7
                  srli         t3, s4, 11
                  slli         t2, t4, 6
                  sra          gp, t0, gp
                  nop
                  addi         t5, t5, 28
                  sltiu        t2, ra, -1520
                  slti         a5, tp, -1723
899:              addi x2, x11, 0
899:              jalr x2, x2, 0
sub_3:            srl          s8, s5, s0
                  addi         t5, t5, -16
                  sltu         s2, a5, ra
                  sltiu        s1, s1, -106
                  andi         sp, a3, 553
                  and          s8, t1, ra
                  slti         s11, s8, -237
                  slt          a2, s6, t4
                  sltiu        s1, ra, 119
                  sw           a1, 4(t5)
                  slt          a5, ra, t4
                  addi         t1, s7, -1566
                  blt          s11, t5, sub_3_j7 #branch to jump instr
                  sll          s11, a5, s1
                  auipc        a3, 221440
                  auipc        a2, 378403
                  nop
                  sra          a5, a4, t3
sub_3_j7:         jal          a1, sub_4 #jump sub_3 -> sub_4
                  addi         t4, zero, -10 #init loop 1 counter
                  and          s0, t4, s1
                  addi         s8, zero, 3 #init loop 1 limit
                  slt          s2, a2, t3
                  slli         a3, tp, 5
sub_3_7_1_t:      addi         s5, t6, -1588
                  slt          ra, s1, s7
                  addi         t6, s5, -280
                  addi         t4, t4, 8 #update loop 1 counter
                  or           t2, t1, s3
                  addi         a5, zero, 8 #init loop 0 counter
                  or           a3, sp, a2
                  addi         a7, zero, 1 #init loop 0 limit
                  xor          t3, s9, s8
sub_3_7_0_t:      auipc        s9, 503616
                  addi         a5, a5, -6 #update loop 0 counter
                  or           t6, a4, gp
                  and          t2, s1, a0
                  bge          a5, a7, sub_3_7_0_t #branch for loop 0
                  sltu         a3, s8, s11
                  blt          t4, s8, sub_3_7_1_t #branch for loop 1
                  or           s9, sp, a3
                  addi         s9, zero, -6 #init loop 1 counter
                  addi         s0, zero, -18 #init loop 1 limit
                  slt          t3, t2, a0
sub_3_15_1_t:     slt          s11, a1, a1
                  addi         s9, s9, -3 #update loop 1 counter
                  sltu         a3, sp, s2
                  addi         s6, zero, 2 #init loop 0 counter
                  addi         a2, zero, -19 #init loop 0 limit
                  sltiu        s8, t1, 172
                  slt          a5, t5, s8
sub_3_15_0_t:     sltiu        ra, t0, -1595
                  addi         s6, s6, -10 #update loop 0 counter
                  srli         a0, s6, 20
                  lui          s4, 253909
                  bge          s6, a2, sub_3_15_0_t #branch for loop 0
                  xori         s1, s4, -355
                  bne          s9, s0, sub_3_15_1_t #branch for loop 1
                  srai         s3, s4, 23
                  addi         s6, zero, -10 #init loop 1 counter
                  sub          s8, a4, a0
                  sub          s11, a0, s0
                  lui          s2, 202687
                  slli         a7, a2, 10
                  xor          s4, s1, s0
                  sltiu        a7, sp, 1147
                  addi         t1, zero, 12 #init loop 1 limit
                  or           a1, a2, s4
                  srai         ra, s4, 23
                  and          a7, a4, a2
sub_3_12_1_t:     and          s1, a3, s4
                  slt          s5, t6, s9
                  addi         s6, s6, 10 #update loop 1 counter
                  addi         t6, zero, -1 #init loop 0 counter
                  srli         gp, gp, 0
                  addi         t3, zero, 10 #init loop 0 limit
                  sltu         a0, s2, t1
sub_3_12_0_t:     nop
                  addi         t6, t6, 1 #update loop 0 counter
                  sub          s8, s3, t3
                  bltu         t6, t3, sub_3_12_0_t #branch for loop 0
                  sltiu        zero, gp, 1992
                  sltiu        tp, t6, -1689
                  blt          s6, t1, sub_3_12_1_t #branch for loop 1
                  slti         sp, a2, 1842
                  addi         gp, zero, 4 #init loop 0 counter
                  addi         t6, zero, 17 #init loop 0 limit
                  ori          s0, t5, 866
sub_3_3_0_t:      sltu         s1, a4, s3
                  srli         a0, t3, 21
                  sll          s6, a6, t3
                  andi         a3, a1, 1697
                  ori          s11, s0, -1974
                  lui          ra, 472255
                  sltu         s2, gp, s10
                  slt          s5, s2, t5
                  srai         s2, s1, 6
                  andi         tp, a6, -210
                  addi         t4, a0, -591
                  addi         gp, gp, 7 #update loop 0 counter
                  xor          a6, s0, t3
                  xori         zero, a5, 1078
                  lui          s6, 604126
                  srai         s8, s6, 0
                  nop
                  auipc        s6, 631860
                  blt          gp, t6, sub_3_3_0_t #branch for loop 0
                  xori         s3, s0, -1151
                  addi         s7, zero, -10 #init loop 1 counter
                  addi         s3, zero, -2 #init loop 1 limit
                  addi         sp, gp, -2046
sub_3_10_1_t:     xori         s11, a4, 1325
                  xori         a6, gp, 551
                  slti         a7, t2, 265
                  andi         a7, t5, -577
                  addi         s7, s7, 1 #update loop 1 counter
                  addi         a5, zero, -5 #init loop 0 counter
                  nop
                  xor          a1, gp, t6
                  addi         a0, zero, 13 #init loop 0 limit
sub_3_10_0_t:     slti         t3, t6, 1419
                  addi         a5, a5, 2 #update loop 0 counter
                  add          s6, a2, s0
                  bltu         a5, a0, sub_3_10_0_t #branch for loop 0
                  sltiu        s5, ra, -593
                  bne          s7, s3, sub_3_10_1_t #branch for loop 1
                  xor          s11, s8, s4
                  addi         a2, zero, 7 #init loop 1 counter
                  addi         s9, zero, 15 #init loop 1 limit
                  srai         a3, s5, 27
                  srl          a3, t0, gp
                  addi         a0, tp, 1964
                  xori         a1, gp, -1759
                  ori          s3, t2, 2009
                  slti         t2, a5, -205
sub_3_0_1_t:      xor          s0, a6, a6
                  sltiu        s11, a1, 378
                  addi         a2, a2, 2 #update loop 1 counter
                  addi         s4, zero, 9 #init loop 0 counter
                  slli         a5, a6, 0
                  addi         tp, zero, 8 #init loop 0 limit
sub_3_0_0_t:      slt          t1, a1, t5
                  addi         s4, s4, -3 #update loop 0 counter
                  and          a1, a1, a3
                  sltiu        sp, s4, 1360
                  sra          s6, s2, s10
                  xori         t4, a0, -698
                  bgeu         s4, tp, sub_3_0_0_t #branch for loop 0
                  beq          a2, s9, sub_3_0_1_t #branch for loop 1
                  srai         s2, a7, 23
                  addi         s0, zero, -2 #init loop 0 counter
                  sltu         ra, s8, a7
                  sltu         t1, a7, gp
                  addi         s7, s10, 1397
                  or           t0, t5, t5
                  srl          s2, s8, a3
                  sltu         sp, a5, s0
                  addi         a2, zero, 6 #init loop 0 limit
                  sra          t4, ra, s2
                  slti         a1, s5, 1984
                  add          tp, s6, zero
                  srl          gp, ra, zero
sub_3_16_0_t:     lui          a0, 451758
                  slt          zero, s9, s0
                  add          s1, t5, zero
                  srli         s2, s9, 9
                  nop
                  addi         s11, s10, -452
                  addi         s0, s0, 4 #update loop 0 counter
                  lui          s6, 618682
                  sll          gp, s8, s9
                  auipc        a7, 87541
                  sltu         a5, t6, a0
                  beq          s0, a2, sub_3_16_0_t #branch for loop 0
                  sltu         s9, ra, ra
                  addi         s2, zero, 8 #init loop 0 counter
                  xor          ra, s1, a2
                  srl          tp, t3, zero
                  sra          t3, zero, a4
                  or           s3, t2, t4
                  andi         s6, sp, 13
                  xori         s3, a4, 575
                  slt          a0, a7, s3
                  slti         t4, t3, 1044
                  slt          tp, s11, gp
                  xori         t2, t2, 1514
                  addi         s7, zero, 17 #init loop 0 limit
                  or           t0, s3, s0
sub_3_5_0_t:      slt          t2, s11, a6
                  xor          a5, gp, a2
                  addi         s2, s2, 9 #update loop 0 counter
                  andi         tp, a6, 1543
                  sra          gp, ra, a7
                  slli         ra, t5, 8
                  or           gp, t6, s8
                  slt          sp, s3, s11
                  beq          s2, s7, sub_3_5_0_t #branch for loop 0
                  auipc        a5, 89228
                  addi         s0, zero, 0 #init loop 0 counter
                  ori          s9, a3, 907
                  andi         t2, t0, 1274
                  andi         s4, s1, 468
                  addi         t6, zero, -7 #init loop 0 limit
                  sub          s7, s3, a4
sub_3_2_0_t:      lui          s4, 781281
                  xori         t2, a5, 1139
                  addi         s0, s0, -7 #update loop 0 counter
                  lui          s8, 455259
                  xori         t2, a2, -1583
                  sltiu        a7, t0, 1969
                  srl          a0, s2, t2
                  slti         t2, tp, 1158
                  sltu         s4, s4, t3
                  slt          ra, t6, s3
                  nop
                  sltiu        a2, a0, 1758
                  srai         a5, t4, 1
                  auipc        s4, 299869
                  sltu         gp, s6, a1
                  slti         s11, t6, 1785
                  beq          s0, t6, sub_3_2_0_t #branch for loop 0
                  sltiu        zero, gp, 1007
                  addi         a6, zero, 0 #init loop 0 counter
                  srai         t2, sp, 4
                  addi         t4, a7, 726
                  addi         a5, sp, -1336
                  and          a7, a1, s3
                  sll          s7, a6, a5
                  slt          s4, a6, t4
                  xori         s2, s11, -917
                  addi         a3, zero, 8 #init loop 0 limit
                  auipc        t2, 755234
                  srli         s2, gp, 20
                  sltu         a5, s9, gp
sub_3_17_0_t:     sltu         ra, s8, s11
                  sltu         s11, gp, t3
                  addi         a6, a6, 10 #update loop 0 counter
                  lui          a5, 407577
                  addi         t2, s3, 1263
                  sltiu        ra, ra, -1466
                  bltu         a6, a3, sub_3_17_0_t #branch for loop 0
                  sll          a5, s3, s1
                  addi         t6, zero, 3 #init loop 1 counter
                  addi         t1, zero, -7 #init loop 1 limit
sub_3_14_1_t:     lui          s3, 377385
                  srl          a7, sp, tp
                  ori          sp, tp, -1037
                  addi         t6, t6, -5 #update loop 1 counter
                  addi         t4, zero, 10 #init loop 0 counter
                  and          sp, a7, a3
                  addi         a0, zero, 10 #init loop 0 limit
sub_3_14_0_t:     slt          s7, gp, gp
                  sub          s1, zero, s0
                  slt          s11, s7, s0
                  addi         t4, t4, -5 #update loop 0 counter
                  bgeu         t4, a0, sub_3_14_0_t #branch for loop 0
                  xor          s8, a2, sp
                  beq          t6, t1, sub_3_14_1_t #branch for loop 1
                  xori         a7, tp, -1755
                  addi         s2, zero, 5 #init loop 0 counter
                  xor          a0, t6, t4
                  addi         tp, zero, 15 #init loop 0 limit
                  ori          a3, a7, -1129
                  add          t0, s3, t2
                  slti         ra, tp, -803
                  nop
sub_3_13_0_t:     andi         sp, s2, -704
                  srl          s11, t3, t6
                  lui          t6, 611397
                  sra          s0, s10, tp
                  srli         a7, tp, 27
                  slti         t4, a1, -1364
                  addi         s2, s2, 8 #update loop 0 counter
                  sll          s6, a4, s11
                  addi         gp, s2, -1823
                  srai         a0, tp, 8
                  nop
                  lui          s9, 377904
                  sub          a5, sp, t4
                  slt          s5, s11, s5
                  slti         s5, s8, 527
                  sltiu        a0, s6, -502
                  blt          s2, tp, sub_3_13_0_t #branch for loop 0
                  sltu         s8, a0, a5
                  addi         ra, zero, -2 #init loop 1 counter
                  addi         a5, zero, 12 #init loop 1 limit
sub_3_8_1_t:      sltiu        a1, a5, -884
                  sub          gp, a1, a4
                  addi         ra, ra, 2 #update loop 1 counter
                  addi         s0, zero, 1 #init loop 0 counter
                  addi         a7, zero, 7 #init loop 0 limit
                  slti         a3, zero, -207
sub_3_8_0_t:      xori         t2, t6, 2005
                  srai         a3, s2, 7
                  addi         s0, s0, 6 #update loop 0 counter
                  or           s6, t5, a7
                  srli         s4, a7, 6
                  lui          s1, 508536
                  beq          s0, a7, sub_3_8_0_t #branch for loop 0
                  blt          ra, a5, sub_3_8_1_t #branch for loop 1
                  slti         t4, s9, 32
                  addi         s9, zero, -4 #init loop 0 counter
                  and          gp, s8, t0
                  addi         sp, s1, 1192
                  srai         s6, t1, 27
                  andi         s2, s0, -41
                  sltiu        t6, t1, -683
                  andi         s1, a4, -1879
                  addi         a5, zero, 7 #init loop 0 limit
                  nop
                  andi         tp, s8, 955
                  slt          a1, s6, ra
sub_3_6_0_t:      or           s1, s1, s5
                  slt          t1, s8, gp
                  nop
                  xori         zero, sp, -1702
                  sltu         s6, s2, s9
                  srai         a3, s10, 13
                  addi         s9, s9, 4 #update loop 0 counter
                  add          gp, a5, s1
                  addi         s8, a0, 1416
                  srl          a0, a2, a3
                  and          s4, sp, t4
                  sltu         zero, a6, s2
                  slli         s8, a0, 7
                  or           t2, s9, a5
                  xori         t4, t0, -151
                  srai         s1, gp, 29
                  bltu         s9, a5, sub_3_6_0_t #branch for loop 0
                  andi         gp, s4, -1896
                  addi         s11, zero, 8 #init loop 1 counter
                  addi         t6, zero, -1 #init loop 1 limit
sub_3_4_1_t:      ori          sp, a3, -497
                  addi         s11, s11, -1 #update loop 1 counter
                  addi         t2, zero, 3 #init loop 0 counter
                  addi         s5, zero, 1 #init loop 0 limit
sub_3_4_0_t:      or           s2, a5, t4
                  addi         t2, t2, -2 #update loop 0 counter
                  slli         s9, sp, 14
                  bge          t2, s5, sub_3_4_0_t #branch for loop 0
                  beq          s11, t6, sub_3_4_1_t #branch for loop 1
                  sub          t4, s1, t0
                  addi         s5, zero, -7 #init loop 1 counter
                  sll          t0, s4, s0
                  and          s6, s2, t2
                  srai         a0, s9, 0
                  addi         s9, zero, -14 #init loop 1 limit
sub_3_1_1_t:      nop
                  addi         s5, s5, -7 #update loop 1 counter
                  auipc        a5, 768131
                  addi         s2, zero, 10 #init loop 0 counter
                  lui          s8, 193749
                  slli         s6, t6, 23
                  or           ra, zero, t5
                  addi         s3, zero, -20 #init loop 0 limit
                  and          s7, s10, ra
                  or           s8, s11, t6
                  addi         s0, s0, 880
                  andi         a1, a6, -519
                  sub          t2, t2, s2
                  slt          s8, a2, s5
                  ori          tp, s9, 1670
                  srai         t0, a2, 7
                  addi         a5, a1, 775
                  lui          a6, 640743
                  sll          a0, sp, t3
                  sltiu        gp, gp, 819
sub_3_1_0_t:      slt          t1, t5, ra
                  addi         s2, s2, -1 #update loop 0 counter
                  sltu         a2, t6, s1
                  srli         sp, gp, 10
                  andi         a7, a4, 1970
                  bge          s2, s3, sub_3_1_0_t #branch for loop 0
                  slt          s1, s9, s6
                  bne          s5, s9, sub_3_1_1_t #branch for loop 1
                  nop
                  addi         ra, zero, -2 #init loop 0 counter
                  xori         a2, tp, -2034
                  slt          a3, t3, s11
                  addi         zero, a2, 793
                  slt          t0, t5, tp
                  lui          s0, 968475
                  srai         s6, a7, 16
                  nop
                  addi         t6, zero, 5 #init loop 0 limit
                  slt          gp, a1, a7
                  slti         t3, s10, 667
                  ori          s2, s8, -1391
                  add          a3, a5, s2
                  slli         a2, s4, 7
                  auipc        t2, 140331
sub_3_11_0_t:     lui          t1, 59203
                  addi         ra, ra, 7 #update loop 0 counter
                  sll          s5, s11, s1
                  sltiu        s9, s11, -742
                  add          sp, t1, s0
                  or           s6, a3, sp
                  and          s3, a1, zero
                  beq          ra, t6, sub_3_11_0_t #branch for loop 0
                  xori         tp, s1, -949
                  addi         s9, zero, 2 #init loop 1 counter
                  lui          a5, 51481
                  andi         t6, tp, 768
                  slti         s4, t5, 726
                  add          s4, s6, t3
                  addi         a6, zero, 6 #init loop 1 limit
                  nop
                  ori          t0, zero, -484
                  or           tp, sp, tp
sub_3_18_1_t:     or           gp, t5, ra
                  sltiu        s1, tp, 596
                  addi         s9, s9, 2 #update loop 1 counter
                  xor          t2, s3, s11
                  sll          t4, a2, s4
                  addi         a3, zero, -9 #init loop 0 counter
                  addi         sp, zero, -14 #init loop 0 limit
                  auipc        s3, 968224
                  xor          s1, s11, s6
                  srai         s5, a0, 24
                  sll          t0, tp, t3
                  andi         a7, t3, 512
sub_3_18_0_t:     and          s0, a6, s8
                  sra          s5, a5, t4
                  sub          s11, s5, tp
                  srai         a2, t4, 19
                  sltu         ra, s7, s7
                  and          s7, s3, gp
                  addi         a3, a3, -10 #update loop 0 counter
                  bge          a3, sp, sub_3_18_0_t #branch for loop 0
                  lui          ra, 650111
                  bne          s9, a6, sub_3_18_1_t #branch for loop 1
                  andi         s0, s8, 1872
                  sltiu        a6, a0, 1817
                  and          sp, a3, s0
                  srli         s3, t0, 12
                  bltu         a1, a2, 23f
                  bne          t0, s9, 15f
                  lui          a0, 317709
                  sub          t0, s5, a0
                  nop
                  sra          a0, s9, sp
                  bge          t4, s9, 23f
                  srai         ra, s0, 12
                  blt          t5, s8, 25f
                  sra          ra, t4, t3
                  xori         a7, tp, 574
                  and          s8, s7, s4
15:               srli         s1, s7, 16
                  bge          s9, t0, 25f
                  beq          s2, zero, 36f
                  nop
                  sub          a5, s3, a4
                  sll          a3, s1, t3
                  ori          s6, t1, -1870
                  auipc        sp, 974912
23:               auipc        s8, 899151
                  and          t2, s0, t2
25:               xor          s4, a4, t2
                  blt          s4, t5, 30f
                  slt          t6, zero, s11
                  addi         t4, zero, 7 #init loop 0 counter
                  addi         s4, zero, 5 #init loop 0 limit
sub_3_9_0_t:      sltiu        s1, a1, 1143
                  sltiu        t1, tp, -260
                  addi         t4, t4, -4 #update loop 0 counter
                  sll          s1, s6, t5
                  and          s2, a3, a2
                  bgeu         t4, s4, sub_3_9_0_t #branch for loop 0
                  ori          a2, zero, 817
                  srl          a1, s6, s6
                  sub          t4, s0, sp
30:               srli         sp, a4, 23
                  slli         t6, s8, 6
                  auipc        a6, 1042175
                  sra          s9, s11, ra
                  bgeu         sp, s10, 43f
                  and          tp, s10, s5
36:               srl          a0, s10, a2
                  srli         s7, s6, 25
                  srli         s5, sp, 14
                  slti         t1, t4, -1603
                  srai         zero, gp, 10
                  sltiu        s11, s8, 1425
                  bltu         a6, s1, 48f
43:               srai         a2, zero, 5
                  or           s7, tp, ra
                  xori         s7, a0, -61
                  srai         s0, s2, 1
                  bgeu         t2, s10, 57f
48:               add          t3, gp, a4
                  bgeu         s5, s1, 69f
                  slt          zero, a2, t3
                  bgeu         t1, ra, 63f
                  srli         gp, s1, 26
                  xori         s3, a2, -378
                  sub          s0, s11, t0
                  slli         a0, s3, 1
                  lui          s8, 987216
57:               sltu         s4, t0, tp
                  lui          a7, 175726
                  blt          t5, gp, 71f
                  ori          s5, zero, 1605
                  xor          a0, a0, s7
                  sltiu        sp, s6, 1842
63:               srli         a6, s10, 21
                  add          a2, s6, t6
                  sltiu        t1, s8, 654
                  addi         tp, t6, -328
                  bltu         t1, ra, 84f
                  auipc        s6, 535948
69:               bge          tp, a3, 73f
                  sltu         s0, a6, t0
71:               auipc        s0, 423568
                  sltiu        t0, t2, 2024
73:               andi         t3, t3, -1640
                  addi         zero, t4, 1364
                  add          zero, s3, s7
                  addi         a2, sp, 1435
                  sll          s8, t0, t3
                  srai         tp, s4, 2
                  bne          t2, t0, 85f
                  xori         a1, s7, -16
                  bgeu         ra, a0, 88f
                  auipc        a6, 615257
                  sra          t3, s4, a0
84:               add          tp, s2, t4
85:               add          s4, sp, t6
                  add          s3, t5, a0
                  andi         s8, t3, 228
88:               slt          tp, s6, gp
                  nop
                  blt          s1, a7, 95f
                  slli         t3, zero, 2
                  xor          a7, a1, s9
                  sltiu        zero, t5, -209
                  or           t6, s10, t5
95:               slli         s8, tp, 31
                  slt          s9, s10, zero
                  auipc        t0, 659625
                  beq          s6, a5, 111f
                  xor          t3, a3, s6
                  bne          s5, s5, 120f
                  lui          t1, 774060
                  andi         a6, gp, -278
                  sltu         s11, t3, sp
                  bne          a1, sp, 109f
                  ori          a5, t6, -806
                  or           a6, a7, s10
                  slti         t1, a2, 1754
                  addi         s5, a1, 1268
109:              xor          t3, s1, t3
                  andi         s8, t3, -2038
111:              xori         t1, a1, 1724
                  srai         a2, t1, 15
                  bltu         s0, a7, 119f
                  blt          s2, a4, 126f
                  bge          s4, a0, 121f
                  slli         a3, sp, 0
                  xori         s6, a6, -880
                  nop
119:              slt          s9, t6, s6
120:              sltu         t1, a2, ra
121:              slli         s7, gp, 24
                  xori         s8, zero, -1979
                  nop
                  blt          a3, t5, 139f
                  sub          ra, a3, s10
126:              srl          t6, tp, t1
                  or           a3, t6, t3
                  or           sp, ra, t6
                  sltiu        s7, a0, -66
                  slt          s4, t2, t3
                  slti         t0, s7, 263
                  auipc        s1, 296367
                  add          gp, s10, sp
                  andi         a1, zero, -1061
                  andi         gp, t0, 605
                  or           a1, t0, a1
                  andi         gp, a4, -628
                  xori         ra, s8, -1388
139:              srli         t3, t0, 16
                  andi         a7, gp, -1680
                  add          s11, a2, s10
                  srli         t2, s10, 17
                  nop
                  srl          t2, s6, s11
                  blt          s3, t6, 150f
                  slti         gp, a5, 1383
                  lui          zero, 1027968
                  sltu         s0, t0, a7
                  sltiu        a7, a7, -728
150:              nop
                  bge          s5, s9, 157f
                  bltu         sp, s9, 155f
                  lui          a5, 615611
                  sltu         a2, zero, t0
155:              andi         t2, t3, 145
                  bgeu         s4, s6, 160f
157:              slli         t1, s3, 7
                  sll          gp, s5, s9
                  srl          s6, s11, zero
160:              xor          tp, s2, s3
                  xor          a0, t0, t4
                  and          t2, a3, t2
                  bltu         a4, zero, 165f
                  slli         t1, s6, 3
165:              bge          a7, s5, 170f
                  xor          gp, s11, t1
                  bne          a6, a3, 181f
                  beq          a3, t5, 180f
                  auipc        s11, 972867
170:              slti         a6, s1, 789
                  ori          a3, s1, 1467
                  xori         tp, s6, 184
                  blt          ra, t2, 175f
                  bne          zero, s0, 178f
175:              beq          s10, t0, 189f
                  andi         a0, s9, 1528
                  slti         s5, a1, -532
178:              bge          gp, a1, 189f
                  bge          a2, t6, 185f
180:              xor          s8, a1, s2
181:              add          t2, sp, s8
                  sltu         t0, s8, t3
                  auipc        t2, 610795
                  beq          t5, zero, 190f
185:              srai         s3, s3, 5
                  xor          s2, a3, a7
                  add          s3, s1, a1
                  lui          s0, 177388
189:              slt          s5, ra, s7
190:              lui          s9, 63674
                  beq          a0, gp, 203f
                  andi         s9, a4, 149
                  lui          a0, 1029661
                  srl          zero, s0, t6
                  slli         tp, t6, 2
                  slt          t6, s3, zero
                  nop
                  nop
                  sltiu        a1, a6, -1245
                  and          s4, s2, t6
                  xor          t2, tp, a2
                  nop
203:              ori          a7, s6, 1613
                  sub          gp, t3, s3
                  addi         gp, s5, -2042
                  srli         t3, s6, 5
                  nop
                  slti         s6, sp, -655
                  bgeu         a2, s7, 215f
                  slt          a5, s9, s2
                  srli         s1, t6, 30
                  lui          s3, 1015294
                  sltu         s6, a1, s8
                  ori          s2, ra, -1313
215:              slti         s4, t1, 941
                  sub          s6, s1, s6
                  slt          s4, ra, s6
                  sltu         t6, t1, a6
                  sll          gp, t4, t0
                  auipc        s9, 509209
                  srl          a7, s6, gp
                  nop
                  srai         t0, a4, 18
                  add          t3, a1, a7
                  sll          ra, a6, s1
                  slt          s0, gp, s8
                  sltu         a0, t6, a5
                  auipc        a0, 924933
                  slt          s11, t5, a4
                  ori          s11, s8, 1749
                  and          s7, s0, zero
                  slli         s0, s7, 25
                  srai         s8, a3, 0
                  blt          a7, gp, 243f
                  beq          sp, t1, 238f
                  andi         tp, t1, -926
                  slt          s1, ra, t1
238:              and          a5, s0, s11
                  beq          a3, a4, 259f
                  srli         t6, s10, 10
                  bge          s8, tp, 254f
                  andi         t3, t5, 2022
243:              beq          t2, s6, 247f
                  add          t0, a0, t1
                  auipc        gp, 167834
                  sub          s0, s7, t0
247:              sltiu        a7, a2, 147
                  slli         zero, s4, 21
                  beq          sp, a6, 268f
                  slli         t6, sp, 2
                  slt          a2, s0, t3
                  srli         s2, s11, 15
                  and          s7, tp, t2
254:              xor          a3, s8, a4
                  bgeu         s9, s8, 267f
                  srli         gp, tp, 6
                  xori         a5, s7, -1639
                  bne          s11, a7, 268f
259:              srl          t6, s8, t6
                  andi         t6, t0, -305
                  lui          gp, 766944
                  slti         t2, s8, 178
                  srl          s5, a7, s3
                  bltu         t3, t2, 269f
                  sll          tp, s5, tp
                  slti         a1, t6, -715
267:              sll          s5, t3, t0
268:              sltu         s5, a0, tp
269:              srai         t0, s8, 24
                  add          tp, a2, t5
                  sll          s7, t5, a5
                  xori         a3, zero, -1386
                  sltu         s6, tp, t6
                  and          t4, ra, a2
                  xori         t6, a7, -161
                  addi         sp, t2, -1795
                  srl          a1, s2, t0
                  srai         zero, s2, 13
                  sub          a1, t4, t0
                  slli         s2, a0, 16
sub_3_j6:         jal          a1, sub_4 #jump sub_3 -> sub_4
                  sra          a1, a5, a1
                  srli         sp, a6, 14
                  andi         gp, a4, -1989
                  sra          s2, a6, zero
                  bge          gp, t4, 281f
                  and          t1, a4, s2
                  addi         a3, a1, -1398
                  sra          s9, t6, t5
                  sll          s1, s11, s9
281:              bltu         s10, tp, 287f
                  bne          a3, gp, 302f
                  bge          sp, a3, 298f
                  ori          s3, ra, -2008
                  or           t6, t0, t6
                  sltu         t6, s3, t2
287:              bge          t5, s8, 296f
                  and          t1, gp, a5
                  lui          s2, 534808
                  slli         s1, s2, 5
                  slt          s11, a6, t2
                  andi         a5, t4, 1463
                  add          a2, s8, s3
                  beq          ra, s11, 300f
                  xor          a5, a3, a0
296:              slt          zero, a4, a4
                  srl          s9, t3, tp
298:              slt          a1, a7, a0
                  bne          s1, a6, 303f
300:              bge          tp, a2, 307f
                  bltu         s9, t6, 321f
302:              srai         a1, t6, 30
303:              addi         s11, gp, 263
                  lui          s3, 758156
                  bge          a3, t0, 322f
                  xor          s1, s11, sp
307:              lui          tp, 194383
                  slli         gp, a6, 5
                  nop
                  slti         a7, s2, 1153
                  srai         tp, a3, 30
                  blt          t4, a1, 316f
                  lui          sp, 557722
                  sll          a0, gp, s4
                  auipc        s2, 546087
316:              lui          sp, 88706
                  slti         zero, zero, 1337
                  bgeu         a3, s6, 325f
                  lui          a2, 618410
                  bgeu         a5, t4, 325f
321:              xori         gp, s6, -1538
322:              sltu         s5, ra, t6
                  add          s8, a3, a0
                  sra          ra, s6, a7
325:              add          t3, a5, t1
                  srli         t3, a3, 9
                  bgeu         a4, s8, 340f
                  andi         t2, a4, -1680
                  blt          a4, a2, 333f
                  srl          zero, s4, s6
                  blt          s9, t0, 343f
                  or           a2, s8, s8
333:              srl          s7, s3, s3
                  addi         s4, s1, 98
                  sltiu        t1, a7, -1137
                  auipc        a7, 884083
                  blt          a5, s5, 352f
                  srli         a5, a7, 28
                  lui          s2, 429281
340:              bgeu         s5, a3, 342f
                  xori         a7, s3, 194
342:              add          ra, t5, a0
343:              srai         s11, t5, 27
                  sll          s3, t3, t3
                  sltu         s5, a0, a7
                  srli         s8, s1, 6
                  blt          t6, s2, 367f
                  ori          s9, t2, 367
                  sra          t0, a1, sp
                  auipc        t1, 85546
                  srai         sp, a1, 16
352:              bltu         a0, a5, 369f
                  blt          tp, a3, 359f
                  xori         tp, s11, 1344
                  sll          s11, s5, t4
                  srli         s8, a2, 1
                  ori          a2, t0, -285
                  bltu         t6, zero, 370f
359:              sltu         a0, a2, t0
                  srli         gp, a7, 3
                  sltu         s4, a1, s10
                  bge          s11, t5, 368f
                  bgeu         gp, sp, 374f
                  slti         a1, s6, -1575
                  nop
                  sll          s8, s6, t3
367:              sll          a0, t6, a0
368:              blt          s4, sp, 372f
369:              bgeu         s2, s8, 378f
370:              bge          ra, s4, 375f
                  addi         a1, ra, 1766
372:              bltu         a4, a4, 386f
                  bge          t6, s10, 392f
374:              sub          s3, t3, gp
375:              or           s3, t2, a2
                  nop
                  sltiu        a1, ra, 1870
378:              lui          s2, 952898
                  ori          a1, s7, 584
                  srli         s11, a3, 28
                  sll          s1, s1, s2
                  and          s6, t1, s2
                  beq          a3, s2, 395f
                  andi         a1, s0, -565
                  sltiu        a6, tp, -576
386:              blt          sp, a3, 400f
                  slli         a5, a7, 28
                  sub          t1, a0, a6
                  bge          s1, a1, 392f
                  sll          gp, t0, s1
                  auipc        a2, 164453
392:              add          s9, zero, t1
                  lui          gp, 191348
                  bltu         ra, zero, 403f
395:              slli         s4, a2, 31
                  slt          a5, s9, a4
                  slli         a5, s5, 20
                  slti         zero, t6, -1137
                  blt          s5, a4, 405f
400:              slli         t0, a6, 13
                  andi         a7, a7, 1800
                  or           ra, s5, t4
403:              add          s0, a6, s10
                  srl          s1, s10, a4
405:              sll          sp, t4, s11
                  nop
                  bne          t4, zero, 412f
                  srl          s6, a3, t6
                  sub          t6, s5, zero
                  ori          s11, s11, 1036
                  add          t3, zero, a0
412:              slt          s6, s5, s6
                  sltu         zero, s1, t1
                  sltiu        a6, ra, -1927
                  slti         s5, a3, -1018
                  srli         a2, a4, 19
                  and          s7, s10, s8
                  slti         a7, s7, -1772
                  blt          s11, s8, 429f
                  srli         a2, s9, 18
                  srli         s5, t1, 30
                  bgeu         t3, t4, 442f
                  auipc        s2, 579528
                  andi         s1, s2, 90
                  srli         t4, t1, 14
                  slti         a0, t4, -1414
                  or           a0, s2, tp
                  srl          s1, s8, sp
429:              and          t6, t4, s0
                  sra          zero, t2, t0
                  and          a5, s7, a6
                  nop
                  addi         sp, t4, 1827
                  xor          s4, s8, a6
                  or           zero, t1, t5
                  blt          tp, s2, 442f
                  sltu         t0, zero, tp
                  srl          s9, s10, a2
                  sub          tp, ra, tp
                  xori         s6, s3, 83
                  bge          a7, a1, 447f
442:              ori          t6, s2, 185
                  sltu         s1, ra, s7
                  or           s1, a7, t2
                  srli         tp, t6, 17
                  srli         s2, ra, 5
447:              add          s1, s6, s10
                  bltu         t5, s8, 468f
                  sra          a5, a3, s11
                  sll          s7, a3, ra
                  srai         tp, gp, 19
                  slti         s4, t3, 308
                  xor          s9, s9, tp
                  add          t2, t3, s6
                  slli         s7, a1, 31
                  bgeu         s5, t2, 476f
                  srl          tp, gp, a5
                  add          t6, s1, a5
                  sub          s2, a0, s0
                  auipc        t3, 324834
                  lui          ra, 455349
                  addi         a6, s0, -932
                  srl          s0, s6, s7
                  beq          a4, sp, 469f
                  and          s4, s0, s4
                  xori         a1, s7, 584
                  nop
468:              xori         a0, s4, -1225
469:              blt          s7, s6, 475f
                  sltu         a2, a1, a4
                  srai         s7, t6, 12
                  slti         a2, s3, -1706
                  sltiu        a0, gp, -577
                  lui          s0, 289854
475:              bgeu         a4, a6, 481f
476:              beq          s0, t0, 480f
                  xor          s5, t1, a3
                  sltiu        tp, sp, -755
                  slti         tp, s2, -529
480:              slti         s4, s8, 759
481:              sltiu        t2, a2, 1276
                  lui          s11, 522809
                  or           t1, s0, sp
                  sub          t6, t3, a4
                  nop
                  nop
                  and          s6, tp, s3
                  xori         s11, a7, 300
                  auipc        tp, 777279
                  or           t1, s4, s7
                  srai         sp, a5, 5
                  blt          t5, sp, 498f
                  bge          a1, sp, 502f
                  blt          t4, gp, 509f
                  and          s3, a3, tp
                  sll          a5, ra, ra
                  bltu         a5, a3, 500f
498:              sltiu        s6, s2, -12
                  and          t1, t4, s8
500:              srli         ra, s2, 2
                  sra          sp, s5, s9
502:              srli         a3, a1, 26
                  slti         a1, t1, 1397
                  srli         s8, s7, 29
                  sra          s8, s10, a6
                  auipc        s9, 804638
                  srai         a3, s6, 29
                  xor          s8, s2, s4
509:              xori         t4, a1, 514
                  slli         t4, s5, 1
                  bge          tp, s11, 530f
                  slti         s5, ra, 1162
                  and          t3, a4, s6
                  blt          a5, a0, 534f
                  bltu         s10, t4, 517f
                  xor          a1, t1, s6
517:              auipc        t2, 460987
                  sll          t0, s10, s2
                  sltu         s2, t5, s10
                  sltu         tp, gp, t4
                  beq          t0, t6, 526f
                  lui          s3, 697421
                  sltu         t2, a4, a0
                  and          t4, sp, a7
                  bgeu         s10, t0, 529f
526:              or           a3, t2, s4
                  srai         s1, s4, 17
                  slli         t0, s4, 19
529:              bltu         s10, a3, 538f
530:              sll          t4, a5, t0
                  xor          s0, a5, a7
                  ori          s0, s1, -185
                  ori          t3, s6, -1812
534:              sll          s11, t2, a1
                  add          s6, sp, zero
                  nop
                  sra          s9, s8, a7
538:              blt          tp, a7, 550f
                  and          a0, s1, s11
                  addi         t4, t3, 1648
                  bge          t0, sp, 561f
                  blt          t5, s10, 547f
                  nop
                  sra          a2, a0, s8
                  and          a5, a4, s11
                  sra          s0, a6, s9
547:              xor          a6, a1, s11
                  blt          a7, a0, 555f
                  bltu         t3, a6, 563f
550:              slli         s0, t2, 24
                  bltu         s0, s11, 557f
                  srl          sp, t6, a5
                  srai         s2, s7, 22
                  lui          s5, 742396
555:              bge          ra, s0, 567f
                  slt          a3, a1, a1
557:              lui          s6, 551631
                  blt          s8, s2, 562f
                  sll          ra, a1, s5
                  and          s5, t4, ra
561:              bltu         s1, s9, 578f
562:              srli         t3, sp, 25
563:              xori         ra, a2, -348
                  slli         a2, t0, 22
                  lui          t4, 793932
                  and          t3, a6, s3
567:              ori          tp, t4, 590
                  sub          s7, a3, s9
                  andi         s1, s4, -626
                  slli         a3, t5, 2
                  sltiu        a0, a1, -1186
                  blt          t3, s7, 582f
                  blt          t5, s8, 579f
                  srl          zero, t1, gp
                  auipc        s1, 82835
                  sll          a1, a1, s11
                  xori         a6, s11, 1207
578:              nop
579:              addi         s5, s8, -973
                  or           gp, a6, s5
                  sltu         zero, a5, a6
582:              lui          t0, 756395
                  nop
                  or           s5, s3, zero
                  bne          a1, t4, 597f
                  addi         a6, s8, -1052
                  and          s5, sp, s0
                  slti         zero, s11, -1377
                  ori          s8, zero, -170
                  srl          a2, s6, s11
                  sra          a2, sp, a0
                  blt          sp, ra, 603f
                  srli         s8, ra, 29
                  srl          a0, a4, t4
                  blt          ra, a2, 609f
                  xori         a5, t5, -1187
597:              sub          a1, s7, t2
                  sll          a3, s1, a6
                  add          ra, s10, s10
                  andi         s4, t2, -1649
                  sub          s2, s7, s5
                  blt          a1, a3, 615f
603:              srai         s2, s2, 22
                  and          s4, a2, gp
                  sltu         s7, t4, s2
                  nop
                  bltu         tp, s9, 622f
                  auipc        s11, 407027
609:              add          s2, s2, t6
                  slti         s0, gp, -743
                  and          zero, t0, t6
                  addi         s4, t6, 1872
                  and          gp, gp, a4
                  bge          a4, t3, 624f
615:              blt          t0, zero, 618f
                  sltiu        s1, a7, -266
                  bltu         s9, gp, 631f
618:              slt          a3, s2, t2
                  bge          s9, s1, 625f
                  srl          tp, s0, t0
                  ori          t1, s7, -1973
622:              andi         a2, s1, 761
                  slli         s4, t3, 24
624:              sub          t1, zero, t1
625:              addi         a6, t1, -103
                  srai         a5, s1, 7
                  sll          a5, a5, ra
                  bge          s3, s4, 641f
                  srai         tp, t4, 0
                  blt          t0, a1, 636f
631:              bgeu         ra, t1, 651f
                  andi         t6, a2, 669
                  bgeu         t3, sp, 653f
                  ori          zero, s3, -1983
                  beq          a1, s3, 655f
636:              ori          a2, t2, 1101
                  xor          s8, a5, t5
                  auipc        s4, 504810
                  xori         s2, s3, -1074
                  sltu         s4, a1, tp
641:              slti         t4, ra, -1155
                  slt          t0, s7, s4
                  sra          zero, s8, s7
                  blt          s9, ra, 656f
                  andi         s9, t2, 1396
                  srli         s5, tp, 21
                  bne          s10, s2, 658f
                  bne          a6, zero, 652f
                  xori         t2, t1, -936
                  srli         a7, gp, 18
651:              add          t3, a6, a6
652:              bltu         t2, s11, 657f
653:              beq          t4, a3, 658f
                  sll          a3, t4, s4
655:              lui          s7, 271215
656:              add          t6, t2, a3
657:              and          a5, t5, s5
658:              blt          s11, a4, 667f
                  slli         s9, t3, 0
                  sll          a6, t6, zero
                  sub          t3, s8, s0
                  lui          a2, 71470
                  auipc        s11, 277042
                  sra          s8, t0, t1
                  addi         sp, zero, -1784
                  bge          sp, t0, 678f
667:              sltiu        t0, t0, 1294
                  srli         s8, s3, 1
                  beq          s9, a6, 675f
                  xor          s3, s0, ra
                  bgeu         a6, t0, 676f
                  add          t1, ra, s3
                  or           s3, a7, t3
                  srai         s1, t0, 28
675:              slti         t0, a1, -1998
676:              nop
                  and          ra, s1, a1
678:              andi         gp, s1, 1703
                  blt          tp, s0, 685f
                  addi         t1, t5, 1734
                  and          s5, t5, ra
                  slti         s3, s10, -243
                  srai         s4, zero, 25
                  addi         a2, s9, -502
685:              ori          s7, sp, 549
                  slti         tp, s3, 1297
                  beq          a2, a5, 699f
                  addi         s7, t6, -659
                  sll          s0, a2, a3
                  addi         sp, a6, 492
                  lui          t0, 155547
                  addi         s2, t1, 1554
                  bne          s1, a3, 699f
                  sltiu        s6, s8, -274
                  xori         s1, t4, 1204
                  auipc        a5, 264073
                  slt          a5, a2, a1
                  sll          a1, s5, a4
699:              or           s8, s5, s1
                  sll          t3, a1, t5
                  nop
                  sltu         a5, t5, gp
                  sltiu        tp, sp, -985
                  or           t0, a5, s7
                  beq          gp, tp, 719f
                  srai         a0, s11, 10
                  slt          zero, s1, sp
                  auipc        t1, 209621
                  andi         a1, s10, 973
                  slti         s6, tp, 237
                  srl          zero, t6, a1
                  add          t6, a0, gp
                  sra          gp, t3, t2
                  nop
                  auipc        s4, 640135
                  srl          a6, s8, a0
                  addi         gp, a6, -1725
                  srl          s0, s3, t4
719:              bge          s1, t4, 738f
                  xori         s8, a4, 624
                  or           s1, gp, s0
                  slt          s2, a1, s3
                  ori          a5, s3, 1207
                  sub          a7, t2, s2
                  bltu         s3, a2, 727f
                  andi         a7, t4, -812
727:              or           s7, tp, ra
                  bne          s11, s3, 745f
                  xor          s1, a6, s5
                  slt          t4, a4, s8
                  xori         t2, s7, 986
                  or           s5, s0, a4
                  srli         sp, s5, 20
                  addi         s8, a5, 1685
                  srai         a0, ra, 21
                  sltiu        s5, zero, 263
                  and          t6, a1, s6
738:              sltu         t1, gp, a0
                  slt          s11, s9, s3
                  add          s0, t6, a6
                  ori          s1, s8, 810
                  sra          a2, t5, a2
                  bge          t4, a1, 750f
                  sra          t1, s1, a1
745:              slti         a3, ra, -1368
                  sll          a0, a3, a5
                  slt          s0, a4, a1
                  sra          a3, s3, ra
                  xor          t0, tp, t6
750:              addi         a0, s11, -323
                  nop
                  slti         gp, t3, 38
                  bne          s6, s1, 757f
                  sub          s5, s3, gp
                  slli         s2, a6, 12
                  andi         s5, s8, -1225
757:              srli         sp, sp, 5
                  srl          s11, tp, tp
                  bltu         t5, s6, 768f
                  add          sp, s11, t0
                  srli         a2, a4, 1
                  bge          t6, t4, 766f
                  bgeu         tp, s9, 775f
                  srl          s3, s9, s0
                  bge          t5, a4, 777f
766:              or           s3, s2, s1
                  nop
768:              andi         t0, a0, 441
                  blt          tp, a2, 782f
                  slt          s4, t4, sp
                  xori         s1, t6, -1276
                  srli         a6, s4, 7
                  ori          a0, s5, 93
                  beq          s2, sp, 779f
775:              addi         s4, s4, 1838
                  bgeu         s0, a4, 780f
777:              slli         s6, s8, 10
                  srli         s11, a4, 22
779:              srai         a2, s1, 15
780:              sll          t1, s3, t4
                  auipc        s0, 190289
782:              beq          t5, a4, 788f
                  slli         t4, s9, 6
                  add          t2, t3, sp
                  sll          tp, t4, s7
                  sltiu        s5, s10, -463
                  add          s9, s4, a0
788:              srai         s1, a2, 0
                  ori          s1, s7, -1451
                  slli         s9, a1, 9
                  lui          ra, 751420
                  and          a3, tp, s5
                  blt          s6, t3, 799f
                  bge          s9, t5, 798f
                  srl          s11, t2, a7
                  addi         t6, s2, 1315
                  sub          sp, s0, s8
798:              bne          tp, s1, 812f
799:              xori         tp, s7, -856
                  bge          s2, s4, 806f
                  srli         sp, a1, 9
                  auipc        gp, 909563
                  bgeu         a7, sp, 815f
                  sll          s6, a7, s8
                  bne          a2, t2, 822f
806:              bgeu         t1, gp, 826f
                  sltiu        tp, a1, 1488
                  bgeu         t0, t4, 817f
                  beq          t4, t1, 824f
                  auipc        s8, 763910
                  sll          s9, s3, a2
812:              blt          s2, zero, 817f
                  bge          t0, s0, 818f
                  slt          s6, a0, a5
815:              sub          s3, t3, t3
                  slt          t4, s0, a0
817:              slt          a3, s11, tp
818:              bne          a2, a2, 821f
                  sra          a2, a2, sp
                  add          s11, t0, a1
821:              bgeu         a3, a7, 841f
822:              bne          s3, s9, 828f
                  andi         s1, s3, -1812
824:              lui          a3, 444557
                  nop
826:              lui          s7, 856080
                  xori         t3, t6, -2016
828:              bgeu         sp, a7, 830f
                  bne          sp, t2, 838f
830:              sltu         a2, s4, a0
                  srli         a2, s9, 9
                  ori          a2, a7, -1544
                  slli         s0, a7, 20
                  auipc        tp, 571152
                  bltu         a4, a0, 854f
                  slt          t6, s1, s11
                  bne          t0, s4, 857f
838:              bge          tp, a5, 849f
                  srli         s4, tp, 8
                  slt          a7, a2, s9
841:              slt          s1, s9, t4
                  xori         t1, tp, 994
                  sub          s8, s11, t2
                  auipc        s2, 554458
                  beq          t2, s6, 859f
                  sltu         ra, t0, zero
                  slti         s5, a5, 1498
                  bltu         s1, a2, 858f
849:              xor          t0, s10, a6
                  blt          s3, s1, 857f
                  blt          s8, a3, 857f
                  srli         s2, s8, 21
                  srli         t0, a6, 2
854:              xori         zero, t3, 867
                  blt          t3, a4, 859f
                  and          s2, s8, t2
857:              nop
858:              xori         a7, tp, 1625
859:              srl          gp, s3, s5
                  beq          t1, gp, 864f
                  sltiu        s3, s6, 1239
                  sra          a3, t0, zero
                  blt          s1, t2, 873f
864:              auipc        s4, 188474
                  blt          s11, s6, 877f
                  sub          t4, sp, t6
                  sra          a3, t5, s3
                  xor          a6, t2, s11
                  auipc        a5, 941978
                  addi         a7, a1, -783
                  slt          a7, s11, t5
                  auipc        s8, 531504
873:              slt          t0, sp, t2
                  auipc        s8, 289364
                  sltu         tp, s3, t4
                  sra          zero, a5, t0
877:              sltiu        s11, a1, 600
                  nop
                  bge          a3, s4, 883f
                  addi         a7, s7, 606
                  xor          t1, s1, a1
                  sra          tp, t3, sp
883:              blt          t2, t6, 889f
                  srai         t1, t6, 21
                  auipc        t2, 322256
                  bne          t5, s2, 900f
                  lui          s8, 149602
                  sra          s2, t1, t4
889:              bge          gp, s3, 898f
                  and          t1, t0, s0
                  bge          s0, s4, 904f
                  nop
                  sltiu        a1, s8, 1987
                  bne          t0, s8, 901f
                  slli         t1, t2, 11
                  srai         a5, a2, 3
                  beq          t4, s1, 901f
898:              bne          a1, s1, 913f
                  sltu         a5, s1, a4
900:              sltiu        t0, s8, -712
901:              slt          ra, s8, a3
                  slli         s7, t6, 10
                  and          ra, s10, s9
904:              sll          t0, s3, s2
                  and          a1, s9, s10
                  slti         s11, a4, 1592
                  addi         zero, gp, 655
                  and          s11, s3, t1
                  sltu         s2, s7, s1
                  sra          s11, tp, t1
                  xori         t3, ra, -758
                  blt          t1, gp, 918f
913:              slt          s0, t2, s10
                  bgeu         a3, t2, 926f
                  andi         s7, a0, 1709
                  slti         s7, sp, -1574
                  srl          a0, t0, a4
918:              lui          t6, 692260
                  blt          t6, s0, 924f
                  ori          s7, ra, -1497
                  sub          a0, a5, ra
                  srl          sp, a4, a7
                  xori         s2, a5, 430
924:              xori         tp, a4, 1541
                  slti         t2, a4, -302
926:              ori          t0, t6, -891
                  sltu         t6, s10, s0
                  bne          a2, s5, 947f
                  nop
                  nop
                  slti         gp, gp, -693
                  addi         t0, t4, 1459
                  sub          tp, a3, t5
                  auipc        s8, 590072
                  add          ra, s0, s10
                  nop
                  beq          t6, s10, 943f
                  ori          s6, s11, -1926
                  add          t2, t0, s9
                  srai         a6, t4, 11
                  add          sp, s3, s11
                  bge          s4, gp, 948f
943:              sub          t2, t1, gp
                  sll          a3, t0, s5
                  sra          t4, s5, s5
                  add          a1, sp, a4
947:              slti         s11, ra, 1517
948:              add          zero, s7, a1
                  sub          s3, s11, t3
                  sra          s6, zero, sp
                  sltu         s8, t3, s11
                  or           t2, a0, a1
                  bgeu         a6, t6, 970f
                  slti         ra, s6, -1777
                  blt          s10, gp, 961f
                  sltiu        zero, s0, -261
                  bge          s1, s4, 970f
                  sub          t0, a7, a2
                  slli         a6, s10, 21
                  or           s3, a0, t2
961:              and          s4, a1, t4
                  bgeu         gp, a5, 970f
                  srai         a3, s10, 31
                  srli         ra, s11, 25
                  xor          t1, s11, t4
                  addi         s3, s5, -438
                  bge          t3, a0, 970f
                  bge          a4, s7, 970f
                  bltu         s11, s10, 970f
970:              sltu         a2, s9, a4
                  sra          s8, s5, s0
                  slli         t3, gp, 12
                  lui          t3, 309456
                  auipc        a0, 162584
                  sltiu        a3, s5, 1269
                  lw           a1, 4(t5)
                  addi         t5, t5, 16
                  andi         s7, a5, 1053
                  and          a0, t5, t3
                  sltiu        s2, a2, -1280
1432:             addi x12, x11, 1
1432:             jalr x12, x12, 0
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
.word 0x5d3d2ca5, 0xba5b2194, 0xd2d5cb04, 0x34891ba1, 0x18449541, 0x81545e5c, 0x51fefa50, 0xa6799ad8
.word 0xf981ba87, 0xd1a4beba, 0xde4ceba0, 0x3f554f33, 0x5efd5db3, 0x6d6a5ba3, 0xa69d19d7, 0x48a6e016
.word 0xc58d65e0, 0xdaa32174, 0x729c5f2c, 0xfa719b0d, 0xe9d59997, 0xadf5143b, 0x0a84101f, 0x33adf6d2
.word 0xf0fc88e8, 0xa5bbc510, 0x8fb0372f, 0x3cec6008, 0xe460bab7, 0x4cd106d7, 0x39fc855c, 0x13d152ce
.word 0x612a63f5, 0x26b43c2e, 0x958e14e0, 0xd1b5c149, 0xfde5a7af, 0xcb8235e2, 0xccb594af, 0xffd3198f
.word 0x7527e20e, 0x2afdd267, 0x01ea4d5d, 0xbcf53b70, 0x5e7f4b7e, 0xd8080766, 0xd93f9ee0, 0x008aaeaf
.word 0xdec1337f, 0xa5ac9a4d, 0x0fb0309c, 0x341c1b2f, 0x5876be26, 0x18dc632a, 0x7c8b3327, 0x8d238ba0
.word 0x8c40c4ab, 0x720a101f, 0x95ed754a, 0x5e41c2e1, 0x9be2f7db, 0xcee39887, 0xe716c1d6, 0x04dd2608
.word 0x95a76abb, 0xe738fa39, 0x45e823ae, 0x70e75a92, 0xb9e68ce0, 0xa2bdd263, 0xf9307d1a, 0x4734e4db
.word 0xecf20bc2, 0xa7c401e6, 0x2fdeb473, 0x549a9400, 0x8f4e116b, 0xfbe9ec9f, 0x04231416, 0x415605d0
.word 0x05626d7d, 0xbb887756, 0xb8857008, 0xc0f783ff, 0x62b8f472, 0xb35618c2, 0xfa554058, 0x224fd63b
.word 0xab801689, 0x7d2dce7b, 0xc46f72f8, 0x91556bf5, 0x85e71013, 0x1e320f66, 0xb2dc6ee6, 0xd8871309
.word 0x91c6a4ae, 0x718dea50, 0x08f84a31, 0xfc625286, 0xe1728470, 0x7f4c0422, 0xd0cceb49, 0x5b3c0e5f
.word 0x18e5a607, 0x50b06ad6, 0x26e52254, 0xa119060c, 0x63f7fa59, 0x5aa27d1f, 0x97901da0, 0xd127f992
.word 0xb2f7fa14, 0x13124abb, 0x7a37c538, 0x73a22452, 0x955eb134, 0x5bc5b2aa, 0x74de6669, 0xf07daa24
.word 0xfe06e729, 0xef70dce2, 0x4ad5c7ae, 0xd9c57d18, 0x904e0bc0, 0x837c594e, 0x5ab5a52f, 0x7720b41f
.word 0x2d946c52, 0x6a27d9ee, 0xa9d3f1ef, 0xad14fbea, 0x9cd9a3cd, 0xd901977e, 0x69a5373d, 0x89f8060c
.word 0xf2349536, 0xa0b13320, 0xb69ccc04, 0x036c35cf, 0xddc5eea6, 0x60b09a6a, 0xfb2f6def, 0x5df2f7a9
.word 0x3873f82a, 0xf518e258, 0xf4a14691, 0x9f7e7aeb, 0xf18ff03e, 0xf3896f67, 0x47c0bc31, 0x8c2b720d
.word 0xd68d4751, 0xd61cf0f9, 0x27394dfb, 0x181de0b4, 0x65e9f677, 0x8918b128, 0xddbed242, 0xe5704fc6
.word 0x45857ecd, 0xf9e2234d, 0x268df00f, 0xd5b1ac14, 0x2fe09471, 0xaf3cf969, 0xf8869dfa, 0x2c653de6
.word 0xd7168646, 0xdf114881, 0x12e0c9fc, 0x761eeaba, 0x9c3647b9, 0x12fbc438, 0x488201d7, 0x53862cc5
.word 0x20b810a9, 0x440cb8b5, 0x2fced461, 0x59dcbfd1, 0x26649d90, 0x0045a18d, 0x11f81bc2, 0x7a2e1a3c
.word 0x53732092, 0xb1496370, 0x915a90cf, 0x07795408, 0xbfd6a249, 0xde075090, 0xe5f0063d, 0x43f1ca7a
.word 0x8fd27ed4, 0x4c4e88a8, 0xf134a770, 0x1f448e08, 0xcc494b04, 0x616cf408, 0xc11875b6, 0xd6e875f9
.word 0x7e7e0f4d, 0xc52ff2e4, 0x7c9b7030, 0x945dbe33, 0xa893d868, 0xa8350087, 0x1b9a313b, 0x8a83e156
.word 0x289e08f8, 0x9db38067, 0x5206b706, 0xb5a0a4fd, 0x33c10365, 0xb858c839, 0x049501fb, 0xfbcf0d7e
.word 0xfaa160fc, 0x57ecad9b, 0xb7c67f7f, 0x75e7aa4b, 0xcd72830e, 0xf8a71119, 0xf6d6ab8f, 0x26a53241
.word 0x0f788bc6, 0x2e89a032, 0x7fe7cd4c, 0xae222805, 0xd9a8aa0c, 0x5461642f, 0x125f518d, 0xceaed548
.word 0x677c6d48, 0x18b44e05, 0xdeef4992, 0xd405c505, 0x88d84e06, 0xc371ddc8, 0x1a416761, 0xd6b709a5
.word 0x71539c83, 0xa904f0e1, 0xa485b614, 0x6fd08da4, 0xfa4ecfd3, 0xde481fd0, 0xcdcc8a36, 0x7ed9d713
.word 0xe26e73a0, 0xc5f93b16, 0x7db46180, 0xbef1acf3, 0x4bca78cd, 0xe6a326ea, 0x86cc1f44, 0xbe4028ce
.word 0x1e533d59, 0x09279738, 0x18771209, 0x587c4c1f, 0x481cf46e, 0x8947eefc, 0x7b7f526d, 0x46d236de
.word 0x9267ddea, 0x719e2db5, 0x3d6412c6, 0xfca858d9, 0x8a3b739f, 0x64302f1f, 0x5bc4e6b4, 0x95c40a9c
.word 0x6dfd011b, 0x9ca0253f, 0xa727a021, 0x81807d71, 0xf1bc906f, 0xa0f301f6, 0xf40c4dbe, 0x6c765ba5
.word 0x0829d320, 0x433cbdaf, 0x2d04980b, 0x326e06e0, 0x413abbdd, 0x56728cb3, 0x52410df7, 0xd300383a
.word 0x9123a6b1, 0x50516c55, 0xb57293d4, 0x59819056, 0x5a94e172, 0xf1cb4121, 0x4a6e2f5a, 0xbc610864
.word 0xcf75c4c5, 0x14264851, 0xe92b2170, 0x16f8a214, 0xb490a903, 0x8504cbc5, 0xf46ebcfd, 0x2a9fbe13
.word 0xc43155bb, 0x756f6e91, 0x7c0f783d, 0x08d81fd6, 0x4f9de381, 0xb2503f92, 0x5890aa2a, 0xd520ccfb
.word 0xe9e73673, 0x81052698, 0xf5f7f790, 0x9eec9589, 0x294ec1e7, 0xfb05cb4b, 0xf2a6d20b, 0x83a70b7a
.word 0xa9f6fd1a, 0x77850e69, 0x96aec8dc, 0x4702af41, 0xa2bace60, 0x0bf5cbcb, 0x70bcc7be, 0xf1d38a38
.word 0x3d6e1586, 0xac968e1a, 0xe08e29c4, 0x1a6d1d54, 0xa6e3006c, 0x3d4ae22d, 0x114b0b1b, 0x6820a118
.word 0x3de65e4c, 0xfa0cb546, 0x866d655b, 0x1b12f1e8, 0x9b853f80, 0x01ab636b, 0x4947bfc2, 0xb1e876fc
.word 0x75715732, 0x78647681, 0xf64d9312, 0x3db8c056, 0xaa72f850, 0xd25dae5d, 0x92ecabae, 0x4d3d5f2e
.word 0xcea86052, 0xc15bdc5f, 0x7ac37603, 0x2b07962b, 0x68dfdd04, 0xc9893b3b, 0xd374d6a2, 0x70d40e28
.word 0x97117dd8, 0x9ed3047c, 0x23d10048, 0x86afe479, 0xbd339565, 0xa6787787, 0xf86d1f34, 0x99e690bf
.word 0xb36f5ef8, 0x5966d7bb, 0xdda38342, 0xb699c2ee, 0xca2a5351, 0x66f3e02d, 0x55dffaf9, 0xacdab822
.word 0x8e80dedd, 0x90d5361f, 0x35c73a1f, 0xefee087b, 0xeb4a2936, 0xff64db0a, 0xa651bc8e, 0x2fee9666
.word 0xf78b2a8b, 0x525e5e44, 0x62f7156a, 0xdc4bf77e, 0xe861d8fe, 0x3ae4140b, 0x9c11f8fc, 0x0ac3fd13
.word 0xe03daf82, 0xcec1deb5, 0x555991e9, 0xda12b708, 0x863cd8d5, 0xbf961a72, 0xfd1717df, 0xd01363a0
.word 0x5866c9ef, 0x0a3012e5, 0x6d4b605d, 0x04b18c1a, 0x355f1fdd, 0xc67bf792, 0xe28416a7, 0xb500d660
.word 0xff3addbb, 0x423621ed, 0xcd6d2526, 0x8b882435, 0x58011f56, 0xacba3a15, 0xb7028432, 0x4a1814b6
.word 0x6e8dec4b, 0x1b533419, 0x088ecffc, 0x734d0696, 0x31189487, 0xfa1a1b17, 0x29f2d13a, 0x68163aa5
.word 0x0be73c53, 0x76a52410, 0x080ba002, 0x1ab0dc1f, 0xccab169e, 0x5da6e196, 0xcc69543e, 0xd517cbcb
.word 0x836f978e, 0x30eb3780, 0xdf204c66, 0x0cbc544b, 0x9ddb4f8f, 0x3963fd68, 0xd971725a, 0xdd8fe9f4
.word 0x3613df27, 0xa034e239, 0x93d59d6f, 0x7050c33a, 0xc45f4c0a, 0xedd5ae9c, 0xddb35882, 0x0c080cd4
.word 0xe4c21411, 0xf479f564, 0x28b430f4, 0x4de7efb1, 0x576994c7, 0x25a469c0, 0xc0138701, 0xf29877fb
.word 0xa79694c1, 0x15874423, 0x987a9fa7, 0x5112f7bb, 0xb5476fb1, 0x59ed7439, 0xc34cb940, 0xdc02591f
.word 0xbdeace42, 0x3f80ab5c, 0x37b9fe08, 0xaf42ea0d, 0xf686a7b5, 0x15a8c645, 0xf925b53f, 0x95db13fa
.word 0x5fc17040, 0x40c5271c, 0x7a9e1d4d, 0x002eb88c, 0xf27f3965, 0x2d5a8677, 0x0158a36d, 0x999b00f7
.word 0xab760aa7, 0xf18c73d5, 0xf6f833fe, 0x428d7b6b, 0x422e7ef2, 0xa255eff6, 0x4448e374, 0xdc8a4860
.word 0x1c4c44f7, 0xf34b18a8, 0xd34607f2, 0xd431d7d7, 0xe310380d, 0x6b2a9d88, 0xe11d689d, 0xe52457b0
.word 0x817c5a5f, 0x717c8922, 0x2b0dfb44, 0x81749feb
.section .region_1,"aw",@progbits;
region_1:
.word 0xfb623644, 0x7b5d777f, 0xa7a94b76, 0xc8d999a8, 0xd6c9d327, 0xd64edf90, 0x80c02307, 0x602c1470
.word 0x3faffc0e, 0x7fe3c00d, 0xd9d1bbec, 0x28923e91, 0x02055770, 0x12dd5555, 0xaed3a78d, 0x29286050
.word 0x615cb6fb, 0x39665a21, 0x25a27cd9, 0xd72b0f85, 0x72e11b9d, 0x01003cd5, 0xd90f309d, 0x743a3c71
.word 0xcdf45044, 0xab5a67ce, 0x9f2cc0f1, 0xc32bea68, 0xa8fac127, 0x95dc9104, 0x58798d56, 0xa301343e
.word 0x42688dec, 0xe9a3f15d, 0x8e0bc7c2, 0xe839dbc0, 0x4fbe7b36, 0xacbdf602, 0xadc42fd0, 0x1b65a7d6
.word 0x1620dcc6, 0xe75cd144, 0xc118c72d, 0xab83af13, 0x5684ce25, 0x698f3e98, 0xcc2faae8, 0x68c09f27
.word 0x9f0c61b9, 0x1ff2bc6f, 0x48a5025c, 0x92cbed9f, 0xa01923cb, 0xc8b1afb1, 0xebaf5a3d, 0x294808da
.word 0x5f85f7fb, 0xf24b1106, 0x3b34fd63, 0x0113d5d2, 0xb883e856, 0xc87a196f, 0x2d2338ad, 0xd6097f76
.word 0x0033010a, 0x93afcc35, 0x91957521, 0xbd9decb2, 0xb9ea8951, 0x4b36b5d4, 0xe4a7579a, 0x4491e30d
.word 0x269ac106, 0xd35d65ae, 0x8bf67838, 0x843cbc00, 0x782eae18, 0x2663a101, 0xd3f6f6ca, 0x4fa9f06b
.word 0x0cad5ab0, 0x709cd3f6, 0x55476b9b, 0x1a580b92, 0xc27e3747, 0x875e2c62, 0xfbbe4565, 0x147e193f
.word 0xd4e2cffe, 0x60870538, 0xe91f83cc, 0x0fb97366, 0xb1214b15, 0x39b6ec41, 0xf0429623, 0x8fd90c70
.word 0x74274d39, 0x605e604b, 0xce0e928c, 0xf265d483, 0xf8b778f5, 0x52a37a76, 0x2d8a1685, 0x1dd54783
.word 0x266633c7, 0x0d1941f5, 0xc563adfb, 0x63578503, 0xee40953f, 0x5b002ef6, 0x6636abf0, 0xfca2788c
.word 0x40afa08b, 0xc70da2df, 0xce27fd59, 0xdc417b34, 0x2ff5cc78, 0xe8ca8a23, 0x0d0fe213, 0xa65802fd
.word 0xe670655f, 0x6769669d, 0xfec14e3c, 0xd4e72ed3, 0xed4d0f96, 0xa85dbd44, 0x571ea35f, 0x5dea25b9
.word 0xb4497451, 0x866dcf10, 0x87d5cbd9, 0x0aacafe4, 0xb76c2555, 0xb7aedc7a, 0x7a24f417, 0x99bf0229
.word 0x3ebfc143, 0x2f7cfe1c, 0xca427e1f, 0x84f4da15, 0x24b458e7, 0x3268a50a, 0x98a1f7fb, 0x682e89b0
.word 0x0664d15a, 0x17f9fe07, 0x59567993, 0x6f4a2455, 0xba1c7662, 0x66f4b5fd, 0x7894ca80, 0xda09933a
.word 0xd8c218a5, 0x6014b88f, 0x42d50b13, 0x2dad1401, 0xa267e1f3, 0x4396b878, 0x9440c201, 0x764e054b
.word 0x5a805582, 0x35926355, 0xfc6c2284, 0x77702ff7, 0xd48ae244, 0x75233f0a, 0xc3183794, 0x7ad74cb1
.word 0xc2adccb3, 0xa444d260, 0x52ede5a5, 0x13495c1b, 0x2595c723, 0x097674f2, 0xe8369389, 0x13e64835
.word 0x92abf9a9, 0x60caed36, 0x4cf3eefd, 0x40d29eae, 0xcffb4265, 0x164953f6, 0x0913d395, 0x07f3fe32
.word 0x09600daa, 0xa193bd35, 0x9a2085e4, 0xf80717b7, 0xaa9f7274, 0xf3f6f586, 0x399c4d4f, 0x749c49bc
.word 0xa5e2a57e, 0xedde83c6, 0xcd17890f, 0x2ea36524, 0x2fac4457, 0x9393c7c1, 0x8d4f7fb8, 0x6867441d
.word 0x0352a4d8, 0x23fd9d6b, 0x03064d1b, 0x2ed4d281, 0x0c3d5fc3, 0xa52b04d6, 0x2a4d1931, 0x16a0e68a
.word 0xcc661a65, 0xb590f069, 0x96f58867, 0xf90a2f14, 0x5ca83822, 0x2de1777a, 0xfd65d02f, 0xb7bcf81d
.word 0x99853088, 0x36c21a7f, 0x6f86b51f, 0xed765ee5, 0x3bb3e639, 0x6aa14625, 0x71f9f618, 0x58a1a1f4
.word 0x8ea799b2, 0x5ccc0667, 0x0c690853, 0x5c67b14f, 0x4ccf3ac1, 0x018d4975, 0xbb041da8, 0x4c51fdad
.word 0xb06ec262, 0x1ea72b7e, 0xb31145f7, 0xde48bdbe, 0x4d8cddc0, 0xbf44e755, 0xf561ab97, 0x8b8b78a3
.word 0xd4e4b0dd, 0x83d33963, 0x0027764e, 0xacf59da3, 0x3b9e7b1f, 0xbb493410, 0xd4a2fd3e, 0x178df235
.word 0xa374667b, 0x1dd552f6, 0xe5bd4066, 0x6b86ff33, 0xbacb3c60, 0xd66cd16f, 0x614c527b, 0xe4952c6d
.word 0xdde43655, 0x31ce40af, 0x605e961c, 0x72c7d696, 0xdab994ee, 0xaa85d500, 0x1ac541b8, 0x6af1d17a
.word 0x083f4349, 0xa0f6ed0b, 0xf93e257c, 0x08fa8ff2, 0xc915b4ce, 0xa4e0ec22, 0xcce50d7d, 0xe4ab2e18
.word 0xbcfc69b5, 0xaf37c98c, 0x6d7d9082, 0x7a251af0, 0x7f00ee4e, 0xe11ad62f, 0x0b21eea5, 0x8b917b8d
.word 0x95cda4bb, 0x2b576aac, 0x843b505b, 0xed40dcbd, 0x7967e112, 0xff55d2f9, 0x8e8a38a8, 0x6f035b17
.word 0xf9e2c8fb, 0x3a1ac9cd, 0xcaeadcd0, 0x7a9c84e4, 0x2f50cb15, 0x017e49c4, 0x20a135f4, 0x718de0c0
.word 0x91cbfa5b, 0xfeddc640, 0x353014b9, 0x4ceecbe9, 0x7e63ecbf, 0x02558fcb, 0x2e49fafa, 0xfe13c113
.word 0xfbccc3ec, 0xfa6550ef, 0xc1d63830, 0x5d97114b, 0x6bc9d059, 0x844e1335, 0xc919f504, 0x366682f3
.word 0x309bec49, 0x61cf0aeb, 0x8c957b7e, 0x27c378de, 0x115915f4, 0xe4b7692f, 0x52bd3ac2, 0x8c2747e0
.word 0x3e33e72a, 0x1c46098f, 0xcde95a01, 0x24d27191, 0x231d6f6c, 0xc60ca9c1, 0xf3dd5188, 0x5efd3b13
.word 0x4fcefcae, 0x6ee1b6ba, 0x8d6d7c57, 0x09eaa785, 0x4018ea54, 0xa29dc415, 0xee2ec7a2, 0x2806d586
.word 0x8c875436, 0x64232f54, 0xe2c808b9, 0x6d3bfc30, 0xab2ef340, 0x98863f56, 0x299fe48c, 0xd5f0181e
.word 0x11c79342, 0xfb796b00, 0x94b71379, 0xdc661c32, 0x847ba961, 0x737617d9, 0x91dfdc75, 0x843bbf81
.word 0xe27e506d, 0x3614ca70, 0xb6c28d5e, 0x576e95d9, 0xad98bd7d, 0x78183d21, 0x633367b8, 0x5885255b
.word 0x2a60a015, 0x27027f23, 0xbc0bb9dc, 0xaf7d1425, 0x53c2b298, 0x1fd209e3, 0xd8ce735b, 0xfed3c15a
.word 0xfca3295b, 0xed94f44d, 0x3907969d, 0xb6dcee79, 0x315bb0a2, 0xd8434b0e, 0x83b9a43a, 0x48e9c7ab
.word 0xd1b805ea, 0x8120fe2b, 0x2b94d141, 0x3923011d, 0x811a3807, 0xda800f4f, 0x47b50106, 0xe6810844
.word 0xd73e8e3b, 0x7b90fb80, 0x530ac19c, 0x25ab761c, 0x5d8883a6, 0x5a173b56, 0xa33a82ea, 0xd0fe1e69
.word 0x8ebc02cc, 0xd61da58d, 0xca64b897, 0x3acd517a, 0x81b9fd8e, 0x34a2c57e, 0x2ec0b650, 0x857901ea
.word 0x05e5a4d5, 0x912e986d, 0x6127b438, 0x5c33c5b6, 0x88d315ec, 0x545ca5ad, 0x1dedcca3, 0xcb413437
.word 0x569f1553, 0xcdc73dab, 0xb564a306, 0x0ed5f5f6, 0x75a13457, 0x1118a046, 0xca84e28d, 0xc7d00fd9
.word 0x6d3f47bf, 0xe0d19587, 0xfd9eb880, 0x6244211e, 0x2258d6fe, 0x0e8b830f, 0x5be653da, 0x833215b0
.word 0x165257fa, 0x98646ddd, 0x163a3e27, 0x5e5bfc28, 0x756e00ea, 0x663cdb91, 0x00e7ca26, 0xfffc2173
.word 0xc05295f7, 0xa29dec28, 0xf6d77999, 0xad9cb46e, 0x30e841fe, 0xdfd30851, 0x17ce617f, 0x5fe0e3a5
.word 0x8eb88040, 0x366e5fba, 0xa3ac03da, 0x2b291179, 0x708ab34d, 0x951560a8, 0xca26333f, 0x8fe1f0ee
.word 0x55c21456, 0x24ff71df, 0x6137412d, 0x645a56a4, 0x286ea9aa, 0x0612a155, 0x6243c64c, 0xe68c4a4f
.word 0xd7da195c, 0x52b4c289, 0x4654f9dd, 0x6ca1aa10, 0x2c86d345, 0xd9a204d1, 0xf3eab0ed, 0x23f0db13
.word 0xd37ba40b, 0x5c10b280, 0xa1f7bbf0, 0x33ee2247, 0x134489e1, 0x30ba0023, 0x3b93f35b, 0x16e7d55b
.word 0x6cf01d99, 0x954f3ff7, 0x414db961, 0xb062095c, 0x1b2e3841, 0x7e390203, 0x050071ac, 0xb5430ba7
.word 0x50e46b9e, 0xe3e5ab48, 0x7e7525b8, 0x1a1f4d58, 0xa51fed6f, 0x883f9889, 0x2f526c59, 0xf7d26041
.word 0xee3fd87e, 0xe496654a, 0x1d4dd4f6, 0xd6478519, 0xcfc0fa70, 0x7b2e42ce, 0x789d376b, 0xb300236d
.word 0x4f9fe0ff, 0x682b2ae6, 0xe67e79ce, 0x12ad6863
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x14, x30, zero
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x31, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x31, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x31, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x31, x12, ecall_handler
                  li x12, 0x1
                  beq x31, x12, instr_fault_handler
                  li x12, 0x5
                  beq x31, x12, load_fault_handler
                  li x12, 0x7
                  beq x31, x12, store_fault_handler
                  li x12, 0xc
                  beq x31, x12, pt_fault_handler
                  li x12, 0xd
                  beq x31, x12, pt_fault_handler
                  li x12, 0xf
                  beq x31, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x30, x14, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x14, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x14, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x30, x14, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x30, x14, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x30, x14, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
