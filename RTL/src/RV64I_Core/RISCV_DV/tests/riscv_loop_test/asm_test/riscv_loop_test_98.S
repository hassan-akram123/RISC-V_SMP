.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
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
                  li x0, 0xf1e921b6
                  li x1, 0xf
                  li x2, 0x0
                  li x3, 0x9
                  li x4, 0xbe16e13
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xffca05a0
                  li x11, 0x0
                  li x12, 0x3
                  li x13, 0x80000000
                  li x15, 0x7e460fee
                  li x16, 0x80000000
                  li x17, 0xfe941d06
                  li x18, 0x4902aaa4
                  li x19, 0x4
                  li x20, 0x7
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0xc13e5f26
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x8ac67b6c
                  li x27, 0xe
                  li x28, 0xe50ada
                  li x29, 0x43f74ed5
                  li x30, 0x0
                  li x31, 0x2a4db96
                  la x10, user_stack_end
main:             addi         s9, zero, 3 #init loop 1 counter
                  addi         s6, s9, 1150
                  sub          t4, t0, t3
                  sltiu        t0, sp, 1024
                  addi         s1, zero, 12 #init loop 1 limit
                  slt          a1, a5, s11
                  or           a1, s6, s3
                  sra          gp, t5, s8
main_5_1_t:       sltiu        s10, s5, -503
                  addi         s9, s9, 2 #update loop 1 counter
                  auipc        a6, 193325
                  nop
                  addi         sp, zero, -10 #init loop 0 counter
                  slli         s4, t2, 9
                  sra          t1, s11, gp
                  addi         s11, zero, 10 #init loop 0 limit
main_5_0_t:       addi         gp, a5, 184
                  sltu         a7, s8, t4
                  sltiu        t1, zero, -1396
                  slt          tp, s4, a4
                  sltiu        s8, t0, 190
                  slti         t4, a1, 1313
                  sra          s2, t4, s9
                  addi         sp, sp, 9 #update loop 0 counter
                  bltu         sp, s11, main_5_0_t #branch for loop 0
                  addi         s2, a7, -1202
                  sltu         s2, a3, t1
                  sra          t5, tp, tp
                  add          t5, t1, s0
                  ori          a6, a0, -173
                  sltiu        t0, s11, 1916
                  blt          s9, s1, main_5_1_t #branch for loop 1
                  sltu         t3, a1, t6
                  addi         s0, zero, 4 #init loop 0 counter
                  srai         s9, t6, 24
                  xori         t2, s7, -1361
                  sll          s5, s7, a0
                  xori         s8, s10, 1708
                  sltu         t0, a5, t2
                  sll          s8, t6, t1
                  srli         t2, t1, 27
                  addi         s11, s8, 903
                  andi         t0, s8, 785
                  auipc        s5, 600800
                  addi         sp, zero, 20 #init loop 0 limit
                  nop
                  andi         a2, s10, -229
main_2_0_t:       lui          s7, 1010251
                  addi         s0, s0, 8 #update loop 0 counter
                  sra          s7, s9, s5
                  nop
                  srl          s6, ra, a5
                  beq          s0, sp, main_2_0_t #branch for loop 0
                  andi         s7, a1, -47
                  addi         s8, zero, -6 #init loop 1 counter
                  addi         a5, zero, -6 #init loop 1 limit
main_0_1_t:       auipc        a1, 596298
                  sra          sp, ra, s10
                  addi         s8, s8, -8 #update loop 1 counter
                  addi         tp, zero, 1 #init loop 0 counter
                  or           zero, s0, a3
                  xor          t4, s1, a3
                  addi         s3, zero, -13 #init loop 0 limit
                  xori         gp, s3, -504
                  auipc        a2, 765499
main_0_0_t:       or           s5, s5, a6
                  auipc        a3, 650259
                  sltiu        sp, s9, 914
                  addi         s0, s2, -1016
                  or           s4, t3, sp
                  srl          s2, s5, a0
                  addi         tp, tp, -1 #update loop 0 counter
                  sub          a1, s5, zero
                  bge          tp, s3, main_0_0_t #branch for loop 0
                  slt          t0, tp, s3
                  srai         s11, a2, 19
                  nop
                  lui          s7, 942470
                  bge          s8, a5, main_0_1_t #branch for loop 1
                  or           gp, a3, a1
                  addi         t0, zero, 3 #init loop 1 counter
                  addi         sp, zero, 9 #init loop 1 limit
                  sra          s6, t4, a2
main_4_1_t:       xori         s8, a4, 65
                  addi         t0, t0, 6 #update loop 1 counter
                  nop
                  addi         t3, zero, 2 #init loop 0 counter
                  addi         tp, zero, -4 #init loop 0 limit
                  or           a5, a2, a0
main_4_0_t:       slt          s9, s4, s7
                  nop
                  addi         t3, t3, -1 #update loop 0 counter
                  bne          t3, tp, main_4_0_t #branch for loop 0
                  ori          s4, a6, 615
                  addi         gp, a5, 1606
                  beq          t0, sp, main_4_1_t #branch for loop 1
                  srl          t5, ra, s0
                  addi         a5, zero, 9 #init loop 1 counter
                  andi         s2, ra, -92
                  srli         gp, ra, 25
                  slli         s7, a1, 26
                  addi         t1, zero, 9 #init loop 1 limit
main_3_1_t:       sltu         s3, s2, s7
                  nop
                  addi         a5, a5, -8 #update loop 1 counter
                  sltiu        t3, a7, -1714
                  addi         sp, zero, 9 #init loop 0 counter
                  addi         a1, zero, -11 #init loop 0 limit
main_3_0_t:       slt          a2, t4, t4
                  sltiu        s2, a3, 1306
                  srl          s7, tp, s3
                  or           t4, a0, ra
                  addi         sp, sp, -5 #update loop 0 counter
                  beq          sp, a1, main_3_0_t #branch for loop 0
                  ori          s1, t6, 2040
                  sra          zero, zero, s7
                  slti         s9, a2, 1828
                  bgeu         a5, t1, main_3_1_t #branch for loop 1
                  xor          s1, s0, t2
                  sub          t4, a3, s2
                  srai         s6, s6, 10
                  sub          s2, s11, s9
                  bne          s10, s8, 19f
                  and          sp, sp, a0
                  sll          a6, a2, s11
                  beq          zero, gp, 7f
7:                lui          a2, 746940
                  bge          tp, ra, 11f
                  bgeu         t1, t4, 15f
                  blt          a3, s8, 30f
11:               slli         a3, t2, 13
                  bltu         zero, a5, 32f
                  sll          t0, s1, s2
                  beq          s4, s10, 22f
15:               nop
                  and          s10, zero, a4
                  xor          s9, ra, a5
                  beq          s3, s7, 38f
19:               beq          s2, t3, 39f
                  xori         s7, t5, 713
                  add          s0, zero, s5
22:               or           t1, s4, a1
                  slti         s11, a5, 1746
                  lui          s9, 219877
                  and          s10, t2, s10
                  bne          s1, s6, 31f
                  addi         t2, t4, -2023
                  xori         s2, t6, -119
                  add          s11, a0, t0
30:               sltiu        s0, a5, 1124
31:               xori         s3, s11, 745
32:               srl          ra, a3, t4
                  sra          a6, s0, t5
                  bltu         tp, a5, 46f
                  bltu         s4, a4, 53f
                  bltu         a7, s4, 41f
                  addi         t5, zero, 10 #init loop 1 counter
                  srai         s8, s10, 7
                  addi         t4, zero, -20 #init loop 1 limit
main_1_1_t:       sub          t2, a0, a0
                  sub          a5, a5, tp
                  andi         zero, a4, -1907
                  addi         t5, t5, -10 #update loop 1 counter
                  addi         s7, zero, 4 #init loop 0 counter
                  auipc        s5, 832624
                  addi         t1, zero, -6 #init loop 0 limit
                  xor          t2, s8, a2
main_1_0_t:       auipc        a1, 1022881
                  addi         s7, s7, -10 #update loop 0 counter
                  slli         a6, s2, 23
                  bne          s7, t1, main_1_0_t #branch for loop 0
                  or           s0, s11, s11
                  beq          t5, t4, main_1_1_t #branch for loop 1
                  sltu         a3, gp, s10
                  beq          s4, s11, 42f
38:               srli         t5, sp, 15
39:               sll          a7, a1, sp
                  srai         a6, s6, 2
41:               srai         s10, a0, 20
42:               bge          s1, a7, 49f
                  slti         s11, s8, -1947
                  sra          s11, a5, s10
                  auipc        s3, 945515
46:               add          t2, t2, s10
                  xor          t3, s3, t2
                  sll          t0, a4, a7
49:               or           sp, s0, s11
                  lui          s9, 387096
                  srli         t2, t1, 14
                  xor          s11, gp, s9
53:               bgeu         s9, t5, 66f
                  bge          s6, s8, 70f
                  sltiu        t0, gp, 779
                  sra          s2, s0, a3
                  sub          t1, gp, s6
                  blt          s1, zero, 62f
                  sltiu        a3, a2, 1171
                  slti         t2, t1, 228
                  slti         s1, t3, -916
62:               ori          gp, t4, -929
                  slt          s2, s11, s8
                  auipc        zero, 643341
                  sra          s4, s2, s2
66:               addi         s9, s11, 382
                  srl          s10, a5, s0
                  xor          s0, s9, t3
                  slt          s6, s8, s0
70:               blt          a1, t0, 85f
                  xori         ra, s1, 976
                  addi         a7, t0, -360
                  and          t5, sp, t1
                  auipc        s7, 763580
                  auipc        s2, 419983
                  sll          t1, t4, sp
                  and          t5, s10, t3
                  xori         a5, t5, -1731
                  lui          a1, 880500
                  xor          s1, a4, a7
                  addi         zero, a0, 1239
                  srl          gp, t5, t6
                  blt          t2, a1, 103f
                  srl          a2, a7, a1
85:               nop
                  xor          t4, a1, s8
                  add          t2, t1, a4
                  srli         sp, t6, 12
                  ori          s8, t5, -1861
                  srli         s3, t0, 0
                  sll          sp, s11, t4
                  and          gp, t2, s3
                  bltu         s11, t2, 104f
                  slli         s11, a1, 31
                  bgeu         s4, s4, 115f
                  slti         a2, zero, 525
                  nop
                  andi         t2, t5, 883
                  srl          s3, a6, s4
                  bgeu         a3, t5, 117f
                  beq          t3, t4, 121f
                  andi         gp, s9, -529
103:              slt          s0, a0, s7
104:              srli         s5, s1, 11
                  addi         s6, gp, -1739
                  bge          s3, a7, 115f
                  slli         t3, t2, 17
                  add          s1, s8, s2
                  slti         a1, t3, -191
                  bltu         t5, t6, 126f
                  sub          s3, gp, zero
                  bgeu         zero, s2, 128f
                  ori          s5, t6, 1937
                  sll          a1, ra, t1
115:              xori         s9, t6, 295
                  nop
117:              sra          s3, s3, t1
                  or           t2, t2, t0
                  srl          t2, s9, t0
                  nop
121:              add          s5, s1, a2
                  nop
                  sub          s4, a3, s7
                  sltu         gp, s3, s5
                  xori         t3, t6, -532
126:              lui          gp, 687112
                  bge          s7, t4, 134f
128:              auipc        gp, 424898
                  bne          tp, s4, 139f
                  slti         s0, t0, -1369
                  xori         s5, s0, -1884
                  sra          t2, s3, a4
                  sub          a7, s0, gp
134:              slti         a1, s3, -1632
                  auipc        s8, 757866
                  srli         t0, s2, 11
                  srl          t5, a1, s3
                  srl          zero, s8, t1
139:              sll          ra, s4, s9
                  nop
                  addi         s1, t4, 895
                  xor          t2, t6, s4
                  andi         t5, t4, 451
                  or           t0, t1, t5
                  srl          s1, s5, t6
                  slli         s5, s2, 24
                  xor          t5, ra, s0
                  lui          tp, 312901
                  slli         sp, s8, 25
                  srl          s11, t2, s8
                  sub          sp, ra, s9
                  slti         a2, t0, -1741
                  xori         s0, s6, -1615
                  bge          t5, a5, 164f
                  nop
                  auipc        gp, 213082
                  sll          t5, a3, t0
                  blt          s11, s5, 165f
                  add          ra, s5, t3
                  srai         tp, t6, 2
                  and          s2, zero, s5
                  slti         t4, s11, 451
                  xori         s11, s5, -957
164:              and          s1, a3, a6
165:              bge          t3, t0, 176f
                  sltiu        ra, a2, 1097
                  xor          a7, a7, t4
                  beq          t5, a6, 176f
                  srl          s7, s7, a0
                  or           t3, s6, t4
                  la           a7, sub_1
                  sra          a2, a7, s6
                  srl          ra, a2, t0
                  addi         a7, a7, 499
                  xori         sp, sp, 608
main_j1:          jalr         ra, a7, -499 #jump main -> sub_1
                  lui          s1, 519939
                  sub          s3, s1, s10
                  beq          ra, a3, 191f
                  sll          zero, a5, t5
                  xori         s4, a1, 1062
                  nop
                  srl          s2, s11, a1
176:              auipc        t3, 423310
                  ori          s6, s7, 1651
                  lui          s9, 299526
                  beq          s1, s4, 183f
                  andi         a2, ra, -1386
                  beq          s0, a3, 188f
                  srai         s4, a6, 30
183:              xori         s2, a7, 1332
                  bltu         a5, s5, 190f
                  slli         s5, s11, 14
                  srl          s0, s5, s11
                  sltu         ra, s8, a2
188:              sll          s4, t1, s11
                  bltu         a2, s3, 199f
190:              sltu         t3, a1, t4
191:              bge          t2, ra, 204f
                  slti         s8, a1, 1429
                  xor          a3, ra, t2
                  andi         t4, a2, -653
                  la           s8, sub_1
                  add          t4, a2, t1
                  slti         tp, t2, 734
                  srai         s5, s9, 30
                  add          sp, a3, s0
                  addi         s8, s8, -700
                  xor          s11, s9, s9
                  xori         t5, s8, -1347
                  beq          t2, s0, main_j2 #branch to jump instr
                  sltiu        tp, t6, -164
                  andi         zero, a4, 159
main_j2:          jalr         ra, s8, 700 #jump main -> sub_1
                  beq          a5, s9, 200f
                  xor          s8, gp, s4
                  sltiu        s8, s3, 161
                  srl          s5, s10, a7
199:              slt          a3, s4, gp
200:              sll          a6, a5, gp
                  slli         a1, t6, 2
                  bne          t2, s7, 219f
                  beq          a3, s8, 223f
204:              add          s6, t0, a7
                  sra          ra, s9, zero
                  nop
                  srl          zero, a6, t3
                  slli         s2, t1, 11
                  xori         s6, a7, 1909
                  blt          s11, tp, 230f
                  xor          s4, ra, a3
                  xor          tp, a1, t6
                  srli         t4, a0, 8
                  addi         sp, s3, 50
                  addi         s6, a3, 698
                  sltu         s7, a6, a2
                  sll          s1, t1, s8
                  sub          s7, t4, a0
219:              sll          t1, tp, a4
                  addi         s7, s0, -1657
                  nop
                  sra          s3, a2, s2
223:              srli         s9, s6, 9
                  blt          a5, s1, 227f
                  beq          ra, t0, 234f
                  xor          s6, gp, s5
227:              andi         s2, a6, 1765
                  add          a2, t1, s11
                  sub          s7, s1, sp
230:              beq          a2, a4, 235f
                  bge          a2, t5, 246f
                  addi         s6, s2, -135
                  sra          zero, a7, t4
234:              or           s11, s5, a1
235:              bgeu         a7, t0, 247f
                  sub          s8, s8, s8
                  sltu         tp, a1, t4
                  sltu         sp, a0, s9
                  sltu         s3, a1, s9
                  beq          t3, a0, 256f
                  blt          s4, a7, 257f
                  slt          s2, zero, s9
                  srai         t4, a3, 7
                  slti         t4, a3, -764
                  add          s5, t4, s5
246:              slti         sp, s8, -967
247:              bltu         gp, s2, 267f
                  beq          a5, t5, 258f
                  andi         t3, t4, -534
                  srli         a7, a4, 5
                  slt          ra, tp, ra
                  xor          s4, a5, sp
                  sub          a1, tp, s6
                  slti         s5, t5, -163
                  lui          s3, 586250
256:              add          s2, a5, a0
257:              addi         a5, ra, -1916
258:              sub          s9, s11, tp
                  beq          a7, s3, 275f
                  slti         s9, t3, -1305
                  sll          s5, t0, a5
                  ori          a6, a7, 1501
                  sub          zero, t6, sp
                  sub          s6, a7, s1
                  srl          t5, s3, t3
                  bge          t2, t4, 286f
267:              ori          zero, ra, 124
                  slli         s0, s10, 0
                  ori          a5, t3, -475
                  bltu         zero, a4, 271f
271:              srl          a1, a7, s5
                  bgeu         ra, s6, 292f
                  slti         a2, t5, -329
                  andi         s2, t2, 907
275:              bltu         s5, t4, 291f
                  sra          gp, a7, s9
                  slti         a7, a3, 556
                  sra          t5, s9, s6
                  lui          zero, 34164
                  sltiu        t5, s1, 954
                  sra          zero, gp, s4
                  ori          zero, t4, -1996
                  nop
                  add          s8, s1, s1
                  bne          s5, t1, 290f
286:              add          ra, s5, s7
                  or           sp, s2, s7
                  sltiu        s8, zero, 1625
                  lui          t1, 437049
290:              auipc        s7, 748635
291:              sra          t5, s8, t2
292:              or           tp, s8, a6
                  xor          a6, s3, s0
                  sub          s4, s5, t1
                  andi         a2, t1, -1494
                  slt          t0, s2, ra
                  sltu         s8, a3, a1
                  lui          ra, 336357
                  beq          gp, t3, 305f
                  bge          s1, a0, 305f
                  xori         zero, s10, 543
                  auipc        s6, 817130
                  lui          s11, 726366
                  blt          s10, s11, 305f
305:              lui          a3, 479050
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            srli         t5, t1, 12
                  auipc        t5, 682554
                  srl          t3, zero, a6
                  addi         a0, a0, -56
                  sltiu        s1, a1, 1564
                  sw           ra, 4(a0)
                  andi         zero, gp, 443
                  ori          t1, s4, -1966
                  andi         s4, ra, 495
                  srli         t0, a1, 7
                  addi         a6, zero, -6 #init loop 1 counter
                  addi         a3, zero, -14 #init loop 1 limit
                  or           s4, a2, s0
sub_5_1_1_t:      nop
                  addi         a6, a6, -5 #update loop 1 counter
                  addi         s9, zero, -6 #init loop 0 counter
                  addi         t3, zero, 14 #init loop 0 limit
sub_5_1_0_t:      or           s5, s5, a5
                  lui          s0, 115966
                  addi         s9, s9, 2 #update loop 0 counter
                  bltu         s9, t3, sub_5_1_0_t #branch for loop 0
                  bge          a6, a3, sub_5_1_1_t #branch for loop 1
                  slti         s4, a6, -1388
                  addi         sp, zero, 8 #init loop 1 counter
                  addi         s1, zero, 8 #init loop 1 limit
sub_5_0_1_t:      xori         s5, t2, -1042
                  addi         sp, sp, -5 #update loop 1 counter
                  addi         a7, zero, -10 #init loop 0 counter
                  addi         t3, zero, -20 #init loop 0 limit
sub_5_0_0_t:      slt          a3, t6, s2
                  addi         a7, a7, -6 #update loop 0 counter
                  bge          a7, t3, sub_5_0_0_t #branch for loop 0
                  bgeu         sp, s1, sub_5_0_1_t #branch for loop 1
                  sub          a6, zero, a2
                  addi         tp, zero, 1 #init loop 1 counter
                  addi         t2, zero, 5 #init loop 1 limit
                  sub          t4, t3, tp
sub_5_2_1_t:      andi         s6, s3, -1458
                  addi         tp, tp, 2 #update loop 1 counter
                  addi         s0, zero, 3 #init loop 0 counter
                  or           t5, s9, a3
                  addi         t0, zero, 13 #init loop 0 limit
sub_5_2_0_t:      lui          s9, 819986
                  addi         s0, s0, 10 #update loop 0 counter
                  srai         s4, s8, 17
                  beq          s0, t0, sub_5_2_0_t #branch for loop 0
                  beq          tp, t2, sub_5_2_1_t #branch for loop 1
                  slt          s3, s9, a1
                  addi         s9, zero, -5 #init loop 1 counter
                  addi         t4, zero, -6 #init loop 1 limit
sub_5_3_1_t:      auipc        t1, 690138
                  addi         s9, s9, -4 #update loop 1 counter
                  addi         t3, zero, 5 #init loop 0 counter
                  addi         sp, zero, 2 #init loop 0 limit
sub_5_3_0_t:      slti         gp, a3, 118
                  addi         t3, t3, -1 #update loop 0 counter
                  bgeu         t3, sp, sub_5_3_0_t #branch for loop 0
                  bge          s9, t4, sub_5_3_1_t #branch for loop 1
                  xor          a5, a6, s3
                  sra          t4, ra, t2
                  sub          gp, a6, a1
                  sltiu        s1, a6, -1221
                  sll          s9, t6, t5
                  sltiu        s2, t4, -1905
                  add          a7, t2, a6
                  srai         t1, t4, 26
                  sra          s4, s7, a2
                  nop
                  nop
                  nop
                  sll          t4, t6, t5
                  sltiu        s11, t1, 2025
                  sltiu        t2, s10, -1755
                  sll          s3, s8, t1
                  bne          s2, s0, 20f
                  sra          zero, a5, gp
                  add          s0, s4, s0
                  beq          t2, s2, 21f
                  sll          a7, s6, gp
20:               sltiu        zero, t0, -675
21:               ori          s2, a2, -621
                  andi         ra, t1, -1268
                  sub          a3, s3, t3
                  add          a1, s1, s9
                  xor          a6, sp, a0
                  slti         t2, t1, -1378
                  lui          s5, 184630
                  and          t3, tp, s4
                  xori         a7, a2, 699
                  srl          s11, s2, a4
                  srl          s10, t6, a1
                  xor          s5, a2, s9
                  xori         t5, t1, -1248
                  blt          a1, s7, 40f
                  srli         t3, t1, 12
                  xori         zero, s9, -266
                  bne          s3, a7, 57f
                  add          t2, gp, a7
                  xori         tp, s3, -2005
40:               bge          a0, t3, 54f
                  bgeu         s2, s10, 53f
                  bltu         s8, a6, 43f
43:               auipc        t5, 1026469
                  sll          t5, a1, a7
                  ori          s1, a6, 1971
                  sltiu        s4, a7, -781
                  sltu         s3, t5, a0
                  xori         a1, t0, 580
                  bltu         t1, s0, 53f
                  sll          s8, s0, s9
                  sltiu        a7, s2, 1588
                  ori          zero, a1, 805
53:               xori         s10, s0, -651
54:               andi         s1, s4, -1382
                  bltu         t4, s1, 56f
56:               sll          t3, s9, a3
57:               bgeu         a2, s4, 76f
                  sra          t1, s10, zero
                  slt          t3, s7, t1
                  beq          s1, s4, 71f
                  srl          t3, t0, s11
                  and          a6, s7, s7
                  or           s10, s11, s8
                  addi         s11, t4, -2015
                  lui          t0, 343285
                  srli         t1, a2, 6
                  beq          s8, t5, 69f
                  bne          sp, gp, 73f
69:               ori          a1, t3, -268
                  bge          t1, t5, 78f
71:               add          s7, s4, s3
                  add          s9, s5, ra
73:               sll          a6, a3, s5
                  sltiu        s9, a5, -786
                  sltiu        a2, s2, 1497
76:               nop
                  auipc        t1, 315520
78:               bltu         s9, s0, 90f
                  or           t2, a5, s11
                  sra          s0, s4, t4
                  beq          sp, a6, 93f
                  ori          s4, t5, 340
                  bge          t3, t4, 93f
                  beq          t4, sp, 88f
                  slt          gp, t3, s5
                  bltu         s3, s11, 96f
                  bgeu         s10, a0, 97f
88:               sltiu        s5, s6, -2035
                  blt          a7, t4, 101f
90:               bge          s7, t2, 99f
                  sltu         t3, sp, a1
                  srli         s0, t2, 18
93:               xor          s7, s7, s6
                  xor          tp, t4, s7
                  lui          a1, 270237
96:               sll          tp, t2, a1
97:               xor          zero, a7, s9
                  srai         a6, s0, 3
99:               sub          a2, s0, sp
                  xor          t2, t3, gp
101:              sll          s1, ra, ra
                  slli         t1, sp, 22
                  bne          a5, t3, 109f
                  auipc        a6, 412584
                  sltiu        s2, t4, 1187
                  nop
                  sltu         a1, s9, a4
                  and          a2, a0, tp
109:              lui          s11, 216975
                  bge          a6, s5, 117f
                  or           s0, a7, a3
                  addi         s0, s9, -1935
                  add          s11, s9, s7
                  auipc        ra, 188492
                  slt          gp, t2, s9
                  blt          ra, s8, 117f
117:              xori         a7, s7, 936
                  nop
                  bge          a6, s4, 136f
                  andi         a1, t1, 1214
                  bne          t1, a0, 136f
                  addi         s4, ra, -1440
                  auipc        s0, 435059
                  slli         ra, gp, 8
                  sub          t3, a5, s2
                  or           a1, sp, a5
                  bltu         t5, a6, 137f
                  slli         s9, s10, 3
                  slt          a6, s2, t6
                  sltiu        zero, t0, 878
                  and          s7, t0, t0
                  xor          t5, s1, s2
                  bltu         t1, s7, 153f
                  auipc        a1, 950316
                  slti         a2, a1, -307
136:              bne          s8, s11, 148f
137:              lui          zero, 972718
                  and          a2, s3, s1
                  andi         s10, a0, -1696
                  sub          a6, t2, a2
                  xor          a1, a4, t6
                  nop
                  srai         t3, t3, 11
                  sltu         t2, a1, s2
                  bne          t6, s4, 146f
146:              sltiu        s6, t3, -747
                  auipc        a2, 352075
148:              xor          zero, s7, a4
                  beq          a3, ra, 161f
                  beq          sp, tp, 151f
151:              or           s0, a0, a2
                  or           a7, s7, a5
153:              nop
                  sll          a1, s3, tp
                  bltu         s4, s10, 161f
                  bgeu         a4, s9, 171f
                  auipc        a6, 920234
                  bltu         a3, a7, 162f
                  srl          gp, s10, s5
                  auipc        zero, 921441
161:              ori          t1, a5, 1277
162:              slti         tp, a6, 957
                  bltu         s7, s3, 175f
                  add          s2, s0, s9
                  blt          s9, t4, 174f
                  sub          s6, zero, tp
                  ori          a2, gp, -256
                  sub          s8, s4, a0
                  srai         sp, t6, 30
                  srl          s0, t5, s11
171:              sll          gp, s1, ra
                  beq          t5, s3, 183f
                  blt          t1, s9, 183f
174:              xori         t2, s9, 220
175:              or           a2, s9, s5
                  slti         s8, a1, 1743
                  sltu         t2, s1, s3
                  auipc        a6, 206324
                  beq          s7, sp, 185f
                  sll          s9, t4, t6
                  or           s8, a4, gp
                  ori          s3, a3, 1680
183:              and          s9, s4, s4
                  srl          t0, t5, tp
185:              xori         s5, t5, -153
                  nop
                  blt          s7, a6, 197f
                  xor          s9, a2, a6
                  srl          s1, s9, t3
                  addi         s0, s5, -192
                  slt          a3, s8, a4
                  beq          t5, s2, 211f
                  sll          s3, s5, ra
                  xor          t4, a6, s5
                  sltiu        a5, a1, -36
                  sub          a3, zero, t5
197:              bltu         s11, s2, 205f
                  addi         a5, a5, -595
                  or           t2, a0, t2
                  slt          s5, sp, s11
                  bne          a2, ra, 205f
                  auipc        a1, 288247
                  lui          a7, 948268
                  or           s3, t1, t3
205:              srli         zero, s8, 14
                  bgeu         sp, s7, 218f
                  srli         t0, tp, 11
                  slti         a6, s7, 620
                  sub          s2, s7, ra
                  nop
211:              sll          t0, s0, a6
                  addi         tp, gp, -1828
                  bgeu         s0, zero, 220f
                  slli         a5, a6, 10
                  nop
                  bltu         a5, a0, 221f
                  add          a3, s2, ra
218:              bltu         s7, t5, 222f
                  bltu         t3, s9, 222f
220:              lui          tp, 492193
221:              bge          sp, ra, 222f
222:              xori         t1, a3, -1375
                  lw           ra, 4(a0)
                  ori          s2, s9, 269
                  addi         a0, a0, 56
                  xor          a6, s6, s6
                  ori          t1, t2, -948
287:              addi x23, x1, 0
287:              jalr x23, x23, 0
sub_2:            sub          a5, s10, a7
                  addi         a0, a0, -52
                  sw           ra, 4(a0)
                  lui          s11, 384566
                  xor          s10, s11, s3
                  or           s8, sp, a3
                  sltiu        gp, t2, -1664
                  add          a5, gp, t2
                  slti         s0, tp, 239
                  xor          a3, a6, t4
                  addi         a6, a4, 1190
                  blt          s9, s3, sub_2_j5 #branch to jump instr
                  addi         a5, s8, -685
                  and          s3, s0, s6
                  sltu         ra, s11, ra
                  andi         t0, t4, 667
                  andi         t5, t4, -214
                  srl          s5, gp, s5
sub_2_j5:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  srli         a6, gp, 29
                  srl          sp, s0, ra
                  nop
                  sll          s11, a1, s3
                  addi         s1, s2, -1814
                  and          s11, t2, t5
                  slti         s11, gp, 1989
                  or           ra, s6, t2
                  or           t1, t1, t2
sub_2_j6:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  addi         a1, zero, 4 #init loop 0 counter
                  sltu         s11, t1, s7
                  sll          a2, t2, t5
                  nop
                  sltu         s11, s4, s0
                  xor          s11, a0, s6
                  addi         t5, zero, -19 #init loop 0 limit
sub_2_3_0_t:      auipc        s9, 757893
                  sltu         s0, s9, t3
                  addi         a1, a1, -3 #update loop 0 counter
                  bge          a1, t5, sub_2_3_0_t #branch for loop 0
                  auipc        ra, 529420
                  addi         s8, zero, 5 #init loop 0 counter
                  nop
                  addi         sp, zero, 12 #init loop 0 limit
sub_2_0_0_t:      slti         s0, s0, 358
                  addi         s8, s8, 4 #update loop 0 counter
                  blt          s8, sp, sub_2_0_0_t #branch for loop 0
                  sll          s6, a2, s7
                  addi         s2, zero, 9 #init loop 1 counter
                  sltiu        tp, a3, 927
                  auipc        t1, 279602
                  addi         a7, zero, 15 #init loop 1 limit
sub_2_2_1_t:      sltiu        t0, t1, -1961
                  xori         ra, s7, -566
                  srli         t4, s8, 5
                  lui          s5, 433945
                  xor          s7, s11, t4
                  xori         s3, t2, 704
                  sltu         zero, s11, a4
                  addi         s2, s2, 1 #update loop 1 counter
                  sltiu        a6, s5, -682
                  sll          a1, t2, a4
                  lui          sp, 388669
                  addi         a2, zero, 5 #init loop 0 counter
                  sub          t0, s0, tp
                  addi         gp, zero, 13 #init loop 0 limit
                  xor          t3, sp, a3
                  andi         t3, s9, -803
sub_2_2_0_t:      sltu         s0, s8, t4
                  addi         a2, a2, 8 #update loop 0 counter
                  lui          s7, 194468
                  slli         zero, a5, 6
                  and          s9, s7, a6
                  srai         ra, s4, 28
                  sltu         tp, s11, a5
                  beq          a2, gp, sub_2_2_0_t #branch for loop 0
                  and          s5, ra, a3
                  add          s3, a5, a0
                  slli         s7, t0, 16
                  sll          s6, a5, s0
                  blt          s2, a7, sub_2_2_1_t #branch for loop 1
                  andi         t1, t1, -1493
                  addi         gp, zero, 2 #init loop 0 counter
                  sltu         s9, s2, t5
                  srl          a5, s11, s11
                  sra          s6, a4, a6
                  addi         a6, zero, 4 #init loop 0 limit
                  xor          s2, s3, a1
                  or           s6, a6, t6
sub_2_1_0_t:      xori         s8, s10, 1191
                  lui          s4, 126355
                  auipc        s0, 815569
                  ori          s3, t4, 1323
                  sltiu        t1, tp, -1576
                  addi         gp, gp, 5 #update loop 0 counter
                  sra          t4, a3, t2
                  bltu         gp, a6, sub_2_1_0_t #branch for loop 0
                  and          s5, t4, tp
                  bgeu         t4, t6, 12f
                  slt          s5, s3, s4
                  sltu         a3, a2, a1
                  srl          s1, tp, zero
                  auipc        s5, 1020770
                  lui          ra, 361818
                  srai         gp, s4, 1
                  srl          a3, a1, a1
                  xori         s3, s11, -1856
                  srl          s11, tp, s5
                  sll          s11, a4, t3
                  bgeu         a7, s9, 15f
12:               slti         s7, s3, 886
                  xori         gp, a4, -1030
                  ori          t1, t6, -1557
15:               srli         a6, s7, 23
                  srl          a1, t4, s8
                  slti         a7, t1, -1331
                  ori          s8, s3, -1580
                  slt          gp, s8, s11
                  nop
                  srl          s8, t2, sp
                  andi         gp, a3, -146
                  addi         t1, s7, -1260
                  addi         t3, s11, 953
                  lui          a7, 972973
                  and          s11, a6, s10
                  srai         t5, t6, 12
                  srai         t0, s8, 2
                  auipc        t2, 834910
                  or           gp, s11, gp
                  xori         a2, a2, 1981
                  bgeu         t5, t1, 43f
                  addi         s1, s7, 1711
                  xor          s7, t5, a5
                  beq          s6, a6, 48f
                  bgeu         a1, t0, 41f
                  andi         t4, a0, 919
                  beq          s2, tp, 51f
                  andi         a7, t3, 1444
                  auipc        sp, 726414
41:               srl          t1, s2, t4
                  addi         s11, gp, -600
43:               sltiu        t4, s4, -188
                  andi         t2, s5, 1561
                  addi         s1, s6, -1386
                  srai         s3, zero, 23
                  srl          s7, s7, a1
48:               nop
                  xor          tp, a7, a0
                  sltiu        a5, a0, -1988
51:               blt          a5, s7, 52f
52:               or           t1, t5, a3
                  xori         s5, t1, -2047
                  bgeu         t0, ra, 64f
                  xori         a3, s7, 1759
                  bge          a6, t4, 75f
                  or           t4, t6, s5
                  sltiu        sp, s9, 1063
                  bgeu         a2, s3, 70f
                  bne          s0, t3, 70f
                  beq          s8, s6, 72f
                  auipc        s6, 48299
                  auipc        a6, 722625
64:               ori          s11, s5, -176
                  add          s1, s11, a5
                  srl          a2, gp, s11
                  or           a6, s0, s1
                  slt          t0, s4, t3
                  or           zero, t2, s11
70:               xori         a2, a4, 635
                  blt          s5, a2, 76f
72:               slti         zero, s4, 1044
                  andi         s4, t1, 1224
                  xor          t5, tp, a7
75:               xori         s1, a3, 749
76:               slt          s5, a2, t1
                  auipc        a6, 178312
                  bltu         a6, s0, 81f
                  lui          s6, 383328
                  bge          s10, s3, 94f
81:               and          gp, zero, s7
                  add          t0, a2, s7
                  sltu         t0, s5, s5
                  slt          gp, a1, s10
                  beq          sp, s7, 101f
                  srli         s6, s10, 28
                  sltu         tp, s5, a4
                  sll          s8, sp, s10
                  srai         s9, s7, 9
                  ori          s5, s3, 1946
                  srai         s4, a7, 23
                  bltu         ra, gp, 93f
93:               srli         s2, s10, 5
94:               sub          s0, s5, t1
                  slli         t5, gp, 2
                  bgeu         t3, gp, 115f
                  nop
                  add          a5, a2, s3
                  ori          t1, s7, 11
                  sub          tp, t2, a6
                  nop
                  and          s7, s11, a3
                  xor          t1, t3, a0
                  sltu         a2, s2, s7
                  slt          s7, s7, sp
sub_2_j7:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  sra          s0, s9, a0
                  bgeu         a5, t1, 108f
                  slli         tp, t5, 18
                  ori          s4, zero, 1898
                  sll          s10, s4, s7
                  and          s5, t2, s2
                  la           a3, sub_3
                  nop
                  addi         a1, s9, -1205
                  addi         a3, a3, -168
                  andi         s1, a1, -1639
                  sltu         s0, a5, s5
                  xor          a7, s9, s9
                  nop
sub_2_j4:         jalr         ra, a3, 169 #jump sub_2 -> sub_3
101:              slti         s11, s10, 95
                  sltu         t2, s1, a6
                  bltu         a5, t4, 111f
                  srli         t2, a3, 9
                  srai         s0, s11, 4
                  addi         s10, gp, -687
                  beq          s0, s11, 112f
108:              or           t2, t3, s11
                  sub          s5, t4, sp
                  nop
111:              slti         t1, a1, 134
112:              lui          tp, 773648
                  bgeu         s6, s4, 117f
                  bgeu         s0, a4, 133f
115:              sltiu        s4, t0, -243
                  bne          s8, a2, 135f
117:              xori         s9, a3, 1785
                  bge          s10, a1, 128f
                  srai         zero, s7, 16
                  nop
                  auipc        tp, 429299
                  add          t1, a4, a3
                  srai         gp, a5, 14
                  sub          a7, a2, a3
                  slli         s4, a0, 24
                  or           s5, s5, s8
                  nop
128:              auipc        t2, 153307
                  addi         s3, s7, 1245
                  nop
                  ori          t3, s3, 614
                  srli         s11, a1, 11
133:              slt          a2, a0, ra
                  auipc        ra, 139779
135:              bge          s2, gp, 152f
                  slt          s3, a2, t3
                  slli         a5, s8, 17
                  nop
                  xor          s5, s7, a1
                  srl          tp, s5, t0
                  bgeu         a6, t1, 155f
                  bge          t4, ra, 145f
                  addi         t3, t0, 1788
                  and          s6, t5, a6
145:              and          s1, a6, a1
                  or           s2, s6, gp
                  srai         t0, a5, 15
                  andi         s10, t2, -239
                  ori          s10, s2, 1232
                  srli         s0, sp, 7
                  sll          s0, s8, s7
152:              slli         t5, s2, 24
                  bltu         gp, sp, 171f
                  bge          s11, a7, 162f
155:              xor          tp, a4, a0
                  sub          sp, s4, a7
                  bne          s11, a7, 169f
                  bne          sp, s0, 163f
                  and          s10, a4, s9
                  xori         s9, s7, 1700
                  bltu         tp, a4, 177f
162:              bltu         t6, a0, 172f
163:              srli         tp, a1, 23
                  sltu         s11, s6, a5
                  blt          gp, t5, 176f
                  sltu         zero, t0, zero
                  xor          ra, a0, s3
                  blt          t3, s2, 187f
169:              or           t3, s1, s8
                  blt          t3, a2, 184f
171:              beq          ra, a6, 181f
172:              bne          a6, s8, 180f
                  srli         s0, s6, 18
                  bgeu         s10, a6, 187f
                  xor          zero, t3, s4
176:              sltu         s4, a7, a6
177:              slli         a2, s4, 24
                  sub          a2, t6, s5
                  slti         t3, s11, -1197
180:              xori         a7, s1, 811
181:              srli         s2, s2, 7
                  sltiu        s8, a7, -1835
                  slli         s7, s1, 26
184:              sltu         s5, a1, a5
                  sra          s5, sp, s0
                  bgeu         a1, s9, 203f
187:              blt          s9, s3, 198f
                  bltu         a4, a6, 189f
189:              andi         s10, t2, 40
                  bne          a2, s11, 208f
                  bgeu         s7, t2, 196f
                  slli         t4, a1, 1
                  xor          t2, s7, gp
                  xori         t2, t4, 827
                  slt          t2, s0, a3
196:              add          s6, t4, a1
                  sltiu        a2, s5, -1859
198:              srl          s11, tp, sp
                  xor          t2, t2, t4
                  blt          t6, s11, 213f
                  xori         gp, s4, 1437
                  sub          s1, t6, tp
203:              addi         s0, t0, -1918
                  lui          s10, 988045
                  sra          t2, s4, a3
                  sra          tp, s1, s11
                  andi         a1, s3, 1945
208:              slt          t5, s8, sp
                  auipc        s0, 457684
                  slt          t0, t0, t6
                  slti         s4, t4, 960
                  xor          tp, s0, tp
213:              addi         s4, s7, 1693
                  nop
                  beq          s3, a2, 225f
                  andi         s1, s6, -1150
                  lui          t4, 1028405
                  srli         a6, s2, 24
                  srai         s6, t5, 19
                  sltu         s11, s7, a1
                  lui          t1, 868065
                  or           a1, t4, gp
                  nop
                  bltu         a6, s5, 238f
225:              beq          gp, a3, 229f
                  slti         t5, t4, 1915
                  bne          t4, zero, 230f
                  blt          s5, s4, 236f
229:              srl          t1, t5, t3
230:              add          s1, t2, s3
                  bne          t5, s11, 247f
                  slt          sp, sp, t2
                  and          s9, tp, ra
                  blt          a3, s4, 244f
                  sll          t0, a0, s5
236:              sltu         s4, s9, s2
                  sra          s4, s5, t4
238:              sll          tp, a3, a0
                  lui          s6, 32544
                  xori         s0, s2, 594
                  bne          s4, t4, 246f
                  slti         s7, s1, 138
                  nop
244:              lui          s2, 804630
                  lui          s5, 252560
246:              srli         ra, a6, 29
247:              addi         s0, ra, -495
                  sll          gp, s3, t5
                  and          a2, t4, s6
                  andi         s11, t5, 1317
                  lw           ra, 4(a0)
                  and          s11, t3, t1
                  or           tp, s11, t0
                  sra          t0, t3, t6
                  ori          s7, a4, 1047
                  addi         sp, s0, -1809
                  sltu         t4, a3, s8
                  addi         a0, a0, 52
                  sltiu        gp, ra, 1397
379:              addi x4, x1, 1
379:              jalr x4, x4, 0
sub_4:            sltiu        s8, a2, -1473
                  addi         a0, a0, -64
                  sw           ra, 4(a0)
                  sra          t3, s10, s7
                  addi         s4, a4, -1125
                  xor          s0, sp, t5
                  slti         a5, sp, -1634
                  addi         t1, zero, 1 #init loop 0 counter
                  sra          s0, s1, a5
                  xor          s4, gp, t1
                  ori          s9, s4, 1849
                  slt          t4, a4, zero
                  auipc        s1, 105972
                  addi         s10, zero, 18 #init loop 0 limit
                  xori         s6, a4, -1603
                  srai         t5, sp, 17
sub_4_0_0_t:      addi         a5, a1, 10
                  ori          t5, s11, -1151
                  addi         t1, t1, 2 #update loop 0 counter
                  slt          a3, sp, ra
                  srai         s11, t6, 22
                  blt          t1, s10, sub_4_0_0_t #branch for loop 0
                  sub          a7, gp, t2
                  addi         t0, zero, 8 #init loop 1 counter
                  slt          t2, gp, s0
                  nop
                  srl          t1, t3, a1
                  addi         s5, zero, 7 #init loop 1 limit
                  or           s6, s9, a4
sub_4_4_1_t:      add          t5, t6, a4
                  addi         s0, a6, -568
                  sltiu        s4, s1, -339
                  or           s8, zero, a3
                  addi         t0, t0, -5 #update loop 1 counter
                  addi         s3, zero, -2 #init loop 0 counter
                  slt          sp, t0, s0
                  addi         a3, tp, -501
                  sll          a5, a7, s6
                  xori         s8, a1, -158
                  addi         a2, zero, 11 #init loop 0 limit
                  sll          s0, t6, t2
sub_4_4_0_t:      xor          tp, s5, s10
                  add          s2, s11, s1
                  addi         s3, s3, 10 #update loop 0 counter
                  slt          s6, s0, t4
                  add          sp, s3, s6
                  xor          a5, t4, a1
                  xori         s11, s8, -554
                  blt          s3, a2, sub_4_4_0_t #branch for loop 0
                  sll          ra, s7, a5
                  andi         s7, s3, 1474
                  sub          s2, a0, t4
                  bgeu         t0, s5, sub_4_4_1_t #branch for loop 1
                  auipc        s2, 609553
                  addi         s4, zero, 10 #init loop 1 counter
                  nop
                  sra          a5, a5, tp
                  addi         t0, zero, 12 #init loop 1 limit
                  srli         s6, s11, 22
                  addi         t4, s10, -1270
                  sub          s8, a1, s0
sub_4_2_1_t:      xori         tp, s11, -422
                  auipc        s9, 961533
                  addi         s4, s4, 9 #update loop 1 counter
                  slti         t3, tp, -1672
                  addi         t2, zero, 4 #init loop 0 counter
                  lui          t1, 781156
                  or           t1, s0, zero
                  sltiu        s11, a4, -253
                  ori          a3, s10, 961
                  addi         s5, zero, 14 #init loop 0 limit
                  sra          a6, a2, a0
                  slt          sp, a7, t2
sub_4_2_0_t:      nop
                  addi         t2, t2, 4 #update loop 0 counter
                  ori          a1, a6, -1688
                  sltu         zero, s11, s7
                  bltu         t2, s5, sub_4_2_0_t #branch for loop 0
                  andi         a6, t3, -360
                  add          ra, a5, s2
                  srli         gp, a4, 29
                  bltu         s4, t0, sub_4_2_1_t #branch for loop 1
                  srli         a2, t2, 29
                  addi         t4, zero, 10 #init loop 0 counter
                  addi         sp, zero, 10 #init loop 0 limit
sub_4_1_0_t:      sltu         gp, a5, s2
                  addi         t4, t4, -9 #update loop 0 counter
                  bgeu         t4, sp, sub_4_1_0_t #branch for loop 0
                  sra          a2, s4, s9
                  addi         a2, zero, -4 #init loop 0 counter
                  or           gp, a0, t3
                  or           s6, s9, s2
                  xor          s2, s6, s10
                  addi         a5, zero, -15 #init loop 0 limit
sub_4_3_0_t:      addi         a7, a7, -979
                  addi         s1, s5, 1542
                  slt          s2, a6, s0
                  ori          s0, t1, -1731
                  addi         a2, a2, -9 #update loop 0 counter
                  slt          t4, a1, a6
                  xor          s10, s11, s6
                  xori         t0, a4, -1408
                  sra          s8, t5, ra
                  slli         a1, zero, 28
                  slli         s5, s6, 25
                  ori          s6, s11, 1527
                  add          s7, t4, t5
                  sltiu        sp, a6, 1787
                  sub          a1, t6, s6
                  slli         t0, s2, 8
                  bge          a2, a5, sub_4_3_0_t #branch for loop 0
                  nop
                  srai         t1, s4, 0
                  xor          s3, a4, s4
                  xori         s1, t5, -862
                  blt          s6, s1, 6f
                  addi         zero, ra, 902
                  sub          s1, sp, ra
6:                addi         s10, zero, -47
                  srl          t3, s9, s0
                  auipc        a2, 600211
                  add          t2, s4, s2
                  sra          sp, t6, s8
                  blt          t5, t6, 13f
                  addi         t2, ra, 1528
13:               lui          s4, 301439
                  nop
                  and          s7, ra, gp
                  srli         a1, s2, 15
                  sub          s6, s0, t0
                  bne          sp, zero, 26f
                  bltu         a4, s6, 35f
                  sll          s8, s5, s10
                  andi         t1, s7, -1710
                  add          s5, t3, ra
                  and          s9, ra, s10
                  srl          t5, a5, sp
                  sltiu        a3, s1, 1609
26:               bge          t4, s2, 30f
                  srai         ra, gp, 14
                  lui          a2, 892083
                  auipc        a7, 373067
30:               xor          a1, t2, a5
                  sltu         s9, s2, t6
                  slti         a6, s10, 763
                  and          t4, t4, s1
                  sltiu        a6, s11, -1584
35:               srai         s11, t4, 24
                  srai         s5, s2, 29
                  ori          t0, t5, -146
                  auipc        tp, 113310
                  andi         t1, sp, 1123
                  srl          tp, a5, zero
                  sll          gp, s3, a3
                  sub          a1, zero, a0
                  addi         s6, s10, 1097
                  sra          s6, a2, s11
                  beq          ra, t3, 58f
                  auipc        t3, 485015
                  beq          a3, t2, 50f
                  sltu         tp, s1, s11
                  sll          s1, a5, sp
50:               and          a6, s9, s5
                  xor          s10, s6, t6
                  bgeu         s2, a4, 61f
                  srli         s5, a0, 31
                  bne          a2, t4, 60f
                  and          a5, t1, t5
                  slti         a5, s6, 393
                  slti         a1, t6, 756
58:               auipc        s10, 1210
                  sra          s10, s7, a5
60:               or           s0, s4, s1
61:               slt          a2, s9, t4
                  srl          a3, s8, a5
                  srai         a2, t5, 0
                  sltu         a5, t6, s6
                  add          s2, t5, t6
                  sll          zero, tp, s3
                  bgeu         s6, ra, 71f
                  auipc        s10, 268969
                  sub          t0, t3, s1
                  xor          s3, s0, t6
71:               srli         s10, zero, 23
                  sltiu        a7, t6, -1369
                  andi         a2, gp, 913
                  srli         ra, a5, 12
                  ori          gp, t6, -1142
                  xori         a1, a1, -679
                  addi         gp, a4, 1247
                  sra          s9, s8, t6
                  ori          tp, t2, 1985
                  lui          s10, 400523
                  slli         a5, t6, 14
                  add          tp, t6, s1
                  ori          tp, gp, 291
                  bltu         ra, t0, 88f
                  or           a7, zero, tp
                  sra          s3, sp, gp
                  bge          s8, s1, 106f
88:               andi         s3, a7, -998
                  ori          s4, s11, -608
                  add          s2, a0, a6
                  bge          t4, tp, 106f
                  blt          s7, gp, 101f
                  slt          t2, s4, s1
                  bne          a7, sp, 107f
                  slti         ra, a1, -1528
                  sub          zero, s10, s9
                  ori          ra, ra, 1181
                  and          s9, s1, t3
                  nop
                  sltiu        sp, s6, 167
101:              bgeu         sp, tp, 103f
                  srai         a3, t1, 19
103:              slti         zero, s6, 1870
                  srli         a1, a2, 27
                  bge          gp, a6, 111f
106:              lui          t1, 173497
107:              sltu         t1, a1, t2
                  addi         t3, t0, -1935
                  xori         t4, t3, -1947
                  xor          a5, sp, s4
111:              sub          s3, s3, a1
                  add          ra, s5, t4
                  slt          s11, ra, ra
                  addi         a7, a3, -475
                  sra          s10, s8, s1
                  lui          t4, 707053
                  auipc        a3, 622063
                  andi         s11, a1, -1580
                  andi         t4, s2, -1210
                  or           a7, s10, t2
                  slti         s4, s7, 688
                  auipc        t2, 576979
                  bltu         a1, t3, 141f
                  bne          a7, s3, 136f
                  add          s4, s8, t2
                  ori          sp, a3, -1189
                  xori         a2, s7, 957
                  bgeu         t1, s1, 147f
                  lui          a2, 221163
                  sra          a2, t1, a7
                  bne          s3, gp, 149f
                  srai         tp, s5, 21
                  srli         a5, a4, 7
                  addi         t1, tp, 1048
                  andi         s3, t5, 1601
136:              sltiu        gp, t5, -1932
                  ori          s2, tp, -1055
                  xor          s9, gp, s11
                  bge          zero, s8, 150f
                  bgeu         a3, a2, 145f
141:              add          s8, s4, a0
                  sub          tp, s1, t0
                  bne          sp, t6, 157f
                  nop
145:              xor          s0, a3, a3
                  ori          s2, tp, 1125
147:              sltiu        s3, s1, 1952
                  srai         s0, t0, 25
149:              xor          s7, s2, t4
150:              slt          s5, s9, a4
                  sub          gp, t1, s11
                  xor          s5, a7, a0
                  lui          t4, 435710
                  xori         s8, s8, 987
                  srli         a2, s11, 1
                  xor          s9, t3, a5
157:              addi         sp, s10, 1335
                  bltu         s10, t3, 159f
159:              sltu         s6, t3, s9
                  sltu         t2, zero, s9
                  srli         a1, a2, 20
                  bge          a4, a4, 181f
                  add          a6, s6, s4
                  srl          s9, t5, tp
                  bne          s0, s0, 178f
                  bgeu         t4, tp, 171f
                  and          sp, a4, a1
                  ori          s9, s1, -386
                  beq          t4, ra, 180f
                  slt          t5, a3, s2
171:              slti         t0, s8, -549
                  srai         a1, s9, 29
                  xor          s2, s5, t6
                  bne          t6, a7, 181f
                  beq          s7, s11, 182f
                  sltiu        t3, s7, -2028
                  ori          s8, a5, -1258
178:              blt          s5, s0, 191f
                  srai         s0, s4, 22
180:              sltiu        t0, s1, -2043
181:              slti         gp, s3, 950
182:              addi         s1, s7, 1109
                  slt          a1, s1, s9
                  or           a3, s1, t3
                  or           t4, s8, s10
                  ori          sp, tp, -710
                  beq          a5, sp, 188f
188:              andi         gp, zero, 710
                  slt          s5, sp, zero
                  auipc        s10, 960510
191:              ori          t0, a1, -819
                  bne          t1, a3, 196f
                  beq          a1, t1, 196f
                  or           s9, a0, gp
                  sra          s5, sp, s3
196:              sltu         a7, s0, s9
                  xori         ra, a3, -1010
                  ori          a5, t1, -1823
                  bge          a2, a3, 213f
                  ori          t0, t3, 732
                  sub          a7, gp, s10
                  bne          zero, a3, 220f
                  srli         tp, s6, 10
                  xor          s9, s5, s8
                  blt          a6, sp, 224f
                  bge          s0, zero, 225f
                  and          a2, s7, t3
                  slt          s11, t6, s6
                  sltiu        a6, a1, -861
                  slt          gp, t5, zero
                  xori         t1, gp, 71
                  add          s4, a1, zero
213:              slti         a7, a0, -1669
                  addi         t0, sp, -1956
                  sltu         s9, a6, a3
                  slti         s7, zero, -1008
                  addi         s0, tp, 1581
                  ori          t1, sp, 1740
                  add          t4, s8, a4
220:              andi         t1, a1, -1180
                  blt          s11, t2, 239f
                  auipc        s3, 141792
                  beq          sp, s11, 227f
224:              bge          gp, s4, 233f
225:              srai         s1, s11, 2
                  bgeu         s6, ra, 232f
227:              bgeu         a5, a7, 240f
                  add          s5, t5, ra
                  xori         t3, s11, 99
                  srli         s0, a5, 20
                  bge          t5, zero, 242f
232:              addi         s3, s4, -297
233:              blt          t6, t3, 239f
                  sra          a3, t0, a7
                  auipc        s4, 986301
                  add          t2, a6, s4
                  blt          gp, s5, 250f
                  slt          s0, t3, s1
239:              sltiu        t4, s2, 617
240:              beq          s1, s3, 249f
                  slt          t5, s6, t0
242:              sltu         s1, zero, a5
                  bgeu         sp, s11, 245f
                  bltu         a1, a0, 255f
245:              add          s6, t0, zero
                  lui          a2, 546547
                  bge          gp, t0, 250f
                  blt          t3, s11, 253f
249:              beq          sp, s1, 261f
250:              slt          a3, a7, a7
                  bltu         a2, t1, 259f
                  slt          s8, gp, t0
253:              blt          sp, gp, 258f
                  ori          a2, s2, -1170
255:              nop
                  xori         sp, a4, 1022
                  xor          s5, s6, t0
258:              nop
259:              addi         a6, a6, -1492
                  and          s1, a7, a3
261:              addi         a3, s1, 483
                  slt          s9, tp, gp
                  auipc        t5, 720368
                  srai         s6, a6, 15
                  lui          s7, 265177
                  sra          t0, s8, t1
                  lw           ra, 4(a0)
                  sra          s11, s2, s1
                  addi         a0, a0, 64
                  slli         s5, s7, 21
                  ori          s2, a5, 1279
                  nop
                  srli         t4, a2, 20
                  sra          t4, s8, a2
387:              addi x4, x1, 1
387:              jalr x4, x4, 0
sub_1:            addi         a0, a0, -48
                  sll          a7, s9, s1
                  xori         s5, s1, 1399
                  sw           ra, 4(a0)
                  sltiu        sp, tp, 892
                  addi         a3, zero, -9 #init loop 1 counter
                  addi         s11, zero, 9 #init loop 1 limit
                  sub          gp, t5, s6
                  and          s8, s6, s10
sub_1_0_1_t:      sltu         sp, s4, zero
                  sub          a1, t4, s4
                  auipc        a1, 204138
                  addi         a3, a3, 2 #update loop 1 counter
                  sra          a7, t0, t4
                  addi         t1, zero, -7 #init loop 0 counter
                  addi         a5, zero, -7 #init loop 0 limit
                  srl          sp, s2, a0
sub_1_0_0_t:      andi         s7, gp, -8
                  sll          s8, s10, s8
                  addi         t1, t1, -4 #update loop 0 counter
                  bge          t1, a5, sub_1_0_0_t #branch for loop 0
                  slti         t0, a3, -2006
                  bltu         a3, s11, sub_1_0_1_t #branch for loop 1
                  sra          s4, a2, s7
                  addi         s10, zero, -3 #init loop 1 counter
                  addi         a3, zero, -9 #init loop 1 limit
                  nop
                  srli         s5, s11, 10
                  addi         a1, s8, -102
                  srl          s11, a0, gp
                  ori          t3, t0, 845
                  sll          a7, s2, s7
sub_1_1_1_t:      sub          s7, a0, t1
                  auipc        s8, 283900
                  srli         t2, a2, 3
                  addi         s10, s10, -3 #update loop 1 counter
                  ori          t2, s0, 774
                  addi         t4, zero, -5 #init loop 0 counter
                  slt          sp, t5, t1
                  addi         t0, s10, -545
                  addi         ra, zero, 11 #init loop 0 limit
sub_1_1_0_t:      auipc        s9, 132961
                  or           a1, a5, s11
                  nop
                  andi         a6, s3, 1736
                  sra          t2, s2, a4
                  srl          s7, s0, a1
                  or           s5, ra, s1
                  sltu         tp, ra, a1
                  add          s5, s0, t4
                  slt          a1, a4, s1
                  addi         t4, t4, 8 #update loop 0 counter
                  slt          s11, a5, t0
                  bltu         t4, ra, sub_1_1_0_t #branch for loop 0
                  sltu         s3, a2, a3
                  bne          s10, a3, sub_1_1_1_t #branch for loop 1
                  xori         s7, a7, -1594
                  addi         a3, zero, -5 #init loop 1 counter
                  andi         a6, s6, 19
                  addi         t0, zero, 17 #init loop 1 limit
sub_1_2_1_t:      and          t2, s11, a5
                  addi         a3, a3, 8 #update loop 1 counter
                  addi         s11, zero, 6 #init loop 0 counter
                  and          a2, t3, s2
                  addi         s2, zero, 6 #init loop 0 limit
sub_1_2_0_t:      addi         zero, s3, 1810
                  sub          gp, s0, ra
                  addi         s11, s11, -5 #update loop 0 counter
                  bge          s11, s2, sub_1_2_0_t #branch for loop 0
                  srai         gp, a5, 18
                  blt          a3, t0, sub_1_2_1_t #branch for loop 1
                  sltiu        t1, s0, -621
                  bge          a3, zero, 2f
                  slli         s2, s6, 17
2:                bgeu         t6, t1, 14f
                  addi         gp, s3, -1480
                  sra          t5, t1, a0
                  sltu         s3, a1, a4
                  sll          s2, gp, a1
                  xor          t3, a3, s10
                  lui          t2, 883989
                  bne          s10, s2, 27f
                  addi         s1, t1, -1866
                  slti         s0, s8, -443
                  srl          a1, s0, tp
                  sltu         s10, sp, t5
14:               bgeu         t1, t0, 27f
                  srli         t5, t0, 24
                  sltiu        s3, t2, 1385
                  srai         a6, sp, 16
                  or           s7, t6, sp
                  xor          s9, a7, s3
                  blt          t3, a0, 32f
                  bltu         tp, s2, 36f
                  slt          sp, tp, s6
                  add          a7, s0, t3
                  slt          t0, s2, a6
                  nop
                  auipc        t1, 103405
27:               auipc        s1, 914308
                  srl          t4, s7, t4
                  slli         s7, t5, 22
                  bgeu         t5, a6, 38f
                  sltu         ra, zero, s9
32:               andi         t3, ra, 1468
                  beq          t2, gp, 51f
                  or           s9, t0, a5
                  xori         t4, a3, -521
36:               xori         s9, s1, 2042
                  srli         a2, sp, 3
38:               sub          tp, s6, s6
                  srai         a3, t2, 13
                  bltu         a2, gp, 53f
                  sra          s6, a1, s7
                  bge          s0, zero, 49f
                  bltu         a0, t5, 47f
                  beq          s1, s10, 57f
                  sra          ra, t1, zero
                  srai         s9, a6, 0
47:               sltu         sp, s8, t0
                  bltu         s3, a7, 62f
49:               sltu         sp, t0, s0
                  srai         a1, s0, 31
51:               or           gp, s7, s0
                  sltiu        s4, ra, 1040
53:               and          s1, gp, s2
                  blt          s8, tp, 70f
                  andi         s7, a7, -1809
                  bgeu         s9, a2, 66f
57:               bge          s4, s10, 59f
                  bne          a3, s1, 64f
59:               srli         s9, sp, 2
                  sub          t4, s2, a7
                  sra          s3, t5, s10
62:               add          s1, s2, sp
                  lui          a1, 655756
64:               add          a1, s10, s9
                  addi         a7, a7, 211
66:               sub          gp, a2, s5
                  bge          t2, t6, 74f
                  andi         s3, s9, -943
                  sra          tp, a5, t4
70:               ori          s11, t2, 1551
                  lui          tp, 833779
                  sll          a7, a2, t4
                  sub          sp, tp, s4
74:               sltiu        a3, s3, 911
                  xori         t3, s2, -1621
                  nop
                  add          a2, s4, ra
                  srl          ra, s5, s0
                  blt          a0, s7, 83f
                  xor          zero, ra, s0
                  lui          zero, 524969
                  xor          sp, s11, sp
83:               slti         s2, s10, 1686
                  srl          a6, a7, s10
                  beq          s9, s3, 87f
                  ori          tp, a1, -1382
87:               xor          t4, t2, a4
                  sub          a3, sp, ra
                  bltu         t3, s9, 104f
                  bne          a5, t5, 99f
                  slti         t0, a6, -770
                  bge          a0, s8, 96f
                  bne          a3, t2, 108f
                  slt          s9, a3, gp
                  slt          t5, s10, a7
96:               nop
                  ori          s8, s6, 801
                  auipc        a5, 881350
99:               add          t5, gp, t6
                  sll          s10, a0, t1
                  sll          t5, a3, s6
                  xor          zero, s6, a6
                  srl          a2, a0, t6
104:              addi         t4, a7, -1077
                  beq          t4, ra, 110f
                  slli         ra, t6, 4
                  sll          t4, s4, a5
108:              blt          tp, s0, 118f
                  ori          s0, s10, -106
110:              blt          gp, t5, 130f
                  xori         s0, a5, -158
                  blt          tp, t6, 121f
                  lui          t3, 349691
                  slt          t5, a0, tp
                  blt          a1, s7, 135f
                  blt          s5, s3, 125f
                  slli         a5, s2, 18
118:              add          s6, s4, t5
                  slt          s6, s0, t6
                  xori         zero, t0, -689
                  la           s11, sub_2
                  addi         s11, s11, 629
                  ori          s6, a0, -1751
                  sra          s1, s4, t1
                  andi         zero, t6, -895
sub_1_j3:         jalr         ra, s11, -628 #jump sub_1 -> sub_2
                  addi         s0, t2, 1819
                  slti         a2, t5, -1818
121:              andi         s5, sp, -734
                  bltu         s9, zero, 135f
                  sub          s2, s9, t1
                  nop
125:              andi         t5, s7, -831
                  addi         s8, ra, -97
                  slti         s7, t5, -765
                  srl          s10, t2, t2
                  xori         s1, tp, 1850
130:              andi         s10, a7, -1488
                  sra          a3, s9, ra
                  srli         s10, t5, 26
                  sltu         a1, a3, zero
                  srli         tp, s0, 16
135:              xor          s9, s7, a2
                  srai         a6, tp, 31
                  bgeu         t6, t6, 152f
                  bgeu         a2, s4, 151f
                  xori         a7, s8, 138
                  andi         t0, t2, -805
                  sra          s5, s3, s10
                  xori         s10, a5, -1359
                  sub          t1, zero, s9
                  blt          s1, t0, 153f
                  addi         t2, s11, -673
                  xor          t3, a2, a3
                  srl          a5, s8, s10
                  auipc        a2, 988931
                  add          t0, ra, zero
                  xor          s6, s7, s6
151:              beq          t4, t1, 155f
152:              sra          tp, s0, a2
153:              sll          s7, t5, t3
                  ori          a2, s5, -903
155:              slli         s0, s3, 18
                  blt          a5, ra, 160f
                  slli         a7, a5, 25
                  bge          a4, s9, 174f
                  bne          a5, s8, 161f
160:              nop
161:              blt          ra, t4, 179f
                  sll          s7, s7, a5
                  bltu         s9, t5, 183f
                  beq          sp, a2, 172f
                  or           a2, a6, s1
                  auipc        t4, 538167
                  bge          s8, t2, 181f
                  sltiu        s4, t1, -1201
                  slt          tp, s5, gp
                  sltiu        ra, a3, 1756
                  add          a3, tp, s5
172:              lui          t4, 418516
                  ori          a2, t0, 298
174:              xor          s1, s0, s1
                  and          s11, zero, s2
                  xor          a3, s11, t3
                  sll          a6, s9, s9
                  srli         s11, t6, 18
179:              srai         s5, a5, 9
                  nop
181:              and          s8, a0, gp
                  slti         a6, t0, -1289
183:              sra          a5, a4, s0
                  sra          s4, ra, t2
                  lui          t3, 304277
                  sll          s6, s10, gp
                  nop
                  sll          t5, tp, a0
                  srai         zero, t4, 27
                  bge          t6, s2, 191f
191:              xori         s3, s2, 354
                  xori         sp, t2, -229
                  addi         s7, s11, 1578
                  srai         zero, t3, 12
                  lw           ra, 4(a0)
                  and          s10, s4, a7
                  srl          s1, a7, s3
                  slt          tp, a3, s2
                  add          s3, t4, s4
                  addi         a0, a0, 48
                  sltu         a6, t6, a6
282:              addi x13, x1, 0
282:              jalr x13, x13, 0
sub_3:            slti         t2, t2, 1236
                  addi         s7, tp, 713
                  nop
                  sra          s9, s9, a5
                  addi         a0, a0, -60
                  xori         tp, t6, -2010
                  sll          t2, t3, zero
                  add          s11, a1, s1
                  sw           ra, 4(a0)
                  sra          t3, a3, s3
                  addi         s5, zero, 8 #init loop 0 counter
                  srli         a6, a4, 9
                  addi         a6, a2, -750
                  slti         a5, s7, -1149
                  andi         tp, t3, 1070
                  and          gp, t0, s3
                  srai         s2, s8, 27
                  addi         t3, zero, 8 #init loop 0 limit
                  sltiu        s9, a3, 1208
sub_3_10_0_t:     and          s4, a6, a3
                  addi         tp, s5, 562
                  addi         s5, s5, -7 #update loop 0 counter
                  slt          t4, gp, s2
                  sltu         sp, sp, s0
                  addi         s11, t4, 1771
                  bgeu         s5, t3, sub_3_10_0_t #branch for loop 0
                  andi         a2, a0, -1152
                  addi         s9, zero, -5 #init loop 0 counter
                  and          a6, s3, a1
                  addi         t1, zero, -14 #init loop 0 limit
sub_3_5_0_t:      and          t5, a5, t3
                  sltu         a7, gp, t0
                  sltu         t0, ra, t1
                  addi         s9, s9, -9 #update loop 0 counter
                  bne          s9, t1, sub_3_5_0_t #branch for loop 0
                  slti         t5, a3, 490
                  addi         ra, zero, -6 #init loop 0 counter
                  sltu         s7, s10, a7
                  addi         s10, a3, 1294
                  xor          s7, a7, zero
                  sltiu        s3, t2, -1216
                  nop
                  auipc        zero, 1026156
                  addi         s4, zero, 8 #init loop 0 limit
                  sra          tp, t0, s6
sub_3_7_0_t:      sub          gp, a5, a6
                  srai         a2, s8, 6
                  or           gp, s8, s4
                  sll          s1, a3, tp
                  slti         t4, gp, 1773
                  sra          s8, gp, sp
                  addi         ra, ra, 1 #update loop 0 counter
                  add          a2, a5, a7
                  xor          sp, s7, s6
                  slti         a6, a6, 481
                  sltu         t1, a0, sp
                  xori         s6, ra, 636
                  srai         sp, s4, 2
                  srai         gp, s5, 19
                  slti         gp, s9, 344
                  auipc        s11, 559178
                  bltu         ra, s4, sub_3_7_0_t #branch for loop 0
                  xor          a7, t2, s3
                  addi         t0, zero, -3 #init loop 0 counter
                  slt          a1, t3, gp
                  slli         t4, t4, 28
                  sub          t2, sp, s11
                  addi         a3, zero, 6 #init loop 0 limit
sub_3_1_0_t:      and          tp, a0, t0
                  xor          s5, s9, s6
                  nop
                  srai         s5, s1, 20
                  or           s2, s10, s1
                  and          s3, zero, t5
                  or           t2, a2, t1
                  srl          ra, a4, ra
                  addi         t0, t0, 2 #update loop 0 counter
                  srl          a5, t6, s3
                  andi         s3, a4, 1242
                  sltu         a5, t5, t1
                  ori          s8, s0, 680
                  ori          ra, s9, 1994
                  nop
                  slli         tp, a0, 15
                  auipc        t2, 465286
                  addi         a5, t5, -1577
                  ori          s8, s4, -909
                  slli         s1, sp, 31
                  bltu         t0, a3, sub_3_1_0_t #branch for loop 0
                  sra          t1, t6, a2
                  addi         a3, zero, 5 #init loop 1 counter
                  srai         s4, s5, 11
                  addi         s8, a3, -1879
                  sltu         a5, t0, s10
                  add          tp, s9, a6
                  nop
                  addi         a7, zero, 19 #init loop 1 limit
sub_3_8_1_t:      ori          s4, t1, -1640
                  lui          t4, 666072
                  addi         a3, a3, 9 #update loop 1 counter
                  slti         a1, t4, 1758
                  sltiu        t5, s0, 1553
                  addi         s10, zero, 10 #init loop 0 counter
                  andi         tp, a3, 1665
                  addi         s5, zero, 10 #init loop 0 limit
                  sll          s3, s0, a1
                  xor          s2, s7, s9
sub_3_8_0_t:      sub          s2, s4, t2
                  addi         s10, s10, -6 #update loop 0 counter
                  nop
                  bgeu         s10, s5, sub_3_8_0_t #branch for loop 0
                  nop
                  addi         t1, a0, -432
                  slli         t0, ra, 17
                  sub          s9, t4, a0
                  srl          t0, t2, s8
                  bltu         a3, a7, sub_3_8_1_t #branch for loop 1
                  xor          s4, tp, a1
                  addi         s1, zero, 10 #init loop 0 counter
                  slli         t4, a5, 29
                  slt          ra, a4, s5
                  addi         a5, zero, 10 #init loop 0 limit
                  sll          t1, s10, t6
sub_3_2_0_t:      xori         s0, t2, 1137
                  or           s0, t5, a2
                  srli         t5, a0, 27
                  addi         s1, s1, -7 #update loop 0 counter
                  auipc        a1, 427583
                  bgeu         s1, a5, sub_3_2_0_t #branch for loop 0
                  sra          a3, t4, sp
                  addi         a7, zero, 4 #init loop 0 counter
                  srl          s9, s11, t2
                  and          t3, sp, t5
                  addi         t1, zero, -20 #init loop 0 limit
sub_3_9_0_t:      andi         s0, s8, -548
                  addi         a7, a7, -8 #update loop 0 counter
                  slt          sp, a5, sp
                  srli         tp, s2, 9
                  bne          a7, t1, sub_3_9_0_t #branch for loop 0
                  xori         s4, t6, 1356
                  addi         t0, zero, -8 #init loop 1 counter
                  addi         s0, zero, 2 #init loop 1 limit
sub_3_3_1_t:      add          s7, s8, a7
                  addi         t0, t0, 10 #update loop 1 counter
                  addi         s11, zero, 8 #init loop 0 counter
                  addi         s9, zero, 2 #init loop 0 limit
                  slt          s5, s3, s8
sub_3_3_0_t:      or           a3, s2, s1
                  addi         s11, s11, -10 #update loop 0 counter
                  bge          s11, s9, sub_3_3_0_t #branch for loop 0
                  blt          t0, s0, sub_3_3_1_t #branch for loop 1
                  sltu         t1, s0, zero
                  addi         s3, zero, 10 #init loop 0 counter
                  nop
                  lui          a2, 11025
                  slti         t4, s0, -457
                  addi         zero, s10, -1577
                  and          a5, a2, sp
                  addi         s1, zero, -20 #init loop 0 limit
sub_3_12_0_t:     slt          t0, s7, t6
                  nop
                  addi         s3, s3, -1 #update loop 0 counter
                  sub          s9, sp, ra
                  bne          s3, s1, sub_3_12_0_t #branch for loop 0
                  lui          s2, 490890
                  addi         a5, zero, 7 #init loop 1 counter
                  slti         s2, zero, -598
                  srai         s2, ra, 9
                  sub          t3, a3, s5
                  addi         a2, zero, 8 #init loop 1 limit
sub_3_4_1_t:      xori         s3, a0, -1359
                  addi         a5, a5, 4 #update loop 1 counter
                  xor          s10, s9, a7
                  auipc        s3, 535170
                  srl          s0, t5, ra
                  addi         a6, zero, 7 #init loop 0 counter
                  ori          s7, t0, 670
                  sltiu        s1, a6, -621
                  addi         s11, zero, 17 #init loop 0 limit
                  xor          s7, s2, s9
                  andi         tp, gp, 1832
sub_3_4_0_t:      ori          t2, t6, -248
                  sra          s0, a5, s10
                  or           s7, t0, s10
                  add          a7, gp, s11
                  addi         a6, a6, 10 #update loop 0 counter
                  ori          t0, a1, 1325
                  ori          t0, t4, 265
                  beq          a6, s11, sub_3_4_0_t #branch for loop 0
                  sll          s0, t1, a3
                  bltu         a5, a2, sub_3_4_1_t #branch for loop 1
                  nop
                  xor          t3, zero, t6
                  bgeu         zero, t6, 5f
                  blt          s6, a0, 12f
                  or           s4, a5, a0
                  auipc        a3, 790659
5:                sub          ra, t0, s3
                  sll          s3, a4, s0
                  srl          tp, s9, s4
                  xor          a1, t2, s8
                  addi         s2, zero, -9 #init loop 0 counter
                  or           s11, a2, a7
                  sltu         s0, s6, a4
                  auipc        a7, 59271
                  ori          a6, s1, -799
                  srli         t3, a3, 23
                  addi         s9, zero, 5 #init loop 0 limit
                  sra          a3, a6, s5
                  nop
                  add          s8, a1, s9
                  auipc        s5, 484505
                  sra          t4, t5, s8
                  sll          s1, t3, s3
                  xor          s3, s3, s1
sub_3_0_0_t:      sltu         gp, t5, a3
                  auipc        gp, 626172
                  addi         s2, s2, 10 #update loop 0 counter
                  addi         s6, s4, 1300
                  bltu         s2, s9, sub_3_0_0_t #branch for loop 0
                  sltu         t0, t5, sp
                  bltu         s6, s9, 10f
10:               lui          s1, 645530
                  bge          a1, s7, 30f
12:               ori          s6, s0, 2018
                  slt          a5, tp, t6
                  lui          s5, 367164
                  sltiu        s0, a6, 508
                  srli         a2, s8, 3
                  bgeu         s1, t3, 24f
                  or           a5, s10, s10
                  blt          s1, s10, 27f
                  slt          a5, t6, s6
                  lui          s9, 633551
                  sltu         t0, ra, s11
                  or           s0, t4, s8
24:               bgeu         sp, s5, 35f
                  nop
                  auipc        s3, 252753
27:               bgeu         s0, s9, 40f
                  bge          a6, ra, 31f
                  lui          s7, 766313
30:               bne          ra, ra, 36f
31:               bge          s1, s6, 42f
                  or           a2, tp, s4
                  blt          t1, tp, 43f
                  lui          s0, 696691
35:               bltu         gp, s10, 40f
36:               srli         s10, s11, 9
                  xori         t1, s0, 470
                  blt          a3, s3, 55f
                  xori         ra, t3, -1176
40:               slli         s1, t6, 16
                  bne          zero, t0, 58f
42:               nop
43:               auipc        s8, 142135
                  ori          t3, zero, 1332
                  srl          t5, s5, a5
                  and          gp, s11, t4
                  xor          a6, s8, s0
                  xor          a1, t1, s5
                  beq          t2, s2, 55f
                  add          s11, zero, a1
                  ori          s8, gp, 798
                  slt          sp, s2, a5
                  xori         a5, zero, -1043
                  or           tp, t3, s10
55:               or           t5, s0, gp
                  ori          s3, t2, -1779
                  bge          t3, s5, 70f
58:               sra          a3, t5, s10
                  xor          s7, s1, s8
                  and          a7, s10, s0
                  sra          s10, a5, tp
                  add          t0, t6, a6
                  bne          a7, a7, 80f
                  bne          s4, a7, 81f
                  bne          a5, s9, 85f
                  add          sp, s8, s8
                  lui          t2, 35998
                  srli         s9, s6, 1
                  slti         s2, s11, 1943
70:               lui          ra, 729260
                  addi         t0, s0, -1131
                  sltiu        t1, s5, -395
                  slli         a1, s5, 19
                  bne          t3, s7, 80f
                  and          t5, s0, t2
                  or           zero, gp, t2
                  addi         ra, tp, -1734
                  sltu         s7, a0, t5
                  nop
80:               srai         s0, tp, 24
81:               sub          s7, a7, s9
                  srl          a7, t1, a1
                  sltiu        zero, a6, -1157
                  srl          a2, t4, s9
85:               sll          s0, a3, a0
                  nop
                  slti         s10, s4, -1653
                  bne          a1, s8, 93f
                  add          gp, s10, s0
                  slti         a7, t6, -724
                  lui          a5, 156680
                  xori         a6, s10, 163
93:               xori         s0, a1, 450
                  bge          s3, t5, 100f
                  slti         s5, t2, 1447
                  ori          t1, a0, 999
                  andi         s9, a2, -1174
                  sltu         t3, a6, a2
                  ori          s9, t2, -1349
100:              xor          a5, s10, s10
                  nop
                  bltu         a1, s9, 106f
                  sll          a5, t1, t0
                  slti         s6, s4, -1293
                  srai         t1, tp, 10
106:              lui          s8, 351633
                  bgeu         s4, s11, 121f
                  or           ra, gp, t4
                  blt          s11, a1, 113f
                  lui          s0, 65322
                  lui          s1, 691695
                  bne          a5, t4, 125f
113:              andi         s1, a7, 1567
                  sub          s3, s3, s11
                  sltu         sp, a3, s8
                  xor          t3, s1, t3
                  slti         a1, a1, -1151
                  slt          s10, t0, s8
                  sltiu        s2, gp, 1559
                  sll          s1, s10, tp
121:              bgeu         a3, a7, 122f
122:              xori         a7, s6, -322
                  and          s10, gp, s4
                  lui          s6, 587116
125:              addi         a5, a7, -500
                  lui          s5, 940420
                  sll          s11, t2, a6
                  sltu         s5, ra, sp
                  srli         gp, a6, 20
                  sltiu        s4, t5, -1594
                  xori         s1, t3, -1168
                  lui          t5, 1044124
                  xor          t0, ra, s11
                  and          s6, a1, ra
                  lui          s2, 370512
                  bltu         s5, zero, 145f
                  nop
                  addi         a2, t6, -1329
                  bltu         s5, s4, 144f
                  andi         s0, t4, -1960
                  or           a1, t3, s8
                  beq          t4, a4, 152f
                  sltu         t5, ra, s0
144:              andi         zero, a2, -623
145:              srli         s7, a6, 5
                  sltu         s7, zero, s2
                  srl          a1, s4, s7
                  sltiu        t5, s4, 1979
                  slli         a6, a6, 17
                  xori         zero, s3, 1633
                  blt          a0, t4, 156f
152:              bltu         sp, t0, 162f
                  andi         t3, a7, 1745
                  nop
                  blt          t3, s11, 158f
156:              sub          a3, s7, ra
                  sltiu        a5, a0, 433
158:              nop
                  srl          t4, t6, sp
                  lui          s9, 396308
                  or           ra, a5, t3
162:              bge          t2, s0, 173f
                  srli         t2, a5, 11
                  sll          s3, t0, s6
                  slt          tp, s11, s5
                  srli         a7, zero, 16
                  srai         s3, sp, 11
                  blt          s7, s3, 169f
169:              bge          ra, zero, 174f
                  sll          s10, a3, a5
                  srl          zero, a1, a6
                  add          ra, sp, zero
173:              ori          a6, s4, -1096
174:              add          t4, s10, t3
                  sra          t5, t1, s3
                  bge          a0, s7, 184f
                  bge          s4, t3, 184f
                  and          s8, sp, a1
                  addi         s2, zero, 0 #init loop 0 counter
                  andi         sp, ra, -762
                  slt          a2, s5, tp
                  sub          t0, a7, s1
                  addi         t2, zero, -17 #init loop 0 limit
                  sll          a1, a4, s4
sub_3_14_0_t:     ori          s3, a3, -237
                  srli         s6, sp, 24
                  slli         s6, a6, 27
                  ori          a6, ra, -191
                  addi         s2, s2, -8 #update loop 0 counter
                  srai         s10, s2, 9
                  bge          s2, t2, sub_3_14_0_t #branch for loop 0
                  slt          s10, a2, t4
                  xor          s0, t1, a3
                  auipc        s11, 649740
                  bne          s5, a2, 185f
                  slt          t2, s6, a5
                  bgeu         s9, t3, 189f
184:              sltu         zero, s10, tp
185:              slt          s6, s4, s1
                  and          t0, s10, s9
                  srli         ra, t0, 26
                  bltu         a1, t2, 208f
189:              xor          s8, t6, a6
                  srli         a2, s5, 3
                  nop
                  nop
                  or           s2, a6, s7
                  bne          a7, s5, 205f
                  srl          s10, t2, tp
                  sltu         t4, ra, t5
                  ori          a1, t2, 1632
                  and          s3, sp, a0
                  or           t3, a6, t3
                  srli         s11, a6, 21
                  sub          s5, s10, s11
                  add          a2, s6, s9
                  sltu         tp, s10, t4
                  bne          t5, t5, 221f
205:              slli         t5, zero, 11
                  ori          sp, s9, 322
                  slti         s6, s2, 1621
208:              or           s2, tp, a4
                  add          t5, t0, s9
                  sll          zero, s7, s7
                  slli         s10, zero, 26
                  add          s0, s8, t2
                  blt          a7, s0, 214f
214:              lui          s5, 701206
                  andi         s7, s5, 770
                  bne          a6, sp, 235f
                  blt          t1, s8, 231f
                  sll          a6, a6, a4
                  srl          t5, t3, t6
                  srli         a7, t1, 11
221:              xor          a6, s2, t1
                  auipc        s6, 74763
                  bgeu         s10, t4, 229f
                  slti         a2, s8, -548
                  slt          a5, t1, s0
                  srai         s11, s5, 11
                  add          s10, a7, s0
                  addi         t1, s10, -823
229:              sll          sp, t4, s3
                  ori          t1, s4, 856
231:              srl          a7, s7, gp
                  bltu         ra, a2, 236f
                  sltu         s10, tp, s4
                  ori          s11, t1, -758
235:              bgeu         a1, s2, 248f
236:              andi         s6, s0, -2025
                  srai         s0, gp, 21
                  xor          sp, t0, a3
                  sltiu        zero, s11, 866
                  or           t1, a5, s5
                  addi         sp, t3, -559
                  ori          t3, a0, -1413
                  sll          s7, s10, a1
                  sra          s1, gp, a4
                  or           zero, a5, t2
                  srai         t5, sp, 25
                  sltiu        ra, a7, -1337
248:              ori          ra, t2, -387
                  auipc        sp, 476559
                  sll          zero, s0, s10
                  auipc        t0, 831257
                  sltu         s9, t3, a5
                  and          a2, a5, s9
                  srli         a2, s7, 30
                  or           tp, tp, s3
                  addi         a7, gp, -683
                  blt          a6, t4, 270f
                  slt          t4, a6, s9
                  nop
                  auipc        t5, 1013701
                  nop
                  bgeu         a1, a5, 279f
                  addi         s3, zero, -6 #init loop 0 counter
                  addi         s7, zero, 18 #init loop 0 limit
sub_3_11_0_t:     sltu         a6, t4, a1
                  addi         s3, s3, 6 #update loop 0 counter
                  beq          s3, s7, sub_3_11_0_t #branch for loop 0
                  srl          tp, s10, s11
                  auipc        a6, 919768
                  bge          s0, t2, 270f
                  blt          s0, s1, 269f
                  bgeu         a2, s10, 272f
                  sll          ra, tp, s1
                  sra          s10, s6, gp
269:              slli         a5, zero, 31
270:              sub          s6, zero, t3
                  sll          s9, s7, t3
272:              bge          s10, t1, 281f
                  sra          s8, ra, s0
                  ori          a5, a0, 1460
                  xori         t1, a3, 815
                  sra          s3, s9, a7
                  bltu         s11, s9, 294f
                  bltu         t6, a1, 295f
279:              auipc        s1, 859016
                  bltu         t3, s6, 285f
281:              lui          s0, 691907
                  auipc        t2, 465332
                  sra          a3, s0, a5
                  bge          t4, a1, 297f
285:              lui          s3, 456812
                  xori         a2, zero, -1138
                  bgeu         gp, s4, 293f
                  srai         a7, s4, 23
                  addi         a2, tp, -1370
                  srai         t5, s0, 30
                  bge          t0, a1, 296f
                  lui          s1, 254680
293:              blt          s10, t5, 297f
294:              ori          s0, s6, 971
295:              and          a2, s2, a5
296:              ori          a6, t6, 1707
297:              slli         s1, a1, 25
                  sub          a5, a2, s1
                  addi         zero, a1, -1736
                  slti         a2, a1, -462
                  addi         t2, zero, 8 #init loop 1 counter
                  or           s3, t0, t5
                  slli         t3, s4, 30
                  ori          s9, t3, -1361
                  addi         a5, zero, -8 #init loop 1 limit
                  slti         a1, tp, 1837
                  srai         t3, s10, 10
sub_3_6_1_t:      andi         s0, s4, -431
                  sltu         s2, s8, t4
                  addi         t2, t2, -6 #update loop 1 counter
                  ori          s5, s7, -1566
                  xor          s4, t2, s9
                  addi         t1, zero, 6 #init loop 0 counter
                  slt          zero, s10, t6
                  srli         s10, s11, 0
                  sra          gp, s4, t5
                  add          s1, s6, s4
                  xor          s4, s5, a2
                  addi         sp, zero, 16 #init loop 0 limit
                  nop
                  slli         s4, a1, 25
sub_3_6_0_t:      sltiu        s2, s10, -1927
                  andi         s1, zero, 1359
                  addi         t3, gp, 1289
                  sll          gp, a7, s1
                  xori         t3, t2, -684
                  sra          s4, s1, a0
                  addi         t1, t1, 3 #update loop 0 counter
                  bltu         t1, sp, sub_3_6_0_t #branch for loop 0
                  addi         a2, s3, -923
                  andi         a2, s11, -706
                  slti         s2, gp, -735
                  slli         t4, s6, 1
                  bge          t2, a5, sub_3_6_1_t #branch for loop 1
                  lui          a1, 998395
                  bge          s1, t0, 314f
                  add          ra, a5, s8
                  auipc        sp, 791674
                  srl          s9, s2, t2
                  lui          s0, 274048
                  nop
                  srai         s7, ra, 7
                  slli         a7, sp, 3
                  add          t1, a6, sp
                  ori          t3, tp, 351
                  bltu         s1, t0, 324f
                  sra          t3, s0, s11
                  slli         a3, a7, 25
314:              sub          s0, s1, gp
                  bge          t0, a2, 328f
                  lui          s10, 130126
                  srl          a6, a2, ra
                  xor          s2, t2, ra
                  srai         s11, a0, 25
                  srai         t5, a2, 15
                  or           s11, s2, tp
                  sra          a1, s1, ra
                  ori          t5, a6, 737
324:              bne          t0, s9, 341f
                  auipc        s5, 606248
                  auipc        s2, 139973
                  bge          a7, t4, 337f
328:              bltu         ra, a3, 333f
                  addi         t3, a4, 1271
                  bgeu         t1, s0, 340f
                  sltu         s10, a3, t2
                  xor          t2, t5, s0
333:              auipc        s7, 1023145
                  add          gp, sp, t0
                  ori          zero, s1, 1308
                  slt          s5, s4, a4
337:              addi         s3, t5, 1163
                  sltu         gp, s8, a4
                  beq          tp, sp, 359f
340:              ori          s6, t3, 1386
341:              sub          a5, sp, t5
                  slli         s3, t2, 10
                  blt          t5, a6, 347f
                  slti         s6, s2, 378
                  lui          a1, 770345
                  sra          s2, s11, t5
347:              srl          t5, s1, t3
                  srl          gp, ra, ra
                  sub          s6, s4, s2
                  auipc        t5, 852733
                  sll          zero, tp, s4
                  ori          a5, a2, 1089
                  sra          s4, t2, tp
                  andi         t0, t5, -1425
                  andi         a6, t1, -102
                  or           ra, t0, a7
                  addi         t0, s5, -1309
                  sltu         s6, zero, s3
359:              srli         s9, s5, 5
                  beq          s8, a6, 377f
                  srl          s6, zero, t1
                  beq          a1, sp, 368f
                  sub          a3, tp, t5
                  or           s6, s2, gp
                  srli         a1, t6, 17
                  addi         s4, zero, 6 #init loop 1 counter
                  addi         a6, zero, 6 #init loop 1 limit
sub_3_13_1_t:     slti         s5, ra, 442
                  addi         s4, s4, -2 #update loop 1 counter
                  addi         s8, zero, 5 #init loop 0 counter
                  addi         t4, zero, 12 #init loop 0 limit
sub_3_13_0_t:     auipc        s0, 476530
                  addi         s8, s8, 8 #update loop 0 counter
                  bltu         s8, t4, sub_3_13_0_t #branch for loop 0
                  bgeu         s4, a6, sub_3_13_1_t #branch for loop 1
                  sub          s3, ra, s5
                  srai         tp, a0, 23
                  xori         s6, t4, 267
368:              xor          s6, tp, a6
                  andi         t4, s2, -527
                  add          a1, t5, a7
                  sll          zero, s0, a7
                  sra          s6, t4, a0
                  andi         tp, s0, -469
                  beq          s0, s5, 385f
                  andi         s3, a2, -1197
                  addi         t3, s10, -1635
377:              sub          s5, s10, t0
                  add          tp, s11, t3
                  auipc        a1, 89000
                  addi         s6, s8, -1772
                  bne          s7, t1, 382f
382:              bgeu         a0, t6, 396f
                  andi         s2, s5, 1091
                  ori          t1, s2, 241
385:              slti         s5, s0, 313
                  srai         s2, t3, 30
                  bge          a6, t1, 404f
                  nop
                  sub          s1, s2, ra
                  lui          s7, 429677
                  sltiu        t5, a7, -462
                  add          s11, a7, s8
                  sub          s9, s4, tp
                  bge          a6, s3, 413f
                  bne          a0, s4, 396f
396:              bltu         s3, a1, 401f
                  slt          s6, s2, a5
                  auipc        a1, 889302
                  sltu         s9, a4, s5
                  bge          s6, a6, 404f
401:              sub          s5, t0, s3
                  add          t0, sp, a1
                  sra          a1, a2, s4
404:              slt          t3, t1, a0
                  sltu         a7, s1, t6
                  blt          sp, zero, 412f
                  sub          s3, tp, tp
                  auipc        t2, 70217
                  bltu         t6, a7, 418f
                  sll          s11, a3, a3
                  srl          s6, a2, sp
412:              sub          t0, s0, a1
413:              auipc        ra, 306623
                  nop
                  auipc        a3, 704829
                  addi         s2, zero, -1906
                  sra          s6, s5, t6
418:              bge          sp, t4, 429f
                  xori         s4, sp, 134
                  ori          s3, t2, -1293
                  bge          tp, zero, 438f
                  nop
                  blt          s8, s3, 430f
                  sltu         s1, tp, t6
                  or           s6, sp, s11
                  andi         gp, t0, 1462
                  xori         s2, s9, 1204
                  ori          s8, s9, 756
429:              sll          s6, a2, a6
430:              sub          a5, t1, s3
                  sub          tp, s2, s4
                  slli         a3, t6, 11
                  sltiu        a6, sp, -1993
                  srli         s2, a2, 27
                  srl          a6, a7, t1
                  nop
                  and          a3, t4, s7
438:              sll          s1, s9, s3
                  sra          s8, s11, a2
                  sub          t2, a3, s0
                  or           s4, s7, t2
                  xor          a6, zero, a4
                  srai         s7, s8, 8
                  sltiu        a5, s3, -605
                  srl          s4, zero, s10
                  sra          s11, s1, s5
                  blt          a5, a0, 455f
                  bltu         s9, a0, 454f
                  or           t0, zero, s7
                  xor          s5, a6, sp
                  ori          a7, a4, -843
                  or           a5, a3, a7
                  bgeu         s2, a2, 456f
454:              xor          t1, t1, s7
455:              xori         a6, a5, -1525
456:              xor          gp, t2, zero
                  auipc        a7, 432078
                  beq          a2, s10, 475f
                  blt          a3, a5, 472f
                  or           a5, a5, s9
                  srai         t1, t0, 7
                  sltu         s9, t2, t1
                  nop
                  sltiu        s5, s7, -1244
                  srl          s2, gp, a5
                  beq          ra, s7, 486f
                  nop
                  srai         s1, a3, 3
                  slt          s9, s5, s3
                  bne          sp, s2, 480f
                  sub          s2, s1, s6
472:              xor          a6, a2, a7
                  blt          ra, t2, 478f
                  slt          s8, s2, a3
475:              srli         t2, a3, 10
                  srl          s4, gp, t3
                  bge          a0, t0, 496f
478:              sltiu        gp, ra, 304
                  slt          t2, s9, s10
480:              sra          a7, a0, s2
                  sltiu        s5, s11, 481
                  and          gp, ra, a5
                  bltu         s3, s0, 490f
                  auipc        t0, 375896
                  add          a6, s5, a7
486:              nop
                  bne          s11, s2, 491f
                  bge          gp, s5, 489f
489:              sub          a5, gp, zero
490:              sra          s2, s5, t2
491:              srai         s4, t0, 30
                  sra          t5, t1, s7
                  slli         a2, s2, 23
                  slti         s7, a1, -1769
                  bge          t0, t3, 499f
496:              srl          a5, sp, a4
                  add          t2, a5, a7
                  sltu         gp, a0, a3
499:              sltiu        t2, a4, -2014
                  or           s10, ra, tp
                  sltiu        a5, zero, 1289
                  srl          s4, s2, s3
                  slt          t4, s5, a2
                  srai         a6, t1, 9
                  nop
                  ori          s7, zero, -713
                  sra          t5, a6, s1
                  beq          s7, t1, 519f
                  xor          ra, a5, a1
                  blt          t2, a6, 527f
                  nop
                  xori         s3, s5, -1072
                  lui          t1, 33617
                  blt          a0, s8, 517f
                  srl          a2, s1, a7
                  beq          zero, sp, 517f
517:              slti         t5, a6, -1856
                  slti         t5, a5, -1761
519:              sll          sp, s6, sp
                  lui          a5, 979045
                  slti         tp, a1, -1271
                  add          sp, s9, t2
                  addi         gp, t1, -483
                  blt          a1, gp, 532f
                  addi         s7, gp, -338
                  bgeu         t4, s0, 535f
527:              sltiu        zero, a0, -1944
                  sltiu        s1, t3, 123
                  sub          s9, a5, s0
                  sltu         s5, t5, a7
                  slli         s0, tp, 25
532:              beq          a1, s2, 543f
                  bltu         sp, s5, 539f
                  blt          zero, sp, 544f
535:              xor          s1, a0, s8
                  add          a3, tp, s7
                  sra          s10, a5, t5
                  ori          t1, t4, -1849
539:              slt          t2, zero, a3
                  lui          zero, 476648
                  slt          a2, t0, ra
                  slti         t0, gp, -1701
543:              addi         s5, s3, 1260
544:              bgeu         t0, a5, 550f
                  addi         s3, t1, 1563
                  bge          s1, a4, 552f
                  bge          a7, a2, 560f
                  bne          s10, a7, 552f
                  or           s1, a4, s10
550:              blt          t0, s7, 567f
                  slt          t2, sp, s7
552:              sll          zero, t6, a6
                  nop
                  lui          a3, 69405
                  nop
                  sll          tp, t3, a2
                  addi         s6, sp, 1389
                  srai         s5, s6, 0
                  srli         s4, gp, 0
560:              auipc        a6, 814951
                  slli         a6, s9, 3
                  slli         gp, t6, 20
                  sltiu        a6, a7, -201
                  sub          s2, zero, s7
                  ori          t1, t2, 1857
                  blt          t6, tp, 583f
567:              bltu         s7, s10, 581f
                  ori          t0, a5, 1413
                  add          zero, a5, a5
                  sub          t1, s9, t2
                  srai         t2, s7, 4
                  bgeu         s4, t2, 578f
                  bne          s7, t6, 578f
                  beq          s11, t3, 579f
                  or           sp, s7, t2
                  slti         sp, t1, -1383
                  add          ra, s2, tp
578:              blt          t1, s4, 591f
579:              add          zero, s9, s7
                  srli         sp, s11, 6
581:              sll          s10, a6, s6
                  slt          t2, s2, s4
583:              ori          a6, t6, -2007
                  sll          zero, s8, t4
                  blt          t5, t0, 602f
                  andi         a1, s10, -757
                  sll          ra, s5, t4
                  slli         s6, a6, 11
                  addi         s4, t1, -462
                  beq          s11, s5, 604f
591:              andi         s6, s5, 460
                  ori          s7, a2, 382
                  bne          s1, s5, 604f
                  add          a7, a6, s7
                  and          a7, tp, s0
                  bgeu         sp, s6, 602f
                  sra          t2, s9, s10
                  xori         a3, s2, -583
                  sra          t4, a4, s8
                  bltu         a5, s1, 608f
                  srai         a1, gp, 5
602:              slti         s5, s9, -931
                  blt          tp, a1, 612f
604:              sub          s11, gp, s9
                  bgeu         a7, t6, 609f
                  slt          s7, t2, a6
                  xor          s11, a5, a1
608:              blt          t3, a2, 621f
609:              addi         s11, s1, -575
                  xori         s4, s10, 307
                  slti         s10, s3, -1523
612:              add          t3, a2, s0
                  xori         s1, s9, -1509
                  slt          sp, s8, t6
                  srl          s2, s1, s3
                  bne          sp, zero, 622f
                  ori          gp, s0, 787
                  slt          zero, t4, t2
                  srai         s3, s1, 11
                  srl          t0, s11, t0
621:              and          sp, t1, a6
622:              add          s9, zero, s3
                  slli         t3, t4, 13
                  or           s6, s6, sp
                  auipc        a6, 277272
                  bgeu         a5, s11, 631f
                  bgeu         a3, s11, 634f
                  bltu         t1, a4, 634f
                  blt          s0, a7, 639f
                  bgeu         t4, s10, 649f
631:              xori         t4, tp, 876
                  sltu         a6, t6, s0
                  srl          s1, gp, gp
634:              bltu         s11, a5, 639f
                  srli         a7, tp, 24
                  sll          a7, t5, t3
                  bge          t5, s7, 654f
                  sltu         s2, a2, zero
639:              xor          s11, t1, t0
                  xor          tp, a7, a2
                  sra          gp, t0, s5
                  bne          t1, s1, 662f
                  srl          tp, s6, a5
                  lui          s1, 765988
                  xori         gp, a4, 431
                  slti         t5, s5, -954
                  slt          zero, gp, s0
                  bge          a1, a7, 652f
649:              srl          tp, s6, ra
                  lui          tp, 467314
                  srai         sp, t4, 3
652:              and          s2, s0, sp
                  bne          a0, t5, 656f
654:              sltu         sp, a2, s5
                  sub          s9, s7, t4
656:              and          t5, s9, s7
                  bgeu         s10, sp, 662f
                  bltu         s4, s5, 671f
                  bltu         a6, sp, 676f
                  slt          t0, a4, a6
                  add          s2, s2, t2
662:              sltiu        a5, s2, 828
                  xori         t4, a6, -148
                  bne          zero, s10, 677f
                  nop
                  andi         s1, t4, 1617
                  slli         zero, s6, 11
                  srai         s9, s3, 22
                  slli         a3, a5, 29
                  blt          a0, tp, 680f
671:              and          zero, tp, s1
                  bge          s0, a6, 673f
673:              srai         a7, a5, 10
                  srl          a7, s3, s7
                  slli         s3, s9, 11
676:              andi         t3, t5, -839
677:              auipc        ra, 513906
                  auipc        s4, 329980
                  sltiu        s4, a5, 1439
680:              and          s3, sp, s7
                  or           s1, s6, a5
                  nop
                  auipc        t5, 709952
                  sltiu        s9, t1, -1886
                  sltu         a2, a6, a1
                  andi         s1, s8, 374
                  sub          zero, a0, gp
                  blt          t4, zero, 692f
                  srli         s6, s10, 4
                  xor          t4, a4, s9
                  sltiu        t2, tp, 1397
692:              slt          s2, sp, a0
                  addi         s3, t0, -169
                  bge          s5, s2, 705f
                  andi         a5, a6, -1354
                  xor          t3, tp, t5
                  ori          a7, zero, -1879
                  lui          t0, 977130
                  srl          a6, ra, s6
                  addi         s7, sp, 1860
                  sltu         a6, s3, t4
                  lui          a1, 400446
                  lui          s3, 831447
                  and          a7, t4, tp
705:              bltu         s11, s10, 711f
                  xor          zero, tp, a7
                  bltu         t4, t6, 708f
708:              srai         a5, s1, 24
                  addi         a5, ra, -1958
                  nop
711:              bge          a6, s0, 728f
                  slti         t3, s1, 766
                  or           s4, s9, s6
                  beq          ra, t1, 718f
                  bgeu         s9, a7, 734f
                  addi         s4, a3, 787
                  slli         a3, t3, 26
718:              ori          t4, s0, 2009
                  sub          zero, t3, tp
                  bltu         a7, tp, 723f
                  slli         s4, s2, 24
                  bltu         t3, t2, 735f
723:              beq          s9, s2, 740f
                  xori         s9, s8, -1963
                  lui          a3, 285321
                  sub          a1, a4, s3
                  sra          s6, s7, a7
728:              sll          s0, a2, s8
                  bge          a6, sp, 742f
                  auipc        a6, 976572
                  ori          zero, t4, -1855
                  nop
                  bne          s8, a2, 739f
734:              sltu         s4, a1, a6
735:              beq          s0, s8, 736f
736:              sll          a2, s9, ra
                  addi         s4, t2, -1848
                  auipc        a2, 188604
739:              or           t0, a7, s5
740:              sll          s4, s4, s2
                  ori          tp, t4, -1748
742:              addi         s3, t1, -688
                  srl          s4, tp, tp
                  bne          t5, a7, 749f
                  slti         s10, ra, 1656
                  bne          tp, ra, 763f
                  srai         s0, s9, 21
                  sra          s9, s10, a1
749:              or           t0, s4, a7
                  and          a1, s3, t0
                  xor          s6, s0, a4
                  beq          a7, a1, 761f
                  bne          tp, s4, 761f
                  lui          s9, 101240
                  sub          s3, a3, t5
                  or           gp, a2, t0
                  bltu         a0, a1, 764f
                  slli         t3, sp, 21
                  slli         a7, t0, 19
                  xori         t3, a0, -1983
761:              sltiu        s4, s10, 862
                  nop
763:              auipc        s7, 631910
764:              sltu         a7, a4, s8
                  nop
                  add          t5, a2, a3
                  slli         s0, ra, 27
                  lw           ra, 4(a0)
                  ori          s2, a3, 218
                  sub          t5, s6, a4
                  addi         s0, a7, -1805
                  or           sp, zero, ra
                  slt          s3, s6, s9
                  addi         a0, a0, 60
                  auipc        s8, 987901
1054:             addi x12, x1, 0
1054:             jalr x12, x12, 0
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
.word 0xe59b24d6, 0xda98ab4f, 0xe834040e, 0x1a227e73, 0xfe0302d1, 0x1f95287d, 0xf93c519e, 0x2138ca80
.word 0x9fbec810, 0x4b4828dd, 0x4348d4e5, 0xe18d744d, 0xdde931aa, 0xd640f447, 0x0418f4a5, 0x42ebf1bd
.word 0x23b2e500, 0x81ccfc92, 0x2f48e7e5, 0xb66ad893, 0x6f977445, 0xc7c6e00d, 0x8062875c, 0xcaf856e7
.word 0x50a9f7a0, 0xbcf13193, 0x11f1701e, 0x271a2787, 0x13101c0d, 0xa33d5e28, 0xb2e1df7a, 0xdd46a677
.word 0x85c37a4d, 0xba77b7fc, 0x6ab17b5a, 0xdded59af, 0x3af15423, 0x546f115a, 0x9d3489dc, 0x6b15ec1e
.word 0xaf67408f, 0x9c8cd303, 0x7ef0489e, 0x98af1d7e, 0x3db16566, 0x62159d02, 0x99e210d3, 0xfaa62a6a
.word 0xc9ffd711, 0x910f6f3b, 0x4fc99113, 0x81e3295d, 0xaf033fcf, 0x12853e10, 0xfefc0a02, 0xd1d00439
.word 0xf4d2b1b9, 0xa0e98365, 0x1f828e16, 0x1d930bb3, 0x276bc9c6, 0xf6ed6a66, 0x4304b2b6, 0xaca45924
.word 0x7bc70d6b, 0x4c42a723, 0xdda6f043, 0x8bfddb59, 0xa4df7289, 0x62dfac65, 0xb7ee197d, 0xc26cc124
.word 0xeb400380, 0xbe5d3660, 0x28e5328a, 0xc385b468, 0xde8474e4, 0x4d6d5ae0, 0x5a0aa2e4, 0x880bddc6
.word 0x0f951080, 0x3cbbc4f6, 0xd9723ffc, 0x99f98648, 0x6a303529, 0xd3ede53a, 0xb361e94e, 0x0d62a3db
.word 0x91150484, 0x27dba176, 0xbc72cf4d, 0xd5538838, 0x5e767028, 0x00686b78, 0x2dec5f03, 0xc42c275c
.word 0xca74982b, 0xa4cc1a36, 0x406af0e1, 0xfeb01aa1, 0x44ed1cd1, 0xb80b92f7, 0x89a2d2f3, 0x92dce6c8
.word 0x6325344f, 0xaf07d321, 0x75c13071, 0xf0b92c2a, 0x3b8021bb, 0xbcf4c6bf, 0x7da81886, 0x98869620
.word 0x917ce6bc, 0x3e43b011, 0x569c7bd7, 0x0d90bfe7, 0x5e3353d5, 0xa2b53e47, 0x7f47cd6c, 0xf9af0fb5
.word 0xfcc9be96, 0xa663af6c, 0x932904c9, 0x7dc01b49, 0x8c61bdfc, 0x5e8825b4, 0xa0fdf3c4, 0xed7e8d4d
.word 0xfbd81dcd, 0x946c39b0, 0x563246ea, 0x978a58f4, 0xb61e0f93, 0x6b6acb45, 0x588a5093, 0xf458139d
.word 0x69bf009b, 0xa51e4798, 0xbb7aad5f, 0x9fa505de, 0xeb19f644, 0x6d0e4de4, 0xee54cf49, 0xf4dd03a3
.word 0x7622f37d, 0x11486a1a, 0x5414a553, 0xd205c24b, 0x5c7dd2cf, 0x6a5d5f6c, 0xc7a15c33, 0xf70a5800
.word 0xb4296f7f, 0x1769a8ad, 0x0ad07a23, 0xe70fc6cc, 0x870dca4f, 0x1589711b, 0xcf297fb7, 0x6422e211
.word 0xe6d6a77c, 0x9a1f186b, 0xe0fb6a0c, 0x036a15ad, 0x3b3498bd, 0x33d5316e, 0xcb05c994, 0x1f85c9c1
.word 0x5b209363, 0xdc749601, 0x54a0c5af, 0x12e1855e, 0xfded4e6d, 0xadb77aed, 0x110e1b19, 0x5aaadebc
.word 0x67607d52, 0x7f26a383, 0x746ff6f3, 0x61f43ebe, 0x2262c900, 0x03f69162, 0x40490412, 0x0302d4af
.word 0x5399693b, 0x73b37179, 0xe98ece93, 0xf3c2ed8d, 0x90145250, 0xb2f9968b, 0x1da7ca11, 0x601601f6
.word 0x5c9578a6, 0x3af911e7, 0xb8d3d1c1, 0xe016cf9d, 0xd113ad06, 0x876a8d23, 0x63bb86fc, 0x5d692a1d
.word 0xc7f90340, 0x199b6698, 0xbfaf56de, 0xbcb83f61, 0x08865a08, 0x7ceb1130, 0xbd9b2a93, 0x3abb76ec
.word 0xfd47cf44, 0xae2977a0, 0xb59ea544, 0x5987804b, 0xc75935cd, 0x122f962a, 0xcd1dceb4, 0xdc080fa7
.word 0x68d5bbc5, 0xa046b489, 0x13f98799, 0x7342fbff, 0xe576c42b, 0xde416da0, 0xe28d4cad, 0x04747e81
.word 0x8c6b6dd0, 0xc3196bbf, 0x9d4e0da7, 0x4964883f, 0x37d81f13, 0xa611c39d, 0x51772ce9, 0x75063940
.word 0x52db862c, 0x9eafd551, 0xfc2d2be2, 0xf9dfb6f1, 0x57aea246, 0xb1aeacdd, 0xc06bdb2d, 0x853c61f6
.word 0x12a9e98b, 0x87776780, 0xcdb8e86d, 0x50d5f61d, 0x62de327a, 0x255532cb, 0x29fdc879, 0x21d0559d
.word 0x34f2150e, 0x73e8ba22, 0x6487ddfe, 0x5fd674b8, 0x6a7d46a5, 0xb26476fe, 0x97a3bb95, 0x0fdb44e6
.word 0xc18ba83b, 0x6c33a9d6, 0xe1ed29d1, 0xc5038545, 0x6ca43435, 0x1292335f, 0x41186615, 0x8192fcdc
.word 0x7a3f8f94, 0x25b90243, 0xdbb655e2, 0x550a6fd3, 0x5efbd484, 0x39e4eab0, 0x755e3bc3, 0xedba16d9
.word 0x21ff9b9d, 0x0772056b, 0x234657df, 0x958247f8, 0x0c421c70, 0x1839a273, 0x95614f5d, 0x1684e5e7
.word 0x6e6cfd2f, 0xd983f3a2, 0x4b095e46, 0x700f5ca4, 0x9ebb6bb4, 0x54962e59, 0xa514c961, 0x8731a928
.word 0x65132c5a, 0xc1a6297f, 0xc384fe53, 0xe787c4f1, 0x1ad2bf6b, 0xcd1a0316, 0xa69b2146, 0x3b9789fe
.word 0x72c37660, 0x3f59234d, 0x694f6dbf, 0x6a9b1442, 0x37c63984, 0xdea40f2d, 0x1a65e4a4, 0x19a0dec2
.word 0x7a34171a, 0x81a1ff21, 0x980d33d9, 0x0764c5d1, 0x0547477f, 0x60905979, 0x2ad56266, 0x735ba239
.word 0xd1eccc3a, 0x1a21aed3, 0x64602287, 0x79c25b30, 0x75dc4a05, 0x5837ca6e, 0x688dff4b, 0x856b4af7
.word 0x5b14d55c, 0xdcb1c108, 0x2dd5783e, 0xd83f4988, 0xee83c0ad, 0xd30dfcd4, 0x01d80b05, 0x92efe99f
.word 0x84f70285, 0x0a32787b, 0x0a091618, 0xf3eec025, 0x689911ea, 0x4358edba, 0xc7e190ca, 0xcf77e50a
.word 0xa0d34e25, 0xb93116bd, 0x4970e42e, 0x20286b66, 0xffffc63e, 0x4d6c997e, 0xc3d2dffc, 0x81a1fef3
.word 0x726a9e85, 0xdd1f262a, 0x7a56aabc, 0x2e3e1acb, 0x8b6476f2, 0x45d772c3, 0xb6784d53, 0x81d20e6b
.word 0xd226da6e, 0x567dfbde, 0xbe61e015, 0x429b1638, 0xea756ed3, 0x77e0f28d, 0x1ee26ca3, 0x6b0b25ad
.word 0x60349512, 0xe12f5f67, 0xaa626782, 0x4af44881, 0x33c42bc7, 0x6f54d064, 0xaff0b6c4, 0xd22da9e8
.word 0x92d79a22, 0x777c1408, 0xde713ae0, 0xc34b2267, 0xededf860, 0x83de0212, 0xdb2ac10a, 0x18e62bab
.word 0x7bd72793, 0x0c06db33, 0x243f35cb, 0x1bdd5eaa, 0xa40fc386, 0xf7070de9, 0x5e873cb8, 0xe9a11c64
.word 0xc17684a6, 0x4a8bdfea, 0x670b35d5, 0xd721617c, 0x4a7073d3, 0x236dc654, 0x4bbb8ed4, 0x399e991e
.word 0x44d0ba6f, 0x3e2a42a8, 0xbfcf0526, 0x31b63a4b, 0xe117bf91, 0x6ab3fc87, 0xbaaf7295, 0x18572c24
.word 0xb2390215, 0xb4fcc7e0, 0x287bffbe, 0x2ce55e7b, 0x1deb7680, 0x40ac7411, 0x4e59c706, 0x67486f0e
.word 0x04d6f688, 0x52a809c5, 0xeee3856f, 0xdbaac953, 0x5d42095c, 0xee97317b, 0x5a4af55f, 0xc3298a54
.word 0x2d191348, 0xea95dfef, 0x75c73b0c, 0x3af47052, 0xd19bc2d3, 0x4f0ca4af, 0xae1719f1, 0x35c915dc
.word 0xce1976f2, 0x1469884d, 0x94398f0c, 0x65182ce9, 0x853037b0, 0x5494da95, 0xcda9a0cd, 0x46afca22
.word 0x3413367e, 0x23b49ebe, 0x6accb4df, 0xd7adf10b, 0x6702542d, 0xb195e54f, 0x9ceb6cfd, 0x2ce74a60
.word 0x254dd89d, 0xd89d55cc, 0xd7b4c935, 0x0c8c19a8, 0x914df446, 0x1ad802cd, 0x9c97e2d2, 0x714994fe
.word 0xea9c9a7c, 0x9d687c40, 0x6379220d, 0x28ee7e0f, 0xd309e60b, 0x0bb2c30f, 0x8a190432, 0x94e464b5
.word 0x24e5982e, 0xe70b0247, 0x138ee665, 0xc7d696ef, 0xdb6d12b5, 0x7e0ce256, 0x714d5571, 0x0a56ae71
.word 0xb0d4baa3, 0x98c3df17, 0xf2241189, 0x4cc5cf4c, 0x90cfdc51, 0xd925d74d, 0x3721a0f4, 0x27ace9dc
.word 0x09a74934, 0xf296ac79, 0xf0421fc3, 0x51aef4eb, 0x90deae8a, 0x3e2b71cc, 0x9021b2b1, 0x8dab8e72
.word 0x17c2bc73, 0x04ee02dd, 0x6c0ebbf5, 0x8cea5424, 0x238a8609, 0x0630adb9, 0xb7ce3b69, 0x76cb9af7
.word 0xba63826e, 0xada41387, 0xfb1eb47e, 0x56639731, 0x512734dd, 0x4dcbe6db, 0xed57cd60, 0xf4bcb10c
.word 0xb0612514, 0x59c30201, 0x5de5ebac, 0xaf75b153
.section .region_1,"aw",@progbits;
region_1:
.word 0xf4a0eabc, 0x5f694ef3, 0xc05258a0, 0x0f944659, 0x406d8450, 0x8a05963b, 0xf707e8bf, 0xe35e04c0
.word 0xf3e6219e, 0x21f99d37, 0x38a48cfe, 0xd48a7e0e, 0xf1cb8c53, 0x03c09f24, 0xfb17a9c1, 0x81cb2f64
.word 0x864fdf45, 0xe3f89bf7, 0x32bc51b9, 0x49b3ab8e, 0x1f049b0f, 0x61510dcf, 0xff964e5e, 0x6eadbe2c
.word 0x6f3a88e9, 0x67d6a4ba, 0x58490f5a, 0x750991f4, 0x418abc69, 0x492a6850, 0x018373e0, 0xe3bce7f9
.word 0x7fd8a564, 0xe9ee1eaa, 0x24ccbf39, 0x73e6e1b8, 0x9bb230c8, 0xb4ea5754, 0x84a13b1e, 0xe20b16bc
.word 0x37f56980, 0x0f24f073, 0x10552d33, 0x753adf9d, 0xc3f4af79, 0xacbe3562, 0x83902491, 0x09e37259
.word 0x44bc5dfb, 0x677206a4, 0xe6a3f5ab, 0xd8af0c53, 0x0d53a705, 0x8f5c515a, 0x0f948b6b, 0xbb304f4c
.word 0xe3bdb003, 0x89342f62, 0x2c813a77, 0x22918a3e, 0x86b5ab5a, 0xa02827eb, 0x4b180b06, 0xcf215d3c
.word 0xac719c89, 0x50861746, 0xa6d7bbba, 0x334d1057, 0x6221249a, 0x50fcc6a0, 0x152cd3ce, 0xcc021bb2
.word 0x833ecb13, 0x3a83b195, 0x77d0ba32, 0x3f2f374d, 0x93526d0d, 0x2841dbb6, 0x7c257f46, 0x971f65d8
.word 0xd0c7a9e5, 0x36a14940, 0x7adb8201, 0xebc7eb3a, 0x803e40c4, 0x77968a59, 0x4dfd10e5, 0x5303d116
.word 0x0e8237d7, 0xa925276e, 0xe05c24e0, 0x9eb8918a, 0x337d9bea, 0x72e0b7e5, 0x3a07ddb2, 0xb7a4697f
.word 0xd9a6f850, 0x3c99f070, 0x51a4d73a, 0x7e44a624, 0x707b7634, 0x33454abc, 0xf4ab05de, 0x4a47d509
.word 0xa0a3c6f0, 0xfc60d256, 0x92499919, 0xded215d8, 0xc70f71de, 0xbfe467c8, 0x22bc03b3, 0xbf193191
.word 0x957fbdf5, 0x95ba6cc4, 0x91d6bd2f, 0x745f8bb5, 0x72ddfe23, 0x98a3b63c, 0x9a7491f0, 0x591d7b52
.word 0x06dbdddf, 0x6efa72c1, 0x2f077d50, 0x8a248e89, 0x367ab9f1, 0x4402b16c, 0x83ca143d, 0x4a2bc2c8
.word 0xd251f072, 0xab1d40f2, 0x7796b44e, 0x2f8d7b11, 0xa5f26cf2, 0x01eb826d, 0xe858199e, 0x7aeba65c
.word 0xab7c0e7f, 0x0f8adae6, 0x5cb48769, 0x192ce10e, 0x11a59a02, 0xe95a0eb8, 0xe4d5922c, 0x94b81609
.word 0x0f7e5cf4, 0xe8fa5573, 0x2a2ab75e, 0x8204f382, 0x0441d124, 0x4bdaee97, 0xe6e133f5, 0xcf465487
.word 0x24e82692, 0xf21450ea, 0x8efc13d5, 0x9dba849c, 0x82837dd5, 0x42d26010, 0x8a0b31be, 0x053b653d
.word 0x4fdf3048, 0xda6c2859, 0x5f4d1dd9, 0x2afe09b0, 0x950f47fc, 0x184aa2f1, 0xb871c81f, 0x4bb796d6
.word 0xa6d7aada, 0x0cc2546b, 0xef1c76f3, 0x8880e420, 0x7e20ca4f, 0x08891ae1, 0x19129535, 0x7d32baea
.word 0xb1687c4d, 0x8a7b4440, 0x86b59e43, 0xeae4b3c0, 0x9fc1891a, 0xea6c6ea9, 0xb28f8ffb, 0x3d53fd16
.word 0x3c4cad0e, 0x9dfa675f, 0xb71e5dc2, 0x4b2a6f8d, 0xb594a2f5, 0x93bf1c07, 0x33ca235b, 0xf92ed9b7
.word 0x5d095726, 0x1eb2732f, 0xb2b7d870, 0x9abf10f8, 0x3b32a1e3, 0xb7380902, 0x65890148, 0xfdc00f15
.word 0xdb8fb1ea, 0x6093339f, 0x60e9c5c4, 0xc8310816, 0x5109f25b, 0xdfa55f2b, 0xd49199b0, 0x1e02707f
.word 0xe5c9962d, 0xea17c02c, 0xa42002b4, 0xb97457d0, 0x21798117, 0x57dd46b5, 0xa04c01eb, 0x72056e41
.word 0xe99e0e8e, 0x39465631, 0xc28de08a, 0x003a3c4d, 0x215ab418, 0x340cc11a, 0x29307b38, 0x9ad7f78c
.word 0x09a269a7, 0xbb67cd76, 0x13e5f4f5, 0xbc23fb6a, 0x42e3617e, 0x6fe5af63, 0x070bbfef, 0x10c240fc
.word 0x5b09fa78, 0xffced6d5, 0xb1c7bbe4, 0xffa83c16, 0xaa054e0d, 0xd474126a, 0x71e58fdd, 0x417692e7
.word 0xf6a17ffb, 0xf87e09fb, 0x5b54f349, 0x00038be1, 0x83452daa, 0x25104330, 0x00aa1083, 0x2929997b
.word 0x09933c48, 0x9c348b57, 0x32c2942d, 0x206ea6eb, 0xc6589937, 0xaac6ddd9, 0x66f796d5, 0x555f9233
.word 0xc5b98176, 0x3786db89, 0xa3cfe3e1, 0xb4fb42f1, 0x8c9e7dea, 0xc4e21a6f, 0xbaf25a5f, 0x6cc542ac
.word 0xbd808b18, 0x845f11a1, 0x614d5199, 0x33a58b82, 0xf2d9a482, 0x66876c18, 0x12a2aa8d, 0x5d0213b8
.word 0x6a77a90d, 0xea7d83ef, 0x78669e40, 0xea3c8383, 0x2daaf7ae, 0x55703c37, 0x17dbc4eb, 0x1e46d965
.word 0x6fd9fec8, 0xa97c30b8, 0x108efae2, 0x6fefc581, 0x7e3b9b84, 0x6b8e08ca, 0x2661f0ad, 0xdce548e1
.word 0xf9e5a600, 0x1cf3a6e5, 0x86e18e76, 0xf474a905, 0x1f6b5d04, 0x016f69ce, 0x2901436d, 0x8424ce25
.word 0xc93fe88e, 0x22f7f70f, 0xf8884386, 0xd5f68da6, 0xfdb94255, 0x0fdb74d6, 0x177e68ea, 0x1e24dd19
.word 0xefffa5df, 0x39a7cbc2, 0x9f55aca0, 0x2c799429, 0x33df68e3, 0x512fddad, 0xccdbb091, 0x9f1b10f1
.word 0xd638a898, 0x7fdfcb18, 0xb33f97ee, 0xd2d6cc63, 0xa6e0550f, 0xd8e99c32, 0x0bb7d3a1, 0xa76b3329
.word 0x448fc2f5, 0xeb94bd71, 0x88424fe2, 0x098ff0a2, 0x2f73e9c5, 0xf0230cde, 0xda205448, 0x02067524
.word 0x34a9407a, 0xb8a85761, 0xaf5abe4f, 0x70cdde26, 0x45203c7c, 0xc31fc8ae, 0x97bf39ba, 0xb1ab0730
.word 0xf97795a3, 0xbacdbbcb, 0x491be472, 0xf4a1681c, 0xf5a45609, 0x385b8d8b, 0xa51f50e9, 0xdbd0bae6
.word 0xd688eb50, 0x1b23535a, 0x560ae03a, 0x1bf06d0d, 0xdbdb2d38, 0xad137526, 0x8d22cf3a, 0xcf732572
.word 0x8a2ebe20, 0xb0ef85b0, 0xb6e0974f, 0xd0363423, 0xc51b17ad, 0xf2a42327, 0x14d86dbd, 0x28e196c7
.word 0x0c35f530, 0x0def13c1, 0x452986a5, 0x0e8073ed, 0x91458cda, 0xd87206b5, 0xbca35c4b, 0xd5d09314
.word 0x12167112, 0x04ac5598, 0xe7406d8a, 0xa521d0a8, 0xcbb753c6, 0x3a9730c3, 0xc497e2e9, 0x8dfbd7a0
.word 0xca20c8a3, 0xf846cf14, 0x3abaca6e, 0xb42a6814, 0x967d1e05, 0x3a4fb1c8, 0x394e429e, 0xa6e2c642
.word 0x7b111101, 0x28201cc9, 0x41f7a66f, 0x0fbd2318, 0x77cbed14, 0x3c6fa81b, 0xd554c919, 0xb7f69d24
.word 0x3d513c36, 0xf6c90762, 0x1a958a6e, 0x2b6d1870, 0xf890ce6f, 0x84c16850, 0x5700cd66, 0x15f40eef
.word 0xa9a158dc, 0x0964079c, 0x6800b0e7, 0xeeda8a0e, 0xaaf46479, 0x6ba2277f, 0xf37075f8, 0x4a196efd
.word 0xd461db35, 0xf6e118c5, 0x4c7a159b, 0x7d3c4eab, 0x102241d5, 0x01d27d24, 0xd05d0ebe, 0x0052ac05
.word 0xea92129a, 0x3f297ced, 0xb3fe3bce, 0xca09e035, 0xd29fde1c, 0xd5665f8d, 0x2a49f477, 0x10d39986
.word 0xbe4257f2, 0x2902b71e, 0x3b4020bc, 0x4c9e7e01, 0xc43481f1, 0x3f794b1b, 0x87843218, 0x1869ad43
.word 0x35d17d1c, 0x083c2f87, 0x3c331b2d, 0x0847e257, 0xf4e83127, 0xbb39bd57, 0xed9340bb, 0x1e96c49e
.word 0xc445bdaf, 0xbae629be, 0xff697656, 0x6bfeb729, 0x7c7a7b67, 0x8e85af0b, 0x79f9a529, 0x685ad6cf
.word 0x1057a5af, 0x4ebaab23, 0xf794b623, 0xcac9a560, 0xcfc41003, 0xa63d6b43, 0x0eb102cd, 0xa9cb3096
.word 0x35b3113f, 0xf0dd8d4b, 0xa2b68036, 0xdcb1df9b, 0x9bc8f558, 0x53c2bc24, 0x0dd1908a, 0x78e79298
.word 0x5dd0dc37, 0x459fd898, 0xb51ee6ea, 0xa3a9d0cf, 0x8164dbaf, 0x16c80661, 0x9935b313, 0x671aff21
.word 0xb0509edf, 0x788775ad, 0x485ece20, 0x6cc3a364, 0x37c30390, 0x6670b3f4, 0x3fa3ea2b, 0xb7116915
.word 0x0f538bb7, 0x5c4431c0, 0x4d2ee285, 0x218ff73c, 0xcb8e5139, 0x28acdde5, 0x65d7e18d, 0x1e5fc5d1
.word 0xd4b3bd6d, 0xc2581d5b, 0xcff0c91a, 0xcdb212d6, 0x3f415d56, 0xaba75bbc, 0x12aad9a4, 0xc9fc7ac8
.word 0x2691bd1d, 0x1c9fec07, 0x9710e45a, 0x46a5132d
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
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
                  add x14, x10, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x10, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x5, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x5, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x5, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x5, x2, ecall_handler
                  li x2, 0x1
                  beq x5, x2, instr_fault_handler
                  li x2, 0x5
                  beq x5, x2, load_fault_handler
                  li x2, 0x7
                  beq x5, x2, store_fault_handler
                  li x2, 0xc
                  beq x5, x2, pt_fault_handler
                  li x2, 0xd
                  beq x5, x2, pt_fault_handler
                  li x2, 0xf
                  beq x5, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

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
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x10, x14, zero
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
                  add x10, x14, zero
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
                  add x10, x14, zero
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
                  add x10, x14, zero
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
                  add x10, x14, zero
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
                  add x10, x14, zero
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
