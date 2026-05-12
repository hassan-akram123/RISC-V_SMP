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
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 1
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  mret
init:             
                  li x0, 0x5
                  li x1, 0xe
                  li x2, 0xedae13b4
                  li x3, 0x80000000
                  li x4, 0xb
                  li x5, 0xd
                  li x6, 0x80000000
                  li x7, 0x1b7d7098
                  li x8, 0x2377f5f3
                  li x9, 0x80000000
                  li x10, 0x3a830c00
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0xf064ea18
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x3
                  li x18, 0x2
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0xc36858d6
                  li x24, 0xd
                  li x25, 0x5ab8a35e
                  li x27, 0x80000000
                  li x28, 0xa
                  li x29, 0xaddfb043
                  li x30, 0x80000000
                  li x31, 0x7916f5b6
                  la x26, user_stack_end
main:             addi         t5, zero, 5 #init loop 1 counter
                  slti         s0, zero, -1818
                  addi         s8, t4, -935
                  andi         s11, zero, 758
                  sltiu        s8, s2, 1177
                  addi         t3, zero, -14 #init loop 1 limit
                  or           t2, t5, s8
                  auipc        t2, 842380
                  sll          a5, sp, s9
main_0_1_t:       xori         s2, s7, -1645
                  slti         ra, a7, -1570
                  addi         t5, t5, -3 #update loop 1 counter
                  srl          s5, a7, a4
                  addi         t6, zero, -9 #init loop 0 counter
                  addi         tp, zero, -14 #init loop 0 limit
main_0_0_t:       addi         gp, sp, 40
                  nop
                  sub          a6, s3, t0
                  nop
                  addi         t6, t6, -1 #update loop 0 counter
                  bge          t6, tp, main_0_0_t #branch for loop 0
                  nop
                  srai         t0, t5, 27
                  addi         a3, zero, 861
                  nop
                  srl          t1, a4, s4
                  lui          a6, 127310
                  andi         t2, gp, -145
                  nop
                  nop
                  sll          a6, s8, t0
                  srai         a2, t0, 9
                  sra          t2, a6, t1
                  bge          t5, t3, main_0_1_t #branch for loop 1
                  sra          t2, t3, s5
                  addi         t2, zero, 6 #init loop 1 counter
                  nop
                  slli         a2, s1, 13
                  addi         a7, zero, 8 #init loop 1 limit
                  srl          s8, a1, sp
main_3_1_t:       auipc        s1, 258220
                  addi         t2, t2, 2 #update loop 1 counter
                  addi         s11, zero, 8 #init loop 0 counter
                  addi         s4, zero, 8 #init loop 0 limit
                  or           a2, a5, t6
main_3_0_t:       slti         s0, a6, -447
                  addi         s11, s11, -7 #update loop 0 counter
                  addi         s2, ra, 737
                  bgeu         s11, s4, main_3_0_t #branch for loop 0
                  slt          t6, s8, zero
                  bne          t2, a7, main_3_1_t #branch for loop 1
                  srli         sp, s6, 27
                  addi         t0, zero, 5 #init loop 0 counter
                  sub          s11, s4, a1
                  sra          a2, t5, s5
                  srai         s4, t2, 14
                  sltiu        zero, a7, 785
                  sltiu        sp, s4, 1516
                  and          gp, s9, tp
                  addi         ra, zero, 17 #init loop 0 limit
                  sll          a4, s7, s4
                  andi         t2, t4, 842
                  andi         a0, s5, -2031
                  sll          t3, a7, s6
                  srli         a6, a0, 18
main_1_0_t:       sltu         s9, s2, a6
                  slt          a7, t2, a5
                  addi         t0, t0, 2 #update loop 0 counter
                  addi         a2, s0, 973
                  xor          t1, s10, a1
                  add          s4, ra, gp
                  lui          s1, 313749
                  beq          t0, ra, main_1_0_t #branch for loop 0
                  sra          a3, t1, s0
                  addi         a6, zero, -3 #init loop 0 counter
                  addi         a3, zero, 9 #init loop 0 limit
main_2_0_t:       nop
                  addi         a6, a6, 6 #update loop 0 counter
                  bne          a6, a3, main_2_0_t #branch for loop 0
                  sltu         t0, t3, t1
                  xor          t5, a3, t3
                  sll          t1, ra, sp
                  bge          s6, s6, 14f
                  auipc        t5, 392256
                  sub          s5, a2, s9
                  addi         a6, s1, -2034
                  or           s5, zero, t5
                  or           s5, t1, s3
                  addi         a4, a0, 1891
                  slt          s4, a3, t4
                  sub          t4, gp, a6
                  beq          t2, s1, 25f
                  sub          gp, a0, a5
                  add          a4, t0, s10
14:               blt          t0, gp, 15f
15:               sub          s2, ra, t4
                  sll          s6, a1, s4
                  ori          t3, s4, -554
                  andi         s11, a5, 973
                  andi         s7, t1, 1793
                  sra          t4, t6, sp
                  andi         tp, s0, -1733
                  add          t3, t6, a2
                  sltiu        s1, t2, 1891
                  srli         s1, s1, 31
25:               ori          s4, s7, 1127
                  slti         zero, s5, -1117
                  bge          t4, s9, 32f
                  sub          s1, t4, t0
                  auipc        t5, 578850
                  beq          a1, a2, 39f
                  srai         t5, tp, 30
32:               bne          a5, s2, 33f
33:               sra          tp, s4, s7
                  sltu         t2, t6, s6
                  ori          a2, t4, 1776
                  addi         ra, t0, 1578
                  sll          a6, a0, s7
                  bge          a6, gp, 42f
39:               slti         a3, a5, 1824
                  sub          a7, t3, s8
                  bne          s10, s7, 61f
42:               nop
                  or           s9, a1, a4
                  andi         s0, t1, -941
                  beq          t3, tp, 64f
                  nop
                  srl          ra, t0, zero
                  bltu         s7, a5, 52f
                  add          s1, t5, s9
                  sll          s0, zero, s0
                  slli         s2, tp, 23
52:               add          t5, s3, t1
                  sra          s6, sp, t6
                  add          s6, a6, a3
                  sltu         s9, t1, a4
                  slt          a6, t3, s8
                  slli         s5, a4, 1
                  and          s1, a3, s2
                  srl          t3, tp, s8
                  nop
61:               xor          t0, s0, s7
                  addi         a5, a5, -997
                  bge          zero, a6, 70f
64:               srl          ra, t4, sp
                  srai         tp, s6, 16
                  xor          s7, t2, a4
                  slt          gp, s0, s11
                  nop
                  bge          s0, a5, 76f
70:               bltu         s11, s7, 89f
                  sra          tp, ra, a7
                  srai         gp, a4, 28
                  slli         zero, a0, 18
                  sltu         s0, ra, gp
                  srli         sp, a0, 23
76:               bgeu         s8, a3, 81f
                  andi         s2, a0, -491
                  bge          t1, sp, 83f
                  sltiu        gp, a0, -1650
                  andi         s4, s5, -1021
81:               bne          tp, s4, 98f
                  slli         s6, s11, 19
83:               slti         t0, sp, -273
                  bltu         t5, tp, 87f
                  srl          a3, s1, t3
                  addi         t1, a1, -1202
87:               srl          s8, s9, gp
                  auipc        a6, 236072
89:               ori          s6, s3, 49
                  srli         s11, a7, 21
                  srai         t5, s11, 25
                  add          sp, a6, s4
                  slli         sp, a0, 20
                  beq          s11, t2, 112f
                  and          s8, ra, t5
                  auipc        s8, 828908
                  auipc        s1, 870001
98:               bne          s5, tp, 110f
                  lui          a3, 203359
                  addi         gp, a0, -1823
                  andi         t2, t0, -1547
                  auipc        s9, 381110
                  xori         a5, t6, 1320
                  srai         s8, a5, 3
                  xor          s9, s7, a6
                  slti         ra, s9, -2019
                  slt          s0, s6, a1
                  add          a5, t0, t3
                  nop
110:              ori          a7, sp, -1703
                  add          sp, t3, s11
112:              beq          s8, t4, 114f
                  addi         sp, s3, 1340
114:              slli         s2, s7, 31
                  srai         t3, tp, 5
                  and          a4, s11, a1
                  add          a4, a2, a3
                  bltu         a4, s5, 132f
                  xor          s4, zero, a1
                  bltu         s7, sp, 130f
                  xori         t4, a2, -1721
                  and          tp, s1, t0
                  bgeu         t3, s8, 127f
                  bge          s4, a0, 139f
                  bne          a3, a7, 126f
126:              or           t0, s3, t4
127:              bltu         s4, s2, 133f
                  or           s4, s6, t3
                  srl          s4, s2, s6
130:              xori         t2, t1, 1563
                  sll          s1, s1, gp
132:              addi         t2, s7, 608
133:              srli         a0, zero, 26
                  srli         t3, s7, 14
                  nop
                  sra          t0, t3, a7
                  sub          s4, a6, ra
                  sltiu        s9, s4, 459
139:              andi         gp, a7, 1126
                  nop
                  addi         tp, zero, -5 #init loop 1 counter
                  addi         a5, zero, -8 #init loop 1 limit
main_4_1_t:       andi         s6, s3, 1997
                  nop
                  addi         tp, tp, -3 #update loop 1 counter
                  addi         a3, zero, 8 #init loop 0 counter
                  slti         t5, a7, 1689
                  addi         gp, zero, 15 #init loop 0 limit
main_4_0_t:       and          t2, a0, a5
                  addi         a3, a3, 5 #update loop 0 counter
                  bltu         a3, gp, main_4_0_t #branch for loop 0
                  beq          tp, a5, main_4_1_t #branch for loop 1
                  sltu         t0, t5, ra
                  auipc        s7, 530661
                  xori         a3, s4, 1124
                  sra          s9, a1, s8
                  sltiu        s8, s3, 860
                  lui          s4, 290436
                  sltu         s0, s5, s7
                  xori         s8, s1, -1117
                  ori          s0, s3, -1888
                  addi         s0, tp, -30
                  bgeu         sp, s0, 170f
                  bge          s3, t1, 164f
                  srli         t5, s2, 17
                  auipc        s9, 84575
                  bgeu         s6, a6, 159f
                  or           a7, tp, t5
                  blt          t0, a6, 170f
                  blt          s6, s7, 175f
                  srli         s11, a3, 1
159:              srli         a3, t5, 4
                  bge          t6, s9, 172f
                  la           a5, sub_1
                  lui          gp, 846259
                  sub          s1, s1, zero
                  addi         a5, a5, 239
                  blt          t2, sp, main_j1 #branch to jump instr
                  addi         t4, a1, -599
                  sra          tp, a2, sp
                  lui          tp, 995779
main_j1:          jalr         t1, a5, -238 #jump main -> sub_1
                  bgeu         s0, tp, 165f
                  xor          a6, a2, t2
                  bge          s6, a4, 180f
164:              sltu         sp, s10, s10
165:              blt          s4, s1, 171f
                  and          a7, t3, tp
                  srli         a3, t5, 23
                  xor          ra, a2, s9
                  sltiu        ra, a4, 2036
170:              xori         t5, t2, 351
171:              addi         t5, s2, 972
172:              bne          t2, s4, 182f
                  lui          t3, 230328
                  xor          s7, s8, gp
175:              sltu         s9, t1, a1
                  sra          t1, s8, a2
                  bltu         a1, a6, 182f
                  lui          a4, 776023
                  or           a0, s1, a2
180:              sll          t1, s9, a6
                  srli         sp, a5, 6
182:              or           a5, sp, s2
                  auipc        a4, 639230
                  nop
                  bge          s1, t6, 192f
                  add          t2, s0, gp
                  nop
                  srli         a7, t0, 13
                  blt          t6, s11, 204f
                  bge          a0, s10, 209f
                  xori         s0, a5, -196
192:              andi         s1, s3, 328
                  or           s4, a5, a1
                  srai         t1, t1, 12
                  bge          t3, s2, 209f
                  auipc        a6, 655847
                  bne          s5, s10, 198f
198:              add          a6, s7, s7
                  xor          t3, a0, t5
                  sll          a3, sp, t0
                  srli         s9, s4, 28
                  ori          a5, s4, 765
                  or           a0, sp, s4
204:              bge          s1, tp, 208f
                  slt          gp, s0, a4
                  addi         s4, a6, -494
                  and          zero, s7, s6
208:              andi         s1, sp, -1942
209:              bgeu         t2, a5, 229f
                  nop
                  bltu         a0, a0, 213f
                  srai         t4, a7, 11
213:              add          a2, s2, a2
                  lui          a3, 543485
                  bne          gp, a4, 228f
                  slti         s0, a4, -1924
                  bltu         t4, gp, 222f
                  slti         zero, s10, 1584
                  slli         t0, s10, 18
                  slt          s1, t0, t3
                  and          t3, s11, s5
222:              slli         a5, s4, 23
                  sltiu        a5, s3, 1534
                  addi         s6, s2, -528
                  andi         tp, s6, 731
                  ori          a3, s9, 495
                  ori          s1, t3, 1892
228:              xor          s11, t1, s0
229:              auipc        t3, 1015758
                  srai         s6, t6, 8
                  bgeu         s1, a4, 243f
                  blt          s6, s1, 251f
                  blt          sp, gp, 237f
                  bltu         s1, s11, 243f
                  nop
                  lui          t3, 783792
237:              bne          a4, a5, 251f
                  sll          t3, s0, t2
                  sltu         s2, a7, a7
                  beq          s4, t5, 247f
                  sltiu        tp, s3, -968
                  bge          a0, sp, 245f
243:              beq          s10, a7, 248f
                  sltiu        s11, s8, 623
245:              bltu         a6, s10, 246f
246:              sub          t2, s6, s3
247:              bltu         s3, a2, 252f
248:              or           a2, t5, s9
                  andi         sp, gp, -1685
                  bge          s11, s3, 251f
251:              srai         s9, a5, 0
252:              bge          s9, a5, 254f
                  srai         t5, tp, 5
254:              xor          s6, ra, s10
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         s10, s10, -56
                  or           a0, a7, s4
                  srai         t5, a2, 16
                  lui          s4, 435998
                  slti         s0, a0, -1980
                  sw           t1, 4(s10)
                  and          s4, s2, s10
                  addi         s9, zero, 3 #init loop 1 counter
                  and          t0, a0, t2
                  auipc        t0, 401827
                  slti         t1, s10, 1948
                  and          s6, s2, t6
                  nop
                  addi         a0, zero, 17 #init loop 1 limit
                  ori          s5, a5, -1700
sub_1_15_1_t:     sub          t1, t3, a5
                  ori          gp, s4, 1057
                  addi         s9, s9, 7 #update loop 1 counter
                  addi         s2, zero, 10 #init loop 0 counter
                  addi         t5, zero, 17 #init loop 0 limit
                  slli         a5, s3, 7
                  sub          t1, a3, zero
sub_1_15_0_t:     xor          zero, t1, s2
                  addi         s2, s2, 3 #update loop 0 counter
                  bltu         s2, t5, sub_1_15_0_t #branch for loop 0
                  add          t4, s7, a5
                  andi         tp, t5, -721
                  bne          s9, a0, sub_1_15_1_t #branch for loop 1
                  sub          tp, t5, s9
                  addi         a4, zero, -5 #init loop 0 counter
                  srli         t1, s11, 31
                  slti         a5, t1, -1906
                  sltu         s0, a2, a7
                  srli         s11, s4, 5
                  addi         t4, zero, -14 #init loop 0 limit
                  andi         ra, s11, 1433
                  sll          s11, t4, a4
sub_1_11_0_t:     andi         s9, a3, -302
                  addi         a4, a4, -1 #update loop 0 counter
                  slti         tp, s5, 2006
                  auipc        s2, 35493
                  sltiu        s9, s8, -1811
                  lui          s9, 477647
                  auipc        s11, 300237
                  lui          a3, 1038456
                  bge          a4, t4, sub_1_11_0_t #branch for loop 0
                  add          tp, a5, t3
                  addi         sp, zero, 10 #init loop 1 counter
                  slli         a4, s9, 26
                  add          a4, a2, s4
                  sltu         s4, s7, s10
                  addi         gp, zero, 9 #init loop 1 limit
                  xori         a2, sp, 1958
                  slt          s6, t4, t3
sub_1_9_1_t:      sub          s0, s7, s4
                  lui          t0, 935905
                  addi         sp, sp, -5 #update loop 1 counter
                  or           s8, sp, a5
                  addi         t3, zero, -5 #init loop 0 counter
                  andi         t1, a4, -1895
                  addi         s9, zero, 11 #init loop 0 limit
                  add          ra, s9, zero
sub_1_9_0_t:      addi         s2, a6, -1536
                  srl          t0, t1, s2
                  addi         t3, t3, 5 #update loop 0 counter
                  blt          t3, s9, sub_1_9_0_t #branch for loop 0
                  addi         a6, a6, -1972
                  slti         s2, a0, -766
                  slt          t6, t0, t2
                  sub          a2, a6, s8
                  sltu         a0, s8, s0
                  sll          t1, a7, t2
                  nop
                  srai         t5, a1, 18
                  xor          t0, a2, t3
                  sub          zero, a4, s3
                  bgeu         sp, gp, sub_1_9_1_t #branch for loop 1
                  ori          s4, t4, 1369
                  addi         s7, zero, -5 #init loop 0 counter
                  sra          s0, gp, a3
                  sltiu        s5, a1, 1633
                  addi         a2, zero, 17 #init loop 0 limit
                  srl          t6, s2, a6
                  or           t6, a3, a3
sub_1_4_0_t:      slt          a4, ra, s4
                  addi         s7, s7, 1 #update loop 0 counter
                  sub          s4, s4, t4
                  add          a6, s10, a5
                  sltiu        s2, t0, -2024
                  xor          s5, s6, a1
                  addi         t6, s0, -26
                  add          gp, ra, s8
                  xori         s4, a2, 1998
                  bltu         s7, a2, sub_1_4_0_t #branch for loop 0
                  srai         s6, s10, 7
                  addi         s5, zero, 4 #init loop 1 counter
                  sub          s7, s2, s11
                  addi         s9, zero, -10 #init loop 1 limit
                  srli         a3, sp, 31
sub_1_7_1_t:      lui          sp, 420507
                  addi         s5, s5, -7 #update loop 1 counter
                  addi         a6, zero, -5 #init loop 0 counter
                  addi         gp, zero, 7 #init loop 0 limit
                  sll          t0, sp, a3
sub_1_7_0_t:      or           t2, s7, a1
                  addi         a6, a6, 6 #update loop 0 counter
                  slli         sp, a3, 15
                  bne          a6, gp, sub_1_7_0_t #branch for loop 0
                  bne          s5, s9, sub_1_7_1_t #branch for loop 1
                  add          s11, s9, gp
                  addi         a6, zero, 1 #init loop 0 counter
                  xor          t0, s10, sp
                  sll          t0, a1, a6
                  andi         t3, s0, 120
                  srl          s1, s7, a4
                  sltiu        zero, ra, -1341
                  addi         s7, zero, -11 #init loop 0 limit
                  srli         tp, tp, 16
                  sltu         t4, t4, s10
sub_1_0_0_t:      auipc        s1, 154711
                  addi         a6, a6, -2 #update loop 0 counter
                  auipc        s9, 185783
                  slt          a0, s6, a0
                  srl          s4, t6, a5
                  bge          a6, s7, sub_1_0_0_t #branch for loop 0
                  sub          zero, s9, s6
                  addi         a2, zero, 4 #init loop 1 counter
                  andi         a4, a5, 1210
                  sltiu        tp, s3, -1041
                  addi         s7, zero, 5 #init loop 1 limit
                  srl          t4, a0, zero
sub_1_3_1_t:      andi         s11, s10, 137
                  sub          a4, a0, t4
                  srli         t1, s11, 9
                  slti         a0, a2, 598
                  lui          s11, 958912
                  addi         a2, a2, 1 #update loop 1 counter
                  sra          t2, s4, s9
                  slt          t0, a2, sp
                  addi         t5, zero, -9 #init loop 0 counter
                  andi         s6, sp, -166
                  addi         a7, zero, 1 #init loop 0 limit
                  nop
sub_1_3_0_t:      slt          s2, sp, a5
                  addi         t5, t5, 5 #update loop 0 counter
                  xori         gp, s8, 820
                  xor          ra, s0, s10
                  slti         t0, s0, -1630
                  xori         t0, t5, -1760
                  add          s6, t4, s6
                  slli         t1, zero, 23
                  sltiu        t4, s3, 1610
                  bne          t5, a7, sub_1_3_0_t #branch for loop 0
                  andi         t0, s4, -517
                  lui          sp, 1004557
                  srl          ra, s5, t1
                  srli         s2, a2, 2
                  bne          a2, s7, sub_1_3_1_t #branch for loop 1
                  sltu         s1, a3, s7
                  addi         a4, zero, -7 #init loop 0 counter
                  sll          s7, s10, t4
                  xor          t3, ra, a0
                  sltiu        s1, s6, -1041
                  addi         s5, s11, 1437
                  addi         a0, zero, 3 #init loop 0 limit
                  slti         s5, s3, -874
                  add          s11, t3, a5
sub_1_1_0_t:      auipc        s7, 517931
                  lui          s6, 634525
                  addi         a4, a4, 4 #update loop 0 counter
                  or           s5, t2, s5
                  sltu         t3, s9, s8
                  ori          s5, t2, -341
                  slli         a5, a4, 16
                  andi         a2, zero, -1016
                  sltiu        t0, a1, 1710
                  sra          ra, s4, a7
                  slti         t4, s1, -819
                  and          t4, t1, s7
                  sll          s8, t6, t0
                  srli         t0, a5, 29
                  bltu         a4, a0, sub_1_1_0_t #branch for loop 0
                  sra          s4, s6, a4
                  addi         sp, zero, 9 #init loop 0 counter
                  addi         t4, t0, 323
                  sltiu        tp, a5, 36
                  xor          tp, t4, s4
                  addi         t6, zero, 8 #init loop 0 limit
                  xori         a0, s5, -249
                  srai         s5, a4, 24
                  sltu         t2, s7, gp
                  sltiu        tp, s7, -88
sub_1_8_0_t:      lui          s5, 203824
                  slt          t3, ra, s2
                  sltiu        s8, s7, -1474
                  addi         sp, sp, -7 #update loop 0 counter
                  bgeu         sp, t6, sub_1_8_0_t #branch for loop 0
                  andi         a4, a1, 1392
                  addi         s11, zero, 9 #init loop 0 counter
                  srl          a3, a7, s8
                  auipc        t4, 12308
                  srli         s9, a7, 9
                  addi         t2, zero, 20 #init loop 0 limit
                  andi         s4, s3, 645
                  auipc        tp, 171545
sub_1_10_0_t:     addi         a3, s8, 1072
                  sll          a2, t0, s4
                  addi         s11, s11, 5 #update loop 0 counter
                  xori         ra, ra, -167
                  or           s8, zero, gp
                  sll          gp, s11, s0
                  sra          a4, a0, t1
                  andi         t0, t3, 1976
                  blt          s11, t2, sub_1_10_0_t #branch for loop 0
                  srai         a5, s0, 10
                  addi         tp, zero, 6 #init loop 1 counter
                  sltu         a3, a4, t6
                  sub          a0, s4, s10
                  addi         a4, zero, 0 #init loop 1 limit
                  slli         t6, t2, 20
sub_1_12_1_t:     xor          gp, a1, a4
                  slt          t3, s0, t3
                  addi         tp, tp, -6 #update loop 1 counter
                  slt          t5, s9, s5
                  addi         t2, zero, 4 #init loop 0 counter
                  sltiu        t6, s1, -639
                  andi         a0, t2, 1976
                  addi         ra, zero, 2 #init loop 0 limit
                  addi         gp, gp, -1115
                  nop
                  slti         t5, a5, -1013
                  xori         t6, a5, 1838
                  and          sp, a0, a7
                  auipc        s2, 866978
                  and          t3, a0, t2
                  sra          s1, a1, s0
                  xori         a0, a3, -253
sub_1_12_0_t:     slti         a2, s8, -1080
                  xori         s11, a6, -726
                  addi         t2, t2, -1 #update loop 0 counter
                  nop
                  sltu         t5, s11, s1
                  auipc        s1, 274741
                  srl          s11, s0, gp
                  sltu         a0, s8, s6
                  bgeu         t2, ra, sub_1_12_0_t #branch for loop 0
                  lui          zero, 988989
                  beq          tp, a4, sub_1_12_1_t #branch for loop 1
                  lui          s4, 883666
                  addi         s7, zero, -4 #init loop 1 counter
                  addi         t4, zero, -14 #init loop 1 limit
sub_1_6_1_t:      lui          a0, 253236
                  addi         s7, s7, -10 #update loop 1 counter
                  srl          s11, a2, s4
                  addi         a6, zero, 7 #init loop 0 counter
                  addi         tp, zero, 5 #init loop 0 limit
sub_1_6_0_t:      ori          t5, sp, 1768
                  addi         a6, a6, -3 #update loop 0 counter
                  bgeu         a6, tp, sub_1_6_0_t #branch for loop 0
                  beq          s7, t4, sub_1_6_1_t #branch for loop 1
                  sll          s5, a3, s3
                  addi         a4, zero, 7 #init loop 1 counter
                  and          s1, s10, t6
                  addi         a3, t2, -1501
                  addi         s6, zero, -3 #init loop 1 limit
                  sltiu        s7, s0, -1446
sub_1_16_1_t:     slti         sp, a2, -1680
                  andi         s11, s10, 451
                  addi         a4, a4, -6 #update loop 1 counter
                  addi         t5, zero, 2 #init loop 0 counter
                  srai         s2, tp, 29
                  addi         a6, zero, 2 #init loop 0 limit
sub_1_16_0_t:     and          gp, zero, tp
                  sltu         s0, s10, a1
                  addi         t5, t5, -1 #update loop 0 counter
                  bgeu         t5, a6, sub_1_16_0_t #branch for loop 0
                  andi         s2, s10, -1832
                  bge          a4, s6, sub_1_16_1_t #branch for loop 1
                  addi         t3, t3, -323
                  addi         s4, zero, 2 #init loop 0 counter
                  addi         t6, zero, -7 #init loop 0 limit
sub_1_2_0_t:      sub          ra, t1, t0
                  addi         s4, s4, -9 #update loop 0 counter
                  beq          s4, t6, sub_1_2_0_t #branch for loop 0
                  sltiu        ra, a1, -1892
                  addi         gp, zero, 7 #init loop 0 counter
                  lui          t1, 409853
                  sltu         a4, a4, s0
                  slti         t4, s3, -79
                  sltu         a5, a3, s2
                  sltu         sp, s6, sp
                  andi         s8, s9, 2015
                  xori         a5, a7, 2040
                  xori         a6, s6, -415
                  addi         s1, zero, 7 #init loop 0 limit
                  nop
sub_1_17_0_t:     auipc        t6, 1045114
                  slti         a7, a3, -1271
                  and          a2, s0, s0
                  srai         t1, t0, 30
                  slli         a4, s4, 29
                  addi         gp, gp, -6 #update loop 0 counter
                  bgeu         gp, s1, sub_1_17_0_t #branch for loop 0
                  xor          sp, ra, t2
                  addi         a0, zero, 9 #init loop 0 counter
                  nop
                  lui          a4, 702379
                  ori          t5, s6, -823
                  slti         t5, s5, 799
                  add          t0, t1, s7
                  slti         sp, s0, -212
                  addi         s1, zero, 9 #init loop 0 limit
                  or           s4, zero, s10
sub_1_5_0_t:      auipc        a3, 647922
                  srli         t2, s4, 16
                  addi         a0, a0, -8 #update loop 0 counter
                  xori         a2, sp, 86
                  bgeu         a0, s1, sub_1_5_0_t #branch for loop 0
                  slli         s4, a1, 14
                  ori          s6, tp, -6
                  addi         s2, s6, 195
                  auipc        sp, 393153
                  lui          s2, 966199
                  addi         a4, s11, 202
                  addi         zero, t5, 1999
                  blt          s7, s2, 16f
                  bltu         t1, s10, 27f
                  xor          s8, sp, t3
                  sll          t4, s1, a3
                  sra          t6, s5, s9
                  or           a6, s7, a5
                  blt          s9, a2, 25f
                  slti         s1, t0, -898
                  auipc        a6, 769553
                  srl          t4, s4, sp
16:               bge          a4, s4, 19f
                  bge          t6, s10, 25f
                  addi         s0, zero, 1075
19:               slli         s2, gp, 5
                  srl          tp, ra, s3
                  slli         t2, a6, 9
                  bge          s0, s11, 36f
                  sltu         sp, s2, a1
                  srai         gp, a6, 21
25:               bgeu         s10, t3, 26f
26:               or           tp, a0, s10
27:               nop
                  and          t2, a7, t3
                  sra          tp, ra, a3
                  and          a4, s7, t5
                  xori         a3, tp, -234
                  slli         s0, sp, 19
                  srl          zero, sp, s7
                  slli         a0, tp, 17
                  sll          s1, s6, s5
36:               sltu         s8, s9, s2
                  blt          s11, t4, 55f
                  ori          t0, sp, -926
                  sra          a5, s2, s10
                  bne          a2, s1, 41f
41:               xor          s1, a7, t5
                  slt          s9, s9, s5
                  sra          s5, s8, s11
                  bgeu         sp, a1, 64f
                  srai         s8, s9, 31
                  beq          s10, t4, 55f
                  add          a7, a0, gp
                  lui          s2, 217812
                  ori          a7, t5, 282
                  srai         s6, s6, 18
                  andi         s8, ra, -2040
                  or           s4, s8, a6
                  ori          s7, s8, -406
                  slti         s8, a5, 1630
55:               slti         t3, ra, 1040
                  addi         t5, zero, -3 #init loop 0 counter
                  add          zero, s11, sp
                  slti         s6, zero, -826
                  xor          gp, s0, a3
                  addi         tp, zero, -6 #init loop 0 limit
                  slli         s4, t2, 10
                  sra          t0, t5, t5
                  sltu         a0, a5, s11
                  addi         t1, s6, -996
                  sltu         s1, a4, a7
                  slti         t3, t3, -402
                  add          a3, s1, sp
sub_1_14_0_t:     sub          a5, s2, zero
                  auipc        s7, 662912
                  lui          zero, 781424
                  addi         t5, t5, -6 #update loop 0 counter
                  sltiu        t3, a4, -629
                  add          s11, a5, t3
                  and          t6, t5, a5
                  auipc        t1, 298771
                  sll          t4, s2, t2
                  bge          t5, tp, sub_1_14_0_t #branch for loop 0
                  lui          gp, 3716
                  ori          a5, s8, 456
                  srai         a2, t4, 5
                  bgeu         s4, s6, 76f
                  andi         a3, a5, 936
                  blt          s4, tp, 68f
                  slt          t5, sp, a1
                  srl          s6, t1, a6
                  slt          sp, a3, t1
64:               xor          s8, a3, a4
                  sltiu        t2, s0, -1937
                  add          t4, tp, t3
                  or           gp, sp, s2
68:               xor          s2, tp, t4
                  bgeu         s1, a3, 73f
                  and          a4, s10, t2
                  addi         t2, t5, 138
                  blt          a3, s3, 90f
73:               and          t5, t5, t4
                  lui          a6, 829451
                  slti         a5, s5, 1085
76:               lui          t5, 793170
                  slli         a4, gp, 12
                  srl          a6, a4, s1
                  and          a7, a2, t6
                  lui          a7, 695679
                  sll          a4, s0, gp
                  srai         t0, t0, 23
                  add          s7, s2, ra
                  xor          a7, a7, a1
                  srl          t4, a6, t0
                  bne          t4, s7, 97f
                  beq          t4, s7, 106f
                  nop
                  nop
90:               sub          a2, t5, t6
                  addi         a4, s9, 662
                  xori         sp, s1, 1046
                  sll          sp, t3, a3
                  srli         s0, a5, 19
                  srai         gp, s1, 9
                  auipc        s4, 1016938
                  and          a5, ra, s1
                  sll          a5, s1, a1
                  slli         s0, t6, 18
                  slli         t1, a7, 19
                  bge          s9, s8, sub_1_j2 #branch to jump instr
                  andi         ra, s6, 113
                  sra          t6, zero, a6
                  slli         a2, s8, 6
sub_1_j2:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  andi         s5, s2, -1200
97:               bltu         t6, s2, 113f
                  bgeu         t6, s8, 113f
                  sra          a2, s8, t1
                  sra          zero, t0, zero
                  sub          a5, t0, tp
                  auipc        s1, 43325
                  bne          a0, s0, 111f
                  bne          sp, s6, 124f
                  sub          s8, a0, ra
106:              beq          zero, a3, 107f
107:              xor          a3, a5, s2
                  bltu         s7, a2, 111f
                  srl          gp, s10, s2
                  xori         t4, a4, 262
111:              xor          s7, s10, s9
                  ori          sp, s9, 521
113:              srl          s11, s5, s4
                  bge          a1, t4, 133f
                  bge          s3, s8, 132f
                  sltu         t6, t4, t6
                  sll          s9, a7, s10
                  bne          a4, a5, 137f
                  bne          a3, s6, 137f
                  sub          s2, s1, s5
                  ori          gp, a2, -469
                  addi         gp, t2, 966
                  blt          gp, s4, 131f
124:              xor          t1, s11, a6
                  sltiu        sp, t2, -1437
                  lui          s9, 254634
                  beq          s4, a3, 141f
                  sub          s0, gp, t2
                  sll          a0, a1, a2
                  blt          a1, t3, 135f
131:              xori         a2, s10, -2015
132:              nop
133:              slli         a7, a4, 31
                  and          a0, s2, s6
135:              bge          t4, s1, 149f
                  ori          t3, s9, 372
137:              nop
                  ori          ra, t3, -892
                  bltu         s4, s5, 157f
                  blt          t0, s10, 157f
141:              and          a2, tp, s3
                  blt          t5, s2, 143f
143:              auipc        t5, 27314
                  or           s5, t6, t4
                  slti         s0, gp, -1482
                  lui          a4, 873448
                  slli         t5, ra, 10
                  addi         s11, tp, -2022
149:              addi         a7, t6, 0
                  beq          s2, s0, 158f
                  addi         t4, s5, 98
                  sll          a7, s1, a1
                  bne          s0, sp, 172f
                  xori         s0, a0, -1506
                  xor          s5, gp, t4
                  or           s5, a0, gp
157:              and          t5, ra, a4
158:              bne          a2, s1, 169f
                  sub          a5, a6, a0
                  xor          t2, s5, a3
                  blt          t3, a7, 166f
                  bge          s1, a7, 182f
                  add          t4, a0, a1
                  beq          s10, s5, 167f
                  xori         s1, a6, -754
166:              xor          s11, a4, a6
167:              lui          s6, 486718
                  srli         t2, t2, 1
169:              srli         a4, t0, 26
                  srai         zero, a4, 11
                  sll          t2, a0, t4
172:              bge          s5, t1, 173f
173:              sra          sp, s4, t5
                  addi         s4, t0, 1254
                  bgeu         s11, a0, 193f
                  bgeu         a4, a5, 177f
177:              slli         sp, t1, 11
                  sltu         s9, t0, s8
                  andi         t5, ra, 1689
                  ori          tp, a6, 1514
                  sltu         t2, s11, ra
182:              nop
                  ori          s7, a3, 1026
                  addi         s7, t0, 1819
                  addi         s8, zero, 1994
                  lui          tp, 973538
                  xori         s7, a7, -1405
                  xor          a2, zero, a4
                  slli         t6, s7, 13
                  bne          a2, s5, 204f
                  sra          ra, s11, s2
                  beq          a3, s6, 210f
193:              xori         s2, a0, 2026
                  addi         s2, zero, 2 #init loop 1 counter
                  add          ra, t2, s1
                  lui          s1, 921627
                  addi         tp, zero, -12 #init loop 1 limit
sub_1_13_1_t:     sltu         a7, tp, t4
                  sltu         s8, s4, s0
                  addi         s2, s2, -6 #update loop 1 counter
                  addi         a4, zero, 4 #init loop 0 counter
                  ori          ra, s3, -146
                  addi         t3, zero, 5 #init loop 0 limit
sub_1_13_0_t:     sltiu        s1, gp, -1639
                  addi         a4, a4, 1 #update loop 0 counter
                  slt          t1, tp, s2
                  blt          a4, t3, sub_1_13_0_t #branch for loop 0
                  srai         a3, t1, 15
                  sub          sp, s4, t5
                  srli         a5, s1, 4
                  ori          s1, tp, -244
                  sltiu        s7, sp, 796
                  slli         s6, t1, 26
                  bge          s2, tp, sub_1_13_1_t #branch for loop 1
                  sub          t4, gp, ra
                  and          a3, tp, s6
                  bltu         a2, s7, 214f
                  slti         s9, t0, 1712
                  srli         s9, sp, 28
                  xori         t2, t5, 171
                  sll          a7, t6, a1
                  slli         a0, gp, 26
                  blt          t2, s8, 210f
                  sub          s2, t6, t3
                  sltu         t2, a0, a4
204:              sll          t5, t4, s6
                  srl          gp, t6, t6
                  lui          s2, 824152
                  add          s5, t3, gp
                  xor          tp, a5, s6
                  slli         a4, t5, 23
210:              xori         t1, t5, 731
                  slti         a5, a6, 742
                  sll          a0, a3, s5
                  ori          t1, s6, 803
214:              bltu         s4, a6, 217f
                  slli         t4, s7, 22
                  lui          s2, 700468
217:              add          a2, s7, a0
                  blt          a2, s2, 222f
                  srai         a3, s11, 1
                  slli         a7, s8, 12
                  ori          t6, t0, -1445
222:              auipc        t4, 273785
                  srai         s11, gp, 0
                  sll          a4, a7, t3
                  add          a5, s7, s2
                  blt          a2, s7, 239f
                  bge          t4, t1, 243f
                  sltiu        s7, s11, 252
                  nop
                  ori          a7, tp, -1884
                  sra          a5, s11, a0
                  sub          t1, s0, t2
                  srli         t6, zero, 28
                  xor          a0, t2, a7
                  bgeu         a3, t1, 250f
                  srai         a5, t5, 13
                  srli         s0, t4, 2
                  slt          s8, s10, s7
239:              sltiu        s9, s6, -1968
                  lui          a2, 110461
                  sltu         t0, t2, t4
                  sltiu        t3, s11, 356
243:              xor          s0, a6, t1
                  andi         a2, s5, 491
                  bgeu         s3, s5, 253f
                  slli         s1, a6, 22
                  sll          s7, s3, ra
                  auipc        s8, 236182
                  nop
250:              bge          tp, t4, 270f
                  nop
                  bltu         t1, a7, 260f
253:              bgeu         s5, t6, 273f
                  srli         gp, a5, 6
                  blt          t5, a7, 274f
                  sra          tp, s3, s11
                  xori         a6, a4, -1946
                  sub          sp, t2, s10
                  srai         s5, sp, 17
260:              xor          a2, t4, s1
                  nop
                  bge          s7, s10, 272f
                  srli         tp, zero, 17
                  slt          a7, t5, gp
                  blt          a4, s3, 273f
                  addi         s1, a3, -997
                  sltiu        t2, a3, 1991
                  slti         a4, a6, -1260
                  beq          t2, a0, 287f
270:              sra          a7, tp, t1
                  srai         s11, a7, 27
272:              srli         a0, gp, 18
273:              sra          t6, s9, s4
274:              add          a3, s0, gp
                  srli         sp, t5, 23
                  sltu         t4, t3, s10
                  xor          a5, zero, t4
                  or           s7, s4, t4
                  bne          t5, zero, 282f
                  auipc        t3, 639202
                  bge          a7, t3, 299f
282:              add          s1, a0, ra
                  or           zero, s1, s3
                  nop
                  auipc        s0, 537210
                  ori          t1, tp, -1215
287:              andi         s8, t2, 443
                  addi         a4, t0, -845
                  xori         s9, a7, -774
                  srl          s11, a5, s10
                  blt          a1, t1, 309f
                  srli         t6, s0, 2
                  xori         t6, sp, -1987
                  srl          t5, gp, t2
                  blt          s4, s5, 311f
                  sltiu        t4, a0, -646
                  sltu         s0, s1, s2
                  add          a5, s10, s4
299:              addi         sp, s0, 1972
                  bne          s11, zero, 304f
                  xor          s6, s6, t0
                  bge          s8, s11, 317f
                  lui          a0, 17636
304:              xori         t2, zero, 1900
                  sra          s2, zero, s8
                  lui          t2, 137625
                  beq          t4, s8, 308f
308:              auipc        gp, 282104
309:              auipc        s1, 519654
                  addi         t5, s2, -1883
311:              sltiu        a7, a4, 616
                  slt          s8, s3, t6
                  or           a2, s7, a5
                  slti         s7, t5, 1870
                  xori         s2, a5, 360
                  auipc        t3, 333213
317:              beq          t2, s10, 325f
                  xor          s11, t2, a1
                  srl          t5, sp, t3
                  addi         s7, s2, -628
                  sltu         gp, a0, t0
                  xori         a7, t0, 1042
                  xor          zero, a2, s6
                  sltu         t6, t0, s0
325:              ori          s0, gp, -1024
                  sltiu        t4, a7, -141
                  bge          a4, s1, 337f
                  srl          s1, s5, s7
                  sra          a7, s0, s11
                  srl          t1, t6, a7
                  beq          ra, tp, 332f
332:              sltiu        s4, ra, 2043
                  slt          s0, t1, a2
                  bltu         a3, a2, 354f
                  or           s8, a5, s10
                  bltu         gp, t4, 344f
337:              addi         s6, a0, 1595
                  add          s8, a6, a3
                  ori          a5, s2, -959
                  sltiu        t4, ra, -267
                  or           a6, t2, a3
                  sltu         a2, s2, s4
                  xor          t4, a6, s5
344:              slli         s2, s3, 5
                  bltu         tp, sp, 363f
                  srli         a4, a3, 11
                  slli         t3, a5, 15
                  bge          t4, a7, 368f
                  andi         a5, s2, -1831
                  slli         s5, t1, 28
                  addi         t6, sp, 1413
                  nop
                  auipc        a0, 686303
354:              ori          s8, gp, -1515
                  add          s5, a0, a6
                  xor          t4, a6, s9
                  and          t5, a7, sp
                  sub          a4, a0, tp
                  xor          sp, s0, s6
                  ori          s1, s8, -74
                  bge          s3, t2, 375f
                  srai         s2, s9, 13
363:              bltu         a1, t6, 377f
                  and          t1, t5, gp
                  xor          s1, a1, a3
                  srli         t4, t5, 4
                  sll          a0, s6, s11
368:              ori          tp, a2, -2038
                  beq          a5, a5, 374f
                  srl          t2, a2, t2
                  sltiu        s1, tp, -1319
                  nop
                  beq          s8, a3, 381f
374:              sra          s7, a3, zero
375:              sra          s5, s11, s10
                  slt          tp, s8, t6
377:              bge          t3, a7, 385f
                  add          s6, s8, s11
                  and          s0, ra, t6
                  sra          ra, gp, t2
381:              addi         s7, a5, -1191
                  ori          s2, s3, -929
                  slli         a0, t0, 11
                  sltu         a4, s6, s5
385:              add          t2, a6, t3
                  slti         s7, s4, -778
                  sll          s7, t0, s3
                  beq          ra, s2, 399f
                  sltiu        zero, s8, -727
                  srai         a0, s11, 6
                  sltu         a7, t2, s4
                  or           a7, s1, zero
                  sltu         t5, a3, a7
                  bge          tp, s11, 407f
                  srli         t2, a7, 29
                  bne          tp, s0, 416f
                  slti         a5, s6, -630
                  sltu         a4, t0, s10
399:              sltu         a5, s7, a0
                  xor          t4, s10, s10
                  xor          tp, t1, s1
                  slt          s6, t2, s9
                  bne          ra, t4, 406f
                  bgeu         s0, s6, 422f
                  xor          t5, s7, a1
406:              slti         t0, t1, 1228
407:              beq          a7, a5, 426f
                  add          s7, s10, s8
                  xori         s7, tp, -1502
                  srai         s5, tp, 2
                  or           s6, tp, a3
                  bltu         zero, a7, 413f
413:              slli         gp, t6, 8
                  bne          t6, t6, 431f
                  bge          s1, sp, 434f
416:              srl          t3, a4, a7
                  sltiu        a2, s8, -1141
                  nop
                  slt          a4, a0, s4
                  or           s2, s5, a3
                  bltu         s0, a0, 440f
422:              bgeu         s10, a5, 431f
                  andi         ra, a4, -608
                  sll          t5, tp, s11
                  xori         sp, s9, -465
426:              add          s9, tp, a6
                  sub          a4, a7, t3
                  xori         tp, t0, 1084
                  bne          t6, t2, 444f
                  blt          a2, a0, 449f
431:              xor          s1, a5, t0
                  xori         a4, a7, -833
                  bgeu         s8, a1, 438f
434:              lui          a0, 53523
                  xor          s5, a5, a7
                  slt          s11, s11, a5
                  slti         zero, s3, 1890
438:              or           s7, a2, a5
                  slti         s1, s2, -1677
440:              add          tp, ra, s4
                  sltu         zero, s5, s6
                  sltu         t6, s11, a2
                  slt          a2, gp, s5
444:              beq          tp, t3, 462f
                  beq          a3, tp, 453f
                  beq          sp, a4, 464f
                  andi         t1, t0, 1058
                  bgeu         t5, s10, 449f
449:              auipc        zero, 578068
                  bgeu         s11, tp, 470f
                  beq          s11, a7, 455f
                  bgeu         s1, a7, 461f
453:              bge          ra, ra, 471f
                  sub          s5, t5, a1
455:              auipc        s5, 641426
                  bgeu         a5, a7, 474f
                  sltu         s9, t0, a6
                  addi         s6, gp, 218
                  slti         s0, t1, 488
                  or           s4, t4, s7
461:              sra          tp, t3, s8
462:              srl          tp, s6, a2
                  bltu         zero, a7, 482f
464:              sra          a4, a1, s2
                  sltiu        zero, t5, 1746
                  andi         s5, a7, -487
                  bgeu         s6, s0, 477f
                  srl          t1, gp, s3
                  srai         a4, a2, 6
470:              sub          s6, a7, a0
471:              slli         t4, a6, 21
                  srl          sp, t5, zero
                  sltiu        a6, a2, 1045
474:              xor          zero, a4, s8
                  srai         s8, a0, 11
                  slt          s6, tp, t2
477:              slti         t5, a4, 526
                  sll          a7, a4, t5
                  lui          ra, 788621
                  add          zero, a4, a6
                  beq          zero, s11, 498f
482:              beq          sp, t1, 502f
                  bltu         t5, t6, 497f
                  and          t4, s1, s4
                  addi         gp, t1, -1744
                  sltu         a3, s11, sp
                  add          t0, ra, t0
                  and          t6, t3, s5
                  auipc        s6, 506651
                  bne          s5, a5, 503f
                  lui          a2, 39363
                  slt          a3, a7, gp
                  or           a3, t0, a7
                  addi         a0, t1, -715
                  sltu         t1, s1, s10
                  xor          s6, t5, s0
497:              nop
498:              slli         s5, s2, 10
                  sltiu        t0, a1, -68
                  blt          s11, a7, 516f
                  blt          s5, tp, 504f
502:              beq          zero, a2, 505f
503:              slli         t4, s0, 7
504:              bne          zero, t2, 505f
505:              sub          s0, s3, t0
                  bgeu         t0, s8, 514f
                  xor          a0, a3, s10
                  add          ra, t2, a5
                  ori          gp, a1, -1751
                  sra          s5, a4, s0
                  slt          sp, s1, s9
                  sub          s9, tp, a2
                  slti         s7, s9, 1920
514:              sll          t1, gp, a2
                  slli         sp, s11, 18
516:              addi         a0, t0, -1889
                  sub          a4, s6, gp
                  srai         t4, s8, 15
                  nop
                  sub          zero, s2, t5
                  sll          sp, s5, ra
                  bltu         a1, a0, 536f
                  andi         t3, a1, 1419
                  bge          s11, t2, 543f
                  add          t3, gp, a4
                  sltiu        a5, ra, 1643
                  addi         t6, a2, 1974
                  bltu         s1, t6, 539f
                  ori          a3, s5, 1632
                  blt          ra, s10, 538f
                  sra          s4, s2, t5
                  bne          s11, s5, 540f
                  bltu         s4, ra, 534f
534:              sltiu        tp, s10, 81
                  nop
536:              bgeu         a7, sp, 556f
                  sll          s0, a5, s2
538:              beq          a2, t3, 553f
539:              beq          s5, s9, 547f
540:              blt          a4, s3, 551f
                  addi         ra, gp, -865
                  sltiu        a4, s10, -896
543:              lui          t5, 244570
                  slti         a5, a2, -462
                  xori         t1, s6, 581
                  auipc        t0, 566304
547:              andi         s4, a7, -1623
                  xori         t4, s11, -843
                  srli         s2, s3, 11
                  srli         s7, t0, 5
551:              auipc        a0, 914361
                  or           s8, t1, t6
553:              bge          a0, t5, 571f
                  bne          sp, a3, 573f
                  srl          a3, a5, a7
556:              bne          t3, s2, 572f
                  slt          s7, t6, s9
                  nop
                  andi         a2, s2, 1974
                  bgeu         s7, s10, 574f
                  beq          s2, s4, 581f
                  addi         t5, s8, -1814
                  slt          t5, a3, s2
                  or           s9, s8, a0
                  sra          a2, s3, a7
                  nop
                  slli         a7, t2, 21
                  srl          s5, s0, s1
                  auipc        tp, 407071
                  slli         s6, sp, 14
571:              or           s2, s8, a1
572:              bgeu         t4, s5, 573f
573:              srai         t6, tp, 10
574:              xori         sp, s6, 1578
                  andi         s0, t6, 1891
                  andi         s5, s10, -1159
                  bltu         sp, gp, 594f
                  addi         t6, a1, 621
                  auipc        a5, 37322
                  slt          a5, s0, s4
581:              beq          s4, a0, 599f
                  bgeu         s1, t4, 592f
                  beq          s11, s1, 584f
584:              slti         sp, s2, 1954
                  sltiu        s5, a2, -1402
                  bge          s3, s6, 594f
                  bltu         a1, s8, 606f
                  or           ra, a0, s10
                  srli         s9, sp, 15
                  and          s7, s4, tp
                  lui          s2, 934870
592:              sltiu        gp, tp, -1933
                  blt          a0, s10, 594f
594:              sll          s6, a4, t0
                  addi         t2, ra, -1099
                  slli         s11, t6, 28
                  slt          s5, tp, sp
                  and          t6, gp, s11
599:              srl          tp, a2, t6
                  xori         gp, a6, 1603
                  sltu         t3, a5, s9
                  slt          t3, s7, ra
                  xori         zero, s7, -586
                  slt          s5, s3, ra
                  sltu         s2, s1, s2
                  srli         s0, t5, 7
                  xori         a5, sp, -1474
                  or           sp, t1, s7
                  srl          a5, sp, s3
                  add          s9, s2, s3
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  srli         t6, t3, 7
                  slt          a2, s6, s7
                  bge          s1, s4, 624f
                  srli         s6, zero, 17
606:              nop
                  sltiu        a2, a7, 1497
                  xori         s6, t0, -348
                  bgeu         a4, s6, 628f
                  sll          t5, s6, s10
                  xor          a2, t4, s6
                  or           t5, t6, a1
                  bne          a6, gp, 616f
                  xor          t4, s9, sp
                  beq          t1, a1, 624f
616:              slti         s7, s3, -1138
                  bltu         s8, t2, 620f
                  bltu         a3, a6, 626f
                  or           gp, s3, t0
620:              sra          a6, a2, a5
                  xori         t4, gp, 363
                  sltiu        sp, s2, -2028
                  slt          t5, sp, a7
624:              andi         a7, a5, -442
                  blt          s7, t6, 630f
626:              lui          a4, 159694
                  sll          a2, gp, s8
628:              xor          s6, a2, t0
                  xori         a4, t3, -127
630:              andi         a5, s11, 671
                  lui          s4, 185411
                  andi         s6, t5, 1009
                  ori          tp, ra, 411
                  sra          zero, s0, s8
                  slti         a7, t5, -1287
                  srli         t2, s2, 7
                  slti         a3, gp, -1301
                  bne          s2, s9, 651f
                  nop
                  xori         t4, t2, -1220
                  sra          s8, t5, zero
                  bge          a0, a1, 646f
                  srl          s1, tp, gp
                  sltiu        t0, s6, -1952
                  add          sp, t0, s4
646:              sll          a3, s5, tp
                  ori          t5, a4, 397
                  bne          t1, t3, 666f
                  or           s0, t3, s3
                  sltiu        sp, s2, 322
651:              srl          s8, a2, s10
                  bge          a5, a3, 660f
                  lui          t3, 80776
                  xor          tp, a4, s10
                  add          a2, gp, a1
                  and          tp, t6, s4
                  srai         s4, s3, 7
                  ori          sp, zero, 1491
                  srai         t3, ra, 4
660:              sltiu        t5, tp, -953
                  bltu         a1, a0, 675f
                  slli         sp, sp, 31
                  add          s2, t2, a4
                  srli         t1, a4, 10
                  beq          s11, s11, 685f
666:              auipc        s9, 846588
                  bltu         s6, s8, 685f
                  and          t3, s3, t0
                  slti         s8, a3, -666
                  addi         sp, t5, -409
                  addi         a4, zero, 9 #init loop 1 counter
                  auipc        t4, 459675
                  xori         s6, t3, -134
                  addi         a6, zero, -18 #init loop 1 limit
                  sub          a0, s5, a1
                  and          t6, s0, t2
sub_1_18_1_t:     slti         a0, s10, -1952
                  srli         a7, t0, 8
                  sra          gp, a7, t5
                  and          a0, s9, t3
                  xor          t3, a5, t3
                  and          a3, a6, t6
                  andi         t1, t3, -360
                  sub          s4, s8, a6
                  addi         a4, a4, -3 #update loop 1 counter
                  xori         s5, s5, -677
                  sll          a5, tp, a2
                  sll          s9, a3, s6
                  sll          s8, s2, gp
                  sra          t2, zero, s7
                  xor          s7, a6, s7
                  addi         s0, zero, -4 #init loop 0 counter
                  auipc        a7, 98106
                  and          ra, s2, t4
                  addi         s1, zero, -8 #init loop 0 limit
sub_1_18_0_t:     and          a5, zero, t4
                  or           a5, s4, s5
                  addi         s0, s0, -4 #update loop 0 counter
                  or           a2, s11, a1
                  bne          s0, s1, sub_1_18_0_t #branch for loop 0
                  sub          s5, s8, s6
                  sltu         t1, tp, gp
                  sub          ra, a7, s10
                  bge          a4, a6, sub_1_18_1_t #branch for loop 1
                  srai         t4, a4, 0
                  xori         t2, s8, -259
                  bne          s9, s2, 683f
                  sra          t4, s2, t3
                  bge          t1, a4, 693f
675:              sll          s5, ra, t5
                  xori         s0, a1, -145
                  slli         a4, ra, 1
                  srl          gp, s3, tp
                  bgeu         t5, a6, 687f
                  sltiu        t5, a1, 1476
                  bne          s10, s2, 682f
682:              addi         t6, sp, 1599
683:              nop
                  sltiu        t1, t4, -1876
685:              ori          t0, s2, -495
                  and          a5, t3, s4
687:              or           tp, s11, a5
                  and          t4, s2, s6
                  blt          s6, t0, 694f
                  auipc        gp, 483112
                  srli         t2, sp, 1
                  nop
693:              bne          a1, a7, 701f
694:              bge          a1, s8, 708f
                  blt          zero, t4, 715f
                  bne          a0, s0, 706f
                  bgeu         s1, t2, 715f
                  sltu         a2, a1, a2
                  sub          s11, t2, s0
                  lui          s4, 1025984
701:              blt          t4, t0, 721f
                  nop
                  beq          s2, a2, 721f
                  ori          a7, s2, -950
                  slt          t4, s1, t0
706:              slli         t5, t6, 3
                  sll          a5, a0, a0
708:              srai         sp, s0, 22
                  sltiu        s6, s11, 1144
                  bne          t2, a5, 719f
                  andi         s1, s5, 1053
                  and          s6, t6, s10
                  xor          s9, s6, s10
                  srli         s6, zero, 10
715:              xor          a7, a1, t5
                  add          zero, a2, s9
                  andi         t2, tp, -257
                  sub          s2, s0, s2
719:              srli         a3, t5, 3
                  and          s9, s7, s0
721:              srl          a4, a6, ra
                  sub          t4, s9, t2
                  srli         t3, s10, 12
                  bgeu         t2, t2, 744f
                  srl          a2, t5, t4
                  or           t0, t4, a7
                  srli         t0, t5, 24
                  lui          sp, 743286
                  bge          t3, s10, 748f
                  beq          tp, a6, 748f
                  beq          t4, s5, 750f
                  sll          s9, a4, s2
                  srl          s6, s0, t5
                  or           gp, s4, t0
                  bge          a5, s2, 739f
                  srai         sp, tp, 13
                  sltiu        s8, a2, 1681
                  sltiu        a0, t5, 1609
739:              auipc        a2, 141614
                  blt          s7, a1, 753f
                  sltu         s4, s0, a5
                  sll          s2, a3, sp
                  xor          a7, a7, s4
744:              lui          t6, 598101
                  sub          s7, s7, s11
                  srli         gp, t3, 20
                  andi         s11, t6, 1771
748:              bge          a2, a7, 751f
                  sltu         s6, s1, s3
750:              slti         s4, s7, -712
751:              or           s2, a5, s0
                  slti         a5, a5, -830
753:              sltiu        a7, ra, 18
                  srl          t4, s0, t6
                  auipc        a3, 79304
                  sltu         s7, s2, a0
                  bgeu         s10, a3, 765f
                  bge          a1, s9, 773f
                  sltiu        t6, t1, 1200
                  sltiu        t4, t0, -1640
                  sll          s6, s11, s3
                  ori          s8, s0, -338
                  srl          a4, s1, a3
                  srai         sp, s7, 27
765:              bne          a7, s8, 766f
766:              ori          sp, t3, 74
                  auipc        a4, 147662
                  bgeu         a2, t6, 785f
                  srl          s11, a1, s0
                  srl          s1, a1, t5
                  srl          t4, a6, s8
                  xor          gp, s1, a6
773:              xori         s6, zero, 1219
                  bne          t2, a2, 782f
                  sra          a7, s11, tp
                  beq          s7, s5, 779f
                  nop
                  xor          s9, s1, a2
779:              auipc        s9, 1017588
                  sub          a0, s5, t0
                  nop
782:              lui          t1, 203981
                  andi         a5, a7, 92
                  blt          a5, t1, 798f
785:              blt          t2, s0, 803f
                  or           s1, s3, t0
                  sra          t5, s4, a1
                  bgeu         tp, s10, 804f
                  add          s2, t2, t2
                  slti         s6, zero, -641
                  beq          sp, s9, 792f
792:              bne          s6, s11, 796f
                  lui          t6, 389229
                  srai         s5, s9, 19
                  and          t3, s2, a0
796:              nop
                  and          tp, s9, t2
798:              beq          a4, a2, 799f
799:              and          s8, a4, ra
                  add          ra, t0, ra
                  bne          gp, s0, 819f
                  auipc        s7, 832222
803:              srl          gp, a5, s10
804:              add          t5, a5, s7
                  sltu         gp, a7, s11
                  nop
                  sltu         a6, s5, zero
                  andi         s6, s1, -2044
                  sub          t0, a3, s9
                  nop
                  srli         a5, s5, 3
                  or           sp, s2, a2
                  ori          s4, s6, 1103
                  slt          a5, t4, s0
                  sub          ra, t2, s7
                  sltiu        t3, s10, -412
                  xor          a4, s10, s2
                  slt          a6, s3, a3
819:              bltu         a4, t0, 832f
                  auipc        t4, 775734
                  blt          s4, s11, 841f
                  bne          t6, t4, 838f
                  ori          a3, s2, -1697
                  nop
                  andi         tp, s1, -1003
                  xori         a4, sp, -744
                  sub          t4, sp, tp
                  sltu         s2, t6, s6
                  bne          a3, gp, 848f
                  add          s1, gp, t3
                  srl          t0, a7, a6
832:              add          ra, a5, s5
                  lui          s0, 315152
                  auipc        s0, 673931
                  sltu         tp, s1, a2
                  slti         s5, s7, -760
                  ori          s8, zero, 789
838:              xor          s2, s0, a4
                  sltu         t3, t5, a6
                  nop
841:              slt          s8, a4, s6
                  auipc        s4, 230970
                  xor          s4, s5, t6
                  sltiu        s4, a1, 1319
                  nop
                  sub          zero, a3, t3
                  and          s7, s3, a0
848:              blt          a7, s6, 866f
                  slti         ra, t4, -1614
                  nop
                  or           s6, sp, tp
                  ori          t6, s10, 1981
                  srai         gp, t2, 8
                  lui          s2, 311979
                  srl          s5, a6, s4
                  lui          s5, 972534
                  beq          a0, a2, 865f
                  auipc        s5, 577681
                  srl          ra, t4, t3
                  sub          s2, t3, a2
                  xori         a2, t5, 1359
                  srli         t3, s4, 14
                  lui          s9, 225426
                  bge          s3, s10, 882f
865:              nop
866:              beq          s9, tp, 880f
                  xor          a4, t2, t2
                  and          zero, zero, t6
                  and          ra, s3, a2
                  addi         a4, a4, -1187
                  bge          a3, gp, 879f
                  lui          s9, 1023697
                  sltiu        t6, t5, -560
                  slti         t1, s10, 1185
                  srai         s1, s9, 26
                  beq          t2, t5, 890f
                  or           gp, ra, t2
                  slt          t4, s11, zero
879:              slli         t1, gp, 27
880:              srli         t0, ra, 25
                  lui          s0, 729046
882:              slti         tp, s3, -1804
                  sra          t5, gp, s1
                  srai         a6, a3, 2
                  nop
                  and          tp, s1, s8
                  srai         s11, s7, 31
                  ori          a2, s5, 884
                  srl          t1, gp, s10
890:              bne          t1, a3, 899f
                  srli         t5, t2, 13
                  xori         s5, t4, 93
                  and          t3, s0, sp
                  andi         a5, zero, 535
                  slti         s8, t1, 418
                  andi         a7, tp, -1007
                  auipc        s1, 727177
                  xor          zero, gp, s10
899:              xor          t4, s6, t6
                  sra          s0, s6, s1
                  or           s5, a2, s10
                  and          t2, ra, t2
                  xor          s1, t5, s1
                  bne          a2, s1, 924f
                  ori          s7, s1, 424
                  andi         a5, a2, 223
                  sra          s4, t4, a0
                  sub          s2, t2, s1
                  srai         ra, s10, 15
                  bne          a7, s2, 918f
                  slt          sp, t4, t4
                  bgeu         s4, s8, 931f
                  srli         s8, sp, 0
                  ori          a3, s6, -47
                  sub          s4, t1, s11
                  srli         s1, t2, 31
                  sltu         t1, s10, s3
918:              srli         a0, t4, 0
                  xori         t5, s3, -499
                  slti         t5, s9, 1562
                  blt          gp, t6, 940f
                  bge          s8, t0, 942f
                  slli         s11, gp, 24
924:              add          a4, s7, a5
                  bge          s10, s4, 943f
                  addi         t5, s7, 374
                  sll          t3, zero, a6
                  andi         t2, s11, -1060
                  bne          s7, tp, 930f
930:              bltu         ra, t0, 933f
931:              beq          t2, s4, 941f
                  add          a7, zero, a2
933:              slti         s0, zero, -1550
                  sltu         zero, s11, t6
                  sub          s4, s8, a2
                  sra          a3, s6, t6
                  add          ra, a0, s0
                  addi         t0, a7, -1704
                  slli         s9, t2, 31
940:              add          a2, a3, s2
941:              slti         a2, s7, 679
942:              auipc        s11, 585995
943:              xori         t5, a5, -1660
                  and          t1, s0, t4
                  xor          a5, zero, s2
                  add          t0, zero, sp
                  andi         t0, a0, 575
                  add          a4, a5, a1
                  beq          s4, a3, 952f
                  slt          sp, s8, s7
                  ori          s11, s7, -489
952:              bgeu         t1, a4, 954f
                  bge          a6, s2, 954f
954:              sll          t4, a3, a1
                  lw           t1, 4(s10)
                  slt          a3, gp, t3
                  srai         a7, gp, 9
                  lui          gp, 403931
                  addi         s10, s10, 56
                  lui          gp, 511510
1380:             addi x12, x6, 0
1380:             jalr x12, x12, 0
sub_5:            lui          s8, 344401
                  addi         s10, s10, -44
                  slt          s6, s2, s4
                  sw           t1, 4(s10)
                  and          t2, gp, t0
                  addi         t0, s5, -1179
                  srai         s7, t0, 10
                  andi         a4, a6, 803
                  slt          t3, tp, t3
                  slt          ra, a6, t1
                  ori          t5, a0, 989
                  slti         a5, a4, 154
                  addi         t0, zero, 1 #init loop 1 counter
                  sra          a5, tp, s1
                  or           gp, s9, s0
                  slt          a6, a2, s8
                  addi         s1, zero, 7 #init loop 1 limit
                  xori         a6, tp, 554
sub_5_0_1_t:      and          s5, t6, t0
                  addi         t0, t0, 10 #update loop 1 counter
                  sltiu        tp, a5, 297
                  slt          s2, t0, s10
                  nop
                  add          t3, a4, a4
                  sub          a7, gp, s5
                  sll          s6, a3, s3
                  xor          t1, a7, s5
                  addi         a4, zero, 8 #init loop 0 counter
                  sub          t3, s2, s2
                  addi         a0, zero, 8 #init loop 0 limit
                  xori         s4, t3, -2010
sub_5_0_0_t:      andi         s4, s8, 1222
                  addi         a4, a4, -7 #update loop 0 counter
                  bgeu         a4, a0, sub_5_0_0_t #branch for loop 0
                  slli         a7, t6, 1
                  sra          s2, a3, s3
                  add          a6, s5, s4
                  blt          t0, s1, sub_5_0_1_t #branch for loop 1
                  add          s11, sp, t4
                  addi         s2, zero, 9 #init loop 1 counter
                  addi         s1, zero, 19 #init loop 1 limit
                  sltiu        a6, t5, 318
                  sltiu        s7, ra, 1725
sub_5_1_1_t:      ori          s6, s11, 388
                  addi         s2, s2, 5 #update loop 1 counter
                  and          s11, s8, a4
                  addi         gp, zero, -7 #init loop 0 counter
                  addi         s9, zero, 14 #init loop 0 limit
                  auipc        t5, 709272
                  srai         tp, a2, 29
sub_5_1_0_t:      sub          a4, a3, t5
                  lui          a5, 164066
                  andi         a6, s6, -1709
                  addi         gp, gp, 7 #update loop 0 counter
                  auipc        s8, 818260
                  xor          ra, s6, sp
                  bne          gp, s9, sub_5_1_0_t #branch for loop 0
                  srai         s7, ra, 0
                  srai         s8, t3, 19
                  ori          t1, s6, 1293
                  beq          s2, s1, sub_5_1_1_t #branch for loop 1
                  sltiu        s11, t2, -1228
                  addi         s2, zero, -3 #init loop 0 counter
                  auipc        s1, 938110
                  lui          t3, 589302
                  auipc        sp, 224955
                  addi         a3, zero, -11 #init loop 0 limit
                  slli         s1, a4, 14
sub_5_2_0_t:      and          t5, a1, a5
                  sll          s11, s4, a7
                  addi         s2, s2, -6 #update loop 0 counter
                  sltiu        s4, ra, 253
                  slti         gp, a7, -688
                  slt          s7, s3, s8
                  auipc        a7, 668451
                  slt          s7, a0, t6
                  xori         t4, s2, 764
                  srl          gp, t1, a2
                  lui          s5, 155701
                  bge          s2, a3, sub_5_2_0_t #branch for loop 0
                  sra          a5, s6, gp
                  addi         a3, zero, 8 #init loop 1 counter
                  srl          a5, s8, t3
                  andi         t2, s0, 1188
                  addi         t4, zero, 2 #init loop 1 limit
sub_5_3_1_t:      xori         zero, s2, -178
                  xor          s6, t2, a3
                  addi         a3, a3, -6 #update loop 1 counter
                  addi         t6, zero, -4 #init loop 0 counter
                  sltu         s5, gp, t3
                  andi         gp, s5, 217
                  lui          s4, 605299
                  addi         t1, zero, -15 #init loop 0 limit
                  sub          s6, t6, a6
                  srai         s9, s2, 14
sub_5_3_0_t:      addi         gp, t4, -487
                  addi         t6, t6, -3 #update loop 0 counter
                  and          t3, s10, s1
                  xor          t0, s1, s1
                  bge          t6, t1, sub_5_3_0_t #branch for loop 0
                  srli         s5, t4, 22
                  slt          tp, gp, s6
                  sub          gp, s8, s8
                  sub          sp, s6, t2
                  bne          a3, t4, sub_5_3_1_t #branch for loop 1
                  sltu         s6, t6, a3
                  sra          s0, t1, a4
                  add          t5, s7, s11
                  slt          gp, ra, a2
                  andi         s0, a7, 146
                  slt          a6, sp, s8
                  nop
                  sra          s4, ra, a1
                  slli         t1, s8, 3
                  srai         s7, s9, 31
                  slt          a4, a6, s3
                  beq          s8, s4, 20f
                  sra          s8, gp, s3
                  bltu         a5, a1, 25f
                  sra          t1, a0, t2
                  xor          s8, a7, s11
                  slli         zero, s5, 18
                  auipc        s7, 142589
                  lui          t4, 64821
                  srl          t2, t6, s7
                  sll          s6, a0, s6
20:               srli         t2, t1, 13
                  lui          t1, 917268
                  andi         tp, a4, -1459
                  sub          t6, sp, s10
                  slt          tp, tp, a6
25:               xori         s1, ra, 144
                  bltu         s4, s11, 40f
                  xor          sp, s0, zero
                  ori          t0, s1, 1673
                  blt          t2, s0, 38f
                  srli         s8, s6, 27
                  add          s8, s6, t4
                  blt          a3, s1, 37f
                  auipc        s4, 547020
                  bne          s9, s6, 48f
                  sltu         t3, a6, a1
                  lui          t6, 9224
37:               slti         s11, t0, 1637
38:               sltu         t5, t3, t3
                  bne          a2, s7, 56f
40:               and          t6, gp, ra
                  sra          s1, a1, s11
                  srl          s5, t4, t2
                  addi         s2, a0, -160
                  xori         s11, tp, 1636
                  slti         a4, a1, -641
                  sltu         zero, gp, s2
                  sltiu        s5, a5, -2010
48:               srli         s2, a3, 30
                  beq          s0, t2, 64f
                  bgeu         s7, a6, 65f
                  auipc        a0, 393637
                  nop
                  and          a5, a4, a6
                  xor          t6, t5, s7
                  bne          a1, s9, 66f
56:               beq          t1, a2, 61f
                  beq          s7, s9, 60f
                  andi         gp, t1, -1250
                  sltiu        a5, t3, 426
60:               bge          gp, ra, 64f
61:               xori         tp, s9, 1286
                  ori          tp, t3, 1687
                  srai         zero, t0, 12
64:               add          a0, tp, a1
65:               srai         s8, ra, 27
66:               sra          a6, s0, a2
                  slli         a4, t0, 22
                  nop
                  bne          s11, t4, 85f
                  srli         s7, t4, 20
                  blt          s2, s1, 87f
                  slt          a0, a6, gp
                  lui          s7, 757702
                  blt          s0, a0, 84f
                  srl          s2, t5, a5
                  bltu         s3, a5, 94f
                  xor          s9, t6, t3
                  and          s11, a2, s9
                  slli         s0, gp, 23
                  sub          s8, t3, s6
                  srli         tp, s3, 29
                  sltu         s9, a5, t4
                  sra          s8, gp, t4
84:               blt          t6, a3, 93f
85:               bne          a4, t4, 105f
                  lui          tp, 499089
87:               slli         a7, s5, 30
                  add          t2, t0, sp
                  sll          sp, a5, a7
                  bne          s3, a2, 105f
                  ori          s2, s11, 1487
                  srli         ra, s4, 7
93:               xori         t5, a4, -1959
94:               sub          s8, s6, t3
                  or           s11, a3, zero
                  nop
                  slli         s5, t4, 8
                  sll          s7, t1, a1
                  slti         s2, t4, 811
                  ori          s6, a1, 16
                  sll          t5, s9, s5
                  bge          s11, t5, 122f
                  slti         zero, s3, -481
                  sll          a2, t6, a1
105:              srai         s4, s9, 24
                  bgeu         s10, t0, 114f
                  srli         gp, t1, 14
                  sll          s5, s7, t3
                  slti         s9, s3, -386
                  addi         s5, tp, 20
                  srl          a0, s8, s4
                  sll          s7, t5, a4
                  sra          tp, zero, s8
114:              srli         s2, t6, 25
                  bgeu         t1, a7, 120f
                  srl          sp, s0, a5
                  srai         s4, t1, 23
                  andi         t4, tp, -665
                  xor          s2, s6, sp
120:              srli         a2, a3, 26
                  slt          a0, s0, a6
122:              add          t4, t6, s6
                  nop
                  bltu         s4, s7, 141f
                  and          a7, t5, s7
                  srli         t2, a6, 24
                  sra          a3, s1, a0
                  bne          t6, sp, 130f
                  auipc        a6, 691442
130:              bgeu         a3, a1, 137f
                  andi         s11, s10, 359
                  beq          s9, s2, 151f
                  addi         s1, s5, -721
                  sltiu        a5, a7, -528
                  sll          s4, s4, t1
                  addi         s1, t2, 826
137:              bltu         t4, a5, 155f
                  slt          zero, s11, s4
                  srl          t2, s5, t2
                  andi         t6, s6, 1968
141:              bgeu         s4, a0, 150f
                  sll          a3, s8, s8
                  sll          a7, ra, a3
                  sub          gp, s11, s4
                  ori          s8, s6, -434
                  xor          s6, a1, t5
                  slti         s8, a5, -1697
                  bltu         s1, t2, 158f
                  bne          s4, s8, 154f
150:              sra          s8, t5, a4
151:              addi         t5, s7, -629
                  slli         a7, a3, 1
                  blt          a1, sp, 167f
154:              bge          s8, t1, 169f
155:              sub          ra, s9, a2
                  xori         s9, t5, -1705
                  srai         sp, sp, 0
158:              ori          s8, a5, 474
                  bgeu         s5, t4, 178f
                  xori         zero, sp, -740
                  andi         zero, zero, 206
                  nop
                  sll          a3, a7, s8
                  sll          s8, zero, t3
                  srli         t0, s10, 31
                  auipc        t4, 262827
167:              ori          zero, a4, -232
                  bgeu         sp, a0, 183f
169:              sra          zero, sp, a2
                  lui          t1, 781781
                  add          s4, a2, a2
                  srli         t3, s1, 26
                  sll          s6, s7, s7
                  xori         gp, a0, -1116
                  sra          s6, t1, t1
                  sltu         s6, tp, t6
                  bgeu         gp, s10, 182f
178:              sltu         t2, s4, t0
                  lui          s11, 916588
                  sltu         s4, s1, t0
                  sltiu        a2, t1, 1318
182:              lui          t0, 409557
183:              srli         t3, t5, 16
                  beq          a6, tp, 198f
                  bne          gp, a1, 201f
                  bgeu         t0, a0, 196f
                  xori         a6, sp, -456
                  bgeu         tp, t5, 201f
                  bne          zero, a7, 201f
                  slt          s7, s8, t6
                  bge          sp, t6, 193f
                  srai         a2, t6, 23
193:              bltu         a6, a0, 198f
                  bge          s5, s0, 201f
                  xori         a5, ra, -1305
196:              slli         gp, tp, 23
                  lui          s5, 560136
198:              blt          s5, s9, 201f
                  srai         s7, t3, 7
                  bltu         s9, a4, 201f
201:              slli         t0, a3, 22
                  lw           t1, 4(s10)
                  sub          a3, s0, t5
                  addi         s10, s10, 44
                  slti         a6, t1, 1568
                  slli         s9, t1, 25
                  slli         s2, sp, 5
314:              addi x20, x6, 1
314:              jalr x20, x20, 0
sub_3:            slti         ra, t2, -1674
                  slt          sp, ra, t1
                  addi         s10, s10, -20
                  sw           t1, 4(s10)
                  add          s2, s3, s10
                  srai         t2, s1, 18
                  srl          s8, s6, ra
                  addi         t0, zero, 2 #init loop 0 counter
                  add          s6, a2, a6
                  and          a6, s4, t1
                  srai         t6, sp, 4
                  ori          s5, s5, 66
                  slli         t4, s5, 13
                  sltu         s11, s1, s6
                  addi         a2, zero, 17 #init loop 0 limit
                  srai         a5, sp, 18
sub_3_2_0_t:      slti         a6, s10, -493
                  srli         s4, zero, 8
                  addi         t0, t0, 9 #update loop 0 counter
                  nop
                  ori          zero, a3, 1951
                  srai         tp, s10, 15
                  add          s0, t4, t4
                  srl          a3, a6, a4
                  sltiu        s11, s0, -1670
                  sll          s11, ra, a0
                  blt          t0, a2, sub_3_2_0_t #branch for loop 0
                  lui          a4, 671329
                  addi         s2, zero, 2 #init loop 0 counter
                  addi         s4, zero, 17 #init loop 0 limit
sub_3_9_0_t:      xor          t0, t2, s0
                  addi         s2, s2, 5 #update loop 0 counter
                  beq          s2, s4, sub_3_9_0_t #branch for loop 0
                  addi         t4, t2, -405
                  addi         a3, zero, 2 #init loop 0 counter
                  sub          t6, a3, s2
                  slti         a5, a7, 905
                  sltu         gp, t3, s11
                  addi         t3, a1, 194
                  sub          tp, t4, a5
                  srl          a2, zero, zero
                  xor          s4, t5, t0
                  xor          s5, a0, ra
                  sra          s8, a0, s5
                  srli         t3, t3, 16
                  and          gp, a2, t4
                  slti         t3, t5, 326
                  addi         s5, sp, -1183
                  addi         t4, zero, -15 #init loop 0 limit
                  sra          t3, s9, a7
                  addi         t3, s4, -814
sub_3_10_0_t:     or           sp, t1, s10
                  sltiu        sp, t2, -745
                  srai         s5, s11, 10
                  sll          s6, t3, s4
                  addi         a3, a3, -10 #update loop 0 counter
                  ori          a4, s4, 605
                  bge          a3, t4, sub_3_10_0_t #branch for loop 0
                  and          t1, s4, t4
                  addi         a7, zero, 6 #init loop 0 counter
                  lui          t2, 692041
                  auipc        s8, 778193
                  sra          t3, t6, t2
                  xor          a4, s2, a7
                  and          a4, gp, sp
                  sltu         a4, t0, tp
                  sub          s5, a3, a7
                  sll          a0, a1, gp
                  xori         ra, a2, 1
                  slli         s7, a4, 15
                  sra          s2, a3, t6
                  slli         s4, s1, 25
                  or           s11, s8, t0
                  sltu         t1, s11, s5
                  addi         sp, zero, 0 #init loop 0 limit
sub_3_3_0_t:      add          ra, t2, gp
                  sll          s5, s4, t0
                  srli         a5, s11, 28
                  andi         s4, s1, 989
                  addi         t3, s0, -643
                  sltu         a3, a6, a5
                  slt          s11, a5, t2
                  sra          s0, s2, tp
                  sltiu        a3, a4, -100
                  addi         a7, a7, -6 #update loop 0 counter
                  and          s7, t0, s10
                  xori         t1, s6, -2023
                  bne          a7, sp, sub_3_3_0_t #branch for loop 0
                  sll          s2, a7, a7
                  addi         t4, zero, 0 #init loop 0 counter
                  sltiu        a6, s10, 1447
                  xor          a5, t6, s1
                  addi         gp, s0, -161
                  andi         t6, a3, -87
                  add          s2, s10, zero
                  and          t6, s8, a4
                  srl          t6, s5, t2
                  ori          a6, gp, 520
                  slli         a5, t0, 14
                  slt          t0, zero, a0
                  srl          s6, a4, ra
                  add          t3, a2, a4
                  or           zero, s1, s4
                  and          t0, s3, a1
                  addi         a7, zero, -9 #init loop 0 limit
                  slt          t2, a4, t4
                  srli         s4, s1, 14
                  xori         s2, a0, -1060
sub_3_6_0_t:      auipc        s1, 913116
                  srl          t5, a0, gp
                  sltu         tp, a4, s5
                  srai         s11, t3, 27
                  slli         s7, t3, 14
                  addi         t4, t4, -3 #update loop 0 counter
                  auipc        tp, 773213
                  beq          t4, a7, sub_3_6_0_t #branch for loop 0
                  sltiu        sp, gp, -1759
                  addi         t2, zero, 3 #init loop 1 counter
                  addi         a2, zero, -9 #init loop 1 limit
sub_3_8_1_t:      slt          s0, s2, s7
                  add          zero, a0, t5
                  addi         t2, t2, -1 #update loop 1 counter
                  addi         s1, zero, -1 #init loop 0 counter
                  addi         tp, zero, -6 #init loop 0 limit
sub_3_8_0_t:      slt          t4, t6, s3
                  addi         s1, s1, -9 #update loop 0 counter
                  addi         s2, s3, -1019
                  bge          s1, tp, sub_3_8_0_t #branch for loop 0
                  sltiu        t6, s2, 991
                  bge          t2, a2, sub_3_8_1_t #branch for loop 1
                  add          a7, s6, t0
                  addi         s7, zero, 1 #init loop 1 counter
                  sltu         a4, gp, s8
                  addi         s9, zero, 11 #init loop 1 limit
                  sltu         tp, gp, s5
                  sub          a2, sp, t3
                  nop
                  slt          s4, s5, s9
                  slt          a4, tp, t6
                  xor          a4, s3, s7
                  sub          a3, s11, s9
sub_3_4_1_t:      nop
                  sub          t3, t3, s6
                  sll          s5, s4, t2
                  sra          a3, s5, gp
                  sltu         s8, s4, s6
                  auipc        a3, 1020911
                  and          s2, a5, zero
                  addi         s7, s7, 2 #update loop 1 counter
                  andi         t2, s10, -1652
                  lui          s11, 534526
                  addi         gp, zero, -8 #init loop 0 counter
                  andi         t2, s7, -1771
                  addi         a6, zero, -2 #init loop 0 limit
                  slti         t5, t6, 273
                  slt          s4, s3, s10
                  srl          ra, a6, s2
sub_3_4_0_t:      auipc        s6, 886921
                  addi         gp, gp, 6 #update loop 0 counter
                  beq          gp, a6, sub_3_4_0_t #branch for loop 0
                  bne          s7, s9, sub_3_4_1_t #branch for loop 1
                  slti         s8, t5, -421
                  addi         ra, zero, -3 #init loop 1 counter
                  srl          s11, a1, s11
                  addi         a3, zero, 18 #init loop 1 limit
sub_3_7_1_t:      add          t3, t2, a0
                  sltu         s7, s10, s10
                  addi         ra, ra, 4 #update loop 1 counter
                  addi         a7, zero, 6 #init loop 0 counter
                  nop
                  addi         a6, t2, 196
                  add          s9, gp, a2
                  auipc        s5, 814022
                  addi         a0, zero, -17 #init loop 0 limit
sub_3_7_0_t:      nop
                  xori         t1, gp, 925
                  addi         a7, a7, -2 #update loop 0 counter
                  srl          s11, s4, a3
                  bge          a7, a0, sub_3_7_0_t #branch for loop 0
                  lui          sp, 846262
                  slti         sp, s9, 1100
                  nop
                  bltu         ra, a3, sub_3_7_1_t #branch for loop 1
                  ori          a6, t1, -468
                  addi         a0, zero, 9 #init loop 1 counter
                  sra          zero, ra, s9
                  sll          s11, s0, gp
                  slli         s0, s6, 27
                  addi         s1, zero, 2 #init loop 1 limit
                  sltu         s11, s3, a4
                  sra          gp, s10, t2
sub_3_1_1_t:      lui          a6, 795664
                  or           s0, t3, s0
                  addi         a0, a0, -1 #update loop 1 counter
                  addi         a2, zero, 3 #init loop 0 counter
                  andi         a6, t0, -1210
                  addi         t5, zero, 14 #init loop 0 limit
                  andi         s7, a3, 1008
sub_3_1_0_t:      lui          t0, 304729
                  addi         a2, a2, 3 #update loop 0 counter
                  add          s0, s3, t1
                  auipc        t4, 981514
                  blt          a2, t5, sub_3_1_0_t #branch for loop 0
                  bge          a0, s1, sub_3_1_1_t #branch for loop 1
                  sub          s2, s4, a4
                  slti         s8, tp, 295
                  beq          t3, a5, 11f
                  xori         t1, t4, 190
                  srai         t1, zero, 18
                  ori          tp, a2, 439
                  slt          sp, a7, s6
                  ori          s7, t5, 1363
                  bge          s2, a5, 13f
                  bge          t1, t1, 19f
                  bgeu         ra, t1, 10f
10:               sra          a2, tp, t1
11:               srli         a5, a5, 22
                  lui          t5, 970070
13:               srli         s11, s4, 17
                  bltu         a7, s3, 17f
                  sra          s6, s1, a7
                  sltiu        s6, s4, -919
17:               auipc        s1, 258838
                  sltu         s5, a5, a7
19:               sll          ra, s6, a4
                  bge          s8, a2, 30f
                  bgeu         a7, s5, 38f
                  sll          t2, a4, gp
                  andi         t0, zero, 1287
                  xori         zero, t5, -1567
                  sll          t1, s3, t4
                  srai         a2, s5, 19
                  bge          s10, sp, 28f
28:               ori          s1, t2, 646
                  sltu         t4, s11, s11
30:               bge          t0, t1, 50f
                  xori         t4, s11, 1913
                  sltu         gp, a4, tp
                  bgeu         t4, s5, 41f
                  lui          t3, 724812
                  slli         ra, t6, 14
                  nop
                  xori         s7, tp, 1067
38:               ori          s4, t6, -1927
                  bne          a4, t0, 55f
                  srli         s2, a4, 9
41:               sltiu        a4, ra, -1090
                  xor          s11, s0, t4
                  auipc        s0, 856899
                  blt          s8, s4, 62f
                  andi         t6, a0, -359
                  srli         s6, s4, 27
                  andi         a5, t3, -1200
                  lui          s11, 600017
                  andi         gp, t0, -691
50:               sub          tp, a2, gp
                  bge          t6, a4, 70f
                  auipc        s2, 391849
                  and          s5, a1, s7
                  sltu         s7, zero, sp
55:               sra          s11, ra, s2
                  xor          s11, s2, a1
                  bltu         s6, s10, 68f
                  slt          a7, gp, a0
                  srl          s9, t5, t0
                  beq          s5, s4, 61f
61:               bltu         s7, a1, 72f
62:               nop
                  bne          sp, s4, 69f
                  addi         ra, s11, 649
                  slti         zero, sp, -1544
                  lui          a6, 1048402
                  addi         s4, a4, 1475
68:               or           t0, gp, s10
69:               srai         s7, s6, 27
70:               andi         t2, a7, 1919
                  andi         t4, s0, 157
72:               beq          a4, s11, 82f
                  lui          a5, 300063
                  beq          t0, a2, 77f
                  xor          s7, a6, s8
                  ori          s6, s0, 997
77:               sltiu        t2, t6, 22
                  nop
                  sltu         sp, a5, a3
                  ori          s4, t6, -244
                  add          s2, t5, ra
82:               blt          s10, t6, 89f
                  lui          s7, 417166
                  sll          s8, t5, ra
                  xor          s8, a1, t5
                  and          s0, a2, t4
                  beq          gp, a1, 107f
                  srl          a7, s10, t2
89:               auipc        a2, 706282
                  slt          s6, t1, s10
                  lui          s4, 191112
                  bltu         s9, t5, 102f
                  nop
                  xori         s6, t6, -1608
                  bgeu         a5, s10, 111f
                  bne          t3, t5, 109f
                  and          t4, t2, t1
                  slt          s0, t0, s6
                  bne          a4, s10, 102f
                  blt          t5, sp, 108f
                  sra          a3, ra, s9
102:              addi         t0, s0, -200
                  auipc        t1, 844461
                  andi         t3, t4, 1921
                  auipc        s2, 680951
                  sra          a0, s4, t3
107:              add          a4, s7, gp
108:              lui          s5, 872017
109:              lui          t2, 494036
                  and          gp, a4, a4
111:              ori          a0, s5, 1495
                  sltu         s7, gp, tp
                  xori         s6, zero, 1954
                  srli         zero, a6, 6
                  sltu         s7, t2, s8
                  sltu         ra, t0, s9
                  xori         t1, t0, -896
                  xori         zero, sp, 86
                  sra          a7, s8, s0
                  sltu         a4, s11, s0
                  bgeu         t5, gp, 127f
                  slt          a3, a3, s8
                  xor          s8, s4, s4
                  sll          s5, s8, t2
                  or           zero, sp, s0
                  bne          t5, a4, 142f
127:              srai         a2, t1, 25
                  or           a2, s8, ra
                  sltu         t4, s9, s7
                  slti         a6, a3, 1896
                  add          s2, a6, s10
                  bge          s3, s4, 145f
                  sub          s4, a4, s0
                  slt          s6, a7, s6
                  and          t0, s9, t5
                  xor          s0, s10, s1
                  slti         s2, s6, 1223
                  slt          t0, s2, t2
                  srli         sp, s8, 0
                  sub          a3, a6, s8
                  xori         a7, a0, -127
142:              bge          sp, t3, 157f
                  beq          t1, t5, 153f
                  bne          a1, t2, 147f
145:              sltu         s11, s1, s6
                  addi         sp, ra, 297
147:              or           t3, t3, s6
                  andi         s5, s3, -902
                  slt          gp, a0, s4
                  srl          s4, t5, s7
                  srli         ra, s9, 8
                  nop
153:              beq          s11, a1, 163f
                  blt          zero, tp, 165f
                  bge          a3, a3, 165f
                  sltiu        s8, s4, -737
157:              lui          a3, 854461
                  addi         tp, sp, 123
                  sra          t3, s11, s4
                  auipc        s5, 509756
                  auipc        s5, 681909
                  slti         s9, s0, 683
163:              xor          ra, zero, a7
                  srl          t3, t6, s6
165:              srl          a5, s5, s6
                  sll          s1, tp, s3
                  beq          s10, s2, 173f
                  srl          s11, ra, a3
                  beq          s5, a1, 187f
                  and          t5, s9, t4
                  bne          s3, a5, 181f
                  slli         tp, t6, 11
173:              slli         s1, t6, 29
                  lui          s8, 245858
                  slli         t6, a2, 18
                  srli         t0, a4, 11
                  addi         ra, a5, 117
                  slt          a6, t0, sp
                  beq          t0, t0, 195f
                  auipc        s9, 220025
181:              xor          a6, zero, a7
                  addi         t5, a2, -1042
                  slti         s5, ra, -712
                  and          t2, s0, t3
                  bltu         ra, a1, 196f
                  srl          s4, t1, gp
187:              auipc        s9, 250092
                  srl          a4, s1, gp
                  slli         a0, sp, 30
                  sra          s8, zero, t1
                  slt          s8, a0, zero
                  add          t1, ra, t1
                  slt          s11, gp, t6
                  blt          s7, a1, 214f
195:              sll          a4, t6, s4
196:              bge          a7, s9, 209f
                  xori         t6, s1, 118
                  sra          s5, sp, s11
                  bgeu         tp, a5, 215f
                  slti         a2, zero, -47
                  bne          s7, s10, 207f
                  slti         s4, s0, -1415
                  slt          a6, t3, a6
                  bne          s0, s2, 205f
205:              sub          a3, s7, t2
                  addi         t3, a1, 54
207:              xori         s11, ra, -1831
                  slt          a7, a2, a4
209:              andi         t6, a7, 791
                  addi         s7, s10, -2013
                  addi         a0, t2, -753
                  sub          s0, s0, t4
                  srai         gp, gp, 2
214:              slli         t3, s6, 10
215:              or           a3, tp, t6
                  xor          a5, t3, s9
                  srl          a5, s8, a6
                  slti         t4, s1, 1428
                  slli         s4, t3, 20
                  srli         s1, t6, 9
                  srai         s6, s5, 19
                  add          a4, t4, s5
                  srl          gp, a4, a3
                  auipc        t4, 667673
                  srl          a5, s0, t6
                  sltiu        t1, a7, -384
                  srl          t6, a7, t5
                  sub          a3, s3, t5
                  bgeu         ra, t0, 248f
                  addi         s6, zero, 9 #init loop 0 counter
                  srli         a2, s11, 7
                  addi         sp, zero, 9 #init loop 0 limit
                  add          tp, t4, t5
                  ori          t3, s2, -1111
                  slt          gp, s7, a2
                  sra          tp, zero, s5
                  xori         s2, t3, -715
                  addi         a3, t4, -1258
sub_3_0_0_t:      and          a7, zero, s4
                  nop
                  auipc        s0, 237670
                  sub          s8, s7, s0
                  addi         s6, s6, -4 #update loop 0 counter
                  addi         a4, s0, 1898
                  andi         a0, a0, -465
                  add          t6, s1, t3
                  sltiu        t0, a5, 1547
                  sub          t1, sp, s3
                  bgeu         s6, sp, sub_3_0_0_t #branch for loop 0
                  xor          s7, sp, s11
                  bgeu         t5, t2, 243f
                  xori         s7, a4, -62
                  and          s11, s3, s8
                  blt          gp, s2, 236f
                  sll          a7, t2, t0
                  add          gp, s8, s0
236:              bne          s8, s1, 237f
237:              bge          t6, t1, 252f
                  bltu         a6, s8, 255f
                  sub          gp, s2, a1
                  lui          s6, 589832
                  sll          a4, a4, a6
                  bltu         s8, s6, 243f
243:              bge          s1, t2, 250f
                  auipc        s9, 591242
                  sltiu        s1, s6, 366
                  add          s5, a6, a0
                  andi         s2, gp, 1515
248:              or           s0, t6, sp
                  auipc        a6, 413400
250:              sub          t1, s5, s4
                  bgeu         a2, s3, 271f
252:              lui          t4, 890280
                  blt          t2, s4, 269f
                  nop
255:              bgeu         a3, s1, 261f
                  bgeu         t5, a6, 259f
                  and          a2, a5, a4
                  blt          s0, s10, 269f
259:              srli         a4, s0, 17
                  andi         s11, s6, 1177
261:              slli         tp, s9, 12
                  sra          a0, s7, t0
                  sub          tp, t2, t5
                  andi         a7, s5, 1999
                  sll          gp, a3, s1
                  addi         s11, a3, -992
                  bltu         gp, s4, 275f
                  srai         a6, t5, 30
269:              addi         s4, s8, 1028
                  add          t2, sp, s7
271:              slt          t2, zero, a7
                  bge          zero, sp, 280f
                  bgeu         t4, s11, 274f
274:              bgeu         t0, t5, 290f
275:              bne          t4, ra, 278f
                  bgeu         zero, a3, 292f
                  ori          a0, s6, -105
278:              slli         t5, t1, 15
                  bge          a6, s9, 289f
280:              and          ra, t0, s1
                  andi         a2, a6, -98
                  bge          gp, zero, 283f
283:              nop
                  srl          s1, zero, zero
                  xor          s8, a0, a7
                  srai         t5, s2, 18
                  add          zero, t2, a6
                  xori         sp, t4, -916
289:              slti         t3, a7, 1119
                  nop
                  slti         gp, t0, -1505
                  lui          s9, 734990
                  or           s6, s10, s3
                  or           ra, a0, a1
                  slli         sp, a4, 27
sub_3_j5:         jal          t1, sub_4 #jump sub_3 -> sub_4
290:              bgeu         s9, t6, 303f
                  or           a7, a7, a6
292:              srai         s2, a2, 10
                  lui          a6, 442908
                  bgeu         sp, zero, 311f
                  slti         t6, t4, -136
                  sll          a5, sp, s8
                  bgeu         t4, a7, 307f
                  blt          s0, gp, 306f
                  xori         t6, sp, -822
                  bge          s2, sp, 310f
                  slt          sp, gp, s5
                  slti         a4, t1, 791
303:              and          s9, a1, a1
                  bltu         sp, zero, 315f
                  sltiu        zero, a2, -486
306:              xor          s0, s11, a2
307:              nop
                  srai         s0, zero, 3
                  bgeu         a7, t3, 322f
310:              srl          s2, s6, tp
311:              slti         ra, a3, -165
                  or           gp, s3, a5
                  sltu         a7, s4, s6
                  ori          a2, t3, 754
315:              beq          a0, s6, 325f
                  ori          s1, s4, 547
                  bne          tp, ra, 328f
                  andi         s11, a1, -1790
                  slli         tp, a7, 23
                  sra          t0, a2, s8
                  srai         s7, t2, 26
322:              sub          t4, t4, s4
                  slt          a3, t0, s6
                  srli         t4, s10, 12
325:              bgeu         s0, t6, 331f
                  bgeu         a3, s0, 337f
                  andi         gp, s6, 1689
328:              xor          t5, sp, s5
                  bgeu         s6, t3, 337f
                  auipc        a2, 691910
331:              srai         gp, s5, 16
                  ori          s1, zero, 742
                  sll          s6, s6, sp
                  beq          t6, t3, 341f
                  xori         t4, sp, 919
                  xori         a5, s3, 649
337:              sra          s0, s11, tp
                  sltiu        s7, s2, -1335
                  sra          s7, s11, t3
                  sub          t4, t4, t4
341:              ori          t6, s3, -734
                  slti         s0, t0, 1138
                  bne          s3, tp, 358f
                  srli         a2, s9, 17
                  sltu         ra, gp, a7
                  slt          s4, s9, a1
                  andi         t1, a5, 978
                  beq          s2, tp, 354f
                  sra          a0, s8, a2
                  bgeu         a0, t3, 369f
                  blt          sp, s10, 354f
                  bltu         s11, a3, 358f
                  bltu         a1, s8, 369f
354:              blt          a2, s3, 374f
                  auipc        t2, 276496
                  sltu         a5, s11, s6
                  and          t0, t3, s11
358:              slti         a2, s10, -2
                  xori         s9, a0, 1132
                  andi         s6, s6, 9
                  slli         s2, s1, 27
                  and          s0, a7, a6
                  add          t2, s7, tp
                  sll          sp, a4, t4
                  sll          t3, a5, a4
                  sltu         t4, s8, t0
                  slli         s7, a1, 20
                  sltu         tp, ra, a7
369:              sll          s6, s2, zero
                  sll          a6, s5, gp
                  sltiu        a0, s3, -1276
                  slli         s6, t5, 18
                  srai         t3, a7, 18
374:              blt          s1, a4, 394f
                  ori          s0, t4, -1851
                  sltiu        a3, s7, -738
                  or           a4, s0, t1
                  bne          s5, s9, 379f
379:              sub          s6, s5, t0
                  sltu         sp, ra, s8
                  slli         t3, s3, 11
                  bge          a5, t3, 385f
                  beq          a5, zero, 401f
                  slti         t0, a4, 1408
385:              andi         s1, t1, 188
                  ori          a0, s9, -1741
                  sltiu        t0, s10, 2031
                  xori         s11, a4, -976
                  or           t2, s0, gp
                  slli         s9, s10, 5
                  bltu         s10, t2, 392f
392:              xor          a7, a4, a3
                  blt          s6, t5, 403f
394:              sub          s5, a7, s10
                  slt          t0, t0, t4
                  and          t6, sp, s4
                  xori         s1, a2, -1777
                  blt          zero, zero, 414f
                  bne          ra, ra, 416f
                  srli         s11, t5, 9
401:              bltu         a4, s7, 407f
                  sll          s1, t2, t2
403:              add          s8, s9, a0
                  and          t0, s1, a4
                  bltu         t2, a7, 413f
                  nop
407:              lui          tp, 220530
                  auipc        s5, 309641
                  bne          a7, t1, 429f
                  beq          s8, s5, 413f
                  andi         t5, a5, 745
                  sltiu        s8, t1, 974
413:              auipc        t0, 628250
414:              beq          t5, s0, 415f
415:              sll          a2, t3, a5
416:              or           a4, s9, t6
                  sub          t6, a2, s11
                  nop
                  sll          t5, t2, sp
                  slti         s4, a2, -912
                  slti         t5, a5, 1583
                  addi         s5, t0, 970
                  bge          s0, t0, 436f
                  addi         a6, zero, -1598
                  bgeu         s10, a1, 435f
                  or           ra, s9, s2
                  xor          s11, a5, s1
                  srli         t6, s0, 28
429:              srli         sp, t5, 28
                  or           s8, s4, s5
                  add          t1, s5, s6
                  sltu         tp, s5, a3
                  nop
                  xor          s4, a5, s9
435:              add          s0, t2, t5
436:              slti         s0, t2, 1659
                  sra          gp, t3, sp
                  srli         s1, s6, 12
                  lui          tp, 135218
                  slli         s5, s0, 21
                  blt          a0, a4, 447f
                  slt          a4, gp, s3
                  srli         a4, s6, 13
                  auipc        a5, 193153
                  xor          s1, a6, a0
                  srli         s7, a6, 9
447:              blt          t5, s3, 458f
                  sltiu        t5, zero, 497
                  sltu         s11, s5, s5
                  srl          s8, t2, ra
                  sll          t3, s2, s6
                  slli         t2, a4, 15
                  add          a6, s10, t6
                  add          a7, s3, s3
                  srl          t3, sp, t1
                  or           zero, a5, a5
                  slti         t0, a3, -1143
                  addi         t0, zero, 8 #init loop 0 counter
                  sll          s2, s5, s8
                  ori          t3, t5, 418
                  addi         a4, zero, 15 #init loop 0 limit
                  sub          s2, s8, a0
sub_3_5_0_t:      sub          s9, sp, a7
                  srai         t2, s11, 3
                  addi         t0, t0, 7 #update loop 0 counter
                  ori          t6, zero, -1906
                  ori          s4, tp, 1195
                  slti         tp, t0, -1987
                  beq          t0, a4, sub_3_5_0_t #branch for loop 0
                  srl          s8, t6, t0
458:              xori         s1, s7, 1370
                  sltiu        ra, s9, 1835
                  blt          s8, s10, 480f
                  addi         s11, s3, 1702
                  lui          zero, 292489
                  srl          sp, s1, s7
                  andi         s2, a2, 1625
                  sltu         s4, s3, a2
                  xori         t6, a2, 1303
                  nop
                  auipc        ra, 528682
                  xori         gp, s2, -126
                  xor          gp, a1, a4
                  xori         tp, s10, 772
                  srl          t1, t0, s11
                  slti         s11, s11, 1173
                  bgeu         t3, s2, 493f
                  or           t5, s4, s10
                  sltu         a4, s7, t3
                  slli         ra, t3, 28
                  addi         s8, s3, -1321
                  sll          zero, ra, a1
480:              andi         t4, a6, 1215
                  bne          s3, s9, 497f
                  add          sp, a2, s0
                  xori         t0, t6, 620
                  slt          t0, ra, a2
                  or           s11, a1, s8
                  slt          t1, a4, a5
                  bgeu         t1, zero, 490f
                  andi         s2, s3, -1108
                  add          a4, s6, a2
490:              beq          a1, t3, 506f
                  bgeu         t0, s1, 492f
492:              slti         s8, t2, -1033
493:              bgeu         ra, ra, 503f
                  slli         s9, a2, 7
                  beq          s9, a1, 513f
                  and          s4, t4, t4
497:              xori         sp, sp, 252
                  slti         s9, t0, -1178
                  ori          t0, a7, 2023
                  slti         t2, zero, 1926
                  sltiu        s11, s3, -1452
                  bgeu         s10, s10, 509f
503:              xor          a0, zero, t2
                  bge          s10, s4, 510f
                  srai         s1, a4, 4
506:              add          t0, s9, a2
                  addi         t5, t2, 958
                  sll          s9, s7, t1
509:              blt          s3, s8, 520f
510:              lui          a3, 711432
                  srl          s7, t4, s6
                  slt          a7, s11, t2
513:              slt          s2, gp, s11
                  add          t1, a6, a3
                  blt          a2, a5, 526f
                  bne          a2, s6, 531f
                  bne          ra, s2, 530f
                  beq          t3, a1, 526f
                  xor          s4, t0, t1
520:              nop
                  srl          sp, a7, t2
                  bgeu         t5, t0, 525f
                  bge          s8, s1, 533f
                  add          t5, s3, s2
525:              bge          s2, t3, 541f
526:              and          a0, t2, ra
                  slti         s2, tp, -1623
                  beq          s5, a3, 539f
                  srai         t3, s11, 31
530:              andi         s8, a0, -1768
531:              srai         s7, s9, 5
                  bge          s3, s2, 533f
533:              beq          t6, ra, 549f
                  xor          a7, s8, s7
                  srl          zero, a0, s9
                  srai         a3, t3, 12
                  and          a7, s11, t4
                  blt          s7, s1, 552f
539:              andi         s7, s7, 764
                  xor          a6, s0, s11
541:              sra          t2, a1, t2
                  sll          a0, tp, t3
                  sra          zero, a6, s3
                  add          a4, t1, a0
                  sub          a2, s8, s10
                  srai         t1, zero, 7
                  sra          s5, s5, a7
                  xori         a5, a6, 467
549:              and          a3, s8, s9
                  xori         a5, s11, -703
                  sra          s8, s5, t0
552:              andi         s5, a4, -17
                  slli         zero, tp, 19
                  lw           t1, 4(s10)
                  xori         s0, s0, -1170
                  slti         s5, s11, -1336
                  slli         s0, a0, 22
                  and          s2, a7, a3
                  sltu         a3, a0, s7
                  addi         s5, a3, -1601
                  sltiu        tp, s0, 144
                  addi         s10, s10, 20
                  sll          s1, s3, a0
810:              addi x28, x6, 0
810:              jalr x28, x28, 0
sub_4:            sra          t0, tp, s3
                  or           s6, a5, s1
                  addi         s10, s10, -48
                  add          s0, ra, s4
                  srl          a7, a5, tp
                  sw           t1, 4(s10)
                  slti         s5, sp, -1675
                  bge          s3, t2, 11f
                  bltu         t4, a3, 4f
                  slli         zero, t1, 23
                  sltu         s4, a6, s7
4:                sub          a3, a1, sp
                  sra          s5, s4, sp
                  lui          ra, 983468
                  bltu         a6, s3, 11f
                  auipc        t6, 915701
                  sra          gp, t2, s2
                  addi         s1, gp, 1697
11:               sra          t4, a6, t6
                  or           a0, a3, s7
                  nop
                  lw           t1, 4(s10)
                  srl          s8, s10, a1
                  addi         s10, s10, 48
                  sll          s4, sp, s0
                  or           s7, t6, a7
                  andi         s11, t4, -1574
27:               addi x9, x6, 0
27:               jalr x9, x9, 0
sub_2:            sltu         s7, t1, s4
                  bge          t1, s0, sub_2_stack_p
                  sll          ra, s10, s10
sub_2_stack_p:    addi         s10, s10, -60
                  lui          t0, 955753
                  andi         t0, tp, -1277
                  sw           t1, 4(s10)
                  xor          zero, a1, a1
                  lui          a0, 147228
                  sltu         t2, zero, t1
                  la           a3, sub_5
                  auipc        a4, 501765
                  sltu         t1, sp, s2
                  sltiu        a7, t6, 393
                  addi         a3, a3, 381
                  andi         t2, s6, 1658
sub_2_j4:         jalr         t1, a3, -380 #jump sub_2 -> sub_5
                  auipc        ra, 653152
                  bltu         sp, sp, 20f
                  add          tp, t5, s5
                  andi         s2, gp, -1457
                  xor          s2, a4, a4
                  srl          a4, a2, s11
                  lui          a2, 413264
                  slt          a6, a4, ra
                  srl          s8, a7, gp
                  bgeu         t6, t0, 20f
                  bgeu         t6, gp, 20f
                  srai         tp, s9, 10
                  sltu         a0, s11, s10
                  xor          t0, s6, s5
                  nop
                  srl          s1, a4, s10
                  bge          t6, t3, 20f
                  srli         gp, a7, 7
                  addi         tp, s9, 789
                  bne          t3, a1, 20f
20:               lui          s7, 378167
                  addi         t3, a0, -1286
                  andi         ra, s5, -488
                  lw           t1, 4(s10)
                  srl          s5, s1, sp
                  xor          t2, a4, a4
                  andi         ra, s4, 1810
                  nop
                  sub          a6, a4, t4
                  addi         s10, s10, 60
                  auipc        t0, 771510
48:               addi x2, x6, 0
48:               jalr x2, x2, 0
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
mmode_intr_vector_1:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x11, x26, zero
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x28, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x28, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x28, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x28, x21, ecall_handler
                  li x21, 0x1
                  beq x28, x21, instr_fault_handler
                  li x21, 0x5
                  beq x28, x21, load_fault_handler
                  li x21, 0x7
                  beq x28, x21, store_fault_handler
                  li x21, 0xc
                  beq x28, x21, pt_fault_handler
                  li x21, 0xd
                  beq x28, x21, pt_fault_handler
                  li x21, 0xf
                  beq x28, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x26, x11, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x11, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x11, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x26, x11, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x26, x11, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x26, x11, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
