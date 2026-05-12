.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x11, h0_start
jalr x0, x11, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 1
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
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x479b51d7
                  li x5, 0x1867d946
                  li x6, 0x5
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x8
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x15fc9807
                  li x14, 0x0
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0xf4e8a70d
                  li x19, 0x4
                  li x20, 0xf5efdb8d
                  li x21, 0x7393c034
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0xf5475d8a
                  li x26, 0xb689fe81
                  li x27, 0xf38a9163
                  li x28, 0x80000000
                  li x29, 0x8c5da8a1
                  li x30, 0x80000000
                  li x31, 0x0
                  la x15, user_stack_end
main:             addi         a7, zero, 8 #init loop 1 counter
                  xori         sp, s1, -1897
                  sub          tp, t2, a6
                  slti         s0, a3, -1162
                  addi         t3, zero, 20 #init loop 1 limit
main_4_1_t:       add          a4, s11, s10
                  ori          s5, a7, -513
                  ori          s8, s1, 984
                  addi         a7, a7, 6 #update loop 1 counter
                  xori         s4, t3, -332
                  addi         t6, zero, 7 #init loop 0 counter
                  ori          s6, t2, -1740
                  addi         s3, zero, 2 #init loop 0 limit
main_4_0_t:       sub          s1, a7, zero
                  addi         t6, t6, -5 #update loop 0 counter
                  sll          t2, t2, a5
                  beq          t6, s3, main_4_0_t #branch for loop 0
                  bne          a7, t3, main_4_1_t #branch for loop 1
                  addi         s1, t4, 1983
                  addi         t4, zero, -10 #init loop 0 counter
                  xor          t5, a6, s7
                  andi         zero, ra, -1481
                  addi         s3, zero, 5 #init loop 0 limit
                  sltu         s10, a2, a1
                  sll          a3, t6, gp
                  auipc        t1, 428826
                  sltu         a6, s4, a6
main_0_0_t:       ori          s4, s6, 860
                  sltiu        s2, a5, 336
                  or           zero, s7, gp
                  addi         t4, t4, 2 #update loop 0 counter
                  auipc        s4, 253595
                  lui          a4, 249445
                  ori          zero, t2, -494
                  addi         ra, t6, -301
                  xori         sp, zero, -895
                  slti         t2, t6, 1528
                  slli         a2, a5, 5
                  addi         a2, s5, -663
                  and          ra, a4, t6
                  xor          s2, a3, s4
                  bltu         t4, s3, main_0_0_t #branch for loop 0
                  sll          s6, a4, a4
                  addi         s8, zero, 8 #init loop 0 counter
                  sltiu        a7, gp, -1815
                  addi         s0, a7, -815
                  sltiu        a4, t0, 432
                  addi         a2, zero, 6 #init loop 0 limit
main_3_0_t:       xor          ra, s0, s1
                  and          t3, t2, sp
                  sltiu        a0, s3, 592
                  srl          gp, a1, s2
                  ori          sp, a0, 1615
                  addi         s8, s8, -2 #update loop 0 counter
                  slti         s6, t1, 196
                  xori         zero, s2, 1409
                  nop
                  slti         s1, a6, 799
                  andi         s6, t6, 1756
                  sltu         s0, a4, t1
                  bgeu         s8, a2, main_3_0_t #branch for loop 0
                  lui          s2, 744536
                  addi         s6, zero, -3 #init loop 0 counter
                  slti         s11, s11, -219
                  and          t4, a4, sp
                  xori         a4, t6, 501
                  sub          s1, zero, t2
                  srl          s8, sp, zero
                  srl          t6, t4, ra
                  sltiu        zero, t0, 888
                  ori          gp, t2, 1134
                  sub          gp, s6, t4
                  addi         s2, zero, 14 #init loop 0 limit
                  andi         t3, t0, -1687
                  xori         s10, a4, 613
                  andi         a2, s4, 1400
                  lui          a3, 586082
main_5_0_t:       sub          s8, ra, s9
                  and          a3, t4, s7
                  or           t2, s6, t1
                  addi         s6, s6, 2 #update loop 0 counter
                  lui          t6, 377963
                  slli         s10, s3, 28
                  lui          t1, 15638
                  add          a0, s5, sp
                  bltu         s6, s2, main_5_0_t #branch for loop 0
                  sub          a6, a6, s10
                  addi         s0, zero, -6 #init loop 0 counter
                  sltu         tp, t1, t6
                  addi         t3, zero, 7 #init loop 0 limit
                  auipc        ra, 435718
main_1_0_t:       sltu         a6, a7, s5
                  nop
                  slti         a3, s9, -268
                  sltiu        t2, sp, 208
                  addi         s0, s0, 1 #update loop 0 counter
                  srli         s1, t5, 16
                  and          a2, zero, s10
                  bltu         s0, t3, main_1_0_t #branch for loop 0
                  srai         s6, sp, 10
                  bgeu         s6, t6, 10f
                  andi         s4, s9, 68
                  sll          sp, s2, zero
                  add          ra, s4, t6
                  beq          t5, s1, 9f
                  or           t5, a0, a4
                  srai         t0, tp, 11
                  nop
                  addi         s0, s8, 1327
9:                slti         ra, gp, -1623
10:               srli         t2, s1, 26
                  sra          s4, a4, s5
                  xori         a7, t3, -1007
                  srl          t3, t5, ra
                  sra          a7, t5, zero
                  or           gp, a0, t0
                  and          s6, gp, s10
                  ori          t2, zero, -1459
                  add          t4, sp, s2
                  blt          t3, s0, 20f
20:               or           s11, t5, s7
                  srl          s11, a3, s1
                  bge          s1, s10, 40f
                  lui          s8, 988853
                  bge          t2, t4, 44f
                  srai         sp, ra, 8
                  slt          s4, zero, s10
                  or           s2, t6, s6
                  andi         s6, tp, -1826
                  bge          a6, t6, 33f
                  bgeu         a0, t1, 47f
                  ori          a2, a1, 1081
                  and          a0, s3, s2
33:               and          t6, sp, s0
                  srl          t1, s10, s0
                  xor          s0, gp, s11
                  and          s4, t0, a6
                  auipc        s5, 20469
                  bltu         t5, t4, 44f
                  bltu         s8, s1, 57f
40:               blt          s9, zero, 52f
                  srl          a2, t2, a3
                  nop
                  xor          t1, a2, t2
44:               beq          s6, s7, 55f
                  bne          a7, s1, 61f
                  srli         s0, ra, 10
47:               srl          s10, sp, t2
                  xori         s1, t3, 893
                  slt          t3, s3, t3
                  bgeu         tp, tp, 60f
                  bltu         s4, a0, 67f
                  addi         s10, zero, 7 #init loop 1 counter
                  addi         tp, zero, 7 #init loop 1 limit
                  sub          t3, t0, a7
main_2_1_t:       sltu         a3, a5, s9
                  addi         s10, s10, -3 #update loop 1 counter
                  add          t5, s11, a1
                  addi         gp, zero, 10 #init loop 0 counter
                  srli         s11, s5, 17
                  addi         s8, zero, -7 #init loop 0 limit
main_2_0_t:       lui          s1, 677266
                  sll          a4, t4, t5
                  addi         gp, gp, -4 #update loop 0 counter
                  bge          gp, s8, main_2_0_t #branch for loop 0
                  slt          a6, s2, t0
                  bgeu         s10, tp, main_2_1_t #branch for loop 1
                  nop
52:               sltu         ra, a0, gp
                  or           gp, a7, a7
                  xori         t0, s10, -1902
55:               sltiu        t4, a3, -942
                  srli         a0, t1, 1
57:               lui          s11, 222163
                  beq          t6, t0, 74f
                  bltu         s2, tp, 62f
60:               sra          ra, tp, a4
61:               srli         s11, gp, 17
62:               sll          s0, a7, s9
                  sub          t6, sp, t3
                  slt          s4, a0, a4
                  sub          s11, gp, s1
                  auipc        a3, 392621
67:               andi         s1, t6, -428
                  or           s7, a2, a4
                  sltu         s0, a6, s1
                  lui          sp, 744102
                  add          s10, t1, a5
                  beq          a3, a5, 78f
                  bgeu         s5, t6, 85f
74:               bgeu         t3, s9, 90f
                  srai         a3, s2, 21
                  beq          a2, a7, 88f
                  sltiu        s2, a3, 936
78:               auipc        s5, 956251
                  sra          a0, a2, t3
                  nop
                  slti         t1, s2, -891
                  bltu         a7, a0, 97f
                  add          a2, tp, t1
                  xor          t1, s11, s10
85:               bgeu         s8, s7, 101f
                  bgeu         s11, s7, 96f
                  andi         a6, t1, 1734
88:               addi         s5, s8, 1657
                  sltu         a2, s3, s5
90:               and          s8, s5, zero
                  auipc        t0, 309504
                  sub          s8, s6, a1
                  bne          a4, t2, 103f
                  auipc        sp, 412902
                  slt          s5, s7, a1
96:               addi         t5, s2, 442
97:               srli         a0, gp, 16
                  sll          sp, a6, ra
                  beq          t1, sp, 107f
                  slli         s11, a0, 9
101:              xori         a4, ra, -1672
                  bgeu         s7, s11, 114f
103:              xori         s7, s1, -974
                  srl          s5, t1, s6
                  sll          a6, s6, tp
                  bgeu         s3, s2, 108f
107:              or           s10, gp, a1
108:              add          a6, s4, a5
                  srl          s5, zero, s6
                  ori          ra, t5, 1476
                  slti         s10, s7, 1404
                  blt          sp, t5, 130f
                  srai         tp, s4, 23
114:              bltu         ra, t4, 120f
                  auipc        a4, 301247
                  ori          ra, s3, -573
                  sub          s3, t2, s10
                  bgeu         a4, a3, 119f
119:              bne          s7, t3, 125f
120:              and          s3, a3, t3
                  auipc        s1, 934000
                  srl          s10, s8, a1
                  bgeu         s5, ra, 135f
                  lui          s7, 177561
125:              sltiu        s7, s10, -263
                  auipc        t2, 757460
                  xori         a2, a2, 1758
                  add          s7, tp, s0
                  addi         s5, s5, -281
130:              lui          s6, 52039
                  xor          gp, s3, tp
                  add          s0, s6, t5
                  slti         s8, s4, 1205
                  ori          t5, s11, -734
135:              sra          s1, a2, s11
                  bne          s6, s5, 152f
                  srai         gp, a7, 1
                  la           s7, sub_1
                  srai         t3, a6, 4
                  auipc        t6, 126380
                  slti         a3, t5, -1336
                  xor          t4, s7, t3
                  addi         s7, s7, -94
                  slli         t4, t2, 27
main_j1:          jalr         tp, s7, 94 #jump main -> sub_1
                  addi         s1, a5, 893
                  srli         t1, a4, 4
                  sll          s2, tp, t4
                  auipc        ra, 718643
                  slli         a3, s2, 4
                  sll          s10, t2, a5
                  bne          s7, t2, 159f
                  srl          t0, a7, t2
                  sra          s7, s10, t0
                  addi         a7, gp, -687
                  and          a0, s1, gp
                  xor          t1, s5, s0
                  auipc        a4, 845147
                  bge          t2, s9, 154f
                  slt          tp, s3, s10
152:              blt          t5, ra, 162f
                  bltu         t5, s5, 169f
                  la           s10, sub_2
                  nop
                  slli         s2, a6, 14
                  and          s0, s0, s5
                  addi         s10, s10, 634
                  or           s8, a2, ra
                  sltu         ra, t5, s10
                  slli         a4, s4, 26
                  bne          t3, t1, main_j2 #branch to jump instr
                  lui          s1, 236296
main_j2:          jalr         tp, s10, -633 #jump main -> sub_2
154:              xor          t0, t1, s11
                  and          t3, a5, s5
                  addi         s1, t5, 1068
                  srli         a4, s7, 28
                  srl          s10, s0, a3
159:              add          a7, a7, t0
                  add          a4, ra, sp
                  blt          s9, t4, 173f
162:              srai         t5, t3, 24
                  ori          a0, a0, -1480
                  slt          a3, tp, a0
                  sltu         gp, t5, t1
                  bgeu         s8, t2, 176f
                  bne          gp, s6, 183f
                  blt          s0, a2, 169f
169:              auipc        s10, 482172
                  slti         t3, a7, -327
                  nop
                  auipc        t3, 748620
173:              slli         a0, t3, 21
                  lui          a7, 885986
                  sra          a0, a7, s6
176:              add          t5, ra, a4
                  slt          gp, a1, s3
                  beq          s2, s10, 188f
                  addi         t6, s11, -431
                  blt          a2, a7, 185f
                  auipc        a4, 921872
                  or           t4, a2, s6
183:              sra          s5, t3, gp
                  xori         s6, t5, -21
185:              ori          a7, a4, 556
                  sltu         t4, a2, s0
                  add          s2, s5, tp
188:              beq          sp, t3, 200f
                  sra          a3, gp, s4
                  srli         zero, s11, 11
                  srli         s11, s0, 31
                  beq          s5, a3, 209f
                  beq          t4, a2, 195f
                  xor          t2, a2, a5
195:              sltiu        sp, t6, -1805
                  srli         zero, s8, 28
                  srl          s0, a2, t2
                  slt          t5, s9, s8
                  blt          s11, s2, 215f
200:              sltu         s2, s0, a5
                  bgeu         s3, a0, 207f
                  lui          s10, 414909
                  blt          a3, sp, 209f
                  or           t1, t3, s4
                  sll          s2, s1, a0
                  ori          a4, t4, -1793
207:              and          s5, s4, s9
                  slli         s7, gp, 0
209:              sltu         a2, s2, s4
                  slti         s7, a4, -1753
                  or           s0, a6, t1
                  slli         sp, s10, 16
                  bne          s8, s3, 224f
                  slli         s3, a2, 20
215:              and          a3, a0, tp
                  or           s6, s10, s9
                  slli         s2, a3, 15
                  sll          a7, a3, s6
                  sltiu        t0, a5, -1611
                  andi         a4, t2, -1929
                  ori          gp, sp, -735
                  sub          t2, t3, s2
                  xor          a0, s5, s5
224:              sltu         s6, s6, t0
                  srl          s1, t6, ra
                  sra          zero, t5, a1
                  lui          s3, 736185
                  beq          t4, zero, 246f
                  sltiu        s8, a4, -1041
                  sltiu        t3, s5, 1098
                  srl          s7, s10, s2
                  sltu         s11, a1, s6
                  sltu         s10, t1, s3
                  andi         s8, s6, 1214
                  srai         t1, s0, 11
                  sltu         s3, tp, s10
                  beq          a0, s8, 255f
                  and          t1, a0, s1
                  bne          ra, s1, 247f
                  bltu         s0, s5, 241f
241:              addi         a0, s11, -1680
                  or           t4, a4, t2
                  bltu         t4, a7, 258f
                  bgeu         a0, s1, 247f
                  bge          s3, zero, 263f
246:              xor          s1, a1, s9
247:              srl          a0, t6, zero
                  addi         a3, a1, 1102
                  auipc        s3, 220606
                  srai         sp, s6, 6
                  sltu         zero, t1, s9
                  andi         t5, gp, -276
                  sub          s10, zero, s0
                  slli         ra, t5, 29
255:              sll          t0, t1, tp
                  andi         gp, s0, -1899
                  bltu         t6, t6, 267f
258:              bltu         ra, a6, 270f
                  slli         s4, a6, 13
                  slli         a7, t6, 0
                  lui          a2, 647162
                  and          a7, s5, ra
263:              srli         t1, s4, 15
                  auipc        s7, 167989
                  and          s4, t1, t2
                  slt          zero, sp, a1
267:              beq          t2, s11, 287f
                  srai         s10, a7, 26
                  andi         zero, s10, -1818
270:              bne          s11, t3, 285f
                  bgeu         s8, t5, 283f
                  sll          a6, t2, s5
                  srl          t2, t1, t5
                  slt          zero, a0, a7
                  sltiu        zero, s4, 1710
                  and          s2, t5, s8
                  slti         a0, ra, -105
                  bltu         s3, sp, 284f
                  blt          t4, s0, 297f
                  srli         s7, s10, 1
                  slti         t6, a3, 1692
                  sltiu        a2, s0, 1850
283:              bltu         t0, ra, 295f
284:              nop
285:              srl          t2, t1, a0
                  xori         s4, sp, -1990
287:              beq          a6, t1, 289f
                  nop
289:              sll          a4, a6, a0
                  addi         s11, s5, 1371
                  addi         sp, a2, -810
                  slti         zero, a5, -567
                  slti         t3, ra, 236
                  slt          s3, s6, t3
295:              add          a6, s1, gp
                  add          t6, a5, t3
297:              slli         s0, s7, 27
                  andi         s11, t6, 861
                  la x11, test_done
                  jalr x0, x11, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            srl          ra, s6, s6
                  auipc        a4, 1004647
                  srai         s8, t2, 10
                  lui          a3, 631621
                  addi         a5, a5, -48
                  sw           tp, 4(a5)
                  srai         sp, tp, 23
                  sltiu        zero, a5, -86
                  addi         t2, zero, 10 #init loop 0 counter
                  slti         zero, a5, 574
                  addi         t0, zero, 3 #init loop 0 limit
                  srl          t6, s11, sp
                  nop
                  srl          t4, a1, a3
                  sll          t6, a3, s6
sub_4_3_0_t:      and          s0, a2, tp
                  xor          a3, s6, sp
                  nop
                  addi         t2, t2, -1 #update loop 0 counter
                  srli         s3, s7, 30
                  slt          zero, a2, s6
                  bgeu         t2, t0, sub_4_3_0_t #branch for loop 0
                  xor          s6, sp, a0
                  addi         ra, zero, -5 #init loop 0 counter
                  or           a2, s0, s2
                  srl          tp, s8, s10
                  xor          a7, s4, s4
                  nop
                  addi         t4, zero, 3 #init loop 0 limit
sub_4_1_0_t:      andi         s5, tp, -1065
                  sll          s8, t2, s7
                  add          s10, t1, s4
                  addi         ra, ra, 4 #update loop 0 counter
                  srli         s6, t5, 9
                  auipc        zero, 795021
                  srli         s3, a5, 2
                  ori          a3, a2, -166
                  ori          s10, a7, -1839
                  slli         s10, a6, 8
                  slti         tp, s6, 1910
                  slli         t2, gp, 16
                  ori          a2, a1, -199
                  srl          a4, a3, t4
                  slli         s6, s1, 23
                  bne          ra, t4, sub_4_1_0_t #branch for loop 0
                  srli         s5, ra, 0
                  addi         s11, zero, 10 #init loop 0 counter
                  lui          s5, 661369
                  auipc        s5, 140922
                  srli         s2, a5, 24
                  addi         a7, zero, 10 #init loop 0 limit
                  lui          t2, 772660
                  xor          s1, s1, t4
                  sll          t2, s11, t0
sub_4_5_0_t:      xori         tp, zero, -658
                  sra          a6, a0, t1
                  srl          s6, t4, s7
                  slli         t2, a6, 23
                  addi         s11, s11, -9 #update loop 0 counter
                  auipc        sp, 314251
                  bgeu         s11, a7, sub_4_5_0_t #branch for loop 0
                  srl          tp, a5, s0
                  addi         a7, zero, 0 #init loop 0 counter
                  and          a6, gp, t2
                  and          sp, t1, t3
                  sll          sp, s4, gp
                  sub          s0, s4, t5
                  xor          s2, t2, t2
                  and          a3, t3, a7
                  srai         s10, a0, 5
                  sll          t1, a3, ra
                  addi         t0, zero, 13 #init loop 0 limit
                  lui          s3, 521779
                  srl          s5, s5, zero
sub_4_7_0_t:      addi         a3, s6, 1935
                  andi         t3, t2, -1797
                  srli         sp, a1, 4
                  addi         a7, a7, 4 #update loop 0 counter
                  and          sp, a7, a1
                  sltiu        a2, s3, -1072
                  or           gp, s11, s8
                  xor          t2, t6, s9
                  blt          a7, t0, sub_4_7_0_t #branch for loop 0
                  srl          a4, s0, s1
                  addi         a0, zero, 3 #init loop 1 counter
                  xor          sp, ra, ra
                  addi         a4, zero, 7 #init loop 1 limit
                  auipc        t4, 564787
sub_4_6_1_t:      sltu         t6, s3, t5
                  addi         a0, a0, 9 #update loop 1 counter
                  addi         a6, zero, 10 #init loop 0 counter
                  addi         s2, zero, 16 #init loop 0 limit
                  lui          s3, 565756
                  addi         zero, s10, 1955
sub_4_6_0_t:      addi         s1, s0, 694
                  addi         a6, a6, 6 #update loop 0 counter
                  bltu         a6, s2, sub_4_6_0_t #branch for loop 0
                  lui          s3, 471807
                  bltu         a0, a4, sub_4_6_1_t #branch for loop 1
                  nop
                  addi         s5, zero, 2 #init loop 0 counter
                  srli         t4, a2, 8
                  xori         a0, t4, 860
                  slli         t6, t4, 9
                  or           a6, a1, s6
                  nop
                  add          t1, zero, s0
                  nop
                  slli         gp, t6, 5
                  srli         s2, sp, 1
                  addi         s7, zero, 18 #init loop 0 limit
                  sub          gp, s9, s11
                  nop
                  nop
                  sub          a2, zero, s10
                  slli         tp, a2, 31
sub_4_2_0_t:      slti         a3, t2, 449
                  srl          zero, s6, a2
                  addi         s5, s5, 10 #update loop 0 counter
                  srai         gp, s10, 30
                  xor          t6, ra, s9
                  slt          t6, a0, s3
                  sll          s1, a3, s4
                  add          t2, a1, s3
                  add          a2, s2, s10
                  blt          s5, s7, sub_4_2_0_t #branch for loop 0
                  srai         a3, s5, 11
                  sltu         sp, t2, a4
                  blt          a6, t3, 5f
                  lui          s2, 338005
                  and          zero, ra, s2
                  slli         s8, s4, 27
5:                xor          s10, s6, sp
                  sltu         s4, s10, s4
                  auipc        a2, 317746
                  sub          s0, s2, a5
                  srai         t5, s3, 28
                  sub          t1, t0, a0
                  srli         t4, a6, 19
                  beq          s7, tp, 24f
                  slti         s2, a6, -995
                  bne          t1, s9, 19f
                  addi         a0, zero, 0 #init loop 0 counter
                  ori          s2, a7, 1983
                  auipc        t0, 474018
                  sltiu        s5, t0, -716
                  addi         zero, t6, 971
                  addi         a3, zero, 20 #init loop 0 limit
sub_4_4_0_t:      nop
                  auipc        a6, 269638
                  addi         a0, a0, 6 #update loop 0 counter
                  srli         s2, s6, 0
                  or           t2, zero, t4
                  slti         t1, s6, -722
                  and          s2, ra, s5
                  xori         a4, sp, 69
                  slt          s0, s10, t0
                  andi         s6, t1, 1064
                  sltiu        t5, sp, 2040
                  and          t2, a5, s0
                  bltu         a0, a3, sub_4_4_0_t #branch for loop 0
                  andi         t1, t1, -439
                  xor          sp, s9, a2
                  auipc        s0, 9672
                  slt          tp, s1, sp
                  srai         t6, s0, 7
19:               sll          s1, s11, s10
                  sltiu        a7, a5, -1485
                  sll          s8, s9, a6
                  bltu         s4, t6, 36f
                  and          t1, t5, s0
24:               add          s3, s9, s2
                  and          s8, a6, s0
                  nop
                  slli         s10, a0, 14
                  sra          ra, a4, a2
                  srli         s11, a1, 5
                  andi         sp, t2, 455
                  sra          s6, s0, a4
                  xori         s3, tp, 1381
                  srai         t6, t2, 6
                  or           t3, a5, gp
                  srai         a2, t3, 27
36:               and          t5, t5, s9
                  sll          s6, zero, s3
                  sltiu        s7, a3, 1287
                  nop
                  srai         t5, s4, 13
                  slli         zero, t2, 14
                  bne          t1, a2, 51f
                  sra          tp, s7, sp
                  sltu         s5, s6, tp
                  and          a3, t3, a6
                  nop
                  sub          t5, a2, t0
                  beq          a7, s4, 61f
                  bge          t5, a1, 56f
                  srli         a7, zero, 6
51:               xor          tp, t4, s11
                  srai         s6, a3, 0
                  bltu         t3, a1, 59f
                  sltu         t4, sp, t6
                  bgeu         t2, a6, 72f
56:               slli         s1, s5, 9
                  bge          s9, s4, 75f
                  add          ra, tp, s4
59:               sltu         s7, a2, t3
                  or           s10, ra, a6
61:               bne          a1, a5, 68f
                  xori         t6, s2, 657
                  sub          s10, a3, a2
                  bltu         s9, s9, 81f
                  bge          a2, sp, 71f
                  bne          zero, sp, 74f
                  and          a2, s6, s0
68:               ori          gp, a4, -1023
                  slli         t0, t1, 0
                  lui          gp, 103153
71:               blt          s5, t4, 83f
72:               slt          s2, s11, t4
                  bgeu         s8, s5, 76f
74:               slt          t0, s1, s11
75:               bltu         a7, a1, 94f
76:               xor          s6, t2, a0
                  bltu         sp, s0, 90f
                  slli         t2, s11, 15
                  sll          a3, a4, sp
                  slli         zero, a4, 15
81:               lui          t4, 533030
                  or           s8, s3, s3
83:               bge          sp, s5, 90f
                  srl          t5, sp, sp
                  xori         s1, t2, 1664
                  bgeu         gp, s8, 99f
                  xor          tp, s4, sp
                  beq          a7, s1, 101f
                  nop
90:               auipc        s1, 96064
                  nop
                  auipc        s2, 693671
                  sltiu        t5, s3, -247
94:               xor          s8, s3, a3
                  bgeu         s0, s11, 114f
                  srai         s11, a3, 26
                  sub          a0, t3, t5
                  andi         a0, a4, -1732
99:               bge          s11, s2, 114f
                  slti         zero, s9, 1116
101:              sra          t6, a5, t0
                  ori          s2, s2, -1789
                  blt          s8, t1, 120f
                  bne          s4, s7, 116f
                  sll          s11, s0, s10
                  sltu         t5, gp, s0
                  bne          t6, zero, 120f
                  xor          s10, t5, s11
                  sra          s4, a1, gp
                  blt          a5, t4, 130f
                  or           t6, a1, s5
                  add          s1, s3, a2
                  sll          a6, t4, s9
114:              sltiu        a4, s7, -822
                  sll          t3, t2, s5
116:              sll          sp, a7, s9
                  xori         s2, a6, 1901
                  andi         t4, a2, 1853
                  slli         sp, t1, 10
120:              nop
                  sll          a7, s10, s5
                  addi         a4, a5, -1894
                  sub          t1, s4, zero
                  slti         tp, s1, -631
                  or           a3, gp, t0
                  xori         s8, s11, 62
                  andi         s11, t5, 1597
                  bne          tp, s11, 139f
                  ori          zero, t5, -1716
130:              srai         s0, a1, 20
                  bgeu         tp, s4, 144f
                  sub          ra, t0, s11
                  sll          t1, sp, t1
                  blt          ra, s0, 135f
135:              andi         s10, s9, -1265
                  bne          a6, gp, 149f
                  slti         s8, a4, -812
                  ori          sp, a2, -1495
139:              srl          s7, t5, s5
                  srl          zero, a3, a3
                  beq          s11, s5, 146f
                  addi         a0, a4, 1538
                  slt          s7, a3, t3
144:              bltu         s8, s5, 157f
                  ori          a4, a6, 198
146:              xori         a6, s6, -1780
                  sltu         t6, s2, t1
                  srl          a6, a3, s5
149:              blt          s2, a7, 164f
                  sll          s1, a7, a4
                  beq          zero, s11, 157f
                  slli         t5, t2, 23
                  bge          s6, tp, 165f
                  xor          zero, s0, a5
                  srai         t3, a7, 17
                  and          s8, ra, s9
157:              srl          tp, a2, a2
                  beq          t2, s9, 171f
                  sltiu        t1, t6, -884
                  slli         s2, s3, 23
                  sub          s6, a7, t3
                  srai         ra, a1, 11
                  bltu         t6, s5, 175f
164:              sub          t6, a0, a2
165:              andi         t0, a6, -647
                  slti         s6, s1, 67
                  nop
                  slli         a7, s6, 6
                  and          s1, s5, t4
                  addi         s0, s9, 1129
171:              auipc        t2, 507227
                  ori          s2, s0, 867
                  sll          t1, t4, s10
                  auipc        s6, 28410
175:              srai         a0, s6, 19
                  sltiu        t1, tp, 1041
                  sra          a0, a4, s8
                  srl          t4, s1, zero
                  blt          tp, a2, 196f
                  srai         a3, t0, 11
                  sra          a7, a3, a6
                  xor          s1, s8, s3
                  slli         a0, s4, 3
                  sltu         s4, s8, s8
                  sltu         s0, t1, s6
                  bge          t1, gp, 197f
                  bge          t1, s1, 199f
                  bltu         a5, zero, 191f
                  srli         s5, t0, 12
                  addi         a6, s3, -1548
191:              slli         ra, t3, 26
                  bne          t6, s0, 205f
                  and          zero, a6, t0
                  addi         t6, zero, -6 #init loop 1 counter
                  addi         s6, zero, -15 #init loop 1 limit
                  sra          s2, s4, ra
                  srl          t2, s11, a3
                  andi         t0, zero, 1923
                  lui          s1, 240267
                  lui          t3, 720403
                  srai         t2, a3, 25
                  andi         s0, ra, -1043
sub_4_8_1_t:      andi         a4, gp, -1624
                  slli         t0, gp, 2
                  srl          a3, s0, gp
                  addi         t6, t6, -3 #update loop 1 counter
                  lui          t2, 1031535
                  srai         t3, gp, 18
                  nop
                  srli         zero, a1, 24
                  addi         a7, zero, -9 #init loop 0 counter
                  addi         ra, zero, 4 #init loop 0 limit
                  andi         gp, gp, 559
sub_4_8_0_t:      auipc        a2, 291382
                  addi         a7, a7, 4 #update loop 0 counter
                  blt          a7, ra, sub_4_8_0_t #branch for loop 0
                  xori         a4, zero, -177
                  beq          t6, s6, sub_4_8_1_t #branch for loop 1
                  or           s2, t2, a0
                  sltiu        s6, a4, 429
                  and          ra, ra, a3
196:              slli         s5, sp, 3
197:              sltu         t3, s6, a4
                  nop
199:              slti         a4, s1, -123
                  ori          t3, a3, -395
                  sltiu        s1, a0, 204
                  andi         t3, s7, 391
                  sltu         gp, s10, a6
                  sltiu        ra, t2, -1017
205:              nop
                  srl          s6, a5, tp
                  sltu         s0, t2, a0
                  ori          s5, t2, -1308
                  sltu         gp, t1, t4
                  beq          s2, a3, 217f
                  blt          t3, t0, 225f
                  sub          s4, t1, a7
                  srli         s4, a6, 10
                  ori          a7, s2, -1048
                  blt          s4, t5, 232f
                  sra          s10, s8, s6
217:              sub          s3, s2, s5
                  auipc        zero, 1043630
                  sltiu        tp, t0, 967
                  blt          t3, tp, 229f
                  bgeu         s8, t6, 240f
                  or           t6, s3, a5
                  bgeu         t4, gp, 229f
                  srli         t2, s0, 27
225:              srli         t0, a7, 17
                  bltu         t4, t5, 234f
                  lui          s5, 902906
                  slli         a6, s4, 15
229:              blt          t2, gp, 246f
                  bgeu         s5, t5, 237f
                  beq          s5, a4, 232f
232:              or           zero, a5, a3
                  sub          s2, s2, s5
234:              bge          s0, s7, 254f
                  and          sp, s1, a5
                  xor          s8, a7, a6
237:              sltiu        t0, t0, -1894
                  srl          a6, a1, sp
                  ori          s11, a6, 1945
240:              srli         s0, a3, 29
                  srli         s3, zero, 26
                  sll          s11, ra, s5
                  bltu         s4, t0, 256f
                  slti         t2, tp, -14
                  srai         t2, gp, 30
246:              xori         a0, t0, 886
                  add          a3, sp, s10
                  sll          s3, s4, ra
                  bne          a5, a3, 267f
                  beq          s10, a3, 269f
                  slti         a6, a0, -937
                  lui          s2, 1003642
                  srli         tp, t6, 8
254:              add          s7, a2, sp
                  slli         s4, s3, 0
256:              sll          a3, s5, a1
                  auipc        a4, 293384
                  ori          t6, s4, -1967
                  bge          t1, s8, 266f
                  blt          s4, a3, 264f
                  bne          a5, s6, 274f
                  add          t4, s2, t6
                  auipc        s6, 428015
264:              slti         a7, s5, -2044
                  or           s2, a7, t1
266:              addi         t6, t4, -798
267:              addi         a6, ra, 358
                  sltu         s10, s7, a6
269:              andi         tp, s6, -1364
                  or           tp, s0, s6
                  srli         t0, t2, 12
                  bne          s1, t0, 279f
                  blt          s2, s9, 292f
274:              sltiu        s7, a2, -1205
                  beq          s9, a5, 279f
                  sltiu        s11, sp, 1022
                  and          a3, s6, t0
                  addi         s5, t2, -960
279:              sltiu        t2, sp, 1103
                  ori          a0, s1, -693
                  or           ra, s7, s8
                  ori          s6, tp, -1077
                  blt          t5, s7, 284f
284:              srli         s0, t5, 30
                  bne          s1, t1, 297f
                  sltiu        a2, s5, 1150
                  bne          s8, t4, 300f
                  sra          a2, t0, s5
                  slt          s11, t6, tp
                  or           a7, ra, a1
                  sra          t1, s10, s0
292:              bgeu         t1, t0, 305f
                  bgeu         s10, zero, 312f
                  blt          a7, a1, 303f
                  ori          gp, ra, 528
                  srli         t3, tp, 20
297:              slti         a2, s2, -358
                  add          s7, s11, t6
                  andi         a3, s6, -1309
300:              xor          t4, s2, a7
                  srai         a0, a1, 16
                  and          s4, a2, zero
303:              auipc        gp, 648223
                  nop
305:              sltiu        a4, sp, -1329
                  sll          t2, a4, a7
                  sltu         a4, t5, tp
                  sra          s0, ra, t1
                  slti         t1, a5, 1119
                  addi         s2, zero, 2 #init loop 0 counter
                  addi         s0, zero, -10 #init loop 0 limit
sub_4_0_0_t:      xori         t4, ra, 77
                  addi         s2, s2, -3 #update loop 0 counter
                  beq          s2, s0, sub_4_0_0_t #branch for loop 0
                  slti         s8, a7, -1135
                  blt          t3, ra, 323f
                  addi         tp, t5, 1899
312:              srli         s3, s6, 18
                  slt          s5, s8, t1
                  bne          s8, s6, 331f
                  srli         t3, s11, 31
                  lui          t4, 1033263
                  addi         a4, zero, -8 #init loop 1 counter
                  addi         tp, zero, 13 #init loop 1 limit
                  xor          a3, t4, s4
sub_4_9_1_t:      or           ra, a3, a3
                  addi         a4, a4, 7 #update loop 1 counter
                  srl          s8, sp, a5
                  nop
                  addi         t5, zero, -3 #init loop 0 counter
                  addi         s2, zero, 9 #init loop 0 limit
                  or           s5, a6, a6
sub_4_9_0_t:      sub          s3, tp, a6
                  addi         t5, t5, 2 #update loop 0 counter
                  blt          t5, s2, sub_4_9_0_t #branch for loop 0
                  sub          gp, s11, s9
                  bne          a4, tp, sub_4_9_1_t #branch for loop 1
                  sub          a6, a3, s10
                  auipc        t4, 683387
                  and          s8, gp, sp
                  sll          s6, s7, a1
                  sll          t3, a7, t5
                  sll          sp, s11, sp
                  bne          gp, t6, 329f
323:              add          s8, zero, zero
                  slli         s7, a7, 1
                  xor          s11, a2, t5
                  bge          t6, s4, 339f
                  sltu         t1, s6, a6
                  slti         s3, ra, -268
329:              lui          s6, 585131
                  bne          t4, s11, 342f
331:              blt          s5, s4, 349f
                  beq          ra, t3, 343f
                  srli         t1, tp, 22
                  xori         t2, a4, -773
                  andi         s10, gp, -1209
                  ori          s2, s9, 929
                  sra          s6, s6, t6
                  auipc        t2, 854921
339:              slti         a0, t2, 1080
                  xori         s2, ra, 335
                  lui          s0, 591481
342:              srli         t4, a7, 17
343:              ori          s8, s2, 518
                  lui          a2, 808767
                  srai         t5, s0, 19
                  or           t2, s4, t2
                  andi         s4, s5, -1888
                  sub          s2, a1, a3
349:              slt          sp, t3, t5
                  lui          t0, 547641
                  sub          t5, t4, s8
                  xori         s0, s6, -63
                  sub          gp, tp, gp
                  slti         gp, s6, -279
                  ori          t6, tp, -1652
                  beq          t2, s10, 362f
                  nop
                  xori         s6, a7, 1171
                  slt          t4, a7, s6
                  ori          s8, t5, -1645
                  lui          s2, 219562
362:              or           a7, s9, s6
                  addi         a7, t5, -613
                  add          s2, s9, s8
                  auipc        a3, 1014122
                  lui          s7, 280195
                  beq          s9, t0, 379f
                  srl          ra, a5, s6
                  add          ra, s10, t3
                  slti         a0, a2, -1340
                  bltu         t5, t0, 374f
                  beq          ra, a4, 385f
                  addi         tp, sp, -541
374:              addi         t5, s1, -678
                  bne          s4, sp, 381f
                  addi         a6, t2, -720
                  nop
                  add          sp, t5, a1
379:              xor          gp, s3, s10
                  and          zero, s4, gp
381:              and          s6, s7, a4
                  sltu         sp, tp, s5
                  xori         t6, t3, -118
                  addi         a0, tp, -624
385:              andi         s2, tp, 576
                  srli         zero, a6, 27
                  nop
                  bge          t6, a6, 405f
                  xor          s3, ra, t0
                  beq          tp, s10, 405f
                  slt          zero, s3, t3
                  srli         t5, t5, 3
                  addi         a0, s2, -635
                  sltiu        t2, a0, 589
                  sra          ra, a1, gp
                  srl          t3, t5, t1
                  sll          a7, s3, s3
                  xor          t2, sp, a1
                  sub          s11, s7, tp
                  ori          a6, s8, -1528
                  andi         s2, a6, 1098
                  ori          a0, s9, 1041
                  bne          t4, t2, 408f
                  andi         tp, t4, 1758
405:              or           ra, a2, s3
                  nop
                  bge          s2, t4, 427f
408:              bge          a1, a5, 425f
                  addi         t2, a4, 309
                  xor          t1, a5, t4
                  andi         sp, t2, -1760
                  beq          sp, t4, 420f
                  slti         t6, sp, 1792
                  beq          s6, a6, 421f
                  slli         sp, s3, 21
                  bge          zero, s11, 430f
                  bge          s8, t2, 430f
                  slti         t5, t1, -1145
                  slti         a6, a3, 463
420:              bgeu         s5, t2, 431f
421:              nop
                  xor          s4, ra, s9
                  srl          s8, a7, t4
                  auipc        t1, 44716
425:              sltiu        a4, t6, -1272
                  bgeu         s3, t5, 439f
427:              sltiu        a0, t2, 1225
                  xor          t0, s3, t2
                  sltu         ra, s0, a4
430:              sltu         t4, sp, s8
431:              auipc        t2, 746042
                  srai         a7, tp, 1
                  sra          t2, a3, t0
                  ori          t3, a1, -597
                  andi         s5, s4, -1138
                  bge          a3, s2, 443f
                  sub          s1, a3, s7
                  add          ra, a5, s5
439:              sltiu        a4, a3, 1882
                  add          gp, s3, a1
                  bge          a2, a3, 450f
                  nop
443:              srli         s1, s0, 29
                  srli         s1, zero, 22
                  auipc        s7, 514221
                  slti         s11, t5, -166
                  addi         s11, zero, 9 #init loop 1 counter
                  auipc        s5, 958589
                  sltiu        t2, a0, -1966
                  srl          s4, a2, a4
                  ori          a3, s6, -577
                  sra          s0, t4, t0
                  nop
                  addi         s8, zero, 7 #init loop 1 limit
                  slli         a7, t6, 15
                  ori          t1, s0, -620
sub_4_10_1_t:     slt          tp, t5, t6
                  addi         s11, s11, -5 #update loop 1 counter
                  sra          t1, t2, s7
                  and          s0, s7, s9
                  addi         s3, zero, -4 #init loop 0 counter
                  slli         s4, s11, 12
                  addi         t3, zero, 16 #init loop 0 limit
                  sll          t5, s10, t0
                  xori         s10, s9, -5
                  sltiu        t2, t2, -1179
                  sltiu        s6, s0, 1475
                  srai         s1, t0, 31
                  ori          s10, s5, 297
                  and          a3, s10, s1
sub_4_10_0_t:     ori          a0, tp, 1192
                  xor          s0, t4, s6
                  addi         s3, s3, 2 #update loop 0 counter
                  addi         s0, a7, 898
                  lui          gp, 622715
                  beq          s3, t3, sub_4_10_0_t #branch for loop 0
                  slti         s0, s10, -1680
                  bgeu         s11, s8, sub_4_10_1_t #branch for loop 1
                  andi         a0, s1, 1466
                  lui          t0, 671655
                  nop
                  sra          s6, gp, t4
450:              ori          s7, t3, 1839
                  auipc        gp, 145512
                  blt          s2, s8, 457f
                  beq          gp, s8, 472f
                  bne          s1, t3, 461f
                  bne          ra, s1, 472f
                  slti         a0, a6, 1808
457:              lui          s10, 1008779
                  slti         s6, s8, -347
                  srl          s2, a4, s0
                  andi         s7, t1, -1707
461:              auipc        s10, 181667
                  slli         t4, tp, 16
                  sra          tp, a7, t1
                  sra          t2, s10, t1
                  sltu         s11, zero, s8
                  sra          t2, a0, s9
                  xor          t5, s3, t5
                  slti         sp, t1, 900
                  srli         sp, sp, 19
                  slli         a3, t2, 20
                  xori         t1, sp, -1700
472:              nop
                  srli         s6, a5, 2
                  bgeu         t5, s0, 491f
                  blt          s4, s0, 493f
                  blt          a2, t6, 491f
                  sll          s6, s10, ra
                  and          a6, gp, sp
                  srai         a6, a4, 17
                  beq          s9, s7, 497f
                  add          t6, t6, s4
                  and          a6, a5, sp
                  sll          t1, t0, t5
                  srli         zero, a5, 1
                  auipc        s0, 363897
                  add          t0, sp, tp
                  addi         a3, t1, 409
                  sltu         a0, s11, t4
                  sltu         gp, t4, s8
                  nop
491:              addi         s5, s6, -260
                  srai         s4, t0, 6
493:              and          t6, a2, s2
                  bgeu         a0, t6, 502f
                  slti         s8, s4, -184
                  addi         a2, a3, 606
497:              beq          s6, a5, 500f
                  bge          t6, a5, 517f
                  srl          a4, a1, a6
500:              xor          t4, t5, s7
                  slt          s7, s5, t2
502:              andi         t5, a5, 1582
                  bltu         t5, s7, 516f
                  add          s8, s6, sp
                  and          t6, s9, s9
                  sra          a7, t2, s8
                  bge          s10, a7, 519f
                  bne          gp, tp, 509f
509:              add          t6, t5, s5
                  srai         s4, t2, 8
                  nop
                  auipc        s7, 908130
                  sub          s2, a2, s6
                  ori          s5, t4, 1749
                  beq          s9, zero, 527f
516:              sll          t2, a7, s2
517:              slli         s6, s8, 10
                  srl          s1, s1, s8
519:              bne          s2, s8, 532f
                  add          tp, t4, t1
                  bgeu         a3, s10, 535f
                  lui          t6, 316821
                  or           t0, t2, s2
                  xor          tp, a0, a4
                  or           s10, a3, s6
                  auipc        a3, 748118
527:              bne          a4, s5, 547f
                  srai         tp, a3, 29
                  xori         s4, t5, 1666
                  bne          ra, a6, 543f
                  or           a7, t6, t0
532:              sub          s1, a0, t4
                  sltu         t6, a6, sp
                  and          s5, a6, s8
535:              bne          s6, a6, 539f
                  add          s8, t3, s8
                  srai         s2, a3, 22
                  add          t5, t6, zero
539:              slti         a3, s1, -471
                  sltu         ra, a4, s11
                  slti         t0, a0, -743
                  bge          t4, t4, 555f
543:              slli         zero, t1, 20
                  srai         s2, t6, 27
                  sltu         t2, gp, s6
                  slt          a4, a1, a0
547:              sub          s3, s5, sp
                  ori          a3, t1, -1035
                  addi         sp, a7, -651
                  auipc        gp, 21743
                  add          ra, s11, s10
                  sltiu        s8, s2, 1955
                  sub          t0, a3, t0
                  ori          gp, a1, -1347
555:              sll          s1, s10, s2
                  and          a7, a1, a0
                  sltiu        t0, s6, 1272
                  bgeu         t2, t0, 570f
                  or           s7, a6, tp
                  xor          s1, a5, s10
                  auipc        a6, 20095
                  nop
                  bgeu         a7, t1, 570f
                  srl          s7, t4, a3
                  bge          s0, s9, 571f
                  srli         s10, t2, 14
                  sub          t6, t1, t2
                  blt          gp, a2, 581f
                  slti         a3, s3, -721
570:              slt          s3, s7, s9
571:              sub          a3, a2, s10
                  xori         gp, sp, 1310
                  slti         t5, a3, -320
                  add          s4, t0, a0
                  slti         a3, s5, -1938
                  blt          t5, zero, 582f
                  srl          s8, a1, s6
                  and          a3, s8, sp
                  bgeu         a3, sp, 580f
580:              slt          t5, s6, t0
581:              lui          a6, 412948
582:              srai         s1, s11, 28
                  xor          a4, s4, t1
                  srli         a2, tp, 27
                  nop
                  bgeu         t0, a1, 595f
                  and          a7, t5, t5
                  xori         a6, tp, 33
                  sltiu        s5, s4, -1268
                  xori         zero, tp, 388
                  add          s1, s3, s10
                  srl          s2, gp, t5
                  sra          s0, a1, t2
                  sra          t1, a0, a0
595:              xor          s1, s4, a7
                  slt          s3, t4, a5
                  xor          ra, a6, ra
                  lw           tp, 4(a5)
                  slli         zero, t4, 2
                  nop
                  srli         s4, t6, 16
                  srl          sp, s7, a2
                  xori         s2, a5, -227
                  addi         a5, a5, 48
                  srl          zero, s7, a3
                  sltiu        t5, s8, 1698
                  auipc        s7, 678617
836:              addi x19, x4, 0
836:              jalr x19, x19, 0
sub_1:            lui          s0, 129539
                  or           s5, t5, a2
                  addi         t2, a4, 141
                  xori         zero, a1, 84
                  xor          s0, t6, a6
                  sltu         s0, s0, s11
                  addi         a5, a5, -16
                  sw           tp, 4(a5)
                  nop
                  and          t4, tp, a5
                  sltu         a7, s2, t6
                  xori         t3, s8, 1157
                  addi         s8, zero, -7 #init loop 1 counter
                  xor          a2, s11, s7
                  andi         s11, s1, -613
                  sra          s10, ra, sp
                  addi         t2, zero, -14 #init loop 1 limit
sub_1_5_1_t:      slti         s3, a7, 791
                  addi         s6, sp, 1384
                  addi         s8, s8, -7 #update loop 1 counter
                  xor          s0, zero, t6
                  addi         s2, zero, -7 #init loop 0 counter
                  or           a2, s4, a2
                  addi         a6, zero, -12 #init loop 0 limit
                  sll          gp, s8, s0
                  sltiu        s0, t4, 637
                  srl          s11, t3, s1
sub_1_5_0_t:      xori         a2, s5, 562
                  addi         s2, s2, -5 #update loop 0 counter
                  sub          ra, s4, t6
                  bne          s2, a6, sub_1_5_0_t #branch for loop 0
                  addi         t5, a3, 1959
                  bne          s8, t2, sub_1_5_1_t #branch for loop 1
                  slt          s1, zero, ra
                  addi         a0, zero, -2 #init loop 1 counter
                  addi         tp, zero, 18 #init loop 1 limit
sub_1_11_1_t:     xori         s6, a5, 1008
                  srl          t1, t5, a6
                  addi         a0, a0, 5 #update loop 1 counter
                  addi         t0, zero, 6 #init loop 0 counter
                  addi         s8, zero, -1 #init loop 0 limit
sub_1_11_0_t:     nop
                  addi         t0, t0, -7 #update loop 0 counter
                  srai         a2, sp, 7
                  bne          t0, s8, sub_1_11_0_t #branch for loop 0
                  blt          a0, tp, sub_1_11_1_t #branch for loop 1
                  slli         a6, a2, 19
                  addi         t3, zero, 1 #init loop 1 counter
                  addi         s5, zero, 10 #init loop 1 limit
sub_1_4_1_t:      auipc        a2, 827015
                  addi         t3, t3, 4 #update loop 1 counter
                  or           t1, s3, s9
                  addi         ra, zero, 3 #init loop 0 counter
                  addi         s3, zero, 9 #init loop 0 limit
sub_1_4_0_t:      sltiu        a3, s7, -902
                  addi         ra, ra, 4 #update loop 0 counter
                  bltu         ra, s3, sub_1_4_0_t #branch for loop 0
                  bltu         t3, s5, sub_1_4_1_t #branch for loop 1
                  slt          t1, s4, a5
                  addi         t6, zero, 5 #init loop 1 counter
                  addi         s10, zero, 5 #init loop 1 limit
                  and          a2, t5, tp
                  ori          s4, ra, 106
                  srl          s2, t5, t4
sub_1_12_1_t:     xori         a6, s2, 545
                  lui          a0, 108873
                  addi         t6, t6, -3 #update loop 1 counter
                  andi         sp, ra, -400
                  addi         gp, zero, 3 #init loop 0 counter
                  addi         s11, zero, 17 #init loop 0 limit
sub_1_12_0_t:     add          s1, s3, s5
                  addi         gp, gp, 2 #update loop 0 counter
                  bne          gp, s11, sub_1_12_0_t #branch for loop 0
                  bgeu         t6, s10, sub_1_12_1_t #branch for loop 1
                  xor          a6, s9, t4
                  addi         a4, zero, 2 #init loop 0 counter
                  xori         s3, s1, -383
                  xor          gp, s1, s9
                  srl          s1, t3, a7
                  sra          a7, s11, zero
                  srli         s7, a6, 20
                  slt          sp, s11, t1
                  sltu         t4, t4, gp
                  srai         a0, gp, 16
                  sll          a3, a0, s7
                  and          t0, s0, s3
                  or           t2, s4, a5
                  addi         a2, zero, -11 #init loop 0 limit
                  slt          t2, a4, a2
                  xor          t0, t5, s4
                  sltiu        a3, a1, 1453
                  sltu         gp, s4, s1
sub_1_2_0_t:      and          s6, s3, s6
                  auipc        s1, 288506
                  addi         a4, a4, -4 #update loop 0 counter
                  sra          t5, t3, a0
                  xor          s6, s0, t1
                  lui          a0, 331026
                  srli         s5, a2, 6
                  sltiu        t0, s3, 157
                  srai         a3, t1, 23
                  srl          s6, a4, s2
                  bge          a4, a2, sub_1_2_0_t #branch for loop 0
                  slt          a0, a4, s4
                  addi         a7, zero, -3 #init loop 0 counter
                  addi         s6, zero, 5 #init loop 0 limit
                  xor          a4, ra, a1
sub_1_0_0_t:      addi         zero, a4, -1886
                  lui          t1, 649336
                  addi         a7, a7, 6 #update loop 0 counter
                  blt          a7, s6, sub_1_0_0_t #branch for loop 0
                  and          s0, a2, a3
                  addi         s8, zero, 10 #init loop 1 counter
                  srl          a6, a1, s3
                  slli         a2, s5, 8
                  xori         t3, a4, 453
                  sltu         s11, ra, a0
                  addi         s10, zero, 5 #init loop 1 limit
sub_1_9_1_t:      and          s2, s0, s10
                  sub          zero, a1, t3
                  slt          a2, t3, a5
                  sltiu        s4, a6, -1283
                  xor          s4, tp, zero
                  sll          a3, s8, s4
                  addi         s8, s8, -2 #update loop 1 counter
                  or           t1, gp, t2
                  srli         t0, s6, 19
                  srai         a2, s10, 31
                  addi         t6, zero, -8 #init loop 0 counter
                  sll          s4, a0, a5
                  addi         a0, t1, -1606
                  add          t5, s2, a4
                  addi         sp, zero, 15 #init loop 0 limit
                  lui          s2, 335310
                  nop
                  auipc        zero, 540538
sub_1_9_0_t:      slti         s0, s1, -1866
                  addi         t6, t6, 1 #update loop 0 counter
                  sub          tp, s6, a4
                  bltu         t6, sp, sub_1_9_0_t #branch for loop 0
                  add          s2, t1, s5
                  sltiu        zero, s8, -1880
                  bgeu         s8, s10, sub_1_9_1_t #branch for loop 1
                  srai         s11, s7, 1
                  addi         gp, zero, 5 #init loop 0 counter
                  ori          s10, a2, -225
                  add          s6, s8, a3
                  srli         s10, s5, 26
                  ori          a0, s11, -427
                  auipc        a6, 24471
                  addi         t6, zero, 9 #init loop 0 limit
                  addi         a4, s6, -1865
                  xor          a0, t1, a1
                  xori         s2, a4, -830
                  sll          s6, s8, a7
sub_1_10_0_t:     xori         s5, t2, 1384
                  srli         a4, s2, 5
                  addi         gp, gp, 5 #update loop 0 counter
                  andi         s4, s4, -1017
                  andi         s11, tp, 1362
                  slli         t2, tp, 17
                  srli         s1, a7, 15
                  sra          t3, t4, a2
                  blt          gp, t6, sub_1_10_0_t #branch for loop 0
                  slt          s6, a6, s2
                  addi         sp, zero, 5 #init loop 0 counter
                  addi         t3, s2, -1207
                  sltu         s10, a5, gp
                  sll          t1, a7, s8
                  ori          tp, a4, -534
                  slt          s3, a7, t3
                  slt          a4, s3, s3
                  addi         a7, zero, -16 #init loop 0 limit
                  xori         s3, gp, 31
sub_1_7_0_t:      addi         t3, s6, -1010
                  and          t5, a2, a7
                  sltiu        s1, t6, -541
                  ori          a0, a4, -174
                  addi         sp, sp, -4 #update loop 0 counter
                  xori         s1, s7, -297
                  slti         s8, gp, 1796
                  sub          s0, t6, a3
                  sltiu        a6, a4, 1720
                  srl          zero, s4, t0
                  bge          sp, a7, sub_1_7_0_t #branch for loop 0
                  xor          s3, s7, zero
                  addi         sp, zero, 3 #init loop 1 counter
                  addi         t3, zero, 4 #init loop 1 limit
                  slt          s7, s8, s0
sub_1_1_1_t:      xor          s3, s0, t2
                  xor          s10, s1, t4
                  addi         sp, sp, 5 #update loop 1 counter
                  addi         gp, zero, -5 #init loop 0 counter
                  addi         tp, zero, -8 #init loop 0 limit
                  srai         t2, a3, 17
                  sll          a2, s7, t2
                  andi         s10, t0, 498
sub_1_1_0_t:      slti         s5, t5, 1698
                  sltiu        a6, t2, 1613
                  addi         gp, gp, -3 #update loop 0 counter
                  beq          gp, tp, sub_1_1_0_t #branch for loop 0
                  nop
                  blt          sp, t3, sub_1_1_1_t #branch for loop 1
                  ori          s2, s10, -613
                  slt          t0, s11, a1
                  bltu         s4, t5, 21f
                  ori          s4, t2, -869
                  andi         tp, s2, 1078
                  auipc        a6, 490518
                  blt          s6, s6, 17f
                  slt          t2, t6, s3
                  srli         s3, t4, 22
                  srli         sp, s2, 10
                  srl          ra, s11, s10
                  andi         t3, s6, 1473
                  sltiu        tp, zero, 1237
                  bne          a5, a2, 28f
                  or           s0, a3, s3
                  bgeu         t1, t6, 29f
                  ori          t3, s8, 47
                  srli         s2, s7, 6
17:               andi         s0, tp, -367
                  andi         a0, a5, 1389
                  andi         t2, s8, -1587
                  andi         s10, a1, 140
21:               or           s3, a7, t3
                  srli         s4, tp, 4
                  slt          a0, a2, ra
                  srl          s2, sp, a3
                  beq          t3, s4, 35f
                  srl          s10, s2, t6
                  ori          t2, zero, -1776
28:               auipc        ra, 272998
29:               sra          a4, a3, a7
                  blt          a2, s11, 48f
                  sra          t3, t5, s11
                  lui          s8, 758491
                  lui          a2, 767284
                  or           t4, a3, tp
35:               bgeu         a1, a3, 41f
                  lui          a3, 31905
                  bge          s2, t6, 45f
                  slti         s0, s8, -1803
                  nop
                  slli         s5, s1, 25
41:               sltu         t1, s1, s7
                  slt          t4, t3, zero
                  slli         s7, a7, 29
                  bge          s1, zero, 53f
45:               andi         s10, s2, -22
                  and          s2, t1, s9
                  and          a3, t5, t0
48:               srl          a3, s10, s10
                  bgeu         s10, a3, 66f
                  bltu         gp, zero, 51f
51:               blt          s6, s11, 60f
                  sra          s3, s10, s9
53:               sll          s2, a3, t1
                  add          tp, s8, s0
                  nop
                  ori          sp, a4, 637
                  xor          t2, t3, a1
                  addi         s11, a6, 50
                  xori         sp, s5, -1969
60:               sltiu        a6, t6, -93
                  sltu         s7, a5, a6
                  bltu         s0, s2, 68f
                  bgeu         a3, a6, 80f
                  and          t1, s1, a2
                  bgeu         tp, s8, 67f
66:               srli         ra, t2, 10
67:               nop
68:               auipc        s0, 986182
                  bltu         ra, s11, 71f
                  blt          t3, a7, 74f
71:               or           s5, t1, a1
                  srai         a0, s11, 6
                  lui          t1, 381689
74:               xori         a7, t5, 1568
                  addi         s11, s3, -547
                  sltiu        s5, s3, -1023
                  slli         s3, s7, 30
                  bge          zero, s8, 91f
                  sll          t5, t6, t5
80:               slt          t4, s8, a6
                  andi         gp, a5, 573
                  sltu         a2, tp, zero
                  sltu         t1, s2, t0
                  slt          t5, s0, zero
                  bltu         ra, t6, 102f
                  slli         s1, sp, 26
                  sub          a6, s5, s1
                  sub          t3, s6, gp
                  bltu         s6, s9, 106f
                  ori          ra, gp, 1184
91:               xor          sp, t6, a0
                  nop
                  srai         s7, a2, 1
                  bne          t0, a1, 102f
                  srli         s8, s9, 4
                  slt          t3, s1, s2
                  slt          s5, s0, s10
                  addi         zero, s8, 1970
                  bne          ra, t2, 116f
                  and          a6, ra, s7
                  xor          s6, t4, t1
102:              sltu         t2, a3, s9
                  sltu         gp, s3, s2
                  bne          a5, a7, 124f
                  bltu         t0, a3, 115f
106:              sra          t6, zero, t4
                  auipc        s7, 662868
                  bltu         s4, ra, 117f
                  sll          t4, zero, a7
                  addi         s1, s6, -199
                  ori          s2, t4, -1280
                  srai         t3, t3, 10
                  slti         a6, s7, -387
                  auipc        t0, 63192
115:              and          s4, t6, s2
116:              sltu         t1, s1, s0
117:              srl          a4, t6, a3
                  bltu         a2, gp, 124f
                  or           a3, a6, tp
                  or           s10, ra, s8
                  sltiu        t5, zero, 852
                  srai         a2, s9, 10
                  sltiu        s11, gp, -1058
124:              bltu         t5, t2, 134f
                  ori          zero, a3, -968
                  add          s2, s3, t4
                  xor          zero, zero, t6
                  srai         a4, t5, 22
                  xori         tp, s8, 228
                  bne          s5, t5, 134f
                  sub          s10, tp, s9
                  andi         t2, s0, 802
                  or           gp, s7, s1
134:              andi         a4, a1, -1955
                  bltu         a3, a6, 154f
                  addi         s6, a6, 140
                  srl          tp, t5, a6
                  or           gp, s8, s7
                  bgeu         s6, s10, 141f
                  bne          t3, t6, 149f
141:              sll          t0, tp, s3
                  auipc        a0, 627168
                  beq          s4, ra, 145f
                  srl          t1, t1, t3
145:              srai         t2, sp, 14
                  blt          a3, t2, 148f
                  sub          s11, t0, s1
148:              srai         s2, t1, 15
149:              auipc        s11, 887122
                  sra          s10, tp, gp
                  sll          s4, s9, s7
                  auipc        a3, 464024
                  auipc        a7, 1001553
154:              slli         t5, a1, 16
                  blt          t1, zero, 175f
                  auipc        a6, 809009
                  addi         a0, ra, 1581
                  add          s4, t2, s9
                  slt          s6, t2, s8
                  add          s7, s6, s10
                  slt          s11, a6, zero
                  sltu         t5, s4, s7
                  addi         a2, s3, 1453
                  sltu         ra, s8, s8
                  bne          a1, t2, 185f
                  beq          t6, s10, 174f
                  add          zero, zero, t1
                  nop
                  nop
                  srai         a7, zero, 31
                  sll          s11, s9, t3
                  slt          t4, gp, a1
                  xori         tp, s8, -589
174:              and          s1, a6, a6
175:              srai         s4, t6, 20
                  nop
                  lui          zero, 405601
                  nop
                  sll          a3, t0, a3
                  and          a3, a1, t2
                  slti         tp, t2, -583
                  sll          t3, s9, tp
                  add          s4, a4, t5
                  and          a2, a2, sp
185:              sra          a6, s6, a6
                  blt          s4, a7, 199f
                  xor          a3, a0, gp
                  blt          s2, t3, 207f
                  andi         ra, s10, -171
                  sll          a2, t4, t1
                  add          t5, ra, s7
                  srl          t3, t0, a3
                  xori         sp, a1, 738
                  addi         a4, a2, -496
                  sltu         zero, a0, t3
                  slli         t4, s8, 28
                  lui          t6, 585564
                  or           t4, s6, a7
199:              srl          s5, s8, a0
                  sltiu        s6, tp, -840
                  andi         a7, s5, 551
                  beq          a5, s2, 220f
                  srai         t4, a6, 25
                  sltu         a3, s2, s4
                  bltu         a4, s10, 213f
                  addi         t3, t5, 2020
207:              sltu         t3, ra, s3
                  bgeu         ra, s4, 225f
                  xori         s4, t2, -1396
                  andi         t2, t2, -1291
                  sub          s11, s4, t4
                  xor          a6, s4, s7
213:              bgeu         a0, s1, 223f
                  add          a6, a7, t5
                  sra          s6, t6, s8
                  xori         gp, a6, -1699
                  sltiu        gp, t0, 1497
                  addi         s6, s2, 1898
                  sltiu        a3, t4, 1178
220:              srl          s8, s2, t2
                  addi         s1, a6, 18
                  slti         t6, a0, -122
223:              bge          s10, t5, 240f
                  bgeu         s1, a1, 228f
225:              blt          tp, s10, 242f
                  xori         sp, a4, 435
                  bge          s8, a2, 231f
228:              addi         a4, s11, -249
                  xor          ra, tp, a5
                  slt          t6, tp, a3
231:              srl          ra, s10, ra
                  bgeu         gp, t3, 238f
                  srli         a3, s11, 13
                  ori          s10, a6, -499
                  sra          a7, s0, t6
                  and          s11, a0, s1
                  lui          t4, 113538
238:              sltiu        t1, s5, -906
                  lui          s5, 838953
240:              bge          s7, s3, 250f
                  bge          a3, a6, 257f
242:              slt          t2, s0, a2
                  slti         t6, gp, 1300
                  sra          s2, t2, s2
                  srai         s2, ra, 23
                  sltiu        tp, gp, -474
                  andi         a6, s2, -488
                  bltu         t0, t5, 258f
                  or           t0, s10, s3
250:              ori          a0, a5, 952
                  sra          s3, zero, s5
                  nop
                  beq          a1, s3, 259f
                  sub          a2, s9, t3
                  bne          a4, s6, 264f
                  add          t4, a1, sp
257:              slti         a4, a7, -1655
258:              nop
259:              auipc        s5, 672629
                  sll          t6, t6, s10
                  slli         sp, s9, 10
                  srai         s3, s2, 10
                  blt          s11, a2, 269f
264:              slti         s10, t6, 1486
                  bgeu         tp, a2, 282f
                  sltu         gp, a5, a3
                  slti         a0, s5, 1394
                  xor          s4, ra, s11
269:              bltu         s5, ra, 286f
                  sltiu        s4, ra, -1875
                  andi         a6, a3, -1003
                  add          s8, s2, t2
                  beq          t3, zero, 274f
274:              slli         t4, ra, 17
                  lui          a2, 721404
                  sltu         zero, s3, a5
                  sltu         t4, a0, sp
                  blt          zero, t4, 290f
                  sra          s0, t6, t5
                  andi         s0, a6, 394
                  and          tp, t5, a6
282:              slti         t2, s8, -512
                  bltu         a0, a1, 298f
                  slti         t5, t2, 1868
                  sra          s0, a3, t5
286:              nop
                  bgeu         t6, s7, 289f
                  bltu         s10, t6, 297f
289:              andi         s7, a7, 1048
290:              sltu         t1, s5, ra
                  slli         a0, t1, 18
                  auipc        s11, 684708
                  addi         t3, zero, 8 #init loop 0 counter
                  slti         s6, s2, -842
                  xori         gp, a3, 1518
                  auipc        gp, 390361
                  auipc        tp, 451197
                  andi         s11, a4, 1051
                  auipc        a0, 809946
                  auipc        a6, 676207
                  lui          t6, 666375
                  addi         s0, zero, 17 #init loop 0 limit
sub_1_3_0_t:      auipc        a6, 570102
                  addi         t3, t3, 9 #update loop 0 counter
                  auipc        a2, 382729
                  xori         t5, t5, 284
                  and          s7, a3, a4
                  ori          a7, t4, -1325
                  auipc        t4, 285947
                  slt          a0, a6, s8
                  beq          t3, s0, sub_1_3_0_t #branch for loop 0
                  slt          s2, t3, a1
                  sra          s11, s5, a1
                  bne          s3, gp, 314f
                  bltu         t5, a5, 308f
                  blt          a2, s7, 304f
297:              srli         s0, t1, 4
298:              sltiu        zero, a7, -877
                  bgeu         s6, t2, 301f
                  xor          a2, t5, s2
301:              beq          s10, sp, 318f
                  sltiu        t0, s4, -913
                  lui          s6, 707171
304:              sra          t4, s1, ra
                  blt          tp, s1, 315f
                  bltu         zero, a6, 323f
                  and          s4, s4, a4
308:              slli         t0, t3, 4
                  xor          t0, a2, s4
                  nop
                  srai         t5, s2, 6
                  xor          t2, s0, tp
                  addi         s8, a5, -1299
314:              auipc        a3, 402473
315:              bltu         s5, t1, 325f
                  andi         a7, tp, 1485
                  slli         t0, s2, 19
318:              srl          gp, a5, a6
                  sra          t1, a1, a6
                  addi         s8, s6, -1285
                  addi         s3, tp, -1910
                  bgeu         t2, s7, 323f
323:              srl          a4, a2, s2
                  sub          s10, a2, t4
325:              and          t1, t6, t1
                  or           a7, ra, a4
                  blt          a5, t6, 337f
                  nop
                  sltiu        zero, a5, -276
                  sltiu        a4, gp, 1329
                  andi         s11, t2, 1199
                  srai         t0, s1, 6
                  or           t3, s8, s6
                  blt          s6, t4, 343f
                  or           a7, t2, t5
                  sltu         s10, gp, s5
337:              bge          a6, zero, 339f
                  addi         a2, a4, -968
339:              sltu         s10, s1, a7
                  auipc        s3, 87858
                  addi         s10, ra, 281
                  sra          s5, zero, t0
343:              bgeu         t6, s1, 361f
                  lui          t2, 751138
                  sub          s10, s11, s2
                  xori         s3, a3, -431
                  sra          s2, s9, sp
                  blt          s1, t5, 354f
                  andi         t0, s10, -557
                  sltu         gp, s3, sp
                  sll          s4, a7, zero
                  ori          s2, tp, 1985
                  xor          t1, a7, zero
354:              sltiu        t0, t1, 779
                  blt          t6, s6, 374f
                  auipc        s2, 871090
                  xor          zero, s4, a6
                  bltu         s8, s7, 360f
                  sra          a2, s7, gp
360:              srl          s8, t4, sp
361:              xori         a7, s11, 1217
                  beq          a5, t3, 366f
                  blt          s7, a5, 378f
                  srli         t5, s1, 17
                  or           a4, a3, t1
366:              sra          t6, s4, t3
                  sra          a4, s1, a6
                  bne          tp, a1, 377f
                  bne          t0, s5, 386f
                  sltu         t1, gp, a2
                  nop
                  bge          gp, t4, 376f
                  bltu         tp, s3, 379f
374:              and          s5, a6, gp
                  addi         t4, a7, -2007
376:              bgeu         t1, t6, 396f
377:              sll          t5, s0, t6
378:              bge          a4, t2, 384f
379:              srl          zero, sp, a4
                  ori          zero, tp, 45
                  or           t1, ra, t4
                  lui          s3, 968192
                  bge          s0, s2, 400f
384:              nop
                  bge          sp, s2, 402f
386:              srl          a0, a7, a6
                  bltu         a4, s3, 396f
                  sra          s3, s1, t3
                  xor          a2, sp, s11
                  addi         s4, s11, -389
                  sub          t4, t6, t1
                  bge          t5, tp, 400f
                  xor          s6, a2, a2
                  sltu         a4, s7, t3
                  bltu         tp, a7, 411f
396:              bltu         t3, s4, 408f
                  srl          t6, sp, t2
                  xori         t4, a4, 1712
                  bne          a0, t3, 412f
400:              bge          zero, a0, 415f
                  srli         s5, t6, 2
402:              slti         a3, a2, -486
                  sltiu        s10, s8, -1544
                  add          s2, zero, ra
                  sll          t1, a4, t3
                  bne          t0, s3, 425f
                  nop
408:              bgeu         a6, s9, 425f
                  ori          t5, t3, -1377
                  slli         a2, s7, 30
411:              srli         t5, t5, 6
412:              slli         ra, s11, 6
                  sll          s4, s0, ra
                  srli         a7, s6, 16
415:              lui          t5, 555548
                  bgeu         s0, t6, 433f
                  xor          s10, s6, a2
                  ori          a7, a7, 526
                  ori          s8, s9, -1812
                  bltu         a4, a3, 424f
                  sll          a6, tp, s0
                  or           t5, a4, s5
                  bge          s7, s11, 435f
424:              add          t5, a4, a7
425:              and          a6, tp, a2
                  and          a6, a3, s2
                  beq          t2, a6, 437f
                  srl          s10, s9, sp
                  andi         s7, t2, 68
                  or           s10, t2, s1
                  or           s6, a7, sp
                  xor          s10, s0, s10
433:              slli         s2, s11, 18
                  ori          a7, tp, -1839
435:              srai         a3, a5, 19
                  or           t5, t3, a1
437:              bgeu         s8, s2, 445f
                  or           gp, t3, a4
                  nop
                  sll          zero, s11, zero
                  bltu         t5, s1, 457f
                  srai         a4, s0, 11
                  bgeu         a2, s0, 452f
                  andi         s3, s6, -1472
445:              lui          s2, 433261
                  sltu         zero, t6, a0
                  sub          a4, s7, t6
                  addi         sp, zero, 7 #init loop 0 counter
                  lui          s2, 189378
                  addi         t1, a5, 1601
                  xor          t4, a4, s11
                  sltu         t6, s0, s7
                  addi         a3, zero, -9 #init loop 0 limit
sub_1_6_0_t:      ori          s8, sp, 991
                  srl          s3, a4, s0
                  xor          s7, t3, a4
                  sll          zero, a1, s6
                  auipc        zero, 338049
                  or           gp, s11, s5
                  srli         t4, a3, 17
                  sub          t6, s3, gp
                  add          gp, a0, s4
                  sll          ra, s11, s5
                  addi         s8, t2, 1911
                  xor          t3, s5, a7
                  andi         a2, t5, -599
                  xori         tp, s11, 269
                  addi         sp, sp, -2 #update loop 0 counter
                  sub          s1, gp, ra
                  sltu         a6, a4, a6
                  nop
                  sra          a6, t2, a4
                  slt          s10, gp, a5
                  addi         t4, s8, -1585
                  and          tp, t6, tp
                  bge          sp, a3, sub_1_6_0_t #branch for loop 0
                  sltiu        t6, t0, 257
                  blt          t0, a2, 468f
                  slli         s0, s4, 20
                  sra          t6, s3, s8
                  bgeu         a3, t1, 461f
452:              srai         s2, a5, 8
                  slli         tp, t0, 9
                  blt          t3, t3, 456f
                  srai         s6, a6, 11
456:              ori          s2, a3, 373
457:              auipc        a0, 475701
                  bne          zero, a3, 464f
                  andi         ra, s4, 850
                  addi         a0, t3, 1702
461:              sltiu        t1, s0, 92
                  ori          s4, s11, 687
                  auipc        tp, 828002
464:              sub          t0, s9, t6
                  sub          s5, s3, a4
                  auipc        t6, 804422
                  bltu         s7, a2, 477f
468:              bgeu         s1, s4, 469f
469:              sub          s10, t0, t6
                  bne          a1, t4, 479f
                  blt          t1, tp, 489f
                  slti         a0, s7, -1240
                  xor          a7, s11, a7
                  blt          a6, s7, 482f
                  bge          s6, a6, 484f
                  beq          a4, s3, 482f
477:              auipc        zero, 99654
                  sll          gp, a6, a7
479:              bne          zero, s7, 496f
                  ori          s7, s11, -690
                  nop
482:              srli         t1, t5, 6
                  slti         t4, t6, -571
484:              srai         a6, a1, 14
                  xori         a6, s0, 522
                  sra          a0, a1, zero
                  addi         tp, zero, 630
                  sltu         t3, s9, s5
489:              slti         s6, t2, 1032
                  lui          t3, 297028
                  sub          a7, t6, s11
                  addi         a2, zero, 5 #init loop 0 counter
                  srai         t6, s3, 4
                  sub          a3, a4, a7
                  andi         tp, a4, 575
                  slli         s1, s1, 1
                  addi         sp, zero, -5 #init loop 0 limit
                  sub          s0, gp, a1
                  xor          s8, t4, t6
                  xor          a6, s3, s9
                  andi         s7, a0, -1156
                  sra          t6, a5, t2
                  srl          s7, s6, a7
                  and          t2, s3, a6
sub_1_8_0_t:      auipc        s5, 675143
                  slt          s6, ra, a4
                  addi         a2, a2, -2 #update loop 0 counter
                  sll          t6, s7, t4
                  ori          t5, s1, -271
                  auipc        t2, 370050
                  and          s3, t0, s3
                  bne          a2, sp, sub_1_8_0_t #branch for loop 0
                  lui          t4, 417429
                  blt          s11, s0, 512f
                  beq          t4, s6, 497f
                  xori         tp, s8, -1884
                  sra          s3, s3, a0
496:              sub          t5, a5, a1
497:              auipc        s11, 659994
                  nop
                  slti         s0, s3, 794
                  sub          s4, gp, a3
                  xori         t4, ra, -1288
                  slti         a4, t4, 1655
                  xori         t6, zero, -860
                  xor          s2, s1, sp
                  srl          a0, s11, s2
                  beq          s5, a7, 523f
                  bgeu         a3, s6, 513f
                  sltu         s11, zero, s2
                  and          t4, a2, s3
                  bge          a6, t4, 512f
                  sub          t0, sp, t6
512:              slti         tp, s11, 268
513:              or           ra, s2, t3
                  nop
                  nop
                  lui          sp, 984514
                  xor          s8, gp, zero
                  ori          a7, s9, 711
                  and          s7, t2, t2
                  blt          s10, s5, 537f
                  srl          t1, tp, a0
                  srli         gp, a7, 24
523:              slt          t6, a1, t3
                  slt          a0, s6, s3
                  bge          s0, a6, 527f
                  bltu         s2, s11, 543f
527:              or           tp, a2, a7
                  lui          t1, 456057
                  andi         t0, t3, 2002
                  bgeu         t5, t3, 536f
                  ori          t1, gp, -1370
                  srli         zero, a2, 24
                  addi         s7, a2, 1912
                  bltu         t0, s8, 544f
                  lui          s0, 211773
536:              bltu         t2, a6, 538f
537:              addi         s8, tp, -1943
538:              beq          gp, a4, 555f
                  andi         t0, a2, -610
                  lui          s11, 566623
                  sra          s11, s7, s7
                  xori         a3, t5, -250
543:              bge          a7, t1, 552f
544:              or           t6, t2, s5
                  add          s7, ra, a6
                  xor          a7, sp, s5
                  lui          s0, 15240
                  xor          sp, a2, s1
                  slti         s3, gp, -249
                  slt          s7, s5, s0
                  srli         s6, s3, 30
552:              ori          a6, s3, -222
                  nop
                  addi         t6, zero, -90
555:              sra          s5, s0, s2
                  sll          s10, t6, zero
                  srai         gp, s10, 26
                  ori          a0, t1, -163
                  srli         s1, sp, 9
                  or           s11, gp, s6
                  sra          ra, s3, s4
                  sltu         sp, s5, s9
                  bne          a7, s8, 583f
                  or           t3, s9, s8
                  bge          a2, s6, 567f
                  addi         a2, gp, -1442
567:              addi         s8, t4, -34
                  lui          t3, 857013
                  srli         s3, t6, 1
                  bge          s7, a2, 574f
                  addi         a4, s0, 1671
                  sltu         t2, a3, s5
                  sub          s0, a2, a2
574:              slti         sp, s3, -498
                  auipc        s1, 740833
                  andi         s10, s4, -1181
                  bgeu         s6, t1, 587f
                  or           s8, s7, t4
                  auipc        s5, 420129
                  add          a2, a2, s4
                  bge          s9, s2, 585f
                  and          t4, a3, tp
583:              or           ra, a7, s3
                  blt          ra, a2, 593f
585:              beq          a0, zero, 594f
                  lui          a3, 29913
587:              srai         t4, a5, 6
                  slt          s5, s7, s8
                  xor          a6, tp, s11
                  srl          s5, s5, s4
                  srl          s3, s0, gp
                  beq          zero, s1, 598f
593:              add          t3, t6, a1
594:              andi         s11, t0, 89
                  slti         a6, a5, -2043
                  slli         a6, a2, 0
                  sra          s0, tp, a4
598:              or           ra, sp, a0
                  auipc        a0, 348200
                  lui          s7, 79919
                  blt          t1, t5, 602f
602:              andi         zero, s9, -116
                  sub          t4, t2, a1
                  beq          a1, tp, 606f
                  sltiu        s2, a7, -1378
606:              ori          a0, zero, -1212
                  bge          s1, t3, 622f
                  lui          s11, 400283
                  sub          t1, t5, s0
                  addi         sp, s2, 15
                  addi         t5, s0, -1693
                  bge          t0, a0, 620f
                  bltu         s5, a2, 630f
                  nop
                  srai         s5, a1, 15
                  auipc        s4, 817600
                  andi         t5, t5, -1746
                  beq          s9, t1, 624f
                  xori         t1, t0, 1410
620:              andi         tp, s3, 1761
                  slt          a0, t2, a0
622:              bltu         a0, a0, 641f
                  sub          ra, a2, zero
624:              andi         a7, a2, 220
                  sltu         s3, t1, a6
                  auipc        s10, 1000334
                  sub          t0, s8, s7
                  srai         ra, t1, 23
                  and          s4, s5, t0
630:              sltu         t0, gp, t0
                  nop
                  ori          a2, t6, 1608
                  sra          s6, gp, s7
                  srai         s7, a3, 18
                  andi         t0, t2, -1621
                  bne          a4, s5, 653f
                  addi         s1, a1, -1774
                  addi         s8, s6, 1712
                  ori          s4, a4, -1578
                  sltiu        zero, s5, 1671
641:              add          s4, tp, a6
                  sra          a7, s5, a6
                  add          tp, s7, a2
                  nop
                  sltu         a7, s9, t6
                  sltu         a3, t2, a3
                  lui          t2, 159885
                  srli         t5, a6, 24
                  addi         a3, s10, 1958
                  auipc        s2, 328630
                  bge          t3, zero, 654f
                  sra          s4, s8, gp
653:              bgeu         sp, a5, 654f
654:              and          a4, t4, a4
                  srai         s0, s5, 4
                  sltu         a3, s7, zero
                  sltu         zero, a0, s7
                  lw           tp, 4(a5)
                  or           s5, s2, s9
                  sra          t3, s8, a5
                  andi         zero, s9, 101
                  addi         a5, a5, 16
                  xori         s5, ra, 205
                  slt          a3, s9, s11
941:              addi x23, x4, 1
941:              jalr x23, x23, 0
sub_5:            or           t5, a1, t3
                  or           s10, a0, a0
                  bgeu         tp, t1, sub_5_stack_p
                  sll          t1, s3, a6
                  lui          t5, 26930
sub_5_stack_p:    addi         a5, a5, -40
                  and          s0, a2, t4
                  sll          ra, tp, a0
                  slt          s3, a1, gp
                  sw           tp, 4(a5)
                  slt          s5, t0, ra
                  addi         s3, zero, 7 #init loop 1 counter
                  addi         s8, zero, 19 #init loop 1 limit
                  slti         t2, sp, -820
sub_5_0_1_t:      lui          t5, 822032
                  sll          tp, s3, s9
                  addi         s3, s3, 4 #update loop 1 counter
                  addi         t4, zero, -10 #init loop 0 counter
                  addi         gp, zero, 12 #init loop 0 limit
sub_5_0_0_t:      sltu         s1, t1, s1
                  andi         sp, s7, 684
                  addi         t4, t4, 1 #update loop 0 counter
                  blt          t4, gp, sub_5_0_0_t #branch for loop 0
                  bne          s3, s8, sub_5_0_1_t #branch for loop 1
                  ori          s10, s1, 693
                  addi         a2, zero, 9 #init loop 1 counter
                  or           s6, s9, gp
                  slt          tp, s11, t5
                  addi         s10, zero, 9 #init loop 1 limit
                  sll          s2, gp, a3
sub_5_1_1_t:      and          t0, s7, t4
                  sub          s4, s11, s7
                  addi         a2, a2, -8 #update loop 1 counter
                  addi         gp, zero, 1 #init loop 0 counter
                  add          a7, a3, tp
                  addi         s11, zero, -17 #init loop 0 limit
                  and          t1, a2, s6
sub_5_1_0_t:      xor          s4, s6, s8
                  slt          s5, t2, a2
                  srli         sp, s9, 14
                  sub          t1, s1, s9
                  xor          zero, gp, a3
                  xori         s0, s1, -1811
                  add          s7, s8, s1
                  srai         t4, a6, 2
                  slti         tp, s6, 542
                  srli         a0, s11, 30
                  addi         gp, gp, -8 #update loop 0 counter
                  sub          a6, s10, s10
                  andi         s8, sp, 628
                  xor          a3, t2, s1
                  bge          gp, s11, sub_5_1_0_t #branch for loop 0
                  sltu         t0, s7, s2
                  bgeu         a2, s10, sub_5_1_1_t #branch for loop 1
                  slli         t3, a1, 5
                  sltiu        t6, tp, 579
                  auipc        s8, 192749
                  srai         gp, s1, 30
                  addi         a0, s6, -1021
                  xor          s4, s2, s11
                  bltu         a5, s6, 6f
6:                srli         a7, a0, 18
                  sll          s2, t2, t1
                  nop
                  sltiu        s6, s8, 416
                  addi         a0, a2, 280
                  sra          a4, t6, a4
                  sltiu        s0, s0, -1127
                  bltu         t0, a1, 16f
                  srli         s6, s3, 28
                  andi         t4, s11, 262
16:               sltiu        s10, a6, 326
                  and          t2, a2, a4
                  addi         t4, a7, -1994
                  blt          a6, gp, 37f
                  lui          s3, 145108
                  srai         t0, t0, 9
                  slti         s8, s0, 496
                  bge          a5, s1, 32f
                  blt          t0, t1, 38f
                  auipc        t5, 647985
                  slt          a4, a7, s11
                  sra          s11, a4, a4
                  sra          t2, t5, s6
                  srai         t0, t2, 13
                  xori         a3, t6, -965
                  add          a0, a6, s7
32:               slti         s8, s8, 645
                  add          s4, s4, t3
                  srai         s0, zero, 12
                  slt          a0, t1, s7
                  bgeu         a1, ra, 47f
37:               xor          s4, s2, a3
38:               bgeu         a7, s4, 43f
                  srai         t3, s5, 5
                  blt          s7, a7, 47f
                  srai         s3, a3, 21
                  sra          s2, t6, t6
43:               srai         zero, a7, 6
                  add          t5, t5, s2
                  slli         s7, a1, 21
                  ori          tp, a6, 1802
47:               sltu         a4, s2, t6
                  and          s0, t4, s11
                  xor          t6, a5, t3
                  slli         a2, ra, 10
                  bge          s11, ra, 62f
                  srl          gp, s2, s0
                  slt          s7, s10, s6
                  slt          gp, s4, s2
                  sll          s7, s3, s5
                  auipc        t3, 29289
                  srai         a4, s4, 7
                  slti         s2, t2, -368
                  ori          zero, s9, -1455
                  srli         t4, t4, 9
                  bgeu         t3, s2, 62f
62:               srli         t0, t6, 30
                  and          sp, sp, zero
                  sub          s1, s11, s11
                  sltiu        t1, s10, -24
                  beq          t3, s2, 72f
                  addi         t2, t1, 1652
                  slli         gp, t3, 29
                  bne          t6, tp, 71f
                  srli         a6, s7, 16
71:               slti         t2, s11, -853
72:               slli         t5, a5, 14
                  or           a0, a3, s8
                  bne          s8, s5, 92f
                  srli         s3, sp, 23
                  bge          a4, t0, 86f
                  blt          ra, s2, 91f
                  sub          ra, t6, s10
                  lui          s0, 83509
                  beq          sp, a7, 83f
                  or           s5, s5, s9
                  add          a2, s6, s2
83:               blt          t4, s10, 86f
                  beq          t0, s0, 86f
                  slli         tp, ra, 14
86:               bne          t3, tp, 95f
                  nop
                  bltu         s10, ra, 89f
89:               srli         tp, ra, 17
                  auipc        t0, 7166
91:               slli         s3, sp, 7
92:               lui          a3, 78541
                  and          a0, gp, sp
                  sltiu        t5, sp, 437
95:               slt          t2, t1, a4
                  sltiu        a3, a6, 662
                  sltiu        s3, sp, -109
                  srl          s7, a3, a4
                  slt          s3, gp, t1
                  auipc        gp, 646031
                  slli         s2, s5, 13
                  addi         s2, s9, 821
                  addi         t6, zero, 5 #init loop 0 counter
                  lui          a6, 771753
                  lui          s8, 450641
                  add          s7, a0, a2
                  and          a7, t6, s11
                  addi         a4, zero, 8 #init loop 0 limit
                  sltiu        t5, t0, -1440
                  slli         a6, a1, 23
                  xori         zero, s3, -1061
                  ori          s3, s1, 64
                  sub          s7, t4, a0
                  nop
                  srl          t0, t4, tp
sub_5_2_0_t:      sltu         s3, zero, a7
                  andi         a7, ra, -458
                  lui          t2, 459466
                  addi         t6, t6, 2 #update loop 0 counter
                  srli         s4, s10, 16
                  bltu         t6, a4, sub_5_2_0_t #branch for loop 0
                  srai         s0, s0, 13
                  slli         a2, a5, 12
                  bgeu         s4, s0, 112f
                  sltu         s8, a5, t0
                  sll          s10, a1, t1
                  sltiu        t5, sp, -2048
                  auipc        s10, 891366
                  slt          t5, t3, t0
                  ori          a6, a7, -1451
                  xor          a7, s6, s10
112:              lui          s2, 66390
                  sltu         a2, s2, t1
                  sra          s6, a0, zero
                  bgeu         s10, a3, 120f
                  or           a3, a4, t2
                  sll          a2, t2, t1
                  bltu         t3, a5, 136f
                  bne          a3, a1, 132f
120:              slli         s4, gp, 16
                  addi         a7, s1, 1766
                  srli         tp, a3, 0
                  srli         s5, s1, 7
                  ori          s10, tp, 1986
                  slt          sp, a0, a2
                  ori          t0, a4, -677
                  ori          t6, s4, 331
                  ori          t2, s0, -1028
                  xor          t0, zero, a0
                  bltu         sp, a7, 139f
                  auipc        s5, 54282
132:              slli         gp, t1, 2
                  xori         s6, s8, -431
                  sltu         a4, s2, t5
                  sltiu        a6, gp, -874
136:              beq          tp, a5, 139f
                  or           s8, s5, s11
                  bge          s10, s6, 150f
139:              sra          t3, a0, s3
                  add          a7, s7, s2
                  sll          t3, a1, s9
                  sra          t0, s2, s2
                  xori         a4, s2, -1402
                  ori          s6, a5, 1291
                  sltiu        s2, s5, -811
                  srl          s3, s0, ra
                  ori          a6, s2, 533
                  andi         t1, a1, 1887
                  auipc        t5, 678723
150:              xori         a0, t0, 699
                  beq          s5, s10, 160f
                  srl          t0, t1, s5
                  srai         t5, a4, 12
                  andi         t4, tp, 442
                  slli         t4, a7, 20
                  bge          s5, a0, 172f
                  nop
                  slti         t1, s2, -1
                  slli         s3, s4, 3
160:              addi         sp, s9, -2034
                  bltu         a4, gp, 162f
162:              andi         zero, s0, -1370
                  lui          a3, 44449
                  bgeu         s9, t4, 166f
                  xori         a0, s3, -1000
166:              slt          s0, s6, a2
                  and          s1, gp, s4
                  sltu         a2, s8, s8
                  slt          a3, zero, s10
                  sltiu        t0, t1, -2035
                  slt          s4, a2, s6
172:              xori         s11, s10, 958
                  andi         gp, a2, 491
                  srl          s10, s8, sp
                  slli         s4, s7, 29
                  srli         gp, s8, 26
                  beq          zero, ra, 185f
                  sltiu        s6, t0, 372
                  slti         a2, a6, 204
                  slt          s7, a2, ra
                  bne          a0, t2, 184f
                  ori          zero, t1, 1297
                  auipc        t4, 177394
184:              beq          a0, t1, 185f
185:              sltu         s6, s6, a2
                  lw           tp, 4(a5)
                  nop
                  and          a2, s7, a6
                  slti         s5, s6, -1008
                  nop
                  auipc        s8, 163277
                  srli         a6, a4, 11
                  addi         a5, a5, 40
                  xori         s6, s10, 1973
270:              addi x13, x4, 0
270:              jalr x13, x13, 0
sub_2:            sll          s1, a4, a2
                  or           s0, a2, s2
                  addi         a5, a5, -56
                  sw           tp, 4(a5)
                  srai         s7, s1, 25
                  and          t0, s11, t5
                  la           t3, sub_4
                  srl          tp, t4, a0
                  sra          a0, a5, a3
                  sra          s6, ra, t6
                  and          a6, s5, s8
                  srai         s4, s3, 0
                  lui          t6, 48523
                  addi         t3, t3, -517
                  sra          t0, s11, s6
sub_2_j3:         jalr         tp, t3, 518 #jump sub_2 -> sub_4
                  sltiu        s8, t6, -369
                  nop
                  srai         s5, s8, 26
                  bne          t6, tp, sub_2_j4 #branch to jump instr
                  sra          zero, s2, a1
                  sra          t1, s10, s1
                  srai         t4, s10, 7
sub_2_j4:         jal          tp, sub_4 #jump sub_2 -> sub_4
                  and          a7, a3, t1
                  sra          tp, a4, s3
                  or           sp, t4, a4
                  slt          tp, a0, t3
                  and          ra, t2, s2
                  auipc        tp, 805386
                  andi         s10, tp, -205
sub_2_j5:         jal          tp, sub_3 #jump sub_2 -> sub_3
                  add          s1, s3, a4
                  sltu         t4, s10, a1
                  add          sp, s5, t4
                  nop
                  andi         sp, zero, 877
                  xor          s5, s5, s2
                  bgeu         s2, t0, 13f
                  srai         s10, gp, 11
                  slti         s7, ra, 1640
                  slli         ra, sp, 10
                  and          ra, s5, ra
                  sltiu        s10, a4, 1245
                  bltu         t5, s10, 13f
13:               srli         tp, s11, 16
                  sra          a6, s0, a7
                  xor          t5, a4, s9
                  lui          s5, 1041015
                  add          s8, t6, s4
                  and          a4, s7, s11
                  lw           tp, 4(a5)
                  srl          ra, s11, s11
                  slli         s11, sp, 5
                  addi         a5, a5, 56
                  ori          s4, gp, -248
56:               addi x27, x4, 0
56:               jalr x27, x27, 0
sub_3:            addi         a5, a5, -64
                  srli         s11, s6, 12
                  add          s1, t5, zero
                  lui          s5, 740347
                  srli         sp, s4, 13
                  xor          t1, s4, a6
                  add          s4, s9, s4
                  sw           tp, 4(a5)
                  sra          t1, s9, ra
                  ori          s8, s11, 341
                  add          s10, s0, tp
                  la           s11, sub_5
                  addi         s11, s11, 893
                  slt          ra, s8, a0
                  sra          t2, sp, a1
                  lui          a3, 277490
sub_3_j6:         jalr         tp, s11, -892 #jump sub_3 -> sub_5
                  addi         a2, zero, 9 #init loop 0 counter
                  lui          a4, 91742
                  lui          t0, 564683
                  nop
                  slli         t2, a7, 0
                  sltu         s2, ra, a3
                  sub          s2, a6, s3
                  andi         t5, s1, -2047
                  srli         a3, t6, 31
                  srli         s5, s0, 15
                  xor          s2, a2, tp
                  xori         t3, a5, -268
                  sltu         a7, a3, t5
                  xori         s10, a3, -1972
                  sll          t3, a7, s8
                  addi         a3, tp, -685
                  slt          s10, t4, t1
                  nop
                  xor          t5, a4, s11
                  auipc        a4, 815931
                  andi         s3, t3, 10
                  srli         s7, gp, 31
                  addi         s4, zero, 14 #init loop 0 limit
                  slt          s6, t5, s7
sub_3_0_0_t:      sltiu        t2, a2, 1820
                  add          zero, ra, s8
                  xor          s0, a2, t6
                  addi         a2, a2, 1 #update loop 0 counter
                  bltu         a2, s4, sub_3_0_0_t #branch for loop 0
                  sra          a4, a6, s2
                  addi         t4, zero, 8 #init loop 0 counter
                  srai         t1, a4, 3
                  xori         s10, s10, 381
                  ori          sp, s10, 731
                  nop
                  addi         a4, zero, 12 #init loop 0 limit
                  sub          tp, a0, t5
                  slli         s2, zero, 27
                  sltu         t3, s0, s3
sub_3_1_0_t:      sub          s4, s6, s5
                  or           t5, s2, s11
                  srl          s11, s0, a1
                  nop
                  sub          t0, s5, s8
                  sll          tp, t4, t0
                  sll          t3, t1, a7
                  nop
                  nop
                  addi         t4, t4, 5 #update loop 0 counter
                  slti         s8, t1, -788
                  lui          t6, 282731
                  xori         s6, a1, 165
                  lui          a7, 100226
                  xor          a3, tp, s3
                  blt          t4, a4, sub_3_1_0_t #branch for loop 0
                  slli         a2, a6, 3
                  addi         gp, zero, 4 #init loop 1 counter
                  and          s8, zero, a5
                  xori         s1, s6, 2015
                  addi         a6, zero, 10 #init loop 1 limit
sub_3_3_1_t:      slt          t6, t4, a5
                  addi         gp, gp, 1 #update loop 1 counter
                  addi         s2, zero, -7 #init loop 0 counter
                  slti         s6, s0, -131
                  addi         a7, zero, 1 #init loop 0 limit
                  sra          t6, ra, s5
sub_3_3_0_t:      addi         t3, s11, -1245
                  addi         s2, s2, 8 #update loop 0 counter
                  beq          s2, a7, sub_3_3_0_t #branch for loop 0
                  nop
                  blt          gp, a6, sub_3_3_1_t #branch for loop 1
                  srai         s8, a1, 27
                  addi         a3, zero, 8 #init loop 0 counter
                  add          s10, s5, t5
                  addi         a6, zero, 0 #init loop 0 limit
                  slti         gp, s4, 317
                  srli         sp, s8, 16
sub_3_2_0_t:      ori          s6, t5, -383
                  ori          s6, t5, -1593
                  sra          ra, ra, t2
                  sub          t1, s7, t2
                  auipc        t6, 980987
                  slt          ra, t2, ra
                  srai         tp, a3, 5
                  addi         a3, a3, -7 #update loop 0 counter
                  add          t3, a6, s5
                  sra          s11, t3, s11
                  addi         t5, t3, 201
                  slli         a2, s4, 26
                  or           t3, s11, s11
                  sltu         t1, t6, sp
                  nop
                  slti         s10, a5, 263
                  srl          t0, t6, t4
                  sll          s6, t2, t1
                  sltu         a2, t2, s5
                  bge          a3, a6, sub_3_2_0_t #branch for loop 0
                  slli         a0, s5, 18
                  blt          a0, a2, 14f
                  xor          s5, a3, a6
                  xor          t4, t3, zero
                  nop
                  add          t0, a3, gp
                  sub          s10, s7, s9
                  xor          t2, tp, a3
                  or           t1, a3, t3
                  auipc        t6, 211421
                  lui          t4, 1007081
                  sltiu        t1, t6, -1858
                  bge          a0, s8, 25f
                  sltiu        sp, s1, 41
                  slt          a3, t4, sp
14:               bge          t0, zero, 29f
                  slti         s7, a5, 912
                  slt          tp, a4, s8
                  slti         t4, s10, 23
                  bltu         t2, gp, 28f
                  andi         s5, t6, -654
                  beq          a4, a3, 23f
                  auipc        s3, 831236
                  bltu         t6, s8, 39f
23:               and          s2, a0, s6
                  andi         s10, s8, 2004
25:               lui          t5, 783063
                  add          s11, tp, a6
                  ori          a4, t3, 289
28:               slli         a0, s10, 17
29:               sll          s0, s7, t1
                  sltu         s8, s3, t0
                  bgeu         s0, a0, 43f
                  bge          s3, a1, 39f
                  srai         tp, a7, 6
                  sltiu        sp, a1, -1197
                  sra          t5, s7, a4
                  srai         t1, t4, 3
                  xori         t0, a0, 1254
                  or           ra, t2, t0
39:               nop
                  andi         a4, a7, 1440
                  sra          s8, s6, s6
                  bne          ra, ra, 62f
43:               and          zero, a0, a7
                  sltiu        t2, t4, 1743
                  sll          sp, a2, ra
                  beq          s10, t5, 55f
                  or           a2, tp, s6
                  sra          t6, t6, a3
                  sra          tp, s11, t1
                  slli         s4, s5, 16
                  auipc        a2, 350099
                  sltu         s3, s8, t2
                  sra          t4, t4, zero
                  or           s11, t0, a6
55:               bge          ra, a2, 74f
                  sltu         a6, tp, s1
                  bge          a3, s7, 58f
58:               bgeu         a2, t6, 73f
                  addi         s1, s8, 2042
                  blt          gp, s10, 73f
                  blt          s5, s3, 78f
62:               bne          sp, zero, 74f
                  bne          a4, t6, 66f
                  andi         s1, zero, -281
                  nop
66:               lui          s10, 665365
                  and          t3, a5, a0
                  nop
                  slt          a4, t5, s1
                  bltu         s11, a3, 77f
                  lui          ra, 353290
                  srli         t5, s5, 1
73:               lui          gp, 97575
74:               addi         s3, a3, 1236
                  or           a0, s9, a2
                  sub          a4, a7, s5
77:               sll          a0, a0, s11
78:               srl          t5, a1, a2
                  xor          t4, s9, s7
                  sub          a7, t2, s9
                  bge          a4, s7, 84f
                  sltiu        s2, a3, -605
                  slli         s10, t2, 16
84:               xori         a4, a5, 962
                  xori         zero, a3, 1377
                  and          sp, tp, s3
                  blt          s2, t2, 92f
                  xor          gp, a1, s8
                  nop
                  sltu         a7, s6, zero
                  bne          a7, a0, 98f
92:               ori          gp, a5, 1660
                  or           s5, sp, s11
                  sub          gp, t4, gp
                  bgeu         tp, s6, 114f
                  bltu         s1, t2, 115f
                  bltu         s7, s10, 115f
98:               nop
                  addi         s7, sp, -638
                  sltiu        s2, t3, 950
                  blt          a0, a2, 114f
                  slt          ra, a4, s7
                  slt          t6, t0, ra
                  bne          s7, s2, 112f
                  srai         t4, s6, 18
                  andi         s10, s7, -468
                  bne          s11, s5, 120f
                  bltu         s4, t4, 112f
                  xor          s6, zero, s11
                  srl          t2, a5, t5
                  sltu         zero, s7, zero
112:              andi         a4, s10, -1887
                  bltu         s11, t3, 132f
114:              sub          tp, s1, s0
115:              srli         a3, s4, 1
                  add          zero, gp, a1
                  srli         sp, t3, 19
                  srai         s4, s11, 24
                  srai         s3, t5, 13
120:              sltu         s4, sp, s10
                  slli         a4, a7, 25
                  slli         a3, a4, 3
                  slli         s7, tp, 10
                  slli         t1, a0, 11
                  or           s0, s2, s4
                  auipc        s0, 4196
                  bge          gp, s5, 144f
                  slli         s8, s8, 31
                  slti         s7, gp, 1873
                  xor          s3, s10, t0
                  xor          s11, s4, a5
132:              blt          t5, t1, 146f
                  auipc        s1, 455340
                  sra          t0, s8, zero
                  srli         s0, t3, 8
                  srai         t0, s7, 8
                  sltiu        s0, t6, 131
                  srai         s4, t5, 18
                  slti         a2, sp, -76
                  and          a3, s6, t4
                  and          s10, s4, s2
                  sll          ra, s1, t1
                  beq          s0, t0, 147f
144:              srl          a7, a6, sp
                  sltiu        s6, a4, 744
146:              sub          t4, a6, s5
147:              sll          a0, t0, t2
                  add          s1, a6, s11
                  slli         a3, sp, 5
                  add          a2, s5, a4
                  xor          a6, t6, s11
                  add          t0, a3, t6
                  bne          s3, tp, 172f
                  auipc        a3, 150339
                  slt          a2, s10, t6
                  slt          s5, s4, tp
                  bne          s7, t6, 170f
                  addi         t5, s7, -162
                  sll          tp, ra, zero
                  nop
                  sll          s6, a3, s5
                  ori          t6, t5, -1697
                  bne          a6, a5, 180f
                  bltu         s10, s2, 183f
                  lui          s8, 554202
                  slti         s1, s5, -349
                  auipc        zero, 559335
                  or           t2, s3, a6
                  xori         a7, t4, -606
170:              and          a6, s2, a3
                  bge          s10, a5, 181f
172:              add          a3, s9, a2
                  bge          s1, a6, 186f
                  auipc        gp, 428443
                  auipc        s1, 285215
                  sltiu        s2, s5, 545
                  srai         s2, s11, 5
                  ori          t4, s11, 1456
                  slt          sp, sp, s3
180:              srli         a0, tp, 0
181:              slli         a3, t6, 8
                  bge          zero, s9, 197f
183:              bne          t5, a7, 186f
                  and          t6, tp, t3
                  xor          t1, gp, a2
186:              lui          a6, 719778
                  ori          t3, t1, 1300
                  beq          s6, s9, 200f
                  bge          t2, a4, 204f
                  srl          zero, a7, t4
                  beq          sp, t5, 209f
                  and          s3, s3, t0
                  nop
                  bgeu         s2, gp, 203f
                  sll          a4, t0, t1
                  bge          gp, s8, 215f
197:              and          s3, zero, s2
                  xori         s6, s5, -361
                  sra          gp, s9, a6
200:              xori         a0, s5, -272
                  blt          t0, a1, 208f
                  and          s6, s10, t6
203:              srai         s10, a1, 4
204:              bne          s1, s6, 205f
205:              bge          s4, a0, 210f
                  andi         s0, s9, -874
                  slli         t3, sp, 28
208:              xori         t0, gp, 925
209:              and          s4, a5, s8
210:              addi         s2, a2, -1289
                  blt          s9, t3, 225f
                  sltiu        s8, a6, -385
                  sub          s0, ra, a1
                  sll          a6, s4, s10
215:              or           t2, a0, t4
                  bgeu         ra, t3, 233f
                  addi         a0, t6, -1045
                  xori         a6, a4, -250
                  slli         ra, t4, 26
                  sltiu        s7, a3, 1804
                  xori         t6, s10, -223
                  slti         s1, tp, -1938
                  sltu         gp, t6, a0
                  bltu         s7, s6, 227f
225:              slli         t1, a6, 13
                  xori         ra, ra, -1912
227:              bge          t6, t6, 235f
                  srli         ra, s2, 18
                  srl          s7, s8, a4
                  nop
                  sll          ra, a4, s1
                  bgeu         gp, t5, 239f
233:              sub          t6, t6, t1
                  beq          s8, gp, 247f
235:              andi         s3, s11, 49
                  slli         s10, s7, 17
                  srl          a3, gp, t5
                  ori          s11, s9, -1935
239:              slli         tp, zero, 2
                  andi         s11, s4, -1949
                  bge          s4, a6, 244f
                  srai         a2, s1, 20
                  bge          a6, s3, 248f
244:              add          s7, a4, t2
                  sltu         a7, t3, a6
                  sub          s5, zero, a3
247:              or           s2, t3, tp
248:              or           s0, a2, t6
                  sra          t5, a5, t4
                  auipc        a2, 137588
                  slli         a6, t4, 29
                  auipc        s3, 84782
                  sll          s7, s8, s6
                  lw           tp, 4(a5)
                  sll          sp, t3, t3
                  ori          a6, tp, 1420
                  addi         a5, a5, 64
                  srai         s1, s7, 31
                  xori         s3, s0, 1559
375:              addi x3, x4, 1
375:              jalr x3, x3, 0
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_2:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_3:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_4:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_5:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_6:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_7:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_8:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_9:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_10:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_11:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_12:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_13:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_14:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_15:
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
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x30, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x30, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x30, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x30, x20, ecall_handler
                  li x20, 0x1
                  beq x30, x20, instr_fault_handler
                  li x20, 0x5
                  beq x30, x20, load_fault_handler
                  li x20, 0x7
                  beq x30, x20, store_fault_handler
                  li x20, 0xc
                  beq x30, x20, pt_fault_handler
                  li x20, 0xd
                  beq x30, x20, pt_fault_handler
                  li x20, 0xf
                  beq x30, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x11, test_done
                  jalr x1, x11, 0

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
                  la x11, write_tohost
                  jalr x0, x11, 0

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
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
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
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
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
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
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
