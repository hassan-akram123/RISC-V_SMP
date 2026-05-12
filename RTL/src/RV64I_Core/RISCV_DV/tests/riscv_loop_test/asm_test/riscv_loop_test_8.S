.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0xf0bcf97c
                  li x1, 0x80000000
                  li x2, 0xf69bd076
                  li x3, 0x1
                  li x4, 0xf1d2a42e
                  li x6, 0xf77c81ec
                  li x7, 0x6
                  li x8, 0xd926aedf
                  li x9, 0x80000000
                  li x10, 0x6c692d02
                  li x11, 0xba8fa376
                  li x12, 0xfcc8be31
                  li x13, 0x666072
                  li x14, 0xbae98413
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x4
                  li x18, 0x0
                  li x19, 0xf247ff3e
                  li x20, 0xfd807842
                  li x21, 0xd
                  li x22, 0x8c81540f
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x2
                  li x29, 0xf5fbfcd4
                  li x30, 0x80000000
                  li x31, 0xa87c048d
                  la x28, user_stack_end
main:             la           a1, sub_3
                  or           t6, t1, s11
                  addi         a1, a1, 338
                  sra          s1, t6, s7
                  bgeu         t5, t6, main_j2 #branch to jump instr
                  and          t1, sp, s5
                  sltiu        a0, s3, 798
                  lui          t2, 864285
                  addi         tp, t2, 351
main_j2:          jalr         t4, a1, -337 #jump main -> sub_3
                  slti         gp, t1, 211
                  addi         zero, s2, -920
                  or           gp, t1, zero
                  sltiu        t2, a3, 1592
                  la           s0, sub_2
                  andi         s1, a3, 376
                  slti         s9, a6, 657
                  addi         s0, s0, -478
                  blt          t2, a1, main_j3 #branch to jump instr
                  srli         tp, t6, 24
                  slli         t6, s6, 5
main_j3:          jalr         t4, s0, 478 #jump main -> sub_2
                  la           s4, sub_1
                  srli         t2, t4, 6
                  slti         s9, t3, 1312
                  addi         s2, s10, -842
                  addi         s4, s4, -748
                  and          s9, s2, a2
                  sltu         a0, t6, a2
main_j4:          jalr         t4, s4, 748 #jump main -> sub_1
                  addi         a0, zero, 4 #init loop 0 counter
                  srli         t1, a2, 25
                  sltiu        t5, a5, -1023
                  slt          s10, s4, a4
                  addi         tp, zero, 12 #init loop 0 limit
                  sra          gp, s9, t1
main_0_0_t:       sub          s7, a0, s6
                  sll          s3, a6, s11
                  addi         a0, a0, 8 #update loop 0 counter
                  sll          s1, a1, t3
                  sub          s9, zero, s1
                  srl          s7, s6, s7
                  auipc        a5, 148589
                  slti         sp, t4, -851
                  xor          a1, sp, t2
                  auipc        s5, 383996
                  and          s1, t3, t2
                  andi         s9, a5, 1319
                  ori          a1, a1, 1224
                  xor          a2, ra, t6
                  beq          a0, tp, main_0_0_t #branch for loop 0
                  and          a5, sp, a1
                  addi         gp, zero, 8 #init loop 1 counter
                  ori          t5, s4, 1278
                  addi         a0, zero, 18 #init loop 1 limit
                  slt          zero, t5, s8
                  or           t1, t6, t1
                  or           s5, sp, t6
main_2_1_t:       ori          a4, s8, 781
                  addi         gp, gp, 5 #update loop 1 counter
                  addi         a7, zero, -3 #init loop 0 counter
                  andi         s10, s9, 541
                  addi         a1, zero, -15 #init loop 0 limit
                  xor          s4, s11, sp
main_2_0_t:       and          a3, t5, a3
                  addi         a7, a7, -6 #update loop 0 counter
                  and          s0, a6, gp
                  bne          a7, a1, main_2_0_t #branch for loop 0
                  andi         sp, t5, -241
                  beq          gp, a0, main_2_1_t #branch for loop 1
                  ori          s1, t2, -480
                  addi         a1, zero, 7 #init loop 0 counter
                  sra          a6, s2, s10
                  addi         s5, zero, 6 #init loop 0 limit
                  sltiu        a0, s0, -1694
                  lui          a2, 968902
                  nop
                  srli         s7, a7, 4
                  xor          a7, s9, tp
main_3_0_t:       ori          s1, zero, -1991
                  sub          s10, a2, zero
                  srli         sp, a5, 31
                  addi         a1, a1, -3 #update loop 0 counter
                  srl          s11, sp, sp
                  ori          a4, t2, -1251
                  srl          a4, s5, a0
                  srl          a3, s10, s2
                  xori         a7, s1, 688
                  bgeu         a1, s5, main_3_0_t #branch for loop 0
                  srai         a0, a2, 0
                  addi         s1, zero, 1 #init loop 0 counter
                  xor          a1, gp, s1
                  slt          a5, a3, t3
                  srli         t4, s0, 11
                  add          t6, s4, t4
                  slt          a7, zero, s2
                  slti         s3, s8, -998
                  sub          s9, s3, a5
                  sub          t2, a3, s7
                  srl          s11, s4, a4
                  sll          t5, s8, tp
                  addi         tp, zero, -3 #init loop 0 limit
                  addi         t2, s3, -1854
main_1_0_t:       xor          a0, s7, t0
                  srl          s10, s11, t2
                  addi         s1, s1, -2 #update loop 0 counter
                  slti         s5, s9, -202
                  srl          s0, a2, t0
                  xori         t5, t4, 1310
                  xor          t5, t2, t0
                  nop
                  bne          s1, tp, main_1_0_t #branch for loop 0
                  srl          s5, gp, t4
                  bge          t2, s10, 20f
                  sltiu        s8, a6, -1968
                  and          t1, s8, s11
                  sll          a6, a1, tp
                  slli         a2, s6, 6
                  slt          gp, ra, s2
                  xor          t2, zero, s3
                  auipc        t1, 265249
                  sub          sp, s4, s6
                  lui          s0, 1005529
                  srli         zero, a5, 26
                  bge          s1, a6, 18f
                  slli         a7, s8, 21
                  sltu         t5, t6, s3
                  bltu         s1, s5, 29f
                  slli         a0, a0, 29
                  xori         gp, s8, -1053
                  bltu         a0, a6, 26f
18:               or           s3, s2, s4
                  sltu         t1, s7, a0
20:               slli         s0, s5, 15
                  sll          ra, s10, s8
                  bne          t1, t3, 38f
                  and          zero, s10, zero
                  bltu         t5, s7, 26f
                  lui          a5, 408997
26:               xor          a1, s3, a0
                  slti         s11, a7, 944
                  auipc        t1, 521882
                  xor          s5, a2, t0
                  xori         s1, a7, -1448
                  addi         a2, t0, -1164
                  or           sp, a6, zero
                  slt          a3, s0, s10
                  xori         t4, a7, 1262
                  la           s10, sub_4
                  addi         s10, s10, 849
                  auipc        s11, 878922
                  beq          t5, s4, main_j5 #branch to jump instr
                  lui          a6, 814249
main_j5:          jalr         t4, s10, -849 #jump main -> sub_4
29:               lui          a7, 356595
                  xori         t1, t5, -1111
                  lui          a1, 736223
                  sra          s7, a3, s1
                  sub          s3, ra, a0
                  srl          s3, s0, s11
                  srli         t5, a3, 0
                  bgeu         s9, a3, 46f
                  andi         t2, t2, -1645
38:               xori         s4, gp, -63
                  bge          a6, t3, 53f
                  bgeu         a6, t6, 47f
                  andi         a6, s4, 108
                  bgeu         tp, t4, 45f
                  bge          s1, sp, 48f
                  srl          a3, t3, t4
45:               auipc        s1, 308325
46:               bltu         t3, s4, 61f
47:               beq          a0, s0, 58f
48:               nop
                  ori          s10, t3, -1790
                  srli         a6, s4, 3
                  lui          s3, 124111
                  bge          s0, zero, 60f
53:               sltiu        s8, s6, -1172
                  bne          a5, t0, 56f
                  sltiu        a3, a4, -716
56:               slli         t5, a6, 11
                  bge          a7, s8, 58f
58:               nop
                  srl          a4, t1, a6
60:               bltu         a7, a0, 73f
61:               srli         t4, tp, 30
                  beq          s2, a3, 81f
                  xor          sp, zero, t3
                  nop
                  lui          sp, 874108
                  sub          s1, zero, s9
                  sra          s8, s4, s2
                  srl          t2, s8, t1
                  or           a0, s7, a7
                  ori          t2, t1, 651
                  bltu         t5, s7, 82f
                  addi         t4, t5, 1239
73:               srai         a1, t4, 14
                  nop
                  srl          s10, s8, sp
                  and          a7, t3, a1
                  bgeu         s4, s0, 93f
                  bne          s11, s4, 91f
                  slt          sp, s11, t0
                  sltu         a4, s9, s1
81:               srli         s7, a1, 27
82:               xori         a0, t6, 330
                  xor          a6, t4, s11
                  lui          a3, 640082
                  srai         t6, t1, 22
                  or           zero, s11, t2
                  beq          s6, s0, 97f
                  srli         gp, a7, 4
                  slt          tp, s2, s3
                  sltu         s10, a6, ra
91:               bne          t5, a0, 101f
                  srai         a7, sp, 10
93:               srai         a5, s0, 22
                  beq          t3, s10, 103f
                  blt          gp, a1, 103f
                  sub          a0, s5, ra
97:               add          t2, t2, a0
                  slli         t5, s3, 23
                  slli         t6, s4, 19
                  beq          a4, s5, 118f
101:              bne          a3, s6, 112f
                  sltiu        s9, s0, -861
103:              bltu         a5, s10, 113f
                  sub          t1, a3, s7
                  ori          a7, t3, -227
                  or           a3, s7, s6
                  or           s9, a7, a1
                  addi         tp, s4, 842
                  slt          s9, a6, t6
                  bge          t3, gp, 120f
                  andi         a4, sp, -1703
112:              andi         s11, a2, 1384
113:              sra          a0, s8, s3
                  sltu         a0, a7, s7
                  xor          s9, tp, a2
                  lui          s5, 25397
                  bltu         t3, a6, 131f
118:              bltu         t6, s7, 131f
                  srai         a2, a3, 3
120:              andi         a6, tp, -879
                  xor          s3, sp, a2
                  and          s5, s2, a0
                  or           t1, s10, a6
                  sltu         a7, s11, a1
                  bne          t1, s0, 145f
                  slt          s1, s9, zero
                  addi         a1, s11, -1116
                  and          a4, a5, t1
                  sra          a6, ra, s2
                  xori         s11, t0, -539
131:              bge          gp, sp, 141f
                  srai         tp, t4, 4
                  lui          s10, 361798
                  xor          s8, a5, s9
                  sub          a2, a4, a0
                  srli         t5, s10, 6
                  sltiu        s0, a5, -1636
                  and          gp, a1, t2
                  sra          ra, sp, s8
                  auipc        a4, 949333
141:              sll          s0, s11, ra
                  sll          a1, s3, s11
                  and          s7, a4, t2
                  sltu         ra, s11, t1
145:              slti         a0, a2, 1608
                  and          s7, gp, s0
                  and          s9, a7, a2
                  and          zero, a0, gp
                  sll          a6, t1, zero
                  nop
                  bltu         gp, sp, 166f
                  xori         a2, a0, -1623
                  srli         a2, a0, 3
                  bge          s6, tp, 164f
                  xor          s0, s9, t3
                  sltu         a5, s4, a0
                  slti         sp, gp, 165
                  auipc        s5, 569442
                  beq          a7, tp, 173f
                  blt          s10, tp, 170f
                  andi         zero, s8, -1760
                  slti         tp, a7, 1633
                  sub          zero, a1, t5
                  srl          t1, s4, a5
                  la           tp, sub_5
                  addi         s8, a7, 1125
                  and          t5, s0, t1
                  xori         a2, s6, -134
                  srli         a0, s2, 29
                  addi         tp, tp, -358
                  slli         s8, s5, 22
                  xor          s10, t2, s5
main_j1:          jalr         t4, tp, 358 #jump main -> sub_5
164:              auipc        a2, 31017
                  slli         tp, s0, 5
166:              add          t4, t1, a6
                  srli         a2, s7, 2
                  lui          a3, 324068
                  beq          t0, s3, 176f
170:              sra          zero, s7, a2
                  blt          s3, t1, 189f
                  sltiu        a2, gp, 625
173:              srai         a1, s5, 13
                  or           a6, gp, t0
                  bge          s9, s10, 176f
176:              or           s3, t4, gp
                  addi         s8, gp, 362
                  andi         t1, a3, -1083
                  nop
                  sltu         s10, a2, a1
                  slti         a4, t4, 1811
                  bne          a4, ra, 196f
                  ori          a4, s11, -1499
                  andi         t4, s7, -1475
                  xori         a2, a3, -1311
                  add          s10, t3, zero
                  or           a7, s0, a1
                  bgeu         s8, s8, 203f
189:              add          t2, s10, a3
                  sll          s0, a0, sp
                  sltiu        zero, a4, 59
                  bge          a1, s10, 208f
                  auipc        a6, 703962
                  lui          gp, 790301
                  addi         a2, t4, -829
196:              slli         s5, t4, 10
                  xor          t2, t5, s6
                  sll          t4, gp, a2
                  sltiu        s8, s6, -193
                  and          a7, s11, s5
                  srli         s0, a5, 26
                  slli         zero, s5, 14
203:              sub          s4, a0, a4
                  lui          s5, 413907
                  xori         a7, zero, 914
                  bgeu         tp, a3, 214f
                  or           s4, a3, gp
208:              beq          t5, t6, 214f
                  blt          s4, a6, 212f
                  auipc        t2, 293937
                  bgeu         s2, tp, 213f
212:              andi         ra, a0, 1377
213:              andi         a3, t0, 687
214:              add          s5, s4, t6
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            srai         s1, a3, 26
                  srai         a6, t2, 4
                  add          a0, ra, t5
                  xor          ra, s1, s6
                  addi         a2, sp, 834
                  bge          s7, t3, sub_1_stack_p
                  addi         a0, s0, 533
sub_1_stack_p:    addi         t3, t3, -16
                  or           a3, zero, a0
                  add          ra, s10, s4
                  srai         a0, t3, 4
                  sw           t4, 4(t3)
                  srl          s3, t1, zero
                  addi         s3, zero, -10 #init loop 1 counter
                  sub          a4, a0, a3
                  addi         s5, zero, -16 #init loop 1 limit
                  xori         a0, t3, 1301
sub_1_2_1_t:      auipc        sp, 287473
                  srli         sp, t1, 10
                  xori         a0, s3, 1090
                  addi         a7, ra, 307
                  lui          s11, 607583
                  addi         s3, s3, -2 #update loop 1 counter
                  addi         s7, zero, 9 #init loop 0 counter
                  sltiu        a6, t0, 167
                  addi         s0, zero, 9 #init loop 0 limit
sub_1_2_0_t:      lui          s8, 188746
                  addi         s7, s7, -8 #update loop 0 counter
                  bgeu         s7, s0, sub_1_2_0_t #branch for loop 0
                  bne          s3, s5, sub_1_2_1_t #branch for loop 1
                  auipc        a7, 101502
                  addi         s4, zero, -2 #init loop 0 counter
                  or           s2, t6, a7
                  auipc        sp, 622692
                  ori          s0, t5, -1088
                  srl          s3, s6, sp
                  lui          t6, 593085
                  srai         gp, s2, 26
                  sub          t6, s3, t0
                  and          s11, a1, t4
                  srl          a6, s4, t4
                  addi         s10, zero, -7 #init loop 0 limit
                  slti         s0, a6, -1405
sub_1_0_0_t:      xor          t1, s2, a5
                  xori         s2, a4, 1644
                  andi         a6, a7, 699
                  addi         s4, s4, -4 #update loop 0 counter
                  srli         s8, s1, 16
                  addi         tp, zero, -906
                  nop
                  addi         a7, s6, 1253
                  sub          a6, s9, t1
                  slt          zero, tp, t5
                  xor          s1, s9, t0
                  add          zero, s10, a1
                  bge          s4, s10, sub_1_0_0_t #branch for loop 0
                  and          zero, a7, s0
                  addi         t5, zero, 5 #init loop 0 counter
                  ori          s10, s0, 1452
                  or           s4, s6, s0
                  xor          s9, a6, s8
                  slt          a4, t6, t4
                  addi         a5, zero, -15 #init loop 0 limit
                  srai         zero, a4, 24
sub_1_8_0_t:      slti         a1, s11, -1463
                  slli         s5, s7, 20
                  andi         s1, t0, 292
                  addi         a3, a4, -1771
                  addi         t5, t5, -10 #update loop 0 counter
                  and          s10, a2, a0
                  andi         ra, a5, -1929
                  ori          gp, a0, 1968
                  bne          t5, a5, sub_1_8_0_t #branch for loop 0
                  addi         a0, a0, 18
                  addi         t2, zero, 9 #init loop 0 counter
                  andi         a2, ra, -860
                  add          s2, s7, t5
                  slti         s5, a0, 1813
                  srli         gp, s11, 23
                  addi         a3, zero, 7 #init loop 0 limit
                  sra          tp, s3, s4
                  and          sp, s5, t5
                  and          a7, s5, s1
                  sll          tp, s9, t2
                  srli         s9, s6, 27
                  nop
                  lui          s0, 921821
                  slli         s4, t5, 14
sub_1_5_0_t:      sltiu        s2, a0, -1636
                  xori         a4, t1, -102
                  slli         s3, a0, 12
                  xor          a0, s0, a3
                  addi         s1, t3, -754
                  srli         t6, t4, 31
                  xori         s11, a2, -1549
                  srai         s5, t6, 18
                  addi         t2, t2, -5 #update loop 0 counter
                  or           ra, t2, s6
                  bgeu         t2, a3, sub_1_5_0_t #branch for loop 0
                  slti         a1, s6, -713
                  addi         t4, zero, -3 #init loop 1 counter
                  sltu         a4, s6, tp
                  or           s11, a6, t0
                  sltiu        a4, t2, -1470
                  addi         a3, zero, 16 #init loop 1 limit
sub_1_3_1_t:      xor          a6, a2, s11
                  lui          s2, 823736
                  srli         sp, t1, 12
                  addi         t4, t4, 6 #update loop 1 counter
                  sltiu        s3, s1, 91
                  sltiu        s3, s2, 886
                  addi         s1, t6, 888
                  addi         tp, zero, 2 #init loop 0 counter
                  addi         ra, zero, -8 #init loop 0 limit
                  slti         s10, s7, -1129
                  nop
                  srl          t1, s0, s8
sub_1_3_0_t:      sub          a0, t6, s10
                  addi         tp, tp, -10 #update loop 0 counter
                  beq          tp, ra, sub_1_3_0_t #branch for loop 0
                  bltu         t4, a3, sub_1_3_1_t #branch for loop 1
                  srai         t5, t3, 3
                  addi         t2, zero, 8 #init loop 1 counter
                  sra          a1, s10, a2
                  sltu         sp, a4, a0
                  sll          a5, a4, sp
                  addi         s3, zero, -7 #init loop 1 limit
                  sltiu        s0, t6, -878
sub_1_1_1_t:      xori         tp, a4, -2030
                  addi         s7, a1, -183
                  addi         t2, t2, -3 #update loop 1 counter
                  addi         s9, zero, -10 #init loop 0 counter
                  addi         s11, zero, -13 #init loop 0 limit
                  srl          t1, t1, s4
                  slt          t4, t5, s9
sub_1_1_0_t:      add          a5, a7, s1
                  addi         s9, s9, -7 #update loop 0 counter
                  bge          s9, s11, sub_1_1_0_t #branch for loop 0
                  ori          s4, s4, 371
                  add          s2, s3, zero
                  or           s8, s6, s4
                  nop
                  or           tp, t1, s7
                  bge          t2, s3, sub_1_1_1_t #branch for loop 1
                  or           s8, s7, s11
                  sltu         a1, sp, s1
                  bltu         s5, sp, 5f
                  add          t4, s4, a6
                  blt          tp, a2, 14f
                  srai         tp, t3, 2
5:                slli         s8, t3, 5
                  slti         t2, t1, 1977
                  slti         s4, t1, -749
                  xori         a3, a5, 2009
                  xori         a0, t2, 76
                  sll          s4, s1, t0
                  sub          a3, s0, t4
                  nop
                  bltu         a7, a7, 16f
14:               srl          s9, a5, s6
                  bltu         s4, t4, 34f
16:               xor          ra, t2, s8
                  sltu         s0, a3, a6
                  addi         a3, sp, 610
                  srli         t1, a3, 6
                  bne          s10, s8, 31f
                  andi         zero, s3, 1258
                  srl          s3, a5, s0
                  bge          ra, s0, 33f
                  and          s5, t6, a5
                  bge          s5, s8, 31f
                  sub          a5, a0, s5
                  sltu         t1, t2, t6
                  srli         sp, t0, 1
                  addi         sp, s0, -874
                  bge          zero, ra, 49f
31:               nop
                  xor          a4, s8, s4
33:               add          a7, tp, s11
34:               add          t2, gp, s8
                  ori          t1, t1, -1819
                  ori          a3, t3, 595
                  xor          a1, s1, s7
                  and          t6, s8, s10
                  andi         sp, a3, 1751
                  sll          a7, a5, a7
                  ori          s3, s4, 1883
                  add          a3, s10, s8
                  add          s10, s1, tp
                  srli         s7, t4, 21
                  bgeu         a7, t2, 48f
                  sltu         s10, t3, a4
                  add          s8, s7, s9
48:               bne          s7, a5, 49f
49:               sltu         gp, s9, ra
                  sltiu        t6, a0, -545
                  srl          s3, a4, tp
                  srl          t6, s5, s11
                  srli         s11, s3, 30
                  slli         t6, s1, 30
                  xor          sp, s4, s10
                  slt          s1, a7, s4
                  sra          s3, a0, s11
                  slli         ra, gp, 14
                  srl          s7, s5, t1
                  slti         zero, a5, -1354
                  nop
                  ori          s11, t0, 44
                  andi         t2, s5, -1887
                  bne          s0, ra, 73f
                  sra          a2, s9, s6
                  srli         s7, gp, 10
                  beq          a4, a3, 77f
                  srl          s5, a0, t2
                  and          a2, s1, s9
                  beq          a5, s4, 74f
                  ori          ra, s2, 532
                  blt          t4, a6, 88f
73:               srai         t4, a7, 11
74:               slti         s2, s7, -1984
                  srai         zero, t2, 22
                  sltiu        t1, a5, 28
77:               srl          s2, s9, ra
                  xori         t1, s9, 872
                  xori         sp, a2, 1404
                  srl          t2, s6, t5
                  addi         tp, a3, -1622
                  auipc        t5, 17991
                  srai         tp, s5, 13
                  slti         a3, zero, -251
                  add          a4, s9, s0
                  srai         s4, t0, 10
                  sltu         s9, s10, s1
88:               slt          t2, s6, sp
                  beq          t1, s9, 101f
                  srli         ra, s6, 25
                  xori         s5, s11, 454
                  bge          a4, s9, 106f
                  slti         a4, s5, -1238
                  lui          s9, 34712
                  bltu         a7, tp, 111f
                  sub          a2, t4, a1
                  bgeu         s1, a3, 113f
                  andi         t2, s9, -1824
                  andi         a2, s2, 395
                  bne          zero, s6, 120f
101:              sll          t6, t0, zero
                  blt          t6, a1, 116f
                  lui          a5, 322274
                  sra          s3, gp, s11
                  nop
106:              beq          a4, s10, 120f
                  add          ra, t5, a2
                  andi         t6, sp, 40
                  addi         s11, zero, -410
                  beq          t4, ra, 112f
111:              andi         t5, ra, 548
112:              bltu         t3, t4, 124f
113:              slt          t2, t5, t4
                  srl          zero, s6, a5
                  bgeu         a3, t3, 118f
116:              sll          a3, t5, s11
                  sltiu        gp, s10, 1834
118:              add          a0, a3, s5
                  slt          a1, s9, a2
120:              slli         s11, a1, 23
                  slti         a4, t6, 1477
                  bgeu         t0, s5, 140f
                  beq          zero, a2, 140f
124:              andi         t5, s0, -1950
                  addi         a3, sp, 55
                  slti         gp, tp, 1446
                  sltiu        s10, ra, -843
                  sra          a3, t1, ra
                  sra          s3, gp, s10
                  add          s3, t3, s5
                  sra          gp, a2, t6
                  bge          t2, s3, 135f
                  bltu         gp, s3, 135f
                  blt          t3, t6, 137f
135:              bne          s6, t1, 139f
                  sll          t6, s9, s7
137:              sub          s4, s8, t4
                  slli         s1, s1, 23
139:              srl          a3, t4, sp
140:              and          a2, t1, a3
                  beq          a0, a7, 160f
                  slli         t6, t0, 26
                  andi         t4, s6, -351
                  bltu         s1, t3, 153f
                  slt          a7, gp, t3
                  add          ra, a5, s9
                  slt          a1, a6, a7
                  slt          s7, t5, t3
                  addi         ra, a4, -823
                  xori         s8, s5, -1712
                  bne          a4, gp, 165f
                  bge          a4, sp, 168f
153:              sub          t4, t2, a3
                  ori          t1, t3, -21
                  ori          sp, a6, 1056
                  lui          gp, 808220
                  bltu         ra, a2, 160f
                  sltiu        a5, ra, -1049
                  lui          t2, 748821
160:              and          a6, sp, a4
                  blt          s8, s6, 165f
                  beq          s10, s11, 165f
                  srli         a5, s4, 2
                  slt          s7, s9, a4
165:              srli         a1, s11, 21
                  addi         t5, zero, 6 #init loop 0 counter
                  and          t6, t3, s1
                  addi         t2, zero, 15 #init loop 0 limit
                  lui          t4, 591981
sub_1_6_0_t:      sub          tp, a7, a6
                  slti         t6, tp, 1190
                  slt          sp, a2, s7
                  auipc        t1, 22828
                  sll          s5, tp, a1
                  xor          t1, s1, t3
                  and          sp, s10, tp
                  addi         t5, t5, 4 #update loop 0 counter
                  addi         s4, a4, -358
                  auipc        a3, 285840
                  andi         s9, tp, 22
                  sub          s10, t0, s3
                  blt          t5, t2, sub_1_6_0_t #branch for loop 0
                  sltu         a7, sp, t5
                  srai         t6, t2, 8
                  bgeu         s9, a2, 173f
168:              andi         a0, t1, -48
                  blt          s0, zero, 170f
170:              auipc        s8, 419945
                  auipc        a6, 933091
                  slt          sp, a5, a3
173:              auipc        a1, 401847
                  nop
                  sltu         a7, s1, s3
                  blt          s0, gp, 196f
                  slli         s0, s4, 9
                  nop
                  bge          s6, gp, 181f
                  andi         s4, s5, 182
181:              srli         a1, s0, 13
                  bne          a1, sp, 185f
                  add          s10, a2, a4
                  blt          a0, a1, 195f
185:              bltu         zero, a4, 201f
                  lui          sp, 303304
                  srl          s11, s9, a2
                  bne          a1, t5, 199f
                  beq          a6, sp, 193f
                  sll          s3, s3, s0
                  ori          a0, s6, 1181
                  andi         ra, s2, -1781
193:              sub          t6, t4, s9
                  sub          t1, s0, ra
195:              bne          s2, s9, 209f
196:              xori         a2, a6, 1438
                  bgeu         t4, s7, 211f
                  nop
199:              sltiu        t2, t6, 1804
                  slt          t4, s6, s6
201:              ori          a7, a7, 163
                  slt          s2, t6, t5
                  blt          s10, a2, 220f
                  bge          t3, t3, 220f
                  lui          t1, 21116
                  xor          t1, t3, ra
                  slti         ra, s11, 1387
                  addi         a1, s4, -383
209:              bge          t6, t2, 212f
                  auipc        a5, 784568
211:              add          s2, s0, s1
212:              lui          a4, 688985
                  bne          a7, a1, 215f
                  xor          sp, t3, zero
215:              sltu         gp, a5, s9
                  nop
                  add          s1, s5, zero
                  sltiu        zero, s1, -1168
                  auipc        s1, 963083
220:              bne          s6, sp, 230f
                  slt          s10, t5, a3
                  or           sp, s8, t1
                  srl          s8, s0, t6
                  slti         s2, zero, 1124
                  auipc        a6, 461096
                  slt          ra, s8, t0
                  sll          tp, a0, t1
                  srai         a0, s5, 10
                  lui          s7, 260362
230:              blt          s4, t2, 248f
                  slt          a3, a5, a7
                  slti         a4, t1, -1423
                  ori          a2, s8, -1391
                  srli         t5, tp, 24
                  bltu         t0, s7, 254f
                  srli         tp, a3, 5
                  sltu         t1, s2, t6
                  slli         s2, t1, 0
                  xor          t2, t5, t2
                  bne          tp, tp, 252f
                  andi         a1, t0, 570
                  add          a5, s8, s2
                  bgeu         s2, s0, 247f
                  bne          s7, s11, 247f
                  sltu         s5, s8, tp
                  srai         t5, s4, 31
247:              add          a7, tp, t1
248:              xori         a0, t0, -727
                  sub          ra, s5, ra
                  sra          t6, zero, s9
                  lui          ra, 545165
252:              andi         a3, s1, -1566
                  bgeu         s6, a0, 265f
254:              sub          t2, s1, a4
                  lui          t5, 1047148
                  sltiu        t2, a0, 804
                  slti         t4, s10, -1880
                  nop
                  srl          s11, s11, a5
                  sub          a3, s4, sp
                  andi         s4, t6, 1811
                  lui          tp, 244947
                  beq          s10, a7, 273f
                  xor          sp, s4, zero
265:              auipc        s7, 993110
                  or           a5, a3, s8
                  andi         a1, a2, -125
                  and          zero, a3, s3
                  or           t6, a5, t1
                  bgeu         a1, t2, 274f
                  slti         s5, s0, -31
                  lui          sp, 977521
273:              nop
274:              beq          s10, s0, 278f
                  lui          t5, 211859
                  ori          t1, t4, 309
                  addi         s10, t2, -2002
278:              bgeu         t1, a6, 294f
                  bgeu         s9, s5, 295f
                  slt          a4, s8, t0
                  slti         s3, gp, 1277
                  and          a4, t4, s2
                  beq          s2, s11, 295f
                  xor          a1, s2, s4
                  beq          t2, a6, 299f
                  sra          a6, a4, t4
                  addi         a5, a7, 661
                  srl          t4, s11, a1
                  srai         s2, s4, 24
                  xor          tp, t5, s0
                  srl          s10, a0, s8
                  slli         s0, tp, 5
                  slli         a6, t1, 17
294:              xor          s7, tp, sp
295:              srli         a0, s6, 26
                  xor          s4, a7, a7
                  slli         s10, s9, 1
                  auipc        s4, 798776
299:              sltiu        s9, a7, -468
                  sra          s4, s8, zero
                  sub          a1, s5, t4
                  sra          a6, t3, s2
                  srai         gp, a6, 13
                  lui          s1, 655839
                  bge          a3, s9, 321f
                  auipc        s0, 18620
                  bltu         s5, a3, 327f
                  blt          s10, s9, 311f
                  and          a1, a2, gp
                  sub          s11, sp, s2
311:              nop
                  bltu         ra, s0, 322f
                  bne          t5, a7, 316f
                  lui          tp, 196276
                  srl          s3, t4, a1
316:              xor          s4, t1, s3
                  srai         s0, t4, 25
                  slt          tp, s3, a6
                  beq          s5, a7, 333f
                  srli         a4, t4, 4
321:              ori          s9, tp, -1788
322:              andi         t1, s11, 701
                  bge          s10, t3, 324f
324:              bgeu         tp, t5, 330f
                  srai         a5, s8, 2
                  add          s9, s8, ra
327:              blt          s11, sp, 341f
                  srl          a6, a3, t5
                  addi         s1, zero, 0 #init loop 1 counter
                  sll          a5, a3, s5
                  and          s2, s4, a0
                  addi         s11, zero, 10 #init loop 1 limit
                  or           zero, s9, a7
sub_1_7_1_t:      and          s0, sp, s7
                  addi         s1, s1, 10 #update loop 1 counter
                  add          s3, sp, a0
                  addi         t5, zero, 9 #init loop 0 counter
                  addi         a1, zero, 9 #init loop 0 limit
                  lui          s9, 623082
sub_1_7_0_t:      sub          a2, sp, t0
                  addi         t5, t5, -8 #update loop 0 counter
                  andi         tp, t2, -1037
                  srli         s5, a3, 28
                  bgeu         t5, a1, sub_1_7_0_t #branch for loop 0
                  auipc        t6, 569907
                  srli         t2, tp, 20
                  bne          s1, s11, sub_1_7_1_t #branch for loop 1
                  srl          a3, a5, t6
                  slti         ra, ra, -284
330:              sltiu        a2, ra, 1709
                  ori          t1, a4, 1867
                  sub          a1, tp, s0
333:              sltu         a1, s11, a5
                  sltiu        t6, s2, 1838
                  nop
                  and          t1, a1, s11
                  lui          s7, 488597
                  beq          s2, s10, 341f
                  auipc        a4, 860231
                  slli         a3, s2, 28
341:              addi         s1, s2, -1209
                  xori         s9, t5, -768
                  blt          t1, sp, 362f
                  addi         a5, sp, 958
                  blt          s1, s3, 354f
                  slti         zero, a0, -146
                  sltiu        a1, s4, -889
                  xori         ra, s2, -1703
                  bltu         tp, a7, 361f
                  srai         s9, a7, 5
                  xor          a5, sp, a2
                  and          zero, s11, t0
                  slt          s10, s6, t2
354:              srl          a2, s11, t2
                  sra          a7, ra, a1
                  sra          s10, t4, ra
                  nop
                  slt          s1, s1, s9
                  add          a7, t6, s2
                  slli         a6, t3, 1
361:              addi         gp, s7, 1359
362:              slli         a0, a7, 9
                  andi         a4, s8, 1712
                  blt          s10, zero, 381f
                  sub          t2, tp, a5
                  add          s10, gp, s3
                  ori          a6, ra, -1332
                  bge          s8, zero, 378f
                  lui          a0, 36421
                  sltu         s10, s9, s3
                  add          t6, t0, a4
                  sltiu        a6, s8, 1900
                  addi         s10, ra, 277
                  nop
                  blt          a7, s2, 378f
                  slti         t5, s0, 795
                  srl          t6, a4, a6
378:              blt          s11, s2, 396f
                  srli         t4, s11, 3
                  lui          t1, 222679
381:              blt          a6, ra, 384f
                  auipc        s2, 777294
                  addi         t1, a0, -279
384:              lui          s8, 725077
                  slli         a3, s0, 12
                  slli         a3, tp, 7
                  sub          a3, a5, ra
                  bltu         a3, a7, 390f
                  srli         tp, a0, 9
390:              sub          s5, s6, s2
                  and          s10, t1, s9
                  nop
                  xori         a5, a3, -1477
                  and          t4, t2, a1
                  ori          t5, tp, 1558
396:              bge          s5, s1, 398f
                  srl          s1, s2, s1
398:              bgeu         ra, a7, 417f
                  sub          t1, t2, s6
                  bltu         s8, a1, 404f
                  andi         ra, t4, -1595
                  xori         tp, t1, 532
                  or           t6, s1, t5
404:              sltiu        s7, s10, -500
                  beq          a4, s1, 416f
                  sltiu        gp, s4, 543
                  sltiu        a2, a6, 2028
                  srl          s7, s10, s1
                  add          a1, a1, a0
                  bgeu         s0, a7, 421f
                  and          s8, t6, a5
                  sltu         s9, t1, s7
                  srai         s2, a1, 28
                  srai         zero, t6, 7
                  slli         t4, tp, 5
416:              and          s1, t2, t4
                  addi         a2, zero, 6 #init loop 0 counter
                  nop
                  ori          s5, a5, 1287
                  nop
                  slli         s8, a3, 19
                  lui          sp, 92205
                  addi         s1, zero, -10 #init loop 0 limit
sub_1_9_0_t:      lui          s11, 179419
                  or           s5, a6, t0
                  addi         a2, a2, -8 #update loop 0 counter
                  xor          s5, a4, ra
                  beq          a2, s1, sub_1_9_0_t #branch for loop 0
                  srai         t4, a6, 9
417:              srai         s1, s8, 13
                  sra          t1, a2, ra
                  srli         s3, a2, 1
                  sll          t1, t5, s0
421:              beq          s2, s11, 431f
                  sltu         gp, t5, a4
                  bgeu         s2, s6, 439f
                  ori          s11, a3, -1584
                  add          a3, s11, s4
                  add          s9, zero, t5
                  slt          zero, a6, a4
                  bltu         a4, s1, 431f
                  sltu         t4, t4, sp
                  sll          s8, s11, t3
431:              bne          s5, ra, 445f
                  sra          zero, a0, a5
                  blt          sp, t4, 444f
                  auipc        s2, 383767
                  bgeu         s1, t4, 451f
                  xori         t1, a6, -103
                  bltu         s0, gp, 456f
                  sll          t5, a4, t4
439:              xori         tp, t0, 115
                  sub          sp, tp, a7
                  or           t5, a1, a7
                  blt          s1, a5, 445f
                  add          t4, s9, s9
444:              bge          zero, a2, 461f
445:              nop
                  xori         a4, a7, 372
                  nop
                  or           t5, a6, t3
                  or           zero, a1, t6
                  sll          a7, t1, s10
451:              sltu         t2, zero, s8
                  slli         zero, ra, 0
                  srli         s10, t5, 3
                  sub          a3, s4, t2
                  lui          a5, 935229
456:              bgeu         t5, s10, 476f
                  addi         s9, zero, 7 #init loop 1 counter
                  sltu         a0, a2, s3
                  srli         t2, t6, 14
                  srl          a0, s11, a5
                  or           a3, tp, s4
                  sll          a1, s2, t6
                  addi         ra, zero, 14 #init loop 1 limit
                  addi         gp, s2, 1884
                  sltiu        a7, a2, -1905
sub_1_4_1_t:      lui          a1, 805972
                  slt          s7, s11, a3
                  addi         s9, s9, 4 #update loop 1 counter
                  nop
                  addi         s3, zero, 8 #init loop 0 counter
                  sltu         s8, a6, sp
                  addi         t6, zero, 1 #init loop 0 limit
                  slt          a6, t6, a2
sub_1_4_0_t:      lui          a5, 146709
                  addi         s3, s3, -7 #update loop 0 counter
                  beq          s3, t6, sub_1_4_0_t #branch for loop 0
                  slt          t5, s0, t4
                  addi         t1, s8, 286
                  srli         zero, a1, 26
                  or           a1, ra, s1
                  srli         t1, gp, 7
                  blt          s9, ra, sub_1_4_1_t #branch for loop 1
                  xor          t5, s10, t5
                  xor          a1, ra, s9
                  add          s9, a6, t3
                  bltu         a7, t6, 461f
                  slli         tp, t6, 14
461:              bltu         s8, a2, 467f
                  sltu         s3, s3, a1
                  and          sp, sp, a5
                  auipc        a7, 615547
                  beq          a6, s8, 477f
                  lui          a1, 986242
467:              and          s11, a6, t0
                  xor          a7, ra, t0
                  sltiu        a3, t6, 850
                  bgeu         t1, a6, 474f
                  bne          s3, a1, 474f
                  blt          zero, s10, 490f
                  addi         a6, s6, 1870
474:              andi         s3, t0, 165
                  blt          s9, t3, 484f
476:              bltu         s5, t0, 478f
477:              and          t1, s7, s8
478:              ori          s0, t0, -1392
                  sub          s7, zero, t1
                  lui          ra, 467775
                  sra          s1, a5, gp
                  bltu         s8, s11, 494f
                  xor          a4, s6, a5
484:              sltiu        a4, s5, 1241
                  or           t1, s0, ra
                  sltu         a7, t0, t4
                  xor          s2, ra, t4
                  and          a6, a5, s3
                  sltu         a2, t4, s4
490:              sll          a5, a5, a7
                  add          s5, t2, t3
                  bge          t1, s11, 493f
493:              bltu         s11, a5, 496f
494:              lui          tp, 805347
                  addi         s9, t5, -563
496:              addi         s11, s6, 756
                  sub          a6, t1, s0
                  srl          t6, s2, s4
                  sltiu        t4, a3, 704
                  sll          tp, a4, s8
                  bgeu         s11, t4, 520f
                  sll          a6, s0, s2
                  slti         sp, t6, 131
                  sub          a2, s7, s10
                  blt          t5, s8, 521f
                  bne          s5, t6, 510f
                  and          a7, s10, zero
                  srli         a2, s4, 13
                  xori         s5, s9, 1616
510:              bgeu         s7, s0, 520f
                  bge          a4, a5, 514f
                  xori         s4, s4, 895
                  xor          a0, a7, s9
514:              blt          s1, sp, 525f
                  srai         s2, t6, 27
                  nop
                  nop
                  slti         t2, a4, 1810
                  nop
520:              sra          s4, s7, zero
521:              srai         s8, s1, 16
                  slli         t6, a0, 4
                  and          s4, tp, t3
                  sltu         s3, s8, s0
525:              bltu         t3, a1, 529f
                  slti         tp, s4, 417
                  sra          s5, a7, a1
                  nop
529:              beq          s1, t5, 532f
                  xor          s7, t2, t2
                  srl          a6, a3, gp
532:              and          a6, a0, gp
                  slti         s2, s10, 400
                  lw           t4, 4(t3)
                  sub          a2, ra, gp
                  xor          s9, a3, s11
                  sra          s2, t6, s5
                  sltiu        ra, tp, -1631
                  sltiu        s9, gp, 1137
                  addi         t3, t3, 16
                  lui          a5, 648072
                  sub          s9, s11, a5
                  sltu         a7, s9, s0
767:              addi x13, x29, 1
767:              jalr x13, x13, 0
sub_5:            lui          zero, 406272
                  sltu         t2, s3, a5
                  xori         a2, ra, -1311
                  bge          sp, a0, sub_5_stack_p
                  slt          s3, t4, t4
                  slli         t5, a1, 15
sub_5_stack_p:    addi         t3, t3, -28
                  sw           t4, 4(t3)
                  slti         s0, a0, -141
                  addi         t5, zero, -3 #init loop 1 counter
                  addi         t2, zero, -10 #init loop 1 limit
sub_5_8_1_t:      slt          a0, t0, t3
                  srai         s0, t5, 21
                  addi         t5, t5, -10 #update loop 1 counter
                  xor          s3, s11, t3
                  addi         s10, zero, -4 #init loop 0 counter
                  addi         t6, zero, 2 #init loop 0 limit
sub_5_8_0_t:      slti         s11, t1, -1607
                  andi         a5, a5, -350
                  srli         s3, t3, 3
                  sll          s5, s1, t6
                  srai         a2, t5, 15
                  addi         s10, s10, 2 #update loop 0 counter
                  blt          s10, t6, sub_5_8_0_t #branch for loop 0
                  bge          t5, t2, sub_5_8_1_t #branch for loop 1
                  addi         s8, t0, 636
                  addi         tp, zero, -1 #init loop 1 counter
                  ori          s3, a4, 328
                  sltu         t5, t5, t2
                  slti         sp, a5, -511
                  xor          a0, a6, ra
                  xor          zero, s0, t4
                  sra          s11, t0, s6
                  sll          t6, a2, a7
                  slli         gp, a2, 12
                  addi         s5, zero, 9 #init loop 1 limit
                  andi         s0, t0, 897
                  xor          a1, t4, tp
                  sub          gp, s0, s7
sub_5_1_1_t:      or           a6, s6, t6
                  addi         tp, tp, 10 #update loop 1 counter
                  ori          zero, zero, 247
                  sltiu        a4, s3, -668
                  or           s3, tp, gp
                  addi         a3, zero, 0 #init loop 0 counter
                  srl          a2, s11, t2
                  addi         a7, zero, -1 #init loop 0 limit
sub_5_1_0_t:      xori         sp, a3, 1767
                  srli         s9, t5, 5
                  add          s4, a0, a7
                  sub          zero, t1, t4
                  addi         a3, a3, -9 #update loop 0 counter
                  ori          t1, t0, 102
                  bge          a3, a7, sub_5_1_0_t #branch for loop 0
                  bne          tp, s5, sub_5_1_1_t #branch for loop 1
                  or           s8, t1, a4
                  addi         a4, zero, 6 #init loop 1 counter
                  add          t4, a0, a4
                  addi         ra, zero, -16 #init loop 1 limit
sub_5_5_1_t:      lui          t4, 696151
                  addi         a4, a4, -1 #update loop 1 counter
                  ori          a1, s11, -394
                  srl          s10, s11, zero
                  xori         a6, zero, 1597
                  addi         t6, zero, 3 #init loop 0 counter
                  addi         a1, gp, 144
                  slt          s2, t5, s7
                  srl          s8, t2, s0
                  addi         s0, zero, 12 #init loop 0 limit
                  srl          a6, s6, t4
sub_5_5_0_t:      addi         a5, a4, 1856
                  addi         t1, a3, -51
                  addi         t6, t6, 5 #update loop 0 counter
                  blt          t6, s0, sub_5_5_0_t #branch for loop 0
                  xori         a3, a3, -723
                  nop
                  bge          a4, ra, sub_5_5_1_t #branch for loop 1
                  srai         a2, a2, 24
                  addi         a4, zero, -10 #init loop 0 counter
                  addi         s2, zero, 1 #init loop 0 limit
                  sll          a6, a3, s0
sub_5_7_0_t:      andi         t1, t1, 1573
                  addi         a4, a4, 4 #update loop 0 counter
                  blt          a4, s2, sub_5_7_0_t #branch for loop 0
                  srli         a6, sp, 15
                  addi         a5, zero, 2 #init loop 0 counter
                  xori         a6, tp, 414
                  auipc        a1, 760759
                  sub          s5, a2, t4
                  srl          s10, a7, a7
                  sll          a2, zero, t2
                  slti         t6, a2, -1055
                  sltiu        s4, s8, 726
                  addi         s0, zero, -14 #init loop 0 limit
                  add          s9, gp, ra
                  sll          t1, s3, t0
sub_5_4_0_t:      addi         a0, s2, 1958
                  sub          s8, s0, s10
                  srai         a1, s2, 22
                  sltiu        ra, s8, -849
                  and          s3, s1, t3
                  slti         s2, s5, -1967
                  sub          s11, s6, ra
                  and          a4, sp, s4
                  addi         a5, a5, -3 #update loop 0 counter
                  nop
                  sra          t2, s2, t1
                  srl          ra, t0, t3
                  andi         s3, s2, -1884
                  slli         a0, t0, 22
                  bge          a5, s0, sub_5_4_0_t #branch for loop 0
                  addi         a3, zero, 692
                  addi         s11, zero, 3 #init loop 1 counter
                  srl          a6, t2, a5
                  andi         s10, s9, -334
                  addi         a0, zero, 13 #init loop 1 limit
sub_5_9_1_t:      sltu         a4, s3, a6
                  slt          tp, s0, s4
                  addi         s11, s11, 10 #update loop 1 counter
                  xor          a3, s11, s10
                  addi         s0, zero, -5 #init loop 0 counter
                  or           t5, s1, s9
                  sra          ra, a0, zero
                  sltiu        t2, a2, 1214
                  addi         s5, zero, -11 #init loop 0 limit
sub_5_9_0_t:      auipc        t2, 978948
                  and          a6, gp, tp
                  slti         a3, a7, -1405
                  sltiu        t1, tp, -1935
                  addi         s0, s0, -3 #update loop 0 counter
                  or           t1, t3, s10
                  beq          s0, s5, sub_5_9_0_t #branch for loop 0
                  sub          a6, s10, s0
                  slli         s8, s2, 23
                  srli         tp, s10, 30
                  bne          s11, a0, sub_5_9_1_t #branch for loop 1
                  sltiu        s9, t1, -1626
                  addi         s8, zero, 6 #init loop 1 counter
                  addi         s4, zero, -4 #init loop 1 limit
sub_5_2_1_t:      sub          a0, s11, t1
                  addi         s8, s8, -10 #update loop 1 counter
                  addi         sp, zero, 2 #init loop 0 counter
                  addi         a6, zero, -13 #init loop 0 limit
sub_5_2_0_t:      nop
                  addi         sp, sp, -5 #update loop 0 counter
                  bne          sp, a6, sub_5_2_0_t #branch for loop 0
                  bne          s8, s4, sub_5_2_1_t #branch for loop 1
                  sub          t4, s11, s4
                  sra          a0, t2, s7
                  and          a3, a4, s0
                  bne          a5, a1, 17f
                  bne          s4, s1, 17f
                  xori         s4, s2, -1212
                  sub          tp, a4, gp
                  sltu         a2, t5, a3
                  addi         s8, t2, -436
                  blt          t4, t5, 9f
9:                srl          s4, gp, gp
                  xori         a0, ra, 1381
                  or           gp, t5, zero
                  bne          s11, s5, 24f
                  bge          ra, tp, 24f
                  sltiu        s9, s10, -1802
                  or           s8, t3, a2
                  sub          ra, t5, a7
17:               nop
                  bgeu         s2, a0, 36f
                  and          t6, t2, a0
                  lui          a3, 246834
                  or           a7, t0, s11
                  bne          s10, a3, 35f
                  sra          tp, s2, s5
24:               slli         t2, a6, 22
                  bltu         t4, sp, 36f
                  ori          a7, s8, 1861
                  nop
                  bge          gp, s6, 45f
                  srai         s7, t0, 31
                  andi         ra, t3, -776
                  lui          gp, 284386
                  sll          a3, s1, s8
                  slti         s3, s5, -1192
                  addi         tp, t2, -857
35:               or           a0, t6, t3
36:               nop
                  nop
                  xor          t1, t6, s10
                  slt          s4, ra, s5
                  sub          t1, s6, s3
                  nop
                  srli         a0, t5, 14
                  slt          s8, s0, s3
                  sll          t1, s4, tp
45:               srai         s7, s3, 4
                  add          s7, tp, a6
                  blt          s1, s3, 65f
                  andi         a7, s7, 838
                  nop
                  srli         ra, a4, 5
                  srli         a7, s1, 1
                  and          s2, sp, t0
                  slt          t1, tp, tp
                  bne          s9, s6, 62f
                  blt          s10, s7, 68f
                  srl          a1, a1, ra
                  srai         t1, t3, 3
                  add          s0, sp, tp
                  and          a7, a4, s2
                  bne          t1, a4, 74f
                  slti         s5, t6, -1049
62:               ori          tp, s6, -1073
                  nop
                  auipc        a0, 888563
65:               bgeu         s7, s6, 76f
                  slti         s11, s7, -1373
                  or           a5, a4, s2
68:               and          s11, a6, t1
                  sltiu        tp, a7, -366
                  nop
                  add          t1, s8, s0
                  beq          s3, s6, 84f
                  bge          s1, ra, 84f
74:               bltu         t0, s5, 94f
                  beq          zero, s6, 87f
76:               slti         s11, s6, -920
                  blt          zero, a5, 79f
                  bgeu         a2, a0, 96f
79:               srli         s10, a0, 6
                  or           s8, t6, s1
                  sra          gp, zero, a5
                  or           s5, s8, zero
                  bne          s4, tp, 90f
84:               blt          s0, ra, 85f
85:               nop
                  add          a0, t0, t5
87:               xori         s1, a1, 1363
                  bgeu         a1, s7, 102f
                  or           ra, t3, t5
90:               slt          t6, s7, a5
                  slt          s7, t5, a2
                  sra          s4, t4, s4
                  sra          s10, sp, gp
94:               bne          s4, a0, 98f
                  add          s10, a6, s10
96:               sltiu        t6, gp, 1471
                  srl          sp, s10, s2
98:               sra          gp, s2, tp
                  bgeu         t2, gp, 101f
                  xori         a1, tp, 1579
101:              ori          s2, t4, 1867
102:              ori          a6, tp, 1404
                  add          a4, sp, s4
                  andi         s4, t1, 355
                  add          t5, gp, a3
                  bgeu         sp, a7, 111f
                  xor          s3, s6, s2
                  sll          t1, a0, s6
                  and          ra, s6, t4
                  sltiu        s1, a3, -757
111:              sub          zero, t4, a5
                  slti         a2, s6, 1644
                  bgeu         t2, s4, 127f
                  addi         a4, s1, -1972
                  ori          s9, s5, 1207
                  srli         s4, s3, 6
                  bge          t1, s10, 129f
                  blt          s11, a1, 131f
                  xori         sp, a0, 1684
                  sub          t2, s0, t0
                  bge          zero, a6, 139f
                  srai         s7, s6, 24
                  beq          a1, s10, 124f
124:              bne          zero, s7, 131f
                  sltu         zero, t6, s6
                  sra          t4, t2, gp
127:              andi         a3, a4, 57
                  xor          s11, t1, s2
129:              addi         a1, t1, -1988
                  slli         s0, t6, 31
131:              sub          t2, s8, a7
                  bgeu         a5, s4, 145f
                  slli         a7, a2, 3
                  xori         s11, zero, -562
                  beq          a7, s5, 155f
                  add          s3, s7, a1
                  bne          a0, sp, 150f
                  add          t1, a3, s5
139:              slli         tp, a6, 6
                  lui          a5, 633935
                  bgeu         s3, t5, 158f
                  sub          s3, sp, t1
                  srli         s8, s3, 31
                  srli         s1, a0, 9
145:              add          s11, sp, a3
                  slli         a4, t0, 15
                  sub          gp, ra, a7
                  nop
                  sltiu        a0, s1, -1512
150:              sra          t6, a0, tp
                  slti         s10, t1, 309
                  sra          a4, a2, a2
                  andi         s3, s8, -1493
                  srli         t6, zero, 19
155:              sltiu        t5, s4, 747
                  auipc        s1, 836223
                  bne          a2, a6, 172f
158:              sltiu        s10, t1, -1166
                  andi         s3, t1, -1870
                  slli         s1, s7, 7
                  beq          t6, a6, 179f
                  xori         t1, zero, 1418
                  sub          s0, s7, a6
                  xor          s10, sp, s2
                  srai         s0, a1, 12
                  or           a2, a7, s5
                  auipc        s2, 222227
                  srli         a2, t3, 0
                  add          s2, t0, a3
                  bge          gp, s10, 184f
                  sub          s8, a0, a2
172:              slli         t1, s6, 26
                  sra          t2, a0, s11
                  sltu         s8, a1, t2
                  bne          a1, a4, 177f
                  xori         a7, t6, -984
177:              and          s7, ra, ra
                  sltu         a4, t3, s2
179:              slli         s3, t6, 9
                  sll          s5, s0, zero
                  lui          t1, 753234
                  srl          s3, t1, s2
                  add          s8, s8, t3
184:              sll          s2, a0, s5
                  bne          s11, t6, 197f
                  bne          t2, t1, 204f
                  addi         s10, zero, 5 #init loop 0 counter
                  auipc        t2, 201254
                  addi         a1, zero, 12 #init loop 0 limit
                  lui          s11, 752742
                  ori          s3, a0, -152
                  or           a0, s1, a3
sub_5_6_0_t:      addi         s9, s9, 1106
                  sub          s9, ra, t2
                  sub          s3, s9, t3
                  nop
                  lui          a0, 834850
                  addi         s10, s10, 8 #update loop 0 counter
                  sub          a5, a7, a2
                  srli         t1, t2, 5
                  xori         a5, tp, 1506
                  xor          t5, s11, s4
                  sub          t1, a4, s5
                  blt          s10, a1, sub_5_6_0_t #branch for loop 0
                  sltu         sp, t2, s2
                  bgeu         a3, t4, 198f
                  bltu         s9, s10, 200f
                  sub          s1, s11, t0
                  xori         s4, zero, 515
                  and          s0, ra, a0
                  slt          a2, tp, a4
                  addi         ra, a1, -1622
                  add          a2, s3, a6
                  bgeu         zero, s7, 197f
                  add          a2, t5, s7
197:              bgeu         t1, s2, 202f
198:              sra          s1, a1, a1
                  add          s9, s11, s9
200:              xor          s9, ra, s1
                  slli         s4, zero, 16
202:              bge          t0, a0, 210f
                  bne          s11, s9, 217f
204:              ori          a4, a5, -1343
                  bgeu         sp, s8, 219f
                  bne          ra, s11, 217f
                  slti         s8, s7, -1775
                  beq          t1, t2, 212f
                  bge          t2, a5, 210f
210:              and          s5, a5, a0
                  auipc        t4, 107432
212:              srli         a7, a3, 7
                  beq          a7, s2, 231f
                  andi         a0, s3, -519
                  or           s0, s7, t1
                  xori         gp, s7, 2010
217:              srl          gp, a0, s4
                  bne          s10, s9, 230f
219:              addi         a5, a5, 845
                  ori          s7, s5, -743
                  auipc        gp, 616848
                  sra          a3, a6, t4
                  nop
                  and          sp, s8, s3
                  sra          ra, a5, s2
                  sra          s2, s1, s3
                  sll          zero, zero, s4
                  bltu         t1, tp, 239f
                  andi         gp, s8, -891
230:              bgeu         sp, s11, 248f
231:              sltiu        a2, t3, 1924
                  slli         s11, a1, 27
                  slt          a2, s9, t3
                  addi         a0, s11, -949
                  sll          a2, a3, s9
                  and          s10, t0, a6
                  lui          s4, 148269
                  xori         s10, s10, -1954
239:              auipc        t5, 249941
                  sra          t2, sp, s11
                  bge          t0, s11, 254f
                  xor          a0, a6, s7
                  srli         t2, ra, 14
                  slti         t4, s11, 971
                  auipc        t1, 1034516
                  lui          a6, 285385
                  slti         gp, a4, -551
248:              srl          s1, s11, zero
                  bne          s5, zero, 260f
                  auipc        s4, 457996
                  bgeu         a4, a7, 265f
                  and          t5, a3, s8
                  lui          ra, 229186
254:              sra          a4, s11, t3
                  ori          s7, a7, -361
                  slti         a3, t1, -477
                  bge          a0, t2, 269f
                  beq          a6, t6, 271f
                  slli         s10, s1, 11
260:              xor          ra, s0, a5
                  slti         t1, t1, -637
                  bltu         s10, s7, 280f
                  slli         a1, t4, 8
                  addi         s10, s0, 1837
265:              bge          t0, a6, 285f
                  sltiu        a3, gp, 1216
                  sll          t6, s0, t6
                  andi         a7, a0, 289
269:              sra          a6, sp, s11
                  slli         gp, a3, 9
271:              srl          t1, t1, t1
                  add          s3, t6, s9
                  srai         a7, a5, 15
                  srl          t6, t1, t3
                  or           t2, s4, a7
                  slti         s9, t5, 711
                  lui          tp, 835881
                  blt          t6, s4, 292f
                  or           sp, a4, t6
280:              bge          zero, ra, 291f
                  blt          s0, zero, 282f
282:              beq          a1, s0, 296f
                  slt          s5, ra, s8
                  slti         a2, a3, -1705
285:              bgeu         ra, s0, 299f
                  auipc        a7, 915292
                  xori         s0, t1, -170
                  ori          tp, a7, 127
                  slti         a3, t5, -2019
                  slli         s5, s7, 8
291:              sll          s1, s2, t2
292:              blt          s0, a2, 294f
                  andi         sp, t1, 661
294:              and          sp, s6, zero
                  sll          tp, t0, s6
296:              addi         a3, zero, 253
                  auipc        s0, 412394
                  bne          a5, t0, 300f
299:              bltu         s7, s8, 304f
300:              and          s8, s4, zero
                  xor          s0, a6, a3
                  srli         a3, t2, 6
                  bltu         a7, t0, 314f
304:              or           s7, ra, a2
                  bne          ra, t4, 319f
                  xori         zero, t3, -193
                  slti         a7, s2, -1594
                  slti         ra, s1, -1143
                  addi         s10, a4, -1458
                  add          s4, s4, t4
                  andi         s11, t0, 182
                  andi         t2, zero, -1114
                  auipc        a4, 966852
314:              ori          t4, t1, 1880
                  or           a3, t5, a0
                  bgeu         a7, t2, 328f
                  add          a3, s5, t6
                  xor          t2, t1, a2
319:              addi         t5, zero, -1618
                  lui          tp, 661699
                  xor          a2, s7, s7
                  lui          a1, 243041
                  and          a1, s5, t4
                  srai         s10, zero, 6
                  bge          t1, a6, 343f
                  bne          s6, t3, 339f
                  srai         t4, a2, 2
328:              nop
                  slt          s11, t0, s8
                  srli         s1, a6, 12
                  and          a4, s6, s3
                  slti         s5, t4, 174
                  sltu         s7, t0, t0
                  andi         a0, ra, -178
                  bge          s10, t1, 339f
                  andi         s11, zero, 1431
                  and          s4, t5, a5
                  auipc        tp, 575967
339:              bne          s1, a0, 340f
340:              srai         a5, s0, 26
                  lui          t5, 273654
                  addi         s1, s1, 161
343:              sub          a7, s3, a2
                  xori         a5, sp, 1176
                  bge          s3, a6, 357f
                  nop
                  add          a1, a7, t6
                  beq          a6, gp, 355f
                  or           t4, sp, a0
                  srli         s5, s4, 25
                  add          a0, s11, s6
                  andi         tp, t4, 1109
                  bge          a1, t2, 370f
                  sltu         s9, a6, ra
355:              bge          t2, s10, 366f
                  srli         tp, zero, 17
357:              beq          s8, a2, 375f
                  andi         t5, tp, -1686
                  bne          a3, s9, 367f
                  slti         a0, a3, -601
                  sltiu        a7, gp, -1399
                  sll          a3, a2, zero
                  sll          s3, a2, s6
                  sra          t5, a3, a5
                  sra          a6, t5, a3
366:              sub          a3, a6, a5
367:              andi         t1, a5, -1193
                  andi         s1, s1, 1524
                  add          a5, s6, s10
370:              add          t6, s0, s1
                  xor          tp, t5, a6
                  sltu         t2, s0, a6
                  slti         s11, t3, 1674
                  lui          a4, 221523
375:              nop
                  sra          a7, s2, s0
                  sltiu        ra, a1, -1395
                  xori         tp, sp, -1233
                  ori          s5, s0, -1392
                  slti         t6, s8, -133
                  bne          a5, t2, 392f
                  sll          t5, a0, a7
                  xori         a4, t3, 1374
                  sra          a7, ra, a0
                  sll          s2, t0, s4
                  bgeu         s8, t5, 399f
                  or           s9, s8, a7
                  add          s4, s7, s6
                  bltu         a6, ra, 407f
                  srl          a4, s11, s9
                  addi         s4, zero, 1 #init loop 0 counter
                  andi         sp, s8, -1074
                  slti         a7, a3, 1199
                  addi         s2, zero, -18 #init loop 0 limit
                  sll          s10, a4, gp
                  slt          t2, s0, a2
                  lui          a6, 766742
                  addi         zero, t6, 383
sub_5_0_0_t:      xori         t4, tp, 1273
                  xor          a5, s0, t4
                  or           s10, gp, tp
                  addi         s4, s4, -4 #update loop 0 counter
                  or           s7, a4, a7
                  andi         t5, s1, 241
                  add          s7, s7, t3
                  xor          a2, s0, a6
                  andi         ra, a5, -690
                  addi         zero, s10, 59
                  ori          a1, a6, 1317
                  nop
                  bge          s4, s2, sub_5_0_0_t #branch for loop 0
                  slli         a3, a1, 4
                  bltu         s6, s4, 403f
392:              and          sp, s2, a4
                  sub          s7, s8, t4
                  srli         s4, s3, 17
                  bne          t2, s11, 407f
                  slti         s1, ra, 870
                  add          s5, zero, tp
                  beq          t3, s9, 413f
399:              beq          s0, a6, 400f
400:              slli         a7, s0, 9
                  bgeu         a2, s11, 413f
                  srl          a0, tp, t5
403:              nop
                  nop
                  sltiu        s0, s1, -80
                  ori          a6, s10, 575
407:              bne          s8, a2, 421f
                  sltu         s8, a5, t5
                  slli         s1, a4, 16
                  addi         zero, s1, 1983
                  andi         t6, ra, 602
                  sltiu        s8, s5, -284
413:              blt          a4, a5, 425f
                  beq          s9, a7, 434f
                  beq          ra, s4, 426f
                  or           s8, a0, s0
                  and          t1, s1, gp
                  sra          a1, s11, ra
                  add          s2, s4, s6
                  add          s10, a6, s10
421:              or           sp, a7, t2
                  and          a0, gp, a6
                  bltu         a1, a4, 441f
                  slli         s2, t4, 21
425:              sub          gp, zero, gp
426:              slt          t4, t0, gp
                  slli         a1, a0, 25
                  slti         tp, s9, -456
                  sltu         t4, t2, t4
                  srai         a0, s3, 16
                  auipc        gp, 809689
                  bltu         s4, t4, 445f
                  addi         a7, a2, 410
434:              sll          s9, s5, s2
                  slli         a2, s4, 28
                  bge          a3, s2, 450f
                  slli         t6, t4, 17
                  addi         s10, zero, 3 #init loop 1 counter
                  srl          s5, a0, t5
                  addi         s3, zero, 17 #init loop 1 limit
                  xor          a5, s1, a4
sub_5_3_1_t:      and          a1, a5, a7
                  ori          s8, t2, -868
                  addi         s10, s10, 7 #update loop 1 counter
                  andi         t1, s6, 763
                  addi         sp, zero, 0 #init loop 0 counter
                  auipc        a4, 725875
                  xori         gp, s7, -1543
                  addi         s0, zero, 14 #init loop 0 limit
                  xor          t6, a4, tp
                  auipc        gp, 523160
sub_5_3_0_t:      ori          a5, t1, 713
                  addi         sp, sp, 5 #update loop 0 counter
                  and          s4, a4, s7
                  slti         zero, t1, 439
                  srai         tp, s7, 9
                  ori          a4, s1, -936
                  slt          a1, ra, s2
                  blt          sp, s0, sub_5_3_0_t #branch for loop 0
                  bltu         s10, s3, sub_5_3_1_t #branch for loop 1
                  xor          s1, a4, s5
                  sltiu        s4, t3, -585
                  srli         ra, a0, 23
                  slti         s4, t6, -453
441:              srai         a4, a2, 30
                  andi         s1, zero, 385
                  sltiu        tp, s4, 548
                  or           sp, t6, a3
445:              sltiu        s10, s0, 638
                  blt          a2, a4, 460f
                  add          s2, a7, s7
                  slli         ra, s6, 14
                  beq          ra, gp, 453f
450:              bltu         s4, a2, 462f
                  addi         a0, a2, 422
                  sra          s5, s7, s1
453:              bgeu         t5, a5, 460f
                  srl          s2, s11, a1
                  srli         ra, gp, 25
                  bgeu         a0, s4, 461f
                  blt          s3, t6, 475f
                  bge          a5, a1, 476f
                  sltu         zero, t3, a0
460:              bgeu         a1, s7, 478f
461:              blt          a1, gp, 474f
462:              sub          a2, a0, s1
                  auipc        a5, 168255
                  slti         zero, t5, -1908
                  ori          s10, t5, 1243
                  sltiu        s2, s3, -1625
                  blt          s1, t3, 481f
                  bge          t5, s2, 485f
                  ori          a0, s7, -736
                  srl          s1, t0, ra
                  sltiu        s11, s11, 1650
                  auipc        gp, 545988
                  blt          a3, t2, 484f
474:              xor          s11, s11, a4
475:              srai         s10, zero, 23
476:              beq          t1, s8, 478f
                  bltu         t6, tp, 488f
478:              sra          a7, s2, a0
                  ori          s3, a0, -960
                  add          s2, a6, t0
481:              xori         t4, s7, 1959
                  lui          a4, 371662
                  slli         s2, t4, 9
484:              add          s4, a2, ra
485:              lui          a0, 986626
                  beq          t4, t3, 487f
487:              xori         s7, s9, 1232
488:              sltiu        s4, zero, -1548
                  xor          s8, s0, t3
                  slli         ra, a6, 10
                  sub          a3, s11, t1
                  andi         gp, ra, 224
                  nop
                  addi         a7, a4, -1105
                  beq          s8, tp, 503f
                  xori         s11, ra, -1482
                  xor          sp, s1, a4
                  srl          t2, sp, s7
                  xori         a5, t5, -363
                  nop
                  sltiu        t4, ra, -1042
                  bge          a3, t3, 517f
503:              bge          tp, s9, 505f
                  andi         tp, t4, -725
505:              sub          s9, sp, t6
                  slti         s7, a2, 592
                  andi         tp, gp, -1488
                  sub          s3, s6, a3
                  bltu         a5, a6, 522f
                  bge          a2, t5, 522f
                  sltiu        s4, a1, -259
                  xori         s2, a4, 1242
                  sltu         s11, a3, s11
                  addi         s2, a2, 1399
                  sll          s0, a2, s1
                  bge          a4, s9, 527f
517:              lui          a6, 153061
                  srli         s8, t0, 21
                  sll          t5, s10, s3
                  blt          t4, tp, 521f
521:              bgeu         zero, s8, 523f
522:              ori          a3, tp, 1579
523:              bge          t5, zero, 534f
                  slli         s2, s1, 16
                  bgeu         t2, tp, 534f
                  xor          a7, t6, a1
527:              or           tp, sp, sp
                  bge          tp, s7, 534f
                  slt          gp, zero, a2
                  sub          a2, gp, s0
                  srli         s10, t1, 28
                  add          tp, sp, ra
                  add          s1, s3, t0
534:              xor          t6, s4, t0
                  or           s8, a3, s9
                  lw           t4, 4(t3)
                  slt          a4, s11, s0
                  ori          t2, s11, -498
                  srai         t2, s5, 15
                  addi         t3, t3, 28
                  nop
755:              addi x1, x29, 1
755:              jalr x1, x1, 0
sub_3:            srl          s4, a5, s0
                  bgeu         s6, s3, sub_3_stack_p
                  srli         s2, s1, 1
                  add          t2, a0, s11
                  andi         t1, s9, -121
                  srai         s7, t6, 22
sub_3_stack_p:    addi         t3, t3, -44
                  sw           t4, 4(t3)
                  slti         t6, s2, -1881
                  srai         s8, gp, 1
                  nop
                  srai         s4, t6, 2
                  ori          s3, s9, -128
                  bgeu         t4, a4, 6f
                  slli         s11, t2, 8
                  lui          t5, 260761
                  xori         s10, s11, -422
6:                addi         s8, s1, -1813
                  sll          a5, t4, s8
                  bgeu         t5, ra, 27f
                  sra          s4, a1, a5
                  add          s11, s5, a4
                  bltu         a5, t1, 19f
                  sra          s0, s2, sp
                  sltu         s3, s2, s11
                  lui          a4, 418987
                  bne          t6, t6, 31f
                  xori         t5, s1, 1528
                  and          t5, s7, zero
                  addi         a4, s4, 477
19:               sltu         gp, a7, s11
                  bne          s2, t4, 29f
                  sll          a2, s2, a5
                  srai         s3, sp, 28
                  sub          tp, tp, s7
                  srli         sp, a4, 31
                  srl          s2, s3, a4
                  and          a4, s11, s0
27:               blt          s0, s0, 33f
                  srli         a2, s6, 12
29:               srai         zero, s3, 21
                  bltu         a4, s10, 33f
31:               sra          t6, a6, s2
                  beq          t3, s11, 33f
33:               sll          a4, a6, ra
                  nop
                  slt          a4, a5, a6
                  lui          s4, 622995
                  lw           t4, 4(t3)
                  sra          s10, s7, s10
                  addi         t3, t3, 44
                  xor          s4, s11, a2
                  slt          t5, s7, s7
53:               addi x6, x29, 0
53:               jalr x6, x6, 0
sub_4:            slti         a1, a7, -1332
                  or           s8, a2, s4
                  addi         t3, t3, -48
                  sltiu        zero, t5, -258
                  slli         a4, s10, 0
                  sra          s8, ra, a5
                  sw           t4, 4(t3)
                  slt          a7, t5, t4
                  lui          s9, 852996
                  addi         s2, zero, -8 #init loop 1 counter
                  addi         a3, zero, 20 #init loop 1 limit
sub_4_4_1_t:      lui          s3, 697005
                  slt          s0, s4, s5
                  addi         s2, s2, 8 #update loop 1 counter
                  addi         a1, zero, -6 #init loop 0 counter
                  xori         a6, a4, -104
                  addi         sp, zero, -6 #init loop 0 limit
                  slli         a2, t0, 1
sub_4_4_0_t:      sltu         s8, s10, t6
                  addi         a1, a1, -1 #update loop 0 counter
                  bge          a1, sp, sub_4_4_0_t #branch for loop 0
                  slli         t4, a2, 26
                  blt          s2, a3, sub_4_4_1_t #branch for loop 1
                  srai         s7, s4, 11
                  addi         a2, zero, 8 #init loop 1 counter
                  srl          s7, a0, sp
                  addi         tp, zero, 3 #init loop 1 limit
                  auipc        sp, 518080
                  xori         s3, t1, 1321
sub_4_1_1_t:      addi         s11, t2, 567
                  srai         a0, s1, 19
                  auipc        s11, 353150
                  sltu         s7, s9, s10
                  lui          a3, 624960
                  ori          t5, zero, 808
                  sub          gp, s8, t4
                  andi         s0, a1, -1743
                  addi         a2, a2, -3 #update loop 1 counter
                  sltu         s11, s3, s8
                  or           s11, tp, ra
                  auipc        a0, 1033804
                  addi         t6, a0, -1973
                  addi         s8, zero, -6 #init loop 0 counter
                  addi         a5, zero, -19 #init loop 0 limit
                  sll          zero, a2, a4
sub_4_1_0_t:      xori         s4, s0, 84
                  addi         s8, s8, -1 #update loop 0 counter
                  srl          s11, s10, a3
                  bge          s8, a5, sub_4_1_0_t #branch for loop 0
                  srli         a6, t3, 16
                  or           t2, s10, s0
                  sub          a3, t2, s8
                  and          t6, s6, s8
                  bge          a2, tp, sub_4_1_1_t #branch for loop 1
                  sltu         s5, a0, s9
                  addi         t6, zero, -3 #init loop 1 counter
                  addi         s9, zero, 3 #init loop 1 limit
                  slti         gp, s11, 567
sub_4_10_1_t:     lui          t4, 390739
                  or           sp, t5, t6
                  addi         t6, t6, 2 #update loop 1 counter
                  addi         s0, zero, 10 #init loop 0 counter
                  srai         s5, s3, 31
                  addi         s11, zero, 10 #init loop 0 limit
                  lui          a5, 749680
sub_4_10_0_t:     addi         a2, gp, 623
                  srl          s3, gp, t3
                  addi         s0, s0, -8 #update loop 0 counter
                  nop
                  bgeu         s0, s11, sub_4_10_0_t #branch for loop 0
                  bltu         t6, s9, sub_4_10_1_t #branch for loop 1
                  srli         sp, s1, 2
                  addi         gp, zero, 3 #init loop 0 counter
                  sltu         s7, s3, a4
                  add          a7, a3, a2
                  xor          t1, tp, s1
                  add          s3, a4, t2
                  add          ra, a7, s0
                  addi         s2, zero, 6 #init loop 0 limit
                  slt          s8, a6, t1
                  sltiu        t2, t3, 1916
                  srai         s1, a5, 9
sub_4_2_0_t:      andi         s1, s10, 981
                  ori          a1, s5, 1372
                  addi         gp, gp, 10 #update loop 0 counter
                  addi         a5, ra, 1370
                  add          sp, ra, t3
                  or           a3, s8, s1
                  or           s8, a0, a3
                  blt          gp, s2, sub_4_2_0_t #branch for loop 0
                  xor          s5, zero, s4
                  addi         t6, zero, 10 #init loop 1 counter
                  sltiu        s0, tp, -1392
                  nop
                  addi         t4, zero, 19 #init loop 1 limit
                  addi         a2, ra, -1442
                  sltiu        s0, ra, 357
sub_4_0_1_t:      or           s4, s7, s7
                  addi         t6, t6, 3 #update loop 1 counter
                  or           sp, sp, s10
                  addi         t5, zero, 5 #init loop 0 counter
                  ori          s1, gp, -1693
                  addi         s11, zero, -8 #init loop 0 limit
                  add          tp, ra, sp
                  andi         s0, a0, 719
sub_4_0_0_t:      nop
                  add          s1, s6, s5
                  addi         t5, t5, -8 #update loop 0 counter
                  or           s8, s6, a2
                  bge          t5, s11, sub_4_0_0_t #branch for loop 0
                  sra          s2, ra, t5
                  andi         t1, s6, -844
                  srl          a2, s6, s11
                  and          a5, s2, s4
                  andi         a3, t5, 1828
                  bltu         t6, t4, sub_4_0_1_t #branch for loop 1
                  lui          s4, 28967
                  addi         t1, zero, 5 #init loop 0 counter
                  auipc        s11, 686299
                  sltiu        a6, tp, -213
                  andi         a1, s0, -764
                  slt          s4, zero, a5
                  addi         a3, zero, 20 #init loop 0 limit
                  sltiu        s10, gp, 1067
                  nop
sub_4_7_0_t:      andi         a5, a3, 855
                  or           tp, a2, s1
                  xori         sp, s6, 807
                  srl          t5, s3, a0
                  srai         a2, s3, 11
                  slti         a6, gp, -536
                  addi         t1, t1, 1 #update loop 0 counter
                  andi         s8, s10, 1761
                  srai         a5, s7, 10
                  sub          t2, zero, ra
                  andi         s8, s10, 1798
                  srl          sp, a2, sp
                  and          tp, t5, a2
                  auipc        ra, 136918
                  slli         s5, s10, 18
                  and          a4, s11, s6
                  slti         s11, s0, 928
                  or           sp, s4, t2
                  beq          t1, a3, sub_4_7_0_t #branch for loop 0
                  sltu         s5, s2, s9
                  addi         t4, zero, 0 #init loop 1 counter
                  addi         s0, zero, -4 #init loop 1 limit
sub_4_8_1_t:      nop
                  sltu         a7, t4, a5
                  addi         t4, t4, -4 #update loop 1 counter
                  addi         t2, zero, -9 #init loop 0 counter
                  addi         t6, zero, -9 #init loop 0 limit
sub_4_8_0_t:      sltu         sp, t3, zero
                  ori          a4, s7, -984
                  addi         t2, t2, -5 #update loop 0 counter
                  bge          t2, t6, sub_4_8_0_t #branch for loop 0
                  slli         a0, a0, 5
                  beq          t4, s0, sub_4_8_1_t #branch for loop 1
                  slt          sp, s8, zero
                  addi         a5, zero, 9 #init loop 0 counter
                  addi         s10, zero, 9 #init loop 0 limit
                  ori          s11, a2, 221
                  sltiu        s1, s2, -1837
sub_4_6_0_t:      xor          s8, t2, s3
                  xor          gp, s5, s5
                  xori         s3, a1, -610
                  sub          s9, a6, s6
                  or           a6, s1, s10
                  addi         a5, a5, -6 #update loop 0 counter
                  slt          a3, a4, s8
                  nop
                  slt          s0, s11, s6
                  sra          zero, ra, s4
                  xor          t5, a7, t4
                  ori          a6, t4, -1178
                  bgeu         a5, s10, sub_4_6_0_t #branch for loop 0
                  slti         sp, a7, -1573
                  addi         t6, zero, -10 #init loop 1 counter
                  addi         s0, zero, -18 #init loop 1 limit
                  sltiu        s7, t4, 439
sub_4_5_1_t:      sltiu        a3, s6, -265
                  addi         t6, t6, -8 #update loop 1 counter
                  sltu         t2, a2, t0
                  or           s8, t3, t2
                  nop
                  sltu         s5, s6, a7
                  and          a3, s6, tp
                  xori         gp, a4, 477
                  addi         a1, zero, 8 #init loop 0 counter
                  sub          s9, s0, a1
                  auipc        gp, 528412
                  addi         a4, zero, 5 #init loop 0 limit
sub_4_5_0_t:      xor          a5, t6, s4
                  add          a3, t1, a5
                  sltu         s4, s7, a2
                  slli         sp, s0, 19
                  and          sp, zero, a1
                  xor          s4, a2, ra
                  addi         a1, a1, -1 #update loop 0 counter
                  lui          sp, 907002
                  bge          a1, a4, sub_4_5_0_t #branch for loop 0
                  nop
                  addi         s9, s0, 1382
                  ori          s10, a3, -609
                  sra          a3, zero, s9
                  xor          s8, s7, s10
                  sra          ra, s10, gp
                  sub          s3, s10, t5
                  ori          ra, a7, -411
                  srai         s2, s1, 4
                  bne          t6, s0, sub_4_5_1_t #branch for loop 1
                  lui          t1, 625309
                  lui          tp, 516155
                  bne          a5, t5, 8f
                  lui          a0, 310387
                  srli         s9, a1, 29
                  lui          s9, 928325
                  lui          s11, 907679
                  or           a7, sp, s5
                  srli         s10, a2, 14
8:                bge          s10, t3, 28f
                  bgeu         a4, s3, 17f
                  xor          s3, s1, gp
                  or           s5, t0, gp
                  sll          a3, a3, s2
                  ori          s11, t1, -241
                  and          a3, s3, s9
                  sll          s11, s2, t4
                  sltiu        t4, s11, 510
17:               slti         t1, a4, 13
                  sll          s8, s3, a6
                  sub          t1, t0, s8
                  slli         a7, s1, 26
                  xor          t2, a6, t1
                  nop
                  and          s8, t3, s9
                  bgeu         a7, tp, 39f
                  and          t1, gp, t0
                  addi         a6, zero, -7 #init loop 0 counter
                  nop
                  addi         s0, zero, 1 #init loop 0 limit
                  xori         s10, s7, 1814
sub_4_3_0_t:      and          ra, tp, s2
                  sra          s2, t1, s9
                  addi         a6, a6, 8 #update loop 0 counter
                  bne          a6, s0, sub_4_3_0_t #branch for loop 0
                  or           a3, sp, s8
                  addi         gp, tp, 850
                  ori          gp, s0, 1367
28:               bge          s1, a7, 44f
                  slti         s0, t6, 1659
                  addi         a5, s0, -848
                  xori         t5, a4, -998
                  sra          a1, t6, s6
                  add          a2, t5, zero
                  bne          s4, t4, 51f
                  slt          s8, ra, s4
                  bltu         a0, sp, 43f
                  sltiu        t4, a6, 1716
                  sra          s7, t1, s6
39:               sra          t2, t2, t6
                  sub          s7, a6, s11
                  xor          t1, s4, s2
                  blt          t1, t5, 43f
43:               or           a2, s4, t6
44:               add          a6, a4, t1
                  blt          s10, s0, 64f
                  srai         s9, s1, 6
                  slti         s7, a3, 224
                  auipc        ra, 147333
                  bgeu         a1, sp, 57f
                  and          tp, s2, s9
51:               bgeu         a6, s4, 70f
                  lui          s1, 1021086
                  sub          s8, a2, ra
                  srli         s5, sp, 1
                  blt          a4, tp, 74f
                  bgeu         gp, s2, 63f
57:               bne          s3, s6, 61f
                  sra          tp, a6, t1
                  add          s1, t1, s2
                  bltu         s2, s1, 70f
61:               sltu         s10, a3, s10
                  ori          s4, a7, 2036
63:               addi         t1, s8, 765
64:               auipc        s3, 131849
                  slli         t6, a4, 19
                  or           t1, s0, a6
                  slt          t1, s2, t2
                  bge          t2, s0, 77f
                  bgeu         s9, s8, 82f
70:               srai         a3, t3, 1
                  sub          a3, s3, a0
                  addi         s5, sp, -1329
                  sltu         a2, a3, t6
74:               nop
                  xor          a1, a2, s11
                  xor          t2, t2, s10
77:               ori          a1, s5, -591
                  slti         gp, s9, -922
                  xori         t2, s5, -1353
                  nop
                  srl          s5, s8, s7
82:               slti         s9, s1, -844
                  bne          s10, gp, 98f
                  auipc        s0, 890935
                  slt          tp, s9, a5
                  sltu         s10, t2, s11
                  or           a6, a2, s1
                  slt          s9, a1, s6
                  srl          a1, t2, s6
                  xor          s2, a3, gp
                  slt          s1, t2, s9
                  bge          zero, s3, 110f
                  bge          s7, tp, 99f
                  blt          s10, a4, 102f
                  xori         t6, s11, 1875
                  sub          gp, s5, s0
                  xor          a4, s9, a2
98:               xori         s4, s5, 861
99:               blt          s3, a4, 109f
                  srli         a7, a0, 18
                  or           zero, t1, s9
102:              add          sp, t6, t0
                  and          s0, sp, a3
                  beq          s7, s10, 114f
                  and          s9, s0, ra
                  addi         t5, a1, -502
                  srl          s9, s8, a4
                  nop
109:              ori          t6, a1, -1267
110:              or           tp, t3, s11
                  auipc        sp, 274389
                  auipc        zero, 362781
                  add          ra, zero, a3
114:              or           s2, s6, zero
                  addi         tp, t1, -55
                  bne          s1, s4, 134f
                  slti         a5, s10, -1697
                  beq          t4, t5, 134f
                  auipc        s1, 340491
                  add          s0, a6, s10
                  bne          s11, s11, 127f
                  slt          t6, s10, s8
                  addi         t2, a5, 2045
                  sll          tp, t1, s10
                  blt          t6, a2, 138f
                  srai         a3, s1, 12
127:              blt          ra, sp, 137f
                  sll          s10, t0, a6
                  and          s9, sp, s1
                  nop
                  slli         s5, s9, 4
                  xori         a2, a0, 772
                  srai         a5, s7, 28
134:              sltiu        t1, s9, 1272
                  srli         a7, tp, 16
                  sra          s5, tp, gp
137:              auipc        s11, 353002
138:              and          zero, s1, s0
                  sub          a5, t4, s4
                  xori         s10, s6, -970
                  srl          s5, s6, a0
                  bne          a4, a7, 156f
                  add          a6, t6, s6
                  slti         a1, s4, -1742
                  auipc        t4, 758174
                  bge          s11, a6, 162f
                  srai         s11, t3, 19
                  or           s11, a1, a1
                  blt          a3, t3, 153f
                  nop
                  srli         a4, s5, 22
                  slli         t4, a1, 23
153:              blt          s0, s0, 172f
                  beq          s4, a1, 164f
                  sltiu        t2, a2, -1898
156:              auipc        tp, 141262
                  sra          s2, s8, s9
                  nop
                  slli         s10, a0, 0
                  bne          t0, a7, 174f
                  beq          a6, s6, 169f
162:              bge          a0, s5, 175f
                  xori         s10, a7, 2033
164:              bltu         a2, s5, 172f
                  bge          t4, s0, 185f
                  xori         s5, a4, 298
                  ori          ra, a4, 1741
                  slti         t5, t1, -1547
169:              bne          s10, a6, 188f
                  slli         s9, s9, 11
                  auipc        s5, 91857
172:              blt          s10, s3, 190f
                  andi         s1, s7, 793
174:              srai         a2, s1, 15
175:              slli         s4, t3, 18
                  xor          s1, t0, s7
                  slti         s10, a3, 784
                  srli         s0, t1, 19
                  srli         s4, a2, 2
                  bge          t5, t3, 190f
                  srai         t2, s7, 8
                  bltu         s9, a7, 200f
                  slli         sp, s1, 12
                  bgeu         ra, a7, 191f
185:              blt          s0, s4, 195f
                  bltu         a0, a1, 199f
                  sra          s2, a5, s10
188:              srli         a3, t3, 26
                  sltiu        s2, a3, 48
190:              or           t2, a0, s7
191:              slt          sp, s5, ra
                  sltu         tp, s4, zero
                  nop
                  add          s9, sp, t0
195:              andi         s7, t6, -257
                  sll          zero, t4, s3
                  andi         s10, s0, 717
                  slli         s2, s7, 25
199:              sltiu        a6, a4, -1917
200:              blt          s11, s5, 206f
                  xori         tp, t6, -1895
                  slti         s7, gp, -755
                  bge          t2, a7, 213f
                  sll          a6, s4, t3
                  bltu         a3, t0, 206f
206:              sltiu        s11, s4, 1275
                  xori         s9, a2, 483
                  sltiu        s3, s1, 840
                  bltu         s7, s1, 218f
                  lui          s2, 651098
                  slt          gp, t2, s6
                  xori         zero, t3, -106
213:              sltiu        s1, s3, 1289
                  add          tp, a1, s0
                  slli         s0, t0, 3
                  sltiu        ra, zero, 468
                  srl          a2, a1, s4
218:              bltu         a1, s10, 234f
                  addi         s0, a1, 890
                  sub          a4, t3, a1
                  andi         s3, t4, 1140
                  xori         s4, s10, 1927
                  blt          a3, s3, 231f
                  srl          a6, s1, t1
                  sltiu        a4, t5, -704
                  ori          t5, s6, 1112
                  beq          t1, a1, 242f
                  or           a4, a4, a1
                  bge          a4, t3, 246f
                  andi         a7, s4, -886
231:              slli         sp, a3, 21
                  sub          a0, t0, a5
                  sltu         s1, gp, a3
234:              ori          t1, a7, -2017
                  slli         a7, s8, 19
                  slli         s4, s6, 14
                  sltiu        t2, sp, -174
                  or           a7, t1, t3
                  blt          gp, s4, 246f
                  srai         s11, tp, 7
                  srai         s11, tp, 31
242:              bne          ra, t2, 258f
                  slt          t5, a7, s10
                  srli         s8, zero, 30
                  ori          s4, a5, 1948
246:              sltiu        s0, tp, -201
                  bltu         s1, s7, 263f
                  slti         s3, s4, 381
                  bge          ra, t2, 264f
                  nop
                  auipc        s7, 684139
                  sltiu        zero, s9, 1177
                  slli         s9, tp, 22
                  srai         a1, zero, 20
                  slli         ra, s4, 8
                  sra          s0, tp, s2
                  slli         s8, a0, 8
258:              srl          s5, t1, a6
                  and          s10, t6, tp
                  sra          a5, t5, s4
                  slt          a0, a3, t6
                  srai         s5, a3, 23
263:              sltu         s9, a7, s9
264:              lui          t2, 488913
                  bne          t2, ra, 272f
                  and          a2, t4, a0
                  slt          a5, ra, s4
                  slli         t5, t2, 28
                  srai         t4, s8, 20
                  nop
                  sub          tp, a3, s2
272:              beq          s1, ra, 291f
                  sra          a2, tp, t2
                  srli         s7, zero, 9
                  beq          s11, a6, 281f
                  xori         s2, a1, -1565
                  andi         sp, s8, -1711
                  slti         s0, a7, -1705
                  xori         s2, s11, 192
                  auipc        t6, 830415
281:              bne          a1, t1, 291f
                  nop
                  srl          s3, s8, s1
                  or           a4, a0, a3
                  bgeu         t1, a5, 294f
                  sltu         a4, s9, s9
                  nop
                  sll          s5, t1, a0
                  lui          s2, 769480
                  sra          t6, a7, tp
291:              srli         s10, s9, 0
                  bgeu         s4, s7, 298f
                  bltu         s4, sp, 312f
294:              xor          s10, s4, t5
                  or           s9, t2, s6
                  srli         t4, t2, 1
                  blt          s11, s8, 304f
298:              lui          s3, 351591
                  auipc        s0, 71601
                  beq          sp, a7, 315f
                  sra          t4, s1, s3
                  srai         a3, s3, 21
                  bne          s5, a2, 311f
304:              srli         sp, a4, 28
                  sub          t6, s8, s11
                  sltu         ra, s9, t0
                  ori          s7, t2, -246
                  bgeu         s2, a7, 328f
                  blt          t5, t1, 327f
                  srl          s10, s1, ra
311:              sltiu        t1, zero, 901
312:              blt          s4, a2, 319f
                  sll          a1, s6, sp
                  auipc        s2, 728722
315:              or           tp, s5, a1
                  addi         t6, a2, 987
                  bgeu         t2, s1, 325f
                  srai         t1, t4, 11
319:              bltu         s11, t3, 325f
                  andi         a1, a3, 1098
                  bne          s10, tp, 340f
                  bgeu         s8, s9, 336f
                  auipc        a6, 994257
                  xor          s1, s7, t6
325:              bgeu         gp, s6, 343f
                  addi         a1, a3, -618
327:              sra          a4, a5, s5
328:              srai         s7, s7, 21
                  auipc        s3, 778804
                  bge          t4, a3, 331f
331:              blt          a3, s8, 341f
                  bltu         tp, s10, 342f
                  xori         a6, tp, -633
                  xor          t4, zero, a2
                  sra          t5, a3, t5
336:              nop
                  srli         t6, s5, 11
                  bgeu         s2, t0, 346f
                  bge          a5, zero, 358f
340:              blt          ra, gp, 353f
341:              xori         ra, ra, -625
342:              andi         ra, a4, -916
343:              or           s9, s1, s2
                  sltu         s11, s4, t0
                  srli         s11, s9, 11
346:              sra          a5, s9, gp
                  bne          s11, a1, 360f
                  slli         s11, s11, 27
                  xor          s2, s2, a4
                  bne          s8, a6, 366f
                  nop
                  andi         s7, t5, 126
353:              bne          zero, s2, 360f
                  bgeu         s11, a4, 364f
                  bltu         t4, s4, 372f
                  blt          t2, s10, 360f
                  blt          s4, t4, 373f
358:              xor          t4, t4, a7
                  xor          a5, t4, gp
360:              bne          t6, s1, 376f
                  and          a4, s10, sp
                  slli         a7, a6, 1
                  sub          a7, s9, s8
364:              addi         s7, a0, -210
                  bgeu         s8, a6, 380f
366:              lui          a6, 116230
                  ori          zero, a3, -1235
                  sltu         t4, t4, tp
                  slli         s10, s2, 22
                  lui          s4, 199656
                  sll          zero, a1, t3
372:              bge          a5, a1, 389f
373:              or           ra, t3, t1
                  sll          s7, a4, a3
                  blt          s4, t3, 388f
376:              lui          t4, 271972
                  bltu         tp, s9, 383f
                  bne          s2, ra, 385f
                  blt          gp, t0, 386f
380:              slti         s11, ra, 1707
                  xori         s3, t5, -95
                  and          a7, s9, t0
383:              or           a0, sp, s5
                  addi         s3, s3, -354
385:              slt          a2, t5, s11
386:              sra          ra, ra, s9
                  blt          sp, s0, 395f
388:              addi         t4, a5, -105
389:              or           s1, s8, s3
                  nop
                  slt          t2, sp, t0
                  or           a3, t3, s10
                  or           s10, s2, s2
                  add          t5, s11, s1
395:              sltu         s2, s8, a6
                  bge          s1, t2, 406f
                  andi         s9, a1, 301
                  sub          a0, s9, a4
                  sra          s2, a6, tp
                  addi         t2, a1, 625
                  bne          ra, t6, 419f
                  andi         gp, a1, 562
                  beq          a6, t0, 419f
                  auipc        a0, 758883
                  srl          tp, a3, tp
406:              slt          s11, s2, s3
                  srl          a6, a2, ra
                  slli         a3, s2, 7
                  slli         t4, tp, 10
                  and          s1, tp, s6
                  and          s8, s1, s3
                  srl          s3, s1, t3
                  lui          s3, 518036
                  bltu         zero, a3, 434f
                  slti         a0, s10, -1578
                  lui          s2, 127375
                  bge          s10, a5, 426f
                  blt          tp, s10, 428f
419:              beq          t2, a4, 427f
                  add          s9, gp, t0
                  sra          a4, s8, tp
                  sub          a7, t3, a6
                  lui          a1, 436077
                  add          sp, sp, a7
                  and          a6, s9, s6
426:              auipc        s0, 953844
427:              bltu         t2, a0, 446f
428:              bge          t1, a0, 434f
                  nop
                  sub          s8, t3, t1
                  sltiu        a3, t5, 459
                  xori         s4, s5, 638
                  or           s2, s11, sp
434:              sll          gp, ra, zero
                  addi         s5, s11, 830
                  sra          a7, gp, a4
                  add          s1, t6, a4
                  srl          a4, gp, t4
                  bgeu         t4, s11, 454f
                  slti         s11, s4, 845
                  or           s9, a5, t2
                  sltiu        tp, s6, 755
                  andi         t4, t2, 598
                  bge          sp, zero, 459f
                  sll          a7, s8, t2
446:              or           s8, t0, gp
                  slt          a4, a4, s8
                  bgeu         gp, s1, 458f
                  slt          s7, s5, tp
                  andi         s9, t3, -247
                  sub          t6, gp, t0
                  sll          a6, s1, s2
                  nop
454:              add          s4, t4, s1
                  bgeu         s2, s3, 465f
                  slt          a4, s5, a4
                  srli         ra, t3, 2
458:              andi         s2, sp, 460
459:              srai         a7, s10, 28
                  srai         t5, gp, 16
                  auipc        s8, 499100
                  sltu         a3, a2, t1
                  slti         t1, ra, -1845
                  and          zero, s9, t4
465:              ori          s11, a5, -854
                  sra          sp, a6, a1
                  add          s9, ra, a1
                  sra          t4, t0, zero
                  sltiu        s3, t3, -1729
                  sltu         a0, t1, s6
                  ori          s5, s7, 1449
                  add          gp, a2, s7
                  ori          t5, s3, 1093
                  lui          t6, 704375
                  and          sp, zero, s2
                  sll          s8, s2, t4
                  ori          a0, tp, 685
                  xor          t5, t3, tp
                  bltu         a7, s9, 495f
                  nop
                  slti         ra, s6, 1835
                  xor          t6, t4, s8
                  slt          a7, ra, s9
                  slti         a1, gp, -1544
                  xori         t1, zero, -1406
                  srli         a7, t6, 12
                  srli         ra, s6, 31
                  sll          s5, ra, s1
                  bne          s10, s7, 496f
                  srl          s0, a7, t2
                  add          s1, t4, s6
                  ori          gp, s3, 1645
                  bne          s11, s5, 509f
                  nop
495:              blt          s3, t3, 514f
496:              slt          s2, a6, s0
                  addi         s0, s6, -108
                  xor          s4, s5, t5
                  bgeu         a3, s4, 507f
                  bltu         t6, s2, 518f
                  ori          s1, s11, -73
                  sub          s2, s10, a7
                  bgeu         t4, t4, 516f
                  ori          s3, s7, 314
                  bge          t3, s2, 519f
                  and          s2, ra, s7
507:              sra          t2, t4, a0
                  srli         ra, s10, 26
509:              sltiu        a2, a3, -1575
                  lui          t5, 377728
                  bgeu         a3, t1, 512f
512:              add          s7, t1, t4
                  or           a4, t0, t0
514:              sltu         t4, tp, sp
                  slli         t5, a7, 23
516:              sltiu        sp, s4, -1235
                  bltu         gp, s4, 521f
518:              slli         t1, s11, 4
519:              sll          t5, gp, a3
                  slt          a6, s10, s0
521:              sltiu        s2, s3, 1467
                  xor          tp, t5, s11
                  bne          a6, tp, 542f
                  sltiu        s10, a3, 170
                  beq          a3, t3, 538f
                  and          s2, a5, s5
                  auipc        s10, 1035763
                  or           sp, a7, s11
                  sub          a5, s7, a7
                  blt          s1, gp, 546f
                  sub          s0, a2, gp
                  ori          a0, s9, 1416
                  bge          s8, sp, 551f
                  bne          sp, t5, 553f
                  xor          s11, a5, a3
                  addi         a4, t5, 1389
                  ori          s5, s6, 128
538:              bltu         a5, t6, 547f
                  and          gp, s5, t2
                  addi         s4, t6, -1321
                  srli         t4, a1, 13
542:              or           s3, a6, t0
                  addi         s10, s9, 39
                  bgeu         s7, a1, 554f
                  xor          s8, a3, s10
546:              lui          a4, 157101
547:              bne          s1, t6, 560f
                  sltiu        a6, s8, -1561
                  or           a4, a0, t3
                  and          a4, gp, s3
551:              blt          t2, t3, 552f
                  addi         a0, zero, -3 #init loop 0 counter
                  and          a2, s5, s11
                  slti         s11, s5, 190
                  addi         s9, zero, -19 #init loop 0 limit
                  add          a7, s4, a7
                  lui          s8, 1009179
                  sll          a5, a2, t0
                  sll          s8, gp, t6
                  slli         sp, s10, 30
sub_4_9_0_t:      ori          t4, s4, 1414
                  slli         s10, s0, 4
                  nop
                  and          t2, s7, tp
                  and          t2, a7, s9
                  auipc        s8, 48
                  sltu         t1, sp, s8
                  auipc        gp, 560868
                  sra          ra, a1, s7
                  sub          s10, t5, a1
                  addi         a5, s2, 1018
                  sra          t2, a5, t4
                  addi         a0, a0, -8 #update loop 0 counter
                  or           sp, t4, s5
                  ori          s0, s0, 1091
                  ori          a6, a1, -41
                  lui          tp, 907862
                  ori          s2, ra, 531
                  bge          a0, s9, sub_4_9_0_t #branch for loop 0
                  sra          a5, t5, ra
552:              or           zero, s11, a1
553:              sra          s3, t2, zero
554:              bgeu         t1, a0, 568f
                  xor          s5, t3, t3
                  bne          t3, a6, 576f
                  slti         t5, s1, -198
                  bne          gp, ra, 564f
                  sltu         a1, a0, s5
560:              addi         ra, ra, -102
                  slti         zero, a4, 1521
                  bltu         a4, a3, 569f
                  nop
564:              blt          s5, s7, 580f
                  add          s4, a1, s4
                  and          t1, s6, a6
                  bltu         a0, a3, 582f
568:              bne          s5, a7, 578f
569:              andi         s1, tp, -1055
                  nop
                  sub          t4, a6, t5
                  add          a7, gp, a2
                  xori         t5, s9, -935
                  srl          a6, t5, a4
                  srl          gp, t3, s3
576:              sra          s0, a6, a2
                  blt          s0, zero, 591f
578:              sra          tp, a1, s11
                  sub          s5, s8, s8
580:              auipc        s10, 156412
                  bgeu         t5, s3, 591f
582:              add          s11, s6, a1
                  slli         ra, s4, 1
                  xori         s10, a2, 552
                  andi         a5, zero, 326
                  sltu         a2, s3, s6
                  and          s7, s8, s3
                  srai         t6, a1, 23
                  or           ra, t5, s7
                  bne          t6, s7, 591f
591:              addi         s11, t6, -296
                  and          zero, t3, s5
                  slti         s4, a1, 1255
                  lui          s3, 809017
                  lw           t4, 4(t3)
                  sra          a6, t0, a3
                  addi         t3, t3, 48
                  addi         ra, t2, 1119
                  slti         ra, a5, -778
                  sltiu        tp, s8, 1106
851:              addi x18, x29, 1
851:              jalr x18, x18, 0
sub_2:            xor          ra, t5, a3
                  srl          s2, s1, a6
                  bge          ra, a7, sub_2_stack_p
                  slli         s10, a1, 15
sub_2_stack_p:    addi         t3, t3, -28
                  sw           t4, 4(t3)
                  addi         t2, s0, -209
                  sll          s4, a2, gp
                  blt          zero, t5, 9f
                  sub          t5, s2, a1
                  bge          a1, a2, 10f
                  xori         a7, t2, 643
                  bne          s11, zero, 18f
                  xor          s8, t3, s4
                  sra          s7, t5, s0
                  bgeu         s3, t3, 16f
9:                slti         s3, t6, 327
10:               xor          ra, sp, s5
                  sll          s2, t6, t6
                  or           ra, s5, s11
                  add          s3, ra, s9
                  ori          t6, s10, 962
                  bne          s1, s5, 21f
16:               andi         a6, s7, -508
                  sltiu        s10, s9, 1732
18:               beq          t2, t1, 27f
                  xor          ra, t3, a3
                  sub          t6, s6, t6
21:               nop
                  xori         t6, a1, 297
                  sub          s1, zero, sp
                  bgeu         t4, a1, 37f
                  xor          zero, a7, s2
                  nop
27:               and          a6, t2, a1
                  lui          s4, 957646
                  sra          tp, s2, tp
                  sltu         t4, a3, t0
                  slti         a3, s8, -72
                  sltu         sp, a5, sp
                  andi         s5, tp, 1289
                  slti         s3, a3, -208
                  or           t6, s3, s2
                  andi         s3, a0, 141
37:               bgeu         a7, a7, 52f
                  bge          s1, zero, 54f
                  blt          s9, s0, 40f
40:               sltu         s10, tp, s5
                  or           s11, s7, s6
                  bgeu         s6, s3, 48f
                  bne          s10, a1, 58f
                  and          s10, s8, s4
                  sltu         s2, s8, a2
                  add          a4, s6, a5
                  slt          tp, a1, s9
48:               addi         s0, s4, -1800
                  nop
                  sll          t5, a6, sp
                  and          a6, t3, s8
52:               srai         s7, t5, 17
                  sltiu        t1, t6, 175
54:               nop
                  bltu         t0, a5, 66f
                  slt          a5, t1, s1
                  add          s2, t5, a3
58:               lui          s9, 895079
                  bltu         s4, t4, 73f
                  beq          s1, s7, 65f
                  or           a1, a2, t6
                  slti         s9, s10, 213
                  bltu         sp, gp, 78f
                  slli         t5, tp, 5
65:               ori          s9, tp, -1315
66:               srli         t1, s2, 15
                  sltiu        a1, s10, -94
                  xori         tp, s3, -578
                  srai         t2, s3, 2
                  srl          s11, t6, zero
                  slti         a4, t3, -711
                  sltu         s4, t4, s4
73:               slli         a4, gp, 30
                  addi         s3, s11, 99
                  sll          t1, a0, t3
                  beq          sp, a7, 88f
                  ori          gp, s8, -1928
78:               sra          a1, a3, gp
                  addi         s11, s2, 176
                  addi         s11, zero, 8 #init loop 1 counter
                  addi         t4, zero, 8 #init loop 1 limit
sub_2_0_1_t:      lui          s5, 405454
                  xori         s9, ra, 1824
                  addi         s11, s11, -5 #update loop 1 counter
                  addi         a0, zero, 6 #init loop 0 counter
                  auipc        t1, 163828
                  addi         a1, zero, -13 #init loop 0 limit
                  slt          s0, a2, s9
sub_2_0_0_t:      or           t1, a2, s9
                  addi         a0, a0, -4 #update loop 0 counter
                  bge          a0, a1, sub_2_0_0_t #branch for loop 0
                  bgeu         s11, t4, sub_2_0_1_t #branch for loop 1
                  auipc        a6, 635626
                  slti         s5, t5, -518
                  slli         s3, zero, 31
                  bgeu         s9, a2, 88f
                  blt          s7, a2, 88f
                  srli         a6, a0, 28
                  bge          s8, t0, 88f
                  xor          t1, t3, t5
                  xori         zero, t5, -295
88:               slt          a4, t6, a7
                  xor          zero, a7, a4
                  lw           t4, 4(t3)
                  slti         s11, t3, -779
                  addi         t3, t3, 28
                  sltu         a6, a0, s1
115:              addi x4, x29, 0
115:              jalr x4, x4, 0
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
                  add x5, x28, zero
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x27, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x27, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x27, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x27, x4, ecall_handler
                  li x4, 0x1
                  beq x27, x4, instr_fault_handler
                  li x4, 0x5
                  beq x27, x4, load_fault_handler
                  li x4, 0x7
                  beq x27, x4, store_fault_handler
                  li x4, 0xc
                  beq x27, x4, pt_fault_handler
                  li x4, 0xd
                  beq x27, x4, pt_fault_handler
                  li x4, 0xf
                  beq x27, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x28, x5, zero
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
                  add x28, x5, zero
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
                  add x28, x5, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x28, x5, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x28, x5, zero
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
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x28, x5, zero
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
