.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 0
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xfefe271d
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0xb
                  li x5, 0x0
                  li x6, 0xca3db84f
                  li x7, 0xc
                  li x9, 0xe
                  li x10, 0xf55412de
                  li x11, 0xf79ce75d
                  li x12, 0x80000000
                  li x13, 0xf018644b
                  li x14, 0x8
                  li x15, 0xf8451ec1
                  li x17, 0x0
                  li x18, 0xfd512a72
                  li x19, 0x3b2a91f7
                  li x20, 0x38d72763
                  li x21, 0x8
                  li x22, 0x80000000
                  li x23, 0xd8c50287
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0xb2184682
                  li x28, 0xfb1dc394
                  li x29, 0xc41e5ef5
                  li x30, 0xfab6a241
                  li x31, 0x0
                  la x16, user_stack_end
main:             auipc        s2, 103564
                  auipc        s1, 655010
                  and          a0, s8, a6
                  addi         a2, a3, -1018
                  add          s2, s9, s10
                  la           t4, sub_3
                  addi         t4, t4, -436
                  bne          a4, a1, main_j1 #branch to jump instr
                  slt          t0, a7, a2
main_j1:          jalr         s4, t4, 437 #jump main -> sub_3
                  xor          tp, s7, s0
                  la           t3, sub_2
                  addi         t3, t3, 506
                  sltiu        tp, t6, -626
                  nop
                  slti         a1, t3, -1980
                  and          a4, a6, a1
                  nop
                  addi         a2, s9, -1556
main_j2:          jalr         s4, t3, -506 #jump main -> sub_2
                  xor          zero, a7, s11
                  add          t5, t0, s2
                  slt          s8, s5, s4
                  sra          zero, tp, s4
                  la           s7, sub_4
                  addi         s7, s7, 25
                  add          t2, sp, s7
main_j3:          jalr         s4, s7, -25 #jump main -> sub_4
                  la           t0, sub_3
                  addi         t0, t0, -164
                  nop
                  and          t5, s0, ra
                  andi         t4, a3, -394
                  sll          a5, s9, t2
                  sltu         s1, s10, a7
                  add          a1, s11, s1
                  blt          s3, a5, main_j4 #branch to jump instr
                  and          s1, a6, s11
                  srli         s11, s3, 27
                  lui          s4, 195783
main_j4:          jalr         s4, t0, 164 #jump main -> sub_3
                  srli         s10, zero, 12
                  la           a1, sub_1
                  andi         sp, t5, -1534
                  xor          zero, s3, s8
                  addi         a1, a1, 387
                  sltu         zero, t4, s8
                  addi         sp, s0, 309
main_j5:          jalr         s4, a1, -386 #jump main -> sub_1
                  addi         a2, zero, -2 #init loop 0 counter
                  srai         t4, a0, 20
                  slt          s1, s6, zero
                  andi         sp, a0, -516
                  addi         s8, zero, 20 #init loop 0 limit
                  slt          a7, s5, sp
main_0_0_t:       sub          a5, gp, tp
                  and          s6, s1, a5
                  or           s3, zero, a6
                  srli         sp, t0, 17
                  addi         a2, a2, 6 #update loop 0 counter
                  andi         a3, s5, -1055
                  ori          t1, t0, -800
                  bltu         a2, s8, main_0_0_t #branch for loop 0
                  lui          s5, 108747
                  bge          s5, s5, 10f
                  xor          s8, a7, s6
                  bltu         gp, s11, 5f
                  slli         a0, a0, 9
                  slli         s2, a1, 31
5:                lui          zero, 706821
                  slti         s3, a5, -282
                  xor          t0, a5, s6
                  slt          a1, s9, a3
                  slli         t2, t2, 20
10:               add          t5, s3, zero
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            slli         s6, a3, 23
                  ori          sp, s1, 1577
                  addi         a6, a6, -60
                  auipc        t0, 276929
                  sra          s5, a4, t0
                  srai         a1, s2, 11
                  sw           s4, 4(a6)
                  sltiu        t2, s1, 1256
                  sub          a3, t4, t0
                  slti         zero, s10, 928
                  sltu         sp, t2, t3
                  sra          gp, a1, s8
                  sltiu        s1, s9, 1009
                  xor          s10, s0, t0
                  bge          t6, t5, 17f
                  slt          t4, s10, a3
                  bne          s2, s4, 24f
                  xor          gp, a7, zero
                  bltu         zero, s10, 23f
                  ori          s4, gp, 1183
                  ori          tp, s9, 411
                  sub          a2, t4, zero
                  bge          a4, t4, 27f
                  xori         a3, tp, -405
                  addi         t6, a7, -1119
                  bgeu         ra, t0, 33f
                  sub          a2, ra, t3
                  slli         s7, t0, 4
17:               xori         gp, t3, 1194
                  sra          s2, a1, s7
                  srai         s8, a0, 20
                  add          a2, t6, s7
                  bltu         s1, s11, 28f
                  addi         s11, sp, 1434
23:               sll          s3, tp, s7
24:               lui          s11, 641330
                  or           s4, s2, a1
                  sltiu        s4, s5, 1394
27:               bne          a7, a3, 33f
28:               blt          s10, s8, 33f
                  addi         s7, tp, 1937
                  sub          t1, a5, s3
                  slti         s2, t4, 436
                  slti         a7, s7, 1967
33:               or           s10, s8, a1
                  lw           s4, 4(a6)
                  addi         a6, a6, 60
                  or           s9, a2, a4
                  srai         s1, t3, 11
                  sltiu        t1, t1, 1930
                  slli         tp, a7, 26
51:               addi x14, x20, 0
51:               jalr x14, x14, 0
sub_4:            bne          sp, s3, sub_4_stack_p
                  srai         a4, ra, 29
                  slti         s6, s5, 705
                  slt          s3, t3, s3
sub_4_stack_p:    addi         a6, a6, -44
                  or           s8, t2, s6
                  sltiu        a4, s4, -2022
                  sw           s4, 4(a6)
                  slti         s6, t3, -529
                  addi         sp, zero, 5 #init loop 1 counter
                  addi         t2, zero, 3 #init loop 1 limit
                  addi         a1, sp, -1451
sub_4_5_1_t:      add          s2, t1, s10
                  addi         sp, sp, -1 #update loop 1 counter
                  sltiu        a5, gp, -579
                  or           a5, zero, s8
                  addi         s1, zero, 5 #init loop 0 counter
                  addi         s6, zero, 13 #init loop 0 limit
sub_4_5_0_t:      slti         t0, tp, -921
                  auipc        t1, 710334
                  addi         s1, s1, 4 #update loop 0 counter
                  bltu         s1, s6, sub_4_5_0_t #branch for loop 0
                  bgeu         sp, t2, sub_4_5_1_t #branch for loop 1
                  ori          s8, s4, 1842
                  addi         s8, zero, -9 #init loop 0 counter
                  slti         a2, a1, -1479
                  or           s9, a4, a5
                  srli         a4, t4, 21
                  sub          s9, t4, a2
                  srl          a5, a6, tp
                  ori          a3, a0, -684
                  addi         s11, zero, 13 #init loop 0 limit
                  sltu         a4, a6, tp
                  sltiu        a3, s2, 551
                  slt          s4, s0, t1
                  slti         s6, s0, -307
                  slli         s4, s11, 28
sub_4_4_0_t:      slt          t2, a0, s8
                  addi         s8, s8, 1 #update loop 0 counter
                  slti         t2, s6, 1991
                  addi         t1, s1, -270
                  addi         s1, gp, -1651
                  add          s3, zero, s1
                  srai         a0, ra, 30
                  bltu         s8, s11, sub_4_4_0_t #branch for loop 0
                  slli         a7, a2, 30
                  addi         tp, zero, 10 #init loop 1 counter
                  add          s11, a0, a5
                  or           a5, a6, ra
                  addi         s9, zero, 11 #init loop 1 limit
sub_4_1_1_t:      sltiu        zero, s6, 1960
                  addi         tp, tp, 7 #update loop 1 counter
                  addi         s2, zero, -5 #init loop 0 counter
                  ori          t6, ra, 679
                  addi         s3, zero, 20 #init loop 0 limit
                  srli         gp, s8, 1
                  xori         a7, zero, 1097
                  sltiu        a2, s5, 746
sub_4_1_0_t:      and          s4, s1, gp
                  addi         s2, s2, 3 #update loop 0 counter
                  sub          t0, a1, s2
                  xori         a4, sp, 698
                  bltu         s2, s3, sub_4_1_0_t #branch for loop 0
                  andi         a2, a0, 2024
                  ori          a4, s8, 732
                  add          a1, t2, t2
                  bltu         tp, s9, sub_4_1_1_t #branch for loop 1
                  xor          s5, s7, ra
                  addi         s10, zero, 6 #init loop 1 counter
                  sltiu        s2, a6, -55
                  addi         tp, s5, 568
                  sltiu        a7, s7, -475
                  sltu         a2, a5, gp
                  sra          t4, a3, ra
                  addi         sp, zero, 11 #init loop 1 limit
                  slli         a3, s10, 0
                  addi         s2, sp, -757
                  or           s4, s7, s5
sub_4_0_1_t:      ori          s1, a0, 171
                  sll          tp, s2, a5
                  addi         s10, s10, 5 #update loop 1 counter
                  addi         t5, zero, -10 #init loop 0 counter
                  sltu         t6, s9, a7
                  addi         a1, zero, 4 #init loop 0 limit
                  sll          s2, t2, s5
                  srl          s7, s4, a4
                  sll          s5, s7, t4
                  xori         t3, t2, -880
sub_4_0_0_t:      lui          s7, 613410
                  xori         a2, s0, -1351
                  or           gp, zero, t5
                  addi         t5, t5, 6 #update loop 0 counter
                  sltiu        a4, s6, 1780
                  blt          t5, a1, sub_4_0_0_t #branch for loop 0
                  sub          t0, t4, s7
                  auipc        t3, 309949
                  andi         a4, s6, -2045
                  srai         s4, s5, 11
                  srai         s4, s4, 31
                  ori          t0, t3, 250
                  bltu         s10, sp, sub_4_0_1_t #branch for loop 1
                  ori          s5, a4, 185
                  addi         s8, zero, 2 #init loop 0 counter
                  sll          s5, a6, sp
                  sll          t6, s4, s7
                  sll          a4, a6, a5
                  slt          a1, tp, s7
                  addi         a2, zero, 18 #init loop 0 limit
                  ori          s4, a4, 1409
                  slli         t2, s1, 15
                  srli         zero, gp, 20
sub_4_3_0_t:      lui          t6, 362316
                  or           t0, a0, a4
                  sll          a1, a6, a4
                  srl          t2, a3, t6
                  addi         s8, s8, 2 #update loop 0 counter
                  andi         a0, s9, 680
                  srai         t5, gp, 9
                  slti         tp, s8, -309
                  ori          s9, zero, -1520
                  sll          s9, ra, ra
                  ori          s5, a0, 881
                  andi         t6, s11, -1629
                  sub          t6, ra, t6
                  add          s9, tp, a2
                  blt          s8, a2, sub_4_3_0_t #branch for loop 0
                  sltu         t0, s3, t1
                  nop
                  sltu         t2, t1, t6
                  addi         s4, s0, -5
                  sltiu        t4, a5, 304
                  sra          t0, ra, s8
                  addi         t0, a0, 367
                  bge          a1, s8, 10f
                  sltiu        a2, a5, -932
                  xori         s1, t2, 936
                  bge          sp, s5, 13f
10:               or           a5, a5, s3
                  blt          zero, s6, 12f
12:               sltu         s2, s3, a7
13:               ori          t1, s9, -183
                  blt          s8, s10, 26f
                  sltu         t3, t5, t3
                  nop
                  bge          a5, t4, 29f
                  and          s5, t0, t0
                  sll          s1, t6, a3
                  slti         t1, t0, -334
                  addi         s11, a4, -1501
                  srli         s1, a4, 11
                  sra          a5, a0, s0
                  blt          a7, s9, 39f
                  srli         a0, t6, 11
26:               xori         t1, a6, -1545
                  blt          s9, a4, 34f
                  sltu         a7, a5, t2
29:               sra          t1, a7, a0
                  add          s6, a6, ra
                  bne          a2, a3, 45f
                  auipc        a1, 578115
                  xor          s11, a7, a6
34:               blt          t6, t6, 52f
                  srli         a4, s10, 28
                  andi         t0, ra, -787
                  srl          t2, s3, t2
                  xor          s4, s1, gp
39:               sll          s4, a4, s4
                  srai         t1, a5, 29
                  xor          s8, a3, tp
                  bge          t4, t2, 46f
                  slt          s5, s0, a6
                  xor          zero, t4, s7
45:               bgeu         zero, s7, 53f
46:               xor          s8, a3, a6
                  slli         s1, t4, 30
                  add          t1, s7, s5
                  srai         s1, s0, 17
                  sltiu        gp, a3, -808
                  bge          t3, t1, 56f
52:               add          s9, s7, s11
53:               slti         s1, s4, 1299
                  addi         tp, t5, 975
                  bgeu         tp, s11, 69f
56:               bltu         s2, t4, 76f
                  and          s3, a4, zero
                  auipc        s11, 537545
                  blt          s5, s5, 66f
                  or           t3, a4, s7
                  auipc        s11, 864728
                  xor          s11, a3, t1
                  sra          s5, a6, s0
                  srl          s5, s8, s8
                  beq          a1, a3, 80f
66:               sll          a7, s1, a3
                  andi         a2, s4, 1732
                  bge          t3, tp, 72f
69:               lui          t1, 961619
                  or           a4, s6, s7
                  lui          t2, 42381
72:               and          gp, s5, s3
                  or           t3, ra, ra
                  sltu         s3, a1, s0
                  ori          t2, ra, 431
76:               beq          t1, t0, 90f
                  slti         s10, a4, 1310
                  and          s4, s5, a0
                  andi         a5, s3, 273
80:               xor          t1, t4, s9
                  slti         t6, a4, -1403
                  slt          a3, a5, sp
                  sub          a7, t0, t1
                  srli         a1, t0, 27
                  blt          a1, a0, 89f
                  nop
                  sub          a4, a7, sp
                  nop
89:               sltiu        t0, t1, -1647
90:               nop
                  sll          a5, s11, s4
                  andi         t6, s10, 968
                  nop
                  bne          s11, a4, 99f
                  auipc        t5, 214549
                  and          t3, s1, t4
                  sll          sp, t1, s4
                  srli         sp, gp, 21
99:               or           t1, a0, a3
                  slti         a7, a3, -861
                  lui          s3, 921008
                  slt          s3, zero, sp
                  sra          t1, zero, t5
                  addi         t0, s9, 1309
                  srl          s9, s3, a7
                  bge          a7, sp, 110f
                  bne          a5, s11, 121f
                  and          a2, a5, s5
                  slt          gp, t6, a2
110:              bge          s2, s0, 122f
                  slli         s2, s11, 13
                  lui          a4, 274756
                  sll          zero, zero, t1
                  sll          a3, a0, s8
                  auipc        s1, 204713
                  ori          s6, s9, -1355
                  lui          s7, 1027987
                  beq          t2, s3, 125f
                  nop
                  beq          s7, s0, 134f
121:              andi         t3, t5, 745
122:              slli         s2, s2, 4
                  bgeu         tp, a6, 134f
                  auipc        t3, 473026
125:              and          s10, s8, a7
                  sra          gp, a6, sp
                  sltu         a4, s2, a0
                  or           a1, ra, s3
                  add          a3, s1, t0
                  nop
                  ori          t5, zero, -1985
                  beq          s4, a2, 143f
                  blt          a3, s10, 142f
134:              slli         s8, a4, 14
                  blt          tp, s11, 152f
                  lui          s7, 428671
                  bgeu         t0, t3, 157f
                  slti         t1, t1, -1285
                  blt          t4, a6, 154f
                  blt          a4, s5, 149f
                  addi         s4, s8, 723
142:              or           tp, ra, t5
143:              addi         s5, s10, -170
                  beq          a6, t4, 155f
                  beq          s6, s11, 159f
                  sra          a7, s2, s1
                  xori         a7, s6, 1360
                  bne          s4, a3, 152f
149:              and          gp, s7, s7
                  lui          s6, 719618
                  sltiu        s3, sp, -1351
152:              andi         s9, a7, 440
                  and          a2, t6, s5
154:              beq          t4, a6, 158f
155:              and          s9, s5, a4
                  and          tp, sp, ra
157:              srl          s5, s9, s11
158:              bltu         t0, s9, 165f
159:              sub          a3, a1, tp
                  bgeu         a6, s6, 172f
                  bne          ra, a3, 181f
                  andi         a2, a5, 959
                  srai         t6, a4, 18
                  sra          a7, t2, s3
165:              bltu         ra, t2, 177f
                  andi         t5, t2, -313
                  slti         s7, s8, -1495
                  xor          t1, s1, s3
                  slt          s3, zero, t4
                  nop
                  addi         s1, a0, 567
172:              sltu         a3, ra, tp
                  nop
                  srl          t5, a4, a1
                  nop
                  xori         s7, s6, -86
177:              bge          zero, s7, 188f
                  slli         s5, a1, 11
                  or           zero, s10, t1
                  addi         s6, gp, 1482
181:              lui          a3, 757747
                  andi         s11, s0, 2017
                  blt          s9, t5, 187f
                  slti         t1, a4, 753
                  srai         a1, ra, 23
                  srli         t1, s4, 21
187:              sltiu        zero, a1, 1336
188:              bltu         t5, a7, 195f
                  sltu         a5, s9, t3
                  srli         s2, s1, 30
                  srli         s9, tp, 2
                  xor          t6, a1, s2
                  addi         t5, a0, 734
                  sub          s4, t1, a3
195:              lui          s1, 478707
                  or           sp, a0, tp
                  and          t3, t4, a0
                  bge          a1, t3, 212f
                  bltu         s6, s4, 214f
                  xori         s2, s7, -817
                  bge          ra, s5, 206f
                  bne          s6, t1, 222f
                  xori         t3, t3, -1853
                  srl          sp, s9, t5
                  or           s2, s2, a6
206:              sll          s6, s11, a6
                  nop
                  xori         s9, a3, 264
                  bne          t1, a4, 214f
                  slti         s11, s10, 1371
                  sltu         s2, s7, s2
212:              andi         s4, s5, 945
                  beq          s8, t1, 227f
214:              bgeu         a0, t5, 218f
                  auipc        s11, 491409
                  lui          t4, 235138
                  bge          a0, s11, 224f
218:              or           t2, a2, t0
                  slti         s2, tp, -929
                  sra          t6, tp, s2
                  slt          t6, s6, gp
222:              sub          s9, a7, t1
                  bgeu         gp, t1, 241f
224:              srli         a1, t6, 6
                  sltiu        a5, gp, -1300
                  xori         t0, t6, 1148
227:              slli         s2, t5, 14
                  slli         t2, t0, 28
                  lui          s6, 156206
                  addi         gp, sp, 760
                  bgeu         a3, a6, 239f
                  xori         gp, s6, -1296
                  beq          zero, t4, 245f
                  lui          s5, 192068
                  beq          a5, t6, 252f
                  and          s4, s0, s9
                  addi         tp, a7, -99
                  andi         t2, a3, 1188
239:              bne          s1, s4, 243f
                  beq          a1, a6, 244f
241:              sub          s7, ra, a1
                  sub          sp, s2, s4
243:              nop
244:              nop
245:              bltu         a5, sp, 246f
246:              slt          s11, a1, s0
                  auipc        t4, 913114
                  sra          t6, a3, s4
                  slti         t5, t6, -1300
                  addi         a3, zero, -1599
                  addi         s4, t3, -1585
252:              auipc        a3, 365057
                  andi         s1, gp, 1376
                  bge          a0, s0, 268f
                  slti         t3, a6, 1731
                  auipc        t5, 681487
                  xori         s2, t0, 1306
                  slli         t5, t4, 30
                  and          t1, zero, s6
                  add          s1, t5, zero
                  blt          tp, s11, 275f
                  sll          s4, tp, s6
                  bge          t2, s4, 270f
                  bgeu         t6, a1, 278f
                  bne          zero, t2, 285f
                  bgeu         t5, s10, 278f
                  blt          s5, a1, 271f
268:              lui          sp, 76815
                  bge          a0, s2, 274f
270:              ori          s1, a3, 1636
271:              add          a3, s2, s0
                  and          s9, a5, gp
                  blt          s0, a4, 277f
274:              nop
                  addi         t6, zero, -1 #init loop 1 counter
                  addi         s4, zero, 8 #init loop 1 limit
                  sltu         gp, s11, t1
sub_4_2_1_t:      addi         t0, ra, 1392
                  and          s3, tp, sp
                  addi         t6, t6, 4 #update loop 1 counter
                  addi         s7, zero, -4 #init loop 0 counter
                  addi         t2, zero, 2 #init loop 0 limit
sub_4_2_0_t:      slt          a7, s10, s6
                  sra          a7, a0, t6
                  addi         s7, s7, 2 #update loop 0 counter
                  sub          t3, a4, gp
                  beq          s7, t2, sub_4_2_0_t #branch for loop 0
                  sltiu        s8, t5, 456
                  bltu         t6, s4, sub_4_2_1_t #branch for loop 1
                  sub          t0, t2, a5
275:              or           s2, t5, tp
                  bne          a7, s4, 281f
277:              bltu         t5, t0, 284f
278:              xor          zero, s1, a1
                  slt          s5, a2, s7
                  and          t0, s0, gp
281:              slt          s9, s10, gp
                  ori          t4, s1, 938
                  slti         s2, s9, -220
284:              blt          s3, zero, 299f
285:              srai         t1, t2, 23
                  sub          zero, a2, s5
                  sltu         a5, t1, t5
                  bne          s4, tp, 292f
                  blt          a7, s9, 303f
                  add          a7, a3, s6
                  bne          t0, s3, 302f
292:              srl          tp, s11, s4
                  addi         a7, s9, 314
                  sll          sp, sp, s1
                  bltu         s6, t2, 312f
                  xor          a2, zero, gp
                  xori         s10, t2, -549
                  ori          a0, s10, 1004
299:              srli         gp, a6, 26
                  sll          t6, s10, a5
                  bltu         a1, s3, 305f
302:              or           t4, zero, s1
303:              sll          s11, gp, t4
                  beq          s9, gp, 316f
305:              blt          a4, t3, 316f
                  nop
                  slli         s5, a2, 15
                  or           s9, t1, s10
                  bltu         t3, s8, 323f
                  slt          a2, s5, s0
                  slt          s6, gp, s8
312:              sltiu        zero, s1, -216
                  srli         a3, a4, 13
                  srl          a3, s9, s9
                  and          t3, a4, ra
316:              srai         zero, s9, 27
                  srl          s3, s0, s7
                  or           gp, s7, a4
                  nop
                  srli         s9, s4, 25
                  bgeu         s1, s0, 322f
322:              auipc        s1, 581109
323:              or           sp, a2, a3
                  sltu         a4, s0, gp
                  srai         gp, t0, 28
                  sltu         gp, a5, a6
                  bgeu         ra, s5, 336f
                  slli         a2, a7, 25
                  srai         t4, s8, 19
                  srli         t4, s8, 0
                  slt          s4, s3, t4
                  sub          a4, t0, a5
                  lui          a2, 525697
                  auipc        s2, 792581
                  andi         s7, s1, -1798
336:              nop
                  ori          s1, s2, -146
                  nop
                  slli         s1, s2, 10
                  bltu         a5, t0, 347f
                  sltu         s7, zero, t2
                  bne          a5, t5, 347f
                  add          s8, ra, a0
                  and          t3, a7, a3
                  xor          t5, s8, s10
                  auipc        t6, 511339
347:              xor          s8, ra, s7
                  add          s10, s1, a5
                  lw           s4, 4(a6)
                  sltiu        gp, a0, 537
                  sub          s6, ra, t6
                  addi         a6, a6, 44
                  srai         s9, a2, 4
                  slti         tp, s5, 598
                  nop
                  add          s7, a0, gp
500:              addi x25, x20, 1
500:              jalr x25, x25, 0
sub_5:            add          t4, sp, s10
                  bltu         a7, s2, sub_5_stack_p
                  sll          s5, t4, a5
sub_5_stack_p:    addi         a6, a6, -20
                  add          a1, a0, a2
                  sra          s11, s2, s0
                  sll          zero, gp, t2
                  xor          sp, t6, a4
                  sw           s4, 4(a6)
                  srai         a1, s1, 6
                  sub          tp, ra, a5
                  slti         s2, zero, 175
                  addi         s10, zero, 3 #init loop 0 counter
                  srai         a4, t5, 25
                  andi         t3, s11, -572
                  addi         t1, s6, 1797
                  srl          gp, s3, s6
                  lui          a3, 310471
                  and          t0, sp, sp
                  srli         t0, s1, 23
                  addi         s1, zero, 8 #init loop 0 limit
sub_5_0_0_t:      and          s4, s2, a4
                  xori         a0, a4, -1009
                  slti         t6, t0, -1638
                  sll          a7, tp, a7
                  addi         s10, s10, 4 #update loop 0 counter
                  nop
                  xor          a0, t1, a0
                  sltu         a1, s10, t5
                  slli         t5, sp, 24
                  blt          s10, s1, sub_5_0_0_t #branch for loop 0
                  sra          s9, s8, a4
                  addi         s3, zero, 1 #init loop 0 counter
                  sll          s4, s5, zero
                  addi         s8, zero, 19 #init loop 0 limit
                  and          a0, a7, t4
                  srai         a0, s4, 25
                  sltu         t4, a4, a0
sub_5_1_0_t:      lui          s9, 884037
                  sltiu        sp, t0, 850
                  addi         s3, s3, 2 #update loop 0 counter
                  sll          s11, s8, s9
                  add          a1, tp, t4
                  srl          s2, t5, a6
                  lui          zero, 584409
                  nop
                  lui          sp, 223652
                  or           s4, t0, s7
                  add          t4, a7, tp
                  ori          s2, a7, -23
                  add          a4, s11, a4
                  lui          gp, 457056
                  srl          s10, t6, s0
                  add          t4, sp, s5
                  srli         t0, s10, 26
                  bne          s3, s8, sub_5_1_0_t #branch for loop 0
                  or           s4, gp, t4
                  sltu         a2, s10, t5
                  addi         a5, s8, -134
                  sra          s4, s6, s6
                  andi         s7, t1, 334
                  nop
                  xori         t5, a0, 107
                  xori         a1, a6, -1528
                  bltu         t3, a5, 27f
                  or           s6, s3, t5
                  xor          t5, s4, t5
                  bne          tp, s5, 24f
                  lui          gp, 721724
                  sll          s8, a5, s4
                  slt          a1, t4, s4
                  slti         s7, a7, -1664
                  slti         t5, a7, -1507
                  bgeu         sp, s1, 28f
                  sub          a4, a5, t1
                  sra          t3, s1, s2
                  addi         a5, a4, 83
                  bltu         s1, zero, 38f
                  xori         t5, sp, -324
                  srai         t3, tp, 24
                  slt          a0, sp, t0
24:               bge          s8, sp, 43f
                  slt          s9, s10, s5
                  andi         a5, s10, -173
27:               srai         t5, s1, 16
28:               andi         t2, s9, 1444
                  srli         zero, gp, 23
                  slli         t1, a3, 29
                  sltu         s8, t6, t6
                  beq          s11, s11, 49f
                  bge          a2, gp, 44f
                  sub          t5, a7, s2
                  lui          a5, 675545
                  bltu         s1, a0, 54f
                  sll          s6, s0, s5
38:               bge          t2, ra, 39f
39:               beq          t5, t3, 59f
                  lui          s2, 789397
                  slt          sp, sp, s3
                  auipc        a1, 804665
43:               bne          s4, t4, 57f
44:               bne          zero, s4, 46f
                  add          a4, t4, a7
46:               sub          s5, t4, s4
                  and          t0, s1, s5
                  sub          s5, a6, t6
49:               bge          s1, s7, 52f
                  andi         zero, s0, -1564
                  srai         s1, t4, 25
52:               srli         s8, s8, 28
                  lui          s7, 432196
54:               and          t0, a3, ra
                  slti         t5, s2, 1102
                  lui          s10, 139099
57:               slti         s4, s0, 527
                  xor          sp, a1, a6
59:               sub          t0, t0, s2
                  srai         sp, s5, 26
                  add          a5, a6, s5
                  srl          t0, a6, t1
                  sra          s5, s5, s7
                  bgeu         a6, s0, 67f
                  sltu         s6, t0, t5
                  bge          a2, s7, 84f
67:               beq          a2, t6, 73f
                  xor          s11, s2, t1
                  xori         a1, tp, 636
                  srl          s3, s10, a7
                  srli         zero, a6, 5
                  srai         t1, s4, 17
73:               lui          s8, 712342
                  andi         s1, a4, -703
                  slli         tp, s9, 12
                  and          sp, t4, zero
                  sll          a3, s9, t4
                  xor          t1, t6, tp
                  blt          s2, a1, 83f
                  or           a3, a3, t4
                  sltiu        t2, a3, 165
                  beq          s6, s10, 87f
83:               lui          s1, 62254
84:               slli         t4, a2, 30
                  add          s2, tp, s0
                  xor          sp, t4, tp
87:               xor          s5, gp, s6
                  andi         a4, ra, -1695
                  beq          t0, a3, 92f
                  srli         t5, a6, 5
                  srli         s2, s8, 6
92:               sub          s4, t6, t5
                  sub          sp, t6, ra
                  andi         gp, s5, -769
                  andi         t5, a3, 1403
                  nop
                  andi         t4, s10, 26
                  andi         t6, s7, -30
                  slt          a4, zero, a6
                  lui          t0, 152557
                  ori          t2, s5, -1921
                  lui          t1, 884771
                  add          s3, a6, zero
                  sll          t5, t6, s4
                  srl          s6, s1, a7
                  xori         s10, a6, -204
                  andi         t1, s6, 882
                  sltiu        t2, s9, -812
                  sltu         t5, sp, s8
                  add          a4, s11, s5
                  addi         s5, s2, 212
                  srai         a3, t3, 1
                  ori          s2, tp, -970
                  nop
                  and          t6, s9, a3
                  xor          s2, sp, s3
                  beq          a4, tp, 122f
                  slli         t5, a6, 14
                  srl          tp, zero, a4
                  sra          a5, s6, a2
                  sltiu        s2, t0, 416
122:              xor          s5, t5, s3
                  xor          zero, a6, s1
                  lw           s4, 4(a6)
                  auipc        gp, 214824
                  addi         a6, a6, 20
                  andi         s9, s10, -155
                  xori         t2, s2, -723
                  sltu         s9, a3, a2
                  sltiu        a5, gp, -1877
                  auipc        zero, 982819
189:              addi x11, x20, 1
189:              jalr x11, x11, 0
sub_1:            blt          s3, a7, sub_1_stack_p
                  sra          s5, s3, s2
                  and          t2, a7, t0
                  srli         sp, a1, 13
                  and          s8, sp, sp
                  srli         s7, a2, 28
sub_1_stack_p:    addi         a6, a6, -52
                  lui          t4, 612899
                  addi         s5, a3, 275
                  sw           s4, 4(a6)
                  sltiu        s3, a2, 191
                  addi         t2, zero, -1 #init loop 1 counter
                  sra          a5, a5, a2
                  xor          s11, a4, t0
                  slli         sp, s1, 26
                  sltiu        tp, ra, -822
                  lui          s1, 762202
                  addi         s4, zero, 12 #init loop 1 limit
                  sub          t6, s5, t3
                  srli         sp, a5, 2
sub_1_18_1_t:     slti         t0, t1, -992
                  slt          a1, ra, t6
                  or           t0, t6, s1
                  addi         t2, t2, 4 #update loop 1 counter
                  srai         t0, a7, 15
                  xor          s6, t0, s0
                  addi         gp, zero, -5 #init loop 0 counter
                  sra          s1, s3, s9
                  sll          a4, t1, s9
                  addi         a2, zero, 11 #init loop 0 limit
                  or           s7, s0, a6
sub_1_18_0_t:     sltiu        sp, s0, -184
                  lui          s9, 346081
                  srai         s11, a0, 27
                  nop
                  srli         sp, a6, 15
                  addi         gp, gp, 3 #update loop 0 counter
                  sub          s1, a0, sp
                  bltu         gp, a2, sub_1_18_0_t #branch for loop 0
                  srli         t1, s5, 16
                  bltu         t2, s4, sub_1_18_1_t #branch for loop 1
                  sltiu        s8, s0, -1362
                  addi         gp, zero, -8 #init loop 0 counter
                  ori          s5, s3, 1098
                  nop
                  sub          s5, a2, tp
                  auipc        t3, 655232
                  xor          a4, s6, s9
                  addi         t4, zero, 20 #init loop 0 limit
                  srai         a5, tp, 27
sub_1_24_0_t:     lui          t5, 472887
                  andi         a1, t5, 167
                  addi         gp, gp, 7 #update loop 0 counter
                  and          a7, t3, tp
                  srli         a5, a3, 12
                  sltu         s11, s1, ra
                  andi         tp, s1, 1315
                  andi         s1, a2, 1474
                  bne          gp, t4, sub_1_24_0_t #branch for loop 0
                  slti         a2, s7, -1250
                  addi         s10, zero, 7 #init loop 0 counter
                  sltu         s1, s2, a1
                  ori          t2, s8, 67
                  addi         s8, zero, 5 #init loop 0 limit
                  xori         a5, s0, -140
sub_1_3_0_t:      andi         s6, a0, 321
                  slt          t0, s9, t0
                  addi         s10, s10, -3 #update loop 0 counter
                  and          s7, sp, ra
                  or           a0, a5, a1
                  slti         t2, a0, -906
                  auipc        t2, 928415
                  or           t3, t4, s5
                  bgeu         s10, s8, sub_1_3_0_t #branch for loop 0
                  nop
                  addi         t1, zero, -5 #init loop 0 counter
                  slli         s6, a3, 27
                  sub          a2, t6, t3
                  srl          s10, s6, a0
                  lui          a5, 438265
                  slt          s2, s1, tp
                  xori         sp, a3, 1154
                  addi         t6, zero, 3 #init loop 0 limit
                  sll          t5, a5, a7
                  addi         t4, ra, -1900
                  auipc        sp, 457890
sub_1_19_0_t:     and          tp, s7, a3
                  slti         t2, s11, -1884
                  or           t0, s4, s2
                  addi         zero, s9, -994
                  srli         t5, a4, 25
                  slli         s7, s9, 13
                  slt          s1, a2, s7
                  addi         t1, t1, 10 #update loop 0 counter
                  xor          a3, sp, a7
                  add          s1, s2, a6
                  add          s5, a2, tp
                  sltu         tp, s8, t3
                  slt          a1, s2, s1
                  bltu         t1, t6, sub_1_19_0_t #branch for loop 0
                  or           a4, a7, a4
                  addi         t6, zero, 10 #init loop 0 counter
                  addi         s3, zero, -7 #init loop 0 limit
                  sltiu        t3, a1, -1430
sub_1_9_0_t:      sltiu        a7, s7, -504
                  srl          t1, s8, s0
                  andi         t5, s0, -1741
                  addi         t6, t6, -4 #update loop 0 counter
                  sub          s11, a5, t1
                  slti         a7, t0, -1127
                  sltu         a2, a3, s6
                  sll          sp, s10, s0
                  bge          t6, s3, sub_1_9_0_t #branch for loop 0
                  slli         s6, s5, 16
                  addi         t0, zero, 2 #init loop 1 counter
                  xori         a3, a1, 449
                  addi         a1, zero, 20 #init loop 1 limit
sub_1_1_1_t:      sltiu        s1, s0, -996
                  addi         t0, t0, 2 #update loop 1 counter
                  add          s3, a5, t6
                  xor          s4, s4, s4
                  addi         a0, zero, 9 #init loop 0 counter
                  srl          t1, tp, s7
                  addi         a5, zero, -1 #init loop 0 limit
                  slt          t5, t5, t5
sub_1_1_0_t:      lui          s4, 610737
                  sub          s3, s11, s11
                  addi         a0, a0, -2 #update loop 0 counter
                  srai         a3, s11, 30
                  bne          a0, a5, sub_1_1_0_t #branch for loop 0
                  bne          t0, a1, sub_1_1_1_t #branch for loop 1
                  nop
                  addi         t2, zero, 7 #init loop 1 counter
                  xor          t4, s10, a7
                  add          a7, t4, s5
                  or           s1, s3, sp
                  sltu         a0, t2, s3
                  addi         a3, zero, 12 #init loop 1 limit
                  addi         a2, a7, -1492
sub_1_22_1_t:     and          t3, s6, a1
                  addi         t2, t2, 9 #update loop 1 counter
                  or           sp, s9, a5
                  ori          t0, s10, -895
                  slli         s2, a4, 8
                  addi         s11, zero, 5 #init loop 0 counter
                  ori          s9, s2, 861
                  auipc        s9, 343886
                  addi         t1, zero, -15 #init loop 0 limit
                  xori         gp, zero, 555
                  srli         t4, gp, 23
sub_1_22_0_t:     andi         t3, t2, 9
                  and          s1, ra, s6
                  addi         s11, s11, -10 #update loop 0 counter
                  andi         s9, s3, 657
                  add          t4, s10, a3
                  ori          s4, a7, -549
                  lui          t6, 270664
                  add          s2, a4, a5
                  add          s2, a7, t2
                  srl          t0, s5, t4
                  or           a2, s6, a6
                  bge          s11, t1, sub_1_22_0_t #branch for loop 0
                  sltiu        s5, s0, -364
                  srl          s2, s5, a4
                  addi         a4, t0, -1391
                  bltu         t2, a3, sub_1_22_1_t #branch for loop 1
                  sll          s7, s4, t6
                  addi         a2, zero, 4 #init loop 1 counter
                  addi         s5, zero, -8 #init loop 1 limit
                  and          a4, s2, s0
                  srl          t3, gp, a1
sub_1_16_1_t:     lui          s7, 839935
                  andi         zero, a7, -1239
                  addi         a2, a2, -3 #update loop 1 counter
                  addi         t1, zero, 1740
                  addi         s4, zero, -4 #init loop 0 counter
                  sltiu        t4, s7, -936
                  addi         sp, zero, 11 #init loop 0 limit
sub_1_16_0_t:     sltu         t1, s1, s0
                  sltu         a3, s7, s11
                  addi         s4, s4, 5 #update loop 0 counter
                  blt          s4, sp, sub_1_16_0_t #branch for loop 0
                  and          t6, s4, zero
                  bne          a2, s5, sub_1_16_1_t #branch for loop 1
                  srli         zero, t2, 15
                  addi         gp, zero, 6 #init loop 0 counter
                  addi         t5, zero, 11 #init loop 0 limit
                  srli         a7, sp, 11
                  sll          zero, a0, t4
sub_1_26_0_t:     xor          s6, a6, s6
                  addi         gp, gp, 6 #update loop 0 counter
                  blt          gp, t5, sub_1_26_0_t #branch for loop 0
                  sub          a5, ra, s10
                  addi         a5, zero, 1 #init loop 1 counter
                  xori         a7, tp, -1487
                  srai         a3, s10, 15
                  addi         s4, zero, 10 #init loop 1 limit
                  addi         s3, sp, 1213
sub_1_12_1_t:     xor          a7, s5, t2
                  addi         a5, a5, 9 #update loop 1 counter
                  xor          t3, t2, s7
                  addi         t0, zero, -7 #init loop 0 counter
                  addi         sp, zero, -5 #init loop 0 limit
                  sltu         t3, a0, a3
sub_1_12_0_t:     nop
                  addi         t0, t0, 2 #update loop 0 counter
                  add          s3, s0, gp
                  blt          t0, sp, sub_1_12_0_t #branch for loop 0
                  beq          a5, s4, sub_1_12_1_t #branch for loop 1
                  addi         a0, t2, 1480
                  addi         s7, zero, -9 #init loop 1 counter
                  addi         s2, zero, -16 #init loop 1 limit
sub_1_8_1_t:      auipc        s10, 868687
                  auipc        t2, 953781
                  addi         s7, s7, -7 #update loop 1 counter
                  addi         a5, zero, 2 #init loop 0 counter
                  auipc        tp, 294396
                  addi         t6, zero, -18 #init loop 0 limit
sub_1_8_0_t:      nop
                  addi         a5, a5, -5 #update loop 0 counter
                  bne          a5, t6, sub_1_8_0_t #branch for loop 0
                  beq          s7, s2, sub_1_8_1_t #branch for loop 1
                  xor          a1, s8, a2
                  addi         t1, zero, 6 #init loop 1 counter
                  add          sp, s4, s4
                  nop
                  addi         t4, zero, 6 #init loop 1 limit
                  sub          t5, s2, s10
sub_1_15_1_t:     addi         s4, t2, -333
                  nop
                  and          s3, t4, s9
                  lui          s6, 408107
                  xori         a7, tp, -828
                  and          s9, s4, zero
                  slt          a7, s6, t0
                  sub          t5, t5, t5
                  slti         a0, a4, -1692
                  addi         t1, t1, -5 #update loop 1 counter
                  sltu         s9, zero, a1
                  slt          sp, a7, sp
                  slli         a7, s3, 22
                  addi         a1, zero, -3 #init loop 0 counter
                  add          a2, a3, t4
                  addi         s2, zero, 19 #init loop 0 limit
                  xor          s5, s9, t1
sub_1_15_0_t:     or           s5, s6, t1
                  srl          a4, s2, s9
                  sra          t5, s6, t0
                  addi         a1, a1, 10 #update loop 0 counter
                  srai         a4, s4, 31
                  xori         s4, t1, 430
                  bltu         a1, s2, sub_1_15_0_t #branch for loop 0
                  nop
                  bgeu         t1, t4, sub_1_15_1_t #branch for loop 1
                  auipc        sp, 581491
                  addi         t5, zero, -2 #init loop 0 counter
                  addi         gp, a7, 333
                  ori          a1, t3, 1960
                  addi         sp, zero, -12 #init loop 0 limit
                  slt          t1, sp, t1
sub_1_0_0_t:      slti         s1, a2, -1011
                  addi         t5, t5, -10 #update loop 0 counter
                  bne          t5, sp, sub_1_0_0_t #branch for loop 0
                  slli         a1, a2, 1
                  addi         t6, zero, -10 #init loop 0 counter
                  slti         a2, t2, 268
                  and          gp, t6, a3
                  sltiu        s5, t3, -1853
                  slt          tp, t6, s1
                  slli         s11, t6, 26
                  sltu         s1, s3, a1
                  addi         s8, zero, -17 #init loop 0 limit
                  sltiu        s4, s3, 45
sub_1_20_0_t:     slt          tp, a1, s5
                  sll          s4, t5, ra
                  addi         t6, t6, -7 #update loop 0 counter
                  xor          s3, ra, s4
                  sra          t0, s6, t5
                  lui          s3, 999212
                  sltu         gp, s7, a7
                  ori          gp, a2, -260
                  sub          zero, a7, s9
                  slti         s7, s6, -1644
                  bne          t6, s8, sub_1_20_0_t #branch for loop 0
                  srl          s10, s10, tp
                  addi         s6, zero, -4 #init loop 1 counter
                  addi         s9, zero, -14 #init loop 1 limit
                  ori          s3, s6, 403
sub_1_21_1_t:     xor          a2, a3, gp
                  addi         s6, s6, -10 #update loop 1 counter
                  slti         s2, t1, 750
                  addi         t4, t3, 1761
                  and          t2, s6, a7
                  sub          t1, a0, t1
                  sll          t0, t4, s4
                  xori         gp, a1, 1600
                  add          t6, a0, s10
                  addi         s10, zero, -7 #init loop 0 counter
                  slti         s11, sp, -1733
                  sub          t3, a1, ra
                  addi         s5, zero, 9 #init loop 0 limit
                  and          s4, t2, s10
                  slli         t0, s0, 19
sub_1_21_0_t:     xor          t6, s3, a3
                  addi         s10, s10, 4 #update loop 0 counter
                  ori          zero, t6, -136
                  addi         t0, t6, 1501
                  bne          s10, s5, sub_1_21_0_t #branch for loop 0
                  sltiu        s1, t1, 98
                  add          a7, zero, t3
                  sltu         t1, a3, a7
                  xori         s8, gp, 1317
                  or           s8, s5, t5
                  sltu         a1, a0, s9
                  sra          s11, a1, ra
                  srl          s8, a6, t5
                  sub          t5, a4, s3
                  slt          a5, s9, s5
                  bne          s6, s9, sub_1_21_1_t #branch for loop 1
                  xori         gp, s0, 1342
                  addi         t5, zero, 3 #init loop 1 counter
                  addi         a0, zero, 18 #init loop 1 limit
sub_1_2_1_t:      andi         s4, a4, -506
                  addi         t5, t5, 8 #update loop 1 counter
                  addi         s1, zero, 3 #init loop 0 counter
                  addi         t4, zero, 17 #init loop 0 limit
                  andi         a5, s6, 1203
sub_1_2_0_t:      add          t6, tp, a4
                  addi         s1, s1, 7 #update loop 0 counter
                  bne          s1, t4, sub_1_2_0_t #branch for loop 0
                  bltu         t5, a0, sub_1_2_1_t #branch for loop 1
                  srl          zero, s1, a1
                  addi         s6, zero, 3 #init loop 0 counter
                  sub          t5, a3, t2
                  sltu         a7, a7, a6
                  xori         s7, a0, -435
                  auipc        s4, 1014733
                  lui          a1, 968410
                  slt          t5, a3, s2
                  sra          a2, a0, ra
                  addi         a4, zero, -2 #init loop 0 limit
                  or           sp, tp, t2
sub_1_4_0_t:      xor          gp, s5, sp
                  auipc        a1, 926820
                  srai         s10, t5, 6
                  slti         t3, a0, 990
                  srai         a1, t3, 17
                  addi         s6, s6, -8 #update loop 0 counter
                  or           s5, t4, s11
                  andi         s11, t0, -1857
                  sll          t5, ra, s5
                  and          s3, s5, s1
                  bge          s6, a4, sub_1_4_0_t #branch for loop 0
                  auipc        s2, 170227
                  addi         a0, zero, -9 #init loop 0 counter
                  sra          a2, s3, t3
                  sll          s10, t6, t5
                  andi         t6, a0, 1162
                  addi         s2, zero, -13 #init loop 0 limit
sub_1_28_0_t:     addi         a5, s5, -850
                  addi         a0, a0, -4 #update loop 0 counter
                  sub          a7, s9, a2
                  sra          s11, zero, sp
                  slli         sp, s6, 11
                  srl          gp, a0, s4
                  lui          a5, 57063
                  bne          a0, s2, sub_1_28_0_t #branch for loop 0
                  addi         s1, a7, 218
                  addi         s1, zero, -3 #init loop 1 counter
                  ori          a4, s7, -1153
                  addi         gp, zero, 6 #init loop 1 limit
                  andi         t6, a4, -2046
                  and          a7, s2, a1
sub_1_13_1_t:     addi         s6, s2, 1474
                  addi         s1, s1, 9 #update loop 1 counter
                  addi         s2, zero, 7 #init loop 0 counter
                  sll          s8, ra, s5
                  sll          s3, s4, s10
                  addi         t4, zero, 7 #init loop 0 limit
sub_1_13_0_t:     add          t6, s5, s2
                  addi         s2, s2, -6 #update loop 0 counter
                  or           s4, a7, s5
                  bge          s2, t4, sub_1_13_0_t #branch for loop 0
                  bne          s1, gp, sub_1_13_1_t #branch for loop 1
                  lui          a3, 687269
                  addi         t6, zero, -4 #init loop 1 counter
                  ori          t5, a0, 1475
                  slt          s6, s7, t0
                  xori         s7, sp, 1894
                  addi         sp, zero, -13 #init loop 1 limit
                  addi         t4, a3, -885
                  sll          s1, tp, t4
sub_1_7_1_t:      slt          s4, gp, s0
                  auipc        s1, 112924
                  addi         a0, s11, -1588
                  addi         t6, t6, -9 #update loop 1 counter
                  add          a0, s5, a6
                  addi         gp, zero, -4 #init loop 0 counter
                  addi         a5, zero, 12 #init loop 0 limit
                  ori          t3, t2, 1099
sub_1_7_0_t:      and          s9, s0, a3
                  addi         gp, gp, 3 #update loop 0 counter
                  andi         s3, a1, -1883
                  bltu         gp, a5, sub_1_7_0_t #branch for loop 0
                  bne          t6, sp, sub_1_7_1_t #branch for loop 1
                  ori          s7, s0, 382
                  addi         s6, zero, -5 #init loop 0 counter
                  slt          a4, gp, t1
                  srl          t1, s1, t3
                  xori         a4, s10, -753
                  slti         t0, a1, -1607
                  sltu         a3, a1, t0
                  sub          s3, a3, t3
                  and          t2, t1, t5
                  srli         t0, a7, 15
                  add          s2, a7, sp
                  srai         s2, t0, 22
                  xori         s5, s9, 964
                  addi         t5, zero, -14 #init loop 0 limit
sub_1_23_0_t:     sltu         t1, a5, a5
                  add          a5, s11, a1
                  addi         s6, s6, -10 #update loop 0 counter
                  slt          s11, ra, a7
                  srli         s7, a0, 12
                  bge          s6, t5, sub_1_23_0_t #branch for loop 0
                  or           a7, s9, t5
                  addi         s7, zero, 10 #init loop 1 counter
                  addi         t6, zero, 10 #init loop 1 limit
                  slli         s9, s7, 11
sub_1_11_1_t:     auipc        t3, 426224
                  addi         s7, s7, -8 #update loop 1 counter
                  addi         a1, zero, 10 #init loop 0 counter
                  addi         a3, zero, 10 #init loop 0 limit
                  lui          s5, 12988
sub_1_11_0_t:     xor          gp, t2, s8
                  addi         a1, a1, -8 #update loop 0 counter
                  bgeu         a1, a3, sub_1_11_0_t #branch for loop 0
                  bgeu         s7, t6, sub_1_11_1_t #branch for loop 1
                  sltu         s8, gp, a3
                  addi         a7, zero, -5 #init loop 1 counter
                  addi         sp, zero, 11 #init loop 1 limit
sub_1_6_1_t:      sltu         tp, s8, s1
                  nop
                  addi         a7, a7, 10 #update loop 1 counter
                  addi         t2, zero, -2 #init loop 0 counter
                  addi         a5, zero, -16 #init loop 0 limit
                  srai         a2, s4, 24
sub_1_6_0_t:      lui          s2, 767555
                  srli         a4, gp, 7
                  srli         a4, t6, 9
                  addi         t2, t2, -10 #update loop 0 counter
                  bge          t2, a5, sub_1_6_0_t #branch for loop 0
                  srai         a1, s9, 3
                  bltu         a7, sp, sub_1_6_1_t #branch for loop 1
                  xor          a0, tp, a2
                  nop
                  slti         zero, zero, 334
                  beq          t6, s2, 7f
                  beq          gp, s6, 11f
                  bge          ra, a6, 14f
                  or           s2, a3, s0
                  xori         tp, tp, 1298
7:                slt          t5, a5, s1
                  andi         t4, s8, -912
                  beq          a7, t2, 12f
                  srl          t2, s1, a2
11:               slli         s4, a4, 7
12:               nop
                  add          zero, s8, s2
14:               lui          s11, 186473
                  lui          s7, 889961
                  sra          t2, s10, a4
                  auipc        a3, 885934
                  slli         s8, s5, 0
                  sll          a4, s0, t4
                  slti         gp, gp, -1310
                  srli         a0, s0, 27
                  sub          a1, a5, t3
                  bne          s9, a1, 42f
                  bltu         t1, a2, 43f
                  xori         t0, t3, -1786
                  bltu         s9, ra, 37f
                  slt          a3, s5, s4
                  srli         t2, a7, 30
                  sltiu        s9, a3, -105
                  slti         s5, a6, 241
                  slli         t2, s5, 4
                  lui          s9, 307572
                  slli         t3, tp, 26
                  slt          sp, s11, s9
                  slt          s3, s9, a3
                  addi         s4, t3, -1668
37:               bgeu         sp, s1, 46f
                  srl          s2, t6, gp
                  bgeu         a7, t6, 43f
                  andi         s9, s11, -915
                  slli         t1, t5, 19
42:               beq          a1, s10, 62f
43:               slti         a0, a3, 522
                  add          sp, t2, s4
                  andi         s11, a4, 1815
46:               addi         s6, t6, 906
                  and          a1, a0, s7
                  bgeu         s2, sp, 55f
                  or           tp, tp, sp
                  ori          s1, s8, -506
                  and          t4, a3, a2
                  slti         a1, a7, -1323
                  and          s6, a4, s2
                  ori          t6, s3, 948
55:               or           s6, sp, s5
                  xori         tp, s8, 1244
                  bge          s11, a7, 63f
                  addi         t3, s6, -725
                  slti         a2, s2, -1787
                  ori          s2, s5, 1978
                  add          a2, s2, s4
62:               addi         sp, s7, -988
63:               ori          a7, s2, 1410
                  bne          s3, s0, 71f
                  srl          a4, zero, s5
                  and          a3, s7, s3
                  and          a1, ra, s8
                  sub          t1, s2, s1
                  sll          a2, t5, a3
                  slti         zero, s11, -1024
71:               sltu         t2, s2, zero
                  sll          s4, s8, s3
                  auipc        t5, 669231
                  addi         t0, a0, -2
                  beq          s2, sp, 89f
                  slti         t0, s6, -569
                  sra          tp, s3, s0
                  xor          s10, s7, gp
                  beq          gp, s8, 88f
                  nop
                  slt          tp, a5, a4
                  srli         s3, tp, 18
                  srai         a5, tp, 8
                  slli         s4, s4, 3
                  add          s2, a2, s8
                  and          s7, t6, ra
                  srl          gp, t1, a4
88:               slti         tp, t3, -692
89:               slti         zero, sp, -750
                  nop
                  bge          s0, t0, 109f
                  blt          s8, t3, 100f
                  or           a2, t3, t5
                  nop
                  and          a7, t1, s5
                  blt          t2, s11, 115f
                  beq          s3, s6, 102f
                  nop
                  sltiu        s1, s10, -1275
100:              xori         s9, t1, 1773
                  xor          a1, a6, ra
102:              slli         s6, s10, 24
                  xor          s4, s5, a3
                  bne          s3, s11, 121f
                  addi         s6, gp, 151
                  andi         gp, t6, -1940
                  andi         a2, s7, 32
                  auipc        s2, 301926
109:              sra          t1, s11, s2
                  and          s3, t0, a0
                  srl          s8, t2, s5
                  xori         a0, s5, -799
                  nop
                  bltu         a4, a0, 125f
115:              slli         s6, t6, 3
                  beq          t1, s11, 125f
                  bne          s9, a3, 122f
                  sra          zero, sp, s5
                  bge          s3, s2, 120f
120:              xor          t4, s4, ra
121:              beq          a2, s7, 140f
                  addi         a4, zero, 4 #init loop 0 counter
                  srai         t6, s1, 25
                  sra          s4, t5, t1
                  sra          t2, a7, a0
                  auipc        gp, 761080
                  sltu         s2, t3, gp
                  slt          a0, t6, a1
                  sll          s3, zero, t5
                  auipc        s2, 859985
                  srli         s7, a6, 15
                  sll          t2, s7, a1
                  xori         t3, gp, 1043
                  addi         a5, zero, 14 #init loop 0 limit
sub_1_17_0_t:     slt          a3, t3, s2
                  sub          s10, s8, t0
                  lui          t3, 90509
                  ori          a7, s9, 243
                  srli         s2, t3, 7
                  add          s4, a3, s7
                  xor          s5, a2, gp
                  addi         a4, a4, 7 #update loop 0 counter
                  xor          t1, t0, a3
                  lui          s8, 316520
                  lui          t0, 161367
                  bltu         a4, a5, sub_1_17_0_t #branch for loop 0
                  srai         t2, s9, 31
122:              add          a3, s8, a0
                  slti         a2, a2, 74
                  bgeu         t1, a2, 132f
125:              srl          s8, s1, t2
                  srli         s11, t2, 13
                  auipc        zero, 913356
                  xor          s10, s1, s11
                  sll          s11, t6, tp
                  beq          t1, s3, 136f
                  srli         t4, s4, 2
132:              bge          a3, s2, 133f
133:              bne          s9, a5, 144f
                  bgeu         s9, s3, 149f
                  andi         sp, a3, -1028
136:              slti         s4, s9, -776
                  bge          zero, s4, 154f
                  nop
                  xori         s1, a2, 187
140:              sra          s5, tp, t2
                  beq          t2, s4, 152f
                  slt          s7, a2, s5
                  nop
144:              blt          a3, tp, 164f
                  sltu         a2, s0, a2
                  slt          gp, t3, s9
                  bne          t0, sp, 153f
                  srai         s5, s0, 12
149:              beq          gp, s4, 168f
                  slli         t4, s5, 19
                  bge          a5, zero, 170f
152:              slli         s4, a2, 19
153:              bge          s0, s11, 164f
154:              srl          a2, a7, a5
                  sltu         s4, s3, a6
                  xori         s4, t4, 1720
                  sub          tp, t0, a4
                  sll          s1, sp, s7
                  bgeu         s6, zero, 168f
                  sltiu        a3, t0, 348
                  bgeu         zero, s5, 168f
                  sltu         t6, s2, t3
                  sltu         s7, a6, gp
164:              sra          tp, ra, s5
                  sltu         s3, s1, a1
                  nop
                  sltiu        s8, sp, -1853
168:              srl          s9, s7, a7
                  and          s5, t6, a5
170:              nop
                  slli         zero, s8, 9
                  srli         a0, a4, 27
                  slli         a1, a5, 11
                  srli         s10, a7, 12
                  bltu         a5, sp, 189f
                  bgeu         t4, t2, 177f
177:              slti         a4, s6, 108
                  sub          t1, t4, s8
                  slt          s7, t6, a6
                  sub          t0, tp, s4
                  add          a5, t0, t3
                  srl          s8, a1, t6
                  lui          a4, 947753
                  bltu         s2, t1, 185f
185:              beq          s6, a7, 192f
                  xori         t2, tp, 1024
                  blt          s2, s10, 193f
                  slti         zero, s0, -974
189:              bltu         a1, t3, 208f
                  slti         a7, s8, -675
                  add          t2, a6, a6
192:              slli         s6, s3, 22
193:              srai         s10, a2, 29
                  bgeu         s5, t6, 203f
                  srli         s5, sp, 28
                  xori         s7, t2, 1632
                  bltu         s10, a2, 207f
                  and          a4, a7, s5
                  sub          t3, t2, s3
                  slli         t1, gp, 14
                  and          a5, zero, gp
                  bltu         t6, t4, 207f
203:              nop
                  bgeu         s6, t5, 212f
                  sra          t3, a5, ra
                  blt          a7, a1, 217f
207:              and          s4, s2, a7
208:              srli         s8, s4, 25
                  srai         s11, t5, 8
                  auipc        t2, 869051
                  slti         s5, tp, 15
212:              ori          sp, a0, -43
                  srai         a4, sp, 12
                  sra          t5, a4, t2
                  or           s1, tp, ra
                  xori         a2, s3, 325
217:              srai         s8, s2, 16
                  srli         a4, s6, 30
                  sra          a1, t4, a1
                  sra          a5, s1, s1
                  auipc        sp, 561992
                  bltu         t1, t3, 227f
                  add          t4, a4, t5
                  addi         t1, ra, 1275
                  andi         a3, ra, 934
                  bne          a1, s5, 245f
227:              nop
                  ori          t0, s10, -1980
                  sub          s10, s8, s8
                  or           s1, a4, t4
                  xor          s8, a4, zero
                  or           s10, s9, a2
                  srli         t1, t3, 29
                  xor          t4, s11, s6
                  nop
                  xor          s9, a2, s3
                  bgeu         s3, t5, 255f
                  sll          t0, zero, tp
                  sll          sp, s11, gp
                  bgeu         s0, s0, 255f
                  bne          s3, a4, 244f
                  srl          a5, t2, a6
                  slti         a0, a2, 1858
244:              slt          s11, s6, s9
245:              sltiu        a3, a4, 223
                  blt          t4, a0, 251f
                  add          gp, s5, s8
                  nop
                  add          s6, s3, s9
                  bne          t0, t3, 259f
251:              srai         t0, s2, 17
                  sltu         t0, t2, s11
                  sltiu        a3, s2, 1303
                  sll          s10, gp, a7
255:              lui          s3, 21904
                  xori         s1, s2, 1833
                  sub          t0, s11, tp
                  lui          s11, 841919
259:              xori         s1, s1, -367
                  sll          zero, s11, s0
                  blt          a6, s4, 265f
                  bltu         s7, s3, 270f
                  srai         a3, ra, 21
                  srai         s5, s8, 5
265:              add          a7, t6, t1
                  auipc        s3, 589021
                  bltu         s5, s7, 275f
                  and          zero, s5, s5
                  slli         a4, zero, 26
270:              srli         s1, s4, 24
                  srli         t1, s5, 10
                  srl          zero, a4, a0
                  slli         zero, s4, 26
                  slt          sp, a3, gp
275:              sll          s7, t6, a3
                  sll          s1, s2, a6
                  sltiu        s4, tp, 284
                  xor          a5, a7, a3
                  ori          t6, a7, -696
                  sltiu        t6, s6, -1565
                  sltiu        t4, tp, -646
                  srli         t3, t6, 23
                  auipc        s8, 963652
                  addi         a4, t0, -818
                  sll          t6, t4, a3
                  bge          a1, t0, 300f
                  bne          a4, t1, 292f
                  xor          t2, ra, s7
                  slti         s8, a3, -696
                  lui          s10, 399948
                  srl          s11, ra, tp
292:              add          a1, t6, tp
                  bge          a5, s7, 313f
                  xor          zero, s0, s2
                  lui          s7, 506240
                  xor          a7, tp, s6
                  ori          a2, ra, -749
                  srli         s4, a0, 24
                  bgeu         t5, a6, 318f
300:              and          t1, s11, s3
                  andi         s5, a2, 538
                  srli         t0, t6, 11
                  lui          s7, 197328
                  bge          t1, s1, 321f
                  sub          s5, t6, t0
                  srli         s2, t6, 6
                  lui          t3, 717778
                  or           a4, s11, t0
                  sltiu        sp, a0, -176
                  sra          a4, t4, t0
                  slt          tp, t2, gp
                  sltu         t1, s2, a4
313:              slti         s3, s5, -1304
                  bge          ra, zero, 322f
                  srl          s11, a4, s9
                  slti         t6, s6, -904
                  xori         gp, a6, -1482
318:              bne          a2, s3, 325f
                  sll          a0, s5, a6
                  srl          t5, a7, s7
321:              sra          a3, tp, s3
322:              xor          t3, s6, s7
                  addi         a4, t1, -1519
                  xori         a7, a1, -1825
325:              lui          s11, 54232
                  bge          s0, a1, 335f
                  srl          a1, s4, s1
                  sltu         s7, s8, s8
                  sub          s7, s1, tp
                  slli         s2, s1, 10
                  addi         s1, a4, 1441
                  srli         s2, s6, 19
                  ori          s5, s11, 1666
                  blt          a5, s4, 353f
335:              sra          t2, s1, s6
                  slli         s7, t3, 2
                  sub          t2, a3, s8
                  srl          zero, s7, s6
                  ori          s6, s2, 1101
                  srli         s8, s3, 9
                  sll          t0, t6, s2
                  addi         a4, s8, -232
                  xor          s10, s3, t4
                  blt          t1, gp, 355f
                  bltu         tp, a2, 364f
                  sub          s2, a7, a2
                  ori          sp, s11, 1120
                  sltiu        s1, t4, 1130
                  auipc        s8, 932599
                  bne          s8, a0, 354f
                  srl          a4, t6, s1
                  bgeu         s10, s7, 358f
353:              bgeu         a3, t0, 358f
354:              srli         s2, t1, 17
355:              bne          s6, gp, 360f
                  bltu         t1, t1, 375f
                  slli         s1, t2, 0
358:              bge          s8, s0, 359f
359:              sub          t6, s6, t0
360:              sltiu        s9, zero, -800
                  sll          s7, s3, t6
                  add          t6, a4, s6
                  bne          a7, t6, 369f
364:              xor          s1, s6, sp
                  beq          s1, t1, 376f
                  sltu         a7, t5, tp
                  sltu         t0, zero, s8
                  sll          sp, s0, a1
369:              xor          t1, s3, s4
                  xor          a3, s2, sp
                  srai         s5, t3, 6
                  slli         a0, s5, 16
                  xor          s9, zero, a6
                  srl          s6, s3, sp
375:              xori         s1, a4, 386
376:              xori         a4, s9, -1906
                  sll          a5, a0, s9
                  bgeu         t4, t3, 386f
                  addi         t1, s11, -769
                  bgeu         s7, t5, 381f
381:              lui          a2, 923269
                  auipc        s8, 451942
                  bne          a4, gp, 386f
                  bne          t1, a4, 391f
                  sub          t4, t5, zero
386:              sll          s7, a1, s11
                  nop
                  andi         s3, s4, 364
                  sll          a0, s11, s9
                  xor          zero, s2, a3
391:              nop
                  blt          s11, a7, 400f
                  bgeu         s3, s3, 402f
                  srai         a0, s10, 31
                  sltiu        s7, t4, -200
                  bgeu         t0, gp, 406f
                  sltiu        gp, s3, 184
                  andi         a5, s1, -14
                  sll          a4, s6, s3
400:              srli         t0, a5, 21
                  sltu         a4, t0, a3
402:              sub          s10, t5, sp
                  srl          s10, s4, s7
                  srl          t2, t1, t5
                  sltu         s3, t6, gp
406:              and          t0, s6, s2
                  add          a2, a0, sp
                  addi         gp, s0, -1575
                  lui          a4, 600207
                  slt          s2, s6, tp
                  slli         t0, a2, 19
                  ori          t6, s4, -781
                  slt          t2, a6, t0
                  addi         a4, t3, -257
                  slt          s7, s0, s11
                  slli         s6, s9, 19
                  sltiu        t0, s2, -1343
                  sltiu        s3, t2, 1391
                  sll          t2, t4, s9
                  beq          s8, a7, 431f
                  bgeu         gp, ra, 436f
                  sra          s6, s10, zero
                  lui          t0, 209716
                  bgeu         ra, s9, 442f
                  beq          s0, a5, 434f
                  andi         t0, s2, -236
                  srl          gp, tp, a1
                  sub          s2, s8, s8
                  addi         a0, s10, -1598
                  slti         s9, s5, -1442
431:              srai         s5, a6, 8
                  slli         s9, t2, 21
                  srli         t1, s10, 26
434:              sltu         t1, a4, s0
                  srai         zero, t0, 23
436:              srli         s1, s10, 11
                  slli         a0, tp, 12
                  xori         t0, s7, 1372
                  and          t6, t2, s2
                  lui          s5, 604871
                  sltu         s6, sp, s6
442:              sub          a2, t1, t1
                  srai         t3, a2, 16
                  lui          tp, 930839
                  slti         gp, a3, 1336
                  sltiu        sp, s4, -363
                  beq          gp, a6, 450f
                  lui          s6, 268810
                  slli         s5, a0, 23
450:              srl          s3, a0, t2
                  xor          t4, s10, a4
                  addi         a1, a1, 596
                  srli         s2, t6, 24
                  sltu         s3, a5, t3
                  lui          s2, 510777
                  and          tp, t5, a5
                  ori          t1, a7, 216
                  add          t1, s10, t5
                  sub          t6, a5, s9
                  ori          t5, gp, -823
                  slti         t5, s9, 113
                  ori          t4, t5, 926
                  slli         s8, a4, 11
                  and          a4, s4, a6
                  addi         a5, zero, -5 #init loop 1 counter
                  or           t4, s3, s11
                  srl          gp, a4, a4
                  sltiu        t3, s1, -467
                  ori          t2, gp, 1364
                  slt          t5, s9, s7
                  addi         a1, zero, 9 #init loop 1 limit
sub_1_10_1_t:     slt          s5, t0, a5
                  slti         t1, a2, 200
                  sltiu        sp, s6, 358
                  addi         a5, a5, 7 #update loop 1 counter
                  and          s1, s5, a5
                  addi         s11, zero, 0 #init loop 0 counter
                  addi         s3, zero, 7 #init loop 0 limit
                  slti         s9, ra, 330
sub_1_10_0_t:     lui          s10, 495238
                  auipc        a3, 330545
                  auipc        a0, 8401
                  addi         s11, s11, 7 #update loop 0 counter
                  bne          s11, s3, sub_1_10_0_t #branch for loop 0
                  nop
                  beq          a5, a1, sub_1_10_1_t #branch for loop 1
                  sra          s2, s4, a1
                  sll          a4, a0, s4
                  slli         s11, t0, 1
                  sub          t5, t6, s7
                  ori          a2, s1, -1755
                  bne          s0, s2, 477f
                  sra          a4, t1, ra
                  slli         s1, gp, 14
                  sll          a1, t0, s3
                  bge          s0, t3, 474f
474:              andi         s9, t2, -560
                  bne          t3, s9, 490f
                  blt          t3, a0, 495f
477:              or           s8, s7, t5
                  srl          s6, s9, t3
                  blt          s3, t5, 487f
                  slt          s7, s10, a3
                  sra          t4, gp, t6
                  nop
                  lui          s5, 298886
                  slli         s9, t2, 21
                  add          s6, s9, a2
                  add          gp, s5, a7
487:              add          s1, t0, s1
                  slli         s7, t5, 25
                  bltu         ra, t6, 498f
490:              xor          s7, a0, s3
                  slti         a2, a3, 344
                  xor          s10, t4, a5
                  sub          s2, s3, s4
                  srai         s8, a0, 10
495:              sub          t2, s0, t6
                  srl          sp, a7, s11
                  lui          t5, 920906
498:              srai         zero, s7, 12
                  add          a5, s0, t5
                  beq          t5, t6, 506f
                  sub          s8, gp, a3
                  sltu         s7, t2, s6
                  bltu         gp, a1, 512f
                  slti         s8, t6, -1791
                  blt          s6, s1, 525f
506:              srli         a5, s10, 19
                  beq          s7, s8, 511f
                  bge          a7, t1, 513f
                  slt          s1, s10, gp
                  bgeu         a4, s2, 529f
511:              sra          s10, s11, s6
512:              xor          s8, a6, s10
513:              nop
                  bge          a4, gp, 525f
                  sub          s1, s7, a7
                  bgeu         s1, sp, 533f
                  sll          t0, s9, tp
                  srai         t3, ra, 26
                  bge          a1, tp, 538f
                  sltu         s4, a6, a5
                  slt          s11, a6, s6
                  srli         sp, s9, 11
                  beq          a3, s11, 533f
                  and          t2, s2, a2
525:              andi         t6, a0, 1763
                  sltu         zero, t0, a1
                  slli         a7, s1, 8
                  bltu         sp, s5, 536f
529:              sra          s3, a7, t5
                  addi         s7, t2, -802
                  bne          s3, t2, 545f
                  ori          s1, t2, -1225
533:              and          t1, s4, s9
                  blt          t6, t6, 545f
                  slli         zero, zero, 11
536:              srl          a3, gp, tp
                  slti         s9, a2, 441
538:              srli         s6, s3, 3
                  lui          s5, 1043098
                  slt          a0, a6, ra
                  srl          a5, s1, s9
                  and          s8, s4, s10
                  sll          s8, t2, sp
                  bgeu         s9, t1, 563f
545:              auipc        s8, 39058
                  sltiu        s10, t3, 943
                  add          s7, a2, t4
                  sra          s7, a5, a0
                  slt          zero, a6, s11
                  beq          a3, s7, 568f
                  or           a4, t6, a5
                  sub          s6, a7, tp
                  bge          a0, t6, 559f
                  nop
                  andi         a1, s2, 951
                  ori          tp, s0, -741
                  srli         t0, s10, 17
                  lui          a3, 178685
559:              srli         s8, t4, 6
                  sltiu        t6, zero, 1985
                  xori         s4, s6, -1241
                  sub          s6, ra, s2
563:              add          s6, s7, t5
                  sltu         t5, t4, a7
                  sub          gp, a2, s3
                  sub          s5, t0, gp
                  sltiu        s3, a2, 272
568:              ori          a7, a3, 642
                  sll          gp, s9, gp
                  auipc        a4, 459506
                  slti         t3, s9, -1171
                  sra          t2, s6, a6
                  slti         sp, t5, 1593
                  and          a7, sp, s3
                  and          a5, s9, s9
                  slti         a4, a4, -1160
                  srai         s2, s2, 7
                  blt          t1, s8, 585f
                  or           s6, sp, t1
                  slti         tp, a2, -1423
                  nop
                  nop
                  slt          t1, t4, tp
                  slli         gp, s5, 12
585:              bne          t1, a1, 586f
586:              blt          zero, t3, 591f
                  blt          sp, s0, 594f
                  bgeu         t6, t6, 597f
                  or           t2, s10, a2
                  auipc        a1, 780457
591:              bne          s4, s3, 602f
                  lui          a2, 350061
                  bltu         a7, s0, 598f
594:              bge          a7, t0, 613f
                  add          t4, s11, s1
                  srai         s6, a0, 16
597:              addi         t6, s7, 1349
598:              xori         s6, s1, 1840
                  or           a5, a3, a7
                  ori          a0, zero, -723
                  bne          t0, s0, 620f
602:              sltu         s4, s1, a6
                  sra          s2, a2, zero
                  bltu         s7, t6, 613f
                  and          s2, a3, zero
                  lui          a2, 805241
                  or           gp, sp, s9
                  or           s5, t1, s9
                  bge          t4, a7, 620f
                  add          t2, a1, a7
                  slli         t2, s4, 1
                  sltu         t6, s11, s0
613:              srli         s8, s6, 1
                  and          t0, s1, a1
                  xori         t6, s3, 1972
                  slt          t2, a1, t5
                  xori         t3, s3, 660
                  srli         s6, t3, 16
                  nop
620:              and          gp, gp, t4
                  add          t1, s8, s6
                  srl          s1, a3, a6
                  and          s2, s10, zero
                  and          s10, a1, ra
                  add          a7, t0, s11
                  bltu         s2, a2, 632f
                  sltu         a4, s9, s10
                  or           a4, a0, t1
                  sra          zero, a2, t3
                  beq          t2, zero, 635f
                  ori          zero, t5, -648
632:              auipc        s8, 924126
                  xor          s6, s5, t5
                  addi         t2, zero, -2 #init loop 1 counter
                  ori          a2, a2, -849
                  sltu         s3, a7, ra
                  addi         s5, zero, -6 #init loop 1 limit
                  xor          t1, s10, s2
sub_1_27_1_t:     lui          zero, 700109
                  addi         t2, t2, -3 #update loop 1 counter
                  addi         s6, zero, -2 #init loop 0 counter
                  nop
                  slti         t3, s4, 708
                  addi         a5, zero, 18 #init loop 0 limit
                  xor          a1, a4, a7
                  sll          s9, s3, s7
sub_1_27_0_t:     or           tp, s10, t0
                  sltiu        s2, a1, 1295
                  addi         s6, s6, 5 #update loop 0 counter
                  xor          gp, s0, t5
                  xor          gp, t2, s6
                  xor          a1, ra, a0
                  andi         a4, a7, -972
                  srli         s4, zero, 9
                  bltu         s6, a5, sub_1_27_0_t #branch for loop 0
                  slt          s7, gp, ra
                  bge          t2, s5, sub_1_27_1_t #branch for loop 1
                  sub          a1, a4, a1
                  slli         tp, a4, 20
635:              sub          s8, a7, a7
                  sub          t0, s2, t3
                  bgeu         a0, s5, 645f
                  bltu         s2, s11, 648f
                  sll          s3, t5, a4
                  bne          a6, t5, 646f
                  or           s8, t0, a3
                  bgeu         s3, zero, 661f
                  blt          s9, a3, 648f
                  sltu         t0, a3, t5
645:              srai         s11, gp, 27
646:              ori          s7, s11, -968
                  andi         a0, t2, 1168
648:              sll          a7, t3, a4
                  blt          a6, sp, 664f
                  sltu         s4, s2, zero
                  beq          s8, a1, 659f
                  srli         a3, tp, 17
                  add          s10, s8, t3
                  or           t1, t0, a0
                  addi         s5, sp, 16
                  slli         s2, a1, 20
                  ori          s9, s4, -887
                  bltu         tp, a0, 659f
659:              ori          a3, s9, 979
                  srai         s9, t5, 9
661:              srl          s3, a3, s9
                  sltiu        s6, s11, -1100
                  bne          t2, s0, 677f
664:              xori         t1, gp, -427
                  sra          t1, t6, a5
                  srl          a3, ra, a7
                  sub          gp, s8, s9
                  sra          tp, s9, a3
                  sll          s9, t2, tp
                  bltu         a6, tp, 688f
                  nop
                  sra          a1, t1, a4
                  sll          a0, t2, s11
                  slli         s11, s0, 31
                  slti         s7, a6, -1556
                  sub          gp, s10, a3
677:              lui          a3, 506439
                  sll          a1, a1, s4
                  and          zero, t2, sp
                  slt          zero, sp, s1
                  blt          t1, s8, 692f
                  beq          a5, t0, 699f
                  slt          a1, t3, sp
                  sltiu        s3, t2, 263
                  ori          a4, t0, -272
                  srai         s4, zero, 10
                  andi         t0, t4, 195
688:              nop
                  bge          a4, t1, 708f
                  auipc        a7, 508696
                  add          s2, a7, t3
692:              or           t4, t4, s9
                  add          s1, s7, s3
                  blt          a4, t6, 695f
695:              sltiu        zero, s3, -1584
                  add          sp, tp, ra
                  sltu         t1, s10, t1
                  bltu         s11, t4, 702f
699:              slt          a2, a0, s8
                  blt          s10, a0, 711f
                  beq          ra, s8, 709f
702:              nop
                  xor          a7, s0, s2
                  slti         t6, s9, 977
                  beq          a7, t5, 714f
                  and          sp, ra, tp
                  bltu         s10, s2, 710f
708:              xori         t3, tp, -981
709:              sltu         s4, a6, a7
710:              andi         s3, zero, -1576
711:              xori         a3, a4, 88
                  or           s7, s11, s2
                  auipc        a4, 334414
714:              ori          a3, s6, -1036
                  sll          s1, t6, a3
                  srai         gp, s8, 21
                  srl          t2, t3, ra
                  andi         zero, s5, -183
                  ori          s3, s5, 1
                  lui          s9, 707571
                  addi         s1, s11, -637
                  srli         t2, s4, 25
                  nop
                  and          s4, a1, s11
                  srl          s4, sp, t5
                  slt          s6, s1, gp
                  slli         s6, s4, 6
                  srl          gp, sp, t6
                  addi         t6, s11, 1630
                  lui          s10, 283850
                  and          s1, a4, a0
                  ori          tp, a0, -1277
                  slti         s8, s2, -1108
                  xori         s11, s7, 78
                  bne          a7, t1, 742f
                  sra          sp, a7, s10
                  bge          a5, s5, 746f
                  bge          zero, t2, 758f
                  lui          t6, 693122
                  addi         t4, a7, 1728
                  sltu         s6, s5, s1
742:              nop
                  xori         sp, t5, -623
                  or           s7, sp, ra
                  or           s3, t6, a3
746:              nop
                  auipc        tp, 171638
                  sll          a7, t6, s10
                  slli         s9, s10, 24
                  add          t0, t6, a6
                  blt          a5, t2, 758f
                  or           s5, s3, s3
                  beq          ra, t0, 758f
                  slti         s3, t5, 1723
                  xor          s8, t0, s2
                  lui          s1, 712239
                  slti         s10, s0, 1133
758:              srli         a7, s10, 9
                  bgeu         a1, a0, 760f
760:              andi         a5, s10, -1095
                  sra          a5, t1, s10
                  sub          s2, s8, t3
                  xori         s3, s10, -1317
                  bge          t3, s2, 779f
                  auipc        tp, 844845
                  sra          a5, a0, a7
                  sll          tp, a2, sp
                  sub          s8, a0, s1
                  slt          t2, zero, s11
                  add          t0, a5, s9
                  xor          tp, s2, a1
                  xori         t1, s9, -709
                  add          s7, gp, s0
                  slt          s10, t0, s10
                  sub          t6, t0, s1
                  and          gp, t4, a1
                  srli         s4, sp, 13
                  slt          sp, sp, zero
779:              sll          t2, s5, s4
                  bgeu         t5, s1, 791f
                  add          a2, t1, a4
                  sra          s2, a5, tp
                  bne          t0, a3, 803f
                  bgeu         t5, a6, 789f
                  xori         a0, a7, -804
                  sltiu        t0, s5, -1364
                  add          s4, a2, a4
                  blt          ra, a2, 807f
789:              sltiu        a5, t1, 948
                  srl          t4, s11, ra
791:              bltu         a3, t5, 798f
                  blt          s10, t1, 800f
                  nop
                  srli         a1, t3, 16
                  bne          a1, s10, 806f
                  xori         s6, s9, -308
                  nop
798:              or           t2, a4, a1
                  nop
800:              bgeu         a5, gp, 808f
                  srai         t1, sp, 23
                  bgeu         a3, a7, 812f
803:              slli         s5, a6, 24
                  srli         a1, t6, 17
                  slti         s1, s5, 532
806:              srai         a0, s0, 23
807:              bltu         t3, tp, 811f
808:              xor          s3, s0, s7
                  beq          t1, t0, 828f
                  srli         t6, a4, 3
811:              slt          s11, tp, t3
812:              addi         t5, s8, -1656
                  bltu         s7, s3, 821f
                  bgeu         s10, s9, 823f
                  and          s3, ra, a1
                  xori         s10, tp, 1255
                  and          s1, s11, a7
                  and          s5, t3, gp
                  blt          gp, s5, 825f
                  srl          t2, s0, s5
821:              sub          a0, s9, s10
                  srl          a1, s8, t1
823:              addi         s4, s1, -1001
                  lui          s7, 828893
825:              ori          s5, a0, -913
                  beq          t3, a1, 840f
                  bge          s3, s3, 844f
828:              bne          t4, s5, 839f
                  sll          s7, t3, a5
                  slti         a2, sp, 1109
                  lui          s4, 8859
                  sra          tp, ra, tp
                  blt          a4, sp, 851f
                  andi         t3, t0, 208
                  xori         sp, tp, 703
                  and          a2, a4, zero
                  add          t2, t2, t3
                  beq          a6, s6, 857f
839:              blt          t2, t0, 848f
840:              beq          gp, t1, 847f
                  srli         t4, t1, 2
                  sra          s9, s9, a5
                  add          s11, s9, s6
844:              nop
                  xori         s5, a5, 80
                  or           t4, s1, gp
847:              or           t4, sp, s11
848:              beq          a5, t0, 853f
                  auipc        s8, 841569
                  slli         zero, s11, 3
851:              sltu         t5, a7, s11
                  slli         a1, ra, 27
853:              sltiu        tp, a6, 1366
                  srli         t1, t1, 10
                  lui          t2, 819094
                  srli         tp, t5, 1
                  addi         t3, zero, -8 #init loop 0 counter
                  and          a4, s4, t4
                  addi         s3, s6, -1416
                  addi         gp, tp, -1314
                  sub          t1, a5, t4
                  slti         zero, a4, -1658
                  addi         s6, zero, -4 #init loop 0 limit
sub_1_25_0_t:     lui          tp, 945464
                  slli         t0, s2, 27
                  xori         t6, tp, 550
                  ori          a5, t1, 1657
                  auipc        s8, 444429
                  addi         t3, t3, 9 #update loop 0 counter
                  lui          t4, 253273
                  srli         s3, a5, 15
                  ori          t4, s7, 126
                  ori          a7, t5, -1455
                  sltu         t5, t1, t2
                  sra          t2, t4, a3
                  blt          t3, s6, sub_1_25_0_t #branch for loop 0
                  andi         a3, t5, -25
857:              sll          t5, tp, s0
                  andi         s3, t4, 66
                  bne          s7, s4, 865f
                  xor          s4, a7, zero
                  sra          t2, ra, t4
                  sra          s2, t5, ra
                  beq          t1, s0, 872f
                  srli         s6, a1, 20
865:              andi         s6, s0, -860
                  slt          s5, s6, a2
                  blt          t1, s7, 872f
                  ori          a0, a3, 447
                  sltiu        a4, t0, -602
                  and          t6, s4, a1
                  sltiu        s10, t4, -1350
872:              auipc        sp, 319248
                  bltu         s7, t3, 876f
                  andi         t4, t3, 1925
                  xori         s5, s3, 1104
876:              bne          a0, a3, 877f
877:              sltiu        t3, gp, 1196
                  bgeu         s4, t6, 897f
                  sub          zero, s0, s9
                  add          s6, a0, t1
                  and          t2, a3, a7
                  slli         t4, s0, 6
                  sra          t1, t2, gp
                  addi         s10, s8, -1065
                  srl          t4, s5, a1
                  add          a2, s8, s8
                  sltiu        s8, s2, -1152
                  add          a5, s1, t2
                  blt          t2, t5, 897f
                  ori          s10, s1, 728
                  bltu         t2, s10, 896f
                  slli         t1, a2, 23
                  slt          s4, s3, zero
                  add          t0, s3, a7
                  srl          a1, s3, ra
896:              sra          s1, s6, tp
897:              and          s9, s6, s6
                  and          t0, s3, gp
                  add          a1, s4, s1
                  srl          t3, s1, a4
                  andi         t5, s8, -437
                  sll          a5, a2, s1
                  add          a5, a3, s11
                  andi         t1, t1, 598
                  ori          t4, t1, 991
                  bgeu         a1, tp, 915f
                  bltu         s4, s11, 927f
                  sltu         sp, t6, sp
                  add          a0, s7, a3
                  srl          t6, t6, s9
                  bge          a7, s5, 914f
                  bne          s5, s5, 920f
                  or           s3, s6, s6
914:              xor          t6, s10, a6
915:              srl          s11, a7, s6
                  slt          a7, a2, tp
                  bgeu         t5, a3, 924f
                  auipc        s2, 656999
                  srli         s4, a5, 13
920:              sll          a3, a5, a5
                  ori          s11, a2, 1785
                  xor          t0, s6, t5
                  bgeu         sp, s11, 934f
924:              xori         a5, s1, 609
                  bge          tp, a5, 944f
                  or           t0, a2, a7
927:              and          gp, s2, ra
                  andi         s10, a4, 1147
                  slti         zero, a0, -837
                  srai         zero, a6, 3
                  sltu         s1, t4, t1
                  sub          a3, s5, s9
                  beq          a6, t0, 943f
934:              xori         a5, t2, 1516
                  add          sp, a0, a5
                  and          t1, s4, s9
                  srli         a5, t1, 12
                  bge          t2, s7, 943f
                  or           t2, s7, a4
                  srli         sp, s7, 17
                  sub          t2, s9, s9
                  srli         t4, a1, 25
943:              blt          t0, a1, 954f
944:              sltiu        tp, s9, -589
                  ori          s10, a0, -235
                  nop
                  auipc        a7, 191058
                  beq          s4, s1, 966f
                  auipc        s11, 10029
                  lui          s7, 862157
                  auipc        t2, 133147
                  bltu         t5, s6, 953f
953:              nop
954:              lui          tp, 861180
                  beq          tp, s0, 974f
                  addi         s1, s5, 303
                  slti         s2, s10, -767
                  slt          a1, s8, a7
                  bge          s2, t2, 965f
                  xori         t5, a5, 1762
                  srl          zero, t3, a4
                  slt          s4, tp, sp
                  sltu         s11, a4, s3
                  lui          a0, 512512
965:              bgeu         t6, s9, 972f
966:              slli         s8, s5, 2
                  beq          a2, a4, 976f
                  srli         s9, s10, 11
                  auipc        gp, 561893
                  srli         gp, s0, 15
                  addi         zero, t1, 2006
972:              sub          s4, t1, s1
                  bltu         t4, t4, 984f
974:              sub          s10, t6, s0
                  and          s1, t1, t4
976:              nop
                  xor          t0, a6, s6
                  bge          t1, s7, 983f
                  lui          a2, 367222
                  addi         s6, a4, 1647
                  addi         zero, t2, 1021
                  auipc        a0, 848755
983:              slti         a3, s10, 389
984:              nop
                  bne          s3, t1, 1000f
                  bltu         t0, t0, 1003f
                  slt          a7, a2, s9
                  and          s2, zero, t6
                  sra          a3, tp, s8
                  bltu         a2, t0, 994f
                  sltiu        s3, t3, 198
                  addi         s10, gp, -510
                  srl          t4, s3, s5
994:              beq          s3, a6, 1000f
                  sra          a3, t4, a2
                  srl          t0, s4, t4
                  add          t1, s5, a3
                  and          t1, t1, s1
                  beq          s7, s7, 1018f
1000:             sra          t0, t1, t6
                  add          s10, s0, s7
                  andi         t6, a7, -214
1003:             sra          zero, s1, t0
                  ori          s6, t0, -604
                  srl          s6, t4, zero
                  slli         s10, s4, 3
                  ori          s10, s5, -1101
                  slti         t3, s0, -1230
                  srl          s5, t3, a0
                  and          a0, s7, t2
                  blt          sp, ra, 1020f
                  addi         s1, zero, 4 #init loop 1 counter
                  and          s4, gp, t1
                  ori          s4, s5, 822
                  addi         a4, zero, -14 #init loop 1 limit
                  sra          s3, a7, s9
                  xor          t6, s3, t3
sub_1_5_1_t:      xor          t4, t4, t2
                  addi         s1, s1, -9 #update loop 1 counter
                  and          sp, t3, s1
                  addi         a2, zero, -4 #init loop 0 counter
                  addi         s10, zero, -16 #init loop 0 limit
                  sltu         s9, a7, t6
sub_1_5_0_t:      xor          s4, tp, s2
                  addi         a2, a2, -4 #update loop 0 counter
                  slt          s6, s1, tp
                  sltiu        t5, a3, 766
                  xori         s11, t1, 2022
                  srai         zero, a0, 2
                  bne          a2, s10, sub_1_5_0_t #branch for loop 0
                  beq          s1, a4, sub_1_5_1_t #branch for loop 1
                  sltiu        a5, gp, 1755
                  sltiu        a4, a7, -468
                  bne          t6, s3, 1021f
                  slti         a2, a0, -1742
                  or           s5, s0, t0
                  bge          s6, a2, 1017f
1017:             nop
1018:             sltiu        t2, t1, -732
                  xor          s5, t0, a7
1020:             xori         s9, a0, -1285
1021:             sub          s5, a5, t1
                  andi         s1, sp, -874
                  bgeu         sp, ra, 1042f
                  srli         s5, tp, 27
                  srl          s3, a1, s5
                  add          a2, s5, s6
                  slti         s2, t3, 1484
                  or           s3, a2, a4
                  xor          t0, s7, a6
                  slt          a0, s10, s1
                  slt          a4, s4, t5
                  sltu         t3, t5, t2
                  add          s11, s0, t3
                  auipc        a7, 981317
                  bgeu         t2, t2, 1049f
                  sltiu        a1, t3, 979
                  sub          s2, s8, s10
                  nop
                  ori          t3, t1, -974
                  sltiu        s1, ra, -727
                  sll          tp, s7, s1
1042:             srl          s9, tp, a2
                  sltu         t5, t6, s7
                  ori          s1, sp, -26
                  srli         t2, zero, 1
                  add          s8, a5, s4
                  sltu         t2, t1, t1
                  auipc        s5, 460053
1049:             bltu         tp, t4, 1068f
                  nop
                  or           a4, s11, s8
                  blt          s3, sp, 1057f
                  xor          s7, s11, s9
                  and          s3, t2, s6
                  sra          t4, t4, a1
                  and          s5, t1, s8
1057:             slti         zero, ra, -1791
                  bgeu         s9, t4, 1066f
                  and          t4, a3, a1
                  add          gp, ra, ra
                  blt          a1, a5, 1066f
                  blt          s5, s9, 1081f
                  add          t2, ra, a0
                  xori         s5, gp, -261
                  and          sp, a6, a5
1066:             sll          sp, a5, s5
                  add          t0, s10, a0
1068:             add          t4, t5, t3
                  bltu         zero, a6, 1088f
                  bge          ra, tp, 1077f
                  sltiu        t1, s10, 900
                  bltu         s8, t0, 1086f
                  bgeu         s8, s0, 1081f
                  bge          s0, a1, 1080f
                  xori         t5, a6, -1212
                  srai         s5, s6, 2
1077:             blt          zero, s3, 1092f
                  or           s8, tp, a1
                  bltu         s5, s10, 1096f
1080:             slti         a5, s11, -662
1081:             xori         s8, t2, -971
                  srai         t5, s3, 28
                  slli         t2, s11, 27
                  bltu         s9, s2, 1091f
                  addi         s9, t1, 1823
1086:             slli         t1, s3, 19
                  sltu         s2, sp, a1
1088:             addi         sp, tp, 1612
                  sra          s1, s3, gp
                  sltu         zero, a7, t0
1091:             nop
1092:             and          s9, s2, s5
                  bge          t2, s6, 1113f
                  bge          a0, ra, 1104f
                  bge          a6, a3, 1096f
1096:             lui          s1, 30159
                  auipc        t3, 657146
                  sltu         sp, s6, t3
                  srai         a1, s8, 13
                  addi         t4, s4, -1605
                  add          t4, a2, s10
                  bne          s0, a2, 1105f
                  sll          s11, a7, s2
1104:             bge          gp, t5, 1122f
1105:             ori          a0, s5, 417
                  xori         tp, t4, -1324
                  sra          s3, ra, s6
                  srl          t0, a3, a4
                  bgeu         s2, ra, 1120f
                  xor          s7, t2, gp
                  addi         t6, s8, -942
                  slt          t6, t3, s7
1113:             slt          a0, s1, t5
                  sub          s11, gp, t3
                  srai         s2, s8, 26
                  srl          gp, a5, ra
                  andi         t3, tp, -1365
                  or           sp, s4, s0
                  ori          gp, s6, 521
1120:             srai         a1, s11, 8
                  bge          a1, a7, 1132f
1122:             slt          a5, s3, s3
                  srli         t6, s7, 12
                  xor          t0, t3, a6
                  auipc        t5, 709685
                  or           t3, zero, s2
                  srai         s2, s1, 19
                  blt          t6, s3, 1137f
                  addi         gp, s11, -788
                  slli         t2, s6, 31
                  add          s7, t4, a2
1132:             xor          s3, t1, t2
                  beq          s10, a4, 1137f
                  bge          t1, a6, 1143f
                  or           t0, t1, s2
                  nop
1137:             beq          t6, a5, 1145f
                  blt          t2, t2, 1149f
                  sll          t1, a1, a6
                  sub          s3, t5, s0
                  ori          s7, s9, -289
                  bge          s5, zero, 1151f
1143:             blt          s2, sp, 1144f
1144:             bgeu         s11, a1, 1150f
1145:             andi         t3, sp, -1065
                  srai         s10, s6, 12
                  andi         t6, t0, 347
                  beq          a3, sp, 1167f
1149:             bltu         s9, t1, 1154f
1150:             bltu         a2, a0, 1160f
1151:             slt          a7, t0, t5
                  bne          t0, s4, 1153f
1153:             bne          s6, t5, 1172f
1154:             nop
                  blt          s3, a6, 1160f
                  slt          t0, t4, s5
                  nop
                  and          a2, a6, a6
                  slti         s2, t2, 1061
1160:             lui          gp, 364745
                  sltiu        a5, s3, -257
                  or           a1, a5, t5
                  bne          a2, s4, 1172f
                  srl          s1, a1, s8
                  slli         t2, a3, 22
                  bne          s9, s8, 1175f
1167:             sltiu        s10, s3, -654
                  andi         a0, a6, 1841
                  srl          a3, s0, t5
                  srl          a0, zero, s3
                  auipc        s8, 829709
1172:             bge          t2, s1, 1173f
1173:             addi         s1, a4, 1323
                  slli         a2, s5, 18
1175:             srai         gp, s10, 2
                  bge          s0, tp, 1184f
                  lui          t0, 426601
                  addi         s3, zero, -6 #init loop 1 counter
                  xor          tp, s9, s10
                  addi         t6, zero, -15 #init loop 1 limit
                  srai         zero, t0, 19
                  or           a4, t0, s0
sub_1_14_1_t:     ori          t2, t5, -737
                  srli         a7, a5, 21
                  addi         s3, s3, -9 #update loop 1 counter
                  addi         a0, zero, 1 #init loop 0 counter
                  slli         s4, s8, 7
                  andi         s8, t5, -244
                  srl          s5, t3, t3
                  addi         s7, zero, -17 #init loop 0 limit
                  or           t2, sp, s8
                  andi         s10, a7, -192
                  lui          a3, 287721
                  or           s2, t5, t0
                  sub          t5, t1, a2
sub_1_14_0_t:     sltu         tp, a7, t6
                  addi         a0, a0, -9 #update loop 0 counter
                  add          s4, t6, s2
                  beq          a0, s7, sub_1_14_0_t #branch for loop 0
                  srai         s8, tp, 4
                  auipc        t0, 904162
                  xor          s8, t2, a2
                  sltiu        s9, t2, 713
                  sra          s9, a4, a2
                  bne          s3, t6, sub_1_14_1_t #branch for loop 1
                  or           s1, sp, s9
                  xor          t6, s7, a7
                  xor          s4, s8, s7
                  sltiu        t5, a0, 1064
                  slt          zero, s9, s3
                  sll          s1, s3, a3
                  ori          t1, s3, -1185
1184:             bge          zero, s10, 1201f
                  bltu         a6, a4, 1204f
                  srl          s9, a2, ra
                  sll          a4, a1, s8
                  bne          s11, ra, 1193f
                  slti         s11, s8, -1229
                  srl          s4, s10, t4
                  lui          s11, 536901
                  or           t4, t3, s0
1193:             lui          sp, 410520
                  sll          a1, s11, sp
                  add          sp, a5, s4
                  sltiu        s11, t2, 1494
                  sra          s9, a4, t0
                  sub          sp, zero, a3
                  lui          t4, 998488
                  blt          gp, s7, 1211f
1201:             bge          a6, a5, 1220f
                  srl          s2, ra, t5
                  addi         a4, a6, 1972
1204:             bltu         t3, s6, 1223f
                  beq          a1, a0, 1219f
                  add          a4, t1, s8
                  and          a4, s4, s2
                  ori          a2, s6, -1140
                  lui          s4, 431674
                  bltu         t6, s10, 1217f
1211:             addi         sp, a4, -1201
                  srai         s3, s0, 28
                  bne          a0, t1, 1231f
                  srl          s8, a7, t4
                  nop
                  bne          s7, a4, 1236f
1217:             sll          a0, s9, s1
                  sub          t6, gp, t6
1219:             srl          s4, s7, a5
1220:             beq          s5, a5, 1231f
                  addi         s8, s0, 60
                  srl          s7, t5, a6
1223:             sub          t3, t3, t1
                  ori          t6, t6, -377
                  blt          tp, tp, 1229f
                  andi         s6, gp, -5
                  xori         s8, a6, 1574
                  slt          a0, s1, a4
1229:             srl          s8, s10, a4
                  lui          a3, 414235
1231:             sub          s1, a2, s2
                  sll          t2, a5, a1
                  slli         s9, s9, 29
                  blt          s2, t5, 1237f
                  slli         s4, s2, 12
1236:             sltu         s4, t5, s4
1237:             sra          t5, ra, s1
                  bne          s11, gp, 1245f
                  srl          t4, s11, s1
                  or           s7, t6, a7
                  add          s9, tp, a2
                  andi         s11, t4, 872
                  srl          a1, ra, s6
                  beq          sp, a2, sub_1_j6 #branch to jump instr
                  nop
                  andi         a2, t6, 610
                  andi         s5, s4, 1458
sub_1_j6:         jal          s4, sub_5 #jump sub_1 -> sub_5
                  and          t6, s4, a0
                  srai         s10, t0, 5
                  sltu         a4, a4, gp
                  srl          a2, t6, a5
                  sra          sp, s7, a4
1245:             bltu         s2, s0, 1260f
                  slli         a4, s0, 19
                  bltu         a4, t5, 1253f
                  sll          gp, sp, gp
                  sra          s3, a1, a4
                  xor          t5, a6, t5
                  sltu         s1, a0, a5
                  add          s1, t3, a4
1253:             sltiu        gp, s5, 290
                  sll          a5, t6, s7
                  bltu         s6, s10, 1261f
                  xori         s6, s6, 376
                  andi         s9, s3, 1369
                  sltu         a0, a3, ra
                  srl          t6, a6, tp
1260:             sltiu        s5, a1, -1571
1261:             sub          t1, t6, t3
                  bgeu         s2, sp, 1271f
                  auipc        a0, 624480
                  bne          a6, a6, 1275f
                  slt          t2, a3, a5
                  srli         sp, ra, 6
                  srli         a5, s3, 0
                  sll          gp, t6, a5
                  blt          s11, gp, 1277f
                  bgeu         s3, a7, 1278f
1271:             bne          t4, a1, 1276f
                  addi         a7, s6, 93
                  andi         s11, s8, -1937
                  sltu         s9, s10, a7
1275:             bne          s1, a5, 1282f
1276:             slti         a0, s7, 1085
1277:             andi         gp, a6, -714
1278:             addi         a0, t2, -1170
                  bge          a7, a6, 1285f
                  addi         gp, s9, -1726
                  add          t4, zero, s8
1282:             bne          a4, a0, 1287f
                  lui          a7, 354961
                  slti         s8, t4, -3
1285:             bltu         s3, a0, 1295f
                  blt          t6, t1, 1301f
1287:             bltu         tp, t1, 1296f
                  andi         a3, a4, 965
                  nop
                  bltu         zero, sp, 1295f
                  sltu         t5, a0, s11
                  slli         a3, t4, 17
                  srli         s6, a0, 12
                  bgeu         s4, s3, 1299f
1295:             beq          a1, t0, 1306f
1296:             andi         a5, s8, -2038
                  addi         t3, a7, 118
                  srl          s7, s7, a2
1299:             bge          s2, t6, 1313f
                  nop
1301:             srl          s10, t3, a1
                  ori          t6, s1, 1659
                  and          s9, a6, a4
                  or           t6, t3, s6
                  andi         a0, a4, 372
1306:             sub          t2, a0, t6
                  bge          s9, s7, 1313f
                  xor          sp, s5, a3
                  xori         t4, a7, -1676
                  xor          t6, t5, tp
                  xor          t0, s1, s8
                  bgeu         a2, s5, 1331f
1313:             xori         sp, s11, -2048
                  xori         a0, a3, 2040
                  bltu         t1, s8, 1332f
                  sltiu        s3, s7, 1199
                  sll          a7, a2, s2
                  slli         s1, s6, 3
                  slti         a1, a0, 590
                  sll          s2, s8, s4
                  xor          s5, sp, s10
                  blt          t1, s2, 1341f
                  auipc        t0, 48310
                  sll          t6, s4, t5
                  srl          a2, a1, a5
                  and          a3, tp, a3
                  bgeu         s2, s3, 1347f
                  bltu         t1, t3, 1332f
                  auipc        s11, 720694
                  bne          a1, a7, 1341f
1331:             xori         a7, a1, 119
1332:             add          s6, s11, a0
                  nop
                  xori         s11, ra, 1455
                  bltu         s5, a2, 1342f
                  andi         s8, t3, 21
                  bne          t4, s2, 1348f
                  sub          t0, a6, s6
                  sltiu        s3, t0, -949
                  sra          s6, s11, t5
1341:             bne          a7, s10, 1342f
1342:             add          a4, gp, s8
                  bltu         s5, t3, 1362f
                  andi         s8, s10, -859
                  blt          a1, t0, 1353f
                  beq          t1, s8, 1347f
1347:             addi         s8, s7, 982
1348:             slt          zero, t6, tp
                  addi         s10, s1, -1071
                  slti         zero, a6, -1833
                  srl          s4, a3, a1
                  auipc        tp, 366228
1353:             addi         s3, s9, 1140
                  srai         a3, t2, 10
                  slli         t6, s9, 4
                  sra          s5, s0, s5
                  addi         t3, a5, 93
                  xor          s3, s2, a3
                  sltiu        s5, tp, -1268
                  blt          a3, t1, 1378f
                  slli         t0, t1, 19
1362:             andi         sp, sp, -1596
                  slli         t5, a0, 22
                  sub          s6, a5, s11
                  nop
                  srli         a3, s5, 0
                  bltu         ra, a1, 1370f
                  sltiu        t4, s4, -220
                  slli         s7, a7, 16
1370:             srai         t5, t2, 20
                  slti         a2, gp, 358
                  ori          s11, s9, 971
                  beq          a1, s0, 1381f
                  sltu         s2, a1, a6
                  slt          s10, a0, s1
                  sra          a2, a0, t1
                  sll          t0, sp, a5
1378:             sltiu        a2, s9, -939
                  beq          s11, s10, 1388f
                  sll          a4, t3, t3
1381:             nop
                  sra          s2, t4, s9
                  blt          a6, sp, 1391f
                  sub          a0, s2, s11
                  srai         s8, s1, 24
                  nop
                  slti         s2, a0, 349
1388:             beq          s3, s7, 1397f
                  srli         s9, s8, 5
                  srli         t2, s11, 20
1391:             bltu         t0, s8, 1410f
                  srli         t3, s4, 17
                  slli         zero, tp, 27
                  ori          t1, t6, 1757
                  srai         sp, s6, 1
                  slli         a1, a7, 29
1397:             ori          s3, ra, 686
                  add          t3, s3, s3
                  andi         s5, s8, -310
                  bge          s5, t6, 1406f
                  bge          s9, a3, 1407f
                  and          sp, s5, zero
                  beq          t0, s1, 1408f
                  and          s10, t6, s6
                  sltiu        s4, s10, 2015
1406:             andi         a4, a3, 377
1407:             slt          s10, a4, t6
1408:             bltu         s3, zero, 1415f
                  auipc        t3, 108372
1410:             andi         s6, s6, -835
                  srl          t1, t1, s11
                  xor          s6, a1, t6
                  sub          sp, t3, s6
                  bltu         t6, s10, 1423f
1415:             addi         t2, s5, -734
                  srli         a4, a2, 24
                  bne          tp, s11, 1422f
                  sltu         zero, s6, tp
                  and          s6, ra, tp
                  add          a1, s6, s9
                  slti         a0, a2, 846
1422:             srli         s6, t1, 9
1423:             sub          a0, s0, gp
                  bltu         t6, a3, 1439f
                  or           a0, t3, a0
                  beq          t1, a1, 1430f
                  xor          t6, a4, ra
                  sltiu        a5, t2, 1451
                  bne          s7, a4, 1448f
1430:             srai         tp, a0, 7
                  srl          t1, t0, t5
                  ori          s10, a6, -1509
                  add          s3, s5, zero
                  nop
                  xor          t4, a0, t6
                  or           s2, a7, a0
                  addi         s11, s8, -181
                  srai         s9, s8, 1
1439:             bge          a1, zero, 1450f
                  bne          a5, a0, 1448f
                  xori         a4, s4, 1477
                  sltiu        t3, t4, -1820
                  beq          t0, gp, 1452f
                  srli         s1, a3, 5
                  slti         sp, t3, -1241
                  blt          t3, t4, 1453f
                  auipc        a4, 953620
1448:             andi         s1, a7, 806
                  bltu         t0, s5, 1463f
1450:             srai         s7, s9, 23
                  bgeu         a7, zero, 1461f
1452:             slti         gp, a6, 779
1453:             bltu         s3, s5, 1471f
                  sub          t2, t6, t5
                  beq          a2, s6, 1471f
                  slt          a7, a3, t4
                  sltu         t2, a2, a1
                  beq          zero, s8, 1471f
                  xor          a5, s7, a0
                  slt          sp, a7, s8
1461:             sra          a0, s1, s7
                  lui          s4, 889229
1463:             lui          t5, 236162
                  addi         a5, s1, 91
                  slti         tp, sp, -720
                  ori          s3, s6, -568
                  beq          a3, t4, 1471f
                  blt          a1, t0, 1471f
                  beq          t6, s3, 1471f
                  auipc        tp, 738478
1471:             slt          gp, sp, t4
                  sra          sp, sp, ra
                  lw           s4, 4(a6)
                  srai         tp, s3, 11
                  auipc        a0, 911321
                  slli         t4, gp, 18
                  nop
                  add          s10, s0, s3
                  andi         s9, a0, 1732
                  xor          a3, s7, s3
                  add          s5, a6, a6
                  addi         a6, a6, 52
                  or           zero, a3, a4
2093:             addi x10, x20, 0
2093:             jalr x10, x10, 0
sub_3:            beq          t6, s5, sub_3_stack_p
                  sll          s5, tp, s4
sub_3_stack_p:    addi         a6, a6, -32
                  srai         t3, s8, 28
                  sub          s8, a3, a2
                  slli         t0, s4, 29
                  sw           s4, 4(a6)
                  srai         t1, a3, 22
                  slli         a3, a4, 6
                  xor          sp, tp, s9
                  blt          s8, a0, 5f
                  andi         s11, zero, 256
                  bge          s1, s11, 9f
                  or           s6, s2, s8
5:                srl          a1, tp, s9
                  slli         s6, s5, 2
                  and          s8, a4, s10
                  bge          s4, a0, 9f
9:                auipc        s4, 764043
                  lui          s7, 102403
                  lw           s4, 4(a6)
                  sra          sp, s8, a5
                  lui          a1, 673657
                  slti         s2, gp, 2022
                  nop
                  addi         a6, a6, 32
                  srl          gp, t5, s11
                  slti         t0, a2, -2013
28:               addi x13, x20, 0
28:               jalr x13, x13, 0
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
.word 0xc5e284d2, 0xe6d0da5d, 0x27bb825d, 0x8ab7eb38, 0xa128764f, 0x266fb0b0, 0x1e74f605, 0x3e075abb
.word 0x65b133ad, 0x5fa9fc0d, 0x858cdb05, 0x703e526c, 0x58cda0f7, 0x5fdf49ce, 0x5988711a, 0x405416af
.word 0xbad7dc41, 0x7a8f2d53, 0xbaa0e081, 0x99e2f28b, 0xc0706a53, 0x3f8b5c0c, 0x795ba2e3, 0xed4538a4
.word 0x199a0396, 0xb5336ad7, 0x7953fc13, 0xcb53adac, 0xe918beae, 0x7e32a196, 0xf143385f, 0x1072a4f8
.word 0xbc089b3c, 0x5f488871, 0x1f918a84, 0x56066261, 0xc3622e2d, 0xb16435af, 0x49d7ed50, 0xd1f4911e
.word 0x4a513928, 0xa95bb1a7, 0x18399c30, 0x8c0a15d8, 0xeeb18555, 0x5f6da941, 0x603c0908, 0x1d11e943
.word 0xb93584f3, 0x500949d4, 0x852296d0, 0xcadd44f5, 0x8a1a56c8, 0x7e5f6882, 0x16574495, 0x23c7132d
.word 0x4073cc69, 0xd380a420, 0x01ef8908, 0x808ed30c, 0x20f64a57, 0x9d7c0d6a, 0x35c1e7a7, 0x5e6d2aba
.word 0xf1c8b84d, 0xebf4c812, 0xd2124ab6, 0x66dac7e8, 0x22f5b217, 0x4ebc2660, 0x1da77922, 0x1480a143
.word 0xc18ca89a, 0x6abc5441, 0x80ad8ab1, 0xb9730d28, 0x8caf1eb6, 0xf92adebe, 0xdd02c1b1, 0xe6b78b91
.word 0x95c244e1, 0x36d6f5f7, 0x6af4de78, 0x38a960f5, 0xe1a54b83, 0xb5dbd3e9, 0x8e881377, 0xa199735d
.word 0xaecd77b9, 0xd4778c20, 0x20e98763, 0xb6ec4393, 0x8a4e9b37, 0x4e34a800, 0x72803850, 0x7d561c81
.word 0x538123ea, 0x355e42a1, 0xcd6a6d64, 0x25136595, 0x95a8e698, 0x31c7f20b, 0x1b1f500b, 0x23ac987b
.word 0x197d52c0, 0x608aab32, 0x4494f7ac, 0x28377193, 0xd30f4b83, 0xec472e5a, 0x89c25be6, 0x058ac15e
.word 0x2070deb8, 0xa393893a, 0x00f68f39, 0x6734df18, 0x39efce26, 0x254d8e9e, 0xcc83574a, 0x5ff2acd1
.word 0xe0662884, 0x899cbc63, 0x72b07aaf, 0x21ab3bb9, 0x47c837a4, 0x3b72c0af, 0x5ee104c5, 0x0438eca9
.word 0xce28c0bb, 0x0c18c1b2, 0x4387e4a0, 0xf426e421, 0x31f1475b, 0x1be48614, 0x4d71920a, 0x3087f5cf
.word 0xc15dda0b, 0x84e39816, 0xcca16f01, 0xdd10bb44, 0x4d751248, 0x170413e7, 0x5d00322e, 0x9f33faf0
.word 0x97e51f28, 0xf8862814, 0x2811abaa, 0x12933c53, 0xd5be7272, 0xefe37602, 0x68d8784b, 0x32d522c3
.word 0xe3f25d9d, 0x7f2bdaca, 0xbba5b979, 0xe0158b8c, 0x14dbd7ba, 0x2467f7dc, 0xa2f24712, 0xc99725de
.word 0x38dd5648, 0x8c12cf70, 0x8d745e63, 0x531701cf, 0xc5807955, 0xd8500806, 0x4e121ff1, 0xd682c27e
.word 0x39d1a6c2, 0xcd1769b4, 0x9ea12a46, 0xc9cc2479, 0x79290f11, 0x1244c57a, 0xc560c39d, 0x544c6cc6
.word 0x8543cade, 0xda8d1c71, 0x8af55261, 0xe78e2958, 0x790e42f0, 0x39e679ea, 0xa14ff0ca, 0xe3a9819b
.word 0x84b7dc59, 0x8344252f, 0xc6f3bb79, 0x05787e18, 0xa8374932, 0xcf43779b, 0x9bedc7d4, 0x983987c3
.word 0x455d1ac5, 0x059005c1, 0x7ae3ff53, 0x37c4299e, 0xa9a1af99, 0x985c518d, 0x9ab25bd9, 0x47f9b167
.word 0x7d0a57ed, 0x89f61f10, 0xa75bf45e, 0xd5e266f7, 0xd2a5f15c, 0xaf1bebd8, 0x26976f80, 0x03763548
.word 0xf4108b16, 0xabdffe5e, 0x8bf128dc, 0xe60632c9, 0xfbdff15e, 0x3b6be397, 0x0a2f6fa1, 0xcb0f2021
.word 0xdfbbca4f, 0x3a7d193f, 0x730ee6ec, 0x80ba310d, 0x1c0c7bdd, 0xbdf2a4c5, 0x866a1969, 0x741da99e
.word 0x2acb20c3, 0x336fd56e, 0x7584a3cc, 0x76e26404, 0xc85e31a4, 0xb6561e23, 0x50c9d089, 0x3cc6a651
.word 0x5459d6b4, 0xa27bd693, 0xd79b5d34, 0x1128af58, 0xe48da984, 0xf8661dad, 0x0094b1f4, 0xcaa31e52
.word 0x31d03bef, 0xdc008f46, 0x635ee79c, 0x7fe7cdca, 0x0352cd8c, 0x1bf39fad, 0x837398ff, 0x8e02f531
.word 0x75910aea, 0xe15ebdb5, 0xaf0bdff1, 0xf2f6b36d, 0x64b49953, 0x4f04c3b5, 0x89f38513, 0x98112e36
.word 0xe8dccbc2, 0x122dfcc1, 0x0dad6e22, 0xf55e13ba, 0xe4af9d9c, 0xeb1cab14, 0x7c255fc6, 0xd415f4e2
.word 0x47373806, 0x83d2b9bb, 0xdf5d0cf1, 0xf97727dd, 0x304ecf34, 0xd0dcd684, 0x59f665d8, 0x5e82f04f
.word 0x823b7d60, 0x124a5c4e, 0xd6099d08, 0x98472ee9, 0x46fbc245, 0x88088756, 0x669ba2b5, 0x75568436
.word 0x888cf42d, 0x22af5ba9, 0x5860f8d1, 0x3f88a33e, 0x2e243fe4, 0x77d535ca, 0xfe372c5b, 0x174a4c12
.word 0x9cd4aca5, 0xf56df4d4, 0xa1bdd595, 0xf2114dfd, 0xab7aac34, 0x96ba4b44, 0xf74ea341, 0xec5cb139
.word 0xf1a5f3e8, 0x78d0b1e1, 0x1789ae4e, 0xd0e56b0d, 0x89c87198, 0x9bad552f, 0x5484f8be, 0xe4749fa3
.word 0x4c619949, 0x23ac439c, 0x40b61600, 0xf0342efb, 0xa767d92d, 0x82d2bad2, 0xaa5e3000, 0x8aa2e7f1
.word 0x96926953, 0xcc3c9529, 0xa299bfda, 0xcea15bc9, 0x1eaac7e4, 0x46fb385a, 0x3c632911, 0x3c24f467
.word 0x49a6ed4f, 0x41f9fd3d, 0xc0a4bcb4, 0x07f012f4, 0x6eb06b4d, 0x2bf4b56b, 0x1ed8a2eb, 0x2b534843
.word 0x4eb8263b, 0xb9db6c81, 0x1778f768, 0x66a00dcd, 0x5c14a0e1, 0xa085695a, 0xc47e4cba, 0xb7dad36e
.word 0x92ec1d1e, 0xcab14471, 0x7630b222, 0xcabf84ad, 0xdb2e3243, 0x91eabc90, 0x846e9031, 0xffe1028c
.word 0x03532dbd, 0x8e9206b9, 0xb6e79a68, 0x9719f53a, 0x1bffc08a, 0x80ed5ab8, 0xdfc9395d, 0x6fedc883
.word 0xedc59d74, 0x94a6b7f6, 0xa7c3088c, 0x092846b8, 0xf41d732c, 0xa712fc9b, 0xfe6d84f3, 0x609f261b
.word 0xda39b8a3, 0x3ebffc4c, 0xf2db79fd, 0x8f4c014c, 0x19debec4, 0xd0f4c23d, 0x036b008e, 0xbb8af655
.word 0xb024da52, 0x71ad8b12, 0x8d8d4c5b, 0x6be9da69, 0xb7dccab2, 0xece57552, 0x07c9197a, 0x79839db8
.word 0xfde63b51, 0x700cac5d, 0xa6433d86, 0x776e46d9, 0x6e7b6c78, 0x9d1686a1, 0x5dfd3fb0, 0x60f30872
.word 0x704cff21, 0x0698e01f, 0x81fff543, 0x2f34dcd7, 0x712cfa87, 0x598a97ad, 0x77580b06, 0x79f0fb4f
.word 0x1fae23d2, 0xa4fe5b1c, 0xf3a04d56, 0x7751ce1e, 0x7348ff5e, 0x22cc3d08, 0x8e01d825, 0x0b6fcfd7
.word 0x18707113, 0x655bd180, 0xa561b432, 0xe3ddafbd, 0xa94c6b86, 0xcf8d7f73, 0x1fd511a8, 0x1bfcaf75
.word 0x2cef935a, 0xc6556b2d, 0x5092c944, 0x05104467, 0xa17ee99f, 0x8400c7b9, 0x809bfe0f, 0x8203c2c6
.word 0xbfb624a7, 0xc74c2b14, 0xd7f2c6e6, 0x1ce144e5, 0x6cc6ff0b, 0x7e9aeafc, 0x1e8a290f, 0x5dc72db1
.word 0xed82181d, 0x0ddfd2b9, 0x9050026f, 0xf018e27d, 0x1b0a51c1, 0x0502fa5d, 0x2485ffb5, 0x8bf07b7a
.word 0x3b1f7755, 0x390525bd, 0xd6b79e35, 0x6b2f036f, 0x8c5a5d4a, 0x48f7557d, 0x264cda88, 0xe49809de
.word 0xb1a17f6e, 0xde5844f2, 0xc04d8278, 0xad7c9a76, 0x716bb382, 0xd14f7d69, 0x187148ed, 0xf46d8302
.word 0x2bdfe5fe, 0xd9f18f54, 0x07a73cc0, 0x9a41a4a4, 0xd6d3f7aa, 0x753f17cc, 0xea39b830, 0x5f13ac1f
.word 0xe9e43f58, 0x21a5b565, 0xd894307e, 0x7e112ad1, 0x812ee661, 0x4130f91d, 0x760f8b41, 0x7e5e91de
.word 0x51e92e17, 0x17ba592d, 0xa67c5c91, 0x35bcd460, 0xa97d4be2, 0xded87094, 0xee52fcf7, 0xb746dc81
.word 0x05364929, 0xc92763b9, 0xe9ee150c, 0xc17cf993, 0x58d0a727, 0x95eaaa7b, 0xedd1dcb3, 0xbbe632ab
.word 0xac6c4271, 0x786d0305, 0x8fee18aa, 0x28a46d0f, 0x47341481, 0xffc6c39b, 0xd1f9f59e, 0x84b3468f
.word 0x895ae026, 0x4ab423f2, 0x37496c8d, 0x6cb1117a, 0x687bd4df, 0x3ce75b59, 0x93ee9454, 0x56c2daf0
.word 0xcde77aba, 0xa69e20c5, 0xe690c126, 0xa3003536
.section .region_1,"aw",@progbits;
region_1:
.word 0xf2cac49b, 0xd8c7af26, 0xdaa92f09, 0xa69611f5, 0x7bd497b1, 0xb9f5bafd, 0x9f73f9e6, 0x5ee311aa
.word 0x67b51776, 0x07827315, 0xf8bcde7b, 0x296b87b4, 0xbf1611ae, 0x4107d2c1, 0xb4e59a38, 0x49f71313
.word 0x71f49405, 0xc77a23d5, 0x976d26ce, 0x8936f1da, 0x5dc3f0f7, 0xa330f272, 0x716db05a, 0x559673ee
.word 0x83aa59ab, 0x9434ab45, 0x9516c04d, 0xce4ecdcf, 0x3cf1dabc, 0xa8619eec, 0xdd429a17, 0xbb14a4f5
.word 0x0febdd1b, 0x9d68c3cb, 0x78da719d, 0xf185f695, 0xbd163871, 0x8de9b1b3, 0xde18f9b1, 0x69b20e65
.word 0x887f7b43, 0x27c7cce8, 0x12de660e, 0xb5d879fa, 0x9739aedc, 0xca68e6a1, 0x4dce546a, 0xa0778884
.word 0xb4216643, 0x94d78681, 0x6135e965, 0xaaaebb8b, 0x4120fc5f, 0x09b39434, 0xf11d1238, 0xf894715d
.word 0x5059a05b, 0x447495a5, 0x073b7572, 0x737dbbcb, 0xdadb2bb6, 0x518aea00, 0x7d7fb5d4, 0xcccb6ece
.word 0xd3c8b09d, 0x6b28466a, 0xd62b69cb, 0x5951a889, 0x901ee3a9, 0x9cd4b697, 0x69cf8988, 0xe65df3e9
.word 0x11d90ce3, 0x4536ac60, 0x6ef61e07, 0x466b7c5d, 0x7bf1aa24, 0xf109301d, 0xaf916665, 0x416a0ee3
.word 0x78356fa8, 0x414a2449, 0x07aaafaa, 0x5cb4713d, 0x6f552477, 0xf255703c, 0x7ef5b6d8, 0xdee60fc2
.word 0x9779e5bb, 0xc5d9e750, 0x3ed4e039, 0x8c8feecb, 0xfc47de32, 0x0457160a, 0x32d05984, 0x9ed2e5af
.word 0x8f0dcbdf, 0x62ccd419, 0xec335612, 0x6b872f8e, 0x7ec1ec68, 0xde1e6246, 0xadce9c21, 0xe2eeb4ca
.word 0x3a63e5b8, 0x4cb6f945, 0xc33fe48f, 0x91b205c8, 0xd5c7046f, 0x0ef7934f, 0x98cfb474, 0x7514ca94
.word 0xf7fadafb, 0x2ca31a26, 0x0127472a, 0xa3f079b3, 0x01b3b87c, 0x8eca9793, 0xd0786b3d, 0x63a105fc
.word 0xb5498986, 0xd30c46a8, 0xb27bdb6b, 0x9bbd7db7, 0x37bda434, 0x5cb481f5, 0x3ba2510e, 0x532ce7b7
.word 0x7e04969d, 0xd6606645, 0xed550c63, 0x1f605a16, 0xf0c0d483, 0x564a7267, 0xd19a067a, 0xa0cccc33
.word 0xc4f734d4, 0xdf8fb217, 0xc8726b04, 0x45a4cfde, 0x202ec9c5, 0xde312ec9, 0x06150c2b, 0x3f30c4db
.word 0x20462ea0, 0x6c651d12, 0x3f546c7e, 0xbf56dfb1, 0x53cb3ab9, 0x7e32bb66, 0xf4ed19bd, 0xc04c6a18
.word 0x08b8931d, 0x744d8d0f, 0xec64d0cd, 0xfe70c684, 0x7d19a492, 0x05bc437b, 0x125580c5, 0x61ca6290
.word 0x40c62ece, 0xdf98d8c8, 0xf3fd0278, 0x42015900, 0xd98ce073, 0x72569679, 0x4c4054ee, 0x0f069895
.word 0x95e5d50f, 0x0f12be8d, 0xf36baa81, 0x0a011d28, 0x79e7a05e, 0xff280402, 0x1285257a, 0x43500467
.word 0x3968a2f5, 0xeb53802c, 0x6e463bc1, 0xeb31a4c6, 0x44fb7338, 0x3832341e, 0xa9ad93ac, 0x530eb319
.word 0xcc030dcd, 0x6c6c87c5, 0x1390cd5a, 0xe50f4eec, 0x957d0b7b, 0x111263f1, 0x4f4351ce, 0x8d1a1991
.word 0xeba3475d, 0xc867e23f, 0xde7d0bb7, 0xb9203e0c, 0x0fa1e7c2, 0xc8993138, 0x5f2afe34, 0xcd60c86b
.word 0x7738ede1, 0x4a871b95, 0x1f695f95, 0xedb5fc68, 0xf7bc923b, 0x27dc548a, 0x11cfebcb, 0x80f10ad5
.word 0x99b6e87b, 0x851e10ba, 0x637b0b08, 0x2baef34c, 0x1b07d137, 0x06388544, 0x8bf63a6b, 0x343ebd35
.word 0x3f3fe76b, 0x16093238, 0xe9bbf2e4, 0xa670368b, 0x8cedff95, 0x382f62bb, 0x41e95379, 0x1d1b2744
.word 0x9288ad0d, 0xf35c9a4d, 0x24870084, 0x64813852, 0x9bb270ce, 0x96cf684a, 0xc5ca7b10, 0x7c6f6372
.word 0x7d709f40, 0x268f3674, 0xbfaa7641, 0xd8b9a4c5, 0xdd8cea60, 0x896338bc, 0x94d662b2, 0xa9190272
.word 0x7edd2421, 0xe07e9abb, 0xc220f1bf, 0xf8277912, 0x71b2f2be, 0xfed5a02a, 0x64605b41, 0x9a205809
.word 0xabcc626b, 0x1287c4a8, 0x6f31d7ab, 0xf2a07c01, 0x2cf93cb7, 0x9d42e9b4, 0xeb8ee9fc, 0xc132b222
.word 0x7b100f78, 0x5b462c0f, 0x20b1819b, 0x261f7af9, 0xf551176a, 0x4d6eb5c5, 0x30fda3c5, 0x7e44e5d3
.word 0x55586d59, 0x4bac39c3, 0xfb00b60d, 0xafd07270, 0x87feacf1, 0x8612104a, 0xa8a563b0, 0xd756619f
.word 0xee8eb558, 0xcff685ca, 0xdf9ec5be, 0x334b5f23, 0x6a8a51f7, 0xb095caf3, 0x2d1748c2, 0xd7c54465
.word 0xefa5a591, 0x9f857d68, 0x312c981f, 0xdc3b52ad, 0x24a22837, 0xaca5fcf7, 0x012e5aef, 0x9810d533
.word 0xd9205818, 0xb5a13a8b, 0xc923ac79, 0xa2b2667c, 0x65d5ec92, 0x22cd250d, 0xa9e2abad, 0xe9a43b93
.word 0x97c5864e, 0x40012c0d, 0x9deaab9c, 0x10f5b77b, 0x68455503, 0x7112094c, 0x17506c1a, 0x9eb57808
.word 0x2d6308c2, 0x585d5e58, 0x2b400d38, 0x1413b390, 0xdfedcf23, 0xc98dd058, 0x63595df6, 0x91b819dc
.word 0xaafb3d71, 0xacb1e8aa, 0xe7cf355b, 0xaba762ec, 0x942bb2af, 0x59fce804, 0x2a489461, 0x001e7f9a
.word 0x328da77b, 0xc9fc1d36, 0x6380a39a, 0xb70640c9, 0x6fc1a5ae, 0x9317e644, 0xb24abb6b, 0xa48cd125
.word 0x2735855f, 0xc2df84a5, 0x3bb1631f, 0x76c65649, 0xac60fcbe, 0xcbd71316, 0x5a63a0e4, 0x6f2146c7
.word 0x02f32209, 0x87fff263, 0xb7c07e73, 0x9a93824e, 0x1cccd770, 0x3a82d1ea, 0x7f8635a6, 0x4dac9ed1
.word 0xf2e005c2, 0xaaa9f1b2, 0xd103044f, 0xad1074be, 0x9ad6e871, 0x14f003bc, 0x96ea08b1, 0x1cbed06f
.word 0x28c0a5fb, 0xcc4ae61f, 0xe0138475, 0xa91785a9, 0x59effd26, 0x9c249878, 0x92fe96ed, 0x57f35187
.word 0xa94dc2be, 0xa6e0577f, 0x54355391, 0x29b30295, 0x9da07f16, 0x603dfab7, 0x252caa8a, 0xb208dfd8
.word 0x36241222, 0x6276730b, 0xe6a27497, 0xdc0a9540, 0xb0acfd75, 0x04e51270, 0xe49c1fd6, 0x176fa9c3
.word 0xcdbd1f49, 0x352113fa, 0xc78e65ce, 0x946dc18e, 0xa631d8fa, 0x5429fd2c, 0xe7d3e2d4, 0x364ba70e
.word 0x852cc3a1, 0x234d1b4a, 0xa16c2f98, 0x95f88753, 0x95f23eb6, 0x8d4b8d81, 0x83527f8c, 0xd1c93f11
.word 0x26ff7716, 0x2b90791d, 0x401b3b3c, 0xf4bc6a18, 0x08cc7c0b, 0x5c634f9c, 0x22493b2d, 0x0cac7393
.word 0xc6d66067, 0x19db1d31, 0x24cc8999, 0x8f101076, 0x1da3f550, 0xe3db826a, 0xef383aa0, 0xae0c78da
.word 0xc104c628, 0xfca29a6e, 0x7b5bbaba, 0x4652b042, 0x27f90f90, 0x2c25d6ae, 0x61bc00f3, 0x25cb3e6c
.word 0x0f7bee9b, 0x02bf2e39, 0x168f27d8, 0xd9e17a98, 0x5b3b3cc6, 0x3d42b6f5, 0xaa448dc7, 0x98308e4d
.word 0x3482e80b, 0xa581b373, 0x5c569993, 0xe5898180, 0x67ec8227, 0x7e6f12c4, 0x6eb34ba9, 0x4cf09f79
.word 0x328b70ac, 0xe1e48248, 0xf5829051, 0xf514bbf6, 0x4d01785f, 0xfabdfd28, 0xe8cadd55, 0xb343fd78
.word 0x775d7a48, 0x3597e61b, 0x3c773317, 0x1e674b70, 0x7a4b1e5e, 0x2d6b5710, 0x96d378c7, 0x91f68f47
.word 0x8154bf3b, 0x1a6aeed7, 0xb4ace31a, 0x2bf4e322, 0xb84f8717, 0x95464412, 0xb4402f61, 0xc003644d
.word 0x6a514a24, 0xbdda6f30, 0x48706bcd, 0xd6d58d7a, 0x5ad02e4c, 0x4a587ba5, 0xf0072b52, 0x5dd99a0d
.word 0x3df9644e, 0x6e969f5a, 0xf3345e71, 0x074c0851, 0x1dceccd9, 0x15cf566f, 0x7662c297, 0xc07c59d8
.word 0x095e8794, 0x0ed4fdb6, 0x802fe68e, 0xaa35f67e, 0xe49f219c, 0x0b1097ef, 0x8b4aac5c, 0x0d4e0b50
.word 0xbe5ab764, 0x58a5a9e0, 0x39c92cb7, 0x6239b6de, 0x231752fd, 0xead1bf67, 0xfdf245bf, 0x6466e27b
.word 0x41d7b182, 0xf6406833, 0x9d795126, 0x04e6e22b, 0x7c3fe8c8, 0xe716f5c5, 0x7bd30645, 0xb3da9be0
.word 0x576666c3, 0xc4812dae, 0xf2edcbae, 0xb408fbdf
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
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x15, 0x300 # MSTATUS
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 31
                  bne x15, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x15, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x15, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x15, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x15, x4, ecall_handler
                  li x4, 0x1
                  beq x15, x4, instr_fault_handler
                  li x4, 0x5
                  beq x15, x4, load_fault_handler
                  li x4, 0x7
                  beq x15, x4, store_fault_handler
                  li x4, 0xc
                  beq x15, x4, pt_fault_handler
                  li x4, 0xd
                  beq x15, x4, pt_fault_handler
                  li x4, 0xf
                  beq x15, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

load_fault_handler:
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

store_fault_handler:
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
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
