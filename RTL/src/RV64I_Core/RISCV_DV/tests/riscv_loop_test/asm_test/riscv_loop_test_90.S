.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
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
                  li x0, 0x7
                  li x1, 0xf083dffa
                  li x2, 0x0
                  li x3, 0x1
                  li x4, 0xe
                  li x5, 0x80000000
                  li x6, 0xf4de7955
                  li x7, 0x80000000
                  li x8, 0x5191ee19
                  li x9, 0xf70e41fc
                  li x10, 0x1
                  li x11, 0xf
                  li x12, 0xf71c92bd
                  li x13, 0x94fa673b
                  li x14, 0xf6900399
                  li x15, 0x80000000
                  li x16, 0xf8e0e75b
                  li x18, 0x5a09f621
                  li x19, 0x9efb2a77
                  li x20, 0xb
                  li x21, 0x80000000
                  li x22, 0xa
                  li x23, 0x773437d
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x29, 0x1
                  li x30, 0xfc7ec8d9
                  li x31, 0x80000000
                  la x28, user_stack_end
main:             auipc        s0, 430488
                  or           s5, t3, a6
                  and          gp, sp, gp
                  la           ra, sub_1
                  slti         a4, s7, 117
                  addi         ra, ra, 953
                  slt          s0, a2, s6
                  lui          a2, 329138
                  add          s9, a6, s1
                  xori         tp, s6, 1147
                  addi         a4, t1, -452
main_j2:          jalr         ra, ra, -953 #jump main -> sub_1
                  addi         t1, zero, 7 #init loop 0 counter
                  and          s9, sp, tp
                  addi         s3, s4, -1217
                  andi         gp, s10, 1750
                  slti         s11, t6, 1457
                  andi         a3, a2, 1468
                  addi         a5, zero, 6 #init loop 0 limit
                  sub          tp, gp, a7
main_5_0_t:       sltiu        ra, s9, -232
                  ori          s11, t3, -1582
                  or           a6, a5, a0
                  auipc        a3, 503340
                  auipc        a1, 351325
                  lui          s0, 162804
                  addi         t1, t1, -5 #update loop 0 counter
                  sra          t6, t1, t1
                  ori          t4, t3, -802
                  add          t4, zero, gp
                  auipc        a1, 792372
                  slli         t5, a1, 14
                  srl          t0, s2, ra
                  slti         a6, sp, 1723
                  srli         a1, tp, 9
                  sltiu        s0, a0, 635
                  sra          a0, sp, sp
                  andi         ra, t2, 700
                  sra          s0, t1, s1
                  bgeu         t1, a5, main_5_0_t #branch for loop 0
                  andi         ra, t0, -1738
                  addi         s1, zero, 9 #init loop 1 counter
                  xor          a6, gp, tp
                  and          s11, s6, t1
                  sltu         t2, a0, a2
                  addi         t4, zero, 14 #init loop 1 limit
                  slti         s8, zero, -85
                  addi         t0, a4, -523
                  sra          s10, s6, gp
main_2_1_t:       andi         gp, s10, -1910
                  slt          a4, s11, gp
                  addi         s1, s1, 4 #update loop 1 counter
                  or           t6, s8, t0
                  addi         a3, zero, -2 #init loop 0 counter
                  slt          t0, s3, zero
                  srai         zero, s1, 2
                  addi         s7, zero, -19 #init loop 0 limit
                  slti         t0, a1, 1105
                  xori         gp, a3, 1087
                  xori         s9, t2, 2042
                  sll          s3, t0, a7
                  srai         s11, a5, 29
                  sll          s10, t2, t5
                  xori         s0, t1, 1448
                  sltu         tp, s9, a1
main_2_0_t:       andi         s6, a3, 1831
                  addi         s4, s9, 34
                  addi         a3, a3, -6 #update loop 0 counter
                  bge          a3, s7, main_2_0_t #branch for loop 0
                  slli         s2, s3, 3
                  ori          a4, t6, -1721
                  slt          a5, s8, s11
                  bltu         s1, t4, main_2_1_t #branch for loop 1
                  sltiu        a1, s3, -1405
                  addi         s4, zero, -6 #init loop 0 counter
                  xor          s9, s10, a3
                  sltiu        s3, a7, -460
                  sltu         s6, gp, a4
                  ori          a2, t6, -648
                  slli         a0, t4, 25
                  ori          a1, s0, -529
                  sub          s11, a2, s9
                  slti         s11, a4, 74
                  addi         a3, zero, 1 #init loop 0 limit
                  sll          t1, a0, t6
                  and          ra, t0, a0
                  xor          s3, t3, gp
                  or           t5, a7, s4
                  sra          s8, gp, s10
                  slli         t6, s9, 21
                  sra          t4, s4, s0
                  sltiu        gp, s4, 775
main_1_0_t:       addi         ra, s2, -1762
                  auipc        s1, 356003
                  or           t1, gp, s7
                  sub          s2, zero, s0
                  srli         ra, sp, 5
                  or           t1, zero, sp
                  addi         s4, s4, 4 #update loop 0 counter
                  slli         a0, a2, 30
                  sltiu        t1, a2, 1167
                  blt          s4, a3, main_1_0_t #branch for loop 0
                  slli         a0, s9, 26
                  addi         s7, zero, 5 #init loop 1 counter
                  addi         a4, zero, 3 #init loop 1 limit
main_4_1_t:       or           a2, a4, ra
                  addi         s7, s7, -4 #update loop 1 counter
                  addi         t1, zero, -2 #init loop 0 counter
                  addi         s5, zero, -3 #init loop 0 limit
main_4_0_t:       addi         s11, a0, 1429
                  addi         t1, t1, -1 #update loop 0 counter
                  bge          t1, s5, main_4_0_t #branch for loop 0
                  bge          s7, a4, main_4_1_t #branch for loop 1
                  andi         s4, s4, 1683
                  addi         t0, zero, 6 #init loop 1 counter
                  addi         s2, zero, 8 #init loop 1 limit
main_3_1_t:       slti         t5, a5, 849
                  addi         t0, t0, 1 #update loop 1 counter
                  addi         s3, sp, -1812
                  slli         zero, a7, 19
                  or           a1, s8, a7
                  sltu         t1, s9, a7
                  sub          s11, a0, s10
                  addi         gp, zero, 2 #init loop 0 counter
                  slli         a1, s4, 0
                  or           a2, a7, s5
                  sll          a2, tp, s1
                  addi         a0, zero, 9 #init loop 0 limit
                  lui          s11, 215571
                  nop
                  sll          a4, s4, s3
main_3_0_t:       sltu         a5, a5, s1
                  sub          t2, a5, t2
                  addi         gp, gp, 1 #update loop 0 counter
                  blt          gp, a0, main_3_0_t #branch for loop 0
                  ori          a1, t6, -540
                  blt          t0, s2, main_3_1_t #branch for loop 1
                  lui          a1, 726397
                  addi         s3, zero, 3 #init loop 0 counter
                  sltiu        s4, s4, 1268
                  addi         a1, zero, 14 #init loop 0 limit
                  srai         zero, t5, 2
main_0_0_t:       sltiu        s7, t1, 1728
                  addi         s3, s3, 4 #update loop 0 counter
                  blt          s3, a1, main_0_0_t #branch for loop 0
                  srl          s11, zero, t6
                  or           tp, t0, zero
                  lui          s10, 527349
                  lui          s1, 631779
                  nop
                  sra          ra, s10, s9
                  sltiu        s1, a6, -1130
                  bltu         t4, t3, 12f
                  sltiu        t2, t4, -943
                  xor          t2, sp, s3
                  sltu         a3, a0, s7
                  sltu         s0, ra, s1
                  auipc        a2, 371045
12:               slt          a0, t6, s7
                  blt          a2, s11, 22f
                  slt          s10, a6, a4
                  bltu         a7, s7, 32f
                  bgeu         a3, t3, 17f
17:               srli         ra, a3, 28
                  add          s5, a1, a3
                  sub          s6, zero, a2
                  beq          a1, sp, 27f
                  slli         t0, s8, 9
22:               addi         s10, s11, 67
                  sltiu        t0, s7, -1256
                  xori         a4, s3, 1665
                  bgeu         t3, t6, 30f
                  xor          a3, s11, sp
27:               xori         zero, a2, 435
                  bne          s10, a0, 47f
                  sll          t4, t4, a2
30:               andi         t2, t2, 1875
                  and          s6, sp, s5
32:               beq          a5, a5, 46f
                  or           s10, s11, zero
                  bgeu         s2, sp, 38f
                  srai         a5, gp, 24
                  xori         s1, t5, -1750
                  nop
38:               srai         s1, s2, 29
                  or           t2, gp, s6
                  bltu         ra, s10, 57f
                  srli         gp, s4, 20
                  sub          t0, a7, a3
                  ori          s1, s7, 11
                  srli         s11, zero, 16
                  bne          s4, t6, 46f
46:               addi         a2, s4, 644
47:               slt          tp, s10, t5
                  srli         gp, t0, 13
                  slti         s4, a2, -1138
                  bne          s10, s10, 69f
                  lui          t0, 142994
                  addi         t5, a0, -553
                  auipc        t5, 771194
                  lui          t1, 211293
                  sll          s0, a5, s6
                  sltu         a0, s6, t0
57:               sltiu        s5, s11, 1540
                  slt          s10, ra, tp
                  beq          tp, a6, 67f
                  sltu         zero, s4, s6
                  sra          s6, t1, a2
                  add          a5, s8, sp
                  or           t6, t2, s4
                  sltu         s3, a5, t6
                  srl          s9, a6, s8
                  blt          a7, s8, 68f
67:               xori         gp, a4, 493
68:               sltiu        a5, t1, -1373
69:               ori          gp, tp, 1699
                  bge          zero, s6, 89f
                  addi         a1, s8, 398
                  srl          t2, t1, a6
                  sltiu        s6, t5, 969
                  slt          s3, s5, a2
                  bgeu         s7, zero, 92f
                  sra          gp, gp, a6
                  blt          s7, s9, 88f
                  bgeu         s6, s3, 95f
                  xor          t1, s3, t5
                  xor          t6, s11, a0
                  lui          s3, 841349
                  bltu         gp, t2, 91f
                  srli         t6, t3, 1
                  sltiu        t2, t1, 732
                  ori          s5, gp, 743
                  addi         s2, a6, -1302
                  slt          t6, a2, a0
88:               beq          ra, s0, 102f
89:               nop
                  andi         ra, s6, -892
91:               ori          a2, sp, 1572
92:               or           s7, ra, a2
                  addi         s10, t1, 824
                  bltu         a7, s0, 95f
95:               add          s1, s9, t3
                  bne          s0, s3, 104f
                  slti         s8, t2, -1927
                  beq          s0, t2, 111f
                  nop
                  beq          t6, gp, 108f
                  srai         s3, gp, 4
102:              srli         s3, t2, 6
                  or           s5, sp, a2
104:              sub          s0, t6, s1
                  ori          s1, sp, -1854
                  addi         s0, ra, 1749
                  slli         s7, sp, 24
108:              xori         s6, a3, -1089
                  auipc        gp, 767606
                  nop
111:              sltiu        s9, a7, -515
                  xor          a3, a6, a1
                  lui          s1, 272106
                  andi         t1, s0, 1603
                  bltu         t6, sp, 128f
                  srl          a6, s7, s6
                  srl          gp, s10, t5
                  ori          s8, sp, 1635
                  bltu         t6, s11, 129f
                  beq          sp, s11, 128f
                  srai         a2, t4, 11
                  sltiu        a3, s11, 1101
                  bge          t3, tp, 124f
124:              and          s10, s8, t6
                  blt          t1, s2, 141f
                  addi         s11, s0, 903
                  xori         t2, s10, 320
128:              sltu         t4, t5, t6
129:              or           a6, s6, a1
                  auipc        t4, 543452
                  bltu         a0, t6, 147f
                  and          zero, s2, s7
                  and          s8, s0, t0
                  slt          s7, s3, s5
                  sltu         s11, t3, ra
                  xor          t0, a0, s9
                  slt          zero, t4, t4
                  sra          t2, zero, a3
                  sltu         a3, s10, s7
                  sltiu        a2, s6, -622
141:              add          t4, s10, t0
                  srai         s7, zero, 20
                  sra          t2, a7, t0
                  beq          s11, t6, 153f
                  nop
                  srli         s4, s9, 1
147:              beq          a5, a2, 154f
                  auipc        a4, 829242
                  nop
                  or           s11, a1, t2
                  blt          a1, a4, 152f
152:              auipc        a5, 998377
153:              bltu         s11, a6, 166f
154:              bgeu         zero, a5, 155f
155:              addi         a6, t3, -1070
                  auipc        s4, 953709
                  bge          t3, a5, 176f
                  auipc        tp, 428980
                  lui          a0, 257895
                  bltu         t2, a2, 169f
                  andi         s9, t2, -814
                  blt          a5, t3, 170f
                  xori         a3, s1, -882
                  bge          a2, a6, 165f
165:              beq          t5, t1, 179f
166:              slli         s6, a6, 1
                  blt          gp, a3, 169f
                  andi         ra, s2, 201
169:              srai         t5, t6, 1
170:              auipc        t0, 72213
                  slli         s8, t5, 18
                  sltiu        a3, s7, 824
                  or           a0, t5, a1
                  andi         s11, s9, -1834
                  xor          tp, a5, s10
176:              blt          s10, s8, 193f
                  ori          tp, a6, 116
                  ori          a6, a3, -513
179:              slli         tp, ra, 29
                  or           t1, s8, s11
                  auipc        gp, 315548
                  sub          s9, t3, gp
                  bltu         a5, a0, 191f
                  sltu         gp, s1, s10
                  sub          s11, t6, t0
                  bge          a0, gp, 190f
                  and          ra, t5, t4
                  blt          s8, sp, 202f
                  or           t0, t0, sp
190:              srli         a3, zero, 22
191:              xori         t0, a5, 1739
                  xori         a3, t1, 1472
193:              sub          t0, s5, t1
                  beq          s0, a6, 210f
                  slti         t5, a1, 252
                  blt          s8, a0, 215f
                  ori          s5, t4, 907
                  srl          s7, tp, a6
                  sra          s6, gp, s3
                  or           ra, gp, s0
                  sub          a1, t0, a6
202:              lui          s10, 1013224
                  bne          s11, s2, 216f
                  and          s4, a2, s8
                  nop
                  ori          t6, gp, -1844
                  beq          s2, s8, 224f
                  srai         s5, a2, 0
                  blt          t0, sp, 228f
210:              add          a1, a2, t6
                  slli         a2, t4, 21
                  sltiu        s7, s6, 894
                  beq          s7, t3, 223f
                  bne          s8, a1, 225f
215:              and          gp, tp, s11
216:              srli         gp, s7, 13
                  srli         a5, a0, 6
                  slli         tp, s0, 11
                  or           gp, s1, zero
                  lui          a3, 441493
                  and          a5, s5, s10
                  lui          ra, 183787
223:              ori          a5, ra, 1867
224:              srl          s2, s2, t6
225:              add          s11, a4, zero
                  andi         a1, a6, 2047
                  slti         a5, a6, 314
228:              slti         s7, gp, -1143
                  slli         s8, tp, 2
                  slt          t1, t6, t6
                  sll          s3, t3, t2
                  bgeu         t0, a0, 238f
                  sll          a3, s11, s2
                  sub          s4, s2, s3
                  or           gp, a5, t3
                  addi         s10, t0, 341
                  sltiu        s2, s8, 436
238:              sll          s1, s8, a5
                  xor          a1, tp, s10
                  slti         a4, ra, 692
                  sltu         t0, t6, s1
                  lui          s8, 948320
                  bltu         a2, tp, 259f
                  xori         t5, s9, -2023
                  bltu         a5, t6, 246f
246:              xori         a4, s2, 1766
                  lui          a3, 656110
                  slt          s2, t0, a0
                  and          t5, t3, a4
                  xori         t4, t2, 679
                  la           a4, sub_1
                  slti         s1, tp, -927
                  or           s7, s7, ra
                  sltiu        a5, t0, -1268
                  addi         a3, s5, 1896
                  add          zero, s4, s10
                  slt          a0, a4, sp
                  xor          s3, ra, a2
                  addi         a4, a4, -706
                  bge          s4, s5, main_j1 #branch to jump instr
                  slli         s3, t2, 30
                  srl          s6, s0, s1
main_j1:          jalr         ra, a4, 706 #jump main -> sub_1
                  sltu         zero, a0, t4
                  bge          a2, s3, 256f
                  and          gp, t1, s6
                  slti         a1, t4, -243
                  xori         zero, a1, 959
                  add          zero, t6, a4
256:              sra          s6, tp, a5
                  xor          s11, a4, s1
                  auipc        t0, 857021
259:              andi         a3, t2, 270
                  bne          s0, s0, 268f
                  xor          s7, t6, a3
                  srl          s5, zero, t6
                  blt          ra, s1, 280f
                  and          t0, ra, zero
                  slli         t0, s4, 30
                  sltu         s3, ra, s6
                  nop
268:              sub          t0, s1, s3
                  andi         a1, sp, -478
                  blt          s6, s10, 278f
                  andi         s2, zero, -1847
                  addi         s10, a2, 774
                  bne          t3, a3, 290f
                  sub          s5, a4, a2
                  bne          s10, s2, 285f
                  beq          t0, t0, 282f
                  bge          t1, a4, 278f
278:              slti         ra, t3, 1748
                  slt          a2, zero, t5
280:              xor          a0, t6, zero
                  sra          s2, s3, t5
282:              bgeu         s1, gp, 301f
                  sltu         t0, s3, gp
                  sltiu        s7, ra, 1153
285:              ori          s8, s2, 542
                  sub          s8, s5, t3
                  bltu         a5, a7, 303f
                  srl          gp, s11, t6
                  slt          s5, sp, t1
290:              bltu         s1, a6, 306f
                  slli         t5, s8, 16
                  srli         a6, gp, 23
                  or           s9, gp, s3
                  bne          s7, t1, 306f
                  sub          s0, a1, s6
                  bne          s4, s3, 297f
297:              sltu         zero, s4, t2
                  slti         tp, s7, 1698
                  bge          a0, sp, 306f
                  sltu         a3, zero, t6
301:              andi         gp, a0, 669
                  slt          s11, a1, sp
303:              bne          a7, t0, 306f
                  sra          a4, t1, t0
                  auipc        t0, 334634
306:              nop
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bne          a1, zero, sub_1_stack_p
                  slt          s5, sp, s8
sub_1_stack_p:    addi         t3, t3, -60
                  sw           ra, 4(t3)
                  sra          s11, tp, zero
                  srli         t4, t2, 21
                  srai         s8, t1, 27
                  sra          tp, s10, a3
                  auipc        s7, 995200
                  ori          t0, zero, 1285
                  xor          a4, s4, a2
                  beq          s8, t5, sub_1_j3 #branch to jump instr
                  srl          t1, s0, s11
                  lui          a6, 207159
                  add          gp, a7, s2
                  add          s11, a2, t6
                  srai         s3, a6, 15
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  sltu         s5, ra, ra
                  la           t1, sub_5
                  sll          s5, zero, t3
                  addi         gp, tp, -152
                  and          tp, s0, s7
                  addi         t1, t1, 714
                  sltiu        s10, t3, -501
                  srli         t2, s10, 25
sub_1_j4:         jalr         ra, t1, -713 #jump sub_1 -> sub_5
                  lui          t2, 969322
                  la           t4, sub_4
                  auipc        s3, 328904
                  addi         t4, t4, 550
                  or           gp, a3, s11
                  srli         a0, s3, 31
                  slt          s3, a7, zero
                  xori         s10, ra, -681
                  bltu         s10, gp, sub_1_j5 #branch to jump instr
                  or           s8, zero, s8
                  srl          s6, s11, s3
sub_1_j5:         jalr         ra, t4, -549 #jump sub_1 -> sub_4
                  srli         s6, s6, 7
                  lui          s11, 579499
                  slli         a2, s9, 9
                  sub          t6, s0, s3
                  slli         s1, t2, 8
sub_1_j6:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  sra          s3, t1, s9
                  sll          t5, s10, s10
                  lui          s2, 589447
                  nop
                  slti         t6, a0, -251
                  slti         a5, s5, -61
                  bltu         s2, s7, 19f
                  slti         s11, s2, -1318
                  or           s1, s7, a2
                  nop
                  slli         gp, t3, 12
                  sll          s7, t0, a2
                  sll          s0, s3, s2
                  or           t5, a7, a1
                  sltiu        s11, s3, -1633
                  srai         a3, tp, 13
                  andi         t2, t3, -2024
                  addi         s1, t6, 1997
                  slli         t2, t1, 1
19:               srai         t1, s10, 22
                  lui          zero, 568047
                  lw           ra, 4(t3)
                  or           zero, a0, s3
                  srli         a2, s1, 9
                  sltu         s10, s2, t6
                  nop
                  addi         t3, t3, 60
                  or           t2, t1, t2
                  auipc        s2, 303167
                  slli         gp, ra, 7
75:               addi x24, x1, 0
75:               jalr x24, x24, 0
sub_4:            slti         s10, s9, 831
                  addi         t3, t3, -12
                  xor          t0, t3, a2
                  auipc        s5, 35257
                  sw           ra, 4(t3)
                  or           zero, s11, t0
                  sra          a4, a3, ra
                  xori         a3, s8, 1129
                  bltu         a5, a7, 12f
                  xori         t4, t4, -1690
                  srli         a1, s11, 20
                  auipc        s0, 996308
                  ori          t6, t5, 161
                  srli         a1, a0, 8
                  bne          s2, t6, 12f
                  xori         s10, t0, -2020
                  sll          t5, s6, tp
                  and          s10, s9, sp
12:               lui          s4, 29796
                  sub          a2, s9, tp
                  or           t2, s4, t4
                  sltu         gp, s7, a7
                  lw           ra, 4(t3)
                  xor          s0, a3, t6
                  srai         a4, a7, 25
                  add          a6, t4, a6
                  addi         t3, t3, 12
                  ori          s9, s7, -483
28:               addi x11, x1, 1
28:               jalr x11, x11, 0
sub_5:            addi         t3, t3, -20
                  addi         a1, s7, -912
                  srli         a6, s1, 2
                  srai         t2, s0, 15
                  add          t1, s8, ra
                  sw           ra, 4(t3)
                  andi         s10, t6, 842
                  sltu         s5, t0, a5
                  addi         t2, zero, 1 #init loop 1 counter
                  slti         t1, a0, 1647
                  sltu         a3, t1, t0
                  addi         s9, zero, 19 #init loop 1 limit
                  slli         s2, tp, 27
                  slli         s8, s8, 30
sub_5_28_1_t:     slt          s8, t1, s1
                  addi         t2, t2, 8 #update loop 1 counter
                  addi         s5, zero, 8 #init loop 0 counter
                  addi         s1, zero, 12 #init loop 0 limit
                  sltiu        t0, s3, -322
sub_5_28_0_t:     sltiu        a2, s7, -1674
                  addi         s5, s5, 7 #update loop 0 counter
                  ori          a4, s10, -1941
                  blt          s5, s1, sub_5_28_0_t #branch for loop 0
                  blt          t2, s9, sub_5_28_1_t #branch for loop 1
                  addi         tp, sp, -1635
                  addi         s8, zero, 3 #init loop 1 counter
                  xor          s6, s7, zero
                  addi         a6, s7, 1094
                  addi         s10, zero, 3 #init loop 1 limit
sub_5_2_1_t:      and          t5, sp, s9
                  srli         s4, s8, 24
                  nop
                  sra          a6, a6, s7
                  srl          t0, t2, zero
                  addi         s8, s8, -1 #update loop 1 counter
                  slt          t0, a0, s5
                  addi         s5, zero, 4 #init loop 0 counter
                  andi         s1, s10, -1079
                  nop
                  sra          a0, zero, tp
                  slli         a0, t1, 30
                  addi         gp, zero, -11 #init loop 0 limit
sub_5_2_0_t:      xori         s6, s0, -1266
                  addi         s5, s5, -5 #update loop 0 counter
                  auipc        s2, 197554
                  or           t4, s3, t6
                  beq          s5, gp, sub_5_2_0_t #branch for loop 0
                  slt          t1, t1, s10
                  bgeu         s8, s10, sub_5_2_1_t #branch for loop 1
                  lui          a0, 1003156
                  addi         s9, zero, 4 #init loop 0 counter
                  slli         a0, a4, 18
                  auipc        tp, 717090
                  addi         gp, zero, -12 #init loop 0 limit
                  xori         tp, a1, -181
                  sltiu        t6, sp, -1958
                  add          a0, a4, s2
                  lui          a5, 590043
                  slti         s10, s5, 1650
                  andi         a2, t6, 1673
                  xor          tp, tp, t0
                  add          a2, a2, s4
sub_5_14_0_t:     xor          a0, t5, s10
                  and          a2, gp, s7
                  sll          tp, s2, gp
                  addi         s9, s9, -1 #update loop 0 counter
                  auipc        t2, 113506
                  andi         s3, a2, -445
                  addi         s8, s4, -967
                  slti         a3, a4, 1317
                  nop
                  xori         a2, tp, 873
                  bne          s9, gp, sub_5_14_0_t #branch for loop 0
                  sltu         a5, s7, s3
                  addi         t2, zero, 2 #init loop 1 counter
                  addi         gp, zero, 5 #init loop 1 limit
                  sra          a0, t0, s11
sub_5_21_1_t:     nop
                  lui          t0, 508519
                  addi         t2, t2, 10 #update loop 1 counter
                  addi         s7, zero, -5 #init loop 0 counter
                  add          t0, t3, a2
                  sra          s3, t4, a5
                  sra          s9, s9, sp
                  addi         t1, zero, -9 #init loop 0 limit
                  slt          s2, a4, t3
sub_5_21_0_t:     add          a4, a7, sp
                  andi         a3, a4, 248
                  auipc        t5, 91567
                  addi         s7, s7, -10 #update loop 0 counter
                  bge          s7, t1, sub_5_21_0_t #branch for loop 0
                  slli         zero, t1, 15
                  lui          a0, 315845
                  srli         t5, s0, 15
                  bltu         t2, gp, sub_5_21_1_t #branch for loop 1
                  or           s8, t6, ra
                  addi         a2, zero, 6 #init loop 0 counter
                  xor          t1, t3, s9
                  andi         s10, t3, -1321
                  addi         a5, zero, 4 #init loop 0 limit
                  sra          s2, s0, a1
sub_5_0_0_t:      sub          s9, zero, a0
                  addi         a2, a2, -1 #update loop 0 counter
                  bgeu         a2, a5, sub_5_0_0_t #branch for loop 0
                  and          zero, s2, s8
                  addi         t1, zero, 10 #init loop 0 counter
                  sll          ra, s8, a1
                  addi         t5, zero, 9 #init loop 0 limit
                  srai         s6, a6, 8
                  nop
sub_5_16_0_t:     addi         a6, s10, -550
                  slli         t4, s1, 0
                  and          a1, t4, s5
                  sub          a2, a1, t0
                  addi         t1, t1, -3 #update loop 0 counter
                  srli         s4, t0, 3
                  ori          zero, a3, 1954
                  srl          a1, s11, t1
                  bgeu         t1, t5, sub_5_16_0_t #branch for loop 0
                  sll          s0, s10, s6
                  addi         a2, zero, 1 #init loop 0 counter
                  sra          a4, a1, t6
                  slt          a1, s3, a1
                  auipc        t1, 578512
                  and          s11, s7, s1
                  sltiu        zero, sp, 1033
                  andi         a6, s10, -820
                  sll          zero, s9, tp
                  and          gp, s0, s5
                  addi         s4, zero, 11 #init loop 0 limit
                  srai         s11, s4, 7
sub_5_22_0_t:     slt          zero, sp, ra
                  and          t6, zero, t5
                  sub          a5, zero, a3
                  addi         a2, a2, 10 #update loop 0 counter
                  xori         s8, t0, -528
                  slt          s9, a2, a2
                  slt          a0, s3, t3
                  bne          a2, s4, sub_5_22_0_t #branch for loop 0
                  sub          s2, s4, gp
                  addi         s0, zero, 5 #init loop 1 counter
                  or           zero, s5, s3
                  slli         t1, s7, 6
                  lui          s7, 277830
                  addi         a4, zero, 17 #init loop 1 limit
sub_5_13_1_t:     sltiu        s7, s6, -824
                  srai         a2, s0, 9
                  sltu         gp, a6, a3
                  addi         s0, s0, 9 #update loop 1 counter
                  addi         s8, zero, 1 #init loop 0 counter
                  slli         t0, gp, 9
                  andi         a0, tp, -886
                  srl          t0, a4, zero
                  sltu         t5, s1, s1
                  add          s5, s7, s11
                  sltu         s3, t1, a5
                  nop
                  xori         s5, s4, -285
                  addi         a6, zero, 9 #init loop 0 limit
                  lui          s2, 333757
                  addi         tp, s6, -1591
sub_5_13_0_t:     sub          zero, s0, a2
                  sub          t0, sp, t1
                  addi         s8, s8, 4 #update loop 0 counter
                  slt          s10, s5, ra
                  bne          s8, a6, sub_5_13_0_t #branch for loop 0
                  slt          a5, s2, tp
                  addi         zero, s1, -1354
                  add          t1, gp, t2
                  bltu         s0, a4, sub_5_13_1_t #branch for loop 1
                  or           t4, s3, t2
                  addi         gp, zero, -9 #init loop 0 counter
                  sll          a2, s5, s1
                  slti         s1, t6, -576
                  and          zero, s6, a4
                  addi         a0, zero, 11 #init loop 0 limit
sub_5_3_0_t:      lui          a5, 1045599
                  andi         t5, a3, -1850
                  srli         s7, s5, 21
                  or           s1, a7, s3
                  addi         gp, gp, 8 #update loop 0 counter
                  xor          s7, zero, s9
                  bltu         gp, a0, sub_5_3_0_t #branch for loop 0
                  slt          s10, t0, tp
                  addi         t4, zero, 9 #init loop 1 counter
                  addi         s7, zero, 9 #init loop 1 limit
                  andi         s11, s2, 1050
sub_5_19_1_t:     or           a5, a6, a3
                  addi         t4, t4, -4 #update loop 1 counter
                  addi         s0, zero, 6 #init loop 0 counter
                  addi         a3, zero, 7 #init loop 0 limit
sub_5_19_0_t:     slt          a0, tp, tp
                  addi         s0, s0, 1 #update loop 0 counter
                  addi         t0, s4, -1194
                  bne          s0, a3, sub_5_19_0_t #branch for loop 0
                  bgeu         t4, s7, sub_5_19_1_t #branch for loop 1
                  addi         s8, gp, -794
                  addi         gp, zero, 5 #init loop 1 counter
                  sltiu        s2, s8, 101
                  and          s11, sp, s2
                  addi         a0, zero, 14 #init loop 1 limit
                  and          ra, a6, s2
sub_5_9_1_t:      nop
                  sltu         t5, t3, zero
                  addi         gp, gp, 10 #update loop 1 counter
                  or           s3, s10, t2
                  addi         s9, zero, 5 #init loop 0 counter
                  auipc        a3, 231212
                  srl          t4, a5, t1
                  addi         s0, zero, 12 #init loop 0 limit
sub_5_9_0_t:      add          t6, s7, s6
                  addi         t0, tp, -986
                  addi         s9, s9, 9 #update loop 0 counter
                  xori         s1, s8, 779
                  blt          s9, s0, sub_5_9_0_t #branch for loop 0
                  add          s1, s11, ra
                  sra          a1, zero, a0
                  xori         a4, a6, 1980
                  addi         a6, s10, 360
                  xor          s3, tp, a4
                  ori          t5, a3, 2012
                  addi         s8, a5, -1976
                  blt          gp, a0, sub_5_9_1_t #branch for loop 1
                  nop
                  addi         s8, zero, 3 #init loop 1 counter
                  sltu         a2, s2, t0
                  addi         t4, zero, 13 #init loop 1 limit
                  sltu         a3, s6, s11
                  slli         a3, ra, 9
sub_5_29_1_t:     auipc        s5, 412479
                  andi         s9, s5, 88
                  addi         s8, s8, 3 #update loop 1 counter
                  srli         s6, t5, 29
                  slli         s1, t0, 18
                  addi         s11, zero, 7 #init loop 0 counter
                  addi         a0, sp, -1016
                  addi         s10, zero, 4 #init loop 0 limit
                  xor          a3, s9, s11
sub_5_29_0_t:     add          t0, gp, a0
                  addi         s11, s11, -3 #update loop 0 counter
                  xor          tp, s4, t5
                  bgeu         s11, s10, sub_5_29_0_t #branch for loop 0
                  bltu         s8, t4, sub_5_29_1_t #branch for loop 1
                  andi         t2, zero, 329
                  addi         s10, zero, 8 #init loop 0 counter
                  addi         a2, zero, 6 #init loop 0 limit
                  xori         a4, tp, -628
sub_5_20_0_t:     and          a3, a6, s10
                  srl          zero, s3, s0
                  addi         s10, s10, -5 #update loop 0 counter
                  bgeu         s10, a2, sub_5_20_0_t #branch for loop 0
                  slli         a4, s0, 30
                  addi         a3, zero, 8 #init loop 0 counter
                  xor          t2, t6, t4
                  addi         tp, s7, 1551
                  sltiu        s8, gp, 260
                  addi         s3, zero, 8 #init loop 0 limit
                  addi         s1, t6, -1602
                  lui          s0, 666659
sub_5_7_0_t:      nop
                  sra          t4, s5, t5
                  lui          s7, 714643
                  addi         a3, a3, -6 #update loop 0 counter
                  slli         t4, s10, 21
                  xor          t4, a7, s2
                  bgeu         a3, s3, sub_5_7_0_t #branch for loop 0
                  slti         t0, a7, -1571
                  addi         s8, zero, -1 #init loop 1 counter
                  sltiu        a2, t0, -34
                  addi         a5, zero, -15 #init loop 1 limit
sub_5_26_1_t:     slti         t6, a2, -932
                  addi         s8, s8, -7 #update loop 1 counter
                  addi         s5, zero, -2 #init loop 0 counter
                  addi         s11, zero, 18 #init loop 0 limit
                  srai         a1, t4, 11
sub_5_26_0_t:     slti         s6, a2, -1624
                  srai         s3, gp, 27
                  addi         s5, s5, 5 #update loop 0 counter
                  add          s1, a0, t4
                  bne          s5, s11, sub_5_26_0_t #branch for loop 0
                  beq          s8, a5, sub_5_26_1_t #branch for loop 1
                  sltiu        a0, a0, 1078
                  addi         t1, zero, -4 #init loop 1 counter
                  and          gp, t5, s2
                  addi         s7, zero, -15 #init loop 1 limit
                  ori          s6, t6, -630
                  sub          s1, t2, zero
                  andi         s11, s3, 764
                  sub          s8, s10, a0
                  sub          t5, s7, s0
sub_5_4_1_t:      addi         s5, s5, -200
                  sub          t6, zero, gp
                  addi         t1, t1, -4 #update loop 1 counter
                  sll          a6, tp, t2
                  addi         a1, zero, 4 #init loop 0 counter
                  sll          s1, s3, a3
                  auipc        s0, 251000
                  auipc        t2, 161424
                  sra          t4, tp, a5
                  addi         tp, zero, -2 #init loop 0 limit
sub_5_4_0_t:      andi         ra, t1, -252
                  and          t6, s1, s10
                  slli         t2, ra, 1
                  sltu         a0, sp, s7
                  slt          s0, ra, t5
                  sltu         gp, t2, s0
                  sra          t6, s10, t0
                  sltu         s0, a5, s5
                  srli         s11, s3, 26
                  addi         a1, a1, -6 #update loop 0 counter
                  bne          a1, tp, sub_5_4_0_t #branch for loop 0
                  ori          s5, s0, -1484
                  bge          t1, s7, sub_5_4_1_t #branch for loop 1
                  sra          a4, s0, sp
                  addi         a4, zero, -4 #init loop 1 counter
                  slt          a6, a2, s10
                  lui          ra, 24919
                  addi         s3, s4, -976
                  addi         t2, zero, 18 #init loop 1 limit
sub_5_27_1_t:     sltiu        s9, a3, 940
                  slli         s10, t0, 7
                  slli         s4, zero, 18
                  addi         a4, a4, 9 #update loop 1 counter
                  xori         s11, s10, 21
                  nop
                  sll          s10, a7, t1
                  addi         a1, zero, 7 #init loop 0 counter
                  srli         a6, s3, 20
                  addi         t4, zero, 7 #init loop 0 limit
                  slli         gp, t2, 16
                  xori         t1, t1, 1674
sub_5_27_0_t:     sltu         s11, a7, a3
                  srl          t5, a7, s10
                  addi         a1, a1, -5 #update loop 0 counter
                  andi         s10, a5, 1061
                  bgeu         a1, t4, sub_5_27_0_t #branch for loop 0
                  auipc        zero, 77738
                  or           a3, a4, s11
                  bltu         a4, t2, sub_5_27_1_t #branch for loop 1
                  andi         s7, s2, -1182
                  addi         a1, zero, 10 #init loop 1 counter
                  addi         a4, zero, 10 #init loop 1 limit
sub_5_11_1_t:     or           tp, sp, t1
                  addi         a1, a1, -9 #update loop 1 counter
                  addi         s9, zero, -7 #init loop 0 counter
                  addi         s11, zero, 1 #init loop 0 limit
sub_5_11_0_t:     andi         s2, t5, 273
                  addi         s9, s9, 4 #update loop 0 counter
                  bne          s9, s11, sub_5_11_0_t #branch for loop 0
                  bgeu         a1, a4, sub_5_11_1_t #branch for loop 1
                  or           s1, t0, t1
                  addi         ra, zero, 2 #init loop 0 counter
                  lui          s4, 443413
                  addi         a4, zero, 16 #init loop 0 limit
                  sub          t1, gp, t4
                  lui          t5, 496844
                  and          a0, tp, sp
sub_5_12_0_t:     xor          a2, s9, ra
                  addi         ra, ra, 2 #update loop 0 counter
                  srl          s8, a1, a0
                  slt          s3, s1, t2
                  srli         t4, tp, 14
                  or           s11, t1, a1
                  andi         a6, a6, 853
                  sra          a1, zero, s3
                  bltu         ra, a4, sub_5_12_0_t #branch for loop 0
                  and          s0, s6, s5
                  addi         gp, zero, 9 #init loop 1 counter
                  sub          s2, s11, s9
                  srai         s0, a5, 13
                  and          s3, a6, s4
                  addi         a3, zero, 15 #init loop 1 limit
sub_5_5_1_t:      ori          a2, s1, -634
                  slt          tp, zero, s9
                  addi         gp, gp, 6 #update loop 1 counter
                  addi         t0, zero, 0 #init loop 0 counter
                  addi         s9, zero, 3 #init loop 0 limit
                  lui          a6, 238152
                  srli         s0, s0, 26
sub_5_5_0_t:      sltu         tp, s3, a6
                  srli         s6, t3, 8
                  addi         t0, t0, 2 #update loop 0 counter
                  auipc        ra, 260896
                  auipc        s7, 470288
                  bltu         t0, s9, sub_5_5_0_t #branch for loop 0
                  xor          s7, s1, t0
                  bne          gp, a3, sub_5_5_1_t #branch for loop 1
                  and          t6, s5, s8
                  addi         tp, zero, -7 #init loop 0 counter
                  xori         t2, gp, 446
                  addi         t0, t2, -760
                  sltiu        a0, s10, 1539
                  sltu         ra, t2, zero
                  addi         s6, s8, -654
                  sll          s8, a0, s3
                  addi         a2, zero, 3 #init loop 0 limit
                  nop
                  nop
                  addi         a5, gp, -1635
                  sll          s11, s7, s3
                  slli         s11, s8, 25
sub_5_8_0_t:      lui          s2, 1613
                  or           s8, t4, s1
                  sll          a4, t1, t3
                  sra          a0, t5, s9
                  ori          t2, s8, -1285
                  addi         tp, tp, 7 #update loop 0 counter
                  addi         t6, a6, -87
                  slli         ra, gp, 26
                  bltu         tp, a2, sub_5_8_0_t #branch for loop 0
                  add          s9, a1, s4
                  slti         s8, a6, 1507
                  srl          zero, a4, a1
                  sltu         a6, s1, t1
                  slti         a3, a0, 738
                  sltu         s7, t6, a3
                  ori          s8, a4, 85
                  srl          a1, a0, s6
                  and          a4, s10, a6
                  auipc        t4, 167669
                  srl          zero, s4, s2
                  srai         a6, a5, 30
                  slli         a3, s7, 16
                  sltiu        s0, t5, 1415
                  bne          s2, s1, 27f
                  and          a3, s7, a5
                  add          s4, s4, s2
                  sltu         a6, t4, zero
                  and          t1, s1, s5
                  auipc        t0, 1004138
                  beq          a3, s6, 31f
                  andi         a1, t6, 1703
                  bne          t5, s9, 37f
                  bltu         a6, a5, 30f
                  auipc        zero, 835986
                  sub          s4, s8, tp
                  andi         s4, a5, 656
                  auipc        a5, 983076
27:               andi         a6, a5, -512
                  bltu         s5, a5, 34f
                  lui          s4, 833645
30:               add          a4, s6, a7
31:               blt          t3, t3, 46f
                  slli         s1, t3, 1
                  srai         s11, t1, 12
34:               srl          gp, zero, t2
                  andi         a3, t4, -1361
                  nop
37:               xor          s11, t5, ra
                  srl          s4, s1, s5
                  srli         a3, a5, 3
                  lui          a6, 152316
                  sub          zero, a6, gp
                  slti         s1, s3, 1275
                  andi         s10, a1, -1160
                  sra          a0, s9, s1
                  srai         ra, t1, 12
46:               bne          s9, gp, 57f
                  sll          s7, a7, s6
                  bge          a5, s8, 49f
49:               slt          s4, s8, s1
                  ori          s6, ra, -1154
                  srli         t0, s9, 10
                  lui          t5, 722842
                  bne          s0, zero, 62f
                  sltu         gp, tp, sp
                  srl          t4, gp, s4
                  slli         s7, t6, 28
57:               sll          s5, s7, a2
                  sltu         a1, s2, t5
                  xori         a6, s3, -867
                  auipc        s11, 227162
                  nop
62:               slli         a5, t6, 13
                  and          zero, s10, t6
                  sltu         a6, a5, t1
                  sra          s10, t5, s8
                  slli         a2, t2, 22
                  sub          s10, a2, tp
                  sltu         s1, a1, zero
                  add          s2, s8, s9
                  lui          s2, 189952
                  or           tp, a7, s11
                  sll          s5, s1, s10
                  sll          a6, s6, s9
                  xori         s7, gp, -962
                  add          t6, a5, a0
                  nop
                  andi         a2, t0, -671
                  ori          s8, gp, -1807
                  beq          sp, a3, 83f
                  lui          s5, 77464
                  slti         ra, a4, 1272
                  sll          s9, sp, s10
83:               sub          s9, zero, t5
                  bltu         a7, s2, 98f
                  slt          t1, s10, s8
                  xori         s8, a2, 717
                  slli         s6, s9, 17
                  bne          s11, t3, 107f
                  srl          t5, t6, s9
                  sll          t0, a5, s1
                  addi         t1, s0, 1979
                  xori         t1, s11, -1601
                  bltu         t0, ra, 113f
                  addi         tp, zero, 891
                  bgeu         t3, gp, 107f
                  bgeu         a6, a6, 114f
                  sltiu        s6, a0, -1964
98:               bge          t5, t1, 113f
                  xor          s0, a0, a4
                  bne          t6, s8, 104f
                  xori         t4, s10, 258
                  sll          s11, a1, a0
                  sll          tp, s5, a6
104:              andi         s2, s1, 1919
                  nop
                  sll          a1, a1, a2
107:              xor          s10, a7, s8
                  srai         s1, a7, 26
                  slli         s9, s7, 27
                  sra          tp, s1, a4
                  nop
                  beq          s1, a3, 123f
113:              srli         a4, sp, 24
114:              bgeu         s3, t3, 124f
                  sltu         t0, t1, s5
                  srl          s5, a6, s6
                  or           s4, tp, s1
                  and          s4, s11, a4
                  sub          a0, t4, a6
                  addi         s4, a2, -353
                  srl          s11, t3, s4
                  blt          a6, a3, 136f
123:              addi         a4, s0, 660
124:              sub          a4, s7, s9
                  blt          s2, s3, 129f
                  slti         s3, s9, -363
                  beq          s1, s1, 139f
                  srl          t1, tp, s2
129:              xor          s8, t6, zero
                  slli         s10, s1, 6
                  sub          s3, a1, a3
                  xori         t6, gp, -137
                  slli         a2, t0, 9
                  auipc        s8, 914736
                  andi         a4, s10, 404
136:              lui          s2, 294245
                  xori         s11, s5, 581
                  add          a3, s8, a4
139:              nop
                  slti         ra, s9, 2034
                  nop
                  slti         s2, s1, -321
                  or           s3, a6, zero
                  and          s8, t2, zero
                  sub          a3, a4, gp
                  andi         gp, s10, -1654
                  sub          s1, gp, s8
                  bne          t2, tp, 158f
                  bge          a1, s2, 160f
                  or           t2, s0, s1
                  bne          t1, s7, 154f
                  bgeu         s8, a1, 157f
                  bne          sp, t5, 157f
154:              slti         a3, ra, -774
                  sltiu        a3, t3, 1183
                  ori          zero, s6, 990
157:              blt          a7, t6, 159f
158:              sll          a4, s2, a6
159:              blt          a3, t2, 170f
160:              bge          t0, a5, 180f
                  andi         s7, s0, 953
                  bge          t4, s10, 173f
                  beq          tp, s6, 174f
                  addi         s0, zero, 9 #init loop 1 counter
                  ori          gp, t6, 31
                  addi         a0, zero, 6 #init loop 1 limit
                  ori          s2, zero, 1609
                  or           s9, s6, sp
sub_5_15_1_t:     addi         s7, s2, 94
                  addi         s0, s0, -2 #update loop 1 counter
                  addi         a4, zero, 3 #init loop 0 counter
                  sltiu        t6, a5, 1066
                  addi         a3, zero, 14 #init loop 0 limit
                  ori          t5, sp, 1706
sub_5_15_0_t:     addi         t5, a5, -879
                  slt          t4, a7, s10
                  auipc        s7, 922499
                  addi         a4, a4, 7 #update loop 0 counter
                  blt          a4, a3, sub_5_15_0_t #branch for loop 0
                  slli         zero, s4, 2
                  bgeu         s0, a0, sub_5_15_1_t #branch for loop 1
                  addi         s6, s0, -298
                  srli         s3, gp, 22
                  sltiu        gp, a6, 1440
                  nop
                  add          s9, a4, s6
                  sra          s8, s7, s10
                  xor          a5, a4, t5
170:              slti         gp, t6, 1719
                  slti         a6, s10, -380
                  and          s1, t5, s10
173:              sltiu        s5, s1, -852
174:              bltu         s8, t5, 189f
                  auipc        gp, 248714
                  auipc        a3, 189245
                  beq          s3, a2, 192f
                  andi         s2, s10, 1430
                  blt          ra, a7, 189f
180:              auipc        t5, 93363
                  sltu         a5, tp, ra
                  ori          s7, gp, 1494
                  beq          s3, gp, 201f
                  sub          s4, s6, a1
                  auipc        s2, 224692
                  srli         ra, s5, 20
                  slt          s1, s3, s5
                  srli         ra, s7, 19
189:              or           t1, s7, ra
                  slt          t1, s4, a3
                  bgeu         zero, t5, 194f
192:              beq          s11, gp, 206f
                  lui          s1, 893816
194:              bgeu         a7, s8, 204f
                  srai         t4, zero, 16
                  nop
                  or           a0, a6, t1
                  bltu         s10, a7, 212f
                  xori         s7, t5, 1149
                  slt          s0, s8, s4
201:              beq          s0, a4, 212f
                  srl          s3, t6, a2
                  srai         s2, t0, 8
204:              srl          s10, zero, sp
                  sub          s1, s7, tp
206:              beq          a4, s7, 226f
                  bltu         tp, s1, 208f
208:              slli         s1, a4, 6
                  ori          gp, s3, -1002
                  slli         a1, s6, 23
                  andi         a4, s11, -640
212:              srl          t2, ra, s7
                  beq          a1, a5, 219f
                  addi         s4, s7, 505
                  sltiu        s5, a0, -625
                  slli         s0, t6, 16
                  srl          a3, sp, s1
                  sub          t5, s4, s2
219:              sltu         s0, s11, s0
                  andi         gp, t2, 1260
                  lui          a2, 548871
                  or           s11, s3, a5
                  beq          zero, t5, 232f
                  sltu         zero, a3, a7
                  slt          gp, t2, t2
226:              lui          a4, 518786
                  sra          a3, s5, t1
                  sltiu        t4, a2, 1202
                  srli         gp, a0, 0
                  bge          a4, t2, 242f
                  srl          t1, t3, s11
232:              slli         s4, s7, 6
                  slt          a1, ra, a2
                  slti         tp, a4, -413
                  slti         t1, a7, -1349
                  lui          s9, 568975
                  slti         gp, s9, -1517
                  srl          s0, t6, a1
                  sltu         gp, a0, sp
                  nop
                  lui          s7, 455757
242:              ori          s0, t3, 2031
                  xori         zero, s10, 452
                  srai         s10, zero, 0
                  sltu         t2, s10, a6
                  or           s0, s10, t1
                  slt          s2, gp, t6
                  sltiu        s11, zero, -1516
                  bltu         s8, a0, 261f
                  bne          ra, s8, 258f
                  bne          s11, s8, 255f
                  sra          a0, s2, s7
                  sll          s0, t5, s9
                  bltu         s8, t5, 273f
255:              and          a6, t4, s0
                  bne          t4, a6, 276f
                  addi         a6, a6, 1199
258:              sub          s2, t4, t2
                  slti         a5, a1, 1930
                  and          a2, s2, t6
261:              slli         s4, a1, 4
                  sub          t6, a2, s5
                  sra          s6, s2, gp
                  or           t6, t6, s5
                  or           a4, t5, gp
                  beq          sp, s6, 270f
                  srai         s1, a7, 25
                  sra          t6, a7, s1
                  and          s5, zero, a0
270:              nop
                  sub          s2, s2, s0
                  or           a2, a2, a3
273:              blt          zero, t1, 278f
                  andi         s4, s5, -1528
                  bge          s10, a7, 287f
276:              addi         a5, a2, 700
                  ori          t1, tp, -1502
278:              srl          s9, s3, a0
                  auipc        s2, 1026825
                  slt          t5, s8, t4
                  srl          a1, t4, s0
                  slli         s11, s7, 4
                  srl          s4, s0, t5
                  slti         s5, t6, -1957
                  and          t5, sp, a3
                  slli         t1, s4, 28
287:              xor          gp, t1, s2
                  srl          tp, sp, t0
                  slli         t5, s5, 5
                  xori         s7, a3, 449
                  addi         s0, t4, -437
                  srl          s6, a0, tp
                  bltu         tp, s9, 304f
                  addi         a3, a5, 198
                  auipc        s1, 411943
                  andi         a1, s9, 1126
                  auipc        s6, 736905
                  or           gp, s1, s2
                  slt          a1, a0, s10
                  addi         t5, t2, -909
                  or           a5, t5, tp
                  auipc        s7, 26154
                  slti         a2, t5, 1424
304:              srai         a3, t5, 27
                  beq          a3, s2, 309f
                  add          s4, s4, s3
                  lui          t0, 570092
                  or           a5, a5, s2
309:              slti         a4, a6, 52
                  sra          t4, t1, s5
                  auipc        a3, 879365
                  add          ra, s0, t0
                  sra          s2, t6, t0
                  xor          tp, a7, s8
                  sll          a1, s10, t5
                  beq          a1, s7, 318f
                  sub          s8, tp, s3
318:              bgeu         a6, t5, 334f
                  and          a0, a1, a1
                  add          a0, t6, s9
                  bgeu         t5, s3, 335f
                  bltu         a3, zero, 326f
                  bne          s10, tp, 334f
                  ori          t2, t1, 1031
                  or           a3, s11, t2
326:              bgeu         a7, a0, 330f
                  sub          t6, s6, zero
                  sltiu        s5, a4, 36
                  srl          a3, t1, t2
330:              bge          s2, a5, 346f
                  xori         s1, s1, 2
                  and          s9, s0, a3
                  ori          s1, a6, 1195
334:              sll          zero, s2, a6
335:              bne          zero, s1, 341f
                  beq          a3, tp, 337f
337:              srai         zero, a1, 29
                  sltu         a5, s3, t4
                  beq          gp, s6, 349f
                  ori          s3, t1, 1481
341:              sra          t6, t3, a3
                  sra          ra, s9, ra
                  bgeu         sp, s9, 355f
                  sltu         ra, gp, gp
                  slli         t4, t2, 25
346:              sra          a3, zero, t4
                  bge          gp, gp, 362f
                  slti         s4, s6, -402
349:              or           s8, s8, s4
                  sll          zero, gp, a5
                  beq          ra, gp, 359f
                  srai         gp, sp, 29
                  slt          a3, t3, s2
                  xor          a2, s3, a6
355:              auipc        t2, 420658
                  slli         s9, a7, 30
                  srl          t6, s1, s11
                  slli         t4, s6, 21
359:              sll          ra, s5, t2
                  sltu         a0, zero, a7
                  bgeu         a6, t5, 365f
362:              lui          s9, 167907
                  slti         t0, s4, 1616
                  nop
365:              srai         gp, t0, 31
                  slt          a2, t0, s1
                  sltiu        t6, a3, -30
                  sub          a2, s11, s8
                  srl          t4, s1, tp
                  bge          a1, s6, 374f
                  bltu         s9, t2, 385f
                  and          s7, a0, s9
                  sll          a3, zero, s11
374:              bltu         s8, a6, 386f
                  slli         t5, gp, 25
                  slli         a4, t1, 31
                  bgeu         t4, t3, 382f
                  srai         ra, a2, 25
                  add          a4, a3, s9
                  nop
                  and          gp, a1, t2
382:              bltu         a6, s4, 401f
                  auipc        s5, 903817
                  or           s7, a2, t5
385:              and          a0, a7, t0
386:              addi         s10, s3, 607
                  nop
                  auipc        a5, 1030542
                  nop
                  bltu         s10, sp, 394f
                  bne          t2, t4, 406f
                  blt          s6, t0, 403f
                  xor          s8, s11, s4
394:              bgeu         a5, t4, 414f
                  beq          a3, t5, 407f
                  sra          a0, s2, s10
                  sltiu        s4, s10, -20
                  bne          s2, s0, 418f
                  add          t0, t0, a4
                  slli         t1, a6, 9
401:              nop
                  beq          a5, t3, 416f
403:              sltu         ra, a5, ra
                  ori          t6, a7, 1327
                  sltiu        s3, t4, 1552
406:              sltiu        s4, s3, 984
407:              blt          t2, s10, 410f
                  srl          s7, t0, a0
                  and          s3, t2, t6
410:              and          a3, s4, s5
                  ori          ra, a3, 473
                  lui          zero, 960131
                  addi         t6, s0, 989
414:              beq          s11, t1, 416f
                  xori         s11, a7, 1752
416:              slli         s10, zero, 0
                  beq          t1, t6, 426f
418:              bge          a2, t4, 429f
                  bne          s3, t1, 433f
                  or           a5, ra, s11
                  bltu         a1, t2, 431f
                  srl          s3, s5, gp
                  sub          a5, s5, s2
                  srl          tp, t3, t6
                  srli         a6, s4, 19
426:              bge          s0, gp, 437f
                  sll          a5, zero, s1
                  xori         ra, t5, 55
429:              xor          s8, t0, t6
                  ori          gp, s0, 1296
431:              sltu         a0, t0, t3
                  blt          t5, t3, 450f
433:              sra          s3, t6, s9
                  bgeu         s9, t5, 435f
435:              slti         s11, ra, -1906
                  blt          s11, a2, 451f
437:              and          t4, s4, tp
                  slli         s8, t1, 10
                  auipc        t2, 1042530
                  ori          t4, tp, 1470
                  ori          gp, t2, 1185
                  xor          t1, t2, s1
                  sltu         s1, gp, a0
                  slli         a3, a4, 5
                  sll          s0, a3, t3
                  nop
                  sra          s1, a7, a7
                  xori         s8, s10, -1502
                  srli         s4, s6, 17
450:              add          ra, t0, s7
451:              sub          zero, zero, tp
                  slt          s9, t1, s1
                  lui          s6, 811313
                  slt          a4, a2, s11
                  blt          sp, s9, 466f
                  beq          a1, s5, 466f
                  nop
                  auipc        gp, 420805
                  sltu         t4, a7, a7
                  auipc        t4, 523840
                  srl          t0, s7, s10
                  sra          a5, s9, gp
                  slli         a2, s9, 10
                  srai         a6, a3, 0
                  sll          s5, s0, s1
466:              beq          a4, a7, 482f
                  or           t2, s3, s8
                  auipc        a3, 385252
                  bge          a3, s11, 481f
                  slti         t6, s8, -9
                  or           s1, a5, t1
                  or           t5, s4, a4
                  sra          s6, s11, sp
                  sra          zero, t6, a6
                  sll          a3, t6, t4
                  slt          zero, s6, t2
                  auipc        ra, 619956
                  sub          ra, s5, s5
                  or           s6, s6, a1
                  srli         s4, zero, 27
481:              bgeu         s9, t3, 496f
482:              and          s6, t6, a1
                  xori         t6, gp, 1677
                  srl          a0, t5, tp
                  sra          a5, sp, s6
                  xor          s4, a6, t1
                  slli         s3, a6, 7
                  and          s7, s8, s8
                  bgeu         t1, s0, 500f
                  xor          s2, a0, gp
                  bge          a2, t1, 511f
                  bltu         t3, tp, 506f
                  slt          s8, s0, gp
                  sltiu        ra, a4, 1888
                  ori          s1, s4, -1306
496:              addi         a1, t5, 1970
                  sub          s2, a2, t1
                  and          t4, zero, t6
                  slti         a0, a3, -1900
500:              bltu         t0, t1, 506f
                  beq          s9, s5, 510f
                  sll          s10, t1, s9
                  nop
                  andi         s4, zero, -1673
                  bltu         a1, t4, 509f
506:              or           a0, t3, a0
                  srli         s8, s6, 9
                  bgeu         s4, gp, 527f
509:              srai         s2, s2, 21
510:              sra          s0, a4, ra
511:              blt          s4, s0, 525f
                  srai         a5, gp, 2
                  slt          t0, t2, t4
                  xori         s10, a2, -1345
                  sltu         tp, a4, a7
                  andi         s4, t6, 1461
                  bltu         gp, tp, 525f
                  add          t4, s6, a0
                  blt          s9, t0, 530f
                  bgeu         a1, s7, 530f
                  nop
                  xori         a2, a6, -704
                  slli         a3, a6, 17
                  lui          tp, 721001
525:              slli         s2, zero, 22
                  bge          s7, s2, 530f
527:              or           s0, t5, a3
                  nop
                  and          s2, t3, s3
530:              srai         s4, t2, 29
                  nop
                  slti         s5, s5, 1986
                  bge          zero, s4, 545f
                  bne          a6, s2, 546f
                  slli         s1, t2, 13
                  slli         gp, tp, 13
                  sra          tp, a7, s8
                  nop
                  slli         s8, gp, 13
                  beq          t4, tp, 545f
                  srl          zero, t3, a3
                  slt          s7, t6, s6
                  blt          a7, s11, 557f
                  add          zero, a7, t0
545:              lui          tp, 932254
546:              slti         s8, s4, 1956
                  nop
                  andi         t6, t5, 159
                  addi         t1, sp, -1880
                  bne          a1, s4, 552f
                  xori         s11, a0, -1127
552:              bltu         a4, a7, 555f
                  auipc        s9, 923876
                  bge          s3, ra, 558f
555:              or           t5, s1, zero
                  sub          s5, s10, a1
557:              add          s11, s2, s7
558:              sra          a5, a6, s4
                  slti         a6, gp, 451
                  blt          s8, t4, 571f
                  srl          t4, t6, t2
                  nop
                  add          t1, s3, t3
                  auipc        s9, 1011135
                  sltu         s10, s6, a2
                  auipc        s0, 142156
                  srli         a1, s6, 27
                  ori          a1, t4, 962
                  and          s9, t0, a1
                  slt          a5, a3, a7
571:              xor          zero, a7, t6
                  nop
                  bgeu         a2, s8, 591f
                  bge          a7, a4, 578f
                  xor          s0, s9, s0
                  beq          a7, sp, 596f
                  add          t5, t3, t1
578:              nop
                  auipc        a4, 313891
                  slli         s6, a3, 30
                  sltiu        a4, a1, 180
                  ori          t5, s4, 1219
                  slti         s6, a7, 297
                  sltu         s5, s10, s3
                  lui          t4, 587080
                  bltu         a5, zero, 591f
                  addi         s0, zero, -2 #init loop 0 counter
                  addi         t2, s0, -312
                  lui          s8, 637814
                  add          s11, s3, a6
                  sll          a2, s8, s6
                  addi         s7, zero, -6 #init loop 0 limit
                  add          s4, t6, t3
                  add          s5, s7, tp
                  srli         s11, sp, 16
                  andi         s11, a2, -1504
                  slt          s5, t2, s3
                  slti         t1, s10, 1487
                  sltu         s8, gp, s0
                  srli         s9, t1, 5
                  sub          ra, t2, t1
                  ori          t4, gp, -1902
                  srai         tp, s8, 14
                  lui          t5, 4430
sub_5_25_0_t:     lui          t4, 539867
                  slt          s9, a7, s5
                  addi         s0, s0, -1 #update loop 0 counter
                  addi         s8, a2, 1885
                  nop
                  sltiu        zero, zero, 68
                  sra          a0, s9, a1
                  bge          s0, s7, sub_5_25_0_t #branch for loop 0
                  sltiu        s2, s4, 126
                  blt          a4, s3, 593f
                  sub          s4, s2, a5
                  sltu         s3, t5, t1
                  and          a6, s3, t0
591:              or           s7, sp, a0
                  bltu         t2, s7, 603f
593:              addi         s11, s5, 1433
                  or           s2, a6, s7
                  srai         a1, sp, 5
596:              slti         t5, s3, 302
                  sltu         a1, a0, s3
                  or           a5, s6, a1
                  or           gp, a4, t1
                  bge          s0, a6, 611f
                  auipc        tp, 766007
                  lui          ra, 485520
603:              addi         a6, gp, 382
                  srai         s9, s7, 4
                  sll          s8, a0, a2
                  sltiu        a0, a0, 1631
                  sra          t4, s5, a7
                  add          tp, s1, s5
                  bgeu         tp, t4, 624f
                  nop
611:              sll          ra, sp, a2
                  sll          s11, s2, ra
                  andi         t2, s3, -731
                  srl          s2, t3, s9
                  sltiu        s1, t1, 994
                  addi         t2, a7, -119
                  lui          t5, 751022
                  srl          s0, t3, s2
                  srli         s9, s5, 27
                  srai         t5, s0, 13
                  sub          a3, s8, s11
                  srl          a1, sp, a1
                  beq          s7, s11, 627f
624:              lui          s8, 627840
                  add          s10, s10, a1
                  xor          t2, s3, s8
627:              bgeu         t5, a7, 641f
                  ori          a5, t0, -681
                  sltu         a0, sp, tp
                  nop
                  sltiu        s2, s6, -1264
                  bne          a5, s0, 651f
                  addi         a2, a6, 1580
                  ori          s6, a5, 1137
                  blt          s4, s0, 653f
                  and          a5, t3, t5
                  nop
                  slli         s2, t1, 27
                  auipc        a4, 926803
                  xori         a6, a5, 152
641:              bge          gp, s4, 656f
                  ori          s7, t2, 629
                  srai         s7, a2, 28
                  bltu         zero, a0, 654f
                  sub          s4, s2, t1
                  slti         s11, t6, 1039
                  slt          a6, s11, s7
                  slli         a6, t4, 18
                  xori         t0, t6, 1595
                  slti         t1, s3, -1213
651:              beq          a1, t5, 655f
                  srli         a0, t3, 18
653:              andi         t5, s2, 2017
654:              auipc        t6, 639462
655:              sll          s10, a2, s11
656:              xori         t5, a2, 74
                  bgeu         zero, s0, 667f
                  bltu         t6, s0, 659f
659:              nop
                  beq          a4, s1, 664f
                  sra          a4, t6, a2
                  sra          t1, t3, a5
                  bltu         t1, a4, 674f
664:              bgeu         s11, t6, 684f
                  xor          s0, s8, s5
                  srai         s8, t4, 0
667:              slti         s11, t0, -10
                  and          a1, s0, s0
                  slti         t2, ra, 1290
                  lui          t1, 1023222
                  slt          s0, ra, s10
                  auipc        ra, 288604
                  xori         a6, s0, 1491
674:              nop
                  blt          s6, a3, 686f
                  bne          sp, a6, 688f
                  sll          s7, gp, tp
                  sll          a5, s11, a5
                  bltu         a0, s7, 691f
                  bgeu         a5, ra, 688f
                  addi         a0, t3, 1139
                  bne          s11, t6, 696f
                  lui          t1, 572005
684:              sll          a1, s5, s1
                  nop
686:              sll          s8, a7, t1
                  addi         a2, s5, 535
688:              slli         s4, a1, 1
                  sra          ra, ra, a6
                  add          t0, a4, a4
691:              srli         s3, s0, 12
                  xori         t5, s9, 802
                  xor          s7, s8, t0
                  sra          t6, s0, s2
                  ori          s1, a5, 1420
696:              sll          t0, t0, s4
                  and          s7, sp, t1
                  sltiu        s4, sp, 908
                  xor          zero, s0, a0
                  or           t4, s3, sp
                  bgeu         t2, a1, 705f
                  blt          ra, a6, 722f
                  and          s2, s0, s3
                  lui          a0, 120779
705:              xori         s1, tp, -1451
                  sra          t0, t1, a7
                  blt          s10, s4, 721f
                  sltiu        t0, a5, -449
                  srli         s10, a0, 6
                  srai         t2, sp, 3
                  sltiu        s7, zero, 1479
                  srli         s11, s0, 21
                  sltiu        s6, s1, -410
                  add          tp, t0, a6
                  xor          s9, s2, s11
                  srli         a5, s5, 9
                  sltu         ra, s6, t3
                  addi         a6, gp, 1338
                  bltu         a6, a4, 731f
                  srli         a6, tp, 29
721:              bgeu         t5, s7, 730f
722:              or           t5, sp, s11
                  slt          t4, a1, s3
                  slt          t4, a0, a4
                  slti         t0, t6, 494
                  slti         s2, a6, 377
                  sll          a3, a3, a2
                  slti         s10, s3, 1637
                  slli         t1, a0, 15
730:              bltu         a6, ra, 732f
731:              andi         a3, s6, -303
732:              srl          a3, s4, a1
                  beq          s1, t5, 736f
                  lui          s8, 399916
                  addi         s4, a6, 78
736:              xori         t6, s0, 416
                  or           s7, t6, s0
                  sra          s5, s7, s1
                  sll          s10, t2, s9
                  lui          s7, 34276
                  blt          t0, t5, 757f
                  add          t5, s5, gp
                  srai         s3, a4, 2
                  sra          s5, t0, s4
                  beq          t2, a2, 757f
                  bne          s9, s0, 758f
                  bltu         t0, s4, 762f
                  xor          s5, s1, s1
                  bge          ra, a1, 769f
                  blt          s3, a1, 759f
                  auipc        t1, 853599
                  slti         s10, s2, -1929
                  sub          s9, s8, gp
                  lui          s3, 374648
                  sub          a1, s4, a0
                  bne          a4, s3, 767f
757:              lui          s9, 682238
758:              sra          s5, a2, t3
759:              bltu         a7, a5, 763f
                  sltiu        t6, a5, -312
                  sltu         t1, s6, s11
762:              xori         tp, t0, 551
763:              slt          s1, gp, t3
                  ori          t4, zero, -1660
                  andi         s7, s11, 704
                  sltiu        t5, a3, 689
767:              bge          s7, t2, 770f
                  bge          sp, a5, 788f
769:              addi         s11, s5, -181
770:              sra          s11, a4, s6
                  bgeu         s5, gp, 785f
                  srl          s8, s10, s0
                  auipc        t5, 1038779
                  nop
                  add          a5, t0, a2
                  or           s9, s0, a2
                  srai         s9, tp, 30
                  nop
                  and          a0, t1, s10
                  lui          a4, 471007
                  andi         t5, a3, -177
                  or           t0, t5, t2
                  slli         a3, a3, 5
                  xori         zero, s2, 2002
785:              blt          s10, t4, 800f
                  slt          s1, t1, s10
                  beq          t3, s0, 797f
788:              sra          t2, t2, s2
                  beq          t4, t3, 790f
790:              ori          s2, t0, -251
                  slti         zero, ra, -834
                  andi         s9, t4, -480
                  lui          s11, 306739
                  lui          ra, 524500
                  and          t0, a6, t4
                  bge          t5, a1, 812f
797:              xori         s11, a1, -1541
                  sltiu        s4, a1, -366
                  lui          t0, 644322
800:              bltu         a3, s9, 812f
                  ori          a0, a3, -1940
                  nop
                  srl          s7, t6, s4
                  blt          a0, t2, 814f
                  xor          s8, t6, s6
                  sltiu        t6, a4, 1968
                  xori         s10, a4, 1040
                  xor          s2, a1, t2
                  auipc        zero, 78627
                  slli         s11, s8, 0
                  sltiu        s6, t4, -1713
812:              sll          a4, a2, a5
                  bltu         tp, a0, 824f
814:              xori         t6, t5, 165
                  add          gp, s7, t5
                  andi         t2, a3, 1933
                  srli         s5, s6, 21
                  nop
                  lui          s8, 92722
                  bne          t4, a0, 824f
                  srai         t5, t3, 8
                  sltu         s5, s4, t5
                  slli         a3, a1, 10
824:              slti         gp, t4, 1890
                  andi         s11, s7, 1751
                  bge          s8, a7, 830f
                  beq          s11, s4, 845f
                  srl          a1, a0, s2
                  andi         s1, gp, -1715
830:              addi         a2, s1, -406
                  slti         a4, gp, 507
                  srli         zero, zero, 18
                  bne          t1, s2, 841f
                  sub          t1, s11, t5
                  xor          t4, ra, a3
                  srl          a1, a4, a2
                  sll          t5, t3, s10
                  srl          s9, t4, s6
                  slli         s8, a2, 18
                  slti         s7, t4, 1217
841:              srai         s11, s4, 20
                  beq          s10, a1, 844f
                  bge          s9, s9, 857f
844:              srli         t4, s4, 1
845:              srl          s7, t0, zero
                  srai         a5, a5, 6
                  addi         zero, s2, 1366
                  ori          a4, a3, 237
                  addi         a4, a5, -1834
                  srl          a5, t0, s9
                  srl          a2, gp, t0
                  xor          tp, zero, s10
                  slt          t0, t2, a2
                  srli         t1, t5, 22
                  nop
                  lui          t4, 272238
857:              xor          s2, zero, a6
                  addi         s3, t6, -954
                  sltiu        a3, t6, 2030
                  xori         a0, a3, 1055
                  andi         s4, s8, 1980
                  bgeu         s2, a4, 876f
                  bltu         s4, s4, 867f
                  srai         a5, s0, 17
                  bne          a5, tp, 871f
                  and          t0, zero, a2
867:              sltiu        t1, s11, 36
                  bltu         s8, sp, 879f
                  slti         t5, s6, 750
                  auipc        s4, 300015
871:              sub          t1, t5, t5
                  sltiu        a4, t6, 1259
                  sltiu        s3, s6, 87
                  srli         a0, t5, 27
                  sra          a2, s7, a5
876:              lui          s1, 738944
                  sltu         t4, tp, a1
                  ori          a3, gp, 1007
879:              nop
                  sltu         t5, zero, a0
                  bge          t3, s5, 886f
                  bgeu         gp, a1, 893f
                  sra          zero, t3, a7
                  xor          gp, s11, t6
                  blt          t3, a0, 904f
886:              sra          s8, a6, t3
                  bne          sp, ra, 899f
                  slti         zero, s9, 1415
                  bge          s7, zero, 908f
                  andi         t1, a1, -1698
                  bgeu         ra, ra, 909f
                  addi         t0, zero, 7 #init loop 1 counter
                  nop
                  addi         a4, zero, 3 #init loop 1 limit
                  add          s1, a6, s5
                  srli         s2, s7, 28
sub_5_18_1_t:     or           t1, s10, s8
                  addi         t0, t0, -1 #update loop 1 counter
                  sll          s4, t0, t2
                  addi         a0, zero, 9 #init loop 0 counter
                  addi         s9, zero, 10 #init loop 0 limit
sub_5_18_0_t:     sub          gp, sp, s4
                  addi         a0, a0, 1 #update loop 0 counter
                  ori          s0, t5, -1986
                  srli         tp, a7, 3
                  beq          a0, s9, sub_5_18_0_t #branch for loop 0
                  bge          t0, a4, sub_5_18_1_t #branch for loop 1
                  ori          tp, s10, -91
                  addi         a2, t2, 32
893:              sra          ra, tp, t3
                  slti         s7, zero, -1917
                  bne          a2, a1, 900f
                  sltiu        a4, s7, 742
                  andi         s6, a5, 1791
                  bne          tp, zero, 914f
899:              xor          t5, s0, tp
900:              beq          t5, t1, 914f
                  bltu         s11, a1, 910f
                  slti         t4, s3, 1456
                  xor          t4, s5, t1
904:              bge          s4, t3, 906f
                  slli         t0, s0, 14
906:              srli         s5, s10, 10
                  andi         s1, ra, 1171
908:              bgeu         s7, t6, 916f
909:              slli         a4, s7, 28
910:              srai         a2, t1, 15
                  and          t0, a2, t5
                  bgeu         a1, s2, 913f
913:              srai         a2, t4, 0
914:              auipc        t0, 809924
                  lui          t0, 684189
916:              add          t1, t4, s4
                  auipc        s6, 697075
                  lui          a2, 225120
                  xori         a0, a5, 1316
                  bgeu         s10, a4, 923f
                  sltu         s8, t1, s7
                  add          t0, a5, a6
923:              lui          t6, 599794
                  sub          t2, t5, a3
                  addi         s4, a4, -1325
                  sltu         s4, a2, s9
                  beq          t4, a5, 941f
                  srl          ra, a2, a4
                  andi         ra, t5, -694
                  sltu         s4, tp, a5
                  xori         zero, t3, 1699
                  andi         t2, gp, 1298
                  srli         s10, tp, 20
                  srl          s6, s9, sp
                  xori         s3, a0, -1141
                  bge          a0, a7, 946f
                  srli         s7, tp, 28
                  and          s5, zero, s4
                  slli         gp, s7, 17
                  sltu         t5, ra, s8
941:              xor          s3, a1, s2
                  sltu         zero, s6, t4
                  andi         t5, s3, 1546
                  beq          s8, s11, 959f
                  or           gp, a0, s4
946:              slli         t4, t0, 5
                  andi         t1, s2, -617
                  bge          t0, a1, 968f
                  andi         t1, s0, -572
                  andi         zero, ra, 729
                  bge          zero, zero, 962f
                  slt          s3, t2, a7
                  sll          s3, s7, s9
                  sltu         s11, sp, s0
                  ori          s5, ra, -1843
                  slti         a1, s3, -870
                  srli         tp, ra, 29
                  sub          t0, a7, gp
959:              slt          s11, s2, t2
                  srai         s0, gp, 26
                  srai         t5, s1, 19
962:              or           a1, s1, t0
                  addi         s0, zero, 3 #init loop 0 counter
                  lui          a4, 103012
                  ori          s8, s4, 1522
                  sra          s8, t3, sp
                  addi         t2, zero, -11 #init loop 0 limit
                  sltu         tp, t5, t1
                  ori          gp, sp, -102
sub_5_6_0_t:      slt          s8, s0, t3
                  lui          tp, 674724
                  addi         a5, s2, -1934
                  xor          s6, s7, s7
                  nop
                  xori         s5, s1, -489
                  slti         t0, gp, 1384
                  addi         s0, s0, -7 #update loop 0 counter
                  srai         t5, s6, 28
                  xori         ra, s8, 1894
                  addi         s6, gp, -1843
                  nop
                  srai         t6, t5, 5
                  beq          s0, t2, sub_5_6_0_t #branch for loop 0
                  addi         tp, a1, 1078
                  slli         s3, zero, 5
                  slti         t4, t5, -1359
                  srai         t5, s8, 27
                  bltu         s3, t1, 978f
                  bge          gp, a4, 978f
968:              addi         a6, t0, 1544
                  srli         gp, s9, 5
                  addi         s3, s8, 445
                  addi         a5, zero, -4 #init loop 0 counter
                  addi         s0, zero, -18 #init loop 0 limit
                  addi         ra, s10, 950
                  srl          t4, t4, t3
sub_5_10_0_t:     lui          a0, 224236
                  and          t4, a6, a7
                  slti         ra, t1, -910
                  addi         a5, a5, -7 #update loop 0 counter
                  or           t5, a6, s3
                  and          a0, s7, gp
                  beq          a5, s0, sub_5_10_0_t #branch for loop 0
                  xor          t4, t3, s9
                  slti         t5, t2, -1934
                  sltiu        s0, a0, 1984
                  addi         zero, s7, -119
                  sltu         s10, s3, tp
                  slli         s10, a0, 25
                  sra          s3, s11, s1
                  srli         s11, t0, 3
978:              beq          s2, s1, 984f
                  sltu         s4, s3, t5
                  blt          s6, t1, 995f
                  sub          s10, a7, sp
                  sll          s1, s3, t5
                  ori          a1, s7, -1431
984:              bne          a0, s10, 994f
                  slti         t1, a2, -1111
                  xor          ra, a4, s9
                  bltu         gp, s0, 991f
                  nop
                  bge          s1, a0, 1009f
                  ori          a6, a3, 1329
991:              srl          t5, gp, s7
                  addi         s4, a1, 2014
                  lui          s7, 901836
994:              sltiu        t5, t2, 757
995:              bge          s3, zero, 999f
                  bne          a2, s7, 1007f
                  slt          a2, t2, s11
                  sll          t5, a6, s10
999:              addi         gp, s11, 429
                  srli         s7, t1, 22
                  sltiu        t0, tp, -408
                  sltu         s3, s2, zero
                  srl          s3, a1, zero
                  or           s11, sp, t3
                  add          s5, ra, t6
                  bge          a0, t3, 1018f
1007:             sltiu        s11, t3, -2003
                  addi         t5, s0, 289
1009:             xor          s3, t5, ra
                  or           s3, a5, tp
                  sra          s8, gp, s0
                  lui          s2, 236742
                  bge          a4, a0, 1017f
                  sub          s8, t2, gp
                  bne          a0, s9, 1026f
                  andi         ra, t5, 1701
1017:             sltu         s1, ra, s6
1018:             bne          zero, s2, 1022f
                  sub          t4, s10, s1
                  sltiu        t0, a0, 656
                  andi         t5, ra, -1897
1022:             addi         a5, s2, -1051
                  sltiu        a5, t2, 59
                  auipc        t2, 625838
                  bge          s8, gp, 1039f
1026:             addi         s7, a7, 858
                  auipc        s1, 531540
                  sltu         a1, a2, s10
                  bltu         s5, s5, 1041f
                  nop
                  xori         s1, s8, -425
                  sltu         tp, s10, s1
                  andi         s0, t0, 305
                  bge          zero, zero, 1046f
                  srli         t1, t3, 25
                  sltiu        t4, s11, -1794
                  slli         s7, s8, 24
                  addi         t1, zero, 7 #init loop 1 counter
                  sltu         s3, t1, t0
                  slti         ra, s5, 1210
                  sra          tp, t4, a7
                  slti         a0, s11, 235
                  slli         t5, a4, 17
                  addi         s4, t6, 1928
                  addi         s0, zero, 13 #init loop 1 limit
                  sra          s7, a2, t3
                  or           s7, s9, t1
                  xor          s3, a7, sp
sub_5_23_1_t:     slt          s11, t5, s10
                  ori          s6, a4, 895
                  addi         t1, t1, 2 #update loop 1 counter
                  xor          s2, s4, s7
                  sll          s5, t1, t1
                  addi         a1, zero, 4 #init loop 0 counter
                  sub          s7, s1, t6
                  srai         s8, t3, 12
                  xori         a0, a7, 1481
                  addi         s10, zero, -18 #init loop 0 limit
sub_5_23_0_t:     lui          s7, 775625
                  srai         s8, a3, 4
                  auipc        ra, 591462
                  auipc        t5, 558547
                  addi         a1, a1, -3 #update loop 0 counter
                  bge          a1, s10, sub_5_23_0_t #branch for loop 0
                  addi         s9, t4, -1676
                  srai         s5, s7, 5
                  auipc        t6, 562770
                  andi         s11, t6, -274
                  srl          s2, a1, s7
                  add          s8, s3, t6
                  bltu         t1, s0, sub_5_23_1_t #branch for loop 1
                  sltu         gp, s1, zero
                  addi         a4, ra, 333
1039:             xori         tp, sp, -2038
                  beq          a1, a1, 1050f
1041:             sltiu        s5, a3, 1912
                  or           ra, s8, s9
                  slli         a1, sp, 4
                  add          s8, t2, a7
                  slt          s6, t1, s4
1046:             bltu         t3, s11, 1057f
                  lui          t0, 477584
                  add          s1, t5, t4
                  slt          ra, ra, t2
1050:             bge          a2, s2, 1061f
                  xori         zero, a6, 641
                  beq          s3, s0, 1056f
                  addi         gp, gp, -525
                  slt          zero, t5, s2
                  slt          s7, a2, s1
1056:             sll          t4, t5, t4
1057:             ori          s8, s9, 1391
                  xor          s7, a3, s1
                  slli         a4, a4, 22
                  bne          s4, s6, 1070f
1061:             sll          s5, a0, a6
                  or           s9, s0, a5
                  slti         a0, s7, -671
                  bgeu         s0, sp, 1070f
                  srai         a3, s8, 0
                  sll          s4, a5, s8
                  sra          s6, t4, t2
                  xor          tp, s8, s7
                  sra          zero, s2, a1
                  addi         s10, zero, 8 #init loop 1 counter
                  srl          a6, t2, a2
                  srl          t2, zero, sp
                  sub          ra, s5, a1
                  addi         t5, zero, -20 #init loop 1 limit
                  andi         tp, s1, 1222
                  auipc        zero, 1027446
                  or           t0, zero, a3
                  and          s5, gp, s7
                  slt          s11, s4, s10
sub_5_17_1_t:     auipc        a0, 311613
                  sub          ra, t5, a1
                  sltu         t4, a1, t6
                  or           a4, s2, t4
                  addi         s10, s10, -6 #update loop 1 counter
                  and          tp, zero, s9
                  addi         a2, zero, 6 #init loop 0 counter
                  ori          t0, s10, -1814
                  sll          t4, s4, gp
                  sltiu        t1, a3, 743
                  addi         a5, zero, 19 #init loop 0 limit
                  sll          ra, sp, a0
sub_5_17_0_t:     nop
                  addi         a2, a2, 10 #update loop 0 counter
                  sll          t0, a6, ra
                  blt          a2, a5, sub_5_17_0_t #branch for loop 0
                  slt          s11, zero, s3
                  bge          s10, t5, sub_5_17_1_t #branch for loop 1
                  srl          s4, a5, s6
1070:             bltu         sp, s8, 1085f
                  nop
                  and          a4, zero, t0
                  beq          a3, s6, 1087f
                  andi         ra, tp, -1681
                  slti         gp, a5, 763
                  andi         t0, s11, -1820
                  andi         t2, gp, -983
                  xor          gp, s7, s2
                  srli         t5, a5, 0
                  sub          t6, s6, zero
                  auipc        t5, 810367
                  addi         ra, gp, -1774
                  bge          zero, tp, 1087f
                  slli         t0, a6, 29
1085:             sra          s4, t1, gp
                  andi         tp, sp, -168
1087:             add          s2, gp, s5
                  srli         t1, s0, 25
                  bge          a2, s6, 1103f
                  bge          a5, tp, 1091f
1091:             bltu         a3, s2, 1111f
                  blt          tp, a4, 1111f
                  slt          s11, s6, t4
                  sra          zero, a6, t5
                  ori          s7, t4, 1852
                  srli         a2, t2, 29
                  sra          a5, t2, s3
                  beq          s0, gp, 1103f
                  sra          tp, a5, sp
                  srli         t5, s11, 10
                  andi         t6, a0, -194
                  srai         s10, a5, 24
1103:             slli         zero, a0, 6
                  lui          a6, 353297
                  slli         a6, a1, 18
                  bgeu         s7, s9, 1126f
                  and          a5, s1, t6
                  srli         a6, t6, 30
                  lui          a4, 292842
                  nop
1111:             sra          s11, t5, s3
                  auipc        t1, 373471
                  sll          tp, gp, s5
                  sltu         a0, a2, s1
                  add          a4, s11, s11
                  lui          a1, 885888
                  auipc        s8, 783874
                  lui          a6, 692242
                  sll          t1, s3, ra
                  sll          zero, t5, a4
                  slli         s3, gp, 11
                  slli         gp, s3, 0
                  ori          a0, a4, -953
                  xori         s9, a2, 1430
                  bgeu         s10, a4, 1139f
1126:             andi         t1, s3, 746
                  xor          a5, t6, sp
                  andi         a2, t2, 771
                  slt          s8, s8, s8
                  bne          tp, a6, 1133f
                  slli         a4, s10, 1
                  bgeu         s1, a4, 1147f
1133:             srl          s1, t3, t3
                  bne          s4, zero, 1136f
                  lui          t1, 457289
1136:             sltiu        a1, s0, 319
                  xori         a5, a1, -1672
                  ori          s8, t3, 793
1139:             ori          a6, t6, 2037
                  beq          s3, s10, 1149f
                  xori         zero, a1, -1463
                  bne          gp, s7, 1160f
                  sll          s4, s8, a3
                  or           s9, a3, sp
                  beq          a5, gp, 1157f
                  srl          s7, s8, t2
1147:             bge          s7, s5, 1158f
                  or           a0, t0, a2
1149:             bgeu         s3, s6, 1153f
                  nop
                  nop
                  ori          t1, s1, -910
1153:             add          s7, a7, s0
                  slti         a2, s10, 439
                  and          s7, t4, t3
                  andi         s11, s8, -413
1157:             slli         t5, ra, 3
1158:             blt          s4, a0, 1162f
                  srli         t2, a5, 30
1160:             srl          t1, a4, a5
                  srl          a6, a3, a6
1162:             bgeu         zero, ra, 1178f
                  blt          s7, tp, 1174f
                  xor          a3, sp, a0
                  srai         s9, ra, 12
                  srli         t6, s9, 25
                  auipc        t0, 388979
                  bne          s4, a2, 1176f
                  srli         t2, t6, 22
                  ori          tp, t3, 2011
                  slt          ra, a7, sp
                  beq          sp, t1, 1176f
                  or           s8, s1, a1
1174:             slti         s10, s3, -1713
                  slli         s11, t3, 23
1176:             bgeu         tp, a6, 1187f
                  sra          t6, t3, a7
1178:             beq          t4, t1, 1193f
                  xori         s1, s11, -1452
                  sub          s8, s4, s1
                  auipc        gp, 179998
                  slli         a6, zero, 24
                  auipc        s7, 846019
                  xori         t0, a6, 1925
                  srli         s3, ra, 31
                  srl          t2, a3, tp
1187:             sll          s3, a4, s7
                  or           s0, t0, a4
                  beq          t0, t1, 1195f
                  addi         a3, a2, 2014
                  nop
                  srai         s6, s8, 31
1193:             bge          t0, t4, 1211f
                  lui          s10, 516333
                  addi         s11, zero, -8 #init loop 0 counter
                  sltiu        a3, s2, 921
                  auipc        zero, 752143
                  add          s1, s1, t2
                  xor          a4, t4, t2
                  ori          s2, s2, -1953
                  addi         a2, zero, 6 #init loop 0 limit
                  sra          a1, s5, a6
                  sra          s1, s4, s1
                  lui          a0, 895072
                  xori         a6, a4, -1820
                  xori         s0, t2, 1278
                  and          tp, a4, gp
                  xori         t0, a5, -925
                  add          zero, a3, s2
sub_5_1_0_t:      lui          a1, 645301
                  addi         s11, s11, 1 #update loop 0 counter
                  and          a1, a6, t1
                  srai         s3, s0, 13
                  sltiu        zero, t3, 1309
                  andi         s3, a0, 1504
                  addi         t0, s3, 1244
                  slti         s2, s4, -1865
                  blt          s11, a2, sub_5_1_0_t #branch for loop 0
                  add          a0, gp, s10
1195:             sll          t2, s4, s2
                  xor          s0, sp, s5
                  bge          s7, s10, 1211f
                  sltiu        t2, s10, 1182
                  sll          s1, s3, a3
                  nop
                  slt          s0, a5, s9
                  bgeu         s0, s2, 1222f
                  xori         t6, a0, -757
                  slti         s1, t4, 1830
                  slt          s10, s9, a5
                  sub          a0, s5, s10
                  bgeu         s0, s7, 1226f
                  beq          t1, tp, 1220f
                  add          tp, s5, s7
                  slti         a4, t5, 290
1211:             or           ra, s11, a6
                  auipc        s11, 844596
                  slli         t2, t0, 15
                  bne          sp, s2, 1225f
                  sltiu        t6, s8, 604
                  and          s3, s4, t2
                  xor          a5, a3, s4
                  auipc        t4, 959935
                  sltiu        a3, s5, -1816
1220:             bltu         s2, a0, 1234f
                  sra          gp, a0, s10
1222:             and          s3, t5, s4
                  sltiu        s3, s8, -1635
                  blt          t3, t1, 1236f
1225:             or           t4, t4, t4
1226:             bgeu         a3, s10, 1227f
1227:             add          t2, a5, a0
                  slti         t0, t3, -335
                  sltu         s10, s8, s2
                  slt          t0, s2, s3
                  andi         t4, s6, 84
                  addi         a6, tp, -1707
                  slli         a6, s2, 1
1234:             addi         s4, t4, 536
                  srl          s6, a3, t5
1236:             xor          ra, a5, t1
                  lui          s11, 691791
                  sra          s4, tp, t6
                  xori         a5, t0, -1258
                  or           s2, s0, a1
                  or           s8, a0, a1
                  srl          zero, s1, t3
                  ori          s5, a2, -1641
                  andi         s0, t6, -557
                  and          t2, tp, t2
                  srai         a2, a7, 25
                  bgeu         t0, a0, 1251f
                  sra          tp, s8, a4
                  bltu         gp, a7, 1254f
                  auipc        t5, 1023485
1251:             sltu         t2, a1, t2
                  bne          a1, t2, 1261f
                  slti         s4, s0, -1867
1254:             sltiu        s9, t3, 806
                  beq          s3, t5, 1267f
                  blt          a7, s1, 1264f
                  bgeu         s3, s11, 1261f
                  lui          a2, 856700
                  sra          t6, s1, a4
                  lui          s2, 853336
1261:             sll          s7, a6, t1
                  srai         t2, ra, 21
                  sll          t1, a6, a2
1264:             slti         t4, s0, 746
                  andi         zero, a7, -1541
                  slt          a0, s4, s0
1267:             addi         a0, t0, -1324
                  xori         s10, s8, 651
                  blt          t4, s9, 1279f
                  bge          a7, s0, 1286f
                  sltu         t0, t5, tp
                  bge          t0, t2, 1276f
                  sub          s11, a5, s3
                  slli         zero, t5, 20
                  add          a6, s9, t0
1276:             lui          s2, 611416
                  bne          s10, t3, 1297f
                  nop
1279:             sub          t1, s0, s0
                  blt          t2, a3, 1295f
                  xori         s11, t2, 1019
                  slli         a6, s5, 20
                  sltu         s5, s1, s2
                  add          ra, s4, s11
                  beq          a7, t3, 1287f
1286:             bgeu         gp, s10, 1289f
1287:             addi         a2, s8, -1159
                  srli         t0, t4, 12
1289:             auipc        tp, 58744
                  srai         s11, s7, 12
                  sltiu        s5, gp, -689
                  sub          s5, gp, s6
                  andi         t1, a7, 893
                  sub          ra, s5, a0
1295:             addi         s2, a4, -611
                  and          zero, s6, s0
1297:             bltu         t6, a2, 1307f
                  sub          a5, a1, t2
                  and          s4, ra, s4
                  bne          t5, sp, 1314f
                  sltu         s1, s6, s4
                  slt          t5, s3, a1
                  bltu         ra, tp, 1314f
                  bge          t2, s6, 1315f
                  bne          t6, s7, 1321f
                  andi         s10, s10, -195
1307:             srai         a0, sp, 27
                  andi         s5, s3, 709
                  addi         t0, zero, 7 #init loop 1 counter
                  nop
                  addi         s11, zero, 5 #init loop 1 limit
                  srl          tp, a0, a7
sub_5_24_1_t:     auipc        s6, 935544
                  addi         t0, t0, -3 #update loop 1 counter
                  slt          a5, s8, a4
                  addi         s1, zero, 10 #init loop 0 counter
                  addi         s5, ra, -75
                  addi         s3, zero, 9 #init loop 0 limit
                  sll          s6, a2, ra
sub_5_24_0_t:     lui          s0, 486612
                  xori         zero, zero, 249
                  srl          a3, s11, t5
                  addi         s1, s1, -5 #update loop 0 counter
                  slti         s6, tp, 1513
                  bgeu         s1, s3, sub_5_24_0_t #branch for loop 0
                  bgeu         t0, s11, sub_5_24_1_t #branch for loop 1
                  addi         s0, s8, -638
                  ori          s11, s5, 1860
                  slli         t1, t4, 19
                  nop
                  srli         a3, s9, 19
                  lui          a4, 795443
1314:             or           t4, s0, gp
1315:             and          a4, s2, s5
                  srl          s6, s5, a1
                  xor          a5, a4, t4
                  and          a5, t3, a0
                  lui          t2, 735770
                  xori         a1, s0, 1515
1321:             srli         t0, t1, 28
                  beq          t1, s6, 1324f
                  addi         tp, s11, -747
1324:             srai         a2, tp, 9
                  sltiu        s8, a5, 805
                  bge          ra, zero, 1338f
                  srl          s8, s4, a6
                  sll          t4, t5, s10
                  and          t5, sp, t5
                  slli         s9, sp, 10
                  blt          t3, t3, 1336f
                  andi         t0, a0, 1058
                  slti         t4, s5, 2022
                  slli         t2, a3, 20
                  and          s4, a3, t0
1336:             sltiu        t5, a5, 558
                  sltiu        a2, ra, -978
1338:             andi         tp, s1, 1053
                  bne          s3, a2, 1353f
                  bgeu         zero, t6, 1348f
                  auipc        s9, 502948
                  nop
                  bne          a1, s10, 1363f
                  xori         s5, s7, -812
                  slt          t6, s9, s8
                  srai         a1, a0, 18
                  auipc        t6, 241245
1348:             srli         s9, s10, 6
                  andi         t4, s11, 1300
                  srl          a0, a2, a6
                  xor          s7, ra, s9
                  sltu         tp, a6, s3
1353:             or           t2, a0, s6
                  nop
                  nop
                  slli         a1, a7, 5
                  bne          tp, s10, 1372f
                  srl          s1, s4, s9
                  bge          s4, zero, 1370f
                  addi         s0, s11, 1719
                  slti         a0, a3, 2010
                  srai         a1, s0, 2
1363:             srli         t6, t5, 12
                  ori          s11, s0, 228
                  addi         a1, t0, 865
                  sltu         a5, s10, tp
                  addi         t5, a6, 405
                  auipc        s3, 1004402
                  andi         s9, a1, -1163
1370:             bltu         s4, s9, 1374f
                  bltu         s6, a4, 1381f
1372:             andi         s2, t2, 833
                  or           a1, s10, s7
1374:             nop
                  xori         s9, s0, -385
                  bge          a3, s8, 1391f
                  sll          s0, s9, s9
                  and          ra, a0, s1
                  srai         s4, zero, 10
                  or           a6, a5, s7
1381:             add          a5, a4, a4
                  bgeu         a6, s1, 1394f
                  bgeu         t6, gp, 1393f
                  slli         s7, a7, 6
                  srli         a4, t0, 25
                  sll          t1, tp, a2
                  beq          t3, a6, 1388f
1388:             or           s9, a3, s0
                  sra          t0, s9, s1
                  add          s0, s4, a3
1391:             sll          s11, a1, t0
                  slli         a3, a5, 10
1393:             bne          s9, a6, 1404f
1394:             sll          a5, s11, s11
                  slt          t5, s0, s3
                  sltu         s7, s3, t0
                  add          s4, tp, s6
                  lui          t2, 694978
                  add          s6, s6, a2
                  bltu         s9, s0, 1419f
                  or           a4, gp, zero
                  srai         a3, a3, 16
                  or           s0, s3, a7
1404:             bge          a3, s11, 1408f
                  ori          a5, s0, 781
                  sll          t4, gp, s6
                  nop
1408:             srai         a6, s2, 5
                  slt          t2, t4, a0
                  slti         s3, a4, -1818
                  sltiu        s8, a3, 1986
                  ori          s7, s9, 1057
                  beq          t3, tp, 1419f
                  slt          s0, s1, s1
                  srai         ra, a4, 5
                  srli         zero, t3, 24
                  bltu         ra, a6, 1428f
                  beq          s9, gp, 1422f
1419:             xor          s7, a2, s3
                  lui          s4, 588323
                  sltiu        a0, s10, -229
1422:             srli         s1, s5, 27
                  bne          gp, a2, 1437f
                  blt          a6, sp, 1444f
                  slti         s8, t6, -1973
                  addi         s5, t6, -304
                  andi         a6, s4, 1407
1428:             slli         s10, s3, 14
                  blt          a1, a0, 1432f
                  addi         a0, a7, -444
                  slli         ra, t6, 27
1432:             and          t5, ra, s9
                  and          gp, a4, s2
                  nop
                  sll          s2, a2, zero
                  bge          a2, s7, 1445f
1437:             slli         s10, t3, 6
                  bge          t4, t0, 1450f
                  sra          a0, s10, ra
                  xori         a5, sp, -1292
                  srai         gp, tp, 10
                  sll          a5, s4, a1
                  slt          s3, gp, tp
1444:             add          s10, gp, s2
1445:             sltu         s7, t3, t2
                  sltu         s7, a5, t3
                  sub          s8, s6, s11
                  addi         a5, a6, 1487
                  bltu         zero, s5, 1467f
1450:             xor          a2, a4, a2
                  srli         s10, a4, 29
                  bne          a7, tp, 1456f
                  sll          gp, s2, t6
                  sub          t4, tp, s11
                  beq          a2, s1, 1466f
1456:             xori         a6, t4, 1681
                  slli         t1, t3, 8
                  slti         a1, sp, 1294
                  slt          s2, a2, ra
                  lui          s11, 383877
                  bgeu         s9, t2, 1475f
                  srli         s6, a3, 30
                  auipc        t5, 679863
                  sub          a0, a3, s1
                  sra          s1, s10, s2
1466:             slti         t1, a6, -1435
1467:             sltiu        s10, a5, -934
                  andi         s4, gp, 15
                  xor          t4, a2, t3
                  auipc        s5, 168501
                  bgeu         s5, t1, 1487f
                  nop
                  xor          t5, t4, zero
                  sltu         gp, gp, t4
1475:             nop
                  sltu         t5, s8, s4
                  bne          sp, gp, 1491f
                  bltu         a4, s4, 1497f
                  srai         a1, s4, 26
                  sltu         s7, s1, s8
                  sltiu        t2, t5, 143
                  auipc        t0, 123373
                  bltu         ra, s11, 1503f
                  addi         a0, s10, -12
                  lui          s1, 452279
                  srai         zero, s3, 3
1487:             or           a3, s1, s1
                  sltiu        a4, a1, -232
                  add          a4, a4, ra
                  srl          a4, s0, ra
1491:             srl          t2, s6, gp
                  bgeu         s8, sp, 1498f
                  sll          a4, s11, s0
                  andi         s10, a5, 944
                  bge          s4, sp, 1505f
                  lui          s6, 688788
1497:             and          s4, t2, s10
1498:             beq          s7, s8, 1509f
                  add          a6, s0, s0
                  auipc        s7, 80255
                  nop
                  ori          tp, s2, 1259
1503:             beq          a7, t6, 1521f
                  sltiu        gp, s4, -922
1505:             add          s8, gp, a7
                  lui          gp, 349462
                  and          a5, a4, a5
                  sltiu        s0, s2, -358
1509:             andi         s7, s1, 1541
                  sltu         t6, t5, a0
                  slt          s10, s7, s3
                  auipc        s11, 163480
                  sra          ra, s0, s2
                  slli         s11, gp, 19
                  addi         s1, t5, 1571
                  or           s11, a1, a6
                  and          s5, s1, t4
                  bge          s8, sp, 1524f
                  or           zero, t4, t0
                  blt          s5, s6, 1524f
1521:             or           a3, s10, a4
                  bne          gp, a3, 1524f
                  bne          a2, t6, 1524f
1524:             sub          s5, sp, a1
                  andi         tp, a3, -1637
                  or           s2, t6, t5
                  lw           ra, 4(t3)
                  slti         t4, a7, -823
                  sltu         t6, t6, s6
                  addi         t3, t3, 20
                  xor          a1, s4, gp
                  nop
2149:             addi x31, x1, 1
2149:             jalr x31, x31, 0
sub_3:            auipc        s10, 316238
                  auipc        s7, 408894
                  srli         gp, a0, 6
                  slt          a4, s9, a0
                  addi         t3, t3, -64
                  sw           ra, 4(t3)
                  andi         t2, a4, 707
                  addi         t1, tp, -261
                  srl          s7, t1, a5
                  addi         a6, zero, 6 #init loop 1 counter
                  sll          t5, a3, a0
                  addi         s11, zero, -4 #init loop 1 limit
                  add          a3, a0, s6
                  add          a0, a6, t1
sub_3_0_1_t:      sltu         a0, s6, s0
                  addi         a6, a6, -9 #update loop 1 counter
                  addi         a4, zero, 1 #init loop 0 counter
                  sub          a5, t1, a6
                  ori          t2, zero, -1325
                  addi         a1, zero, 18 #init loop 0 limit
sub_3_0_0_t:      slt          s5, zero, a5
                  auipc        s4, 207699
                  addi         a4, a4, 10 #update loop 0 counter
                  blt          a4, a1, sub_3_0_0_t #branch for loop 0
                  srli         s1, t5, 4
                  sltiu        tp, s5, 847
                  sltiu        t2, t5, 1600
                  bge          a6, s11, sub_3_0_1_t #branch for loop 1
                  or           s8, a2, a7
                  bne          s3, s1, 11f
                  srai         s4, a3, 21
                  xor          a1, t1, a5
                  sub          s4, a2, a1
                  add          zero, s1, sp
                  bgeu         s3, a5, 10f
                  nop
                  bge          s2, tp, 17f
                  auipc        t4, 95913
                  andi         s11, s0, 1243
10:               slli         a5, t4, 20
11:               or           a0, tp, t0
                  slti         a2, t0, -651
                  sll          s10, tp, s1
                  slti         t4, t2, 1164
                  sub          s8, ra, a3
                  sll          s7, t4, s5
17:               nop
                  slti         a0, sp, -1945
                  beq          a6, s1, 39f
                  sll          a0, tp, s9
                  beq          a7, a6, 22f
22:               xori         t6, s8, 572
                  sra          tp, s0, t3
                  and          t2, s6, a7
                  bgeu         ra, t0, 27f
                  sltu         s10, a1, s3
27:               slt          t2, a5, a3
                  andi         t1, s2, -630
                  bge          s8, a3, 36f
                  xor          a4, s1, a3
                  beq          t4, a7, 49f
                  bne          s7, s1, 41f
                  slli         t0, t5, 4
                  ori          s4, tp, -1793
                  xor          s4, a6, ra
36:               lui          t4, 472094
                  sltu         a6, a6, a5
                  ori          a0, a3, 440
39:               addi         s5, s1, -873
                  lui          tp, 162309
41:               xori         s8, zero, 729
                  beq          zero, a7, 43f
43:               sra          a1, a1, a6
                  andi         t0, t1, 1053
                  beq          a3, sp, 49f
                  bgeu         s4, s8, 49f
                  xor          t2, s7, a0
                  beq          a2, s6, 49f
49:               lui          s8, 1001743
                  lui          tp, 965149
                  lw           ra, 4(t3)
                  andi         tp, s8, -11
                  srl          s6, ra, a5
                  srl          a3, gp, t2
                  srl          a3, t2, t3
                  addi         t3, t3, 64
                  or           s4, a7, t0
                  sra          t4, tp, s8
                  nop
                  xori         a6, s8, 1100
                  slt          gp, sp, a0
91:               addi x22, x1, 1
91:               jalr x22, x22, 0
sub_2:            slti         t1, s0, 1289
                  bltu         t3, s10, sub_2_stack_p
                  sra          t1, t0, zero
                  srl          a4, s7, t1
                  xor          s6, a1, s8
                  sub          t2, s11, a3
                  sltiu        s2, s10, -1709
                  sub          a0, s1, s11
                  slli         s6, s6, 30
sub_2_stack_p:    addi         t3, t3, -36
                  sw           ra, 4(t3)
                  lui          a4, 436636
                  addi         s3, zero, 0 #init loop 0 counter
                  xor          s7, a7, s11
                  add          s9, t5, s10
                  xor          t0, a6, s10
                  or           a0, a1, s9
                  sltu         s1, s8, t4
                  ori          a0, s7, 1620
                  andi         t6, a1, -379
                  slt          gp, t1, s1
                  addi         t5, zero, -2 #init loop 0 limit
                  srli         a1, s0, 23
sub_2_0_0_t:      ori          a4, s5, -1175
                  sra          s9, t2, s10
                  add          s4, a0, s2
                  and          a0, a0, a0
                  addi         s3, s3, -8 #update loop 0 counter
                  slti         s6, a6, 241
                  slli         zero, a5, 12
                  bge          s3, t5, sub_2_0_0_t #branch for loop 0
                  srli         a5, a6, 14
                  srai         a3, s5, 30
                  bge          s11, t0, 8f
                  sub          t2, s0, ra
                  blt          a7, s2, 5f
                  sra          s9, s4, zero
5:                sltu         t6, zero, s6
                  sra          s8, s1, s11
                  bltu         s1, sp, 19f
8:                slli         t4, a7, 10
                  lui          s5, 350722
                  bgeu         s4, t5, 21f
                  and          s10, zero, a0
                  ori          a5, t6, 1781
                  or           ra, a7, t6
                  xori         a4, a3, -649
                  srai         s8, t5, 7
                  add          t0, s11, t5
                  slti         ra, s0, -1523
                  xor          t4, s0, tp
19:               and          t1, a6, s6
                  sra          t0, s11, zero
21:               sltu         tp, s4, a5
                  bltu         t5, t0, 33f
                  sltiu        s0, t1, -133
                  slli         s3, a5, 17
                  andi         zero, a2, 163
                  bgeu         t4, ra, 34f
                  lui          s9, 500015
                  slt          s4, zero, t1
                  bne          s2, t1, 38f
                  andi         a1, t5, -788
                  nop
                  blt          s4, a0, 44f
33:               bne          sp, t3, 40f
34:               bltu         gp, t1, 43f
                  xor          s8, t1, s4
                  or           a0, s11, s4
                  xor          s10, s6, t3
38:               sub          t6, a5, s5
                  slt          s3, t6, t5
40:               sltu         s5, sp, a2
                  sra          s9, a7, t0
                  sra          s3, t6, t4
43:               bgeu         t0, s9, 52f
44:               bge          s9, t5, 64f
                  bge          a0, a7, 48f
                  nop
                  srli         s11, t3, 29
48:               bgeu         a1, s10, 49f
49:               bne          s9, s4, 69f
                  slt          s4, s11, s1
                  blt          ra, a7, 65f
52:               sltu         s4, s3, t4
                  bge          s11, s5, 58f
                  slt          s5, s11, s8
                  sltiu        s9, a4, 575
                  slti         s8, s7, -172
                  bge          s7, s9, 68f
58:               slt          s11, a3, s8
                  sra          s11, a6, t4
                  or           a3, ra, s10
                  slt          a1, t4, s11
                  slt          s6, s1, tp
                  xori         s4, t4, 427
64:               or           s2, t0, s5
65:               sra          s9, t3, s7
                  srl          s3, s11, s6
                  sub          t6, s1, s11
68:               srl          s9, a7, ra
69:               nop
                  ori          a0, t1, 1008
                  beq          a7, s8, 82f
                  lui          t2, 115603
                  slti         s5, zero, -1162
                  and          t0, a7, s6
                  nop
                  nop
                  slli         s10, a0, 22
                  sub          s7, s8, s5
                  bne          s8, t0, 82f
                  beq          s10, a0, 82f
                  slli         t6, a2, 2
82:               slti         t0, s2, -605
                  or           t6, a4, a3
                  andi         s3, t2, 1255
                  lw           ra, 4(t3)
                  sltu         a1, t6, sp
                  or           s3, a6, gp
                  xori         a4, s8, 281
                  lui          a0, 762127
                  xor          a2, zero, t2
                  addi         t3, t3, 36
                  xori         s5, a7, 1051
125:              addi x30, x1, 0
125:              jalr x30, x30, 0
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
.word 0xbddc683e, 0x5370f621, 0xed3cc5da, 0xcf5b7768, 0xa86e933d, 0x03b44dba, 0xadbb93e4, 0xbf85b984
.word 0xa9ce954b, 0xe24516df, 0x7f949785, 0xdb916bff, 0xaee8bef4, 0x7dee6330, 0xb4e97824, 0xa91e7036
.word 0x8eac3a1d, 0x6d3ee0bc, 0xee7f91a8, 0x40f90d9f, 0x8cf701ee, 0x0bfebc81, 0x89f21283, 0x45aa8bc4
.word 0x7d56707c, 0xdb8da0d9, 0xa80008d4, 0x80404da0, 0x9b2f2004, 0xe098eff4, 0x7a0b46cc, 0xcaf5a4b8
.word 0xb0cb04a5, 0x8f4a49bd, 0xa8dff7e0, 0x1fde4927, 0x0ec875c3, 0x12a3b93b, 0x8882df27, 0x5619335d
.word 0x112fbd4d, 0xd3a4d6bd, 0xd7769961, 0xbcd76ff8, 0xe03241ec, 0x9bd55df0, 0x0f419e8a, 0xa309978a
.word 0x4c389946, 0x4f93972e, 0x08b32b1e, 0x01db03a8, 0xc6391940, 0x5f3ce9db, 0x32ff3653, 0x62100cca
.word 0x3e3172d3, 0xbeb4c8ad, 0x52331da0, 0xcd7ae09b, 0xa38bcd8c, 0x591297e0, 0x9c31e2f3, 0x4f6bd130
.word 0x098d959e, 0xee410946, 0x8e81f385, 0x76e9aed0, 0x719d5257, 0x89229431, 0xa0a94e8d, 0x78aa7ed6
.word 0x75af3f65, 0x5041a932, 0x85565ffe, 0x8f8af495, 0x9546e4c1, 0xe52630ab, 0xe5f53625, 0x70428cfd
.word 0x103606a7, 0x6082f320, 0xac7d5c6c, 0x61dab92d, 0x36cf8407, 0xe3f0b47e, 0x7d618971, 0x713e144e
.word 0x647b87f9, 0x9e01d2bc, 0x9f697374, 0x41bd7445, 0xa98221aa, 0x81cf2c7b, 0x945a2ccf, 0xdf913ed7
.word 0xc2bc2d52, 0xe2f28649, 0xadafc31e, 0xadc77db6, 0x975503a7, 0x6999cda9, 0xacce1744, 0x2449274e
.word 0xca5a959b, 0x5fb5602d, 0x96101aff, 0x9560529e, 0x20a2ed94, 0xedb7636a, 0x19009ff3, 0x729fbbfa
.word 0xede5742b, 0xd7177584, 0xaae978be, 0x258cc702, 0x455e6549, 0xbae91d68, 0x9bab6317, 0xbe64d1cc
.word 0xc68c2e3b, 0xa8f23b5f, 0x997b71bd, 0x0dcca3bb, 0x8cf6f361, 0x979f1c0f, 0xc0624a80, 0x77d05fa5
.word 0x51636ea8, 0x4951bff7, 0xe3dde61b, 0xfe22ae65, 0xec6e7927, 0x52bab66c, 0x19eb3738, 0x30d3d842
.word 0x3d4acdc8, 0xa9413758, 0xf6d989a6, 0x57bf76a4, 0x1c1648e3, 0x7d76f3c6, 0x6a8007b1, 0xd5934ad2
.word 0x45508edf, 0x0b250adb, 0xa0d860ca, 0xb808653f, 0x52c318f2, 0xac207701, 0xa7666e39, 0x78680166
.word 0xff2f93ad, 0x0206656a, 0x15955fa6, 0x44999214, 0x4d45c15f, 0xa959ed55, 0xb04a7c72, 0x6e5fe30d
.word 0x4fab1f0d, 0xc58a388c, 0xdf652e4e, 0xd072ff0e, 0xa1035121, 0x90550ba3, 0xdba0d395, 0xb92afbab
.word 0x2f2d4b5c, 0x8a3bb3bf, 0x7fe00c50, 0x4ea27a5a, 0x8b5b0934, 0x52a1fd45, 0xdc0b7e1a, 0x5e8e82bb
.word 0x38d94782, 0xebe5c770, 0xca61b7d4, 0x835618f9, 0xb2382291, 0xa021748a, 0x43e87688, 0xf693736c
.word 0x92cf4730, 0x111e6cc3, 0xd4b68d65, 0x3703fc85, 0x7217b095, 0x1537f9fc, 0xc1430005, 0xbf7d4cba
.word 0x12f3f4b6, 0x425d8fba, 0xfc54efbb, 0xec69d761, 0x201d1c7c, 0x031f8635, 0x73caef36, 0x16c573f6
.word 0x356fa984, 0xc19d7e2d, 0x459d5657, 0xb9ec1691, 0x3e2501ec, 0x14ab8b83, 0x44617d5f, 0xcbcd6627
.word 0x718b58e0, 0x07dba84b, 0xb9e9ac39, 0x14ff8de6, 0xc1f107f0, 0xec19ca06, 0xdbffdea3, 0x3f370fc5
.word 0xdd3198bb, 0x607ce7ff, 0x23094932, 0xb3c55cd3, 0x1084f7ee, 0xa5c289c2, 0x52cda3ff, 0xe3a2cd69
.word 0xf304c546, 0xee24e103, 0x54729be5, 0x0951ed8a, 0x5007773a, 0x363b4d31, 0x6cb6868f, 0x1719fc15
.word 0x2fba5c02, 0x263e3a2d, 0x8e4d706e, 0xe89adcb0, 0x2e47afb6, 0x7aee8b8b, 0x8ac0da09, 0xafee7126
.word 0xf728a098, 0x1d92ee76, 0xdbf91b74, 0xe0560734, 0x7c370fa1, 0xd124a183, 0xdb2ac62e, 0xa829e4fb
.word 0x96a9ee14, 0x039db929, 0xae7b0307, 0x59b8f8d0, 0xf0e0a25c, 0x91e12f51, 0x31d79279, 0x82b65621
.word 0x70b55964, 0xd364b2cd, 0xb4a65bb1, 0x48e75639, 0xa3776a12, 0x5e7f4db8, 0x0987b9eb, 0xe15ed035
.word 0x80bd833b, 0x470f22d5, 0x7b6fb2b2, 0x257cdbca, 0x052fce09, 0x8562bdb1, 0x1ad8467c, 0xd5c2563b
.word 0x9f6f1c46, 0x5816c5f1, 0x56e2c43e, 0x291f50e8, 0x936a5781, 0xadafe1ff, 0x5507cabe, 0x4c3e6677
.word 0x912fa589, 0xe7fa5009, 0x08c6a55f, 0x019e8a0a, 0x9f1a7620, 0x23d27209, 0xef708f2a, 0x941f4c56
.word 0xb254076e, 0x9e048d1b, 0x0e22f707, 0x595095a0, 0x3e8b6e64, 0x424ba853, 0x5a55f9c3, 0x2318ac84
.word 0x8339841d, 0xfbc8de1e, 0x8f85c933, 0xddc96db4, 0xd1f7c6f7, 0xb19d6c26, 0xca10badd, 0xfe6243e8
.word 0x75a3f273, 0x6896d7f6, 0xcd7c7426, 0xec87341f, 0x1b6e8ebf, 0xea1f1b44, 0x20a0a5e3, 0xe73ce7ec
.word 0xeaa63064, 0x2ca87760, 0x350c7b2f, 0x4a6928d9, 0x3cd9b7f0, 0x0c51c926, 0xb8a5dab3, 0x659fbde0
.word 0x9b578765, 0xf41376ff, 0x0a599824, 0xf2e0333c, 0x5cb1a087, 0xd0cd4367, 0xed4b5149, 0x796eacde
.word 0x205b8314, 0x3c2d4291, 0x028c972b, 0x04f657ab, 0xd7431988, 0x89aefe86, 0x0204f963, 0x71462328
.word 0xeb1a3738, 0xbcf1841d, 0xa944c94d, 0x85a0e816, 0xf8ce7cd8, 0xaa20d6d8, 0x25304ffc, 0xc045508e
.word 0xb3e87592, 0x92b51300, 0x03ce5c58, 0xcace6da3, 0x6bb09e83, 0x3f7ff86f, 0x91a17d27, 0x1864678f
.word 0xe04d4560, 0xdca22e98, 0x5fb11726, 0x0528806f, 0x85a99778, 0x6d41e68f, 0xdda41c03, 0x39c2d996
.word 0x494172b6, 0x38d2411a, 0x5da9626f, 0x74c903f3, 0x2c624095, 0x19285454, 0xff5117e3, 0x605ee16a
.word 0x1372c2d1, 0x183f1fb9, 0x14d95f35, 0x4ab0e408, 0x437c0600, 0x03f9e765, 0xfbc2c097, 0x69c03ceb
.word 0x7afad2c3, 0x000eb169, 0xc3fdc713, 0x93fbb9e9, 0xa066cb28, 0x26aa45be, 0x14c6a3aa, 0x48d4fadf
.word 0x4c9a4764, 0xa3b40f47, 0x7624ca49, 0xe5abec45, 0xa39dc621, 0x05b01766, 0xae7ecd16, 0x5a456acf
.word 0x971c8f30, 0x37700668, 0xee7e21f3, 0xdcc91af8, 0x03192692, 0xd33594cd, 0x8f51b4df, 0xc8b4b2ea
.word 0xef182134, 0x1b73b77a, 0x96cc4419, 0x1119203c, 0x7e9ada4e, 0xc4c34abb, 0x7b858e32, 0x325c2a35
.word 0x375cf10a, 0x2c5b9eb8, 0xece29336, 0xc7e238d8, 0xcb787610, 0xd472508d, 0x2f8ac0ca, 0x6e28d936
.word 0x7e21b8f7, 0xa908de9b, 0xf0b917b3, 0x15176280, 0x482a2ed8, 0xd5bb7a71, 0x18916e03, 0xc81c55ef
.word 0x5fb5501b, 0xe5a31b12, 0x7b8923c5, 0xce2a24c5, 0x1de714fd, 0xb5508c6b, 0xc17ab5c8, 0xfa558d51
.word 0x8d8d6a13, 0x01c617e7, 0x54891c16, 0x40a0b8d9, 0xa8f70b97, 0x696f3a30, 0x5fef9208, 0xde53bad7
.word 0x83e6bc0b, 0xa7d9be91, 0x5eedf0b3, 0x5bf16300, 0x6df64f08, 0x279cfda6, 0xc1101de8, 0xbd689327
.word 0xc82e4f72, 0x4a4e3323, 0x23b23582, 0xfde106ef, 0x061e9d9e, 0xa4a8e961, 0xd724853c, 0xccb09293
.word 0x17c10ca7, 0x40fd7da6, 0x9ea357e1, 0x1e924114, 0x96e764b5, 0xad7dba51, 0x9e1d6852, 0xaf306a0d
.word 0x5d263d98, 0x8a8cc190, 0x7fc92239, 0x835f41a7, 0xa5a3102d, 0x3ef8867a, 0xfae0ce21, 0xe843e295
.word 0xa203512c, 0xfbc45ef4, 0x657dadf2, 0x53bfe96e, 0xbf7701a0, 0x907040f5, 0x63843c5f, 0xabc12812
.word 0x30259e01, 0x680be6a1, 0x9463f3c7, 0xe71657ac, 0xde975540, 0x6f022dfd, 0x4ff65d8d, 0x6ca8a93f
.word 0xe66a5811, 0xb2c617e6, 0xe7f4242f, 0x674a6943, 0x6426bdb0, 0x11305365, 0x34681c9c, 0x9ad7207f
.word 0xb7a2cf37, 0x4911e93a, 0x208de26a, 0xba7ff28a
.section .region_1,"aw",@progbits;
region_1:
.word 0x7e52cf51, 0xf5fb3f56, 0xf309bb58, 0xf975f9b5, 0xfbc987af, 0xd8b41987, 0x5f5200bf, 0x1a3a86d9
.word 0x19c75dbf, 0x75d4627e, 0x45e7e34f, 0x9df6c422, 0x711ed9ff, 0xaa03ff1b, 0x9434e472, 0xe8df9db1
.word 0xa49fd69f, 0x220c5f11, 0x6f1f873b, 0xc2a8804b, 0x8b982c53, 0xa9b96a6b, 0xd14e4866, 0x7b09276d
.word 0xdf5cc51b, 0x3f80040c, 0xa288db9e, 0x1c37f43d, 0xc562f298, 0xa99983c5, 0x854b7366, 0x727addc6
.word 0xf7d7c063, 0x30d07141, 0x9c2433f0, 0x562e3efc, 0x28cc265a, 0x52d19098, 0xea4ff161, 0x50f36d9b
.word 0x6b66a791, 0x14fc7513, 0x941bbeac, 0x6b248f9b, 0x2b18b8f1, 0xfbacb5d5, 0xa0192a19, 0xb806373c
.word 0x0308e9a2, 0xe11ca511, 0xadae2c3b, 0x0dee2e34, 0xaa3e3dbd, 0x4ef9c848, 0xa2d3cad3, 0x755e0ce5
.word 0x869564ab, 0x9afdf69f, 0x68cac590, 0x462457c5, 0xab4e2a0e, 0x0c1e3b42, 0x98da7821, 0xdf9dbbc4
.word 0xe38b2a4d, 0xde90fc58, 0x2e584e0d, 0x1b1aa7ff, 0x0b21bf15, 0xef0a5040, 0x7ab80a35, 0xf7d4b154
.word 0xf23f59a4, 0x1c0bad0b, 0x22e1e705, 0x8e6ebd71, 0x86fb37d5, 0xecd3d7c1, 0x3f83554e, 0x0f24da8d
.word 0xc3d5cc1a, 0xc960be5d, 0x09f0bba6, 0x4418b4a7, 0x9b603926, 0xc6b66913, 0x11265fd5, 0x21102991
.word 0x7c95c66b, 0x4cb4485f, 0x237ea903, 0x99b9bcd6, 0xbd306d6d, 0x7f3f957c, 0xaf06f1fa, 0xa3946850
.word 0x68e11ada, 0xa44c39b6, 0x341dbfa6, 0xa8f357a0, 0xdf65c2fe, 0xbf325601, 0x0080e060, 0x71da4715
.word 0xc143dfaa, 0x5aae6770, 0xf10b4cda, 0xf3422953, 0x1a1d3113, 0x8778c110, 0x21e9cf4c, 0x99548627
.word 0xa48c0f78, 0x047e26ed, 0xbbd7219b, 0x5e0d0d3d, 0xc97b06aa, 0x3ad3c959, 0xe1939f26, 0x0ed7fbb8
.word 0xd3d58807, 0x9dad8514, 0x433e3c44, 0x9245e41c, 0x8abc8679, 0xf81fe04e, 0x2e8e3197, 0x4eb8e929
.word 0xb1281c59, 0xead757a0, 0xf235471f, 0xfd3996e9, 0x8cbc0d6b, 0xaf921c91, 0xdc773ef7, 0x531ccb74
.word 0xdc5f42c7, 0x443f2545, 0x82a86a6f, 0x83b5c35f, 0x196cebe1, 0x2281c36c, 0x09e40856, 0xc5270602
.word 0x6b97c804, 0xf16923c4, 0xe5acd856, 0xd32b28c5, 0x3b041b5c, 0x5eceda39, 0x78f42a10, 0x753c603b
.word 0x55855601, 0x0cd6f484, 0x37030f66, 0x15dbef6c, 0x98fadc80, 0xdf709feb, 0xc2d45664, 0x30e1dc03
.word 0x4ab75b50, 0xa926433b, 0x3471dba5, 0x63ff67c2, 0x885aa178, 0x0f22de6a, 0x18cc23a3, 0x7d6e8fe7
.word 0x578e1d7e, 0xc2e349e4, 0x6fb85ab2, 0x679bba14, 0x2fe7f759, 0xcf7af66b, 0xb3021e46, 0x89f9f4fe
.word 0xf52ef1f9, 0x509a5dcb, 0xece48a8d, 0xa91434fa, 0x714c9354, 0xd1f459cf, 0x04aec159, 0xcaddd480
.word 0x38ae3b9d, 0xf8f06aed, 0x59eb2be5, 0x8a6fda6d, 0xf002490d, 0x9a384726, 0x6d4dc517, 0xb8d93bbf
.word 0x360edb09, 0x87d19516, 0x369160bc, 0x79531eb8, 0xaeb92271, 0x70a5b7c9, 0x2db267cb, 0x28b4bbac
.word 0x56ca44c1, 0x4f917c3f, 0x07cec00a, 0x68297ea4, 0x4780e077, 0xc9be62db, 0x6ea7922c, 0xd762fc6f
.word 0xb2cceaa6, 0xfadf1017, 0x630e9749, 0xf38317c4, 0xedb5681c, 0x71350c47, 0xff2db698, 0x0c3bf942
.word 0x7fd7abe1, 0x398fcb00, 0xa8144a8f, 0x2c884c4b, 0x010a7118, 0xb69319e9, 0x7753cb97, 0xcadb84f8
.word 0x3db77f9a, 0xdecaca8b, 0xb7048e7f, 0x3f584aff, 0x1a563b3d, 0x991dbe00, 0xe24dc195, 0x3f9096f7
.word 0xe0aedaf6, 0xc1e1367e, 0x1fad3f4b, 0x23cd8e93, 0x18505787, 0x80cebbbc, 0xd205686c, 0x1d83a621
.word 0x86a95c43, 0xca9cc900, 0x3496e67c, 0x8721dff8, 0x4fcd9ddd, 0xc4739f43, 0xcbb79e4e, 0xb9a0c466
.word 0x5a1a51b6, 0x44e4e228, 0x2997f5fe, 0x1f1ef569, 0xb6cf274d, 0xf765e007, 0x484b675f, 0xce2df47a
.word 0x02427aa9, 0x1e13bb13, 0x56830d2c, 0xaff20298, 0x0d1f82a4, 0x97ae9cae, 0xc7a870f1, 0xf8232fc1
.word 0x3abd7790, 0x4f99f417, 0xce5e2948, 0x3226a983, 0xdf7a17cd, 0x85b4ac44, 0xe9a8bedb, 0x9e7c94ae
.word 0x431d602a, 0x4fd5e1bc, 0x53fbb2fc, 0x84a102d4, 0x62bcc26a, 0x791151ad, 0x2a365b98, 0xd5fff5c8
.word 0x9767dc20, 0xdaf9fa4d, 0x1d7fa6c7, 0x306f904f, 0x42770e71, 0xc93d08d2, 0x9709baf0, 0x0cb9bd3f
.word 0x337f0505, 0x5cec326e, 0xdbbddaed, 0x95250834, 0x33a709af, 0xaa85262d, 0x57041cec, 0xdbee3f1a
.word 0xcc378ff7, 0x5b79e140, 0x32b58ff7, 0x5e07077c, 0xcc1afe11, 0xf1a1c1f3, 0xe5e622b8, 0xdd0eff0d
.word 0xf30c6db6, 0xa53d1da2, 0x0eaf7541, 0xcd861a6e, 0xcfd38602, 0xf2eca709, 0x685ef0ec, 0xe6cfefea
.word 0xd9ba8020, 0x8ebae97f, 0x808f831a, 0x103bd82a, 0x4cf519a1, 0xb30750bd, 0x147bb813, 0x0f128395
.word 0x0c5ecaa6, 0x9fd0a149, 0x5f3d12ed, 0xb250af28, 0x3476e748, 0x19d32b42, 0xcf11ee08, 0x907bd728
.word 0xf3a7ffad, 0x60e4a5b2, 0xd1b8f70e, 0x855484c2, 0x7bb0bf30, 0x8267bf4f, 0x05244734, 0x211d3272
.word 0x36c23653, 0xab90692d, 0xe1cddc83, 0x950f6f88, 0xe93a0c1f, 0xdf595b17, 0x2922f478, 0xbeae7bdb
.word 0x4884dc0e, 0xb7112890, 0xaecf2584, 0xd20c8beb, 0x98477794, 0xaec0566e, 0x8ac34d33, 0x014221ed
.word 0x6beecf89, 0x1c74be73, 0x3c07fbf1, 0xd6a1ccf1, 0x60cdd785, 0x2914213b, 0x7d92a781, 0x1354b053
.word 0xc469681d, 0x436c1bad, 0x00ff2ded, 0x35727672, 0x191ab497, 0x14de68a3, 0xfb0bffdf, 0x23742d7d
.word 0xaf10de72, 0xa74f1b83, 0xb44ab071, 0xf89abe37, 0xf5a8f06d, 0x3bc85d5a, 0x79f2ab5b, 0xd2f367e0
.word 0x5d11c662, 0xc389feb1, 0x1a46d8cb, 0x72df61a3, 0xf8123e36, 0xc89cd6fd, 0x7181fbf5, 0x8ee8b6a2
.word 0x2daf1d8e, 0x0e88f3d3, 0x1f6ba79e, 0x1943fd59, 0x02f13992, 0x601b9b3e, 0xf5a2ce26, 0x8d040efb
.word 0x96461501, 0x7b3685b7, 0x29797a7a, 0xec877482, 0xe17f4e32, 0xb009816c, 0x33884e11, 0x4af2e062
.word 0x3d08ed6d, 0x4f5472b8, 0x7ac4a1ff, 0x2fe821c9, 0xc1516d37, 0x8d8231a7, 0xb132b5f3, 0x38f0f93d
.word 0xef5f8b06, 0x7bf636fc, 0xa0f7b3b4, 0x7e075dc0, 0xfeb0a4a3, 0x44cdc9a1, 0x043b1a9d, 0x44c2d4d9
.word 0xe3b129a9, 0x7186703c, 0xed865306, 0x353548e4, 0x04ef4b20, 0x09ab124b, 0x5b338017, 0xebbcdbcf
.word 0x0b9d3e2c, 0xdec73f16, 0x4c2dcd89, 0x3645db63, 0x44e5b144, 0x5724c8f8, 0x7b3dfbfe, 0x4029c586
.word 0x33bfa02f, 0x3b9d855c, 0x2805bf33, 0x76261736, 0x25abd688, 0x5a3661a0, 0x91384524, 0x94819a7f
.word 0xf4135601, 0xf066ba44, 0x2118d95e, 0x02a12c8c, 0x96bb66fb, 0xc1722144, 0x789184c9, 0xd33eb3ab
.word 0x5d65e2ec, 0x35684f54, 0x2981f9cc, 0x99aa5d3d, 0x78f486f7, 0x1585bcd6, 0x6737ee3f, 0xc18acdc9
.word 0x9048cd72, 0xe0479d68, 0x3d818dae, 0xbe9438a7, 0x555fc105, 0x5426ac87, 0xea661272, 0x5fe389a4
.word 0x7f13fc1b, 0x11db57d7, 0x940e2e68, 0x26940822, 0x5d9d5ead, 0xff9a22ed, 0xc8cfa390, 0xaa2a63c8
.word 0x903f9c53, 0x2dcba403, 0xecf78d05, 0x372828fa, 0xf5e24e58, 0xf6e89a3b, 0xa7b93765, 0xd42ad00d
.word 0x02a9be3d, 0x90b941e4, 0xabae467f, 0x290b8fc9, 0x7c53f9ab, 0x00af5aa2, 0x439e7664, 0xf3d12225
.word 0x6772d618, 0xdb2cad14, 0x19c2aee6, 0x4be612d7, 0xe9be4a78, 0xd1338441, 0xb30a0596, 0x9b0d5d4f
.word 0xc421ca7d, 0x5bba439e, 0x8e8aaa2f, 0x78159348
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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x17, x28, zero
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x27, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x27, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x27, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x27, x13, ecall_handler
                  li x13, 0x1
                  beq x27, x13, instr_fault_handler
                  li x13, 0x5
                  beq x27, x13, load_fault_handler
                  li x13, 0x7
                  beq x27, x13, store_fault_handler
                  li x13, 0xc
                  beq x27, x13, pt_fault_handler
                  li x13, 0xd
                  beq x27, x13, pt_fault_handler
                  li x13, 0xf
                  beq x27, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

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
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x28, x17, zero
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
                  add x28, x17, zero
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
                  add x28, x17, zero
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
                  add x28, x17, zero
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
                  add x28, x17, zero
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
                  add x28, x17, zero
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
