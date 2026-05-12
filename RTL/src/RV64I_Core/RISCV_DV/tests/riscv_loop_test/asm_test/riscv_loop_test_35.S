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
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 0
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0xf2e4e448
                  li x1, 0x80000000
                  li x2, 0xf
                  li x3, 0x4
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0xf7ac82c4
                  li x8, 0x2
                  li x9, 0x219f24ea
                  li x10, 0x6
                  li x11, 0x0
                  li x12, 0x5
                  li x13, 0xffa149ff
                  li x14, 0x2b51bb1d
                  li x15, 0xf896650b
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x4
                  li x22, 0xab9d4e11
                  li x23, 0x80000000
                  li x24, 0xabcab7dd
                  li x25, 0x9
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x5
                  li x29, 0xf767b50
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x19, user_stack_end
main:             addi         s11, zero, 10 #init loop 1 counter
                  and          t3, a1, t2
                  auipc        t0, 1032961
                  xor          ra, s7, gp
                  addi         t5, zero, 10 #init loop 1 limit
                  xor          s7, s6, t5
main_6_1_t:       addi         a5, ra, 1880
                  sra          s2, t6, s4
                  sll          t4, a0, a1
                  addi         s11, s11, -8 #update loop 1 counter
                  sll          s8, a7, s4
                  xori         gp, s8, -1529
                  addi         a1, zero, -3 #init loop 0 counter
                  auipc        s1, 513737
                  sll          a3, s7, a1
                  addi         a2, zero, -18 #init loop 0 limit
                  xori         a3, a3, 5
                  auipc        zero, 480625
main_6_0_t:       sltiu        t1, s2, -2036
                  slti         ra, s6, -776
                  addi         a1, a1, -3 #update loop 0 counter
                  beq          a1, a2, main_6_0_t #branch for loop 0
                  sltiu        ra, t1, -1733
                  xor          s6, s9, gp
                  xori         t0, a5, -943
                  srli         sp, s11, 28
                  srli         t6, s3, 6
                  xor          t3, a7, s10
                  srli         s9, a5, 18
                  sra          sp, t3, s6
                  bgeu         s11, t5, main_6_1_t #branch for loop 1
                  add          sp, s4, t3
                  addi         a7, zero, -9 #init loop 1 counter
                  sub          t4, sp, s1
                  addi         ra, zero, 6 #init loop 1 limit
                  srli         s6, a1, 29
                  srl          a5, gp, a4
main_0_1_t:       andi         t3, a5, -608
                  addi         a7, a7, 8 #update loop 1 counter
                  addi         s9, zero, 0 #init loop 0 counter
                  srl          zero, a7, s11
                  addi         a0, zero, 8 #init loop 0 limit
main_0_0_t:       and          s0, t4, a7
                  addi         t1, t6, -573
                  addi         s9, s9, 10 #update loop 0 counter
                  bltu         s9, a0, main_0_0_t #branch for loop 0
                  and          t6, t1, tp
                  blt          a7, ra, main_0_1_t #branch for loop 1
                  srli         t2, s8, 27
                  addi         t1, zero, 6 #init loop 1 counter
                  and          a7, zero, ra
                  addi         t3, zero, 13 #init loop 1 limit
main_4_1_t:       lui          t4, 384382
                  sltu         s9, a4, s0
                  addi         t1, t1, 5 #update loop 1 counter
                  addi         t5, zero, -5 #init loop 0 counter
                  addi         s8, zero, 19 #init loop 0 limit
                  auipc        a0, 907131
main_4_0_t:       addi         a4, sp, 276
                  addi         t5, t5, 8 #update loop 0 counter
                  srli         a1, t6, 6
                  bne          t5, s8, main_4_0_t #branch for loop 0
                  bltu         t1, t3, main_4_1_t #branch for loop 1
                  slli         s11, s8, 7
                  addi         t2, zero, 1 #init loop 1 counter
                  auipc        t6, 480829
                  auipc        s0, 81618
                  andi         a1, a1, -1532
                  slli         t5, s4, 21
                  addi         tp, zero, -16 #init loop 1 limit
                  andi         t3, s0, -1904
main_3_1_t:       sub          s4, a1, s2
                  slli         s5, s11, 30
                  addi         t2, t2, -2 #update loop 1 counter
                  xori         a7, t5, 558
                  addi         s8, zero, -3 #init loop 0 counter
                  nop
                  and          a1, a1, a0
                  and          t0, t3, t2
                  addi         a2, zero, 17 #init loop 0 limit
                  or           t4, t2, a1
                  sra          a0, s3, t4
                  xori         a3, a0, -959
                  xori         s7, a0, -419
main_3_0_t:       slti         t1, s11, -1073
                  and          zero, s7, sp
                  addi         s8, s8, 10 #update loop 0 counter
                  beq          s8, a2, main_3_0_t #branch for loop 0
                  sltu         zero, s2, a4
                  ori          t4, tp, -1738
                  sub          s4, gp, a5
                  sra          a7, s3, a3
                  xor          s9, s0, s11
                  add          s5, s0, s2
                  add          t0, t1, s10
                  bge          t2, tp, main_3_1_t #branch for loop 1
                  sll          s9, zero, zero
                  addi         t5, zero, 2 #init loop 0 counter
                  srl          a0, a1, t1
                  srli         sp, a1, 24
                  sll          tp, t5, tp
                  sra          s0, t6, t6
                  addi         s2, zero, -4 #init loop 0 limit
                  add          zero, zero, s7
                  sltu         s4, a2, s4
                  add          s9, t0, s6
                  lui          ra, 1020257
main_5_0_t:       xor          a5, s6, t0
                  andi         s11, s6, -567
                  addi         t5, t5, -6 #update loop 0 counter
                  xori         t0, s3, 1106
                  beq          t5, s2, main_5_0_t #branch for loop 0
                  sra          a0, t2, t2
                  addi         a1, zero, -6 #init loop 0 counter
                  sra          s7, t5, s2
                  sltiu        t0, t5, -1494
                  srai         t0, s6, 6
                  xori         s4, s9, -549
                  sltiu        tp, s0, 688
                  addi         t1, a5, -1253
                  or           zero, s2, sp
                  nop
                  addi         a2, zero, -19 #init loop 0 limit
main_2_0_t:       sltu         ra, s9, a4
                  srl          t0, t5, zero
                  sra          a5, a4, tp
                  slti         zero, s2, -1774
                  sll          zero, t6, s1
                  sra          a4, a0, t0
                  and          t4, s5, t3
                  srli         s2, s8, 17
                  slt          t3, s0, a5
                  nop
                  xori         t3, s0, -102
                  slti         t1, t4, 709
                  addi         a1, a1, -2 #update loop 0 counter
                  andi         gp, a0, 544
                  nop
                  sub          sp, a2, s5
                  sra          gp, a5, s5
                  srl          sp, t5, a7
                  bge          a1, a2, main_2_0_t #branch for loop 0
                  sltu         t6, t3, t3
                  lui          s7, 186700
                  andi         t0, tp, 624
                  nop
                  bltu         zero, s2, 23f
                  ori          a3, a5, 1856
                  sltiu        s4, ra, -1271
                  add          s4, s3, a6
                  nop
                  srai         s11, a5, 18
                  bltu         ra, a6, 10f
10:               sra          t3, s10, t5
                  addi         s5, a7, -1337
                  nop
                  blt          t3, s3, 23f
                  add          s7, s11, s7
                  ori          t0, s3, 317
                  or           tp, gp, a2
                  sltiu        s8, t6, 1600
                  srli         s8, zero, 23
                  andi         tp, sp, -1591
                  lui          t1, 704527
                  andi         s11, gp, 694
                  srl          a5, s6, s3
23:               nop
                  sll          s7, sp, s9
                  sub          s5, s1, t3
                  addi         t6, a4, -1816
                  nop
                  or           s0, t0, a0
                  bne          t6, sp, 40f
                  bge          s3, t6, 39f
                  add          a3, a5, s10
                  xori         s11, s3, -76
                  bltu         t4, ra, 47f
                  xor          t3, s0, s10
                  add          sp, s4, ra
                  sltu         a1, tp, tp
                  bltu         t2, s10, 57f
                  bgeu         s0, t4, 56f
39:               xori         ra, gp, -1453
40:               slt          s2, s4, a6
                  sub          sp, a2, s9
                  bgeu         t3, a7, 56f
                  bltu         a2, t6, 45f
                  sll          s7, s8, s5
45:               blt          s4, t5, 57f
                  srai         zero, s1, 22
47:               bltu         t6, a7, 48f
48:               xor          a2, s10, a6
                  srl          a5, a0, t6
                  blt          s6, a3, 70f
                  and          a4, s9, s7
                  and          sp, s3, a0
                  sltiu        s8, s10, 1738
                  slt          s1, t5, a2
                  xor          t2, gp, s2
56:               beq          a1, gp, 76f
57:               auipc        gp, 665426
                  xor          zero, a3, a7
                  srl          t3, s1, a5
                  bgeu         s1, s3, 72f
                  srli         t6, a5, 15
                  beq          a0, sp, 64f
                  andi         s0, s0, 897
64:               or           s11, t0, a1
                  slt          a4, ra, zero
                  sll          s6, t4, s9
                  srai         t6, t4, 31
                  beq          gp, a2, 82f
                  slti         s9, s8, 1466
70:               nop
                  addi         t2, a1, 568
72:               bltu         s6, s9, 79f
                  sltu         s9, s5, sp
                  sll          t3, s6, s6
                  blt          sp, sp, 93f
76:               slli         s8, a1, 13
                  slt          s7, a2, s3
                  xor          s5, s6, s9
79:               sltu         zero, s6, a6
                  sltiu        s0, s9, -37
                  andi         s0, t0, -53
82:               or           s2, a6, s9
                  andi         sp, t1, 1794
                  slt          s2, s4, s1
                  srli         a1, s0, 1
                  nop
                  ori          a7, zero, -249
                  slti         t5, s0, -881
                  sll          s0, t0, s9
                  xori         tp, a1, -1863
                  sltu         t1, t3, s7
                  sltu         s5, s9, s1
93:               add          s9, s11, a2
                  slt          tp, ra, a0
                  bgeu         t3, s6, 96f
96:               sub          gp, a5, s11
                  bne          a2, a5, 99f
                  and          gp, ra, s2
99:               auipc        s11, 821237
                  beq          t0, s1, 112f
                  sltu         a2, t2, s2
                  sltiu        t6, s2, 1654
                  blt          s7, sp, 117f
                  slli         a1, s2, 28
                  bge          a5, t0, 122f
                  beq          ra, t3, 113f
                  srai         s7, t0, 19
                  or           a0, s6, a6
                  sub          s11, t0, s7
                  bgeu         ra, s10, 126f
                  ori          s0, sp, -1301
112:              andi         a5, a4, -249
113:              slli         t3, t3, 21
                  xor          t2, s0, a1
                  srai         a2, t6, 28
                  slti         t2, a6, 30
117:              slt          s5, tp, t1
                  sub          a7, t0, t0
                  slt          t4, s2, s0
                  sub          t6, s9, s6
                  bltu         a1, s8, 130f
122:              auipc        ra, 78603
                  srai         sp, s4, 22
                  bltu         a0, a4, 137f
                  slti         a0, a3, 398
126:              addi         zero, tp, 1882
                  ori          s1, s4, 39
                  srl          s1, t6, t0
                  blt          a0, ra, 139f
130:              sll          a4, a2, s10
                  bltu         t0, s11, 132f
132:              sltiu        s7, t5, 386
                  bgeu         s10, a5, 147f
                  bge          t5, t4, 148f
                  slli         s7, a4, 6
                  slli         a2, t4, 21
137:              sub          zero, s11, s8
                  srl          t6, s6, t5
139:              slli         s2, s8, 29
                  andi         s7, ra, 446
                  beq          s2, s11, 142f
142:              add          s5, s10, a0
                  add          a5, t4, t0
                  bgeu         s7, a2, 164f
                  sltiu        t2, sp, 390
                  addi         s5, s4, 1557
147:              slli         a2, s2, 30
148:              sll          s1, s11, t4
                  xori         a1, t4, -1324
                  slti         s5, t0, -1868
                  add          s2, t2, zero
                  bge          zero, sp, 153f
153:              srl          t2, a2, s5
                  lui          s11, 967746
                  lui          a1, 536612
                  sltu         tp, a0, gp
                  or           s9, t4, s1
                  bge          tp, s4, 170f
                  addi         a4, s0, -241
                  slli         a0, tp, 26
                  ori          s2, s5, -517
                  addi         s2, tp, -1932
                  srai         t5, s5, 14
164:              sra          a7, t0, t5
                  nop
                  beq          s5, tp, 180f
                  sll          s4, tp, s8
                  sub          a5, zero, a0
                  or           s9, t5, s3
170:              sra          tp, a0, s6
                  slli         t0, a6, 22
                  beq          s1, a5, 174f
                  xor          s11, a7, a2
174:              bge          t1, s5, 183f
                  bltu         t5, zero, 189f
                  andi         t5, a5, 1985
                  auipc        sp, 908545
                  andi         ra, ra, -710
                  lui          s8, 568552
180:              beq          s8, a6, 191f
                  addi         a2, s9, 1444
                  srai         t5, t0, 12
183:              srai         a1, s0, 9
                  addi         a2, s7, 1510
                  srli         a0, t1, 0
                  andi         a4, s3, 180
                  auipc        t0, 6969
                  bltu         s3, a2, 190f
189:              lui          zero, 915742
190:              slti         a1, t2, -341
191:              blt          s4, s1, 200f
                  sltu         s6, s8, t0
                  sub          gp, a7, a7
                  sub          s2, gp, s7
                  srl          a7, s10, a4
                  bge          a6, t5, 206f
                  lui          a5, 33115
                  sltu         a4, s0, s4
                  xor          a3, a6, s5
200:              slti         t5, a2, 532
                  or           a0, s2, s10
                  bge          t5, t1, 203f
203:              srl          a1, a6, a2
                  sltiu        a5, a3, -335
                  andi         tp, a0, 983
206:              beq          s3, a3, 207f
207:              andi         a0, a7, 248
                  bne          a4, a4, 228f
                  slli         t0, zero, 27
                  bltu         t5, t0, 228f
                  xor          t0, a4, s6
                  bge          s11, t4, 225f
                  sltiu        s7, a7, 1837
                  nop
                  add          s0, sp, s11
                  srai         s6, s5, 12
                  slt          s9, t2, ra
                  slti         ra, a1, -1742
                  slt          s2, a0, a2
                  blt          s10, tp, 222f
                  or           t2, s5, s0
222:              or           tp, s4, a6
                  lui          t5, 767842
                  sll          s4, t4, s7
225:              bge          a4, t2, 242f
                  slti         zero, a0, -1739
                  ori          a7, a7, -1357
228:              bge          sp, s11, 244f
                  slt          t3, s4, a7
                  lui          s11, 210551
                  bgeu         a0, zero, 243f
                  srl          zero, s4, a2
                  srl          a1, s6, s5
                  sltiu        a3, t6, 179
                  and          zero, t5, a5
                  bltu         gp, s7, 254f
                  srai         a7, s1, 19
                  sltiu        a4, s11, 1126
                  sltiu        s7, t4, 111
                  auipc        s0, 485126
                  blt          tp, s5, 248f
242:              bltu         t3, a6, 254f
243:              lui          t3, 1021127
244:              bgeu         s9, gp, 254f
                  or           s6, a3, a6
                  sltiu        t0, t6, 1379
                  addi         sp, s3, 1046
                  la           t3, sub_1
                  xor          a3, s10, s6
                  slti         s0, a6, 465
                  slli         a3, s8, 14
                  addi         t3, t3, 793
                  slti         s1, sp, -588
main_j1:          jalr         t1, t3, -792 #jump main -> sub_1
                  blt          s4, s9, 252f
                  srl          tp, a7, s6
                  or           zero, a2, a2
248:              slli         t2, t2, 27
                  bgeu         sp, s0, 269f
                  or           t6, s10, ra
                  slt          s7, s3, a2
252:              bne          a0, ra, 272f
                  bgeu         s10, tp, 254f
254:              blt          gp, t1, 268f
                  and          a4, ra, t4
                  slti         s6, s5, -1725
                  srli         a1, a5, 10
                  sub          a2, t1, sp
                  slli         s1, s3, 28
                  xor          a1, a5, t1
                  or           a7, s8, s7
                  srai         t2, s6, 31
                  and          s7, s10, s11
                  bne          a7, s5, 278f
                  addi         s9, s11, 1159
                  andi         s0, tp, 459
                  lui          a3, 612443
268:              slli         a7, s6, 9
269:              add          t5, a2, s10
                  sll          t2, s9, t3
                  xori         t0, s8, -1097
272:              or           s11, s3, a7
                  slti         t0, a1, 1416
                  bltu         tp, tp, 288f
                  sll          s0, a6, t0
                  srai         a7, s1, 16
                  blt          s0, s6, 278f
278:              beq          s10, s5, 280f
                  srai         s6, t4, 2
280:              sltiu        s4, s8, 1411
                  srl          t4, a0, s10
                  bne          a0, s9, 302f
                  sub          s8, gp, s1
                  lui          s8, 137526
                  lui          ra, 45670
                  bgeu         s10, gp, 288f
                  bltu         a3, t1, 294f
288:              bge          t2, t3, 301f
                  xori         a7, a2, -1385
                  nop
                  sltu         a7, t3, tp
                  xori         t6, tp, 1793
                  blt          s8, t4, 294f
294:              bne          s6, a1, 306f
                  add          s7, s8, t0
                  andi         t4, a5, 1952
                  nop
                  or           a4, a2, s10
                  or           s9, s3, a6
                  bltu         s3, a6, 301f
301:              sra          s1, s10, t3
302:              bne          a6, a1, 320f
                  bltu         gp, t6, 312f
                  xori         t6, s2, 1595
                  sub          s9, s11, s10
306:              ori          t6, a7, -1273
                  or           s0, s5, t3
                  bne          t1, s7, 328f
                  bne          s0, zero, 311f
                  addi         t4, zero, -6 #init loop 1 counter
                  add          s7, s9, t5
                  addi         s4, zero, 10 #init loop 1 limit
main_1_1_t:       sltiu        s6, sp, -605
                  srl          a4, t2, s11
                  addi         t4, t4, 8 #update loop 1 counter
                  addi         t2, zero, 10 #init loop 0 counter
                  ori          s6, s9, -1425
                  addi         sp, zero, 20 #init loop 0 limit
                  slti         s5, a5, 860
                  sll          tp, s10, sp
                  xor          t5, s9, s10
                  andi         s9, a2, 381
main_1_0_t:       nop
                  and          tp, zero, sp
                  sltu         t1, s2, s5
                  addi         t2, t2, 3 #update loop 0 counter
                  sltu         ra, a6, sp
                  nop
                  bltu         t2, sp, main_1_0_t #branch for loop 0
                  bltu         t4, s4, main_1_1_t #branch for loop 1
                  auipc        s2, 206959
                  bne          a6, a0, 319f
311:              nop
312:              slti         a1, t0, -101
                  addi         t3, s3, -195
                  slt          a2, a7, zero
                  sub          s1, a7, a4
                  srl          a7, s4, s3
                  sra          t0, t5, t4
                  ori          a3, tp, -884
319:              and          t1, zero, t4
320:              beq          a0, s3, 340f
                  sra          zero, a7, a1
                  bltu         a6, gp, 342f
                  sub          t2, s2, s2
                  slli         ra, s5, 7
                  blt          s8, t3, 335f
                  auipc        tp, 326090
                  la           gp, sub_1
                  addi         t1, s3, -417
                  sltu         a7, tp, s9
                  srl          sp, zero, gp
                  sll          zero, gp, s4
                  slti         s11, tp, -1742
                  sltiu        s0, t2, -377
                  sub          a3, s8, t0
                  addi         gp, gp, -833
                  xor          t3, t4, s8
                  andi         a3, t4, 1027
main_j2:          jalr         t1, gp, 833 #jump main -> sub_1
                  sll          s4, zero, t5
                  xor          ra, zero, t6
328:              lui          t5, 612326
                  sltiu        a4, a1, -253
                  auipc        t3, 43999
                  addi         a4, a7, 39
                  slt          s9, s9, t3
                  sra          sp, t1, t0
                  sll          t6, t1, s4
335:              andi         s5, s11, -347
                  sltiu        t4, s10, 1575
                  beq          tp, zero, 355f
                  blt          t1, s10, 352f
                  addi         t2, sp, 1920
340:              slli         s11, t3, 22
                  lui          a5, 29844
342:              srl          t4, s9, t1
                  blt          s11, s1, 355f
                  bne          s7, a2, 355f
                  sltiu        t4, s3, -1185
                  or           zero, t2, s7
                  bltu         s5, t3, 363f
                  or           a5, t4, s3
                  xor          a5, s0, zero
                  auipc        sp, 266179
                  srai         t4, s7, 15
352:              slli         s5, a6, 8
                  auipc        t6, 155671
                  sub          t4, ra, a5
355:              blt          zero, s5, 372f
                  sra          a7, gp, tp
                  slti         a5, a4, -1487
                  sltu         sp, s8, s3
                  sll          s2, a6, a6
                  xor          a2, s1, sp
                  slti         s4, a5, -293
                  bltu         a5, t4, 372f
363:              sub          s8, s2, a6
                  slti         s7, a1, -115
                  andi         t4, s10, -1420
                  andi         zero, s11, -1113
                  bgeu         tp, a0, 374f
                  srli         t6, t5, 3
                  srai         s0, a5, 25
                  lui          t2, 286008
                  ori          s2, s0, 1268
372:              ori          a3, t5, -732
                  xori         zero, s4, 1538
374:              addi         a2, t5, -952
                  beq          s8, sp, 378f
                  addi         s0, a5, -1151
                  xori         s7, a0, -639
378:              slli         s4, t1, 30
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bgeu         a2, a3, sub_1_stack_p
                  addi         a2, s2, -571
                  slt          s6, s8, s5
                  sltiu        tp, s1, -383
sub_1_stack_p:    addi         s3, s3, -28
                  andi         a7, t1, -1374
                  srli         sp, t4, 11
                  srli         a0, a2, 24
                  sltu         t6, a4, s9
                  sw           t1, 4(s3)
                  xori         a2, t3, 1358
                  addi         t0, zero, 3 #init loop 0 counter
                  addi         ra, a5, -688
                  lui          t2, 361270
                  nop
                  or           sp, s3, a6
                  srli         sp, t6, 15
                  auipc        a1, 658548
                  xori         s6, a3, 1291
                  srai         a3, t5, 6
                  lui          s11, 861872
                  srli         a7, s5, 12
                  slli         a3, s10, 20
                  slti         tp, a3, 1849
                  and          s6, t3, s9
                  addi         s1, zero, 6 #init loop 0 limit
                  xor          s5, t4, t4
                  sra          s9, a0, t5
                  lui          s7, 7386
                  sub          s6, s7, s2
sub_1_6_0_t:      add          t5, s6, s3
                  srai         tp, sp, 4
                  sltu         t4, s2, s9
                  nop
                  addi         t0, t0, 9 #update loop 0 counter
                  slt          s2, s2, t6
                  add          zero, a0, a6
                  xori         s2, s11, 711
                  blt          t0, s1, sub_1_6_0_t #branch for loop 0
                  sub          t4, s3, s5
                  addi         s1, zero, 3 #init loop 1 counter
                  addi         tp, zero, 2 #init loop 1 limit
                  srai         a5, a6, 9
                  xori         t3, a2, -338
sub_1_2_1_t:      nop
                  addi         s1, s1, -1 #update loop 1 counter
                  slt          a1, a0, s7
                  srl          a0, t0, a3
                  addi         t1, zero, 10 #init loop 0 counter
                  addi         a4, zero, -17 #init loop 0 limit
                  sltiu        zero, a3, 1331
                  xori         sp, s10, -411
                  slti         t3, s7, 1119
sub_1_2_0_t:      nop
                  addi         t1, t1, -9 #update loop 0 counter
                  xor          zero, a0, t0
                  bne          t1, a4, sub_1_2_0_t #branch for loop 0
                  xor          a3, t6, a6
                  auipc        s6, 415086
                  sra          t4, s5, t2
                  lui          a2, 1872
                  xor          a2, sp, a2
                  bgeu         s1, tp, sub_1_2_1_t #branch for loop 1
                  srai         s6, a1, 17
                  addi         s5, zero, 10 #init loop 0 counter
                  sltu         a0, a4, s6
                  nop
                  auipc        t4, 101539
                  ori          a5, s0, 694
                  nop
                  sra          a2, t6, s8
                  sltu         zero, t3, gp
                  addi         s6, zero, 10 #init loop 0 limit
                  or           t5, zero, tp
                  and          t5, s7, s11
                  ori          a2, a1, 1632
                  auipc        t0, 785640
sub_1_1_0_t:      lui          t6, 529559
                  addi         s5, s5, -8 #update loop 0 counter
                  srl          t6, s2, t2
                  slti         t5, ra, -306
                  or           t6, a4, s0
                  srl          s7, a5, t1
                  ori          a4, ra, 1789
                  sub          s8, t0, a5
                  sltiu        s11, t6, 1645
                  slti         sp, s9, -1606
                  bgeu         s5, s6, sub_1_1_0_t #branch for loop 0
                  sra          t1, t0, s9
                  addi         a1, zero, 5 #init loop 1 counter
                  xori         t0, sp, -1071
                  addi         s6, zero, -20 #init loop 1 limit
sub_1_7_1_t:      sltu         zero, t2, a3
                  auipc        t0, 548070
                  andi         a3, s2, 923
                  addi         a1, a1, -5 #update loop 1 counter
                  nop
                  and          t2, tp, s0
                  and          a3, s7, s6
                  sltu         ra, s2, t5
                  addi         s5, zero, 7 #init loop 0 counter
                  nop
                  nop
                  addi         a7, zero, 18 #init loop 0 limit
                  nop
sub_1_7_0_t:      andi         gp, t0, 844
                  nop
                  addi         s5, s5, 7 #update loop 0 counter
                  nop
                  xor          tp, a7, s7
                  slli         a5, t6, 15
                  slt          t4, s2, t4
                  blt          s5, a7, sub_1_7_0_t #branch for loop 0
                  ori          s9, ra, -392
                  beq          a1, s6, sub_1_7_1_t #branch for loop 1
                  xor          t5, t3, t5
                  addi         tp, zero, 5 #init loop 1 counter
                  addi         s5, zero, 13 #init loop 1 limit
                  sll          sp, t3, s9
                  slt          ra, s11, a1
sub_1_4_1_t:      auipc        t5, 646051
                  slt          a5, a6, s0
                  addi         tp, tp, 8 #update loop 1 counter
                  slti         t5, t5, 1421
                  sltiu        sp, t2, -1270
                  sub          t0, s11, a6
                  addi         t6, zero, 10 #init loop 0 counter
                  and          s2, t0, t6
                  lui          s2, 2499
                  sll          sp, s6, a3
                  addi         a4, zero, -18 #init loop 0 limit
sub_1_4_0_t:      slt          a2, zero, a6
                  addi         t6, t6, -6 #update loop 0 counter
                  ori          s9, t6, -1504
                  bge          t6, a4, sub_1_4_0_t #branch for loop 0
                  lui          t2, 24201
                  or           s4, s0, t1
                  bne          tp, s5, sub_1_4_1_t #branch for loop 1
                  lui          s8, 583595
                  addi         a2, zero, 7 #init loop 0 counter
                  sub          t5, a0, a2
                  sltu         a1, s2, zero
                  andi         sp, s8, -438
                  sll          a1, t6, t5
                  sub          a3, t0, s10
                  slt          a4, s7, t2
                  sra          s2, s7, gp
                  srli         zero, t1, 25
                  sltiu        a1, t4, 405
                  srli         t4, ra, 4
                  srl          s5, gp, t1
                  srl          s8, tp, s8
                  addi         t3, zero, 14 #init loop 0 limit
                  srli         s7, a6, 11
                  lui          s0, 583819
sub_1_5_0_t:      add          s2, a6, t3
                  auipc        a0, 634546
                  addi         a2, a2, 6 #update loop 0 counter
                  sra          s7, s2, sp
                  slti         s11, gp, -486
                  srli         s2, zero, 8
                  sub          t0, s9, s8
                  nop
                  sub          t1, t3, s6
                  bltu         a2, t3, sub_1_5_0_t #branch for loop 0
                  and          a3, a5, sp
                  addi         s8, zero, 10 #init loop 1 counter
                  addi         s4, zero, 10 #init loop 1 limit
                  srli         t2, t3, 20
sub_1_0_1_t:      sltiu        a4, t3, -1608
                  addi         s8, s8, -5 #update loop 1 counter
                  addi         s11, zero, -10 #init loop 0 counter
                  addi         t5, zero, -17 #init loop 0 limit
sub_1_0_0_t:      auipc        a2, 701955
                  srl          t4, s8, a1
                  addi         s11, s11, -7 #update loop 0 counter
                  and          s1, s8, s4
                  beq          s11, t5, sub_1_0_0_t #branch for loop 0
                  bgeu         s8, s4, sub_1_0_1_t #branch for loop 1
                  sltiu        a5, s5, -359
                  addi         s9, zero, 4 #init loop 0 counter
                  ori          s5, s9, 1443
                  nop
                  sub          a2, gp, a6
                  xori         t5, a5, 769
                  slt          s7, a0, s6
                  nop
                  slli         s4, t1, 13
                  or           a3, s1, s9
                  srai         s5, t6, 27
                  xor          t1, a2, s11
                  xori         a0, a4, -1392
                  addi         s11, zero, -1 #init loop 0 limit
                  xor          t2, t1, s9
                  sub          s8, s6, s3
sub_1_3_0_t:      andi         s6, a2, 1890
                  auipc        s6, 525480
                  addi         s9, s9, -10 #update loop 0 counter
                  srli         gp, s11, 22
                  slli         t6, sp, 22
                  and          sp, tp, s7
                  bge          s9, s11, sub_1_3_0_t #branch for loop 0
                  xori         s5, zero, 1110
                  auipc        s5, 5366
                  srai         s6, t0, 21
                  srai         a0, a7, 29
                  ori          ra, a4, -746
                  addi         s1, a4, -1323
                  slt          t5, s3, t6
                  bge          s6, a4, 26f
                  xori         a5, t1, 1983
                  srl          zero, sp, tp
                  and          s9, s8, t6
                  sub          a0, t0, a6
                  bltu         a4, a0, 13f
                  and          ra, s7, s1
13:               sltiu        t3, t2, 298
                  or           s2, tp, s11
                  sll          a7, s2, t5
                  xor          t4, t0, t1
                  ori          t5, sp, 996
                  blt          s0, s1, 36f
                  bltu         s8, s2, 27f
                  ori          t0, a6, -105
                  xor          s8, tp, s3
                  slt          t6, s10, a2
                  beq          zero, t1, 38f
                  srai         s5, a6, 4
                  sra          sp, s6, t2
26:               xor          a1, a5, gp
27:               slt          a2, a5, a3
                  srai         s11, a4, 2
                  sltiu        s11, t1, 1493
                  sra          s6, s2, a3
                  andi         tp, a3, 934
                  srai         a4, s11, 14
                  bgeu         sp, s4, 36f
                  beq          s3, s3, 48f
                  ori          a1, a7, -1969
36:               blt          s3, a6, 53f
                  sra          a7, t0, s0
38:               bge          s6, tp, 41f
                  slti         s11, s1, 979
                  bne          t0, tp, 51f
41:               xori         a5, s0, -109
                  sra          t5, tp, a4
                  add          sp, zero, a2
                  beq          t4, s2, 57f
                  or           s11, zero, s6
                  bltu         a6, a3, 47f
47:               sltu         t2, a7, gp
48:               xor          ra, s0, ra
                  andi         ra, s4, -1938
                  bltu         gp, t6, 63f
51:               srai         s5, gp, 11
                  sltu         a2, a2, s3
53:               bltu         t5, a7, 65f
                  srai         a4, t0, 21
                  auipc        s11, 523961
                  beq          s2, s2, 63f
57:               xori         a3, s0, -899
                  addi         ra, t1, -1250
                  lui          a2, 801118
                  slt          t4, s4, s4
                  addi         t2, s6, -1763
                  auipc        a7, 194958
63:               sltu         s8, t6, s4
                  lui          s0, 1005650
65:               sub          a2, s6, s9
                  srli         t6, a2, 23
                  andi         ra, s4, 1541
                  bgeu         ra, a2, 71f
                  lui          a1, 335664
                  sub          s11, s10, tp
71:               sltu         s6, t4, a0
                  slt          a4, tp, s10
                  or           t5, a1, t0
                  sra          a4, s2, s5
                  bltu         a1, s5, 91f
                  andi         t5, t4, -156
                  xor          ra, zero, a0
                  bltu         s5, t4, 92f
                  slti         a7, a2, 898
                  bne          t2, s11, 83f
                  beq          tp, s5, 84f
                  xor          gp, s1, s4
83:               add          t5, t2, s3
84:               auipc        a0, 15962
                  xori         sp, a2, 74
                  blt          s10, t3, 105f
                  xor          t4, s9, tp
                  xor          s2, s4, t4
                  nop
                  slti         t6, s2, 1452
91:               ori          t3, t5, 1179
92:               sll          s6, a0, a1
                  sll          ra, ra, a6
                  srl          s1, t2, s4
                  slt          a3, a6, t2
                  srai         a5, s10, 6
                  and          t5, s4, t1
                  slli         s0, s7, 21
                  slt          t5, s8, s9
                  lui          ra, 321871
                  slti         a7, s5, 1558
                  sll          t1, s3, s9
                  bgeu         tp, s7, 113f
                  xori         tp, ra, -668
105:              add          sp, s7, a0
                  blt          s2, zero, 125f
                  ori          a4, sp, -436
                  srl          a5, s2, a2
                  lui          sp, 650922
                  blt          a1, t2, 115f
                  slti         a1, a6, 73
                  bne          a6, s9, 125f
113:              add          s5, a0, t3
                  slt          t2, t3, tp
115:              xor          t6, sp, a7
                  slti         s5, s0, -1144
                  bge          s6, s9, 121f
                  sra          t5, a4, tp
                  andi         t4, s11, 1828
                  bge          a1, a3, 123f
121:              xori         gp, s11, -1722
                  xori         s11, a1, 157
123:              andi         s2, t3, -1929
                  sltu         tp, t1, s9
125:              bge          a3, tp, 133f
                  blt          t4, s3, 127f
127:              add          a5, s7, s6
                  sltiu        s8, s10, 61
                  sub          s8, t3, t1
                  srli         t4, t1, 21
                  srai         s4, s6, 1
                  xor          s9, s5, s10
133:              bge          s0, a6, 144f
                  bge          t1, a1, 136f
                  slli         ra, s10, 4
136:              sltu         s6, s2, s2
                  beq          s3, zero, 140f
                  xor          gp, t5, t3
                  slti         t0, t0, 960
140:              add          sp, s9, t0
                  sub          t5, s6, s1
                  lui          s1, 473001
                  blt          s11, s0, 154f
144:              sll          a5, s0, s9
                  nop
                  add          s1, s10, gp
                  nop
                  add          ra, tp, s0
                  and          t0, s7, a7
                  or           sp, s0, tp
                  bge          s3, gp, 152f
152:              sltu         s5, s8, s1
                  blt          s0, t4, 166f
154:              sra          s1, a4, a7
                  slli         s4, s8, 29
                  bltu         s11, t3, 157f
157:              slt          s0, a6, tp
                  sltiu        zero, t0, -1363
                  ori          zero, s8, 632
                  slli         s7, sp, 17
                  beq          s8, a2, 174f
                  xor          t6, a2, a2
                  xori         s8, t6, -1101
                  srl          s4, s3, s8
                  beq          t0, a7, 181f
166:              sltiu        sp, a5, 1519
                  xori         t6, s4, 329
                  bltu         a2, s4, 171f
                  ori          sp, sp, -1212
                  xor          t4, a2, a3
171:              srai         s7, t2, 20
                  sra          t5, ra, a5
                  srai         t4, s11, 3
174:              slli         t1, t2, 5
                  auipc        t6, 1047899
                  slli         s6, s3, 16
                  bne          s7, t2, 190f
                  bne          a2, t5, 183f
                  srl          s9, s2, s7
                  andi         s2, a7, 1576
181:              or           t3, s8, a2
                  lui          a7, 186250
183:              slli         s7, a2, 5
                  sltu         s6, t5, gp
                  sra          t2, s10, t2
                  or           a4, sp, a3
                  andi         t2, a5, 1107
                  sltiu        s6, t4, 122
                  sltiu        t2, sp, -1258
190:              slt          a4, s0, t1
                  slli         s5, t4, 17
                  srai         s2, t5, 15
                  slti         s6, s2, -130
                  bne          a4, sp, 212f
                  lui          zero, 343637
                  slti         t6, zero, 935
                  beq          zero, t0, 212f
                  srl          s7, a6, t4
                  sltiu        a4, s6, 780
                  lui          tp, 301021
                  and          tp, ra, s10
                  bne          a5, t4, 205f
                  and          t1, s1, s11
                  andi         t4, s8, -1785
205:              srl          t5, s3, s10
                  nop
                  andi         s11, s8, 1304
                  lui          a7, 1029726
                  slt          t3, s1, a2
                  andi         s4, s2, 85
                  xor          a5, s10, t2
212:              bgeu         s5, t6, 224f
                  blt          sp, sp, 227f
                  xor          ra, s0, a4
                  xor          a1, s8, s1
                  slli         s0, s9, 9
                  beq          s9, s9, 220f
                  sub          zero, s6, t2
                  bgeu         a0, s7, 223f
220:              bgeu         s3, s6, 223f
                  srl          s1, sp, a1
                  addi         tp, s6, -502
223:              srai         zero, sp, 3
224:              blt          a7, a0, 232f
                  addi         a2, s4, -341
                  sltu         a3, t3, a6
227:              sltu         a0, a3, a5
                  bgeu         s6, s4, 247f
                  sll          s2, sp, t1
                  addi         t4, t5, 1132
                  srai         s2, ra, 25
232:              srl          s2, gp, a3
                  slt          t3, s11, s7
                  beq          tp, a0, 248f
                  xori         s1, s10, -957
                  bge          ra, s8, 243f
                  srl          gp, ra, a2
                  bge          s9, ra, 255f
                  or           a0, sp, a7
                  auipc        a1, 760799
                  and          s5, t0, a0
                  andi         a0, s1, -1559
243:              blt          t3, s0, 253f
                  add          s0, a2, a2
                  sltu         s0, s3, s8
                  bltu         s7, s7, 265f
247:              bne          gp, t0, 258f
248:              bgeu         gp, t2, 256f
                  slt          s1, s9, sp
                  bltu         s3, ra, 270f
                  bgeu         s4, a3, 254f
                  sltiu        s9, s5, -892
253:              srai         s9, a6, 7
254:              or           t0, t5, zero
255:              ori          s1, s3, -1567
256:              bgeu         s4, a0, 259f
                  andi         a7, s5, -8
258:              slt          t3, s6, s3
259:              bltu         a1, zero, 267f
                  nop
                  or           t5, t1, s1
                  nop
                  bne          s6, a0, 281f
                  add          t3, s8, a2
265:              add          a2, s5, a2
                  add          s11, tp, t1
267:              srli         a7, a5, 20
                  or           gp, a1, a0
                  sub          t5, tp, t0
270:              nop
                  blt          s6, a6, 291f
                  or           a3, a6, s0
                  sltu         zero, t4, s6
                  addi         a2, a6, 209
                  add          s6, a0, s7
                  sub          a2, s2, a7
                  lui          a3, 646651
                  srli         s0, s11, 19
                  andi         a1, t5, 707
                  add          t3, a0, s1
281:              blt          a2, a2, 288f
                  slti         tp, s6, 1796
                  lui          s2, 864267
                  bge          a0, zero, 289f
                  sltu         zero, s9, s3
                  sra          ra, s8, a5
                  xor          a4, s8, a6
288:              sltiu        a4, a6, -1601
289:              sra          tp, s11, gp
                  srai         s11, s9, 1
291:              sub          t4, s4, a7
                  nop
                  bltu         s7, t1, 312f
                  slt          t2, gp, s2
                  sltiu        a4, t4, 357
                  bgeu         gp, s5, 308f
                  or           zero, t2, a7
                  add          a0, t2, s3
                  sub          t6, s11, gp
                  blt          s1, s7, 315f
                  bltu         s7, a2, 309f
                  nop
                  xor          ra, s3, s10
                  beq          t4, t5, 314f
                  xori         s8, s5, 998
                  andi         s2, t0, -415
                  sltu         s8, s11, s8
308:              srl          s1, s8, s9
309:              xori         s8, t2, 1249
                  srai         t6, t1, 25
                  blt          t0, t1, 322f
312:              and          a7, a5, s7
                  add          a3, tp, s8
314:              srli         a7, t0, 15
315:              nop
                  bgeu         gp, a6, 318f
                  srai         a2, a7, 21
318:              or           t2, s5, s9
                  bne          t5, s1, 322f
                  slt          s8, s10, a1
                  slti         s6, gp, -1733
322:              xori         a7, s5, 1355
                  sltiu        tp, s10, 1406
                  srai         s8, t5, 10
                  or           s8, t1, s6
                  bltu         t2, zero, 340f
                  sltiu        t4, s10, -750
                  and          s0, t1, t2
                  sltu         s11, s7, s11
                  srli         a0, s10, 2
                  lui          a5, 306874
                  sub          a7, s8, zero
                  sub          s9, t4, t5
                  sltu         s1, gp, zero
                  xori         zero, a4, -667
                  srai         s8, a6, 31
                  sll          s0, t6, s1
                  bge          a5, t0, 341f
                  addi         s1, a6, 859
                  sltiu        s5, a1, 864
                  srai         s11, a6, 12
                  srl          s6, s9, a5
                  sll          a2, t3, zero
                  bltu         gp, sp, sub_1_j3 #branch to jump instr
                  nop
                  sub          a4, t2, a4
                  sll          t4, a5, a2
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  sra          a2, a4, a0
340:              bge          t3, s6, 353f
341:              lui          s9, 132282
                  slli         zero, gp, 14
                  srli         t5, s11, 19
                  beq          t2, s5, 358f
                  bltu         a7, tp, 348f
                  addi         s1, t4, -302
                  slti         a4, s5, -397
348:              bltu         ra, a3, 365f
                  and          s8, t6, a4
                  slli         s2, a2, 11
                  sra          zero, t4, gp
                  beq          tp, ra, 365f
353:              auipc        t3, 259985
                  srl          s8, s3, s2
                  bne          a1, s1, 374f
                  beq          s8, a2, 360f
                  bgeu         a3, a1, 370f
358:              xori         s9, gp, 1940
                  bgeu         s1, s11, 362f
360:              srl          t0, s4, a1
                  beq          t0, a0, 377f
362:              srli         s1, s4, 14
                  srai         t0, s4, 1
                  slti         t3, t0, -555
365:              sltu         sp, s0, s4
                  lui          sp, 878642
                  bge          t2, gp, 370f
                  bgeu         a6, t2, 369f
369:              bne          ra, t2, 380f
370:              and          t1, ra, s8
                  xor          a0, sp, a4
                  sltu         gp, ra, s3
                  andi         s2, a5, 1467
374:              lui          a0, 943785
                  slt          s7, s4, t4
                  srli         s8, tp, 17
377:              sltu         a1, t3, s8
                  bne          s8, s9, 379f
379:              srl          sp, a2, s11
380:              bgeu         s1, s7, 393f
                  and          s8, s11, s2
                  and          s8, tp, a2
                  bge          s3, s7, 384f
384:              sll          s8, a4, s11
                  slti         tp, a2, -1309
                  srl          a4, s10, t1
                  xor          t6, s0, s5
                  or           t5, s2, s4
                  lui          s2, 295844
                  xori         t0, s7, 1870
                  xori         s2, t3, -1372
                  slli         s0, sp, 2
393:              bge          t6, a3, 397f
                  sra          a5, s2, t3
                  slti         gp, s3, 531
                  nop
397:              sltiu        tp, t4, 1995
                  bltu         a4, a3, 403f
                  sltu         a2, s4, s7
                  sub          tp, s9, s1
                  ori          s9, a2, -558
                  and          gp, s10, a5
403:              lui          t3, 413290
                  sltu         s1, s8, a1
                  xori         zero, tp, 1721
                  slti         s9, s5, 492
                  srl          sp, s10, a5
                  or           s2, a5, s7
                  srli         ra, s2, 2
                  slt          s7, a4, s3
                  srl          a4, s10, s9
                  and          a7, t4, zero
                  bge          t3, s8, 414f
414:              sltiu        t6, a6, -1813
                  lw           t1, 4(s3)
                  sub          t3, a0, zero
                  ori          tp, s5, 109
                  addi         s3, s3, 28
                  sra          t0, gp, a3
633:              addi x24, x6, 1
633:              jalr x24, x24, 0
sub_2:            addi         s3, s3, -16
                  xor          a2, tp, t0
                  sw           t1, 4(s3)
                  auipc        s9, 926757
                  slt          s5, t1, a2
                  ori          s1, a6, 1198
                  slt          t0, s0, a1
                  addi         t2, zero, -2 #init loop 1 counter
                  addi         s0, zero, -18 #init loop 1 limit
sub_2_2_1_t:      xor          s6, s3, gp
                  xor          t1, s9, s6
                  addi         t2, t2, -5 #update loop 1 counter
                  nop
                  slt          s2, ra, s0
                  xor          s11, s3, t0
                  slli         t6, gp, 23
                  srai         t1, s8, 22
                  slt          ra, a4, a4
                  srl          tp, s3, s7
                  srl          a2, a1, zero
                  sub          t3, t1, s3
                  lui          a3, 389183
                  addi         gp, zero, 1 #init loop 0 counter
                  addi         t0, zero, -3 #init loop 0 limit
                  srai         s11, t6, 14
                  addi         s1, s3, 1797
sub_2_2_0_t:      auipc        s2, 934245
                  srai         s5, t6, 20
                  sra          a2, gp, s2
                  addi         gp, gp, -4 #update loop 0 counter
                  sub          a3, s6, a0
                  bne          gp, t0, sub_2_2_0_t #branch for loop 0
                  or           t3, s0, s8
                  sltu         a4, a6, s6
                  auipc        a5, 553715
                  bge          t2, s0, sub_2_2_1_t #branch for loop 1
                  xori         s2, a1, 1554
                  addi         a3, zero, 9 #init loop 0 counter
                  slli         s2, sp, 29
                  sll          a0, t2, sp
                  and          t4, s8, gp
                  lui          t2, 73575
                  xori         s2, zero, -1626
                  sltiu        gp, a5, 1720
                  sltiu        t0, t0, -926
                  lui          a1, 688478
                  srli         zero, a7, 20
                  and          a4, s10, s1
                  auipc        t4, 311037
                  lui          s0, 365684
                  addi         s2, t2, -901
                  slti         t4, t6, -695
                  sltu         a7, tp, t4
                  xor          s8, s0, t3
                  xor          zero, t1, a6
                  xori         tp, t2, 1495
                  sltiu        s1, a5, -550
                  addi         ra, zero, 15 #init loop 0 limit
                  slt          s4, a2, s9
sub_2_6_0_t:      ori          a0, a1, 835
                  addi         a3, a3, 6 #update loop 0 counter
                  addi         a7, s9, -98
                  srai         s11, a2, 7
                  beq          a3, ra, sub_2_6_0_t #branch for loop 0
                  andi         s6, a1, 1501
                  addi         a0, zero, 8 #init loop 0 counter
                  srli         s11, ra, 12
                  lui          a4, 423227
                  srli         ra, a4, 1
                  andi         s5, s11, -1136
                  sltiu        a3, a5, -703
                  lui          s5, 501653
                  sltiu        zero, gp, 1248
                  slli         t2, t5, 8
                  or           s6, s10, s7
                  sll          tp, t0, a0
                  andi         s4, s0, 729
                  addi         s0, zero, 7 #init loop 0 limit
sub_2_1_0_t:      add          a4, a2, t2
                  slt          t4, zero, t1
                  or           s7, s6, s7
                  addi         a0, a0, -2 #update loop 0 counter
                  sra          a2, s11, gp
                  slli         s5, sp, 3
                  sltiu        t4, a6, 1419
                  srai         s11, a2, 22
                  bgeu         a0, s0, sub_2_1_0_t #branch for loop 0
                  sll          a4, t0, t0
                  addi         gp, zero, 1 #init loop 1 counter
                  addi         tp, zero, 5 #init loop 1 limit
sub_2_5_1_t:      and          a7, s10, gp
                  addi         gp, gp, 6 #update loop 1 counter
                  addi         t1, zero, 8 #init loop 0 counter
                  addi         s6, zero, 8 #init loop 0 limit
sub_2_5_0_t:      or           a4, tp, s2
                  addi         t1, t1, -4 #update loop 0 counter
                  bgeu         t1, s6, sub_2_5_0_t #branch for loop 0
                  bltu         gp, tp, sub_2_5_1_t #branch for loop 1
                  slt          a1, s1, s0
                  addi         t3, zero, 9 #init loop 0 counter
                  srli         t4, s0, 17
                  addi         gp, a0, -1648
                  slt          a5, ra, a0
                  andi         a2, a2, -403
                  andi         sp, t5, 1006
                  xor          t6, t3, t0
                  lui          t0, 757702
                  srai         ra, s10, 24
                  sub          s11, t5, a6
                  or           s2, t3, gp
                  sub          t5, s2, gp
                  sltu         s7, a2, a0
                  ori          s1, s1, 261
                  sub          a0, t6, t1
                  addi         a7, zero, 10 #init loop 0 limit
                  lui          a5, 953024
sub_2_7_0_t:      xori         sp, a3, 1054
                  addi         t3, t3, 5 #update loop 0 counter
                  addi         sp, s9, -1318
                  and          t0, t6, sp
                  ori          tp, s10, 1053
                  or           t6, s2, s1
                  slli         zero, s10, 17
                  auipc        s5, 926075
                  add          s7, s7, zero
                  xori         s7, t0, -1418
                  bltu         t3, a7, sub_2_7_0_t #branch for loop 0
                  slli         a5, s6, 30
                  addi         t4, zero, 7 #init loop 0 counter
                  sra          t5, t0, a5
                  addi         s4, zero, 6 #init loop 0 limit
                  xor          a5, gp, t0
                  sltiu        a7, s5, 549
sub_2_4_0_t:      ori          s8, s10, -1849
                  sra          gp, a6, t6
                  addi         t4, t4, -1 #update loop 0 counter
                  slli         gp, s8, 4
                  xori         tp, a5, -1497
                  srl          s7, a0, s9
                  srli         a5, a4, 25
                  ori          a0, sp, -430
                  xori         a0, s3, -140
                  bgeu         t4, s4, sub_2_4_0_t #branch for loop 0
                  xor          s6, s9, t1
                  addi         t6, zero, 4 #init loop 0 counter
                  lui          t2, 922395
                  addi         s9, zero, 11 #init loop 0 limit
sub_2_0_0_t:      or           gp, s5, gp
                  srl          s5, tp, a0
                  addi         t6, t6, 8 #update loop 0 counter
                  ori          s7, s5, -844
                  auipc        s8, 925986
                  bltu         t6, s9, sub_2_0_0_t #branch for loop 0
                  srli         a0, s7, 7
                  addi         sp, zero, 2 #init loop 0 counter
                  andi         t5, ra, 1661
                  nop
                  sll          t3, s3, a4
                  nop
                  sub          s6, a0, s2
                  xori         s0, t1, -1068
                  srli         t1, s0, 11
                  nop
                  ori          t3, tp, -1893
                  srli         s5, a1, 30
                  addi         s4, zero, -4 #init loop 0 limit
                  or           s1, s9, s3
                  auipc        t5, 430271
sub_2_3_0_t:      sltu         a0, a7, t2
                  or           gp, t4, t1
                  addi         sp, sp, -6 #update loop 0 counter
                  sltu         a3, s9, t0
                  sltu         s2, zero, s8
                  xori         s1, s4, 778
                  lui          zero, 607156
                  sltiu        a7, a1, 1058
                  sltu         gp, a1, a0
                  beq          sp, s4, sub_2_3_0_t #branch for loop 0
                  nop
                  and          zero, a7, s5
                  nop
                  sub          s11, s0, t6
                  or           zero, t2, s10
                  sltiu        a1, s5, 854
                  sub          t1, a7, t3
                  lui          s9, 160719
                  sltu         a3, a0, gp
                  or           gp, t4, t4
                  blt          zero, a3, 14f
                  sltiu        sp, a3, -708
                  slti         a7, s9, -217
                  srai         s0, gp, 9
                  blt          a7, s1, 28f
14:               slli         a2, t2, 23
                  blt          t5, s0, 28f
                  andi         s0, t2, 434
                  xor          s8, s2, s3
                  sltu         t1, a7, s9
                  sra          s9, t5, s0
                  ori          a0, a3, 1002
                  bne          gp, t6, 26f
                  beq          a4, s9, 42f
                  srli         a7, a0, 0
                  beq          t2, t1, 31f
                  sltiu        s4, tp, 1176
26:               sra          a2, s9, a4
                  bgeu         t3, ra, 38f
28:               slt          s8, s4, s2
                  slt          t5, s0, t3
                  srli         a5, a3, 4
31:               sltu         t4, zero, a1
                  bltu         a1, zero, 36f
                  bgeu         s8, a6, 51f
                  srai         a4, s9, 27
                  addi         a2, a5, 514
                  ori          a7, s3, -143
                  xori         s5, s8, 1625
                  and          a7, a3, t2
                  auipc        t5, 95208
sub_2_j5:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  slli         t6, sp, 21
                  sltiu        a7, sp, -1839
36:               ori          tp, ra, 402
                  nop
38:               andi         a5, s1, 817
                  sltu         s2, t1, s5
                  auipc        zero, 1021634
                  sll          s2, sp, a0
42:               srli         a1, s9, 21
                  beq          gp, s5, 52f
                  srl          s9, s11, zero
                  blt          t3, a2, 64f
                  bltu         s11, t4, 56f
                  bge          a6, gp, 53f
                  nop
                  beq          a2, a2, 58f
                  xori         sp, s9, -156
51:               bne          a7, a4, 60f
52:               bltu         t3, s1, 69f
53:               add          s8, a3, t0
                  slti         s11, tp, -1278
                  or           a7, tp, a1
56:               sll          t0, t6, a5
                  andi         t2, t4, -883
58:               and          s6, t1, a6
                  and          s11, s4, s2
60:               slti         s6, t2, 810
                  sltiu        a0, tp, -802
                  slli         sp, a2, 1
                  xor          s8, t4, s2
64:               slli         t4, a3, 14
                  sltiu        t1, s4, -1468
                  lui          t1, 605984
                  slt          t3, t5, ra
                  addi         a7, s3, 1447
69:               bltu         s4, a1, 73f
                  slli         ra, s7, 11
                  nop
                  srli         s9, gp, 22
73:               xor          t3, t4, s8
                  ori          s7, t5, 514
                  sltu         t3, t3, a5
                  ori          a1, a2, 1814
                  bne          a5, s7, 87f
                  bge          s9, s10, 82f
                  blt          s3, tp, 98f
                  sll          a0, s3, a3
                  ori          t0, s11, -1569
82:               bge          a7, ra, 102f
                  ori          s8, s4, 1968
                  auipc        t5, 764435
                  sltu         gp, t2, t3
                  andi         a3, a3, 940
87:               bge          ra, t0, 104f
                  slli         t0, s11, 12
                  sltiu        s11, gp, -121
                  sub          t5, a1, a4
                  sub          a3, a6, s5
                  nop
                  blt          s7, s11, 113f
                  sra          s0, t6, a4
                  lui          t5, 93456
                  srli         s1, t2, 24
                  addi         a0, zero, 10 #init loop 1 counter
                  addi         t2, zero, 9 #init loop 1 limit
                  slti         s6, s4, -1639
                  sltiu        t1, t5, -1359
                  srli         s7, t0, 2
sub_2_8_1_t:      or           a2, s9, a5
                  addi         a7, t2, 791
                  srli         s5, ra, 19
                  xori         t3, t6, -1723
                  addi         a0, a0, -8 #update loop 1 counter
                  sltiu        s4, s1, 507
                  addi         t5, zero, 9 #init loop 0 counter
                  sll          a2, t5, s1
                  addi         t0, zero, 16 #init loop 0 limit
                  or           t3, t4, t4
                  and          a5, ra, s3
sub_2_8_0_t:      ori          t4, s11, -135
                  xor          ra, a1, s1
                  addi         t5, t5, 8 #update loop 0 counter
                  and          s7, s0, s9
                  auipc        s1, 391541
                  bltu         t5, t0, sub_2_8_0_t #branch for loop 0
                  bgeu         a0, t2, sub_2_8_1_t #branch for loop 1
                  or           s7, s0, s8
                  xor          zero, t6, t4
98:               bltu         s0, ra, 106f
                  srl          ra, a2, a0
                  blt          t6, a2, 115f
                  srli         sp, gp, 4
102:              slli         s8, t5, 1
                  bne          t1, s4, 122f
104:              nop
                  srai         t0, gp, 3
106:              or           sp, zero, a0
                  beq          t1, s1, 110f
                  slt          sp, s9, s9
                  xor          a2, tp, a3
110:              auipc        t3, 509833
                  xor          t4, zero, a0
                  xor          t6, s9, s8
113:              or           s6, a6, s6
                  slli         s7, s9, 13
115:              sll          ra, s0, sp
                  blt          a1, tp, 126f
                  add          a7, s11, s1
                  or           a5, t2, s6
                  addi         t3, a3, 1590
                  sub          t6, gp, s2
                  andi         s4, s7, -875
122:              auipc        s7, 1019549
                  sub          tp, s1, a3
                  lui          s6, 607316
                  srl          t4, a5, t3
126:              xori         a1, tp, 434
                  sra          zero, tp, tp
                  and          t4, s0, a0
                  auipc        a3, 459961
                  nop
                  auipc        s0, 688471
                  addi         s4, s10, -1347
                  add          s6, sp, s0
                  addi         s2, s11, 49
                  xor          s2, s5, t2
                  xori         gp, s8, -1346
                  or           a7, s5, a6
                  bltu         a6, a1, 145f
                  addi         s2, s1, -1959
                  slti         ra, a5, -176
                  xori         tp, s0, -1672
                  lui          s5, 350170
                  nop
                  nop
145:              sub          a3, t5, t6
                  bltu         t5, t3, 156f
                  xor          s9, gp, s2
                  sltu         a4, ra, a2
                  sub          s2, s0, a0
                  ori          s11, s2, -891
                  bgeu         a5, a4, 158f
                  srli         s7, s3, 29
                  srli         a4, zero, 25
                  bne          a4, t3, 172f
                  or           t6, a2, s11
156:              ori          t3, a4, -223
                  sll          tp, sp, s8
158:              lui          s11, 817864
                  sll          t6, zero, a7
                  sltu         s6, s3, s6
                  slli         s8, tp, 28
                  sra          ra, s5, t6
                  bne          t2, s1, 183f
                  xor          ra, s0, s5
                  nop
                  nop
                  bltu         s5, a6, 171f
                  sltiu        s2, gp, 718
                  slt          s8, s2, s0
                  ori          t5, s6, -923
171:              auipc        t2, 439382
172:              slli         s5, s8, 18
                  beq          s0, s5, 188f
                  slti         s4, a6, -2036
                  sltiu        a4, t3, 1382
                  xori         tp, s10, -80
                  andi         s2, s0, 757
                  sll          sp, s5, a7
                  bltu         a5, ra, 199f
                  auipc        a3, 738701
                  srl          s9, a6, a0
                  sra          t6, s4, s11
183:              slt          s6, a7, t6
                  bltu         a0, a7, 203f
                  bgeu         t2, s8, 192f
                  add          zero, s0, s8
                  blt          a3, t1, 191f
188:              srai         t5, a5, 23
                  auipc        sp, 84254
                  add          sp, ra, s5
191:              sltiu        t5, a7, -1432
192:              blt          t4, s10, 212f
                  sra          s9, s2, a5
                  and          sp, sp, t3
                  bltu         s10, s8, 205f
                  bgeu         s10, t2, 204f
                  slti         tp, s3, -1290
                  bge          t2, s10, 211f
199:              bge          gp, s0, 216f
                  add          s4, s4, t6
                  sub          s9, t0, s3
                  bgeu         zero, a1, 208f
203:              blt          s0, t6, 208f
204:              add          zero, s8, t1
205:              bltu         ra, s3, 215f
                  and          t5, a0, sp
                  srli         a7, s9, 30
208:              beq          a3, ra, 225f
                  srl          s7, s5, s2
                  slli         t0, s9, 3
211:              bge          zero, a3, 230f
212:              bltu         s10, s4, 231f
                  add          s8, a1, s11
                  srai         a7, a2, 6
215:              andi         t3, s10, 428
216:              bge          s11, sp, 226f
                  sll          zero, t1, t5
                  sra          t4, ra, t0
                  lui          tp, 896364
                  slli         a2, a6, 23
                  sltu         a2, s6, a5
                  bltu         s10, a4, 227f
                  sltiu        a2, a3, -619
                  andi         t6, a1, 21
225:              and          s7, s7, s10
226:              srai         s2, s4, 29
227:              sll          a3, a7, s10
                  srai         s4, a4, 15
                  bltu         a3, s11, 239f
230:              xor          t4, t1, a6
231:              slti         t4, s2, -1284
                  ori          t2, a6, -1398
                  xor          zero, zero, s8
                  sltiu        t5, tp, -1503
                  sltiu        a0, s4, 740
                  xori         a2, t6, 1993
                  slli         s1, a1, 24
                  bltu         sp, zero, 242f
239:              slli         sp, a1, 5
                  sub          a5, t6, s1
                  sll          t6, s1, s6
242:              add          t0, sp, gp
                  sltu         a1, gp, t4
                  xor          a0, s9, s10
                  bltu         a3, a7, 256f
                  and          s2, t5, sp
                  lui          t1, 930094
                  srl          s7, t5, s4
                  xor          s5, t3, s5
                  or           s8, s6, a6
                  slti         a5, t6, 815
                  bltu         s7, t4, 261f
                  and          s5, t2, s1
                  beq          a7, a5, 263f
                  and          ra, t6, tp
256:              and          s4, gp, a4
                  sra          s4, s11, t4
                  srli         a2, s8, 14
                  andi         s1, s0, -198
                  ori          t3, ra, -335
261:              and          s0, t5, zero
                  sltiu        a4, a5, 328
263:              nop
                  lui          t6, 202080
                  sub          s0, s9, a3
                  bltu         a6, sp, 281f
                  or           s0, zero, ra
                  slli         a3, a7, 5
                  xor          a7, s4, s4
                  andi         t3, t3, -1162
                  srai         s1, s8, 24
                  andi         a7, s6, -639
                  xori         a1, s0, 2030
                  andi         s4, s5, -62
                  blt          t6, t3, 278f
                  srl          t4, t0, s7
                  srli         t2, ra, 25
278:              srl          s5, a5, zero
                  bltu         s6, a3, 288f
                  sub          t3, a0, a7
281:              addi         a3, s7, -1406
                  sub          ra, sp, zero
                  auipc        t3, 903277
                  xor          t2, s1, t4
                  slti         s11, s7, 190
                  or           a5, a7, a4
                  xor          zero, s0, a6
288:              slti         s2, a3, 719
                  nop
                  bgeu         s8, s10, 310f
                  sltu         a4, zero, s5
                  blt          gp, tp, 303f
                  bgeu         s7, s7, 312f
                  and          a5, s10, a4
                  sltiu        s0, s11, 1449
                  nop
                  bge          s2, a5, 307f
                  srl          ra, s10, s4
                  srai         a0, a2, 5
                  nop
                  sltiu        s5, a6, 667
                  srli         a1, t2, 7
303:              bne          s2, s8, 313f
                  or           tp, t5, s7
                  beq          t2, s8, 325f
                  sub          ra, gp, sp
307:              srl          gp, s0, a5
                  andi         a7, a2, 1853
                  nop
310:              sll          s8, a2, s1
                  auipc        s7, 887826
312:              srai         s5, a3, 29
313:              sll          sp, s2, s4
                  xori         a2, ra, 846
                  xori         s9, a2, 1783
                  sub          a5, gp, a6
                  addi         t1, t5, 1552
                  blt          s6, s7, 327f
                  nop
                  sra          s1, a6, s2
                  sra          t3, ra, s3
                  srli         s0, s0, 27
                  auipc        t1, 126725
                  xor          s6, a2, s9
325:              or           t0, s7, tp
                  bne          t2, a4, 336f
327:              bgeu         a2, a1, 345f
                  xori         a4, s1, 39
                  bne          s5, gp, 333f
                  xor          gp, tp, t6
                  xor          t3, a4, s4
                  lui          s5, 551750
333:              addi         ra, sp, -803
                  sra          s7, sp, ra
                  slt          t1, s10, s5
336:              ori          a7, ra, 256
                  sra          sp, s6, s9
                  beq          tp, s0, 342f
                  bne          a7, a6, 356f
                  nop
                  xor          s9, a4, s9
342:              beq          gp, s8, 351f
                  sub          t5, a1, s8
                  bne          a2, gp, 350f
345:              bne          t5, t4, 364f
                  xor          t1, t0, s3
                  addi         s11, s10, -849
                  la           t6, sub_4
                  sub          s6, s1, ra
                  addi         t6, t6, 651
                  srl          sp, t5, a5
                  nop
                  ori          gp, a0, 778
                  xor          ra, a5, t3
                  add          t3, sp, a5
                  ori          t1, a3, 1014
                  xor          s9, s1, t5
                  or           t0, s0, s2
                  blt          tp, s6, sub_2_j4 #branch to jump instr
                  addi         t1, t2, -1760
sub_2_j4:         jalr         t1, t6, -650 #jump sub_2 -> sub_4
                  xori         t0, s10, -1703
                  slt          s11, zero, t0
350:              addi         s9, s1, 911
351:              xor          s6, sp, ra
                  add          tp, a2, a0
                  bge          t4, s4, 370f
                  srai         s7, a4, 4
                  bne          t0, t4, 360f
356:              sra          t1, s8, s5
                  xor          a2, s4, t6
                  nop
                  bge          s2, tp, 366f
360:              sltu         a4, t4, zero
                  andi         gp, a6, 1511
                  xori         a0, s9, -1490
                  sra          t1, s10, a6
364:              srl          ra, t3, s7
                  slli         zero, gp, 24
366:              xor          t3, t3, t0
                  andi         s5, s5, 524
                  ori          gp, zero, 1540
                  slt          t4, sp, a6
370:              sltiu        t3, sp, 1749
                  slli         t6, ra, 2
                  bge          zero, s8, 375f
                  slt          t4, tp, s3
                  addi         s4, s0, 1842
375:              sra          a3, s6, a5
                  blt          s8, t5, 386f
                  andi         tp, a1, 1793
                  blt          a3, a2, 393f
                  and          s4, s6, s6
                  srli         sp, t3, 14
                  slli         t0, s4, 22
                  bge          a6, a5, 386f
                  andi         t0, t2, 1231
                  or           t5, t4, s3
                  blt          t5, s2, 394f
386:              slli         s8, s0, 1
                  sltiu        t1, s1, 1132
                  srai         a2, s0, 25
                  auipc        ra, 249256
                  bltu         t2, s8, 409f
                  bgeu         a2, t2, 399f
                  auipc        t1, 735720
393:              sltiu        s1, t3, -1033
394:              sub          t4, s4, s4
                  bne          a7, gp, 408f
                  slt          s2, t1, tp
                  xor          s11, s7, t1
                  bne          t6, a1, 405f
399:              bgeu         t2, t3, 414f
                  slti         t5, s5, -1212
                  beq          s0, gp, 421f
                  nop
                  auipc        tp, 110651
                  slt          t1, ra, s6
405:              or           s9, gp, a3
                  srai         t4, s10, 3
                  xor          ra, a3, a1
408:              beq          t2, ra, 413f
409:              bgeu         zero, t5, 427f
                  sltiu        t4, a0, -1485
                  lui          a7, 618507
                  sltu         a4, a3, s11
413:              blt          a0, t3, 433f
414:              srl          s2, s4, t0
                  bgeu         s3, s11, 432f
                  slli         t6, t1, 4
                  srai         s1, t4, 27
                  or           t2, s5, s0
                  blt          s2, t2, 428f
                  sub          sp, a0, t1
421:              andi         a0, a6, 319
                  srai         s2, a3, 1
                  bne          s3, tp, 427f
                  beq          zero, s11, 444f
                  bltu         a5, gp, 444f
                  bgeu         gp, s11, 431f
427:              slti         s4, t5, 1587
428:              ori          s9, a0, -1713
                  sltu         zero, ra, t2
                  ori          t4, s8, -1526
431:              bgeu         a6, t4, 450f
432:              andi         s11, a6, -369
433:              blt          a4, ra, 442f
                  slt          tp, t3, zero
                  slti         a0, s6, -98
                  or           a7, a2, a6
                  xori         a1, s1, 956
                  blt          a7, a0, 444f
                  xor          sp, t0, a1
                  srli         tp, s4, 9
                  slti         t5, s8, 592
442:              or           ra, a0, ra
                  bne          s6, a0, 448f
444:              sltiu        a0, s5, -581
                  blt          gp, t1, 456f
                  sub          s1, t1, a7
                  slt          s4, t4, t0
448:              bltu         s2, a5, 458f
                  ori          s0, s0, 1285
450:              blt          tp, s10, 467f
                  bne          a0, tp, 455f
                  add          t2, s3, s10
                  andi         s5, a3, -799
                  auipc        t3, 951627
455:              bgeu         t2, s7, 464f
456:              ori          s4, a5, -441
                  bgeu         t2, t3, 461f
458:              sltiu        s9, t1, 956
                  xor          tp, s0, t0
                  srl          t0, s6, s3
461:              slli         gp, s8, 7
                  srl          s0, a0, tp
                  sub          tp, a7, a0
464:              sltiu        gp, s1, 209
                  bne          s1, a4, 480f
                  beq          s10, s4, 476f
467:              bge          a1, s3, 474f
                  bge          a7, a2, 481f
                  blt          s3, t4, 472f
                  sltiu        t3, s5, 489
                  slti         a1, t2, -363
472:              bge          tp, s6, 482f
                  srl          ra, s0, a4
474:              sltu         a0, zero, t0
                  beq          a5, s0, 483f
476:              slti         gp, a4, 365
                  sra          t1, a5, s2
                  slli         s8, s10, 22
                  blt          t6, a0, 494f
480:              srli         t0, t4, 27
481:              bgeu         s4, s5, 495f
482:              xori         a4, s7, 651
483:              ori          t1, a4, 124
                  bgeu         s5, a1, 494f
                  addi         t1, s5, -1697
                  ori          s9, a1, 1335
                  nop
                  slli         t6, a3, 20
                  xor          sp, s2, t6
                  bne          tp, s5, 495f
                  or           zero, a2, s4
                  blt          s11, s8, 495f
                  slt          ra, s3, a0
494:              sll          a4, s7, s1
495:              srl          a2, s3, s4
                  srli         tp, t1, 28
                  andi         a0, t1, 209
                  auipc        s11, 899682
                  srai         t4, s7, 7
                  lw           t1, 4(s3)
                  addi         s3, s3, 16
                  sltu         s7, a5, s11
727:              addi x22, x6, 1
727:              jalr x22, x22, 0
sub_4:            xor          t5, a3, a1
                  xor          t2, s6, t6
                  sub          zero, a0, a0
                  blt          a6, s2, sub_4_stack_p
                  ori          t3, s2, -1866
                  srl          s8, t6, a4
sub_4_stack_p:    addi         s3, s3, -60
                  slti         t2, t2, -1095
                  ori          s1, s4, 572
                  sw           t1, 4(s3)
                  auipc        t6, 74552
                  lui          t0, 861819
                  slt          gp, s10, s10
                  addi         t3, zero, -9 #init loop 1 counter
                  addi         t6, zero, 2 #init loop 1 limit
sub_4_3_1_t:      slt          a0, s11, t0
                  addi         t3, t3, 2 #update loop 1 counter
                  slt          t0, t4, a2
                  addi         t5, zero, 5 #init loop 0 counter
                  addi         s8, zero, 5 #init loop 0 limit
sub_4_3_0_t:      xori         a7, ra, 1575
                  addi         t5, t5, -4 #update loop 0 counter
                  bgeu         t5, s8, sub_4_3_0_t #branch for loop 0
                  bltu         t3, t6, sub_4_3_1_t #branch for loop 1
                  or           s11, a0, a0
                  addi         s5, zero, 7 #init loop 1 counter
                  sltiu        s11, gp, 1049
                  addi         a7, zero, 12 #init loop 1 limit
                  sll          t3, s8, a2
sub_4_6_1_t:      slt          zero, a1, t4
                  addi         s5, s5, 5 #update loop 1 counter
                  srli         s2, s9, 5
                  srl          a3, t6, s10
                  addi         t0, zero, -1 #init loop 0 counter
                  lui          s1, 552580
                  slti         t6, s10, -1720
                  ori          s1, s5, -1553
                  addi         gp, zero, -13 #init loop 0 limit
sub_4_6_0_t:      sltu         s9, ra, s2
                  addi         t0, t0, -6 #update loop 0 counter
                  or           a5, t1, t6
                  nop
                  srai         a0, tp, 13
                  xor          s8, s10, a4
                  beq          t0, gp, sub_4_6_0_t #branch for loop 0
                  sub          a1, t4, s8
                  srl          s4, gp, s5
                  srli         t5, s4, 17
                  beq          s5, a7, sub_4_6_1_t #branch for loop 1
                  or           s7, tp, s9
                  addi         t5, zero, -4 #init loop 1 counter
                  addi         s11, zero, -11 #init loop 1 limit
                  auipc        t0, 350835
                  ori          a3, a3, -1749
                  lui          t1, 165235
                  slli         s7, s4, 3
sub_4_1_1_t:      slti         t4, a6, -1963
                  slti         t0, gp, -1149
                  addi         t5, t5, -9 #update loop 1 counter
                  sub          a2, a1, s2
                  addi         t2, zero, 5 #init loop 0 counter
                  addi         a4, zero, 10 #init loop 0 limit
                  xori         t3, t1, 1277
sub_4_1_0_t:      lui          tp, 616456
                  sltiu        t1, t1, 1138
                  addi         t2, t2, 5 #update loop 0 counter
                  beq          t2, a4, sub_4_1_0_t #branch for loop 0
                  andi         a1, a7, -1891
                  bge          t5, s11, sub_4_1_1_t #branch for loop 1
                  and          s6, t3, s4
                  addi         a3, zero, 7 #init loop 1 counter
                  and          tp, t1, s11
                  sltu         a5, t5, a6
                  slti         s0, s4, -1841
                  srl          a2, s7, a3
                  xori         sp, t3, 1930
                  addi         s2, zero, -4 #init loop 1 limit
sub_4_4_1_t:      auipc        a0, 155519
                  sltiu        a4, s7, -19
                  addi         a3, a3, -6 #update loop 1 counter
                  addi         s4, zero, 6 #init loop 0 counter
                  srl          t5, a3, t0
                  addi         s5, t2, 519
                  xor          a5, s3, a3
                  sltu         t2, s2, t4
                  nop
                  sra          s0, a4, a1
                  addi         s6, zero, 18 #init loop 0 limit
sub_4_4_0_t:      lui          t5, 680439
                  addi         s4, s4, 8 #update loop 0 counter
                  and          s9, a7, ra
                  ori          t2, t4, -1037
                  add          a4, t2, s2
                  bltu         s4, s6, sub_4_4_0_t #branch for loop 0
                  nop
                  bge          a3, s2, sub_4_4_1_t #branch for loop 1
                  slti         t5, a6, 210
                  addi         t5, zero, 8 #init loop 0 counter
                  and          s0, t2, s11
                  xor          a4, a6, a2
                  srl          t3, sp, s3
                  srli         ra, t2, 10
                  xori         a5, s5, 998
                  addi         sp, zero, 20 #init loop 0 limit
                  addi         s4, a4, -1532
sub_4_5_0_t:      slt          s11, s2, s4
                  srl          a1, ra, s7
                  addi         t5, t5, 3 #update loop 0 counter
                  lui          t6, 387710
                  srli         a7, s2, 21
                  blt          t5, sp, sub_4_5_0_t #branch for loop 0
                  ori          s11, t0, -996
                  addi         tp, zero, 5 #init loop 0 counter
                  xori         ra, gp, -1242
                  sra          s6, a7, t3
                  addi         s11, zero, 8 #init loop 0 limit
                  srai         t5, t2, 31
                  sltiu        a1, a0, -209
sub_4_0_0_t:      slt          zero, a6, t3
                  add          t3, t1, s11
                  addi         tp, tp, 7 #update loop 0 counter
                  andi         t0, a3, 284
                  xori         s5, ra, -1944
                  blt          tp, s11, sub_4_0_0_t #branch for loop 0
                  xor          gp, s9, t6
                  addi         s0, zero, 0 #init loop 0 counter
                  xori         s5, s5, 869
                  and          a2, s8, s9
                  ori          t6, s11, 1550
                  srli         s7, t6, 23
                  slti         s2, s8, -1090
                  addi         sp, zero, -10 #init loop 0 limit
sub_4_2_0_t:      sltiu        a3, t1, 1485
                  sll          a7, a4, zero
                  sll          a0, a4, a3
                  nop
                  srai         gp, a4, 30
                  addi         s0, s0, -9 #update loop 0 counter
                  slli         s9, s0, 24
                  bge          s0, sp, sub_4_2_0_t #branch for loop 0
                  srai         t2, s7, 24
                  bgeu         s1, a1, 3f
                  sltu         a3, s2, t4
                  sub          s0, t3, a2
3:                ori          t3, s0, -182
                  xor          gp, gp, s11
                  and          t2, tp, s9
                  slti         t1, s11, 420
                  blt          s7, t3, 17f
                  bge          gp, a0, 17f
                  sra          a5, sp, t5
                  xori         s7, s2, 1278
                  add          s5, zero, t5
                  sltu         s4, s7, gp
                  addi         t4, s4, -317
                  slli         t5, t6, 13
                  ori          a0, ra, -872
                  sll          a3, s0, a3
17:               bge          s7, s0, 21f
                  bne          a1, s5, 25f
                  srl          a4, gp, a1
                  srai         t4, zero, 29
21:               auipc        s8, 633944
                  beq          a2, s11, 41f
                  slli         a0, s1, 26
                  srl          a0, s9, t0
25:               slti         s5, a7, 1302
                  blt          t1, s8, 32f
                  srli         t1, zero, 5
                  bne          a3, sp, 42f
                  slti         t1, t5, 1673
                  and          zero, s10, s6
                  bgeu         s8, t2, 43f
32:               and          t4, s10, s10
                  srai         a1, a5, 18
                  xori         gp, s8, -519
                  sltiu        s9, s6, -611
                  sll          s6, tp, t2
                  or           s1, ra, ra
                  sltu         a7, s7, ra
                  addi         s7, t6, -423
                  la           gp, sub_5
                  ori          a5, a4, 1567
                  sltiu        s0, s0, 437
                  addi         gp, gp, -931
                  xor          tp, t5, gp
sub_4_j6:         jalr         t1, gp, 931 #jump sub_4 -> sub_5
                  srl          a4, s2, a3
                  slt          s9, a2, s7
                  xor          a3, a0, s9
                  sltu         s8, t2, s0
                  bne          sp, s1, 56f
                  or           t2, s2, s11
41:               nop
42:               xori         s7, s8, 578
                  and          s4, t5, a7
                  auipc        s0, 979623
                  sra          ra, t0, t0
                  slt          a5, s10, s7
                  andi         s0, s4, 1862
                  la           s11, sub_5
                  sltiu        a4, s11, 1178
                  addi         s11, s11, -119
                  sltiu        t5, s5, 1305
                  bge          a3, ra, sub_4_j7 #branch to jump instr
                  andi         a1, a0, -151
sub_4_j7:         jalr         t1, s11, 120 #jump sub_4 -> sub_5
43:               bltu         s8, s2, 53f
                  slli         sp, a6, 17
                  sltu         a4, a2, a0
                  sltu         sp, a3, s8
                  sub          s5, tp, a3
                  slti         t1, t6, -952
                  beq          s3, a2, 51f
                  add          t1, s1, a7
51:               slli         a4, t6, 11
                  slli         ra, t6, 16
53:               bge          sp, t2, 65f
                  ori          sp, ra, -418
                  sub          t5, t6, s10
56:               sub          zero, a2, t4
                  sub          t1, t4, tp
                  lui          s0, 839829
                  auipc        t4, 264840
                  nop
                  slli         t1, t4, 10
                  bltu         s6, t1, 71f
                  and          ra, s4, t0
                  andi         sp, s3, 44
65:               bge          s11, t2, 66f
66:               or           tp, s8, tp
                  add          t3, a0, a0
                  slt          t4, t2, s6
                  sltu         ra, t6, s6
                  sub          t3, t5, s0
71:               andi         t3, s6, 1698
                  beq          gp, s8, 88f
                  addi         s1, a7, -209
                  or           s2, a6, zero
                  nop
                  nop
                  andi         s5, s0, 1603
                  xor          sp, a4, t2
                  srli         a0, t1, 3
                  addi         a7, t3, -157
                  bge          t5, zero, 96f
                  srai         a7, a0, 28
                  andi         gp, gp, 168
                  andi         t3, t1, -971
                  beq          s10, t2, 101f
                  lui          s2, 332774
                  sltiu        s9, s2, -1970
88:               and          s7, s10, s5
                  beq          t4, sp, 100f
                  nop
                  blt          s6, s10, 108f
                  bne          a3, a5, 96f
                  sub          s5, s8, a3
                  beq          sp, t5, 113f
                  sub          a0, t1, s4
96:               add          t6, t4, t1
                  addi         t1, a5, -1934
                  andi         a5, ra, 1093
                  bltu         zero, t1, 103f
100:              or           a7, gp, zero
101:              slt          s9, gp, sp
                  slti         a5, s6, 1271
103:              xor          s7, s6, a6
                  auipc        a7, 586093
                  slli         s2, t4, 29
                  srl          sp, t5, t6
                  sub          s5, t6, a4
108:              srai         a2, s10, 8
                  ori          t5, t2, 137
                  bltu         t4, s5, 121f
                  andi         t6, ra, 1796
                  bltu         a2, s6, 113f
113:              bgeu         s10, a2, 123f
                  bne          a4, a7, 129f
                  xori         ra, a0, -1649
                  addi         t3, t4, -1274
                  sltiu        t4, s2, 453
                  srli         s1, s5, 6
                  andi         t3, t1, 1164
                  lui          ra, 687797
121:              srli         s4, s5, 8
                  bne          t4, a6, 127f
123:              blt          a4, t0, 136f
                  srli         t5, s0, 11
                  srai         s7, s2, 7
                  sltu         t1, a4, sp
127:              ori          a1, t0, 1595
                  addi         a4, t5, 889
129:              or           t2, s2, s5
                  slli         s7, a5, 6
                  andi         a7, s1, 132
                  auipc        s8, 951635
                  slti         a2, a2, -1726
                  srl          a2, t6, s2
                  blt          s3, t3, 151f
136:              or           s11, s1, sp
                  addi         a3, s10, 1098
                  sltiu        a3, s6, 1757
                  bltu         ra, sp, 151f
                  bltu         tp, a0, 155f
                  bge          s3, s8, 142f
142:              sltu         s6, a7, t5
                  blt          s7, t2, 162f
                  bge          s3, t2, 160f
                  bgeu         sp, s6, 151f
                  sub          ra, s5, a3
                  srli         a3, s3, 30
                  bne          t0, a1, 165f
                  addi         zero, sp, -891
                  ori          s7, a4, -1599
151:              bne          a5, a0, 167f
                  xori         a0, s5, -1258
                  slti         a3, a0, 189
                  bltu         t6, t1, 158f
155:              xor          s9, t4, t4
                  bne          zero, t1, 173f
                  sltiu        s7, s8, -211
158:              add          t5, sp, a2
                  bgeu         s9, s1, 175f
160:              slli         a5, a3, 6
                  slti         t5, a3, 1891
162:              lui          sp, 536469
                  addi         t3, t1, 449
                  and          gp, a6, s6
165:              srli         s0, zero, 4
                  addi         ra, a5, -803
167:              bge          ra, a3, 186f
                  ori          a2, s6, -295
                  sltiu        gp, a4, -1660
                  srl          s2, a0, a0
                  srl          t1, t1, t4
                  and          s5, s5, t5
173:              srli         gp, tp, 13
                  srl          a1, a1, a6
175:              bge          a6, gp, 177f
                  sll          a5, a0, s1
177:              bne          s4, s10, 189f
                  nop
                  and          s5, tp, a5
                  sltu         s6, t6, tp
                  sltu         a7, s8, t6
                  addi         t2, s4, -1811
                  and          s11, a3, s4
                  or           zero, s2, t1
                  sra          t0, a1, s7
186:              sltiu        gp, s2, -504
                  sra          s6, a6, a6
                  lui          s6, 677617
189:              sub          a4, s1, s9
                  srl          a0, t4, a5
                  sll          a1, s0, ra
                  blt          s8, a6, 202f
                  slli         a2, s8, 7
                  xor          tp, s9, s3
                  sltiu        s5, t5, 298
                  bge          a3, tp, 206f
                  auipc        a5, 6415
                  sra          sp, t4, s10
                  srl          a0, t4, t6
                  sll          s9, a3, s10
                  beq          t5, s0, 210f
202:              srli         ra, s8, 16
                  bltu         a7, s11, 214f
                  blt          a0, t1, 219f
                  ori          s1, gp, -1207
206:              sltiu        a3, t6, 1447
                  and          tp, t0, s3
                  lui          a0, 614189
                  beq          t6, s4, 220f
210:              slli         s0, gp, 25
                  sub          ra, s2, s9
                  ori          a5, sp, 1317
                  auipc        s1, 54014
214:              lui          t4, 580810
                  slt          s9, s0, ra
                  add          a1, a4, a5
                  sub          a5, gp, t6
                  sll          a7, s0, a0
219:              srli         s7, a3, 30
220:              srli         s6, s9, 0
                  srai         s5, a3, 31
                  auipc        a1, 607271
                  bgeu         t6, s1, 237f
                  auipc        s4, 462036
                  xor          t6, s0, ra
                  or           a1, ra, zero
                  sll          a0, t3, zero
                  bne          a0, s10, 237f
                  slt          zero, t3, s7
                  addi         s7, a1, -1677
                  auipc        a2, 98689
                  sub          s8, s0, s5
                  andi         s6, a3, -1961
                  slli         t2, a0, 28
                  slli         a2, t3, 14
                  xori         a3, t2, 779
237:              auipc        t0, 360790
                  ori          a3, t0, 950
                  sub          t1, a6, ra
                  bltu         gp, s11, 243f
                  andi         s2, s1, 141
                  addi         s5, a4, 1492
243:              lui          s9, 566262
                  beq          a1, s5, 248f
                  ori          s7, t1, 149
                  bgeu         t1, gp, 251f
                  bltu         a3, s4, 257f
248:              ori          a7, s11, 1816
                  slti         s5, t6, 64
                  bge          t4, ra, 251f
251:              ori          ra, t1, 1217
                  xori         s7, s10, 747
                  slt          s4, s10, ra
                  sltu         t0, ra, a0
                  bgeu         t4, a1, 262f
                  bge          a0, t6, 260f
257:              xor          a3, gp, t1
                  xori         t4, a4, 1977
                  sll          s1, s9, s2
260:              ori          t0, a7, -987
                  blt          s3, s8, 274f
262:              slt          s1, a1, s3
                  srli         t3, sp, 21
                  blt          s11, s7, 273f
                  slti         t6, t1, -602
                  slt          t4, t2, t5
                  bge          a6, s7, 278f
                  or           s1, t6, a1
                  andi         a4, gp, -1895
                  slli         tp, sp, 18
                  xor          a2, a2, t6
                  lui          t1, 547203
273:              andi         s6, a5, 50
274:              add          t4, s11, a2
                  auipc        a5, 21552
                  srli         tp, a6, 29
                  sltu         t6, a2, t2
278:              sub          tp, a4, zero
                  xor          s8, tp, gp
                  srl          s0, a3, tp
                  sltiu        a2, s2, -1335
                  sra          gp, zero, a5
                  bge          s3, s8, 300f
                  bne          s5, a0, 295f
                  ori          tp, t4, 554
                  srli         s7, s10, 0
                  bne          s6, a0, 304f
                  xor          s9, t1, s5
                  and          tp, s9, tp
                  sll          sp, s7, s5
                  sra          s0, a2, tp
                  srli         s7, a1, 26
                  srai         a1, s5, 25
                  sub          gp, tp, s7
295:              slti         a4, gp, -930
                  xori         a4, a4, -766
                  bgeu         t0, t2, 306f
                  bltu         a0, s2, 302f
                  sltu         s9, zero, sp
300:              slli         tp, sp, 26
                  slti         a0, a2, -804
302:              beq          t1, sp, 305f
                  sltu         tp, a2, t0
304:              slti         a0, s0, 1185
305:              slti         t2, zero, -688
306:              srai         zero, s6, 31
                  blt          zero, s9, 319f
                  bltu         zero, s4, 318f
                  slt          t0, t5, gp
                  slli         s6, s7, 17
                  sltiu        tp, t3, 135
                  srl          a5, zero, s8
                  xor          s9, tp, a0
                  or           s5, zero, ra
                  sra          a5, t5, s10
                  beq          s3, a0, 322f
                  srli         a1, s2, 12
318:              ori          gp, s6, -985
319:              slt          s8, a6, s4
                  blt          s0, t5, 339f
                  xor          tp, zero, s10
322:              sra          a3, a3, s6
                  slti         s2, s9, 1988
                  or           s11, s3, s1
                  slli         a5, a5, 4
                  srl          s5, a7, a7
                  bge          t1, zero, 343f
                  sll          t0, s3, a1
                  bge          a3, a4, 344f
                  beq          t3, a7, 340f
                  slti         t1, s5, 337
                  add          s6, s3, a1
                  srli         gp, a6, 18
                  slti         t5, gp, -1457
                  srai         a3, s3, 15
                  xori         zero, sp, 115
                  bne          s7, sp, 347f
                  andi         t6, s8, -1847
339:              slt          a7, a5, t0
340:              slli         ra, a5, 25
                  bltu         a5, ra, 356f
                  beq          s6, s5, 355f
343:              xori         t4, a5, -1622
344:              srai         sp, a7, 28
                  bge          s5, t6, 361f
                  beq          a2, a6, 358f
347:              auipc        s1, 260621
                  slli         t3, a1, 13
                  srli         a5, a5, 17
                  bltu         s5, s10, 361f
                  slt          s2, sp, t0
                  lui          t1, 1020297
                  andi         s1, t1, 1508
                  ori          t1, t5, -1355
355:              bne          a4, a1, 361f
356:              slti         s11, a0, 614
                  bgeu         t1, t2, 361f
358:              slli         s11, s6, 10
                  slli         a2, s3, 13
                  sub          a4, t1, t3
361:              srli         a7, s6, 13
                  sll          a4, s7, tp
                  slt          ra, tp, s9
                  add          s4, a5, s3
                  lw           t1, 4(s3)
                  xor          a1, s11, sp
                  srai         a4, t0, 26
                  sltiu        gp, ra, -780
                  addi         s3, s3, 60
                  xor          a4, t2, s0
535:              addi x18, x6, 1
535:              jalr x18, x18, 0
sub_5:            slti         t2, s7, 633
                  slt          s6, s10, s0
                  xor          s6, s7, a1
                  addi         s3, s3, -28
                  sw           t1, 4(s3)
                  andi         a3, a7, -391
                  lui          t4, 2418
                  addi         t5, zero, 9 #init loop 0 counter
                  addi         a7, zero, -13 #init loop 0 limit
sub_5_1_0_t:      and          a3, a3, a4
                  addi         t5, t5, -4 #update loop 0 counter
                  add          a5, s6, s3
                  bge          t5, a7, sub_5_1_0_t #branch for loop 0
                  ori          s8, a5, 1407
                  bne          t2, zero, 14f
                  sltiu        s11, s4, 1249
                  bge          t5, sp, 5f
                  bne          s9, tp, 11f
                  blt          s7, s0, 5f
5:                srai         s9, ra, 5
                  xor          sp, t6, a1
                  addi         s0, zero, 582
                  bne          s7, ra, 23f
                  nop
                  sltiu        tp, s0, 169
11:               auipc        s9, 288667
                  slli         a2, tp, 12
                  sltu         s9, a1, s8
14:               addi         t2, a7, 578
                  sltiu        s8, t0, -1387
                  ori          t5, s2, -1085
                  andi         a1, s8, -1768
                  auipc        a5, 741495
                  lui          t1, 34656
                  ori          zero, a1, -416
                  lui          s1, 694834
                  ori          s1, s1, -1631
23:               auipc        a1, 165707
                  beq          sp, s3, 30f
                  blt          s2, t3, 39f
                  lui          a1, 753973
                  addi         s7, t2, -1192
                  nop
                  sltiu        a1, a0, 1428
30:               sub          a0, s3, s0
                  sra          t6, s6, s4
                  add          a3, s3, s1
                  auipc        s7, 269129
                  bgeu         zero, s2, 41f
                  ori          tp, t2, -2020
                  add          a5, s6, sp
                  lui          s1, 668412
                  addi         s0, t2, 1155
39:               bne          t4, tp, 57f
                  sll          s11, s2, s2
41:               srl          a3, zero, s2
                  addi         t1, t6, -105
                  add          t2, s7, s8
                  srli         t2, s9, 5
                  srai         t0, s4, 19
                  lui          sp, 165151
                  srli         t6, s0, 27
                  and          t4, t1, s2
                  sltu         t3, s2, a4
                  sll          s11, s2, s1
                  bltu         a3, a5, 66f
                  beq          gp, zero, 57f
                  add          ra, a6, a7
                  bge          a3, ra, 69f
                  bgeu         a3, a5, 68f
                  auipc        t3, 213135
57:               sra          a4, tp, a1
                  addi         a4, zero, -4 #init loop 1 counter
                  xori         a1, gp, 163
                  xori         s7, s10, 96
                  andi         t5, t2, -1403
                  slt          a3, a7, s4
                  addi         t2, zero, -18 #init loop 1 limit
sub_5_0_1_t:      sltu         a5, a5, s8
                  nop
                  addi         a4, a4, -7 #update loop 1 counter
                  addi         t4, zero, 9 #init loop 0 counter
                  addi         t3, zero, -5 #init loop 0 limit
                  slli         s7, tp, 4
                  sll          s1, tp, s5
                  or           s11, ra, zero
                  ori          t0, s1, -1010
                  slli         t1, s1, 14
                  srli         s0, s10, 9
                  sra          sp, s3, t2
                  slti         gp, t1, 1829
                  sltiu        a2, s9, -121
sub_5_0_0_t:      sltu         t1, t3, s3
                  srai         s0, t6, 6
                  lui          a3, 259129
                  sll          tp, s0, s5
                  and          t6, s2, s3
                  xor          s0, gp, a6
                  addi         t4, t4, -2 #update loop 0 counter
                  bne          t4, t3, sub_5_0_0_t #branch for loop 0
                  ori          a5, a3, -1571
                  bne          a4, t2, sub_5_0_1_t #branch for loop 1
                  slli         s6, t3, 8
                  blt          s10, s10, 62f
                  addi         tp, tp, -501
                  sll          s6, t0, t6
                  srai         tp, s3, 15
62:               bgeu         s3, s11, 66f
                  andi         a3, s10, 388
                  sltu         a7, s3, a5
                  ori          t1, s2, -1534
66:               bge          tp, sp, 75f
                  auipc        s0, 220061
68:               bne          s1, tp, 80f
69:               add          a3, s2, ra
                  slt          t4, a2, s10
                  addi         s0, s5, -1013
                  slt          a7, a7, s1
                  lui          a5, 813899
                  srl          s8, gp, s11
75:               slti         s7, t3, 1900
                  auipc        s0, 403034
                  sra          ra, t5, s4
                  bltu         t5, a4, 97f
                  sll          a3, t4, a5
80:               slli         a2, t1, 0
                  bge          t0, a1, 93f
                  and          s2, t0, a0
                  addi         zero, a4, 851
                  xor          t5, a0, t4
                  and          s11, t5, t4
                  andi         a2, s10, 634
                  add          t0, s6, t6
                  sra          s7, s5, a5
                  blt          s11, s0, 90f
90:               slt          s8, s0, s3
                  sll          a3, a7, s1
                  slt          s9, s2, a1
93:               add          a3, t3, s7
                  srl          s2, s1, s11
                  or           s0, a1, tp
                  add          a2, a6, s3
97:               slli         t4, gp, 2
                  auipc        s1, 941244
                  xor          t5, a3, a4
                  andi         s0, s11, -73
                  srl          gp, a7, s0
                  addi         a4, gp, 31
                  lui          t5, 618198
                  lui          a2, 177360
                  bgeu         gp, s8, 109f
                  bne          ra, t6, 109f
                  sltu         s0, a0, t5
                  bge          t6, a5, 109f
109:              nop
                  lw           t1, 4(s3)
                  lui          a0, 921567
                  addi         s3, s3, 28
                  srai         t4, s0, 6
                  slti         s1, s1, -1689
                  sltiu        zero, sp, -208
161:              addi x21, x6, 1
161:              jalr x21, x21, 0
sub_3:            sub          t2, a6, t3
                  nop
                  bgeu         ra, s5, sub_3_stack_p
                  lui          s6, 108796
sub_3_stack_p:    addi         s3, s3, -56
                  or           gp, s1, s6
                  sra          a0, s7, a1
                  and          t5, sp, a3
                  sw           t1, 4(s3)
                  slti         a4, s2, -1116
                  andi         a3, s4, -432
                  addi         ra, zero, -1 #init loop 1 counter
                  sltiu        zero, t0, 1376
                  slti         t0, t6, -1906
                  addi         a2, zero, 3 #init loop 1 limit
sub_3_1_1_t:      nop
                  add          gp, s11, a6
                  sll          a7, sp, t1
                  sltiu        a1, a3, 1124
                  addi         ra, ra, 9 #update loop 1 counter
                  slt          t3, t5, tp
                  addi         s0, zero, -8 #init loop 0 counter
                  xor          t1, s3, t3
                  addi         s5, zero, 2 #init loop 0 limit
                  srli         a0, a2, 24
                  sltiu        t3, a3, -460
                  andi         t5, s7, -911
                  ori          a1, a3, -1804
sub_3_1_0_t:      or           s7, tp, ra
                  auipc        t4, 249187
                  sltiu        gp, a3, 737
                  addi         s0, s0, 5 #update loop 0 counter
                  srai         zero, s3, 31
                  nop
                  auipc        s8, 502537
                  sltu         zero, a4, t1
                  bltu         s0, s5, sub_3_1_0_t #branch for loop 0
                  srl          a0, a6, s1
                  or           s1, a5, t0
                  sra          s8, s1, a3
                  ori          t0, a5, 113
                  bltu         ra, a2, sub_3_1_1_t #branch for loop 1
                  addi         a0, t2, 80
                  addi         gp, zero, 3 #init loop 1 counter
                  sll          s2, tp, ra
                  srai         sp, s4, 23
                  addi         s7, zero, 10 #init loop 1 limit
                  slt          t3, s7, s3
sub_3_3_1_t:      auipc        s6, 943707
                  nop
                  addi         gp, gp, 7 #update loop 1 counter
                  nop
                  addi         s4, zero, 7 #init loop 0 counter
                  xor          t6, t1, s2
                  sltiu        zero, ra, 1909
                  addi         t2, zero, 7 #init loop 0 limit
                  sra          s1, t5, a4
sub_3_3_0_t:      sub          s5, s7, a2
                  sra          a0, s6, ra
                  srl          a1, t5, sp
                  addi         s4, s4, -5 #update loop 0 counter
                  ori          s1, a4, -721
                  bgeu         s4, t2, sub_3_3_0_t #branch for loop 0
                  sll          s11, t4, a6
                  bne          gp, s7, sub_3_3_1_t #branch for loop 1
                  sltu         t5, s2, t3
                  addi         a2, zero, 9 #init loop 0 counter
                  srl          tp, ra, a1
                  sra          s7, s5, a6
                  addi         s1, zero, 7 #init loop 0 limit
                  sltiu        s2, s6, -980
sub_3_2_0_t:      sub          s4, tp, s2
                  sltu         a3, a2, a7
                  or           t0, s9, a6
                  sll          t1, s7, s9
                  and          s4, gp, s2
                  sra          sp, s5, a6
                  sra          a7, s0, a2
                  addi         a2, a2, -2 #update loop 0 counter
                  srl          t0, a0, zero
                  srli         t4, s7, 3
                  srl          a3, gp, t1
                  srli         s5, s4, 27
                  slti         s11, s6, -603
                  sltu         a7, a4, a7
                  srli         s7, s4, 26
                  bgeu         a2, s1, sub_3_2_0_t #branch for loop 0
                  sltu         s6, s0, s11
                  addi         a7, zero, -6 #init loop 0 counter
                  sll          s11, t3, t4
                  sltiu        tp, ra, 148
                  addi         a0, zero, 6 #init loop 0 limit
                  lui          s8, 837467
sub_3_0_0_t:      nop
                  srl          zero, t5, s4
                  nop
                  add          t0, t2, s10
                  srai         zero, tp, 14
                  slli         a1, t0, 0
                  sra          s9, s10, gp
                  addi         s1, s4, 1388
                  addi         a7, a7, 6 #update loop 0 counter
                  nop
                  xori         t1, a1, -359
                  addi         sp, s7, -1952
                  sra          a3, s10, a2
                  bne          a7, a0, sub_3_0_0_t #branch for loop 0
                  add          gp, a3, s10
                  sltu         s4, t3, a7
                  blt          s4, s10, 10f
                  srai         s5, t1, 18
                  addi         s6, s6, -1202
                  sltiu        a2, t1, 134
                  bgeu         t2, sp, 11f
                  sll          tp, t2, s8
                  bgeu         s9, s1, 9f
                  xori         s4, s2, -1410
9:                lui          t4, 6417
10:               addi         t1, s9, -210
11:               srai         a3, s8, 20
                  andi         s5, s1, -1430
                  sub          a7, t4, gp
                  bge          s2, t0, 26f
                  beq          a0, a3, 32f
                  or           a0, a2, a2
                  sltiu        s6, s6, -1799
                  srl          t3, s9, a7
                  slli         a4, t1, 9
                  bne          a4, a3, 36f
                  or           gp, s6, tp
                  lui          t1, 141711
                  sltiu        sp, t3, 1577
                  xori         gp, a4, -777
                  sra          a3, s3, s1
26:               bne          a7, t0, 36f
                  xor          t0, a0, gp
                  bgeu         a1, a4, 41f
                  sub          t0, s1, s4
                  add          s6, s2, s7
                  lui          a0, 277792
32:               xori         s1, s5, 718
                  blt          a1, gp, 44f
                  slt          s0, s3, sp
                  bne          t1, t5, 54f
36:               addi         a0, t2, -969
                  srai         s5, a0, 25
                  srli         s8, sp, 10
                  or           t2, s2, s5
                  srli         t5, t6, 2
41:               bge          s2, s5, 42f
42:               slli         a2, s1, 30
                  andi         a3, zero, 816
44:               srl          s7, t3, s1
                  slli         s8, a4, 12
                  srli         s6, s0, 12
                  bltu         s6, s9, 59f
                  bge          a1, t4, 57f
                  bne          t3, a4, 65f
                  slli         t3, zero, 31
                  sra          t4, s2, s7
                  addi         t5, s3, 548
                  and          a4, a0, ra
54:               lui          s11, 209068
                  bne          t4, a3, 71f
                  srai         s7, a0, 26
57:               srai         s11, s9, 8
                  add          s4, s11, s5
59:               blt          s7, s2, 78f
                  sltiu        a7, a0, -555
                  add          a3, a6, s5
                  slti         s7, t0, -1226
                  bgeu         s2, s4, 68f
                  sra          s7, a1, s5
65:               sll          s11, s9, a6
                  and          s6, a3, t1
                  add          s5, t5, s5
68:               lui          s7, 959787
                  bge          t0, zero, 74f
                  and          tp, t6, a0
71:               and          tp, s3, s3
                  sltu         a1, a6, a0
                  sltiu        a7, s1, 1703
74:               sra          s4, zero, a4
                  srl          t6, a5, s3
                  sltu         s1, a3, s7
                  and          zero, sp, a7
78:               srli         s6, s1, 17
                  bgeu         a2, t3, 89f
                  add          s7, sp, s4
                  xori         t4, s3, 317
                  slt          a1, s3, a1
                  sra          a3, t1, s3
                  bltu         a4, a3, 103f
                  srli         a7, s2, 20
                  xor          s4, s3, tp
                  srli         s2, tp, 10
                  srai         t2, t2, 31
89:               sll          s0, t1, s6
                  sltiu        s9, s1, -2
                  bgeu         t4, tp, 102f
                  blt          a3, a4, 96f
                  slt          s5, tp, gp
                  sub          a3, s8, tp
                  srli         s4, gp, 13
96:               bgeu         s3, tp, 103f
                  lui          t0, 752330
                  lui          s7, 585305
                  slti         s11, sp, 1855
                  or           s6, tp, gp
                  sra          s11, a7, a4
102:              addi         gp, a5, -482
103:              andi         ra, t1, -75
                  xor          s4, s2, a0
                  slti         sp, s4, -1249
                  nop
                  srl          tp, a2, a2
                  srli         tp, a6, 25
                  bge          a3, s2, 116f
                  bge          s7, a4, 119f
                  bltu         gp, gp, 120f
                  sll          a4, tp, s6
                  auipc        s2, 314972
                  slti         s7, a7, -1600
                  blt          t5, t2, 130f
116:              addi         s5, a6, -938
                  bltu         s6, a5, 119f
                  srl          s11, s10, s8
119:              andi         a1, a4, -916
120:              bgeu         t4, a3, 130f
                  bge          zero, s2, 136f
                  andi         t2, a3, -1595
                  bne          a2, a0, 140f
                  lui          a3, 392715
                  andi         tp, a3, 583
                  addi         t5, t1, 2000
                  or           t4, s1, s6
                  srl          tp, t0, s8
                  srai         t3, t6, 16
130:              slli         s6, ra, 20
                  and          a3, s1, s11
                  srl          sp, a7, s11
                  blt          s6, s10, 145f
                  and          tp, t1, s7
                  beq          s3, s0, 147f
136:              bltu         t4, s5, 152f
                  blt          a4, s4, 147f
                  andi         t1, s3, -1006
                  xor          t1, a4, t3
140:              andi         s8, s6, -374
                  slti         s0, sp, 573
                  srli         s2, s1, 31
                  slti         s0, t2, -1390
                  srl          tp, s10, a0
145:              slt          t3, s8, sp
                  slti         t4, t0, -1096
147:              nop
                  addi         a3, s11, 1789
                  xor          a3, s0, a0
                  addi         s6, t0, 405
                  or           a0, s11, a0
152:              add          a5, a6, s6
                  sra          s6, t2, s1
                  slti         a1, a7, -1409
                  srai         t0, tp, 18
                  beq          a0, s7, 158f
                  xor          a5, a6, t0
158:              lui          t4, 124193
                  bgeu         zero, s6, 174f
                  auipc        gp, 89057
                  xori         a2, s3, 731
                  slti         s2, zero, -316
                  bltu         ra, a4, 172f
                  srli         t1, a2, 17
                  lui          s4, 627948
                  auipc        a7, 698462
                  ori          s5, sp, -98
                  ori          s6, a6, -1412
                  xor          s4, t3, s1
                  sltiu        tp, a2, -1846
                  srli         t3, t4, 4
172:              ori          t5, t3, 412
                  add          gp, a4, a4
174:              nop
                  bne          s7, a0, 184f
                  slt          t6, a6, s10
                  bge          a3, t0, 190f
                  lui          s11, 178919
                  blt          s7, s6, 198f
                  bltu         s4, zero, 189f
                  xor          t0, a1, s10
                  sltiu        s9, s5, 159
                  nop
184:              blt          t3, sp, 190f
                  sub          s0, s6, s11
                  slti         t0, gp, 290
                  auipc        t4, 524858
                  bge          a5, a4, 192f
189:              srl          t1, a5, s9
190:              slli         sp, s5, 5
                  beq          t4, zero, 207f
192:              sltu         s8, s4, t1
                  slt          a0, t4, t4
                  xori         sp, t1, -1663
                  blt          tp, s9, 197f
                  xor          s4, t4, s7
197:              add          t0, s10, a4
198:              beq          a2, s11, 203f
                  sltiu        t0, s5, 821
                  xori         s4, t0, -330
                  bltu         a5, s1, 216f
                  beq          a4, s5, 207f
203:              bgeu         t4, t3, 210f
                  sra          a1, s6, s4
                  beq          ra, s9, 212f
                  beq          a3, s6, 222f
207:              bgeu         ra, tp, 208f
208:              sltiu        t0, a2, -718
                  sra          s5, a6, a1
210:              bltu         sp, tp, 229f
                  srl          s0, a2, t3
212:              srai         tp, gp, 13
                  lui          a5, 843367
                  ori          t1, s0, 153
                  or           s8, t6, a1
216:              slt          s1, a0, s1
                  addi         t5, s3, -1942
                  addi         a7, a6, -1804
                  blt          s2, s0, 229f
                  nop
                  or           a7, a3, s1
222:              slt          t2, t5, sp
                  addi         t4, s9, 791
                  beq          s3, sp, 235f
                  auipc        a0, 342198
                  beq          t0, s1, 235f
                  bge          gp, t1, 235f
                  add          t1, s10, a5
229:              sll          tp, s7, t6
                  beq          t5, t0, 235f
                  blt          a4, s7, 235f
                  bne          t0, t0, 235f
                  xor          tp, t4, a1
                  srl          t2, t1, s11
235:              slt          t5, s11, gp
                  sltu         gp, t1, a5
                  xor          a4, t4, sp
                  srl          t6, s4, t4
                  slli         a1, sp, 20
                  srli         s9, a5, 21
                  slti         s11, s0, 1126
                  slli         a5, a7, 23
                  andi         t4, t2, 1437
                  lw           t1, 4(s3)
                  andi         t0, s9, -827
                  addi         s3, s3, 56
                  addi         a4, a3, 91
356:              addi x9, x6, 0
356:              jalr x9, x9, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x16, x19, zero
                  csrr x17, 0x300 # MSTATUS
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 31
                  bne x17, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x17, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x17, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x17, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x17, x13, ecall_handler
                  li x13, 0x1
                  beq x17, x13, instr_fault_handler
                  li x13, 0x5
                  beq x17, x13, load_fault_handler
                  li x13, 0x7
                  beq x17, x13, store_fault_handler
                  li x13, 0xc
                  beq x17, x13, pt_fault_handler
                  li x13, 0xd
                  beq x17, x13, pt_fault_handler
                  li x13, 0xf
                  beq x17, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
