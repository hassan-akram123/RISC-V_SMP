.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x14, kernel_stack_end

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
                  li x0, 0x80000000
                  li x1, 0xf0a24e23
                  li x2, 0x33d3d3f0
                  li x3, 0xd
                  li x4, 0xf8f2eaf5
                  li x5, 0xf
                  li x6, 0x0
                  li x7, 0xda73f4c7
                  li x8, 0xd
                  li x9, 0x80000000
                  li x10, 0xf977f4ba
                  li x11, 0xfd0f97b5
                  li x12, 0xf4da31f3
                  li x13, 0x0
                  li x15, 0xfe0e5de4
                  li x16, 0x80000000
                  li x17, 0x30a6a5c6
                  li x19, 0x0
                  li x20, 0x5
                  li x21, 0x0
                  li x22, 0x96717be4
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x60f3583
                  li x27, 0x26947d37
                  li x28, 0xc
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x0
                  la x18, user_stack_end
main:             srl          tp, s6, a3
                  slt          s5, s3, s8
                  la           ra, sub_2
                  addi         sp, s7, 1559
                  addi         ra, ra, 997
                  andi         t6, a7, -1400
                  sub          t6, s1, zero
                  add          t4, t4, s6
                  sltu         gp, a2, s11
                  bne          s6, a0, main_j3 #branch to jump instr
                  and          a5, a7, zero
main_j3:          jalr         t1, ra, -996 #jump main -> sub_2
                  addi         a2, zero, -10 #init loop 1 counter
                  xor          t1, t2, s7
                  addi         t4, zero, 18 #init loop 1 limit
main_1_1_t:       auipc        a5, 568717
                  sub          a1, ra, sp
                  addi         tp, s3, 494
                  xori         s4, s5, 1445
                  addi         a2, a2, 10 #update loop 1 counter
                  and          s4, s5, t4
                  and          s11, t4, ra
                  lui          zero, 264910
                  sltu         t2, t4, t3
                  addi         a3, zero, -2 #init loop 0 counter
                  or           t2, t5, s3
                  sltu         a0, t6, s6
                  nop
                  ori          t2, s4, 23
                  lui          s6, 742137
                  slt          s11, s8, t6
                  addi         ra, zero, 7 #init loop 0 limit
main_1_0_t:       addi         t3, s9, 1532
                  slt          s0, s6, s5
                  addi         a3, a3, 9 #update loop 0 counter
                  bne          a3, ra, main_1_0_t #branch for loop 0
                  add          s5, ra, sp
                  sra          t5, a7, a4
                  and          s1, sp, sp
                  slt          a1, gp, s10
                  sra          t6, t6, t5
                  lui          a5, 861253
                  auipc        t5, 542805
                  andi         t5, gp, -526
                  blt          a2, t4, main_1_1_t #branch for loop 1
                  auipc        sp, 564676
                  addi         a2, zero, 5 #init loop 0 counter
                  lui          sp, 526669
                  slli         t5, t1, 11
                  or           s0, t0, t4
                  xor          s5, s8, a7
                  sltu         gp, s0, ra
                  srai         a1, s8, 17
                  andi         s1, s8, -305
                  sub          sp, t6, s10
                  xor          a3, sp, ra
                  addi         s11, zero, -5 #init loop 0 limit
                  slli         t0, a6, 11
                  srli         a7, s1, 23
                  sub          t5, t2, t0
main_4_0_t:       ori          t3, s7, 1072
                  addi         a2, a2, -5 #update loop 0 counter
                  sltiu        a5, s1, -1037
                  slli         s4, a1, 17
                  sra          s3, t0, t5
                  srl          ra, sp, sp
                  andi         s5, a5, -1757
                  bge          a2, s11, main_4_0_t #branch for loop 0
                  addi         s7, t5, 1578
                  addi         s3, zero, -9 #init loop 1 counter
                  addi         t4, zero, -13 #init loop 1 limit
main_6_1_t:       xor          a0, s11, sp
                  auipc        s6, 415850
                  and          a1, s11, a3
                  lui          a3, 997262
                  addi         s3, s3, -5 #update loop 1 counter
                  addi         t5, zero, 8 #init loop 0 counter
                  addi         t1, zero, 3 #init loop 0 limit
                  and          a7, s10, zero
main_6_0_t:       addi         a6, a2, 1982
                  addi         t5, t5, -1 #update loop 0 counter
                  slt          s7, gp, s0
                  bne          t5, t1, main_6_0_t #branch for loop 0
                  srli         s10, s5, 15
                  bge          s3, t4, main_6_1_t #branch for loop 1
                  nop
                  addi         a0, zero, -10 #init loop 1 counter
                  slti         t5, s6, 987
                  addi         t2, zero, 1 #init loop 1 limit
main_0_1_t:       xor          s0, a6, zero
                  addi         a0, a0, 1 #update loop 1 counter
                  and          s11, t1, a2
                  sll          ra, s3, ra
                  addi         s8, zero, 7 #init loop 0 counter
                  addi         s3, zero, 7 #init loop 0 limit
                  sltiu        s4, a6, -196
main_0_0_t:       xori         s6, a7, 1301
                  slti         s5, a0, -405
                  addi         s8, s8, -6 #update loop 0 counter
                  bgeu         s8, s3, main_0_0_t #branch for loop 0
                  blt          a0, t2, main_0_1_t #branch for loop 1
                  xori         t3, a7, 1442
                  addi         t1, zero, 10 #init loop 0 counter
                  addi         t0, zero, 6 #init loop 0 limit
main_2_0_t:       lui          a5, 508420
                  addi         t1, t1, -5 #update loop 0 counter
                  bgeu         t1, t0, main_2_0_t #branch for loop 0
                  ori          s11, zero, -1854
                  addi         a7, zero, 8 #init loop 1 counter
                  auipc        t5, 1043015
                  slti         gp, s7, 825
                  srli         s10, s5, 13
                  sub          gp, a1, a7
                  addi         a5, zero, 4 #init loop 1 limit
                  srai         s1, s0, 18
main_9_1_t:       addi         t4, t5, -1544
                  auipc        a1, 1044673
                  addi         a7, a7, -3 #update loop 1 counter
                  addi         sp, zero, 10 #init loop 0 counter
                  addi         s6, zero, -11 #init loop 0 limit
                  slli         t0, s9, 9
main_9_0_t:       and          s5, t5, s6
                  addi         sp, sp, -7 #update loop 0 counter
                  srl          a6, a2, s9
                  bne          sp, s6, main_9_0_t #branch for loop 0
                  sltiu        s10, s7, 246
                  sltiu        s1, a3, 645
                  bgeu         a7, a5, main_9_1_t #branch for loop 1
                  sub          gp, a3, sp
                  addi         t0, zero, 4 #init loop 0 counter
                  nop
                  auipc        s3, 208910
                  nop
                  addi         a0, zero, 2 #init loop 0 limit
                  ori          tp, t1, 581
                  nop
                  slt          t3, s1, a4
                  auipc        s4, 176825
                  lui          a2, 30812
main_5_0_t:       add          gp, s11, s5
                  slti         s5, gp, -887
                  slti         sp, t0, -76
                  addi         t0, t0, -1 #update loop 0 counter
                  sra          t5, t4, t4
                  slti         t3, zero, -399
                  sra          ra, tp, s9
                  addi         a3, a6, 1037
                  add          s8, s9, t1
                  addi         s7, t6, -196
                  sltiu        s0, s2, 2025
                  and          t1, s5, s6
                  bgeu         t0, a0, main_5_0_t #branch for loop 0
                  and          a7, ra, t3
                  addi         s0, zero, -2 #init loop 0 counter
                  srli         t4, t2, 24
                  slli         s1, s0, 31
                  sltu         t5, t3, s6
                  auipc        t5, 620141
                  srli         gp, zero, 7
                  addi         a7, zero, -15 #init loop 0 limit
                  andi         a3, s9, -689
main_7_0_t:       or           s11, a0, a4
                  addi         s0, s0, -8 #update loop 0 counter
                  sltiu        s11, a4, -914
                  bge          s0, a7, main_7_0_t #branch for loop 0
                  sll          s1, a2, zero
                  addi         a7, zero, 4 #init loop 1 counter
                  addi         a5, zero, 11 #init loop 1 limit
                  srai         sp, s11, 27
main_8_1_t:       add          a1, t4, a0
                  addi         a7, a7, 9 #update loop 1 counter
                  xor          s4, a2, s11
                  addi         tp, zero, 3 #init loop 0 counter
                  sltiu        s8, a0, 433
                  addi         t1, zero, 10 #init loop 0 limit
main_8_0_t:       nop
                  addi         tp, tp, 5 #update loop 0 counter
                  blt          tp, t1, main_8_0_t #branch for loop 0
                  blt          a7, a5, main_8_1_t #branch for loop 1
                  xori         s0, a7, 1561
                  addi         s4, zero, 4 #init loop 1 counter
                  and          s1, t2, gp
                  sltu         gp, t5, zero
                  addi         s0, zero, 8 #init loop 1 limit
main_10_1_t:      slt          a6, a7, a1
                  slt          a3, s9, s7
                  addi         s4, s4, 5 #update loop 1 counter
                  addi         ra, zero, -6 #init loop 0 counter
                  srai         a1, s0, 8
                  addi         s3, zero, 15 #init loop 0 limit
                  sra          t1, tp, s5
                  auipc        s11, 233849
                  or           a7, s1, a4
                  sll          a7, ra, s10
main_10_0_t:      and          t0, tp, s0
                  srl          t4, a7, a2
                  addi         ra, ra, 3 #update loop 0 counter
                  srai         t0, t0, 2
                  srl          t6, sp, a4
                  bltu         ra, s3, main_10_0_t #branch for loop 0
                  lui          t5, 306627
                  sltu         s10, t6, s8
                  blt          s4, s0, main_10_1_t #branch for loop 1
                  auipc        t3, 79937
                  beq          zero, tp, 5f
                  srl          a3, a5, s2
                  slti         t5, s6, -1684
                  sltu         t3, a6, t0
                  xori         a5, t6, 1299
5:                ori          gp, s7, 76
                  auipc        zero, 990331
                  bgeu         s0, a1, 20f
                  andi         s6, gp, -128
                  srl          a2, sp, a0
                  sltu         s1, a5, a5
                  andi         s3, a0, -1815
                  sub          t3, t4, a3
                  ori          s5, s2, 1625
                  ori          a1, s11, 1401
                  nop
                  sltiu        s3, s2, 1959
                  xori         t5, a0, -1401
                  slt          s5, t3, ra
                  srai         t5, a3, 26
20:               sra          t0, s1, s7
                  beq          gp, s1, 37f
                  and          zero, a1, t1
                  sll          t3, t6, s3
                  or           s7, ra, s1
                  or           tp, s9, sp
                  add          t4, a7, t3
                  srli         s8, t0, 15
                  slt          a6, s4, s6
                  sll          a6, zero, s4
                  lui          t0, 429785
                  bne          a5, t5, 39f
                  beq          s1, a2, 49f
                  auipc        t1, 72544
                  auipc        t0, 95247
                  srai         t0, s1, 27
                  auipc        a2, 239807
37:               auipc        sp, 226578
                  sub          tp, t4, a6
39:               xor          s10, a6, t1
                  beq          t3, s0, 45f
                  and          s8, a4, s6
                  sub          t3, s2, t4
                  xor          t3, s5, a7
                  and          t2, s7, a6
45:               sub          s5, s10, ra
                  bne          t2, s4, 54f
                  sltu         s8, t1, s0
                  or           t4, t3, s11
49:               bltu         s9, s2, 59f
                  beq          s2, t2, 69f
                  ori          s8, s1, 482
                  auipc        t6, 666171
                  addi         t5, s7, 1545
54:               ori          t1, t1, 1764
                  add          a5, zero, a3
                  slt          s8, a6, a4
                  srl          s11, tp, t3
                  xor          a3, s0, zero
59:               sub          s5, zero, ra
                  auipc        t4, 126604
                  slti         s11, a3, 2026
                  bge          s6, gp, 81f
                  xori         s6, a3, -1594
                  srli         s4, a2, 28
                  sll          t5, s9, t4
                  xori         s1, a6, 1339
                  xori         s7, s8, -1680
                  srai         a5, a3, 13
69:               bltu         a6, sp, 75f
                  blt          gp, s10, 79f
                  bgeu         s5, a3, 75f
                  bltu         ra, s1, 92f
                  beq          a5, t2, 83f
                  addi         s7, a3, -1146
75:               slti         zero, gp, 1498
                  lui          t0, 991851
                  beq          a3, a4, 94f
                  bge          ra, a1, 82f
                  la           s3, sub_3
                  slti         s5, a2, -102
                  sub          a6, s3, s7
                  and          t1, a2, t1
                  addi         s3, s3, -928
                  auipc        s7, 343043
                  nop
                  slti         gp, s4, 309
                  bge          t4, sp, main_j1 #branch to jump instr
                  add          a2, s8, s0
main_j1:          jalr         t1, s3, 929 #jump main -> sub_3
79:               auipc        a0, 658121
                  slti         s10, t4, -747
81:               andi         s10, gp, 1613
82:               xor          t0, t6, a6
83:               sltiu        s10, a4, 1040
                  and          a2, ra, t6
                  slti         s7, s5, 44
                  andi         a1, s8, -1073
                  and          s3, t0, s4
                  sub          a3, s8, s6
                  bne          a3, a1, 99f
                  srai         s6, s3, 13
                  sltiu        s0, sp, 1115
92:               sll          sp, s1, s9
                  ori          s5, t0, -852
94:               bgeu         a2, s10, 110f
                  andi         s3, gp, -992
                  sltiu        t5, t1, -1685
                  nop
                  andi         a0, s2, -325
99:               sltiu        a1, t4, 1348
                  andi         gp, zero, 2031
                  bltu         a2, s2, 108f
                  slli         s1, s4, 29
                  slt          tp, t1, a0
                  blt          a3, a1, 113f
                  sltu         t4, t3, s7
                  andi         a7, a7, -285
                  xori         t6, ra, 1759
108:              slti         t0, s6, 787
                  blt          t6, ra, 124f
110:              slt          gp, s11, zero
                  bge          s2, sp, 126f
                  or           a3, s10, t6
113:              auipc        tp, 804535
                  beq          s7, t3, 131f
                  bge          a6, t4, 132f
                  ori          t4, zero, 1916
                  ori          a5, t2, -218
                  bge          s2, t6, 129f
                  sll          sp, t6, a0
                  andi         a2, tp, -880
                  sltu         t5, a4, s8
                  or           s11, t1, t0
                  beq          a5, zero, 129f
124:              addi         s0, a5, 2026
                  and          ra, sp, s6
126:              srl          ra, s2, zero
                  slti         zero, s7, -1400
                  sltu         sp, a7, gp
129:              sll          t4, t4, a2
                  bne          s11, a2, 134f
131:              sll          s1, s7, t6
132:              slli         t2, s2, 29
                  xor          t1, s5, t2
134:              slt          t4, s8, a3
                  blt          s1, zero, 150f
                  sltiu        zero, t6, 995
                  sltu         s10, s2, t0
                  sra          a5, sp, t3
                  sll          s3, ra, a2
                  bne          s3, a4, 146f
                  bltu         a4, ra, 156f
                  or           s4, s3, s1
                  ori          s5, s3, -568
                  slli         a2, zero, 7
                  bne          s3, zero, 158f
146:              addi         a1, t6, 34
                  sltu         zero, s2, s8
                  bltu         s6, t4, 154f
                  lui          a7, 751192
150:              addi         s7, a4, 865
                  auipc        a7, 69156
                  sltiu        s8, s11, -387
                  sll          t3, a5, t0
154:              auipc        s0, 904239
                  beq          s0, a1, 161f
156:              add          t5, s3, t6
                  sub          t3, s7, gp
158:              xori         s10, a2, -1912
                  srli         s3, t4, 13
                  xor          t2, a5, sp
161:              lui          a3, 660645
                  ori          s0, a4, -1123
                  auipc        ra, 142548
                  srl          a2, a6, a1
                  sra          s1, t5, a3
                  bge          s6, t0, 171f
                  andi         a3, s3, -777
                  or           a7, s0, s8
                  srl          s5, t5, a1
                  or           s6, gp, a7
171:              sltiu        s3, a0, 1726
                  sll          sp, t5, tp
                  ori          a1, a3, 1806
                  blt          ra, t2, 178f
                  nop
                  ori          a2, t5, 1886
                  ori          a3, t1, 290
178:              sltiu        t2, zero, -1030
                  srl          t2, t6, zero
                  bgeu         a2, t2, 189f
                  slti         a5, gp, -1897
                  sltu         s4, s3, gp
                  addi         s4, zero, -1109
                  slt          zero, gp, zero
                  bge          sp, a0, 204f
                  srli         s6, t5, 3
                  or           s11, tp, tp
                  sra          sp, s4, s7
189:              bgeu         s2, zero, 198f
                  sll          s10, t2, s0
                  lui          s1, 688847
                  xor          s10, s6, a2
                  bgeu         a6, tp, 198f
                  slti         s7, t5, -351
                  bgeu         t3, s10, 199f
                  sltu         a3, gp, s7
                  sltu         t6, s11, zero
198:              lui          a2, 575478
199:              sltu         a3, t2, a0
                  lui          zero, 1036699
                  bgeu         a0, a1, 207f
                  sll          a7, t6, sp
                  add          a6, t1, a7
204:              or           a1, s3, s6
                  sra          s1, s1, t4
                  slti         ra, a0, 2007
207:              slt          zero, t5, s11
                  slti         t0, t2, 1130
                  bgeu         s9, gp, 224f
                  lui          ra, 716715
                  beq          s0, a3, 221f
                  sll          s4, s6, gp
                  beq          a4, s3, 220f
                  nop
                  lui          s6, 244753
                  lui          a2, 115167
                  nop
                  slti         s0, s4, -627
                  and          ra, a5, s3
220:              xori         gp, s3, 1196
221:              slli         ra, s2, 25
                  and          s4, tp, s10
                  bltu         s10, s7, 242f
224:              sltu         a6, zero, sp
                  andi         s7, s11, -1373
                  sub          s8, ra, t1
                  beq          a6, a0, 235f
                  srl          tp, tp, a7
                  srli         s6, a4, 3
                  lui          s7, 75214
                  nop
                  sub          ra, s5, ra
                  beq          s1, s4, 241f
                  bne          ra, a3, 238f
235:              slti         s3, s5, 1978
                  bltu         a1, s8, 252f
                  sub          s0, a2, t4
238:              xori         s8, s0, 681
                  auipc        a7, 157369
                  xori         s10, s8, 479
241:              sltiu        t6, a1, 324
242:              sra          sp, t6, t4
                  sltiu        a7, a0, 909
                  srli         s0, s9, 6
                  auipc        s6, 513292
                  auipc        t2, 840825
                  add          s10, a7, s11
                  xori         t3, s3, -616
                  lui          t1, 697950
                  slli         s11, zero, 20
                  slti         a6, sp, -82
252:              sltiu        a5, gp, -1500
                  bgeu         t5, t2, 270f
                  ori          tp, ra, 1245
                  auipc        t2, 733363
                  addi         ra, a6, 890
                  srli         a3, a2, 18
                  srli         t2, zero, 22
                  nop
                  srai         s5, t1, 30
                  slt          s5, s1, t5
                  ori          s11, t5, -441
                  and          t1, t0, s8
                  and          a3, s2, a5
                  bge          t3, s8, 275f
                  lui          t3, 282638
                  ori          t1, a6, -1570
                  blt          a6, a6, 288f
                  sltu         t6, s6, s3
270:              bne          t1, s1, 281f
                  sltiu        a6, a3, -983
                  ori          a3, s6, 2041
                  sltu         zero, tp, t3
                  sltu         s6, s5, t0
275:              addi         t6, s9, 1035
                  bne          t4, s9, 293f
                  sltu         ra, s5, t1
                  sltu         tp, a5, t5
                  sub          t2, s7, t5
                  sub          a5, s0, ra
281:              blt          t1, s4, 297f
                  blt          tp, ra, 299f
                  sll          s4, a4, s6
                  srl          t5, s10, a7
                  nop
                  ori          s6, s6, -91
                  srai         ra, a0, 19
288:              xor          t0, s4, s2
                  beq          gp, s7, 299f
                  bne          a7, ra, 307f
                  srai         a2, t0, 8
                  or           s0, s9, s2
293:              andi         a0, a6, -894
                  slti         s8, a1, 1582
                  add          t1, a2, a3
                  or           s3, a0, zero
297:              bge          sp, s11, 312f
                  srai         tp, a7, 26
299:              sub          zero, sp, s3
                  auipc        a5, 304410
                  or           ra, a6, s7
                  addi         a5, t2, -1650
                  sra          a2, s6, s0
                  slt          ra, t1, s4
                  bltu         a0, t2, 322f
                  slt          sp, s0, sp
307:              srai         s4, s3, 2
                  ori          ra, a4, -1409
                  addi         a6, a4, 917
                  srli         s10, gp, 5
                  slti         a6, s10, 1514
312:              slti         gp, s7, -1864
                  sltu         s5, s4, t5
                  add          a5, t4, gp
                  add          a1, s10, a3
                  blt          s2, s3, 333f
                  ori          s7, s8, 1108
                  ori          s3, s5, -425
                  lui          t6, 116793
                  nop
                  bge          a3, s2, 334f
322:              andi         s7, a7, -661
                  andi         s5, s4, -1383
                  bge          a0, a7, 339f
                  sltiu        s4, zero, 1371
                  bge          s10, a7, 343f
                  beq          s9, a4, 346f
                  ori          t6, tp, 990
                  addi         ra, sp, -435
                  sra          s3, a2, s9
                  bgeu         a3, a1, 335f
                  srli         s10, a5, 14
333:              sltu         s8, t2, a7
334:              sltu         t4, s5, s6
335:              or           sp, a1, a5
                  addi         s10, t5, 527
                  srli         a0, s11, 31
                  auipc        ra, 200747
339:              and          s7, a5, a4
                  nop
                  sub          ra, a7, tp
                  bge          s1, t1, 362f
343:              bne          a3, sp, 358f
                  sub          t3, zero, ra
                  lui          s10, 113916
346:              sll          s1, tp, a5
                  addi         t5, a5, 1419
                  srai         a2, a1, 15
                  sll          s5, s2, sp
                  srli         a7, gp, 0
                  or           t6, a2, t5
                  auipc        s10, 515350
                  srli         s4, s4, 5
                  blt          tp, t1, 359f
                  bne          s0, t1, 360f
                  lui          s3, 284768
                  bltu         zero, s3, 367f
358:              sub          t4, t6, s1
359:              srl          a3, a0, s9
360:              xori         a2, a4, -966
                  slti         tp, a1, 966
362:              beq          t3, a1, 369f
                  srai         gp, t4, 9
                  srai         a6, s5, 20
                  xori         s5, a4, -4
                  sltiu        s11, s8, 986
367:              nop
                  beq          t5, tp, 376f
369:              bge          a1, t3, 375f
                  slti         t4, s7, -1726
                  add          s8, gp, a4
                  and          ra, zero, s9
                  ori          a7, s4, -358
                  srl          sp, s0, a6
375:              xori         a7, s0, -1379
376:              bgeu         a3, s2, 382f
                  sll          a6, t5, zero
                  sltiu        s11, t1, -1553
                  slli         t1, t5, 9
                  bge          sp, s5, 389f
                  sub          tp, a0, s9
382:              beq          s10, s5, 391f
                  slti         t3, s10, -1577
                  xori         s11, s1, -1024
                  xor          s8, zero, a3
                  slt          a3, t3, a3
                  sll          a7, t3, s9
                  nop
389:              auipc        gp, 941453
                  srl          a2, gp, s1
391:              xori         t1, t0, -1872
                  auipc        s11, 304555
                  bltu         t3, a4, 397f
                  srli         a1, s9, 23
                  xori         t5, s9, -944
                  bgeu         s4, s1, 411f
397:              and          ra, tp, s9
                  blt          s10, s0, 408f
                  blt          t4, ra, 403f
                  ori          t2, ra, -703
                  ori          s11, tp, -2039
                  xor          a5, t5, sp
403:              sltu         t1, s8, s9
                  xor          gp, a1, s8
                  sll          s11, s9, ra
                  add          t3, a7, s9
                  nop
408:              srli         a0, gp, 19
                  srli         s5, s3, 23
                  beq          s2, t3, 420f
411:              sltu         t0, sp, s11
                  ori          a5, a0, -454
                  auipc        s5, 830140
                  sll          a5, t5, t4
                  srai         s4, s10, 10
                  andi         s8, a6, -1692
                  slt          s0, s10, t6
                  or           ra, a7, zero
                  lui          s7, 780968
420:              bge          s10, a6, 436f
                  bltu         s2, a0, 429f
                  sub          a0, a6, s7
                  and          a0, t0, t1
                  srai         tp, s2, 8
                  srl          a0, a3, s6
                  beq          s4, t4, 432f
                  sll          t1, ra, t6
                  slli         s10, t5, 28
                  la           t3, sub_1
                  xori         sp, a6, 1573
                  add          a1, s11, s1
                  addi         t3, t3, 165
                  sra          t4, a6, a2
                  addi         zero, sp, 1109
                  beq          sp, a5, main_j2 #branch to jump instr
                  sltu         a5, s10, tp
                  sll          a3, zero, ra
main_j2:          jalr         t1, t3, -165 #jump main -> sub_1
                  sra          s10, s8, a5
                  or           s4, a0, t2
429:              lui          s0, 729418
                  sltu         t6, t5, s3
                  beq          s5, s5, 450f
432:              beq          s8, s0, 449f
                  slt          t3, s2, s3
                  slt          t0, t0, t4
                  slli         t3, t6, 15
436:              sub          a7, sp, gp
                  nop
                  bne          s11, s7, 454f
                  beq          a7, s5, 450f
                  addi         ra, zero, -8 #init loop 0 counter
                  addi         a1, zero, -17 #init loop 0 limit
                  sltu         t4, t5, t2
                  addi         s3, t2, 1193
main_3_0_t:       nop
                  addi         ra, ra, -7 #update loop 0 counter
                  xori         t3, sp, 167
                  sll          a2, s9, ra
                  bge          ra, a1, main_3_0_t #branch for loop 0
                  xori         t6, a3, -355
                  ori          a2, s11, 149
                  slli         s10, t5, 14
                  auipc        s4, 687446
                  sra          s0, a1, s6
                  sll          s0, a1, s11
                  ori          a3, gp, 1120
                  auipc        a3, 428398
                  beq          a0, t5, 456f
                  xori         s6, t2, 1807
449:              sltiu        a5, gp, -150
450:              sltu         a2, a7, a2
                  slti         s4, s1, 645
                  slt          t6, a7, t2
                  lui          a7, 757305
454:              slti         a2, s8, 1220
                  beq          s4, s11, 462f
456:              bltu         zero, sp, 469f
                  addi         t1, s10, 1023
                  slli         s5, t3, 1
                  ori          a7, t5, -1070
                  sltiu        s4, t4, -101
                  sll          t3, t3, s3
462:              srl          s7, s6, s0
                  andi         t2, a2, 870
                  sra          s7, a2, s4
                  ori          sp, s4, 2027
                  slti         t6, ra, 1729
                  sub          a3, s11, s9
                  bge          s2, sp, 476f
469:              ori          s11, t6, -2044
                  addi         zero, s5, 1992
                  andi         a2, t0, 1875
                  auipc        a6, 729134
                  bge          a2, s4, 483f
                  slli         a6, a3, 1
                  auipc        a0, 500626
476:              lui          t6, 872989
                  srli         s5, a2, 22
                  and          tp, s8, ra
                  srli         s0, s2, 11
                  srai         s5, a5, 27
                  bltu         a3, t5, 485f
                  addi         sp, s3, -1840
483:              addi         s10, t0, -417
                  addi         t5, tp, -89
485:              ori          s3, a2, -1629
                  xori         s6, t4, -1430
                  ori          t0, sp, -316
                  and          sp, s11, a5
                  bltu         s3, ra, 493f
                  sltu         s0, t5, s5
                  sll          s6, s10, a0
                  bltu         a3, s11, 507f
493:              srli         t2, a2, 14
                  srli         s1, t2, 23
                  sll          s1, s7, s9
                  lui          t6, 809287
                  sltu         a5, a0, s10
                  bgeu         t6, t2, 503f
                  lui          ra, 817014
                  sltu         a1, t2, a1
                  srli         zero, s8, 29
                  addi         ra, tp, 97
503:              and          s7, s2, s6
                  and          s5, t3, gp
                  or           a3, t2, tp
                  auipc        a1, 115590
507:              ori          s10, s4, -1917
                  srl          a3, t3, t1
                  srli         t6, a4, 25
                  ori          s0, s11, -879
                  sltu         s3, s11, sp
                  sltu         gp, t5, s7
                  bltu         s11, a2, 532f
                  sra          t6, a6, s10
                  slt          a0, a6, s8
                  slt          t6, t6, s10
                  nop
                  bne          a7, a1, 533f
                  slt          t2, a2, tp
                  blt          t3, a1, 537f
                  sltiu        zero, a0, -1584
                  srli         a6, s2, 31
                  or           s4, gp, s9
                  sll          a1, s7, s6
                  srli         s5, s1, 22
                  add          s7, tp, tp
                  sra          a0, s4, a2
                  bgeu         a1, s7, 536f
                  sub          ra, t2, s3
                  auipc        s6, 974003
                  beq          s5, tp, 541f
532:              beq          s10, t5, 541f
533:              slti         s6, s0, 2014
                  slt          a2, sp, a1
                  auipc        s7, 250073
536:              bgeu         s0, s8, 542f
537:              sub          s3, s10, a4
                  and          s5, t1, s8
                  slli         zero, s6, 10
                  sub          a6, a1, s11
541:              sra          a1, a1, t6
542:              ori          tp, t5, 2042
                  add          tp, s4, s5
                  slti         s8, zero, 1443
                  srl          t3, tp, s3
                  xori         t3, a5, 171
                  sub          a5, s0, a3
                  srai         t0, a5, 7
                  auipc        t0, 290987
                  sll          sp, t5, t5
                  slti         s11, s2, 679
                  xor          t4, a7, a6
                  xor          s7, t1, a4
                  slti         s7, tp, -849
                  bne          s10, sp, 561f
                  srai         t0, a4, 22
                  nop
                  auipc        a5, 361736
                  sll          a7, t5, s7
                  sltiu        t6, s8, 1520
561:              sub          t3, s4, a3
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            blt          a3, t6, sub_2_stack_p
                  ori          zero, t4, 360
                  sll          t5, zero, a7
sub_2_stack_p:    addi         s2, s2, -8
                  sltu         s10, t1, s2
                  auipc        a2, 495263
                  auipc        t4, 1045623
                  sw           t1, 4(s2)
                  andi         a2, sp, -1385
                  srai         s1, sp, 0
                  and          s10, ra, t3
                  sll          s7, a1, tp
                  slli         s11, s7, 28
                  ori          sp, ra, -941
                  auipc        s8, 504173
                  sub          t6, tp, s8
                  la           s4, sub_4
                  addi         s4, s4, -26
                  slli         tp, t5, 21
sub_2_j5:         jalr         t1, s4, 26 #jump sub_2 -> sub_4
                  addi         s5, zero, -3 #init loop 1 counter
                  xori         s3, s1, -487
                  srli         t6, s1, 9
                  slti         a3, s1, 1669
                  xor          t6, t4, s10
                  sltu         t4, s5, t6
                  sra          a1, a3, a5
                  addi         t5, zero, -9 #init loop 1 limit
sub_2_2_1_t:      nop
                  add          t1, a4, s11
                  addi         s5, s5, -7 #update loop 1 counter
                  addi         t3, zero, -4 #init loop 0 counter
                  addi         sp, zero, -14 #init loop 0 limit
sub_2_2_0_t:      xor          s6, a3, t3
                  srli         ra, a0, 12
                  srai         zero, t3, 11
                  xor          a0, s4, s1
                  addi         t3, t3, -10 #update loop 0 counter
                  add          gp, t0, t3
                  bne          t3, sp, sub_2_2_0_t #branch for loop 0
                  srl          s0, s9, gp
                  slli         a1, t2, 4
                  slti         s10, s1, 1789
                  sltiu        a2, tp, 505
                  bge          s5, t5, sub_2_2_1_t #branch for loop 1
                  slli         t0, s10, 26
                  addi         a5, zero, 9 #init loop 0 counter
                  or           a0, s2, a0
                  slti         t3, s8, 1559
                  sra          zero, a2, a7
                  addi         s1, zero, -16 #init loop 0 limit
                  addi         t0, s9, -326
sub_2_0_0_t:      ori          tp, s8, 475
                  or           t5, t4, t1
                  addi         a5, a5, -5 #update loop 0 counter
                  slt          s6, sp, a5
                  slli         ra, s3, 19
                  addi         t0, s3, -1173
                  xori         t4, s10, 841
                  ori          t0, a0, -621
                  srli         ra, s11, 29
                  lui          ra, 260818
                  slt          t6, sp, s1
                  bne          a5, s1, sub_2_0_0_t #branch for loop 0
                  slt          s5, a5, s1
                  addi         s11, zero, 1 #init loop 0 counter
                  auipc        s5, 653729
                  and          a1, t6, s3
                  addi         a2, zero, 19 #init loop 0 limit
                  sltiu        s5, s6, -1924
sub_2_4_0_t:      andi         s0, s4, 873
                  xori         tp, a2, -1294
                  xori         a5, s8, -430
                  sltu         a7, t3, t5
                  addi         s11, s11, 9 #update loop 0 counter
                  sltiu        t2, t4, -322
                  lui          t4, 832196
                  bne          s11, a2, sub_2_4_0_t #branch for loop 0
                  add          tp, s2, gp
                  addi         a0, zero, 2 #init loop 0 counter
                  srl          s10, t0, a2
                  addi         t0, zero, 0 #init loop 0 limit
sub_2_3_0_t:      auipc        t4, 758471
                  or           s5, s10, s10
                  andi         s3, s3, -1593
                  nop
                  addi         a0, a0, -5 #update loop 0 counter
                  sra          a5, s2, a0
                  andi         s1, s3, -1688
                  xor          s1, a5, s11
                  bge          a0, t0, sub_2_3_0_t #branch for loop 0
                  auipc        a7, 192378
                  addi         a5, zero, 8 #init loop 1 counter
                  lui          a2, 452181
                  auipc        ra, 807345
                  addi         a3, zero, 15 #init loop 1 limit
                  ori          s6, a5, 373
                  slt          t6, a5, t0
                  auipc        a0, 18603
sub_2_5_1_t:      slt          s3, a6, s10
                  andi         t4, s0, 1380
                  ori          a7, a0, 221
                  srl          ra, t4, s3
                  slti         t6, s8, 382
                  lui          a6, 818274
                  srli         a7, a4, 0
                  slti         t4, a1, 1459
                  slti         s5, s0, 1826
                  srai         gp, s5, 3
                  addi         a5, a5, 6 #update loop 1 counter
                  srl          t6, a2, zero
                  and          s7, a4, sp
                  addi         s0, zero, -9 #init loop 0 counter
                  addi         s11, zero, 18 #init loop 0 limit
                  xori         a1, t0, -1857
sub_2_5_0_t:      add          a0, sp, a1
                  addi         s0, s0, 7 #update loop 0 counter
                  bltu         s0, s11, sub_2_5_0_t #branch for loop 0
                  lui          a7, 287809
                  slti         a1, t0, -138
                  sltu         t4, s4, s1
                  xori         ra, s7, -306
                  bltu         a5, a3, sub_2_5_1_t #branch for loop 1
                  and          gp, s2, s8
                  addi         s5, zero, -3 #init loop 0 counter
                  add          t4, s4, s6
                  slli         t1, t3, 19
                  lui          t4, 142502
                  or           s7, s0, a5
                  sub          gp, s2, a0
                  or           s3, t5, s8
                  xor          sp, t2, t3
                  sub          s4, s8, s1
                  andi         t3, gp, -760
                  xor          a7, t5, a1
                  lui          a5, 659741
                  addi         a6, zero, 2 #init loop 0 limit
                  andi         s4, s1, -2026
                  srli         t5, t6, 29
                  slti         a0, s2, -33
sub_2_1_0_t:      lui          a3, 149824
                  xori         sp, s10, -493
                  addi         s5, s5, 4 #update loop 0 counter
                  slli         gp, s3, 8
                  slti         a7, t0, 660
                  sltu         a2, s0, s7
                  bltu         s5, a6, sub_2_1_0_t #branch for loop 0
                  or           t5, s7, sp
                  bgeu         tp, t2, 19f
                  slt          s10, a2, s10
                  slli         tp, t4, 20
                  bltu         s5, a7, 12f
                  srli         tp, ra, 3
                  addi         a7, sp, -184
                  bge          s10, s5, 18f
                  srli         s0, s0, 4
                  andi         a1, gp, -48
                  srl          a0, zero, t1
                  sltiu        s8, ra, 1753
                  srai         s5, s10, 10
12:               xori         s4, s9, -259
                  srli         t1, t1, 8
                  xori         a5, s8, -1534
                  srai         a6, s7, 3
                  sra          t6, tp, s3
                  blt          ra, tp, sub_2_j4 #branch to jump instr
                  xor          zero, t2, t3
                  xori         t4, t6, 1861
                  lui          t5, 439724
                  slti         a6, t0, 1910
sub_2_j4:         jal          t1, sub_5 #jump sub_2 -> sub_5
                  slli         s7, zero, 9
                  sltu         a5, a0, s6
                  slli         a0, a0, 17
                  slt          a5, t3, ra
18:               xori         t0, s2, 776
19:               xor          a1, gp, t6
                  xori         sp, a4, 2035
                  sub          gp, t5, s5
                  lui          s6, 332457
                  xor          a7, s1, t2
                  slli         s5, ra, 18
                  addi         t2, s8, 936
                  sub          s8, gp, gp
                  sltiu        t6, zero, 1093
                  slt          gp, t1, t2
                  and          s8, a6, t5
                  sltu         t3, a3, gp
                  sll          a3, s11, t6
                  xor          t3, a7, tp
                  nop
                  sra          zero, t1, a6
                  blt          s4, s9, 53f
                  bltu         a1, t0, 44f
                  sltu         a1, t2, a6
                  bgeu         a6, t6, 55f
                  blt          a4, a2, 44f
                  beq          a7, ra, 45f
                  lui          sp, 682086
                  bltu         a6, a6, 44f
                  sltu         ra, s6, a2
44:               and          a2, a2, a7
45:               addi         s11, t4, -611
                  bge          t3, s4, 60f
                  bne          t5, sp, 64f
                  lui          s0, 600940
                  sltu         s11, a7, s3
                  bge          s10, gp, 66f
                  xor          a2, gp, a1
                  beq          a1, a3, 64f
53:               bltu         zero, s9, 61f
                  xor          s6, s0, s9
55:               auipc        t3, 212551
                  slti         a5, a0, 891
                  sltiu        sp, t4, -619
                  beq          s5, s11, 72f
                  sub          s1, a2, s7
60:               slti         s4, ra, 178
61:               addi         s3, a0, 1461
                  andi         t2, s4, 1582
                  srl          a3, a5, a7
64:               srl          t6, zero, s6
                  add          a3, a5, t2
66:               sll          gp, t5, a0
                  xor          t2, t0, s9
                  srai         t0, ra, 18
                  beq          a3, s1, 88f
                  andi         tp, sp, 1279
                  and          s1, a1, s8
72:               xori         s5, zero, -505
                  auipc        zero, 1043811
                  auipc        a0, 168038
                  bltu         t0, tp, 77f
                  bne          s10, a5, 89f
77:               bgeu         a0, t1, 87f
                  auipc        a6, 156030
                  andi         s4, a5, 221
                  blt          a3, s6, 99f
                  xori         zero, zero, 651
                  bltu         t0, gp, 96f
                  srli         t5, s1, 22
                  slt          zero, s6, t4
                  ori          s1, s9, -2000
                  beq          gp, s9, 103f
87:               addi         s3, t1, -1227
88:               bge          a6, t5, 92f
89:               bne          t1, a2, 106f
                  auipc        t6, 11590
                  add          a7, t1, t1
92:               or           a1, s5, t0
                  bltu         s5, s9, 111f
                  nop
                  add          ra, s1, sp
96:               blt          a2, a3, 107f
                  bltu         t1, t2, 110f
                  sll          s4, gp, s7
99:               bltu         zero, t0, 103f
                  sra          a3, t2, a3
                  xori         t2, s10, -596
                  bltu         s9, s1, 105f
103:              ori          t2, a1, -1600
                  bne          t1, s10, 106f
105:              sll          s8, zero, s9
106:              add          a6, t5, tp
107:              addi         tp, a6, 1847
                  bge          s4, s6, 120f
                  and          t1, tp, s6
110:              andi         a5, s1, 1231
111:              sltiu        a2, gp, 1736
                  add          a6, a2, a1
                  slt          s0, t6, a4
                  add          zero, s7, tp
                  srl          a1, a2, t1
                  beq          zero, zero, 130f
                  andi         gp, a5, 1255
                  xor          t2, t3, s10
                  srai         s10, s2, 18
120:              slli         ra, s2, 9
                  srli         s3, a1, 3
                  bge          s6, a6, 130f
                  sltu         gp, a5, zero
                  sltiu        s7, t4, -188
                  add          t6, a1, s10
                  sub          t2, a3, s5
                  slt          s1, t4, gp
                  addi         s4, a6, 1482
                  slt          t2, s1, t4
130:              bltu         s9, s8, 134f
                  xori         s10, a0, 512
                  xori         t4, zero, 179
                  srli         s11, s11, 5
134:              andi         a5, zero, -1776
                  slt          s4, t1, a7
                  srl          s5, tp, s3
                  nop
                  xor          t5, t6, a4
                  sra          s1, zero, a1
                  and          s11, zero, t3
                  bne          s11, s4, 143f
                  nop
143:              and          s1, t2, a3
                  bgeu         s9, s11, 161f
                  andi         t5, t3, 753
                  sub          zero, a7, ra
                  xori         s6, s6, -946
                  slli         s10, zero, 24
                  xori         s10, t2, -1024
                  and          t5, s7, ra
                  sra          tp, s8, gp
                  blt          s2, zero, 166f
                  sll          t1, s5, t3
                  sra          a3, s9, a5
                  slt          t0, s10, ra
                  add          ra, ra, tp
                  xori         zero, s9, -243
                  bgeu         gp, a3, 161f
                  or           s1, s0, t6
                  srai         t5, a6, 2
161:              ori          gp, t3, -816
                  srli         sp, s10, 0
                  add          ra, s5, sp
                  srli         s10, s3, 16
                  srli         s0, a0, 1
166:              sra          a6, sp, s6
                  bne          a2, a0, 186f
                  srli         t0, s6, 7
                  sltu         s10, a2, s1
                  nop
                  beq          a6, s4, 190f
                  srli         a7, s9, 11
                  add          s6, sp, s1
                  srl          s7, s9, a4
                  auipc        ra, 75903
                  slli         s7, s5, 2
                  blt          t4, s7, 187f
                  bgeu         s3, s11, 183f
                  slt          s1, s7, a4
                  or           a1, a3, a5
                  sll          a7, t2, a5
                  and          tp, t2, a4
183:              sll          t2, zero, s3
                  or           t2, sp, a5
                  sltu         t0, t2, a2
186:              lui          s4, 922757
187:              sltu         a1, s8, s3
                  srli         a7, s5, 17
                  lui          s0, 407713
190:              bne          tp, s10, 203f
                  add          gp, t1, zero
                  slti         s0, gp, -284
                  srli         t5, tp, 27
                  slti         s4, tp, 83
                  ori          s1, a4, 1089
                  nop
                  srl          s5, a7, t1
                  sra          t0, a0, t0
                  add          s11, t0, s8
                  and          zero, s8, t3
                  or           t2, s0, s1
                  sra          s1, s5, s8
203:              slt          a2, t1, tp
                  bltu         s0, a0, 208f
                  xor          a0, t5, s1
                  srl          t4, a4, a7
                  sltu         s8, t4, t5
208:              bltu         s3, s6, 213f
                  addi         tp, t5, -1882
                  or           s4, t4, s2
                  lui          sp, 85167
                  nop
213:              srai         a2, s2, 3
                  slli         s5, s1, 22
                  add          tp, zero, t3
                  bltu         a4, s2, 233f
                  bgeu         a2, s7, 228f
                  sub          a5, t5, t2
                  lui          sp, 837325
                  bne          s3, a0, 238f
                  ori          s8, t6, 139
                  xor          zero, a7, a1
                  slt          a3, a3, t1
                  bltu         s6, a6, 232f
                  blt          t2, ra, 237f
                  nop
                  bne          s0, t0, 236f
228:              andi         s1, s11, 395
                  slt          a0, a2, a7
                  bltu         s9, t2, 248f
                  and          a6, s11, ra
232:              or           t4, a2, zero
233:              and          gp, a2, ra
                  lui          t2, 442074
                  bltu         s1, s7, 249f
236:              xor          t1, a6, zero
237:              srai         a0, gp, 4
238:              srl          a1, a1, s2
                  andi         s10, zero, -108
                  and          s8, s1, s0
                  srli         s6, a3, 18
                  sll          s10, a7, s5
                  sltu         s8, a0, s2
                  bge          tp, t0, 261f
                  bne          s0, a3, 258f
                  ori          s4, t3, -33
                  andi         s10, s8, 1034
248:              ori          s3, a5, 1376
249:              bne          a7, s10, 268f
                  andi         t5, t3, -710
                  sll          t3, t5, t0
                  slt          s1, s6, sp
                  auipc        a5, 649024
                  bgeu         a0, a2, 271f
                  slti         gp, zero, -152
                  xori         s0, a5, -1203
                  sub          s0, t2, s3
258:              ori          s3, s7, -160
                  sll          gp, t3, t4
                  slt          tp, a2, t6
261:              srai         t1, s1, 24
                  sltu         s10, a4, sp
                  nop
                  beq          a0, gp, 266f
                  ori          a6, a7, -1206
266:              xori         s5, s1, 938
                  slli         gp, a0, 14
268:              slli         a5, a1, 9
                  addi         t4, s11, 169
                  sub          t6, zero, s11
271:              lui          t5, 894633
                  bge          a2, s10, 274f
                  bgeu         a4, s8, 289f
274:              andi         a0, t3, -1445
                  or           t2, s5, s11
                  sll          a0, s3, a7
                  or           a0, a5, t2
                  xori         a2, s1, -1692
                  slt          t4, s3, a4
                  blt          s3, t4, 297f
                  sra          tp, s6, ra
                  xor          t0, a0, sp
                  sra          s10, a5, a0
                  slt          s8, t3, t6
                  add          s1, a2, s1
                  auipc        t3, 758221
                  beq          a0, s11, 306f
                  andi         t3, a3, -1388
289:              srli         t0, t2, 31
                  srl          a6, t3, zero
                  xori         a2, s10, -1715
                  addi         s1, t3, 483
                  sub          tp, a1, s6
                  auipc        a3, 755475
                  slt          gp, s1, a4
                  bltu         a4, a3, 313f
297:              xori         s3, s10, 1802
                  sll          zero, ra, s0
                  slti         a2, s2, -877
                  sll          sp, t1, s6
                  addi         s6, a4, -282
                  sltiu        t0, a5, 1995
                  or           t0, a1, t6
                  xori         s3, zero, 600
                  nop
306:              beq          s0, a4, 308f
                  xor          sp, t1, s2
308:              blt          s6, s6, 327f
                  slt          s0, s8, s1
                  ori          zero, s6, -1164
                  andi         t6, sp, 1937
                  xor          t3, s5, t4
313:              srli         t0, s11, 26
                  sub          s7, s5, s3
                  nop
                  beq          ra, s4, 325f
                  slti         s8, s2, 1438
                  or           s1, t0, s6
                  bne          t0, s7, 324f
                  bgeu         tp, t0, 328f
                  sra          s11, s7, s9
                  bltu         tp, s3, 324f
                  sll          s8, s1, s10
324:              sub          t1, a0, s11
325:              add          t5, t2, ra
                  slli         t4, s10, 2
327:              blt          s10, s11, 340f
328:              addi         s6, zero, 344
                  xor          a2, a4, a3
                  addi         ra, s10, -483
                  auipc        t5, 934623
                  nop
                  andi         s4, s2, -692
                  sltu         zero, t2, s6
                  srai         s10, s6, 14
                  addi         a3, s5, 1981
                  bge          s5, t2, 346f
                  bge          t1, gp, 346f
                  bltu         t4, a3, 346f
340:              sll          s4, s8, a3
                  bge          t4, t5, 346f
                  blt          s8, a7, 346f
                  sub          s11, t2, sp
                  beq          s0, s1, 346f
                  or           t5, s8, a4
346:              srli         a1, sp, 7
                  lui          zero, 59715
                  xor          gp, a7, a3
                  sub          s3, zero, s3
                  lw           t1, 4(s2)
                  slti         s0, s4, 1855
                  addi         s2, s2, 8
                  srai         s5, ra, 22
                  xori         a6, a6, 1533
                  srai         tp, s11, 28
513:              addi x4, x6, 1
513:              jalr x4, x4, 0
sub_3:            addi         s2, s2, -16
                  sltiu        t0, t0, -1064
                  sw           t1, 4(s2)
                  srli         t4, s4, 31
                  slt          t3, s6, a4
                  sltiu        s6, s7, 1382
                  and          s11, a7, t2
                  and          a7, s4, a4
                  addi         a3, zero, 10 #init loop 0 counter
                  sra          t5, ra, t6
                  slti         t4, t6, 1323
                  addi         t1, zero, -8 #init loop 0 limit
sub_3_1_0_t:      xor          s4, gp, a2
                  nop
                  addi         a3, a3, -2 #update loop 0 counter
                  sll          s1, s3, s9
                  sltiu        a2, a0, -254
                  bne          a3, t1, sub_3_1_0_t #branch for loop 0
                  slti         s0, s8, -1226
                  addi         t2, zero, -2 #init loop 0 counter
                  slli         s3, s4, 19
                  sltiu        a7, s6, -764
                  addi         t3, a2, -1217
                  addi         t0, zero, -11 #init loop 0 limit
                  sltiu        sp, a5, -1850
sub_3_14_0_t:     slt          s5, s0, ra
                  srli         s10, s4, 15
                  lui          a0, 96013
                  addi         t2, t2, -9 #update loop 0 counter
                  srl          s1, s10, s11
                  slt          s7, a0, s9
                  sltu         zero, s4, s0
                  sltu         a0, s11, s10
                  sra          t5, a2, t5
                  and          t3, s2, s8
                  slti         t3, zero, -845
                  auipc        s5, 772653
                  or           ra, t0, s8
                  beq          t2, t0, sub_3_14_0_t #branch for loop 0
                  addi         gp, t1, -465
                  addi         s11, zero, -8 #init loop 0 counter
                  srai         t4, s7, 1
                  sltiu        sp, t3, -1706
                  slti         ra, t6, -189
                  slti         t2, a2, -1720
                  xor          ra, t4, a6
                  and          t0, zero, s5
                  nop
                  addi         s10, zero, 7 #init loop 0 limit
                  srli         t6, ra, 29
                  addi         zero, s8, -420
                  sltu         s3, t0, t1
                  slti         s8, t0, 1737
                  slt          s8, s5, t6
sub_3_15_0_t:     xori         s5, a5, 1930
                  lui          s8, 965519
                  nop
                  addi         s11, s11, 10 #update loop 0 counter
                  slti         t1, s2, -1332
                  sll          sp, a5, zero
                  srli         a1, s1, 24
                  srai         t0, sp, 9
                  slti         ra, a4, 1001
                  add          t3, t5, t0
                  xori         zero, a2, -1758
                  sltu         s8, s6, t0
                  srl          t6, a5, s1
                  bltu         s11, s10, sub_3_15_0_t #branch for loop 0
                  xor          s0, a7, a5
                  addi         sp, zero, -3 #init loop 1 counter
                  ori          a0, s11, -1454
                  addi         s1, zero, 0 #init loop 1 limit
sub_3_10_1_t:     sltiu        s4, s5, 1597
                  addi         sp, sp, 6 #update loop 1 counter
                  srl          a1, a2, t2
                  slti         a1, s6, -1757
                  addi         t5, zero, -8 #init loop 0 counter
                  addi         t3, zero, -15 #init loop 0 limit
                  or           t0, t2, a6
sub_3_10_0_t:     add          a0, t4, a3
                  srl          gp, a2, a2
                  addi         t5, t5, -7 #update loop 0 counter
                  bne          t5, t3, sub_3_10_0_t #branch for loop 0
                  blt          sp, s1, sub_3_10_1_t #branch for loop 1
                  and          s8, s5, a4
                  addi         t4, zero, -10 #init loop 0 counter
                  addi         s5, zero, 18 #init loop 0 limit
sub_3_17_0_t:     ori          a5, s0, -1012
                  srl          zero, a4, s3
                  addi         t4, t4, 4 #update loop 0 counter
                  nop
                  slt          t2, a4, a6
                  slt          s10, t2, s11
                  beq          t4, s5, sub_3_17_0_t #branch for loop 0
                  addi         tp, s5, 1479
                  addi         s8, zero, 10 #init loop 1 counter
                  nop
                  sra          s0, s6, tp
                  addi         a7, zero, -18 #init loop 1 limit
                  xori         s10, s3, 1735
sub_3_7_1_t:      xori         s7, s6, 678
                  addi         s8, s8, -9 #update loop 1 counter
                  addi         t2, s9, -1743
                  addi         a5, zero, -9 #init loop 0 counter
                  ori          zero, s4, -1732
                  xor          s7, t2, s1
                  addi         s6, zero, -11 #init loop 0 limit
sub_3_7_0_t:      or           s1, s0, a1
                  or           zero, t0, s11
                  srai         s3, s1, 7
                  addi         a5, a5, -2 #update loop 0 counter
                  srl          tp, t5, t6
                  beq          a5, s6, sub_3_7_0_t #branch for loop 0
                  xori         s1, t5, 647
                  andi         t0, s10, -1267
                  bge          s8, a7, sub_3_7_1_t #branch for loop 1
                  srai         s4, t3, 4
                  addi         a7, zero, 9 #init loop 0 counter
                  add          s3, s1, gp
                  srl          s6, s10, t6
                  sub          t0, a6, a2
                  srl          s7, zero, t0
                  xor          t6, t5, s6
                  addi         a1, zero, 5 #init loop 0 limit
                  slti         a2, a1, 800
                  and          s10, t3, a5
                  slli         t1, s5, 0
                  xori         s11, t2, 2015
                  xor          s6, a5, a7
                  add          a5, a7, t0
                  slt          t3, t2, a0
                  xor          s4, a7, a1
                  slli         t4, s11, 16
                  nop
                  lui          s3, 409185
                  sll          a2, t4, t6
                  xor          s8, tp, t6
                  slt          s1, s5, t6
sub_3_9_0_t:      sltu         ra, s6, s7
                  lui          gp, 228721
                  srl          s6, t4, a7
                  addi         t2, s10, 1620
                  sltu         s1, s0, s3
                  sll          t2, t5, s9
                  addi         a7, a7, -4 #update loop 0 counter
                  bgeu         a7, a1, sub_3_9_0_t #branch for loop 0
                  srl          t5, s6, a2
                  addi         t2, zero, -4 #init loop 0 counter
                  srl          t1, a3, a5
                  and          s5, a5, a0
                  srl          s3, t6, s2
                  xori         a3, s11, -989
                  and          a3, s1, t6
                  auipc        t4, 845605
                  srli         tp, a1, 31
                  sll          t0, s11, ra
                  srl          s6, a4, s10
                  addi         s10, zero, 17 #init loop 0 limit
sub_3_16_0_t:     add          a6, a5, a0
                  sub          s11, t2, s0
                  addi         t2, t2, 5 #update loop 0 counter
                  ori          s6, s0, -763
                  srai         a2, a1, 20
                  slt          a3, gp, sp
                  blt          t2, s10, sub_3_16_0_t #branch for loop 0
                  andi         sp, s3, 709
                  addi         t1, zero, 2 #init loop 1 counter
                  sltu         zero, s6, t5
                  addi         s6, s0, 1514
                  auipc        s11, 447181
                  addi         t4, zero, -10 #init loop 1 limit
                  slti         s8, s0, 1976
                  and          s5, a6, s9
                  xori         a2, gp, 1814
                  or           tp, t0, s5
                  sll          s3, a1, t5
                  slt          s11, tp, a1
sub_3_6_1_t:      or           s11, t4, t4
                  xor          a6, a2, gp
                  ori          gp, a5, -1459
                  addi         t1, t1, -6 #update loop 1 counter
                  sltiu        s3, s8, -589
                  addi         t6, zero, 6 #init loop 0 counter
                  andi         t3, t3, 1048
                  addi         ra, zero, -15 #init loop 0 limit
                  ori          s1, s5, 220
sub_3_6_0_t:      ori          s11, t1, -270
                  srai         s5, ra, 7
                  addi         a5, t4, 301
                  slt          s5, tp, s11
                  sll          sp, a6, s10
                  addi         t6, t6, -4 #update loop 0 counter
                  bge          t6, ra, sub_3_6_0_t #branch for loop 0
                  xori         s3, s3, 1261
                  and          t5, ra, s11
                  bge          t1, t4, sub_3_6_1_t #branch for loop 1
                  add          s4, ra, a7
                  addi         sp, zero, 9 #init loop 0 counter
                  srai         a6, s9, 26
                  and          s1, s5, a1
                  nop
                  sltiu        zero, a4, 1677
                  lui          s3, 385988
                  addi         s8, s4, -1213
                  andi         s11, t4, 1007
                  ori          zero, a1, -2030
                  sltu         a1, s0, a1
                  addi         t0, zero, 7 #init loop 0 limit
                  srl          s11, tp, s10
sub_3_12_0_t:     lui          s3, 201603
                  slli         s6, a0, 20
                  addi         sp, sp, -2 #update loop 0 counter
                  lui          s5, 780531
                  slt          a7, t6, a5
                  bgeu         sp, t0, sub_3_12_0_t #branch for loop 0
                  slt          s10, a1, tp
                  addi         a6, zero, 4 #init loop 0 counter
                  add          t2, t5, s0
                  xori         a1, gp, 1584
                  addi         s7, zero, 6 #init loop 0 limit
                  ori          ra, s1, 103
                  srli         t0, s0, 16
sub_3_11_0_t:     auipc        s10, 941742
                  addi         a6, a6, 6 #update loop 0 counter
                  and          tp, a3, t2
                  addi         s1, t6, 460
                  blt          a6, s7, sub_3_11_0_t #branch for loop 0
                  addi         s8, s7, 1751
                  addi         gp, zero, 7 #init loop 0 counter
                  addi         s8, zero, 7 #init loop 0 limit
                  lui          s3, 335696
sub_3_8_0_t:      auipc        s7, 503491
                  andi         s1, t1, -726
                  addi         gp, gp, -6 #update loop 0 counter
                  bgeu         gp, s8, sub_3_8_0_t #branch for loop 0
                  slli         s0, s1, 24
                  addi         t6, zero, 7 #init loop 0 counter
                  and          t4, t2, s5
                  sltu         t2, gp, ra
                  slt          s4, s5, a7
                  addi         s1, zero, 16 #init loop 0 limit
                  or           t1, s9, ra
sub_3_5_0_t:      sub          s10, ra, a1
                  addi         t6, t6, 9 #update loop 0 counter
                  andi         s8, t6, 1362
                  slli         gp, a7, 19
                  srli         gp, s0, 6
                  srl          gp, a3, s5
                  beq          t6, s1, sub_3_5_0_t #branch for loop 0
                  or           t3, s2, a3
                  addi         s3, zero, 9 #init loop 1 counter
                  srai         a5, s3, 13
                  sra          a6, s3, a5
                  addi         sp, zero, 9 #init loop 1 limit
                  addi         t6, a6, 1163
                  sll          tp, t2, t5
sub_3_18_1_t:     or           s10, gp, s7
                  addi         s3, s3, -4 #update loop 1 counter
                  andi         a1, tp, -54
                  addi         t1, zero, 6 #init loop 0 counter
                  addi         gp, zero, 15 #init loop 0 limit
sub_3_18_0_t:     sub          s4, s4, s0
                  sltu         a1, a7, a5
                  nop
                  slt          s8, t2, s4
                  andi         t0, t4, -908
                  addi         t1, t1, 3 #update loop 0 counter
                  beq          t1, gp, sub_3_18_0_t #branch for loop 0
                  xori         zero, a1, 612
                  sra          a7, s3, s9
                  bgeu         s3, sp, sub_3_18_1_t #branch for loop 1
                  nop
                  addi         t2, zero, -4 #init loop 0 counter
                  or           tp, a1, ra
                  addi         gp, zero, 3 #init loop 0 limit
                  auipc        s7, 77739
                  sra          a5, s5, a0
sub_3_2_0_t:      or           tp, a2, t5
                  addi         t4, zero, 235
                  sll          t3, zero, ra
                  addi         t2, t2, 8 #update loop 0 counter
                  bltu         t2, gp, sub_3_2_0_t #branch for loop 0
                  lui          t1, 308734
                  addi         a5, zero, -7 #init loop 1 counter
                  addi         gp, zero, 17 #init loop 1 limit
                  xori         sp, a4, -581
sub_3_13_1_t:     and          a3, t5, a4
                  addi         a5, a5, 4 #update loop 1 counter
                  and          a2, s5, a4
                  srl          sp, s10, a0
                  addi         s7, zero, -6 #init loop 0 counter
                  slti         a2, t3, -209
                  addi         s0, zero, 8 #init loop 0 limit
sub_3_13_0_t:     sltiu        t3, gp, -505
                  addi         s7, s7, 7 #update loop 0 counter
                  beq          s7, s0, sub_3_13_0_t #branch for loop 0
                  ori          a0, ra, 130
                  beq          a5, gp, sub_3_13_1_t #branch for loop 1
                  auipc        t2, 864345
                  addi         s5, zero, -5 #init loop 1 counter
                  srl          a7, s8, t2
                  sra          s11, t2, s3
                  addi         s10, zero, 13 #init loop 1 limit
                  srl          s8, s0, s5
                  auipc        a2, 351243
sub_3_0_1_t:      addi         s0, t4, -1830
                  add          s3, a4, a1
                  addi         s5, s5, 4 #update loop 1 counter
                  sra          t3, s7, a4
                  addi         t5, zero, 2 #init loop 0 counter
                  add          t1, s11, s1
                  addi         t2, zero, 10 #init loop 0 limit
sub_3_0_0_t:      xor          zero, s10, a2
                  srli         s0, s3, 27
                  ori          s6, s9, -101
                  srl          gp, s4, s4
                  xor          t1, t5, s9
                  slti         s4, a7, 1433
                  xori         zero, a3, -849
                  nop
                  addi         t5, t5, 4 #update loop 0 counter
                  bne          t5, t2, sub_3_0_0_t #branch for loop 0
                  srli         s11, t6, 17
                  addi         t4, a1, 866
                  andi         s6, s8, 146
                  lui          a3, 284828
                  blt          s5, s10, sub_3_0_1_t #branch for loop 1
                  sra          s0, a2, zero
                  addi         s1, zero, 8 #init loop 1 counter
                  and          s11, a5, a7
                  addi         a0, zero, 8 #init loop 1 limit
                  sub          a2, s11, a4
sub_3_4_1_t:      slti         s6, s7, 2009
                  addi         s1, s1, -7 #update loop 1 counter
                  addi         a1, zero, 4 #init loop 0 counter
                  and          t4, t4, s3
                  xor          s11, zero, a0
                  sll          gp, s4, t0
                  addi         t2, zero, -14 #init loop 0 limit
                  sltu         t1, a0, t2
sub_3_4_0_t:      slt          sp, s11, a6
                  sll          a5, a3, a0
                  addi         a1, a1, -9 #update loop 0 counter
                  bne          a1, t2, sub_3_4_0_t #branch for loop 0
                  bgeu         s1, a0, sub_3_4_1_t #branch for loop 1
                  or           s7, a6, t6
                  add          sp, a7, a2
                  slti         s4, s1, 454
                  nop
                  srl          a6, s6, t6
                  blt          t6, s3, 12f
                  nop
                  auipc        t4, 364920
                  auipc        ra, 495455
                  sra          t5, s6, t3
                  nop
                  srl          ra, t5, sp
                  srl          s0, gp, t0
12:               blt          zero, s11, 27f
                  srl          a7, s4, a7
                  beq          s10, t2, 26f
                  bge          zero, a4, 21f
                  xori         s4, ra, -1798
                  bne          a5, a7, 25f
                  sltiu        ra, a0, 902
                  ori          gp, a5, 1408
                  srl          s4, s6, s6
21:               bne          s0, a3, 32f
                  auipc        gp, 175937
                  slli         a3, s8, 24
                  sll          ra, s10, s3
25:               slli         t4, ra, 0
26:               sltu         a1, sp, ra
27:               andi         s5, t4, -1705
                  sra          t4, a2, s6
                  sub          t5, t5, t1
                  srai         a2, t5, 8
                  srl          t3, t5, tp
32:               ori          a5, s8, 1906
                  slt          ra, ra, s6
                  xor          a5, t0, a5
                  xor          s3, ra, a4
                  xor          a0, ra, s2
                  sll          s0, s3, t0
                  add          a7, a6, ra
                  bne          s1, gp, 40f
40:               nop
                  sub          a6, sp, tp
                  sltu         a7, a3, s5
                  bgeu         s0, a3, 52f
                  ori          s6, zero, -293
                  sra          s3, s2, zero
                  add          s6, s5, s5
                  slli         t0, a3, 16
                  slt          s1, a3, s2
                  xor          t2, a1, t4
                  addi         a0, tp, 77
                  nop
52:               srai         s7, s3, 14
                  slti         s8, tp, -1965
                  ori          s10, t4, 361
                  sll          s11, s2, a0
                  and          a5, sp, zero
                  xor          t4, s5, s3
                  sll          t2, a4, t2
                  slt          t3, s6, s11
                  sub          a0, t2, a4
                  sll          t1, t4, t1
                  sub          t1, s5, s2
                  srai         s10, t4, 9
                  xori         a0, a3, 1592
                  sra          a7, ra, a3
                  sltiu        a7, s2, -982
                  srai         gp, s10, 11
                  xori         a1, t6, -84
                  beq          a3, s8, 87f
                  xori         t4, tp, -1848
                  bltu         a5, s4, 83f
                  bgeu         t5, a7, 84f
                  xor          s4, ra, a1
                  add          s10, s1, a6
                  blt          a1, a1, 94f
                  sra          s7, sp, sp
                  bne          s10, t4, 87f
                  addi         a6, a6, -1236
                  sltiu        zero, s10, 591
                  bne          s0, s9, 98f
                  slli         s3, s1, 11
                  add          t0, s6, a1
83:               andi         s6, a0, 468
84:               addi         t5, a1, 1640
                  addi         sp, s4, 1893
                  srli         s8, s3, 20
87:               auipc        t5, 793260
                  sub          t6, s6, a3
                  bltu         gp, s11, 102f
                  or           s8, a5, t1
                  sll          s0, s9, t5
                  or           a1, s4, sp
                  bltu         t3, a5, 96f
94:               add          tp, t5, t0
                  blt          a0, s4, 97f
96:               bge          a1, sp, 114f
97:               nop
98:               blt          t2, s2, 115f
                  srl          a2, s7, sp
                  xori         ra, a6, 1670
                  sltu         s7, s6, s2
102:              srl          ra, s3, t0
                  slti         a0, a3, -518
                  srai         a5, s1, 25
                  bge          a0, gp, 109f
                  nop
                  bge          s4, t2, 111f
                  srai         a5, a7, 10
109:              sra          s3, a4, zero
                  sltu         s10, t0, s7
111:              srai         t4, s4, 21
                  or           s7, sp, a6
                  srl          s1, a5, a2
114:              and          t1, t5, t4
115:              xor          a2, s6, a2
                  bltu         t0, s3, 126f
                  sra          s6, a2, t4
                  lui          a6, 580502
                  nop
                  slti         t2, s1, -1333
                  bne          s10, t6, 140f
                  sub          a0, s4, s2
                  srli         t1, s1, 9
                  bge          tp, t2, 134f
                  ori          s7, s11, 8
126:              srai         a1, a7, 8
                  xori         t5, a4, 1359
                  sll          s11, a4, t3
                  andi         t1, s5, -1856
                  xori         s10, t6, -1359
                  andi         a5, s8, -194
                  addi         t2, s6, 1529
                  andi         a2, t3, 1202
134:              srli         s5, a4, 7
                  blt          t1, s11, 150f
                  lui          s8, 661349
                  slt          s0, a6, gp
                  add          t0, s8, a5
                  ori          a2, a1, 722
140:              auipc        t4, 144367
                  slli         a7, s10, 21
                  or           ra, s8, t3
                  and          a0, a4, a2
                  blt          a0, zero, 154f
                  nop
                  sll          tp, t6, s9
                  bgeu         t4, a2, 154f
                  srl          tp, s5, t3
                  or           a1, s4, a0
150:              bgeu         s7, tp, 168f
                  xori         s5, t2, 30
                  srai         s6, a6, 13
                  bge          s3, t5, 156f
154:              addi         zero, s1, -476
                  or           s10, a5, s1
156:              andi         zero, s1, 1524
                  bgeu         t3, s10, 159f
                  slli         a7, s4, 23
159:              sra          t4, s10, s7
                  slli         s7, tp, 26
                  bge          sp, s6, 173f
                  bge          t0, s4, 164f
                  sra          t0, a7, s0
164:              bltu         s9, sp, 167f
                  or           ra, a7, s10
                  and          s6, a3, t4
167:              or           t6, s1, gp
168:              bgeu         a5, s5, 177f
                  srli         t5, s0, 2
                  ori          a0, tp, 2038
                  sub          sp, tp, s7
                  sub          s5, s2, tp
173:              bltu         t1, s9, 177f
                  addi         s7, s1, -1106
                  slti         t2, a1, 1756
                  bne          t3, t5, 195f
177:              srli         t2, s2, 12
                  sltu         t1, a0, s11
                  blt          a0, s11, 189f
                  nop
                  ori          t4, sp, 1615
                  blt          ra, s11, 185f
                  bne          s3, tp, 201f
                  bge          t2, a6, 196f
185:              ori          zero, s9, -183
                  bge          t2, t5, 188f
                  xori         tp, t4, -1678
188:              lui          s0, 844960
189:              srli         a2, s11, 21
                  sll          t2, s11, s3
                  lui          a5, 748610
                  and          s11, s3, ra
                  srl          gp, t4, s2
                  ori          s0, t5, -705
195:              lui          a0, 478569
196:              xor          s5, s3, s4
                  andi         a0, a3, 463
                  bltu         s9, a3, 206f
                  slli         t1, t2, 26
                  and          sp, t6, s3
201:              srli         s0, s3, 9
                  xor          s10, a6, s5
                  xori         s10, s4, -1383
                  bltu         s4, t0, 215f
                  blt          t3, ra, 220f
206:              andi         s10, a7, 1055
                  lui          a5, 579732
                  srai         s4, gp, 9
                  beq          t6, t2, 227f
                  srl          s8, t3, s7
                  ori          a3, a3, -1286
                  lui          a7, 590634
                  xor          gp, s5, a4
                  xor          a7, zero, s0
215:              lui          gp, 596002
                  bltu         s10, a2, 217f
217:              srl          gp, t6, s0
                  srl          s5, t6, t5
                  sra          s4, a0, gp
220:              ori          s8, a1, 1251
                  bltu         t6, s10, 238f
                  add          s3, a0, t2
                  sll          a1, t2, sp
                  auipc        a5, 1016105
                  sub          t6, s10, t2
                  bgeu         t0, t5, 236f
227:              slli         s1, s8, 21
                  ori          t0, t6, 565
                  auipc        s7, 692876
                  sll          t4, t5, t4
                  and          s1, a0, t6
                  and          t2, s4, t2
                  xor          zero, t1, t3
                  srl          s11, a0, s11
                  sra          t2, gp, ra
236:              sll          sp, a3, t1
                  andi         s4, s3, -554
238:              slt          ra, s6, ra
                  slti         s11, s11, 851
                  srl          s8, t3, s0
                  lui          s7, 467250
                  slli         s11, a5, 25
                  bgeu         t0, t0, 251f
                  bltu         s3, t6, 257f
                  beq          s4, s5, 264f
                  sub          t4, s1, t4
                  blt          t6, s2, 265f
                  beq          zero, s1, 263f
                  sra          zero, zero, a1
                  slti         a1, s3, 373
251:              srl          s1, t4, t6
                  slli         a0, zero, 22
                  add          zero, a5, a7
                  sltiu        s0, s6, 1233
                  andi         zero, s6, 838
                  srai         a5, s1, 20
257:              bgeu         zero, a3, 264f
                  addi         a5, ra, -1615
                  add          a7, s7, s6
                  slt          t5, a1, zero
                  xori         s7, a3, -173
                  slt          zero, s5, a0
263:              blt          s9, t4, 275f
264:              or           t1, a6, s2
265:              auipc        s11, 421519
                  beq          a3, s6, 276f
                  bne          tp, sp, 271f
                  slti         a0, s1, -708
                  blt          a2, s2, 275f
                  slti         s10, gp, 1660
271:              srli         s0, s3, 0
                  slli         t5, tp, 17
                  slt          t0, a7, gp
                  sra          a1, a1, s9
275:              nop
276:              ori          t5, a5, 624
                  srai         zero, t2, 31
                  or           gp, s7, s5
                  nop
                  ori          s4, a3, -2005
                  or           t2, t6, s7
                  nop
                  bgeu         sp, s1, 301f
                  srli         s8, s11, 17
                  and          t5, t4, a5
                  and          s11, s3, a1
                  slt          t5, s4, a7
                  slli         t5, s0, 23
                  bltu         t1, ra, 299f
                  addi         s3, t5, -1109
                  srl          t5, a3, sp
                  blt          s10, a6, 293f
293:              slti         t0, s2, -926
                  ori          t4, gp, -871
                  slt          t3, a6, s8
                  bltu         s11, s8, 306f
                  srai         sp, s1, 2
                  sll          t0, t2, t4
299:              slt          t3, s5, t3
                  lui          s5, 941319
301:              slt          zero, t4, s1
                  slti         a5, s0, -157
                  sll          s6, a4, s7
                  add          a0, t4, a4
                  sltiu        t2, s8, -11
306:              bne          t0, s3, 313f
                  sltiu        a3, t0, -765
                  beq          a4, a1, 323f
                  blt          tp, sp, 318f
                  addi         a0, a7, 1087
                  srai         s4, t1, 23
                  nop
313:              bltu         s0, t0, 316f
                  srl          a5, s11, zero
                  or           a7, s11, a0
316:              bgeu         s8, zero, 331f
                  sltiu        s7, a1, -1715
318:              bltu         tp, t4, 328f
                  bgeu         t1, s6, 325f
                  addi         s11, s8, -891
                  blt          a3, s2, 331f
                  sltiu        s11, s4, 789
323:              sra          t6, t0, t2
                  add          t1, a4, a2
325:              srl          s7, tp, s7
                  srai         a3, s10, 18
                  srl          zero, s5, t5
328:              lui          a5, 523569
                  bgeu         a6, s6, 339f
                  sub          a3, s2, s9
331:              auipc        s11, 974572
                  addi         a6, sp, 745
                  bgeu         a5, t1, 341f
                  srli         s6, t3, 29
                  auipc        a6, 325628
                  xori         tp, a6, -488
                  srai         s7, t3, 31
                  add          t1, a0, tp
339:              sltu         t3, s3, zero
                  srl          a7, s9, sp
341:              addi         a7, a3, -884
                  bge          s10, s11, 344f
                  srl          s8, ra, s7
344:              srli         a2, ra, 28
                  sltiu        s11, a5, -1492
                  slt          tp, a5, t4
                  nop
                  lui          a0, 197703
                  addi         tp, a4, 1552
                  bne          t1, t1, 353f
                  blt          s8, t4, 364f
                  bltu         t4, s0, 364f
353:              beq          t0, s6, 361f
                  sub          t3, zero, a2
                  beq          s1, t4, 372f
                  sltiu        tp, s6, 1222
                  bgeu         s11, ra, 369f
                  addi         zero, t1, -1688
                  nop
                  nop
361:              srli         t4, a1, 28
                  srli         s1, t5, 18
                  srli         t4, s8, 11
364:              sra          s0, a1, s9
                  beq          t2, s7, 367f
                  add          a1, t1, s3
367:              slli         s5, s5, 12
                  and          t2, s6, zero
369:              bne          s10, gp, 380f
                  sltiu        t5, s8, -1284
                  addi         gp, t3, 1439
372:              sltu         s1, t6, s11
                  andi         s8, s6, 1262
                  bge          t6, zero, 392f
                  and          a7, a3, s11
                  or           s7, t5, ra
                  ori          s7, a5, 158
                  bne          t5, tp, 397f
                  ori          t5, t1, -735
380:              bge          a3, a1, 384f
                  slli         s7, sp, 12
                  bltu         a4, t4, 400f
                  or           t1, a0, a3
384:              lui          s10, 725691
                  add          t5, t1, s3
                  and          a1, a7, s7
                  xor          t3, a1, s7
                  beq          a3, a4, 406f
                  sub          s0, s10, a0
                  slt          a5, s11, a2
                  slli         s7, sp, 13
392:              srli         t5, s4, 10
                  sltiu        a5, s2, 923
                  srl          s5, s7, s7
                  and          t6, t6, a6
                  sub          a3, s6, tp
397:              bge          a2, gp, 401f
                  bge          a4, s7, 417f
                  xori         a6, s2, 1763
400:              beq          a5, t3, 412f
401:              nop
                  bge          s9, s5, 420f
                  bge          s10, a5, 420f
                  addi         s5, s11, -1285
                  lui          s5, 1030160
406:              sltu         s7, t0, a5
                  andi         a5, s2, 878
                  bgeu         t6, t6, 416f
                  addi         s8, s1, -650
                  add          s4, s0, t2
                  slt          tp, s7, s9
412:              sra          s6, s1, s5
                  xor          t1, s4, t4
                  lui          sp, 286698
                  xor          t3, s4, a7
416:              xor          a3, a3, s5
417:              or           s5, gp, t4
                  bgeu         a2, a3, 433f
                  and          s1, a0, tp
420:              auipc        tp, 485087
                  slli         t3, s2, 11
                  xor          t4, a7, a3
                  slt          t0, s10, s1
                  nop
                  xor          t0, a3, a3
                  auipc        s7, 33629
                  or           s8, s11, a5
                  slti         a1, s5, -562
                  ori          zero, a4, -222
                  sub          t6, a1, s7
                  bltu         ra, a3, 441f
                  beq          s1, s9, 444f
433:              andi         s1, s8, 173
                  sltiu        gp, t6, -841
                  blt          s10, a7, 445f
                  xor          s6, tp, a7
                  bltu         zero, a0, 439f
                  slli         t0, a5, 3
439:              sltiu        sp, t3, 1223
                  slti         s11, tp, -1570
441:              xori         t1, a3, 810
                  and          t3, t4, a5
                  addi         sp, s3, -2044
444:              sltiu        t0, sp, 1883
445:              or           s11, s11, s1
                  add          s4, sp, t0
                  or           t1, t4, a7
                  and          s7, ra, s3
                  add          a3, a0, s9
                  sltiu        a0, s4, -102
                  sub          t4, t4, t1
                  slti         t0, s1, -29
                  slt          a1, s2, zero
                  sltiu        sp, s8, 1778
                  addi         a3, a2, 1624
                  auipc        a6, 565092
                  slti         t4, t2, -561
                  xori         a0, s1, -1351
                  srai         t4, s10, 6
                  nop
                  bge          gp, s4, 480f
                  bne          t4, a6, 469f
                  srli         a2, s3, 31
                  lui          s11, 977286
                  auipc        t5, 230775
                  slli         ra, gp, 30
                  slti         t2, t2, 1342
                  ori          s4, s6, -1765
469:              sra          s6, t6, s10
                  srai         s1, t6, 11
                  beq          s1, s0, 489f
                  sltu         s7, zero, t0
                  xori         t1, ra, -1896
                  slli         s4, s3, 7
                  bne          gp, gp, 488f
                  addi         s8, sp, 1245
                  auipc        sp, 407647
                  sub          sp, s9, t5
                  andi         t6, t6, -583
480:              xori         t6, t6, 126
                  srl          t4, ra, a5
                  addi         s7, s10, -1028
                  blt          a5, tp, 493f
                  slti         s8, s2, -1805
                  andi         s3, s8, 756
                  or           a5, t6, a2
                  nop
488:              beq          a5, t2, 492f
489:              srai         t6, s1, 30
                  sltiu        s6, s8, 1915
                  srli         a7, a2, 16
492:              xori         t0, a2, -1600
493:              slti         zero, gp, 1143
                  auipc        a1, 932221
                  sltiu        t6, t0, 805
                  auipc        gp, 383778
                  nop
                  or           sp, zero, s7
                  blt          zero, t3, 505f
                  sll          a7, t4, a1
                  bne          ra, t6, 519f
                  bltu         s7, tp, 505f
                  sltiu        a7, a5, 1592
                  bge          a3, a2, 507f
505:              or           ra, t1, s2
                  addi         t4, a3, -1255
507:              bge          s11, a5, 511f
                  sub          s8, s9, s5
                  srli         t0, s10, 29
                  or           s3, t3, gp
511:              bltu         a5, t0, 519f
                  bltu         t2, s8, 524f
                  srli         s10, s9, 29
                  ori          zero, zero, 45
                  bne          s0, s4, 526f
                  sub          s1, t1, t2
                  sll          s10, s8, s11
                  bge          gp, t5, 536f
519:              srl          t2, s2, t0
                  sll          a1, s4, a0
                  auipc        a5, 754185
                  bgeu         a0, sp, 534f
                  xor          t0, t6, t0
524:              xori         t1, a1, -1074
                  addi         s7, s10, 1091
526:              nop
                  slt          s7, zero, a5
                  slt          a6, s8, s9
                  addi         a1, s0, 878
                  bgeu         gp, s9, 548f
                  bge          a4, sp, 541f
                  xori         t2, t0, -1511
                  srl          s7, sp, t2
534:              blt          t5, t4, 536f
                  and          s4, s3, s7
536:              bgeu         a3, s9, 555f
                  lui          t4, 155295
                  andi         sp, a3, -808
                  sll          zero, t3, a1
                  sra          s7, t3, t1
541:              bge          s8, a3, 542f
542:              and          t4, s3, a3
                  sltu         a0, t0, a6
                  ori          s4, s10, -494
                  xor          a2, t4, s6
                  srli         t5, s0, 2
                  ori          a1, a6, -1788
548:              srai         s10, t3, 24
                  sltu         a2, s6, t3
                  srli         t4, t3, 24
                  andi         a1, t2, 829
                  srli         t3, a6, 23
                  lui          a0, 479817
                  auipc        a1, 455354
555:              xor          t0, t4, a3
                  bgeu         zero, t1, 565f
                  sll          s5, t2, s11
                  slti         t4, sp, 2002
                  addi         t1, s8, 1500
                  sub          s4, a2, a0
                  andi         s1, a5, 97
                  bgeu         t0, s11, 577f
                  srai         ra, gp, 3
                  slt          s1, t0, s5
565:              beq          a6, a3, 580f
                  addi         a5, s0, -2038
                  andi         s7, s2, -170
                  blt          t5, s6, 580f
                  srl          s8, s4, t2
                  srai         a7, s6, 20
                  xori         a1, t0, 1499
                  sll          tp, s9, t2
                  srl          s11, t1, t2
                  nop
                  and          tp, t4, a2
                  or           t0, ra, a4
577:              nop
                  ori          t1, s7, 107
                  srli         t6, s1, 23
580:              xor          tp, t6, s7
                  srli         a1, a7, 14
                  sltu         zero, t5, s5
                  lui          a6, 166168
                  add          s3, s10, s3
                  sll          a7, t0, t5
                  auipc        s8, 538730
                  sltu         a3, a0, a1
                  slti         a2, a4, -54
                  srli         s4, s8, 20
                  addi         s5, zero, 1950
                  or           s8, s9, t4
                  sll          s0, a7, sp
                  srai         t3, t3, 17
                  slti         s10, a2, 826
                  srl          s10, zero, a1
                  srli         t0, s11, 27
                  srai         a6, a0, 17
                  srl          t5, gp, s9
                  srl          a7, s1, tp
                  sra          tp, s7, s8
                  addi         s3, t5, 1289
                  blt          tp, zero, 605f
                  slli         s10, s10, 0
                  or           s11, a2, t4
605:              auipc        s11, 824571
                  sltiu        t4, a1, -564
                  srli         s7, a7, 30
                  blt          s7, t3, 618f
                  bge          t0, s1, 613f
                  nop
                  blt          t4, s11, 629f
                  bgeu         s1, s8, 620f
613:              bltu         t0, t5, 616f
                  bgeu         a2, t4, 621f
                  xori         gp, s6, -1421
616:              bgeu         t5, s5, 625f
                  bge          s8, t3, 632f
618:              auipc        t5, 68124
                  xor          s7, s3, s1
620:              sltu         t6, s9, sp
621:              sltiu        t4, a3, -1193
                  sll          s10, s3, t4
                  xor          s7, a1, s8
                  sub          a1, zero, s5
625:              or           s4, a2, a6
                  beq          s10, s10, 645f
                  and          t1, sp, a5
                  bltu         t0, a2, 646f
629:              srl          gp, s6, s7
                  nop
                  ori          s1, gp, -1501
632:              addi         s11, gp, 1376
                  slt          s10, s10, s6
                  sltiu        t2, s0, -65
                  or           t4, s3, s10
                  slti         a1, t3, -238
                  xori         a5, a2, 515
                  auipc        zero, 14815
                  sub          s10, t0, t1
                  auipc        a0, 257520
                  slt          t6, a0, gp
                  bgeu         a1, t1, 644f
                  lui          t0, 805971
644:              bgeu         s5, s8, 656f
645:              auipc        s11, 114990
646:              sll          s8, s0, t1
                  xori         t4, t3, 913
                  sltiu        sp, t6, 389
                  or           t0, a3, zero
                  ori          t0, sp, -829
                  lui          t0, 294837
                  blt          tp, s3, 665f
                  srai         a2, zero, 0
                  auipc        s8, 911951
                  beq          gp, s1, 674f
656:              sub          s1, t6, s4
                  xori         sp, t0, -1719
                  ori          s3, s6, -1528
                  sltiu        s7, s2, -1492
                  srl          a5, sp, a5
                  bne          s8, s3, 679f
                  bgeu         t0, zero, 663f
663:              andi         a0, ra, -1618
                  sra          ra, s5, a7
665:              xori         t6, t2, 202
                  sra          s1, t3, s0
                  andi         a5, s10, -772
                  sll          ra, t5, a3
                  xori         gp, sp, -324
                  srai         s1, ra, 9
                  nop
                  ori          s6, s5, -959
                  slt          gp, sp, t2
674:              sltu         a2, s5, a2
                  sub          a2, s7, a4
                  bltu         s1, t4, 678f
                  xor          t3, s5, s0
678:              slti         t2, s0, -347
679:              auipc        s3, 313845
                  andi         s11, s0, 1741
                  nop
                  add          a1, s6, gp
                  addi         s4, tp, 1184
                  srli         sp, zero, 3
                  slli         t1, a0, 25
                  slli         tp, a4, 3
                  xor          s5, a2, a1
                  lui          a6, 1033586
                  and          a6, a1, s7
                  bltu         s0, t2, 708f
                  srl          ra, s2, t5
                  beq          s8, s9, 702f
                  slli         s8, s0, 2
                  or           s0, gp, s4
                  bltu         a6, ra, 705f
                  bgeu         s3, s8, 708f
                  addi         t1, s4, -296
                  sub          zero, gp, sp
                  sll          t6, s10, s8
                  blt          s1, a7, 704f
                  ori          t2, s0, 1262
702:              srli         tp, s2, 2
                  bge          t2, s11, 720f
704:              bgeu         s11, s10, 714f
705:              addi         a1, s6, -1286
                  beq          s3, t0, 714f
                  bge          ra, s0, 718f
708:              and          s0, t6, s7
                  or           a6, a1, t2
                  bne          s1, a2, 716f
                  bge          a6, t4, 729f
                  and          s0, tp, zero
                  xori         s8, zero, 838
714:              bgeu         s9, s5, 729f
                  bgeu         gp, s11, 733f
716:              slt          t4, t5, tp
                  blt          s8, t5, 735f
718:              bne          sp, s3, 725f
                  bltu         t1, a0, 731f
720:              bltu         t0, a0, 730f
                  srai         s0, t1, 15
                  beq          s6, t4, 741f
                  ori          sp, t4, -973
                  sltu         t6, ra, a3
725:              and          tp, s10, s11
                  bgeu         t5, s2, 730f
                  bne          a6, a0, 746f
                  bgeu         ra, t0, 738f
729:              slt          a2, s11, a7
730:              sub          t6, a0, a2
731:              and          t6, a3, a0
                  auipc        t0, 190566
733:              addi         s6, t4, 2031
                  addi         t1, s1, -468
735:              addi         s5, s1, 684
                  sub          gp, s10, a4
                  sub          s10, a0, sp
738:              sub          a6, t0, a0
                  blt          s9, a4, 741f
                  xori         a3, s4, 575
741:              and          a1, s6, s5
                  slli         t3, t3, 3
                  and          t3, a0, tp
                  bltu         t1, s3, 752f
                  slt          a7, s2, s8
746:              srl          t0, a4, a0
                  sltiu        t6, zero, 1088
                  beq          s0, a1, 766f
                  addi         s11, s5, -1905
                  and          a1, zero, t5
                  slli         a6, zero, 15
752:              auipc        s0, 823340
                  srai         a0, ra, 17
                  sll          ra, t1, sp
                  slt          s1, t3, s0
                  slti         t3, a3, 171
                  addi         s4, ra, 329
                  addi         t5, a0, -830
                  lui          s4, 40812
                  andi         a3, t3, 1143
                  srli         t0, s11, 17
                  add          s8, gp, a3
                  xori         s10, s5, -833
                  srai         t4, a3, 2
                  bltu         tp, tp, 776f
766:              bgeu         t3, s0, 769f
                  sra          t3, s5, s1
                  beq          a3, s5, 770f
769:              bltu         t3, s3, 782f
770:              bgeu         t4, t0, 780f
                  beq          a7, s0, 786f
                  slti         t0, s11, 1006
                  bgeu         s3, t2, 774f
774:              beq          s3, s7, 777f
                  sub          s8, t5, a0
776:              nop
777:              sltiu        t5, t0, -1794
                  slti         sp, a4, 1793
                  xor          a0, zero, s9
780:              bne          a5, s8, 792f
                  auipc        s4, 75172
782:              srl          s6, a1, ra
                  slti         a6, t3, -1279
                  xor          ra, s9, s11
                  auipc        s1, 184243
786:              srli         s3, tp, 23
                  or           s11, a5, a7
                  ori          s8, a4, -1743
                  auipc        s1, 151359
                  addi         a3, s7, 1799
                  nop
792:              ori          t6, s9, -784
                  nop
                  and          s10, tp, a0
                  xor          s11, t2, a4
                  sra          s10, a7, gp
                  or           tp, a6, t5
                  ori          a2, a5, 1457
                  srai         t5, t2, 20
                  sltiu        s10, t5, 423
                  sltu         s3, s6, t2
                  xori         s6, s2, 385
                  xori         s7, a4, -113
                  and          a6, t1, tp
                  bne          s11, t2, 817f
                  srai         a0, s0, 19
                  or           a6, s1, s5
                  sub          s0, sp, ra
                  slt          s8, s11, a6
                  slli         a0, a5, 4
                  blt          a1, sp, 815f
                  nop
                  ori          ra, t4, 80
                  bltu         s3, a5, 822f
815:              sltiu        s3, s7, 1326
                  srli         t3, s8, 29
817:              addi         t4, t2, -802
                  bge          t3, a4, 827f
                  srli         a0, zero, 6
                  ori          s10, s5, 1667
                  bne          s8, a2, 838f
822:              srai         sp, tp, 0
                  xori         a3, s4, 1656
                  slli         s7, s0, 12
                  sub          a7, zero, s5
                  slt          a0, t3, sp
827:              beq          s4, zero, 837f
                  bltu         tp, sp, 834f
                  nop
                  sub          s1, t5, zero
                  bge          s8, s11, 835f
                  srai         s10, a3, 16
                  slli         a0, gp, 24
                  addi         s3, zero, 9 #init loop 0 counter
                  srai         s10, a1, 24
                  slt          s4, a0, s11
                  slli         s5, zero, 17
                  slli         s0, t5, 1
                  sltu         s0, t4, a2
                  xori         a7, t6, -221
                  sltiu        s5, s4, -1732
                  srli         a0, a5, 31
                  auipc        t5, 808268
                  srai         a0, s0, 16
                  srai         s8, s9, 7
                  srai         s1, t4, 22
                  sub          s4, a5, a5
                  xori         t6, s5, 798
                  lui          t3, 874151
                  slti         a0, t1, 761
                  andi         s10, tp, -1764
                  addi         s7, zero, -13 #init loop 0 limit
                  andi         s5, t4, -338
sub_3_3_0_t:      add          t5, s7, t4
                  slt          zero, t3, s6
                  xori         a5, a0, -1579
                  xor          tp, a4, t6
                  addi         s3, s3, -4 #update loop 0 counter
                  ori          t3, a0, -204
                  sra          t1, a5, t6
                  sub          t2, s0, gp
                  bge          s3, s7, sub_3_3_0_t #branch for loop 0
                  sub          tp, zero, tp
834:              or           zero, s8, t4
835:              xori         a5, s7, -1848
                  beq          a4, gp, 837f
837:              slli         s1, t2, 12
838:              sltu         a2, a1, s9
                  or           a3, s10, t3
                  srl          s0, s7, zero
                  beq          s5, sp, 859f
                  slti         s8, a0, 620
                  sll          a3, a7, t1
                  beq          t4, t2, 854f
                  and          s1, s11, ra
                  addi         a3, s6, -1332
                  sll          a5, a0, a3
                  bgeu         t2, s6, 867f
                  auipc        s8, 77085
                  sll          s11, a2, a0
                  ori          zero, a6, 587
                  bne          s7, a4, 862f
                  srli         zero, t1, 7
854:              srl          s8, ra, a2
                  bge          a3, a5, 863f
                  srl          t0, t6, t5
                  add          s3, t5, a2
                  bge          s7, zero, 866f
859:              bne          s4, ra, 868f
                  bge          a1, s11, 862f
                  sub          s7, s9, t5
862:              add          s5, a1, a0
863:              slli         t6, s2, 24
                  or           s5, gp, t0
                  sra          s7, zero, s6
866:              and          s4, s10, s8
867:              xor          a5, tp, s8
868:              sub          tp, tp, s1
                  bltu         s1, s0, 881f
                  slli         s8, t6, 1
                  or           a0, s10, s11
                  lui          t6, 453771
                  bge          t3, s5, 885f
                  auipc        s1, 341529
                  sltu         a2, s5, gp
                  andi         t3, a0, 821
                  lui          s4, 926086
                  auipc        zero, 17442
                  bgeu         a1, s3, 897f
                  slt          a7, s10, s7
881:              slti         t0, s10, 1561
                  bge          a7, a6, 893f
                  slli         t6, t2, 28
                  ori          t6, t1, -1222
885:              beq          a6, a6, 897f
                  srli         s3, s2, 14
                  lui          s11, 644365
                  sltiu        a3, t1, 46
                  sltu         a6, a7, t0
                  slt          s10, s2, s8
                  bgeu         a5, a2, 909f
                  sub          s6, a0, t1
893:              or           a5, s3, s1
                  addi         a2, s3, 1576
                  slti         s1, a6, -804
                  addi         s0, s4, 1114
897:              slli         zero, sp, 16
                  xori         a7, t3, -468
                  srl          zero, zero, s4
                  blt          a1, a3, 903f
                  srl          s10, a6, t3
                  slli         a7, s1, 21
903:              slti         t4, t4, -1748
                  sra          t0, s7, a7
                  or           gp, t6, s8
                  auipc        s4, 386124
                  andi         t4, s6, 241
                  bgeu         t1, gp, 911f
909:              sll          a7, t3, s11
                  auipc        t2, 300818
911:              srl          t3, tp, a3
                  nop
                  bltu         s7, t2, 928f
                  beq          s0, s5, 931f
                  sltu         t4, s4, s3
                  slti         tp, t3, 380
                  addi         t2, a1, 1376
                  bge          a7, a3, 928f
                  and          t3, a3, ra
                  beq          a6, t2, 930f
                  sll          s4, ra, sp
                  slli         s4, ra, 12
                  lui          t4, 587267
                  or           tp, s10, t6
                  andi         t2, s2, -140
                  or           t4, s1, tp
                  xor          gp, sp, t0
928:              nop
                  srl          a6, gp, s4
930:              nop
931:              xori         zero, t0, -1101
                  srli         s3, t3, 31
                  sra          t3, s6, a1
                  bne          t6, gp, 941f
                  slli         s6, a0, 11
                  auipc        a5, 707955
                  bgeu         a2, a6, 939f
                  xori         a7, t6, 275
939:              blt          s10, t4, 952f
                  lui          t5, 982223
941:              xor          s5, s7, s2
                  lui          s8, 901273
                  sltu         tp, s9, t4
                  srl          zero, t4, s11
                  slt          s11, s3, a4
                  bltu         s6, tp, 952f
                  bltu         s4, a5, 951f
                  addi         gp, a3, -1922
                  sltiu        a3, a1, 981
                  nop
951:              bge          s4, zero, 969f
952:              bge          t1, a2, 971f
                  sltu         s7, a6, zero
                  slli         s0, s11, 9
                  slti         t2, s6, -1716
                  bgeu         a5, t0, 971f
                  srli         s6, ra, 10
                  andi         ra, t4, -1483
                  ori          s4, ra, 1764
                  or           t4, a6, s2
                  sub          s10, s9, tp
                  nop
                  sub          ra, a5, a6
                  bltu         a3, a5, 976f
                  and          tp, s1, s2
                  bge          s6, a2, 968f
                  bge          sp, a4, 976f
968:              bge          s4, s5, 971f
969:              sll          s6, t1, s9
                  beq          zero, s4, 976f
971:              srl          ra, tp, s2
                  blt          sp, s9, 976f
                  xori         s11, a0, -143
                  ori          s0, t5, 1268
                  bge          gp, a0, 976f
976:              srl          s4, s5, s7
                  andi         s0, t4, 1794
                  srli         s6, s6, 5
                  lw           t1, 4(s2)
                  slti         t5, a4, -1404
                  addi         s2, s2, 16
                  srli         t5, a4, 23
                  and          a1, a5, a7
                  srl          s4, s7, s1
                  nop
                  nop
1363:             addi x1, x6, 1
1363:             jalr x1, x1, 0
sub_5:            beq          s11, s8, sub_5_stack_p
sub_5_stack_p:    addi         s2, s2, -24
                  sltu         tp, s11, s4
                  slt          s0, t2, s2
                  sw           t1, 4(s2)
                  nop
                  ori          s8, a7, -651
                  auipc        sp, 905952
                  sltiu        s1, zero, -225
                  bge          s10, t1, 4f
                  slli         a1, s8, 6
4:                addi         a3, t6, 135
                  sltiu        t5, tp, -1567
                  bltu         a1, s5, 10f
                  sll          t6, s7, a7
                  or           a3, s10, a2
                  bltu         s1, t5, 10f
10:               and          a6, t1, t3
                  lw           t1, 4(s2)
                  xori         s8, s6, -1980
                  addi         s2, s2, 24
                  auipc        a3, 347254
                  slli         zero, s8, 6
                  sltiu        s4, a7, 1278
                  srai         a6, a7, 1
                  or           a2, t5, a5
26:               addi x27, x6, 1
26:               jalr x27, x27, 0
sub_1:            blt          t5, zero, sub_1_stack_p
                  xori         s6, zero, -1859
sub_1_stack_p:    addi         s2, s2, -24
                  xori         tp, t2, 638
                  sw           t1, 4(s2)
                  slti         t4, a3, -1628
                  addi         t6, zero, -8 #init loop 0 counter
                  xori         a2, a0, -1067
                  nop
                  or           s8, t5, s0
                  nop
                  srl          t1, s6, a7
                  slt          a0, ra, s1
                  sltu         tp, s4, s3
                  nop
                  slt          s11, ra, ra
                  xor          zero, gp, t1
                  addi         t4, zero, 20 #init loop 0 limit
                  nop
sub_1_0_0_t:      slti         s10, s10, 808
                  sra          s7, a4, t4
                  auipc        a5, 812428
                  sltu         a7, s9, t5
                  auipc        tp, 428506
                  addi         t6, t6, 2 #update loop 0 counter
                  sll          s3, s3, s0
                  auipc        s3, 13997
                  auipc        zero, 40648
                  sltiu        s10, s1, 62
                  bltu         t6, t4, sub_1_0_0_t #branch for loop 0
                  xori         t1, a5, -1005
                  bge          gp, t5, 7f
                  addi         sp, a5, 1130
                  addi         s1, gp, -92
                  srli         s11, s0, 18
                  andi         t3, gp, 1123
                  sub          s11, s9, s7
                  sub          sp, s9, t1
7:                xor          s8, t6, a6
                  bltu         a7, a4, 12f
                  sltiu        a2, s3, -434
                  slli         s0, t3, 1
                  add          ra, ra, s7
12:               bltu         s8, a2, 17f
                  bge          s11, s4, 32f
                  ori          ra, s9, 392
                  sll          s7, a1, a0
                  andi         t3, a6, 1827
17:               slli         a7, ra, 27
                  bltu         a7, sp, 38f
                  bge          s6, zero, 38f
                  ori          t4, tp, -1244
                  blt          t2, tp, 28f
                  srl          a0, s5, s1
                  sll          a3, t0, ra
                  slti         t3, gp, 85
                  lui          a2, 499424
                  sll          s7, s9, t3
                  bgeu         s3, t6, 46f
28:               sra          s4, t6, s4
                  sltiu        s1, a5, 1382
                  addi         t3, s1, -1133
                  nop
32:               addi         a1, t6, 482
                  sltu         s3, a1, s8
                  ori          s4, t1, 1115
                  sltu         s6, t5, s5
                  sltu         sp, s5, t6
                  bge          s5, s10, 41f
38:               bgeu         s8, s3, 48f
                  nop
                  lui          s1, 383281
41:               sltu         a3, a0, t4
                  sub          s3, s2, s5
                  auipc        t2, 998014
                  slti         a2, s10, -752
                  lui          zero, 302889
46:               srl          s4, s10, s3
                  sltiu        a2, t0, 2000
48:               andi         t6, s2, -569
                  ori          s10, a7, -314
                  addi         tp, s9, -1877
                  add          a3, t5, a2
                  sll          a2, s1, zero
                  srl          a5, s3, s5
                  sll          t6, s6, a1
                  sltu         s7, sp, t3
                  or           t1, gp, a4
                  andi         s6, a7, -1516
                  srai         s10, t6, 10
                  sltu         t4, a6, t1
                  sltiu        s8, t3, -140
                  bge          s0, tp, 78f
                  xor          s6, a4, t0
                  or           s11, a0, s5
                  sltu         t6, a1, sp
                  xor          t4, a7, s6
                  slli         a7, t3, 20
                  nop
                  srli         s6, t4, 18
                  ori          gp, a6, 1994
                  add          a7, s9, s6
                  and          s6, a3, tp
                  slt          sp, s11, a5
                  nop
                  andi         tp, a0, -1336
                  sltiu        s6, t2, -435
                  sltu         s3, t6, s6
                  lui          t3, 274121
78:               andi         s5, s11, 1178
                  beq          ra, s7, 83f
                  sub          a6, s7, s7
                  bne          s8, a3, 84f
                  addi         zero, s7, -1135
83:               addi         a5, a6, 1761
84:               slti         a3, t5, 476
                  slli         a1, a6, 12
                  andi         a6, a5, -1910
                  nop
                  and          a7, a3, a7
                  ori          gp, s9, 724
                  lw           t1, 4(s2)
                  srli         ra, s4, 10
                  addi         a1, gp, -627
                  xori         a2, s0, 928
                  addi         s2, s2, 24
                  add          a3, t6, s9
127:              addi x10, x6, 0
127:              jalr x10, x10, 0
sub_4:            slti         ra, s3, 1483
                  nop
                  bltu         a7, a6, sub_4_stack_p
                  sub          t6, s0, s2
sub_4_stack_p:    addi         s2, s2, -32
                  sw           t1, 4(s2)
                  sll          a3, s8, s7
                  sltiu        s10, a4, -198
                  sltiu        tp, a0, -217
                  xor          s10, t2, s8
                  ori          s3, a0, 1605
                  bgeu         t3, s6, 15f
                  xori         a5, t3, -1660
                  addi         t2, s3, -1674
                  sra          a1, t3, a4
                  or           t6, s0, s2
                  and          t5, s0, a3
                  xor          s8, tp, gp
                  bgeu         a1, t5, 10f
10:               sltiu        a3, s8, -1781
                  beq          t4, s0, 15f
                  and          t3, gp, s7
                  bge          s0, s9, 17f
                  sltu         t1, t6, a3
15:               andi         a3, sp, -472
                  auipc        s10, 991238
17:               and          s1, s3, zero
                  srai         t3, a0, 13
                  and          a3, s6, s3
                  lw           t1, 4(s2)
                  ori          s8, a2, -558
                  addi         s2, s2, 32
                  sub          gp, t4, t4
33:               addi x29, x6, 1
33:               jalr x29, x29, 0
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x14, x18, zero
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x30, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x30, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x30, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x30, x4, ecall_handler
                  li x4, 0x1
                  beq x30, x4, instr_fault_handler
                  li x4, 0x5
                  beq x30, x4, load_fault_handler
                  li x4, 0x7
                  beq x30, x4, store_fault_handler
                  li x4, 0xc
                  beq x30, x4, pt_fault_handler
                  li x4, 0xd
                  beq x30, x4, pt_fault_handler
                  li x4, 0xf
                  beq x30, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

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
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x18, x14, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x14, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x14, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x18, x14, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x18, x14, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x18, x14, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
