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
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x1bb0cba8
                  li x4, 0x80000000
                  li x5, 0x485d8ea0
                  li x6, 0xd
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xedb8b340
                  li x10, 0xcea96bcb
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0xb
                  li x15, 0x9a26b445
                  li x16, 0x4
                  li x17, 0xde4fbd0e
                  li x18, 0x6a512361
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0xff8836c8
                  li x22, 0xf
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x4688754b
                  li x26, 0x38f2e19
                  li x29, 0xb5892084
                  li x30, 0x90c7ecec
                  li x31, 0x2
                  la x28, user_stack_end
main:             addi         s1, zero, 8 #init loop 0 counter
                  sltiu        t4, a3, 932
                  auipc        t2, 911834
                  addi         s4, zero, 12 #init loop 0 limit
                  sltu         s6, s3, s0
main_0_0_t:       slti         s9, a5, 383
                  and          a4, s9, a3
                  lui          t0, 489229
                  addi         s1, s1, 1 #update loop 0 counter
                  srl          t1, s9, s5
                  bltu         s1, s4, main_0_0_t #branch for loop 0
                  slli         s3, a0, 25
                  addi         a6, zero, 3 #init loop 0 counter
                  sltiu        a3, a0, 131
                  addi         sp, zero, 3 #init loop 0 limit
                  sll          s9, zero, s6
main_1_0_t:       sub          tp, t2, t5
                  xori         s0, t5, -1707
                  slli         s3, a2, 10
                  sltiu        zero, gp, -791
                  xori         a5, s10, 724
                  addi         a6, a6, -2 #update loop 0 counter
                  xori         zero, t5, -1267
                  add          s6, t3, zero
                  sll          t2, s0, s8
                  srl          zero, s7, sp
                  srl          a3, a7, t2
                  sra          a4, s4, s4
                  addi         a7, s0, -1656
                  srli         a3, ra, 20
                  srl          t0, a5, a3
                  sltiu        a4, a7, 817
                  slli         a4, zero, 22
                  slt          a7, a3, t2
                  slli         a1, t4, 10
                  andi         t6, a3, 2016
                  xori         t6, ra, 1356
                  bgeu         a6, sp, main_1_0_t #branch for loop 0
                  slt          s9, t1, s2
                  addi         s7, zero, -10 #init loop 1 counter
                  slli         a0, s7, 28
                  addi         a3, zero, 13 #init loop 1 limit
                  sltiu        gp, a4, -338
main_3_1_t:       xori         a1, s8, -914
                  addi         s7, s7, 2 #update loop 1 counter
                  srl          s1, a0, t1
                  srai         t6, a1, 13
                  addi         s9, zero, -7 #init loop 0 counter
                  andi         s2, s10, 538
                  addi         s0, zero, 9 #init loop 0 limit
                  slli         t6, s4, 25
                  slti         gp, a7, 1919
main_3_0_t:       auipc        s1, 802892
                  srl          t1, zero, t6
                  slti         s6, t5, 554
                  addi         s9, s9, 2 #update loop 0 counter
                  srai         gp, t2, 18
                  beq          s9, s0, main_3_0_t #branch for loop 0
                  srl          t0, s10, a6
                  srl          a5, s10, s5
                  andi         t0, t6, -1835
                  addi         t6, s0, 1197
                  andi         s6, sp, -695
                  blt          s7, a3, main_3_1_t #branch for loop 1
                  sltu         s3, a7, t3
                  nop
                  bge          s10, a7, 2f
2:                slli         a0, tp, 8
                  sll          a1, t5, a1
                  and          t2, a5, zero
                  slti         t2, sp, -692
                  srli         t1, t1, 8
                  bltu         a6, s7, 20f
                  nop
                  beq          t6, a4, 17f
                  slt          a4, s0, a4
                  bgeu         s1, ra, 24f
                  srli         gp, s11, 9
                  sra          s7, a1, t5
                  blt          a4, a4, 22f
                  sra          a5, ra, s5
                  slli         t2, s8, 8
17:               bltu         t1, s2, 23f
                  ori          a2, zero, -1123
                  andi         a7, a0, -729
20:               sltu         s9, t3, t4
                  la           s1, sub_1
                  or           s8, a5, s10
                  sltu         a2, t2, s8
                  lui          s9, 310412
                  srli         sp, s8, 0
                  sltiu        s9, a0, -1869
                  addi         s1, s1, -157
                  bne          gp, a4, main_j1 #branch to jump instr
                  nop
                  srl          a2, s10, s5
                  xori         zero, a3, 142
main_j1:          jalr         s1, s1, 158 #jump main -> sub_1
                  sll          zero, a2, t3
22:               blt          t5, zero, 41f
23:               sltu         a2, a3, s8
24:               bge          zero, gp, 34f
                  sltu         s4, s7, a7
                  bltu         s6, t1, 27f
27:               blt          t4, s8, 33f
                  addi         s8, s8, -2021
                  slt          tp, s6, t6
                  add          a4, a4, s11
                  bne          gp, sp, 45f
                  srai         a5, t1, 15
33:               sll          gp, a7, a1
34:               addi         s1, t0, -1697
                  bge          s0, t2, 38f
                  and          t6, t2, a4
                  bltu         t0, ra, 45f
38:               add          t2, a4, a2
                  sltu         a0, ra, t6
                  sub          s3, gp, a6
41:               bltu         sp, gp, 46f
                  sltiu        s3, a6, -1661
                  and          tp, t5, t6
                  slli         a3, s11, 7
45:               bne          t2, a2, 53f
46:               sll          s5, ra, a4
                  andi         a3, t6, -719
                  and          sp, a1, a5
                  addi         s7, zero, -9 #init loop 0 counter
                  lui          s0, 54570
                  ori          a6, a0, -748
                  addi         t1, zero, -4 #init loop 0 limit
main_2_0_t:       slti         sp, zero, 1776
                  auipc        ra, 609116
                  addi         s7, s7, 3 #update loop 0 counter
                  srl          ra, a5, sp
                  blt          s7, t1, main_2_0_t #branch for loop 0
                  andi         a5, gp, -1115
                  andi         tp, t1, -609
                  ori          a7, s1, 1711
                  ori          a1, s5, -569
                  bltu         tp, a3, 59f
53:               xor          s4, t6, s5
                  auipc        tp, 393840
                  bge          s1, t1, 64f
                  addi         a4, s9, -1937
                  add          t6, t2, gp
                  xor          a0, sp, a7
59:               sub          s1, a5, s7
                  bltu         s4, t6, 73f
                  and          a7, t3, zero
                  bltu         zero, s10, 79f
                  sltu         t5, s8, a6
64:               sra          s5, s1, t3
                  srai         s3, s6, 15
                  addi         t0, a2, -472
                  srai         t2, t5, 21
                  sub          s6, tp, t3
                  bne          zero, s1, 89f
                  sltu         zero, t4, a5
                  srl          t5, a0, sp
                  slli         a4, a2, 5
73:               sra          a0, s5, s11
                  srl          t4, t5, a2
                  srli         s8, s8, 23
                  addi         s9, t2, -76
                  sltu         zero, ra, gp
                  bne          zero, gp, 86f
79:               ori          s3, s9, 990
                  sra          a3, s5, t6
                  xori         s5, s11, -1943
                  ori          gp, t6, -282
                  blt          t5, a6, 89f
                  nop
                  bltu         s0, t4, 96f
86:               and          tp, t4, a0
                  and          t1, s6, s11
                  add          a7, s7, s2
89:               sra          t6, t6, ra
                  and          a1, a6, a5
                  or           t6, s4, t0
                  addi         a4, s7, -605
                  bge          s7, gp, 98f
                  or           t4, t0, a1
                  sra          s8, s9, s8
96:               auipc        s7, 5389
                  sltiu        a6, t5, 1692
98:               xori         sp, a7, -2041
                  ori          a2, a5, -975
                  and          s2, ra, t4
                  beq          t3, a6, 108f
                  sub          a6, a6, t5
                  or           a6, a7, s4
                  or           t5, ra, s3
                  slli         t5, s10, 1
                  bge          s9, a6, 122f
                  srli         s7, s7, 15
108:              sltu         s2, t3, t6
                  andi         tp, a0, -1083
                  addi         t6, a7, 852
                  bne          t2, s8, 124f
                  sltiu        a6, s9, 1151
                  srai         t6, t6, 0
                  addi         t4, s7, 1574
                  slt          s2, a7, zero
                  slli         s8, a0, 25
                  beq          t5, t3, 126f
                  sltiu        gp, s10, -1234
                  bge          s1, s8, 123f
                  xori         s5, zero, -1213
                  sub          ra, t2, s5
122:              sltu         a2, a1, t3
123:              sra          s3, a7, a6
124:              andi         a5, s3, 2042
                  addi         a6, a4, -112
126:              bgeu         a1, s3, 132f
                  or           t0, t0, s8
                  sub          s6, tp, sp
                  nop
                  sll          t2, a4, s0
                  andi         sp, t2, -2040
132:              bgeu         t0, s1, 140f
                  addi         a5, s9, 1723
                  xor          gp, s6, a2
                  sltiu        ra, a7, 1018
                  or           a3, s5, ra
                  lui          t2, 220742
                  and          sp, sp, a4
                  srl          s9, a0, a6
140:              bne          s3, a0, 145f
                  srai         s6, a5, 11
                  nop
                  xor          sp, sp, gp
                  bge          s8, a6, 157f
145:              slti         s8, s2, 64
                  srl          ra, s7, zero
                  sub          s8, t1, gp
                  srli         s4, s5, 7
                  or           sp, s6, t2
                  ori          ra, a2, -574
                  srai         s4, a4, 15
                  slti         s3, s8, 1750
                  sltu         gp, s4, t0
                  sub          a2, s4, s2
                  bne          s5, a1, 164f
                  andi         s8, t6, -676
157:              slti         tp, t6, -748
                  slti         a2, s7, 926
                  slti         tp, gp, 2015
                  bge          s7, s9, 177f
                  sra          ra, gp, s5
                  lui          t6, 878456
                  addi         t0, t2, -835
164:              bne          s10, a7, 177f
                  bltu         a3, s4, 179f
                  bltu         t6, s2, 167f
167:              add          a2, a6, s5
                  addi         s8, a5, -1233
                  bne          a3, s4, 173f
                  srli         zero, t2, 24
                  srai         ra, s4, 14
                  sltiu        s6, s9, -2024
173:              beq          s7, s11, 183f
                  sltiu        s1, gp, 1686
                  sltu         t4, t6, a6
                  bne          a1, s11, 185f
177:              sll          a0, s2, s9
                  bne          s3, a0, 191f
179:              andi         a3, s7, -1884
                  srli         zero, t4, 3
                  slli         ra, tp, 12
                  xor          t5, a4, s6
183:              slti         s6, tp, 257
                  slti         zero, tp, -1615
185:              bgeu         a2, s1, 196f
                  bne          s2, s1, 194f
                  bge          a4, tp, 194f
                  bltu         s5, t0, 195f
                  slli         a6, zero, 14
                  slli         s3, s2, 20
191:              nop
                  add          s4, gp, a0
                  srai         s0, a2, 12
194:              addi         s0, s9, -1417
195:              sra          s5, s6, gp
196:              ori          s6, a1, -1108
                  slli         s1, s2, 28
                  sub          a3, s8, a7
                  srai         s8, s7, 19
                  sltiu        s7, a7, 1492
                  sltiu        t4, s6, 1538
                  slti         s3, tp, 517
                  lui          s9, 547595
                  bltu         s9, zero, 206f
                  and          t6, tp, s11
206:              or           s5, a5, s6
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            blt          s11, s10, sub_4_stack_p
                  slli         a1, a3, 13
                  andi         s5, s3, -1374
                  srli         a3, t6, 30
sub_4_stack_p:    addi         t3, t3, -36
                  andi         a5, sp, -958
                  sltiu        gp, s1, -444
                  sw           s1, 4(t3)
                  lui          a2, 671224
                  xor          a4, s9, a1
                  srai         s2, s6, 18
                  addi         t0, zero, 5 #init loop 0 counter
                  addi         a5, a4, -599
                  xor          s1, t0, s8
                  addi         t5, zero, 20 #init loop 0 limit
                  and          s8, t5, t4
                  sltu         s2, t6, zero
sub_4_7_0_t:      xor          t2, gp, s4
                  ori          s3, t3, 1340
                  addi         t0, t0, 4 #update loop 0 counter
                  lui          s0, 278467
                  slti         s7, s10, 1534
                  andi         a7, a2, -1573
                  lui          a1, 333066
                  sra          s4, sp, sp
                  add          t6, s5, a1
                  blt          t0, t5, sub_4_7_0_t #branch for loop 0
                  sll          a5, s9, s2
                  addi         ra, zero, 10 #init loop 0 counter
                  addi         a4, zero, 8 #init loop 0 limit
                  or           t4, t3, a7
                  addi         tp, s2, -1181
                  or           a2, a2, s2
                  andi         t1, s2, 505
sub_4_3_0_t:      auipc        a6, 535273
                  addi         ra, ra, -7 #update loop 0 counter
                  xor          a3, s2, s4
                  bgeu         ra, a4, sub_4_3_0_t #branch for loop 0
                  slli         a0, t0, 1
                  addi         s5, zero, -3 #init loop 1 counter
                  xor          a7, t5, t3
                  ori          ra, a5, 478
                  addi         a4, zero, -1 #init loop 1 limit
                  sltiu        t0, sp, -832
sub_4_5_1_t:      xori         s4, zero, -319
                  addi         s5, s5, 8 #update loop 1 counter
                  auipc        sp, 478391
                  or           s6, tp, s3
                  sra          a6, s7, sp
                  xori         t6, s5, -1548
                  addi         s7, zero, 7 #init loop 0 counter
                  addi         a2, zero, 5 #init loop 0 limit
                  xor          s6, t2, t4
sub_4_5_0_t:      xor          s2, s10, s7
                  nop
                  addi         s7, s7, -3 #update loop 0 counter
                  bgeu         s7, a2, sub_4_5_0_t #branch for loop 0
                  blt          s5, a4, sub_4_5_1_t #branch for loop 1
                  add          a6, a4, a1
                  addi         sp, zero, 9 #init loop 1 counter
                  addi         a4, a1, 113
                  addi         t2, zero, 6 #init loop 1 limit
sub_4_1_1_t:      add          a7, t0, t5
                  sub          a7, a0, t1
                  addi         sp, sp, -5 #update loop 1 counter
                  addi         t0, sp, -136
                  addi         t4, zero, -1 #init loop 0 counter
                  addi         s1, a3, 1365
                  srai         a0, gp, 16
                  sra          s9, t4, a4
                  andi         s7, a3, 1473
                  xor          s1, tp, t5
                  addi         s6, zero, -18 #init loop 0 limit
sub_4_1_0_t:      andi         a3, a3, -1199
                  addi         t4, t4, -6 #update loop 0 counter
                  and          t6, s8, tp
                  bge          t4, s6, sub_4_1_0_t #branch for loop 0
                  bgeu         sp, t2, sub_4_1_1_t #branch for loop 1
                  sra          a6, gp, ra
                  addi         a2, zero, 5 #init loop 1 counter
                  addi         t5, zero, 4 #init loop 1 limit
                  or           tp, s10, s9
sub_4_0_1_t:      andi         t4, a5, -1618
                  addi         a2, a2, -3 #update loop 1 counter
                  addi         t1, zero, -10 #init loop 0 counter
                  and          tp, zero, s11
                  addi         t2, zero, -15 #init loop 0 limit
sub_4_0_0_t:      sltu         a0, s4, s1
                  addi         t1, t1, -5 #update loop 0 counter
                  beq          t1, t2, sub_4_0_0_t #branch for loop 0
                  bgeu         a2, t5, sub_4_0_1_t #branch for loop 1
                  xori         t0, s11, 1346
                  addi         s7, zero, -8 #init loop 1 counter
                  sra          zero, t6, s10
                  ori          t0, a5, -1733
                  sltu         a7, s8, t4
                  sll          t1, t4, s2
                  addi         s3, zero, -13 #init loop 1 limit
                  andi         ra, t4, 32
sub_4_8_1_t:      addi         a4, t2, 231
                  xor          s4, a3, ra
                  slti         t0, s0, 1050
                  auipc        t4, 888730
                  and          s2, tp, s0
                  addi         s7, s7, -6 #update loop 1 counter
                  andi         t4, s5, 1974
                  srli         s9, s7, 8
                  addi         a5, a5, -412
                  addi         a7, s3, 1025
                  addi         t2, zero, 10 #init loop 0 counter
                  addi         t6, zero, 13 #init loop 0 limit
sub_4_8_0_t:      slt          a7, ra, sp
                  xor          a6, s11, t6
                  addi         s4, t3, 1905
                  addi         t2, t2, 4 #update loop 0 counter
                  slt          a7, s8, s7
                  blt          t2, t6, sub_4_8_0_t #branch for loop 0
                  sll          a2, s10, s4
                  slli         s8, a4, 12
                  nop
                  xor          s9, a2, s7
                  ori          sp, a1, 1625
                  addi         t4, s9, -1105
                  bge          s7, s3, sub_4_8_1_t #branch for loop 1
                  slti         s1, s8, -1140
                  nop
                  bge          t5, t6, 17f
                  sll          s7, a0, s7
                  addi         a2, zero, 10 #init loop 0 counter
                  addi         a5, a0, 939
                  addi         s0, zero, 7 #init loop 0 limit
                  xori         sp, s8, 1463
sub_4_2_0_t:      sltu         s6, a0, t1
                  slli         t0, s6, 12
                  slli         s2, a1, 17
                  addi         t5, sp, 1210
                  sll          t0, s10, a6
                  slti         tp, s3, 233
                  addi         a2, a2, -4 #update loop 0 counter
                  sltiu        ra, s8, 1697
                  addi         s7, t4, -416
                  slli         tp, t1, 19
                  bgeu         a2, s0, sub_4_2_0_t #branch for loop 0
                  xor          s8, a2, t4
                  srl          s0, a7, a5
                  addi         tp, t6, 1169
                  nop
                  srl          s6, s2, s10
                  bne          s10, t3, 18f
                  bgeu         tp, s1, 14f
                  slti         a4, s4, -1126
                  sltiu        t2, a0, 1558
                  bge          s7, a2, 30f
                  addi         s9, a0, 174
                  bltu         s3, s5, 28f
14:               sub          s7, a4, tp
                  ori          s1, t1, -11
                  sra          gp, ra, a0
17:               bgeu         s2, t4, 32f
18:               auipc        tp, 277159
                  sltiu        s5, a1, 1467
                  lui          s8, 389112
                  sll          s5, a7, t1
                  auipc        zero, 536852
                  slt          s4, sp, t5
                  lui          a7, 759277
                  bgeu         a5, a2, 26f
26:               srl          a1, t1, zero
                  bgeu         a7, t5, 28f
28:               slt          s6, t1, s3
                  andi         s6, zero, 13
30:               add          s4, s1, s0
                  srl          gp, tp, s0
32:               nop
                  ori          t2, a3, 647
                  andi         a3, t0, -94
                  bge          tp, t0, 54f
                  or           s3, t4, a2
                  srl          t4, t6, a4
                  sll          t6, a2, a0
                  bgeu         t6, a5, 41f
                  bltu         s4, s2, 60f
41:               xori         s9, a4, 183
                  lui          a0, 491216
                  sub          gp, tp, s5
                  xor          s9, a4, zero
                  bne          s0, s2, 51f
                  ori          a5, t5, 644
                  xor          t2, t2, sp
                  srai         gp, gp, 8
                  and          s0, ra, s3
                  auipc        t1, 889033
51:               sra          zero, t6, s6
                  bne          t3, a3, 66f
                  slti         s7, a2, 919
54:               and          t6, t4, s7
                  slt          s5, s7, s6
                  la           a4, sub_5
                  sll          t1, s8, t1
                  addi         a4, a4, 517
                  sll          t4, a6, s7
                  bne          a7, s3, sub_4_j5 #branch to jump instr
                  ori          s3, t5, 857
                  addi         s9, a0, -535
sub_4_j5:         jalr         s1, a4, -516 #jump sub_4 -> sub_5
                  slti         sp, s10, -466
                  or           a5, s4, t0
                  xori         a5, s1, -991
                  andi         s0, s2, 1191
                  xor          s5, t0, s2
60:               srli         s8, t4, 28
                  bge          t0, t3, 78f
                  slli         t5, s7, 15
                  sra          s2, a2, s7
                  sll          a4, a0, t3
                  auipc        a2, 529814
66:               add          sp, s11, a6
                  xor          a4, s10, a5
                  nop
                  slli         t0, a4, 20
                  sub          a1, s0, tp
                  bne          a6, a0, 77f
                  andi         t5, s4, -411
                  lui          a7, 583772
                  sub          s9, s1, t1
                  slli         t2, s2, 21
                  sltiu        a1, t3, -192
77:               slti         a1, s10, 1389
78:               auipc        a2, 203615
                  bne          s5, a7, 94f
                  sll          s9, s11, t6
                  xor          s9, t1, s8
                  andi         a4, t2, 1353
                  or           a3, s7, a7
                  blt          sp, s5, 95f
                  sra          s5, s8, a1
                  xori         t5, sp, -307
                  xor          a5, t6, zero
                  xor          ra, t5, s2
                  srl          s8, a7, a5
                  sltiu        a0, a0, -938
                  slti         gp, s10, 2043
                  srli         s8, s4, 17
                  addi         s9, s2, -1199
94:               auipc        s0, 579604
95:               srl          a4, s8, a1
                  bltu         gp, s7, 101f
                  sll          a5, s3, t6
                  add          a6, s0, s6
                  slti         s2, s7, 1940
                  sll          a0, s1, s6
101:              sltiu        t2, s10, -1403
                  sll          s6, s7, gp
                  ori          ra, ra, -200
                  sra          s9, s1, s7
                  beq          t0, s3, 107f
                  xori         t6, a7, 5
107:              srli         ra, s2, 20
                  bgeu         t3, t1, 122f
                  xor          a2, t3, s4
                  blt          t3, s0, 118f
                  srl          a1, s8, a5
                  add          a5, s7, s5
                  nop
                  slti         s5, s1, 1005
                  andi         s7, t6, 273
                  bge          a7, a5, 122f
                  srli         t2, a3, 25
118:              slli         a4, a0, 17
                  andi         t4, s0, 934
                  bne          s11, s4, 127f
                  slt          tp, s11, s4
122:              sltiu        ra, t6, -1068
                  add          t2, s7, s5
                  sltiu        s8, s1, -145
                  bgeu         tp, s0, 137f
                  slti         a0, a2, 895
127:              sltiu        s9, s10, -798
                  xori         zero, t6, -684
                  slti         t5, s2, -1689
                  xori         tp, s10, -1802
                  sub          s9, s11, t5
                  ori          a2, s9, -360
                  srli         a7, s7, 5
                  xor          gp, s11, s7
                  slt          t6, s5, s6
                  xori         s8, s11, 55
137:              sra          t0, a7, t6
                  sub          s0, s11, s11
                  srl          s6, t4, a5
                  ori          t2, s2, -789
                  slti         s7, t6, -741
                  xori         a6, s1, -619
                  add          zero, a6, a1
                  srl          a1, t2, s4
                  sll          t1, ra, t4
                  sltiu        s2, t1, -439
                  srli         t5, s5, 4
                  lui          s3, 1021396
                  bge          a4, s8, 163f
                  sub          t6, sp, t0
                  nop
                  sltu         sp, t6, s10
                  srl          a1, a2, t0
                  srl          t5, ra, sp
                  sub          t0, zero, s4
                  srl          s6, a6, t3
                  srai         s2, s0, 3
                  bge          t3, tp, 160f
                  srli         s2, s7, 31
160:              bge          s0, s5, 175f
                  andi         s0, a3, -660
                  sltu         t1, a3, a3
163:              addi         s4, a4, -678
                  srli         s4, a1, 8
                  and          t6, s9, s3
                  sll          s8, s9, s7
                  srai         tp, s2, 2
                  add          sp, t3, ra
                  blt          zero, t6, 183f
                  ori          t6, zero, 1414
                  blt          t1, t2, 191f
                  bge          t5, t5, 181f
                  bne          s7, gp, 178f
                  nop
175:              sltu         s5, s11, s10
                  bge          sp, a1, 183f
                  slti         a3, t6, -1540
178:              slt          s9, s3, t5
                  bne          t0, s8, 194f
                  sra          a7, t4, s1
181:              lui          t0, 965307
                  add          t4, s3, t4
183:              addi         t6, t5, -1108
                  sra          a2, t3, a5
                  addi         s4, t5, -1752
                  ori          a4, sp, 1159
                  addi         s7, s5, -1663
                  lui          t1, 143130
                  slti         zero, a1, -687
                  bltu         s5, a2, 204f
191:              sltu         ra, sp, a5
                  sub          a7, t5, t2
                  lui          tp, 928642
194:              sltiu        s8, s8, 583
                  slli         s9, zero, 21
                  bne          t4, s2, 197f
197:              andi         tp, a2, 1371
                  lui          gp, 471384
                  bgeu         s8, t4, 214f
                  or           s7, a6, s6
                  sltu         a2, t4, s0
                  xori         s4, t6, 337
                  srai         a2, s4, 30
204:              srl          a5, a6, a6
                  srl          s0, a7, s3
                  sub          a2, t4, s2
                  sll          a1, s6, s4
                  bgeu         a7, t0, 222f
                  srai         a5, a5, 30
                  sll          a3, t0, zero
                  addi         t6, t1, -471
                  bltu         s9, s11, 224f
                  beq          t1, s11, 230f
214:              ori          a3, t5, -1733
                  slt          s1, t5, a1
                  or           s7, s6, s11
                  andi         a3, s0, 798
                  srli         a4, a2, 24
                  sltiu        s8, s6, -1272
                  srli         t6, s10, 1
                  nop
222:              bgeu         a2, a0, 228f
                  sub          s9, s6, a0
224:              slt          zero, a4, gp
                  lui          s4, 784443
                  srai         a3, s2, 13
                  auipc        s4, 817093
228:              srai         t4, s7, 0
                  srl          a1, s5, s1
230:              bge          a4, a3, 249f
                  bltu         t0, t2, 233f
                  xor          zero, a4, s2
233:              lui          s5, 256962
                  sub          a3, ra, a3
                  sll          a3, s11, s4
                  nop
                  and          sp, s0, t6
                  bgeu         a6, s5, 252f
                  xori         s1, a3, 35
                  addi         a0, zero, -9 #init loop 1 counter
                  addi         a5, zero, -16 #init loop 1 limit
sub_4_6_1_t:      andi         a1, a6, 1294
                  addi         a0, a0, -7 #update loop 1 counter
                  addi         s5, zero, 9 #init loop 0 counter
                  auipc        s2, 864937
                  addi         t4, zero, 9 #init loop 0 limit
sub_4_6_0_t:      slti         s6, t1, 1835
                  addi         s5, s5, -8 #update loop 0 counter
                  bgeu         s5, t4, sub_4_6_0_t #branch for loop 0
                  beq          a0, a5, sub_4_6_1_t #branch for loop 1
                  and          ra, a4, t1
                  sltu         t5, s8, t3
                  auipc        t0, 381856
                  slti         t2, a0, 1954
                  bgeu         tp, a2, 245f
                  sltu         a7, t3, t0
245:              bltu         a1, s2, 251f
                  xori         a4, t0, 952
                  or           s4, a7, ra
                  xor          s7, t6, s9
249:              lui          sp, 190910
                  sltiu        a6, s1, -97
251:              bge          s9, ra, 257f
252:              xor          a7, t1, s1
                  bge          a1, t1, 267f
                  slt          a7, s1, t0
                  srli         s4, s4, 14
                  bgeu         t4, gp, 258f
257:              sltu         t1, a3, gp
258:              blt          s6, gp, 278f
                  slt          s7, zero, s10
                  sltiu        a6, t6, 1981
                  bne          s10, s11, 267f
                  auipc        s1, 767588
                  addi         ra, s3, -46
                  srl          t2, ra, s2
                  beq          s5, a0, 276f
                  bgeu         a5, zero, 285f
267:              lui          s1, 999002
                  sll          a5, a3, s8
                  sub          s2, a0, s5
                  srl          a2, s11, a2
                  addi         t1, s3, 2017
                  andi         t4, s0, 91
                  bge          s3, zero, 281f
                  nop
                  or           t1, a1, s1
276:              slt          s3, ra, tp
                  andi         a1, s4, 2002
278:              ori          gp, s11, -1667
                  and          a3, s1, s2
                  nop
281:              sltiu        a3, a3, 19
                  xori         ra, s4, -1373
                  bge          t5, t3, 284f
284:              bltu         s3, t5, 299f
285:              xor          a1, s9, sp
                  slt          s3, a5, s8
                  bge          s6, s4, 296f
                  add          t4, ra, s10
                  slli         a7, t2, 12
                  blt          t3, s9, 301f
                  bge          t0, t6, 307f
                  bge          t1, t2, 312f
                  xor          s0, t3, t6
                  ori          a5, t0, 186
                  sltu         s1, s4, a3
296:              bltu         s11, t4, 311f
                  sll          a0, t4, s2
                  add          zero, t4, s3
299:              srai         tp, s1, 13
                  srl          s2, a5, a5
301:              andi         s4, s8, -1953
                  add          s5, s9, s3
                  bge          a0, s0, 308f
                  andi         s0, zero, -1399
                  add          s0, t2, a1
                  beq          t3, gp, 308f
307:              and          a2, t5, t3
308:              and          sp, s4, s3
                  andi         t2, s1, 1425
                  slli         s6, s4, 30
311:              slti         a5, t1, 529
312:              addi         sp, a6, -188
                  slt          a2, t2, a5
                  ori          a6, s5, 417
                  or           s0, t0, a3
                  sltu         t5, gp, s0
                  bne          t2, s11, 325f
                  srli         s0, a1, 26
                  slli         a5, t0, 20
                  lui          s1, 349868
                  nop
                  sra          s3, a0, t2
                  sltu         a7, s2, t2
                  beq          a7, tp, 344f
325:              slli         s8, s9, 1
                  xori         s5, s4, -1062
                  bne          tp, s0, 328f
328:              addi         a0, s9, 1074
                  bge          s1, a7, 331f
                  blt          zero, a4, 342f
331:              sra          sp, a5, a2
                  srl          s5, s10, t5
                  sltiu        s4, a4, 17
                  bne          s0, a3, 350f
                  slt          s1, a2, s10
                  andi         t1, s4, -816
                  slli         a1, s11, 31
                  sub          t6, t6, a1
                  slli         t6, s4, 0
                  srl          s6, a2, t4
                  xor          s3, s9, sp
342:              xori         t1, s11, 1518
                  sltiu        s2, s3, 826
344:              sub          s8, sp, s5
                  srli         a6, t1, 3
                  sltiu        ra, a7, 330
                  auipc        t6, 803300
                  srl          s9, s5, a5
                  addi         a6, t4, -800
350:              slti         s6, s6, -958
                  bge          s4, t3, 366f
                  bge          s9, a7, 359f
                  srli         s1, s3, 24
                  sltu         gp, sp, sp
                  and          t0, s10, s3
                  or           s4, a6, a2
                  andi         t4, s8, 361
                  nop
359:              xor          gp, s5, zero
                  auipc        a1, 767878
                  srl          s0, t1, s2
                  bgeu         a5, ra, 368f
                  bne          s9, s1, 380f
                  slli         s2, s9, 2
                  auipc        a0, 702720
366:              nop
                  bgeu         s6, t2, 382f
368:              blt          s2, s5, 382f
                  addi         a6, zero, -1193
                  or           s8, a3, s2
                  and          s0, s7, s9
                  and          ra, ra, s0
                  sub          a4, s11, s9
                  beq          t3, s11, 393f
                  beq          t1, s9, 390f
                  xor          zero, a0, s4
                  beq          s4, t1, 378f
378:              beq          s3, s3, 384f
                  srl          s0, s5, s8
380:              srli         a1, zero, 13
                  xor          s5, t6, t0
382:              slt          a3, t4, t6
                  bgeu         zero, a0, 389f
384:              bgeu         a2, s9, 398f
                  sra          s5, s5, s9
                  sll          t0, s6, t6
                  or           s2, t1, s6
                  andi         sp, s0, 1041
389:              srai         s6, s2, 2
390:              slti         s3, gp, -1873
                  lui          s3, 512312
                  bgeu         s9, a0, 411f
393:              bge          t6, s4, 413f
                  auipc        s6, 596872
                  ori          a6, s1, 616
                  blt          a2, gp, 410f
                  nop
398:              addi         t6, s11, -1456
                  xori         t0, t0, -826
                  slt          zero, a0, s3
                  andi         t5, s2, -1170
                  bge          a5, a4, 417f
                  sll          a1, ra, a7
                  sra          a6, gp, a6
                  bltu         t0, s3, 407f
                  blt          zero, s2, 420f
407:              andi         gp, s7, -1523
                  sll          a3, gp, s11
                  sra          s0, a4, s7
410:              bgeu         t0, a0, 421f
411:              and          a1, a3, t0
                  ori          a1, s0, 1052
413:              xor          s0, t2, a1
                  addi         s4, s11, 408
                  beq          a2, a5, 426f
                  srli         t0, s4, 3
417:              ori          s6, ra, 348
                  addi         s3, zero, 4 #init loop 1 counter
                  addi         s4, zero, 6 #init loop 1 limit
sub_4_4_1_t:      lui          tp, 335613
                  sra          a2, s3, s9
                  addi         s3, s3, 4 #update loop 1 counter
                  addi         t4, zero, -9 #init loop 0 counter
                  addi         t2, zero, 7 #init loop 0 limit
sub_4_4_0_t:      sltiu        t6, a3, 137
                  addi         t4, t4, 8 #update loop 0 counter
                  bne          t4, t2, sub_4_4_0_t #branch for loop 0
                  blt          s3, s4, sub_4_4_1_t #branch for loop 1
                  auipc        a0, 126189
                  sll          s5, s4, t2
                  srl          gp, s10, a4
420:              xori         a2, s8, 142
421:              srl          s2, s11, ra
                  or           a3, a7, a2
                  ori          tp, t3, 1476
                  sra          s8, sp, s6
                  bltu         a7, tp, 431f
426:              slli         a6, a7, 5
                  add          s9, a2, a7
                  srai         tp, s9, 28
                  addi         a4, a0, -787
                  srl          s9, a7, a4
431:              andi         s4, ra, -1687
                  sltu         s0, s1, s1
                  andi         a0, a7, -1492
                  addi         a7, s7, 640
                  slti         t5, a1, 1384
                  xori         s5, t6, 1754
                  xor          t1, s7, s5
                  blt          s0, t0, 447f
                  xor          tp, a3, s2
                  sltiu        a5, a1, -1324
                  bgeu         s9, tp, 455f
                  slt          t4, s3, t4
                  ori          s1, s8, 97
                  sll          t2, t2, t4
                  sra          t6, t5, gp
                  srli         a7, a2, 0
447:              bgeu         s7, a5, 461f
                  nop
                  add          s2, t6, a6
                  bltu         t3, a5, 456f
                  or           t6, s6, a7
                  and          a3, t0, a0
                  andi         a0, sp, -1124
                  slti         s7, tp, 324
455:              xori         a1, s9, 372
456:              bge          a6, gp, 458f
                  addi         t6, s1, 1323
458:              srl          s6, t0, t0
                  bltu         t0, t1, 476f
                  sll          a0, s9, s6
461:              nop
                  xori         a3, sp, -468
                  andi         s8, tp, 141
                  sltu         a6, tp, s11
                  bne          a1, s1, 480f
                  xor          a6, s1, s2
                  srai         s5, gp, 2
                  xori         a4, a3, -532
                  sltiu        sp, t0, -885
                  bltu         s7, tp, 477f
                  and          s0, t6, t5
                  addi         ra, s0, -1945
                  slli         sp, t4, 24
                  and          a3, t6, ra
                  sltu         t0, a4, s4
476:              auipc        s9, 209154
477:              bge          a1, s4, 485f
                  srli         s1, ra, 17
                  slli         s3, a2, 11
480:              srli         t2, s8, 20
                  ori          t6, t2, -1917
                  andi         a2, s7, -990
                  sltiu        s2, s4, -1862
                  blt          s8, s2, 485f
485:              slli         a5, a3, 15
                  lw           s1, 4(t3)
                  xori         a1, s1, -1816
                  lui          t5, 804260
                  sub          s4, t2, t6
                  sra          ra, t6, s2
                  or           t2, t5, tp
                  sra          gp, a2, ra
                  andi         s4, tp, -417
                  addi         t3, t3, 36
                  xori         s3, s1, -1106
                  sub          s7, s4, a6
671:              addi x13, x9, 0
671:              jalr x13, x13, 0
sub_5:            bltu         t1, s9, sub_5_stack_p
                  srai         a6, zero, 10
sub_5_stack_p:    addi         t3, t3, -20
                  sll          ra, a0, t0
                  nop
                  add          t0, s5, t3
                  sub          t4, s10, s10
                  lui          a6, 147859
                  sw           s1, 4(t3)
                  auipc        s0, 26042
                  addi         a1, zero, -1 #init loop 1 counter
                  addi         tp, zero, 5 #init loop 1 limit
sub_5_0_1_t:      sltiu        t4, t6, -744
                  addi         a1, a1, 2 #update loop 1 counter
                  addi         s0, s0, -1431
                  addi         a0, zero, 6 #init loop 0 counter
                  addi         t0, zero, -9 #init loop 0 limit
sub_5_0_0_t:      slti         a7, s2, 410
                  addi         a0, a0, -2 #update loop 0 counter
                  bge          a0, t0, sub_5_0_0_t #branch for loop 0
                  bltu         a1, tp, sub_5_0_1_t #branch for loop 1
                  or           s5, s2, zero
                  sltiu        s0, s0, 1179
                  or           s7, s2, s5
                  or           s4, t1, a7
                  xor          a7, a0, sp
                  sub          s9, s2, s6
                  srli         a1, s11, 29
                  bge          t5, t4, 14f
                  sltu         s0, s7, s7
                  bltu         s2, t3, 11f
                  srl          a0, a3, t0
                  slt          sp, s9, s10
11:               sll          zero, a5, a1
                  and          t0, s1, t1
                  sll          a1, sp, t4
14:               srli         a0, s0, 5
                  bltu         s2, s2, 25f
                  auipc        tp, 775658
                  sll          sp, gp, s3
                  add          s8, s0, s11
                  xori         s6, sp, 1689
                  bge          a7, s11, 29f
                  and          t4, a3, a0
                  bge          t1, s0, 42f
                  sub          s0, a6, ra
                  bltu         a7, s5, 40f
25:               slti         s0, s11, -859
                  or           t0, a0, tp
                  or           s5, t3, s5
                  lui          s1, 200549
29:               bne          t2, s10, 38f
                  bge          t4, a7, 38f
                  sll          a6, s3, s11
                  beq          s3, s0, 45f
                  blt          zero, a2, 37f
                  sltu         s8, s5, a0
                  slt          t5, t3, t6
                  bge          t5, ra, 52f
37:               lui          a4, 684335
38:               lui          tp, 281039
                  bne          s5, s10, 43f
40:               srl          s2, t0, a1
                  sub          a6, s6, a2
42:               lui          a1, 684507
43:               sra          s2, s6, t1
                  add          a1, ra, a2
45:               andi         t0, s3, 1649
                  bne          t2, a2, 57f
                  blt          s2, s10, 66f
                  add          s2, t5, s11
                  bge          t5, s3, 63f
                  blt          s6, t4, 55f
                  slti         s5, s0, 1611
52:               add          t6, t3, s4
                  bltu         s8, gp, 60f
                  addi         a3, a2, -1513
55:               sub          a7, a1, t2
                  xori         t6, zero, -1555
57:               slt          s5, ra, s8
                  add          tp, s0, gp
                  slt          t1, a4, s2
60:               bltu         t5, t5, 67f
                  xori         s1, s2, 1121
                  sltu         s1, s3, a7
63:               bne          s5, s1, 76f
                  xori         a1, tp, -665
                  ori          a6, s10, 1531
66:               add          s0, tp, a4
67:               bne          gp, s5, 68f
68:               xori         a2, s5, 215
                  and          s9, t1, t6
                  slti         a6, s1, 353
                  sra          s4, a4, a1
                  blt          t3, sp, 75f
                  srli         s7, a7, 4
                  blt          s7, ra, 79f
75:               addi         sp, a3, 1173
76:               blt          s2, s5, 77f
77:               slti         a1, a3, -1818
                  bge          s5, s11, 79f
79:               ori          t4, t3, -915
                  sra          zero, s8, t6
                  lw           s1, 4(t3)
                  srli         s5, s6, 26
                  slt          ra, a5, zero
                  slti         s4, t1, 1109
                  addi         t3, t3, 20
                  nop
                  sltiu        sp, t2, 1697
110:              addi x17, x9, 0
110:              jalr x17, x17, 0
sub_1:            sll          a4, t2, a0
                  slli         a1, zero, 4
                  slti         ra, zero, -1776
                  sll          s5, a7, s11
                  addi         t3, t3, -32
                  sw           s1, 4(t3)
                  and          s2, a3, s4
                  sll          t5, s1, s7
                  xor          t4, a7, s1
                  srai         s8, t5, 6
                  bltu         s4, t1, sub_1_j2 #branch to jump instr
                  auipc        s4, 358605
                  sll          s9, t6, a6
                  srl          a7, s5, t1
                  sra          a4, s6, t6
                  ori          zero, a2, 1937
sub_1_j2:         jal          s1, sub_2 #jump sub_1 -> sub_2
                  xor          t1, a1, tp
                  la           s9, sub_3
                  sub          s1, s10, s9
                  sltiu        sp, gp, 1171
                  and          sp, s7, s3
                  addi         s9, s9, -146
                  ori          s5, t0, -1777
sub_1_j3:         jalr         s1, s9, 147 #jump sub_1 -> sub_3
                  addi         t1, zero, 10 #init loop 1 counter
                  nop
                  addi         a5, zero, 16 #init loop 1 limit
sub_1_0_1_t:      slti         a7, s6, 1356
                  ori          t0, s9, 1662
                  addi         t1, t1, 7 #update loop 1 counter
                  xori         s9, a5, -609
                  ori          zero, tp, -1804
                  addi         s3, zero, -2 #init loop 0 counter
                  slt          zero, ra, s2
                  addi         a0, zero, -10 #init loop 0 limit
sub_1_0_0_t:      slt          t4, s4, s0
                  nop
                  addi         s3, s3, -4 #update loop 0 counter
                  ori          sp, t3, -1887
                  beq          s3, a0, sub_1_0_0_t #branch for loop 0
                  blt          t1, a5, sub_1_0_1_t #branch for loop 1
                  xori         tp, s4, 1604
                  addi         t0, zero, -9 #init loop 1 counter
                  andi         a2, gp, 144
                  sub          a7, s10, a4
                  addi         s7, zero, -11 #init loop 1 limit
                  sll          a4, a4, a0
sub_1_1_1_t:      xori         a1, s7, -457
                  sltu         a2, ra, s2
                  srl          gp, t2, a4
                  addi         t0, t0, -9 #update loop 1 counter
                  xori         a4, s9, -542
                  addi         a5, zero, 10 #init loop 0 counter
                  slti         a0, s10, -188
                  addi         s4, zero, -5 #init loop 0 limit
                  slt          s6, a6, s5
sub_1_1_0_t:      addi         a2, gp, -1540
                  xor          s2, t2, a7
                  auipc        t6, 1011705
                  slli         a7, a7, 11
                  and          s5, sp, s6
                  sltiu        tp, a7, 1771
                  addi         a5, a5, -3 #update loop 0 counter
                  slti         ra, t5, 923
                  andi         s8, s2, -682
                  bne          a5, s4, sub_1_1_0_t #branch for loop 0
                  auipc        ra, 543673
                  sll          t1, a1, s8
                  bge          t0, s7, sub_1_1_1_t #branch for loop 1
                  auipc        s5, 930321
                  srli         s2, a1, 17
                  sltiu        s7, s3, 2009
                  or           zero, a7, tp
                  andi         s1, s9, -1047
                  nop
                  and          t0, s6, a2
                  sub          a2, s5, sp
                  srl          a3, a5, a5
                  srl          t1, s8, a5
                  sltiu        t1, t4, -1279
                  addi         t2, a6, 947
                  blt          s10, s2, 12f
12:               sltiu        s0, s7, -1059
                  ori          a2, ra, 1937
                  add          a2, s4, a5
                  nop
                  bge          s5, s2, 27f
                  sll          t4, s3, a2
                  auipc        s5, 553120
                  bge          a3, ra, 21f
                  sub          a3, s6, s5
21:               bltu         s3, a5, 29f
                  andi         s3, zero, 857
                  slt          tp, s7, zero
                  lui          a5, 73965
                  srl          s2, a5, s7
                  add          s3, a1, a7
27:               nop
                  bgeu         s2, s3, 41f
29:               sub          a0, t2, zero
                  bgeu         t5, t5, 38f
                  bge          a6, t0, 46f
                  bltu         a4, a3, 46f
                  srli         ra, s10, 2
                  andi         a2, a6, -836
                  andi         s8, tp, -1489
                  ori          t4, t1, 1424
                  sra          t0, ra, a4
38:               bne          t2, s8, 41f
                  srli         a4, t1, 0
                  nop
41:               sltu         a1, s8, a3
                  srli         a6, s9, 15
                  srli         tp, ra, 6
                  sll          t4, a5, s1
                  bge          s3, s10, 49f
46:               sll          s2, t6, s6
                  srai         s7, s1, 17
                  sll          a0, a2, s5
49:               slli         tp, s10, 9
                  beq          a1, s8, 57f
                  slli         t6, s7, 23
                  srai         s1, a4, 6
                  slt          sp, t3, s3
                  sltu         t2, t2, s3
                  bne          zero, a2, 62f
                  xori         ra, s6, -1893
57:               bge          s1, s7, 70f
                  sltiu        t2, s6, -951
                  addi         a6, s0, -343
                  blt          gp, s3, 80f
                  or           s9, s10, s5
62:               and          a4, s3, t4
                  sra          a0, a0, s0
                  blt          s1, t0, 77f
                  lui          tp, 750448
                  slli         ra, ra, 25
                  sra          a1, a7, sp
                  xor          t0, sp, s1
                  beq          a6, s4, 85f
70:               or           a2, a1, ra
                  or           s2, s2, zero
                  lui          a4, 338216
                  bne          s4, s2, 81f
                  auipc        a1, 804917
                  slti         s5, ra, 999
                  or           t5, sp, s8
77:               slli         t4, s5, 11
                  srai         a1, s11, 10
                  xori         t1, tp, 1592
80:               srli         t4, t0, 24
81:               sltiu        sp, s7, 248
                  blt          s0, t6, 98f
                  slli         s2, a5, 16
                  bltu         s8, t3, 101f
85:               bltu         t5, a2, 90f
                  add          gp, s2, ra
                  sltiu        s2, s0, -323
                  sll          t5, t6, a3
                  bge          s6, a1, 107f
90:               xor          t0, t3, t3
                  srl          s3, t4, s1
                  srai         t2, s0, 28
                  blt          t6, s7, 106f
                  xor          a1, t1, gp
                  nop
                  xor          s6, sp, s2
                  lui          tp, 699773
98:               and          s3, a7, t6
                  bltu         t3, s3, 117f
                  addi         ra, s5, 361
101:              sub          t0, s8, s2
                  sltiu        t1, a5, -1069
                  slli         s1, s9, 24
                  sltu         t4, a0, t2
                  slli         t0, s3, 0
106:              auipc        s1, 57252
107:              bne          zero, s6, 115f
                  and          a3, s2, a1
                  sub          s5, s8, t6
                  ori          a7, sp, -43
                  slti         a0, t5, -697
                  sll          s9, s3, s11
                  ori          s1, s9, 1303
                  beq          zero, s11, 122f
115:              and          t6, ra, s11
                  nop
117:              bne          a4, t6, 121f
                  add          t1, t3, t1
                  bltu         a4, t6, 136f
                  blt          ra, s4, 137f
121:              and          s5, s0, ra
122:              sltu         s3, t3, ra
                  slt          t0, s0, t2
                  slti         s6, s2, 626
                  slti         a1, s8, -1113
                  beq          s0, t2, 136f
                  xor          t0, s6, s0
                  bge          s2, a0, 132f
                  sra          a1, a3, s9
                  ori          sp, t5, 1609
                  slti         s6, ra, 1623
132:              ori          a1, t1, 1504
                  bge          t1, a7, 141f
                  sra          t6, a6, t1
                  andi         a3, a6, -679
136:              xori         s3, s4, 83
137:              slt          s1, t1, sp
                  auipc        a4, 967678
                  add          ra, t3, a4
                  or           t1, a7, a4
141:              sltu         s3, zero, a2
                  sub          ra, t4, s5
                  sltiu        t4, s2, -1563
                  sub          a5, a6, tp
                  add          s4, s11, tp
                  addi         t1, s3, -1491
                  srl          a5, a7, t6
                  xori         zero, gp, 848
                  or           s7, t0, a3
                  lw           s1, 4(t3)
                  lui          t5, 524495
                  addi         t3, t3, 32
                  sltiu        s9, a6, -1035
225:              addi x2, x9, 1
225:              jalr x2, x2, 0
sub_2:            andi         a6, t3, -1540
                  add          t4, s2, a2
                  bge          sp, a6, sub_2_stack_p
sub_2_stack_p:    addi         t3, t3, -60
                  sw           s1, 4(t3)
                  add          gp, s10, t5
                  sub          sp, a6, ra
                  addi         ra, zero, -2 #init loop 0 counter
                  xor          t1, a3, a0
                  and          s3, s9, a2
                  lui          s7, 359585
                  add          s2, tp, a5
                  lui          tp, 958349
                  ori          s7, t4, 56
                  add          t0, a6, t0
                  auipc        a3, 772749
                  addi         s0, zero, 8 #init loop 0 limit
                  sltiu        s3, zero, -1698
                  ori          a4, s9, 803
                  srai         s9, s2, 16
sub_2_4_0_t:      slt          s9, a2, s1
                  auipc        s2, 799913
                  addi         ra, ra, 5 #update loop 0 counter
                  srl          s8, t6, t6
                  andi         t6, s0, -997
                  sll          t4, t0, s11
                  srai         a3, tp, 15
                  lui          s1, 576288
                  bne          ra, s0, sub_2_4_0_t #branch for loop 0
                  lui          t1, 228546
                  addi         a5, zero, 8 #init loop 1 counter
                  or           s2, s8, a2
                  sub          a6, zero, s7
                  addi         a2, zero, -10 #init loop 1 limit
                  slli         s4, s0, 28
                  sra          s3, tp, s9
                  ori          t1, a5, 1731
sub_2_15_1_t:     sub          sp, a1, a0
                  slti         s4, a3, -1849
                  sub          tp, s8, t6
                  sub          ra, a3, s1
                  addi         a5, a5, -7 #update loop 1 counter
                  or           t0, a5, ra
                  lui          t6, 181191
                  sll          t6, ra, s1
                  srli         zero, t1, 6
                  srl          s7, s11, tp
                  addi         s1, zero, -6 #init loop 0 counter
                  slti         s5, t0, 120
                  addi         a1, zero, -15 #init loop 0 limit
                  and          s4, a2, s4
sub_2_15_0_t:     xori         a0, zero, 1726
                  slli         t5, a0, 20
                  addi         s1, s1, -3 #update loop 0 counter
                  beq          s1, a1, sub_2_15_0_t #branch for loop 0
                  andi         a6, t2, 1192
                  or           gp, t3, t6
                  and          s8, s8, s3
                  add          s2, a3, zero
                  and          zero, t2, a5
                  addi         t6, sp, -552
                  bge          a5, a2, sub_2_15_1_t #branch for loop 1
                  sll          zero, s4, t3
                  addi         a3, zero, -5 #init loop 1 counter
                  sll          ra, s10, ra
                  addi         a4, zero, 15 #init loop 1 limit
                  nop
sub_2_11_1_t:     or           a5, s4, a3
                  addi         a3, a3, 10 #update loop 1 counter
                  addi         s0, zero, 5 #init loop 0 counter
                  ori          a0, s0, 1095
                  ori          a1, t4, -223
                  and          a2, a5, s1
                  addi         s3, zero, 5 #init loop 0 limit
                  slli         t1, s11, 25
                  srl          t1, t4, s11
sub_2_11_0_t:     and          s5, a0, a2
                  addi         s0, s0, -4 #update loop 0 counter
                  lui          a0, 12127
                  bgeu         s0, s3, sub_2_11_0_t #branch for loop 0
                  xori         t2, t4, -230
                  add          t6, t3, t0
                  bltu         a3, a4, sub_2_11_1_t #branch for loop 1
                  and          s8, a3, s9
                  addi         t5, zero, -5 #init loop 0 counter
                  addi         a7, zero, -13 #init loop 0 limit
                  slt          t2, t3, t2
sub_2_16_0_t:     sub          a0, s3, s6
                  addi         t5, t5, -8 #update loop 0 counter
                  auipc        s2, 83135
                  bne          t5, a7, sub_2_16_0_t #branch for loop 0
                  sub          t6, t3, s10
                  addi         a0, zero, 2 #init loop 0 counter
                  addi         a7, zero, -10 #init loop 0 limit
                  lui          t4, 62509
sub_2_5_0_t:      auipc        t4, 187069
                  addi         t4, s9, -1012
                  addi         a0, a0, -6 #update loop 0 counter
                  bne          a0, a7, sub_2_5_0_t #branch for loop 0
                  auipc        s3, 336400
                  addi         a7, zero, -7 #init loop 1 counter
                  lui          t4, 969322
                  addi         tp, zero, 5 #init loop 1 limit
                  auipc        s7, 206560
sub_2_8_1_t:      slti         sp, a1, 84
                  or           ra, t5, s8
                  addi         a7, a7, 9 #update loop 1 counter
                  addi         gp, zero, 6 #init loop 0 counter
                  xor          s9, a2, zero
                  addi         a1, zero, 6 #init loop 0 limit
sub_2_8_0_t:      sub          a4, s0, a0
                  auipc        s0, 583835
                  addi         gp, gp, -5 #update loop 0 counter
                  bgeu         gp, a1, sub_2_8_0_t #branch for loop 0
                  sll          s5, gp, t0
                  bltu         a7, tp, sub_2_8_1_t #branch for loop 1
                  srl          a3, a0, gp
                  addi         a0, zero, -10 #init loop 1 counter
                  andi         sp, s6, -1171
                  slti         s7, ra, 1714
                  srl          t4, s11, a3
                  slli         s4, t0, 8
                  lui          s3, 1030874
                  lui          tp, 156595
                  sra          s8, a6, t1
                  addi         s2, zero, -2 #init loop 1 limit
                  andi         a5, s7, -184
sub_2_7_1_t:      sub          t6, s1, a1
                  srli         a4, t1, 7
                  or           tp, t0, s5
                  addi         a0, a0, 8 #update loop 1 counter
                  addi         s0, zero, 8 #init loop 0 counter
                  or           sp, s1, t5
                  addi         s9, zero, 8 #init loop 0 limit
                  nop
                  sub          t1, s8, s6
                  slti         t0, s8, 2019
                  slti         s6, a2, 1766
sub_2_7_0_t:      and          a6, t2, a7
                  sltu         s1, a7, gp
                  addi         s0, s0, -7 #update loop 0 counter
                  and          t2, t5, s8
                  and          s7, a1, s3
                  xori         t6, tp, 1428
                  sltiu        t1, tp, -1013
                  nop
                  bgeu         s0, s9, sub_2_7_0_t #branch for loop 0
                  sll          a7, tp, t1
                  add          a2, a7, s9
                  addi         sp, a5, -358
                  bne          a0, s2, sub_2_7_1_t #branch for loop 1
                  slt          a2, t4, a5
                  addi         s0, zero, 2 #init loop 1 counter
                  xori         zero, t3, 1772
                  addi         a3, zero, -6 #init loop 1 limit
sub_2_6_1_t:      addi         s1, sp, 1065
                  sltu         t4, s5, a3
                  addi         s0, s0, -8 #update loop 1 counter
                  slti         sp, a5, 1410
                  addi         s4, zero, 8 #init loop 0 counter
                  addi         a2, zero, 5 #init loop 0 limit
                  slli         a0, s10, 5
sub_2_6_0_t:      sub          s3, s2, s9
                  addi         s4, s4, -1 #update loop 0 counter
                  sub          s8, gp, a0
                  sll          t2, a7, t4
                  bgeu         s4, a2, sub_2_6_0_t #branch for loop 0
                  auipc        zero, 224367
                  bne          s0, a3, sub_2_6_1_t #branch for loop 1
                  or           s9, t0, s8
                  addi         a2, zero, 0 #init loop 0 counter
                  srl          a0, ra, s7
                  lui          s2, 45745
                  addi         s0, zero, 18 #init loop 0 limit
                  sub          s4, a4, t6
sub_2_3_0_t:      sub          s1, s10, t4
                  srl          t5, s1, s7
                  sltiu        t6, t4, -956
                  addi         a2, a2, 6 #update loop 0 counter
                  xor          tp, a7, t1
                  and          a4, t2, s2
                  bne          a2, s0, sub_2_3_0_t #branch for loop 0
                  sltu         s2, s4, t4
                  addi         a7, zero, -4 #init loop 0 counter
                  andi         s9, t6, 1185
                  sltu         s1, a0, a0
                  addi         s5, zero, 11 #init loop 0 limit
sub_2_13_0_t:     sub          s4, a3, s5
                  add          s0, ra, a1
                  addi         a7, a7, 1 #update loop 0 counter
                  ori          a0, s5, 916
                  nop
                  lui          t4, 908732
                  bne          a7, s5, sub_2_13_0_t #branch for loop 0
                  slti         a5, s8, -2002
                  addi         t0, zero, -9 #init loop 0 counter
                  addi         s9, zero, -17 #init loop 0 limit
sub_2_0_0_t:      sub          a5, s2, sp
                  addi         t0, t0, -4 #update loop 0 counter
                  ori          a1, t3, -1820
                  sub          s6, t0, a0
                  lui          a6, 461622
                  srli         a6, a4, 2
                  xori         s4, t6, 1778
                  beq          t0, s9, sub_2_0_0_t #branch for loop 0
                  xori         t2, s7, 644
                  addi         t1, zero, -9 #init loop 1 counter
                  addi         s8, a4, -582
                  addi         a3, zero, -16 #init loop 1 limit
                  sra          a1, zero, t3
                  and          t2, s1, zero
sub_2_12_1_t:     xor          t0, s8, s0
                  addi         t1, t1, -3 #update loop 1 counter
                  addi         s4, zero, 10 #init loop 0 counter
                  slli         s1, s3, 12
                  sra          a4, s10, s5
                  addi         a7, zero, 8 #init loop 0 limit
sub_2_12_0_t:     xor          a4, sp, a2
                  addi         s4, s4, -2 #update loop 0 counter
                  or           ra, gp, a4
                  bgeu         s4, a7, sub_2_12_0_t #branch for loop 0
                  bge          t1, a3, sub_2_12_1_t #branch for loop 1
                  sll          s2, a0, s11
                  addi         sp, zero, 0 #init loop 1 counter
                  xor          t1, gp, ra
                  slti         s6, a2, -1173
                  srai         a7, zero, 8
                  lui          s2, 327930
                  xor          ra, s5, s10
                  sra          a5, a7, a7
                  srli         a5, s10, 16
                  addi         a2, zero, 4 #init loop 1 limit
                  srl          s5, a4, t4
sub_2_1_1_t:      slt          a4, t1, s1
                  srl          t6, s11, t3
                  addi         sp, sp, 4 #update loop 1 counter
                  slli         s0, a3, 16
                  andi         s0, s9, -233
                  addi         s8, zero, -5 #init loop 0 counter
                  addi         t4, zero, -15 #init loop 0 limit
                  slt          a0, t5, s8
sub_2_1_0_t:      sub          t0, gp, a3
                  addi         s8, s8, -4 #update loop 0 counter
                  xori         s2, t0, 9
                  and          s9, t2, a3
                  bge          s8, t4, sub_2_1_0_t #branch for loop 0
                  sltu         a7, a3, s3
                  beq          sp, a2, sub_2_1_1_t #branch for loop 1
                  or           a7, a6, a6
                  addi         sp, zero, -8 #init loop 1 counter
                  addi         s8, a3, 1244
                  lui          s5, 524909
                  add          a7, sp, t1
                  xori         s5, s9, -1383
                  srai         t4, s3, 23
                  addi         ra, zero, 13 #init loop 1 limit
                  srli         a1, s2, 7
sub_2_2_1_t:      slt          tp, s8, s4
                  or           t0, a3, t4
                  sra          gp, gp, s6
                  sra          s3, t5, a3
                  addi         sp, sp, 8 #update loop 1 counter
                  slti         s8, a5, 1062
                  sra          gp, t5, a5
                  addi         t6, zero, 6 #init loop 0 counter
                  sub          tp, s8, gp
                  addi         s0, zero, 20 #init loop 0 limit
                  auipc        s4, 515912
sub_2_2_0_t:      xori         s5, a7, 601
                  srli         t5, s9, 16
                  add          s5, zero, s8
                  addi         t6, t6, 7 #update loop 0 counter
                  slt          zero, a5, s10
                  beq          t6, s0, sub_2_2_0_t #branch for loop 0
                  ori          a4, s11, -747
                  bltu         sp, ra, sub_2_2_1_t #branch for loop 1
                  xori         s5, t6, 878
                  addi         s7, zero, -9 #init loop 1 counter
                  lui          s3, 240655
                  addi         s6, zero, 15 #init loop 1 limit
                  and          t6, sp, a4
                  lui          a2, 786410
sub_2_10_1_t:     or           s5, t1, t1
                  and          ra, a4, ra
                  addi         s7, s7, 8 #update loop 1 counter
                  xor          gp, s1, a6
                  addi         s0, zero, -8 #init loop 0 counter
                  or           a7, s9, s8
                  sltiu        a3, s10, 518
                  and          s5, a0, zero
                  nop
                  addi         s8, zero, -2 #init loop 0 limit
                  addi         a2, t5, 127
                  andi         a7, t6, -1229
sub_2_10_0_t:     slt          t6, t4, ra
                  andi         t4, t3, 544
                  sltu         s5, a1, t3
                  addi         s0, s0, 1 #update loop 0 counter
                  slt          t4, s7, a5
                  srli         t0, a6, 10
                  blt          s0, s8, sub_2_10_0_t #branch for loop 0
                  slli         a2, s2, 5
                  auipc        a2, 725130
                  sltiu        a4, zero, 183
                  sub          s4, s3, a3
                  srli         a1, s1, 12
                  addi         zero, a6, 507
                  beq          s7, s6, sub_2_10_1_t #branch for loop 1
                  auipc        a2, 488253
                  addi         t4, zero, 0 #init loop 1 counter
                  auipc        t1, 562934
                  addi         s9, zero, -8 #init loop 1 limit
sub_2_9_1_t:      sltu         a2, a7, zero
                  addi         t4, t4, -4 #update loop 1 counter
                  addi         a6, zero, -5 #init loop 0 counter
                  lui          ra, 186909
                  addi         s3, zero, 9 #init loop 0 limit
                  addi         a4, s10, -1434
sub_2_9_0_t:      xori         a5, s10, -941
                  addi         a6, a6, 9 #update loop 0 counter
                  bltu         a6, s3, sub_2_9_0_t #branch for loop 0
                  srai         a4, t3, 8
                  bne          t4, s9, sub_2_9_1_t #branch for loop 1
                  slti         a0, gp, -1108
                  bge          a3, a7, 9f
                  sra          t4, s3, a3
                  bge          ra, a6, 17f
                  and          a6, zero, t1
                  nop
                  srli         s3, t4, 21
                  slti         tp, s7, -297
                  bne          s7, a0, 11f
                  nop
9:                add          a0, t3, s0
                  beq          tp, s0, 14f
11:               sltiu        s3, tp, -877
                  and          t1, s1, a0
                  nop
14:               xor          s6, t1, a3
                  slli         s0, s0, 30
                  add          s8, t3, s4
17:               bge          s6, sp, 28f
                  xor          a2, t0, sp
                  beq          s3, t1, 24f
                  bne          t0, a2, 30f
                  bltu         sp, s8, 27f
                  ori          s7, s7, -658
                  slt          a6, t6, s2
24:               bltu         s4, t1, 27f
                  xori         s3, t4, 1952
                  sra          s2, a6, s1
27:               addi         sp, a0, -415
28:               addi         s8, a4, 855
                  nop
30:               xor          a4, s5, t2
                  blt          a6, a5, 45f
                  nop
                  or           a2, t4, sp
                  slti         s8, a2, -1641
                  addi         tp, t2, 1651
                  ori          tp, s9, -1634
                  lui          a7, 833751
                  bltu         a5, s11, 53f
                  srli         gp, s2, 15
                  srli         a0, s10, 2
                  slti         s7, a4, 362
                  srl          a2, t6, s7
                  bgeu         s2, s11, 60f
                  andi         t6, a0, -706
45:               sltiu        t1, t3, 199
                  xori         gp, gp, 1902
                  auipc        a0, 901806
                  andi         a2, t3, -269
                  addi         a2, t0, -18
                  xor          s5, a5, s2
                  bne          a1, a2, 59f
                  sltu         sp, a3, gp
53:               blt          s0, s2, 62f
                  srl          zero, s3, sp
                  nop
                  slti         a4, t6, 310
                  add          a6, a1, a3
                  or           gp, s10, s2
59:               sltu         ra, sp, s2
60:               or           t2, a7, s10
                  bge          s0, s11, 75f
62:               srl          s9, s3, s7
                  or           a3, t0, ra
                  slli         s1, gp, 1
                  or           t2, s5, a2
                  and          s3, a3, zero
                  and          a2, t1, a6
                  bge          s9, a7, 79f
                  sll          a5, zero, gp
                  lui          a3, 815339
                  srai         t4, s7, 16
                  sltu         a1, s4, t3
                  xori         s8, s1, -939
                  beq          a5, s5, 89f
75:               srli         a1, s3, 23
                  blt          s1, t5, 84f
                  auipc        a7, 413570
                  xori         t2, s7, -537
79:               bge          a3, t6, 85f
                  slti         a4, a7, -1417
                  add          a1, sp, a2
                  or           gp, ra, a1
                  slt          t0, t5, t4
84:               srai         a4, a1, 29
85:               slti         a6, t6, 1797
                  nop
                  srai         sp, t0, 0
                  or           sp, s11, t2
89:               add          s2, s4, s6
                  slli         t6, a7, 29
                  andi         s2, t1, 1779
                  bgeu         a2, t2, 98f
                  slli         a4, sp, 28
                  blt          a6, s0, 102f
                  xori         a3, s5, 1668
                  xor          tp, t5, s5
                  slt          t4, a1, a4
98:               sltu         s3, sp, zero
                  xori         a5, s1, 736
                  auipc        a1, 443735
                  slti         a5, a4, 1645
102:              auipc        s0, 183742
                  beq          s8, s0, 122f
                  nop
                  sub          a1, s10, sp
                  auipc        a1, 1020487
                  andi         s0, t6, 1467
                  sll          s8, s1, a3
                  srli         a2, s11, 23
                  or           a3, t0, a2
                  srl          a1, t0, s11
                  ori          a7, a6, -647
                  auipc        a7, 506591
                  nop
                  lui          a5, 360758
                  ori          a2, s6, -1924
                  bge          t4, s4, 131f
                  srl          a4, a0, ra
                  ori          s2, gp, 727
                  bne          s6, s6, 134f
                  xori         a1, t1, -777
122:              srai         a3, t0, 10
                  auipc        t6, 614925
                  sltiu        a6, s11, 872
                  andi         ra, s1, 1899
                  bltu         s5, a7, 136f
                  bne          a5, s9, 134f
                  xori         gp, s11, -1405
                  sltiu        t5, ra, 1843
                  srl          s2, s10, tp
131:              slli         s2, t2, 25
                  and          s1, a1, s6
                  blt          a5, a4, 144f
134:              add          t1, t1, s5
                  sub          a1, s7, t2
136:              or           zero, s8, s10
                  xori         s8, t2, 663
                  ori          t6, a2, -1241
                  addi         tp, t5, 612
                  bgeu         s9, a2, 143f
                  beq          s11, a7, 158f
                  or           sp, a2, s3
143:              srai         a6, ra, 30
144:              bne          s8, s5, 150f
                  sra          a4, t0, t4
                  sltu         t6, t6, t4
                  bltu         s5, a5, 153f
                  slti         sp, tp, 507
                  sra          s9, t3, a4
150:              xori         s1, t5, -58
                  sll          a0, s10, t6
                  slli         s2, zero, 0
153:              slli         s5, a7, 11
                  and          a2, s1, s1
                  xor          a2, a4, s11
                  andi         a0, a1, 959
                  sltiu        tp, s0, -875
158:              add          sp, t4, ra
                  auipc        s9, 19624
                  andi         t4, t5, 1311
                  slti         a6, tp, -1091
                  xori         a2, s11, 86
                  beq          s8, gp, 167f
                  or           a2, s3, s0
                  blt          t3, s0, 179f
                  srli         t1, s6, 28
167:              and          a2, s5, s8
                  bne          s6, s3, 175f
                  add          s1, s7, s7
                  beq          t5, s2, 174f
                  andi         ra, s9, -603
                  bge          t3, t4, 189f
                  add          s7, s11, ra
174:              srl          a7, a3, t1
175:              blt          a7, a3, 189f
                  sltiu        s1, s0, 1865
                  xor          ra, t5, a6
                  sltiu        a3, t3, -1028
179:              sub          s9, zero, t1
                  bge          t6, a7, 190f
                  ori          a0, sp, -1444
                  add          s8, s6, ra
                  bgeu         s6, a0, 189f
                  or           s2, s11, s4
                  bge          a1, s9, 194f
                  slti         s1, s11, 846
                  auipc        s8, 870250
                  bge          a3, t4, 203f
189:              and          t2, t6, a4
190:              addi         s4, sp, -609
                  xor          t6, s2, t2
                  xori         a0, t0, -1677
                  auipc        a2, 66391
194:              and          a7, t1, s2
                  sll          a0, a4, s2
                  or           s6, s10, t4
                  xori         t2, s6, 481
                  ori          t2, s5, -796
                  ori          s2, a2, 1191
                  slt          t0, s3, a2
                  sub          gp, sp, a0
                  bgeu         a1, ra, 211f
203:              sra          tp, t4, tp
                  srli         t5, s7, 5
                  srli         s8, a3, 12
                  beq          sp, s2, 220f
                  lui          a3, 244662
                  sltiu        s9, a1, -856
                  andi         sp, s6, 660
                  slli         zero, s3, 12
211:              slt          zero, a7, ra
                  auipc        a1, 607390
                  beq          ra, gp, 221f
                  auipc        sp, 527765
                  sub          a4, a6, s5
                  bne          a0, a2, 227f
                  lui          s5, 720638
                  ori          s8, a3, 51
                  and          s8, t5, s10
220:              bne          a0, s1, 228f
221:              sltiu        t5, a7, 1607
                  sltu         t1, a1, s8
                  blt          t5, t6, 242f
                  blt          sp, t0, 235f
                  sll          s1, zero, s1
                  beq          tp, s9, 237f
227:              blt          s8, t4, 242f
228:              srl          sp, s10, a1
                  and          a5, ra, a5
                  bltu         t0, s2, 236f
                  sub          a6, s6, s4
                  nop
                  add          s8, s4, s1
                  srli         s5, a0, 31
235:              sltiu        s8, s9, 651
236:              sltu         s4, s11, s4
237:              and          s7, ra, t4
                  srl          ra, t5, s11
                  sltu         s3, a5, t4
                  or           a6, sp, s11
                  bgeu         t2, a7, 244f
242:              and          s0, s6, s1
                  srl          t5, sp, t0
244:              lui          s9, 1044361
                  bgeu         a5, s8, 250f
                  nop
                  srli         t2, s0, 26
                  sll          s3, t6, tp
                  addi         t1, s0, 1300
250:              sra          t4, s4, zero
                  nop
                  beq          s0, a1, 269f
                  add          s8, t5, s4
                  slt          t6, a2, s5
                  sra          tp, ra, s2
                  addi         a1, t1, 1860
                  slt          ra, s1, a6
                  beq          t0, s10, 264f
                  auipc        s1, 248044
                  or           gp, t0, a6
                  xor          t4, s2, t4
                  slli         a6, s7, 24
                  slli         s8, t0, 13
264:              sub          s3, a5, s7
                  bge          t3, t6, 280f
                  ori          s5, a4, -367
                  sub          s3, s10, a2
                  nop
                  sltu         a3, s8, t0
                  ori          zero, s1, 579
                  slt          s7, t5, s7
                  blt          s2, a5, sub_2_j4 #branch to jump instr
                  slt          a0, a2, t1
                  andi         a5, s0, 1411
sub_2_j4:         jal          s1, sub_4 #jump sub_2 -> sub_4
                  beq          s5, s2, 281f
                  auipc        t4, 863169
269:              sll          s9, zero, tp
                  slt          t6, a3, t3
                  sll          s9, s11, s3
                  addi         t5, a5, 1254
                  blt          s2, a5, 281f
                  xor          a5, sp, a0
                  auipc        s4, 148085
                  xori         s8, t5, 1138
                  slt          t4, s3, s7
                  andi         t4, a6, -1341
                  bgeu         a6, zero, 282f
280:              srai         s9, a2, 20
281:              sub          sp, s4, t0
282:              srli         s0, s6, 21
                  slti         tp, t3, -57
                  sub          a7, t2, a1
                  xor          s9, t2, t2
                  sra          t4, s4, t4
                  srl          s2, zero, s2
                  sltiu        s1, s8, -2034
                  add          s6, a3, s4
                  slti         t6, a3, 1088
                  bgeu         s9, a0, 301f
                  sll          zero, s4, s7
                  sltu         s4, s8, t3
                  addi         a3, a1, 1653
                  sub          s9, t2, a6
                  xori         a1, s3, 576
                  beq          a5, gp, 312f
                  bgeu         ra, a5, 312f
                  sltiu        gp, s1, -728
                  sra          zero, a2, s0
301:              srai         ra, t0, 27
                  sra          s3, s8, t5
                  bne          s9, t1, 313f
                  bge          a5, s9, 318f
                  lui          s4, 408372
                  sltiu        zero, a5, 1059
                  sub          s8, t4, s8
                  sra          s8, t6, a2
                  add          t1, tp, a3
                  and          s9, s5, a0
                  xor          ra, sp, s0
312:              sll          a5, s4, sp
313:              nop
                  slti         sp, s4, 1716
                  bne          t5, zero, 332f
                  srl          t0, s1, s10
                  or           s5, s8, a6
318:              sub          a1, s1, t2
                  slt          a3, zero, gp
                  blt          a7, t3, 339f
                  bltu         s2, s9, 329f
                  nop
                  ori          s3, gp, 263
                  bgeu         ra, t4, 328f
                  sub          s4, s0, s6
                  or           a6, s4, s1
                  slt          t2, a7, a0
328:              bge          t0, a0, 333f
329:              blt          ra, s7, 343f
                  and          t1, a3, t0
                  bgeu         s4, a6, 341f
332:              beq          gp, s10, 335f
333:              bgeu         t1, s6, 344f
                  slli         ra, s0, 22
335:              beq          gp, t3, 352f
                  xor          a1, t2, t3
                  srai         t1, t6, 21
                  blt          gp, a1, 349f
339:              ori          s2, a0, 1894
                  srai         sp, ra, 31
341:              andi         s7, a0, -1021
                  bne          s8, sp, 356f
343:              srai         s0, a7, 11
344:              xor          t5, a4, t6
                  bgeu         t6, a2, 360f
                  beq          gp, t1, 355f
                  ori          a1, s11, -1875
                  sltiu        t1, a6, -561
349:              auipc        s6, 804187
                  slt          ra, a5, a5
                  bltu         s9, a5, 362f
352:              sltu         a6, tp, s4
                  sra          a6, t3, s9
                  nop
355:              sra          s3, zero, a1
356:              slli         sp, sp, 28
                  andi         s0, t6, 1858
                  bne          tp, t3, 364f
                  nop
360:              nop
                  beq          s0, s3, 370f
362:              bltu         a2, s6, 370f
                  auipc        s2, 128609
364:              slti         a4, a7, 631
                  or           a5, gp, t2
                  slt          s4, a4, a6
                  xor          a3, a4, ra
                  srli         t2, t1, 7
                  slt          s1, s6, t6
370:              slti         s6, t0, 2045
                  or           s2, t3, t5
                  beq          zero, a0, 379f
                  sll          s3, a1, t5
                  bgeu         a3, t4, 377f
                  addi         zero, a6, 335
                  auipc        a3, 560452
377:              xor          t4, s9, t0
                  bne          s0, t5, 384f
379:              slti         ra, s10, -300
                  and          ra, t4, s11
                  andi         a2, s3, 824
                  add          a6, t0, s11
                  sub          s1, a6, s0
384:              bne          t5, t4, 390f
                  sra          t1, t6, s5
                  xori         s4, s8, 615
                  lui          a0, 662975
                  sll          s2, t4, a0
                  sll          t2, s10, t3
390:              blt          t6, a6, 396f
                  add          s6, t6, a5
                  blt          a0, s1, 400f
                  slli         s5, ra, 18
                  bne          s10, a5, 409f
                  or           t1, s11, ra
396:              beq          s4, s2, 400f
                  addi         s2, t3, -1947
                  srli         a5, t0, 21
                  bge          s3, s5, 413f
400:              slti         t5, a6, 1409
                  and          a5, s4, sp
                  blt          zero, ra, 416f
                  srli         a6, a4, 28
                  slli         t4, a1, 11
                  lui          a1, 530940
                  xori         s4, s2, 391
                  sll          t2, a3, t1
                  xori         a7, zero, 1164
409:              auipc        t4, 777622
                  bne          a1, s6, 425f
                  bne          s9, s9, 419f
                  bltu         t0, a6, 429f
413:              beq          s11, s3, 419f
                  and          s8, a6, a6
                  auipc        t0, 1022868
416:              xori         zero, s3, 138
                  andi         tp, t0, 1623
                  auipc        s4, 617180
419:              bltu         s3, a4, 438f
                  sra          t5, s6, gp
                  sltu         a0, s3, s9
                  andi         tp, s6, 822
                  auipc        s9, 157681
                  andi         s5, t0, 1455
425:              lui          s7, 237095
                  auipc        a0, 937561
                  slti         a6, t4, 1531
                  slli         s0, a1, 14
429:              sll          s3, gp, t0
                  srli         zero, sp, 31
                  bge          a3, s2, 434f
                  bne          a3, zero, 446f
                  sra          zero, s5, s1
434:              auipc        a7, 146357
                  and          s2, ra, s0
                  srai         s1, a5, 13
                  bne          t6, ra, 452f
438:              beq          zero, a5, 448f
                  sltiu        zero, gp, -1314
                  beq          s5, t5, 444f
                  nop
                  nop
                  and          t4, gp, zero
444:              xori         s0, s10, 1276
                  beq          t6, a4, 459f
446:              srli         s8, a7, 1
                  beq          ra, s7, 462f
448:              bge          t1, s8, 451f
                  xori         zero, s11, 636
                  andi         sp, t3, 1534
451:              bne          a3, a6, 460f
452:              slt          gp, s2, t1
                  auipc        a7, 727321
                  xor          s1, s6, a7
                  sll          s1, t2, t6
                  or           a6, gp, a7
                  and          s8, a7, s3
                  sub          t5, a0, a0
459:              srai         s1, t3, 28
460:              bltu         s1, t1, 471f
                  or           s3, sp, a3
462:              bne          t4, s8, 467f
                  blt          s5, a3, 467f
                  bgeu         a7, t6, 474f
                  slli         s2, a6, 7
                  lui          a6, 390639
467:              andi         a1, a0, -1593
                  ori          s2, s0, 1652
                  blt          s0, t1, 477f
                  blt          t3, t3, 476f
471:              srl          a6, t4, t3
                  xori         s6, s1, 929
                  sltu         t1, gp, s1
474:              auipc        s0, 833938
                  auipc        t4, 110410
476:              xor          t2, sp, t2
477:              slli         gp, a5, 9
                  beq          a4, a1, 487f
                  srai         t6, a4, 28
                  bgeu         s0, s3, 497f
                  add          t5, s8, t1
                  addi         a6, s6, 327
                  sra          s6, a3, s4
                  srli         s8, s0, 18
                  xori         a0, a4, 1372
                  lui          s6, 361233
487:              sll          a5, s10, s5
                  auipc        a3, 762898
                  bgeu         gp, t1, 496f
                  blt          s7, s10, 496f
                  or           a1, s2, s10
                  or           a0, t3, s0
                  srli         gp, s2, 2
                  sltiu        s0, ra, 1691
                  lui          s0, 910632
496:              sra          s5, t6, t0
497:              xor          tp, s0, t3
                  sll          t2, a2, t6
                  and          s8, s7, zero
                  xor          a7, t6, t6
                  addi         a7, t5, -1193
                  srai         t6, sp, 13
                  slt          a7, s9, a7
                  nop
                  srli         s2, s2, 13
                  beq          a0, s5, 514f
                  sra          a5, t0, sp
                  sltu         s6, a7, a5
                  addi         s1, a4, -693
                  or           s1, t0, tp
                  ori          t2, a6, 717
                  slli         t5, a0, 12
                  xor          zero, s0, a2
514:              slt          s3, t6, t1
                  bne          t6, a5, 521f
                  lui          s9, 487130
                  add          s7, s8, tp
                  xori         t2, a7, 1606
                  srli         t4, t5, 4
                  bgeu         a7, a0, 531f
521:              slti         s8, a2, -557
                  nop
                  addi         gp, sp, -500
                  beq          t2, zero, 535f
                  bne          a3, s3, 539f
                  slli         ra, a6, 13
                  srl          a6, a7, a0
                  srli         s1, gp, 27
                  bge          s7, a2, 533f
                  sll          sp, s2, a4
531:              beq          s6, s2, 541f
                  bne          s0, zero, 549f
533:              or           t5, sp, s2
                  xor          a6, gp, t1
535:              andi         s8, a2, -1603
                  or           a5, s7, t3
                  slti         s8, t5, 1012
                  ori          a0, a7, -2043
539:              xor          a1, sp, a1
                  slti         s5, s9, 1629
541:              addi         ra, a3, 44
                  xori         t1, t0, 1692
                  srai         ra, t2, 6
                  ori          zero, s5, 808
                  sra          a4, s3, s2
                  add          tp, a2, s1
                  andi         a6, a3, 76
                  xor          tp, s11, sp
549:              slli         t4, a1, 30
                  blt          t6, a1, 553f
                  sltu         a3, t2, s9
                  srai         t5, s11, 4
553:              beq          s6, s5, 562f
                  sub          a6, s1, s3
                  lui          t5, 753156
                  slli         s0, t0, 8
                  bne          s5, s11, 560f
                  sltu         s2, s11, a0
                  beq          s6, s10, 565f
560:              srl          a1, a0, s0
                  or           s0, s3, s3
562:              and          t0, s2, s2
                  sll          a0, a1, a2
                  bne          a0, sp, 578f
565:              nop
                  sra          zero, t3, s9
                  sub          tp, gp, sp
                  blt          t6, t0, 583f
                  srai         a5, s1, 29
                  nop
                  sltu         s6, s4, gp
                  sub          t6, s1, s5
                  sra          a5, s2, s1
                  slli         t4, s5, 0
                  lui          s7, 865610
                  add          s6, t2, s8
                  lui          s0, 699101
578:              srli         a2, s6, 27
                  slt          t1, t5, t3
                  auipc        s5, 666231
                  bgeu         s8, zero, 596f
                  or           gp, sp, t0
583:              lui          a5, 595161
                  sll          s5, s8, t4
                  beq          a0, zero, 599f
                  sub          t0, ra, s1
                  sltiu        tp, t5, -1047
                  beq          a2, ra, 599f
                  or           s0, t5, a7
                  bge          s11, t1, 604f
                  beq          s8, sp, 601f
                  addi         s2, t5, 641
                  sub          a1, tp, a1
                  slli         t5, t2, 4
                  sll          s1, a4, s2
596:              andi         s2, a7, 852
                  add          a7, s6, s11
                  nop
599:              nop
                  slt          a4, zero, a1
601:              sltu         zero, s11, t6
                  and          s6, a3, t5
                  ori          a0, s0, 73
604:              bltu         a0, zero, 609f
                  sub          a2, ra, a3
                  bgeu         a2, s1, 614f
                  bge          s10, s9, 624f
                  and          a7, s1, a4
609:              addi         s1, tp, -1297
                  lui          a6, 346399
                  srai         t4, a2, 3
                  slt          a4, s3, a1
                  lui          s8, 706901
614:              sub          t5, ra, a3
                  auipc        a4, 37804
                  sub          s9, t3, a3
                  bge          s2, a1, 624f
                  add          a1, a1, tp
                  blt          s8, s9, 627f
                  bne          s6, t4, 635f
                  or           ra, s11, a0
                  blt          a7, s1, 628f
                  bltu         a1, s4, 629f
624:              bltu         t0, t1, 635f
                  beq          s3, s1, 633f
                  slli         s0, s5, 15
627:              bltu         s0, t3, 638f
628:              auipc        t0, 910452
629:              xori         a5, t1, 2000
                  beq          s9, s6, 634f
                  nop
                  sra          t4, s9, ra
633:              sub          s8, s4, s6
634:              beq          a3, t6, 653f
635:              add          a4, tp, t0
                  srli         s7, s9, 9
                  sltu         s7, t6, s5
638:              bne          a0, s5, 644f
                  xori         s7, t5, 38
                  and          s0, a5, t6
                  beq          s8, s4, 650f
                  sll          s7, s9, s9
                  slli         t4, s8, 15
644:              bltu         t5, s7, 650f
                  srli         s8, t1, 17
                  andi         a1, ra, -2003
                  sltiu        a3, a5, 1625
                  bgeu         t3, a6, 659f
                  xori         s6, a4, 1765
650:              ori          a7, a0, -1050
                  xori         a5, zero, -676
                  ori          t2, s6, 65
653:              beq          s4, tp, 664f
                  blt          t6, sp, 660f
                  blt          gp, a2, 672f
                  andi         t4, t1, -267
                  bne          a0, a1, 674f
                  nop
659:              slli         sp, t2, 29
660:              bltu         a2, s8, 663f
                  bltu         s3, t3, 680f
                  xori         a3, s5, -923
663:              sltiu        a1, t5, 652
664:              andi         s1, sp, 1683
                  or           t1, a0, s9
                  srli         tp, t6, 23
                  slt          s0, t6, t2
                  xori         s6, tp, -1770
                  add          s0, a5, a1
                  slli         t6, zero, 31
                  addi         tp, s11, 1672
672:              sltiu        s1, s4, 999
                  srl          a1, a3, s2
674:              xori         t0, zero, -1742
                  blt          t1, s7, 690f
                  srai         a3, t4, 23
                  beq          tp, a2, 682f
                  lui          t6, 800493
                  sra          sp, a1, s5
680:              and          sp, tp, a2
                  add          s1, a4, t5
682:              beq          a3, s0, 685f
                  bge          sp, a7, 697f
                  xor          a4, gp, s9
685:              beq          a7, a2, 696f
                  nop
                  bltu         s7, s7, 694f
                  bltu         s6, s10, 696f
                  blt          s3, s7, 704f
690:              lui          t1, 279330
                  bne          a5, s11, 701f
                  bge          gp, s2, 701f
                  bge          ra, ra, 708f
694:              sub          t0, t4, t5
                  lui          ra, 260824
696:              bge          zero, t4, 705f
697:              ori          t4, s8, 1716
                  bgeu         a0, s0, 708f
                  nop
                  sltiu        a4, s0, -1963
701:              sra          s7, ra, t5
                  bge          s2, gp, 708f
                  slti         s1, s6, 1151
704:              andi         s9, a6, 358
705:              srl          s6, s5, a1
                  bne          a3, s7, 720f
                  bne          zero, tp, 715f
708:              bltu         s11, s5, 722f
                  xori         a5, sp, -1740
                  lui          s4, 651057
                  lui          s8, 470575
                  blt          a6, s7, 716f
                  slt          s8, t3, tp
                  xori         a4, s9, 802
715:              slli         s9, t4, 17
716:              slti         s5, a4, 1761
                  andi         a6, s8, 1703
                  addi         a6, s10, 1932
                  slti         zero, a2, -1148
720:              sra          s6, t6, s9
                  ori          t6, s1, -1944
722:              slti         s1, a3, 1441
                  xor          a7, tp, s5
                  nop
                  blt          a5, a7, 739f
                  slti         a5, t1, 1788
                  nop
                  beq          s0, a7, 734f
                  sltiu        s7, zero, 1713
                  addi         a6, zero, 10 #init loop 0 counter
                  sra          t6, a6, s6
                  xori         a2, t1, -62
                  slli         a5, s4, 20
                  sra          t2, s10, t5
                  addi         s8, zero, 7 #init loop 0 limit
                  nop
sub_2_14_0_t:     lui          zero, 101186
                  xor          gp, s7, s3
                  and          ra, s10, s1
                  addi         a6, a6, -2 #update loop 0 counter
                  lui          a7, 976362
                  ori          a4, a4, -1117
                  sll          sp, s5, t3
                  sub          a3, zero, s9
                  sltu         a5, s7, t1
                  bgeu         a6, s8, sub_2_14_0_t #branch for loop 0
                  slti         t5, t5, -1093
                  addi         gp, s5, 1588
                  sltu         s5, ra, s11
                  sra          t6, s5, t5
                  sub          s9, s2, s9
734:              sll          sp, gp, s7
                  slt          gp, a6, t5
                  sll          t4, a1, t3
                  srai         t6, a4, 18
                  xor          s0, t0, t1
739:              srl          ra, gp, s10
                  blt          s4, tp, 744f
                  srl          sp, s7, s2
                  addi         ra, s6, -474
                  sltiu        t2, ra, -2022
744:              bltu         a1, a4, 752f
                  bne          ra, ra, 751f
                  bge          tp, a2, 756f
                  slli         s3, a0, 4
                  sltiu        s6, t4, 652
                  auipc        ra, 716647
                  sltiu        sp, a6, 721
751:              xor          tp, a5, s2
752:              auipc        s0, 221335
                  slti         a1, a6, -673
                  lui          s1, 51249
                  xori         a0, a4, -810
756:              xor          t6, s8, t4
                  srl          s8, s4, s5
                  bge          t1, t2, 775f
                  lui          a0, 400498
                  sra          a4, gp, t2
                  blt          gp, a0, 768f
                  bgeu         a1, sp, 777f
                  ori          gp, t5, 1850
                  lui          a5, 943919
                  xori         s0, gp, 1712
                  slti         a0, s0, 135
                  nop
768:              slt          t5, t1, a2
                  addi         s9, tp, 1872
                  ori          s4, s7, -1637
                  bge          s7, t4, 782f
                  xor          s1, sp, t2
                  sub          a1, a3, t6
                  bgeu         s10, t2, 782f
775:              sll          t0, a2, gp
                  bgeu         s9, a7, 782f
777:              auipc        s9, 635753
                  srli         s8, a0, 0
                  lui          s4, 921648
                  srai         a5, a1, 14
                  slt          a6, s0, a5
782:              or           a2, t3, a3
                  sltiu        s1, sp, 674
                  srli         a6, t6, 1
                  slti         s9, s4, 2044
                  bne          zero, tp, 791f
                  xori         a7, sp, -1233
                  addi         a0, s11, -1110
                  bge          s4, s9, 804f
                  srai         s3, sp, 7
791:              beq          a5, t3, 797f
                  sll          a4, t1, gp
                  blt          s10, t5, 807f
                  add          s8, s9, a1
                  slt          gp, a3, a2
                  slti         s5, s1, -184
797:              xori         s6, s0, -1568
                  blt          s9, s7, 806f
                  and          s4, s6, ra
                  srl          s9, s11, t3
                  slti         t0, a1, 1072
                  auipc        s9, 975316
                  srl          s9, a6, a4
804:              blt          t0, s5, 813f
                  bltu         t3, t4, 808f
806:              add          s4, s7, s11
807:              auipc        ra, 956398
808:              xori         a6, s9, 402
                  addi         ra, tp, 989
                  bge          a3, sp, 827f
                  beq          s8, s3, 825f
                  srl          s4, a7, t3
813:              auipc        t6, 237046
                  srl          a4, s9, s7
                  ori          a0, t6, 565
                  slt          a5, s1, s4
                  bgeu         tp, a6, 832f
                  bne          a7, s11, 832f
                  bgeu         s9, ra, 823f
                  addi         zero, s4, -951
                  beq          a3, s4, 824f
                  bltu         t4, t5, 833f
823:              ori          a3, a1, 1319
824:              slli         a7, a6, 2
825:              srl          t6, a2, s6
                  auipc        s6, 927559
827:              bge          a0, a5, 837f
                  bgeu         s4, a1, 834f
                  or           s8, s9, a0
                  srai         a4, s9, 13
                  or           s1, s0, s0
832:              blt          t1, s3, 841f
833:              sub          zero, a1, t0
834:              bge          a1, t2, 838f
                  slti         t1, a1, 690
                  addi         s6, t6, 405
837:              srli         t1, s7, 28
838:              sra          s3, s5, zero
                  xor          t0, a7, s5
                  lui          a6, 586096
841:              or           s5, a7, t0
                  bltu         s2, t3, 850f
                  srli         s6, sp, 14
                  sll          a1, s2, s8
                  bge          gp, s5, 856f
                  addi         a5, zero, -805
                  xori         a7, t3, -877
                  beq          t3, ra, 862f
                  slli         a2, s10, 1
850:              srai         s4, s0, 3
                  srai         a5, s4, 12
                  auipc        t6, 442092
                  slt          s3, a7, s3
                  nop
                  or           ra, s8, s11
856:              bltu         a6, s2, 868f
                  srl          a2, gp, s0
                  addi         t5, sp, -780
                  beq          a4, s1, 865f
                  addi         sp, a2, 286
                  srl          a6, a7, t0
862:              sltiu        s9, t6, 402
                  xor          tp, a5, t0
                  addi         a3, t1, 1203
865:              sltiu        s6, a7, -1899
                  bgeu         s10, t0, 868f
                  sltiu        zero, s0, -831
868:              lui          t6, 875416
                  lw           s1, 4(t3)
                  addi         t3, t3, 60
                  srli         sp, s9, 21
                  slli         a1, s1, 21
                  and          s9, t2, s8
                  or           t2, s2, s7
                  xori         a3, s3, 1684
                  addi         s9, s9, -1593
                  ori          a2, s5, 1899
                  lui          t4, 729261
1230:             addi x4, x9, 0
1230:             jalr x4, x4, 0
sub_3:            srai         tp, s1, 20
                  ori          a6, a1, 814
                  sltiu        zero, s8, 858
                  slti         a4, t6, 1280
                  addi         t3, t3, -64
                  or           sp, a4, t4
                  auipc        zero, 746291
                  srai         a4, s4, 15
                  sltiu        a2, s9, 354
                  sw           s1, 4(t3)
                  xori         a6, a5, 552
                  addi         t0, zero, -3 #init loop 1 counter
                  slli         t1, s9, 30
                  sub          zero, t0, s5
                  slli         s6, s10, 22
                  or           t6, a7, tp
                  addi         s8, zero, -4 #init loop 1 limit
                  auipc        s4, 882855
                  ori          s3, s1, 210
                  srli         a7, t2, 2
sub_3_2_1_t:      and          t6, sp, sp
                  slti         t2, gp, -1056
                  addi         t0, t0, -10 #update loop 1 counter
                  sll          a4, t3, gp
                  addi         a3, zero, 10 #init loop 0 counter
                  slti         a5, s11, -296
                  addi         sp, zero, 20 #init loop 0 limit
                  slti         t4, s9, -1188
sub_3_2_0_t:      slt          zero, a0, t2
                  srl          s5, s4, a7
                  slti         s7, s4, 1725
                  sub          t2, s0, s3
                  andi         ra, t5, 171
                  xor          zero, t3, s4
                  slti         gp, s4, 855
                  addi         a3, a3, 10 #update loop 0 counter
                  bltu         a3, sp, sub_3_2_0_t #branch for loop 0
                  and          s9, ra, s6
                  xori         zero, a1, -1285
                  ori          ra, gp, 92
                  addi         s0, t3, 801
                  bge          t0, s8, sub_3_2_1_t #branch for loop 1
                  ori          s1, a7, -111
                  addi         s9, zero, 9 #init loop 0 counter
                  sub          s0, s5, s11
                  slli         s2, s4, 31
                  add          s5, t6, t0
                  addi         s6, zero, 12 #init loop 0 limit
                  srli         a3, gp, 25
sub_3_3_0_t:      nop
                  srli         s5, ra, 7
                  srli         a0, t3, 16
                  add          t1, s10, s7
                  sltiu        a4, t6, -1968
                  slt          sp, zero, s1
                  sltu         t4, s2, a1
                  sltiu        a0, s3, 1
                  add          a3, s7, s5
                  addi         s9, s9, 7 #update loop 0 counter
                  lui          s4, 527125
                  xori         a4, s4, 1726
                  xor          a2, sp, tp
                  slli         s5, s6, 15
                  srli         s8, sp, 16
                  sub          t1, s8, s5
                  xor          zero, sp, s2
                  bltu         s9, s6, sub_3_3_0_t #branch for loop 0
                  slt          gp, s4, s0
                  addi         s4, zero, 4 #init loop 0 counter
                  addi         sp, zero, 12 #init loop 0 limit
sub_3_1_0_t:      sltu         a0, ra, s7
                  addi         s4, s4, 10 #update loop 0 counter
                  bltu         s4, sp, sub_3_1_0_t #branch for loop 0
                  and          a2, t2, s9
                  addi         s4, s10, 1854
                  beq          a5, zero, 19f
                  slt          gp, sp, ra
                  auipc        s8, 612582
                  addi         a1, zero, -9 #init loop 1 counter
                  sll          gp, zero, a6
                  addi         s2, zero, 20 #init loop 1 limit
                  xori         ra, sp, 392
                  and          s8, a0, ra
sub_3_0_1_t:      xor          t6, s8, sp
                  addi         a1, a1, 10 #update loop 1 counter
                  slli         t4, a5, 8
                  addi         t2, zero, 6 #init loop 0 counter
                  addi         t5, zero, 5 #init loop 0 limit
                  add          s6, s7, t3
                  ori          s9, t4, 896
sub_3_0_0_t:      and          s6, a0, gp
                  addi         t2, t2, -3 #update loop 0 counter
                  bgeu         t2, t5, sub_3_0_0_t #branch for loop 0
                  srl          a0, a7, s6
                  sll          a4, t1, sp
                  xori         s8, sp, 956
                  srl          a6, t0, t1
                  bltu         a1, s2, sub_3_0_1_t #branch for loop 1
                  andi         sp, s7, -141
                  sra          t2, zero, t0
                  blt          s8, t5, 10f
                  nop
                  add          t2, a2, a1
                  or           t6, a1, s9
                  srai         a4, s3, 20
10:               blt          a1, s10, 19f
                  sub          t1, s0, s2
                  bne          s9, t6, 18f
                  andi         s7, gp, 56
                  lui          t4, 1019177
                  xor          s8, gp, a5
                  slti         a2, a6, -1675
                  beq          gp, a4, 34f
18:               srl          a5, s4, ra
19:               addi         t5, s10, -434
                  blt          tp, s7, 37f
                  slt          a1, t0, s11
                  sltiu        a5, zero, -665
                  xori         a1, a2, -1609
                  and          s0, t0, s5
                  or           t2, s8, a1
                  bne          a5, tp, 30f
                  bltu         t4, s10, 41f
                  sltiu        s7, a3, 235
                  slt          s7, s5, tp
30:               sltiu        ra, t6, 734
                  bge          a7, t4, 49f
                  and          s4, s3, a5
                  sltu         zero, s2, s11
34:               bne          s6, s3, 50f
                  slli         t0, t0, 25
                  sub          a2, a4, sp
37:               bltu         s1, a0, 49f
                  bge          a3, a3, 44f
                  bge          sp, sp, 54f
                  sll          zero, ra, a0
41:               nop
                  blt          s2, a2, 52f
                  sub          s9, a6, s0
44:               srl          s7, t5, t0
                  add          t5, s7, t4
                  slli         s5, t6, 29
                  xori         a0, zero, 919
                  bge          a6, s6, 60f
49:               and          t2, t3, s3
50:               sll          zero, sp, a1
                  sll          s1, a4, t0
52:               bne          s0, a7, 69f
                  or           a1, ra, a6
54:               xori         gp, a6, 211
                  blt          a3, ra, 61f
                  addi         t6, a5, 1812
                  slli         a4, s11, 14
                  xori         a4, t3, -1351
                  bge          t4, a3, 61f
60:               or           a0, s10, s10
61:               bge          gp, s11, 63f
                  ori          s9, a1, -463
63:               and          s4, s6, a4
                  blt          a5, t6, 80f
                  add          a2, a4, t6
                  beq          s5, a1, 75f
                  ori          a2, sp, -1323
                  sub          gp, s4, t1
69:               sra          a2, s6, s11
                  addi         a2, a1, -447
                  sub          t6, a6, s10
                  lui          s2, 849481
                  bne          a1, t6, 87f
                  srli         s7, a1, 25
75:               slti         a7, t6, 654
                  sltu         s0, a4, t2
                  auipc        t0, 751536
                  lui          t5, 802656
                  sltu         a7, s10, t4
80:               or           a1, t0, s2
                  srai         t1, sp, 1
                  slli         gp, t5, 16
                  srli         a5, t5, 4
                  add          a5, s8, ra
                  slli         a2, t0, 22
                  addi         s0, s3, -1725
87:               sltiu        a4, s1, -1495
                  srai         sp, a0, 22
                  auipc        a3, 570341
                  slt          t1, a6, s9
                  xori         s0, a0, 1134
                  srai         ra, a0, 30
                  or           s9, t5, ra
                  slli         t0, a3, 22
                  sll          a1, tp, s7
                  slt          a6, s11, a7
                  bltu         a6, a2, 116f
                  srai         s2, sp, 14
                  nop
                  addi         s7, tp, -151
                  bltu         t1, t3, 108f
                  or           s3, t6, s2
                  slti         t4, t4, -1812
                  sltu         a4, a2, a3
                  sltu         gp, s0, s6
                  sltu         a4, t5, a5
                  sra          t4, a4, a7
108:              bge          a4, t5, 124f
                  beq          s4, gp, 110f
110:              nop
                  srai         s8, t3, 6
                  srl          s1, t6, a2
                  sll          t6, s0, a6
                  sltu         s5, a2, zero
                  slti         s7, t4, -717
116:              sra          a4, a4, gp
                  xori         s9, t1, 1035
                  andi         s1, s6, 738
                  addi         t6, a6, -786
                  andi         zero, s9, 544
                  slli         s0, t1, 1
                  or           s7, a1, s4
                  sll          a3, ra, t5
124:              bltu         t5, tp, 133f
                  sll          s0, s10, a6
                  srli         s6, a1, 19
                  sll          s2, a0, a4
                  sltu         t4, gp, t2
                  bltu         zero, a4, 133f
                  srai         a2, sp, 26
                  bne          t4, ra, 138f
                  add          zero, ra, a1
133:              bge          s8, s9, 149f
                  addi         a6, t2, 1825
                  auipc        a1, 483628
                  or           s7, s10, s3
                  andi         ra, a0, -1180
138:              sll          tp, s6, s6
                  sltiu        t4, a5, -1162
                  bne          t0, tp, 154f
                  andi         t0, t5, 1791
                  addi         a6, ra, -626
                  sub          t2, s2, s11
                  bne          a7, tp, 162f
                  bltu         a4, s3, 152f
                  sra          t0, a3, sp
                  or           t0, a0, s3
                  and          a0, s5, s8
149:              srl          gp, a4, s2
                  slli         zero, s4, 0
                  slli         t6, t0, 4
152:              srai         t5, t5, 28
                  bltu         s3, s6, 155f
154:              lui          a6, 833339
155:              bne          s9, a1, 174f
                  add          s1, sp, s2
                  lui          t0, 639082
                  blt          s4, t1, 164f
                  andi         zero, t2, 597
                  bge          s3, a4, 169f
                  xor          s4, s10, t6
162:              ori          a3, a7, -992
                  slli         s7, t2, 17
164:              bltu         t6, a0, 181f
                  srl          s8, s0, a5
                  bge          t6, t6, 168f
                  srai         s1, t5, 26
168:              srli         s7, a2, 11
169:              sra          a2, t0, s1
                  auipc        s8, 418816
                  beq          tp, t0, 188f
                  nop
                  auipc        t2, 364595
174:              bgeu         a3, t5, 189f
                  bne          s1, a7, 180f
                  slt          t0, s9, a5
                  sll          a0, a1, s3
                  blt          a5, a2, 190f
                  sll          ra, s0, t1
180:              srli         a1, t2, 29
181:              sra          gp, a4, s0
                  srli         t2, s3, 25
                  addi         s0, a3, -378
                  sltiu        s5, a3, 1260
                  slli         tp, s10, 25
                  srai         tp, a6, 1
                  bne          s0, s11, 194f
188:              bne          a7, a6, 192f
189:              sltiu        a2, a7, 1742
190:              srl          s3, s10, s7
                  sra          s4, tp, t1
192:              bgeu         s8, a4, 196f
                  and          s8, sp, t6
194:              sltiu        s3, a4, 626
                  xori         a3, a6, 1095
196:              slli         a1, sp, 15
                  slli         zero, zero, 17
                  slt          s9, s9, s5
                  bge          sp, t6, 208f
                  bltu         t1, t4, 206f
                  nop
                  auipc        a3, 145939
                  bne          a5, a4, 211f
                  xor          s5, sp, t1
                  andi         s3, s2, 1950
206:              auipc        gp, 884590
                  sltiu        a3, a3, -201
208:              andi         s0, s2, -1321
                  slt          t4, s0, s6
                  sltu         a3, a2, a4
211:              add          s9, s7, a6
                  lw           s1, 4(t3)
                  slti         t5, ra, -1898
                  addi         t3, t3, 64
                  nop
                  andi         s9, a6, 1622
312:              addi x11, x9, 0
312:              jalr x11, x11, 0
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
                  add x27, x28, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x13, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x13, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x13, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x13, x8, ecall_handler
                  li x8, 0x1
                  beq x13, x8, instr_fault_handler
                  li x8, 0x5
                  beq x13, x8, load_fault_handler
                  li x8, 0x7
                  beq x13, x8, store_fault_handler
                  li x8, 0xc
                  beq x13, x8, pt_fault_handler
                  li x8, 0xd
                  beq x13, x8, pt_fault_handler
                  li x8, 0xf
                  beq x13, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x28, x27, zero
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
                  add x28, x27, zero
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
                  add x28, x27, zero
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
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x28, x27, zero
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
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x28, x27, zero
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
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x28, x27, zero
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
