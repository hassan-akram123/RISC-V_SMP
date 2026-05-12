.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 0
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0xee05abcc
                  li x3, 0xafff7e35
                  li x4, 0x683e5787
                  li x5, 0x4
                  li x6, 0x0
                  li x8, 0x17f408ff
                  li x9, 0xf40a5a17
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0xfa91dc83
                  li x13, 0x0
                  li x14, 0xf2fc2397
                  li x15, 0x9
                  li x16, 0x80000000
                  li x17, 0xff3efa02
                  li x18, 0x61f0bc91
                  li x19, 0x3420af79
                  li x20, 0x80000000
                  li x21, 0xf5f443a6
                  li x22, 0x28aa5785
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0xf7da9188
                  li x28, 0x80000000
                  li x29, 0x1c9aba96
                  li x30, 0x80000000
                  la x31, user_stack_end
main:             lui          gp, 942160
                  la           t0, sub_2
                  and          t4, sp, s8
                  sltiu        t5, s5, 1821
                  addi         t0, t0, -77
                  slti         s6, s5, 663
                  lui          a1, 389229
                  and          t1, s4, t0
main_j2:          jalr         a5, t0, 78 #jump main -> sub_2
                  lui          s9, 313615
                  la           t4, sub_1
                  sub          s7, s9, t5
                  slti         s9, a7, 1018
                  ori          t1, s6, 973
                  sub          t3, a3, s3
                  slli         sp, s1, 17
                  addi         t4, t4, 253
                  ori          sp, gp, -1281
                  bltu         s3, a5, main_j3 #branch to jump instr
                  slli         t3, s4, 18
main_j3:          jalr         a5, t4, -253 #jump main -> sub_1
                  addi         a5, zero, 10 #init loop 0 counter
                  sra          zero, t0, a2
                  slli         s9, ra, 18
                  sub          a7, t5, s0
                  or           s6, t0, tp
                  addi         tp, a1, 837
                  xori         gp, t1, 1005
                  and          t3, a0, a6
                  andi         s6, a4, 239
                  auipc        s10, 25608
                  srli         s4, s10, 19
                  addi         a1, zero, 19 #init loop 0 limit
                  xor          a6, s2, s9
main_2_0_t:       sub          s5, t3, t1
                  sub          a7, s11, s3
                  addi         a5, a5, 7 #update loop 0 counter
                  lui          t1, 819589
                  lui          t4, 1015970
                  sltiu        s11, a1, -1782
                  xori         s5, s0, -514
                  xor          s4, zero, a5
                  slti         a0, s6, -1665
                  bltu         a5, a1, main_2_0_t #branch for loop 0
                  slti         a0, a4, 977
                  addi         a0, zero, 6 #init loop 1 counter
                  xor          s9, t4, s6
                  addi         a5, zero, 11 #init loop 1 limit
                  sra          s7, a2, s1
                  and          t4, s2, s2
                  sub          t1, s0, a4
main_5_1_t:       add          ra, t6, s3
                  addi         a0, a0, 5 #update loop 1 counter
                  slli         t3, s3, 19
                  andi         gp, t3, 321
                  sll          s4, sp, tp
                  srli         t1, s3, 13
                  addi         a7, zero, -5 #init loop 0 counter
                  sub          s4, s1, s2
                  addi         a4, zero, -16 #init loop 0 limit
main_5_0_t:       andi         s5, a7, -353
                  addi         a7, a7, -3 #update loop 0 counter
                  xor          s6, a2, a4
                  sltu         a1, s10, s0
                  bge          a7, a4, main_5_0_t #branch for loop 0
                  xor          ra, s6, t5
                  sra          s0, t5, t4
                  srai         t5, a2, 28
                  sra          s10, a3, t4
                  sub          s2, zero, ra
                  and          t1, a0, a7
                  srai         t4, t4, 1
                  lui          s4, 1040578
                  sub          sp, ra, a7
                  add          sp, t6, a2
                  sltu         s2, a4, a2
                  sltu         t3, zero, t6
                  bne          a0, a5, main_5_1_t #branch for loop 1
                  ori          a1, s8, -1113
                  addi         a3, zero, -9 #init loop 0 counter
                  addi         a7, zero, -3 #init loop 0 limit
                  sltiu        a2, sp, 166
main_1_0_t:       sltiu        a0, t1, -1621
                  addi         a3, a3, 2 #update loop 0 counter
                  sltu         s7, ra, s2
                  blt          a3, a7, main_1_0_t #branch for loop 0
                  sltiu        a2, s7, -1028
                  addi         s11, zero, 3 #init loop 1 counter
                  addi         a7, zero, -5 #init loop 1 limit
                  andi         s0, t2, -965
main_0_1_t:       or           s2, a0, a4
                  ori          t1, a2, -431
                  addi         s11, s11, -8 #update loop 1 counter
                  addi         tp, zero, -1 #init loop 0 counter
                  sltu         a5, a6, sp
                  lui          sp, 614969
                  addi         t3, zero, -1 #init loop 0 limit
main_0_0_t:       slti         a1, t3, 225
                  addi         tp, tp, -5 #update loop 0 counter
                  addi         a2, t4, 1565
                  bge          tp, t3, main_0_0_t #branch for loop 0
                  bne          s11, a7, main_0_1_t #branch for loop 1
                  ori          t5, s7, 226
                  addi         s4, zero, 0 #init loop 0 counter
                  sub          tp, t6, s4
                  and          s7, s6, t2
                  addi         s5, ra, 1964
                  srli         s5, a2, 17
                  slli         a4, s4, 29
                  addi         t0, zero, 6 #init loop 0 limit
                  nop
main_4_0_t:       slt          ra, s0, t1
                  addi         s4, s4, 2 #update loop 0 counter
                  nop
                  ori          a5, a2, -605
                  add          a6, s3, ra
                  sltiu        a4, a7, 1609
                  bltu         s4, t0, main_4_0_t #branch for loop 0
                  ori          s5, s0, 1790
                  addi         t3, zero, -10 #init loop 1 counter
                  sltu         s1, s9, t5
                  xori         s5, s9, -1421
                  xori         s9, a2, 276
                  addi         a1, zero, 20 #init loop 1 limit
                  and          a4, s1, a2
main_3_1_t:       sltu         zero, t5, ra
                  addi         t3, t3, 6 #update loop 1 counter
                  and          zero, t1, a1
                  addi         a6, zero, -7 #init loop 0 counter
                  addi         a3, zero, 7 #init loop 0 limit
                  addi         a2, t4, -466
                  sub          tp, s11, s0
                  auipc        a7, 967239
                  sltu         ra, t5, t3
main_3_0_t:       xor          t1, s10, t3
                  nop
                  srli         s4, t2, 20
                  addi         a6, a6, 6 #update loop 0 counter
                  xori         s0, a6, -204
                  bltu         a6, a3, main_3_0_t #branch for loop 0
                  slt          s9, s2, s11
                  sll          t1, gp, s6
                  nop
                  ori          ra, a1, 1159
                  bne          t3, a1, main_3_1_t #branch for loop 1
                  andi         a7, s11, 1142
                  srl          s2, t4, a2
                  srl          a1, t1, gp
                  slti         a4, s4, -1668
                  sub          a6, s3, zero
                  andi         ra, s3, 1481
                  sll          s0, a3, s3
                  auipc        a2, 542589
                  sltiu        s3, s9, 609
                  sltiu        t4, s6, 1666
                  or           sp, t2, t0
                  xori         a4, s9, -1202
                  srl          s11, t5, s4
                  auipc        s1, 794264
                  andi         s6, s8, 1973
                  slli         s11, zero, 13
                  and          s2, s11, t6
                  bgeu         s9, t4, 19f
                  slli         s1, t5, 1
                  sra          a2, s3, s3
19:               addi         s5, s6, -1568
                  slti         t0, sp, 483
                  xori         s10, a6, 1280
                  or           a5, t0, a5
                  nop
                  xori         s5, s7, -701
                  slt          s2, s9, s3
                  beq          s9, a5, 27f
27:               and          s2, t5, s11
                  blt          gp, gp, 47f
                  srl          s1, tp, ra
                  beq          s1, a7, 39f
                  beq          a7, a2, 37f
                  andi         gp, s1, -826
                  slt          s4, a1, a1
                  blt          t5, a0, 49f
                  bge          t5, s6, 48f
                  srli         s3, sp, 8
37:               lui          tp, 38143
                  bltu         s3, a3, 39f
39:               sub          s3, a0, a7
                  sub          a0, s2, s3
                  sltu         a5, a2, a1
                  blt          a0, a3, 62f
                  ori          tp, a2, -1367
                  sra          s11, s10, s7
                  srl          zero, a7, s7
                  ori          a3, a5, -288
47:               xor          t5, a7, ra
48:               blt          a5, a0, 63f
49:               xor          a5, a0, s8
                  slti         s7, t2, -44
                  xor          a5, ra, s1
                  or           tp, a3, t6
                  srl          s5, a1, tp
                  sll          t0, s4, a5
                  nop
                  beq          tp, a4, 73f
                  bltu         s1, s5, 59f
                  auipc        s10, 896127
59:               slti         s1, s5, -1036
                  lui          s1, 105055
                  sltu         a1, s10, t4
62:               addi         gp, t6, -1945
63:               slt          tp, a6, t5
                  bge          a2, zero, 78f
                  sltu         a6, a2, s1
                  ori          s10, t2, -1068
                  bne          t5, s0, 79f
                  sltu         s2, t6, t2
                  add          a2, t0, ra
                  srai         s5, a3, 5
                  sra          t1, s2, s4
                  ori          gp, s3, 1838
73:               add          t5, s10, a2
                  srai         s0, t5, 20
                  xor          a1, a3, t3
                  ori          a4, s2, 175
                  auipc        s9, 243457
78:               xor          t1, a3, gp
79:               ori          s2, s6, -1966
                  ori          t4, a3, 535
                  srli         ra, a6, 15
                  slt          t3, a4, s2
                  sub          t1, s5, zero
                  sub          s1, s6, sp
                  addi         a2, t2, 1890
                  sltu         gp, t2, s0
                  and          a1, s7, t1
                  sra          t1, s2, t6
                  sub          s5, t1, a2
                  xori         a0, t5, 1648
                  nop
                  beq          zero, zero, 94f
                  slli         sp, a0, 10
94:               auipc        s0, 265647
                  srai         t0, s0, 6
                  srl          t4, s2, s6
                  xori         s5, tp, -905
                  addi         s0, s10, 159
                  andi         s5, a6, -534
                  slli         t4, a2, 16
                  nop
                  andi         a6, t4, 427
                  srli         s9, a4, 12
                  nop
                  and          t0, a0, a1
                  nop
                  beq          ra, ra, 121f
                  bltu         gp, zero, 123f
                  bltu         t3, sp, 129f
                  or           tp, gp, s0
                  blt          a1, s7, 115f
                  and          s3, s7, s1
                  beq          t1, s7, 121f
                  auipc        a0, 917890
115:              srai         s11, s11, 4
                  auipc        gp, 8353
                  bgeu         t5, gp, 129f
                  slti         a5, s5, 163
                  or           ra, t6, s9
                  srai         s0, s9, 27
121:              bne          a0, a0, 123f
                  and          s6, ra, a5
123:              srl          t4, a4, a1
                  sltu         s11, t6, a2
                  beq          s1, a0, 139f
                  bltu         s7, a7, 136f
                  srai         a7, t0, 19
                  slti         s11, zero, 1104
129:              srl          a7, s9, t3
                  srl          a4, a2, zero
                  xor          s4, t2, s10
                  bne          tp, s3, 146f
                  srli         zero, s6, 9
                  srli         a4, a0, 11
                  andi         a4, a6, -1267
136:              auipc        s7, 677754
                  slti         a3, zero, 159
                  nop
139:              ori          s1, zero, 585
                  sra          ra, t6, t0
                  sll          zero, s2, a1
                  sltu         s7, t0, s1
                  lui          sp, 1040223
                  slti         ra, s4, 1507
                  sltu         zero, sp, zero
146:              lui          sp, 303323
                  or           t5, a2, s0
                  srai         tp, t3, 28
                  srai         gp, s1, 24
                  sltiu        s6, t2, 160
                  sub          tp, a2, s6
                  addi         s7, zero, -1557
                  sub          tp, t0, a4
                  or           s6, a2, t1
                  lui          s7, 117076
                  beq          s10, s8, 173f
                  addi         a5, s5, 1272
                  bge          a1, a1, 164f
                  slti         a4, s5, -1579
                  ori          s11, a0, -190
                  and          s3, t1, t5
                  and          a5, gp, a7
                  slt          a2, t6, zero
                  or           s9, t6, a1
                  la           s0, sub_1
                  sltu         a6, s2, s9
                  srai         s10, gp, 23
                  sra          s3, t4, tp
                  addi         s0, s0, 712
                  add          s3, s7, a7
                  sub          zero, s10, s8
main_j1:          jalr         a5, s0, -711 #jump main -> sub_1
164:              lui          a5, 71725
                  add          s11, a4, t5
                  slti         t3, s11, 1854
                  xori         s1, s9, -1708
                  or           s4, s2, s7
                  add          t0, s1, zero
                  slti         t1, t0, 1079
                  xori         s4, s0, 459
                  bge          tp, s7, 185f
173:              xori         s10, sp, -1265
                  sra          a2, t0, t2
                  slti         t3, t2, -133
                  slt          s3, a4, sp
                  and          s3, a2, s9
                  lui          s3, 555328
                  slli         sp, s10, 18
                  lui          s9, 839225
                  slli         a1, ra, 19
                  auipc        t0, 642182
                  sra          s4, t1, t6
                  addi         ra, s9, 663
185:              nop
                  sll          s9, ra, a5
                  sub          t1, zero, gp
                  slt          s1, s10, zero
                  ori          gp, a5, -1139
                  sra          s7, s3, a1
                  lui          s7, 389284
                  xori         s1, s3, 176
                  lui          tp, 629803
                  srl          s5, a2, zero
                  xor          tp, s1, tp
                  sll          s1, a3, a5
                  beq          s5, s10, 217f
                  beq          t6, s7, 209f
                  blt          s5, a0, 205f
                  slt          t5, s5, t2
                  sub          a4, s4, a6
                  sltiu        s6, tp, 956
                  and          s9, a5, gp
                  ori          s3, s7, -1776
205:              lui          a5, 735047
                  lui          a1, 87452
                  sltiu        a2, s7, -1709
                  bltu         a7, t4, 222f
209:              srai         a2, s10, 15
                  srli         t5, tp, 23
                  bgeu         s8, tp, 228f
                  bltu         t6, s0, 227f
                  or           a3, s2, t2
                  xori         s10, s0, -211
                  xori         s6, s9, -109
                  beq          s0, t2, 230f
217:              auipc        s5, 755356
                  bgeu         t3, s10, 226f
                  blt          s10, a5, 225f
                  sll          a3, s4, a3
                  xori         a6, sp, -1335
222:              srl          s3, a0, t4
                  sub          s2, s2, gp
                  srli         gp, s4, 8
225:              bltu         t1, s3, 235f
226:              xori         s10, a4, 1417
227:              slli         t5, t3, 11
228:              add          a0, a1, sp
                  srai         ra, gp, 12
230:              bgeu         s8, t6, 249f
                  sub          t1, s0, s2
                  andi         t4, s1, -242
                  bge          a7, sp, 245f
                  xor          t3, t2, s4
235:              ori          a0, t3, -897
                  bgeu         t6, t2, 237f
237:              addi         a2, a0, 1431
                  sltu         t3, a5, s3
                  srai         s1, a7, 8
                  ori          a0, s1, 1761
                  blt          t1, a3, 258f
                  andi         s7, s1, 210
                  xor          t0, gp, s2
                  addi         s11, s5, 1621
245:              sltiu        t1, t3, 1359
                  bge          s11, s7, 248f
                  beq          s11, s11, 267f
248:              auipc        s0, 403541
249:              xor          s9, a0, s1
                  beq          gp, ra, 263f
                  blt          a6, t1, 264f
                  auipc        a6, 925662
                  auipc        s4, 14944
                  blt          s4, t4, 268f
                  addi         s5, t3, 219
                  bne          s6, a2, 258f
                  bne          t0, sp, 266f
258:              sltu         a7, a1, t1
                  bne          a0, t3, 279f
                  and          s11, a1, s8
                  and          t1, s4, t2
                  srai         a1, t6, 20
263:              slli         tp, t3, 16
264:              srli         a4, s10, 17
                  sub          s1, s5, s8
266:              bgeu         a3, s3, 280f
267:              slti         s0, s7, -1788
268:              sub          a2, t0, s8
                  sltu         s6, s4, s8
                  nop
                  and          a3, s3, tp
                  xori         t5, t2, 903
                  slt          a7, s8, s3
                  add          t1, s2, sp
                  blt          tp, t3, 290f
                  ori          s3, s8, 633
                  auipc        s10, 452098
                  or           ra, tp, s2
279:              add          t4, a2, s3
280:              srli         s1, gp, 27
                  sll          a5, ra, sp
                  auipc        s3, 142474
                  and          s4, t3, s9
                  add          t4, s3, gp
                  sra          s1, s10, a2
                  bltu         t3, s3, 306f
                  bne          sp, s7, 299f
                  xor          t4, t6, ra
                  ori          a5, s0, -2022
290:              andi         s11, a3, -1861
                  sub          t4, t6, s5
                  bgeu         gp, s9, 303f
                  srl          t0, a1, t3
                  andi         s6, t4, -169
                  slt          a2, s3, sp
                  auipc        t0, 957323
                  auipc        a0, 412270
                  addi         s7, a3, 467
299:              sltu         s1, t5, s11
                  auipc        s1, 30627
                  or           tp, t2, s5
                  addi         s7, s8, -393
303:              sra          s2, a0, t0
                  nop
                  srli         sp, s3, 18
306:              slti         a5, s4, -118
                  sub          s7, s2, a3
                  beq          s1, s1, 311f
                  slli         s2, ra, 6
                  sltu         t5, s8, s2
311:              blt          s3, t2, 315f
                  blt          a2, zero, 317f
                  and          a5, t4, s2
                  xori         s11, t1, 523
315:              sll          a5, a4, s10
                  slli         a3, s7, 22
317:              sll          gp, s9, t2
                  la x24, test_done
                  jalr x0, x24, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         t3, t0, 1671
                  bgeu         zero, s10, sub_2_stack_p
sub_2_stack_p:    addi         t6, t6, -16
                  nop
                  slt          zero, a5, s9
                  nop
                  srl          a6, t6, t4
                  auipc        s11, 836570
                  xor          s10, ra, gp
                  sw           a5, 4(t6)
                  xori         s2, t4, 1094
                  la           s11, sub_3
                  sltu         t4, s8, s4
                  srl          s2, a7, s7
                  addi         s11, s11, -561
                  blt          s6, a0, sub_2_j4 #branch to jump instr
                  nop
                  srl          s4, s8, s6
                  slt          t3, a1, s3
sub_2_j4:         jalr         a5, s11, 562 #jump sub_2 -> sub_3
                  addi         s5, zero, 6 #init loop 0 counter
                  xor          a6, s5, s5
                  xor          s4, s2, t2
                  addi         s9, zero, 6 #init loop 0 limit
                  srl          s3, s9, t4
                  srai         a5, t0, 16
                  lui          s3, 77994
sub_2_3_0_t:      auipc        s1, 1001360
                  nop
                  sll          t1, t4, t1
                  auipc        a6, 191968
                  srli         s1, a3, 14
                  slli         s2, a7, 13
                  addi         s5, s5, -4 #update loop 0 counter
                  ori          zero, t0, 961
                  xori         sp, s5, -745
                  lui          a1, 170243
                  sra          s11, a4, s1
                  slli         a4, s3, 10
                  sltiu        t4, t2, -2041
                  bgeu         s5, s9, sub_2_3_0_t #branch for loop 0
                  sltiu        t5, t5, -1407
                  addi         s11, zero, 7 #init loop 0 counter
                  addi         t4, zero, 13 #init loop 0 limit
                  andi         a6, a6, 1967
sub_2_4_0_t:      sub          a6, s0, s7
                  addi         s11, s11, 7 #update loop 0 counter
                  blt          s11, t4, sub_2_4_0_t #branch for loop 0
                  srai         tp, a6, 26
                  addi         t3, zero, -1 #init loop 0 counter
                  lui          a7, 935763
                  or           s10, s2, s7
                  slt          s9, t3, a1
                  srl          s4, s8, t1
                  ori          sp, a5, -1628
                  slti         a7, t0, -1653
                  or           s4, s3, s6
                  srl          s9, s5, t0
                  addi         t4, zero, 3 #init loop 0 limit
                  sll          s9, s0, a6
                  slli         s2, t1, 7
sub_2_0_0_t:      auipc        sp, 464114
                  addi         t3, t3, 5 #update loop 0 counter
                  srai         s11, s3, 0
                  add          s10, t0, s3
                  nop
                  bltu         t3, t4, sub_2_0_0_t #branch for loop 0
                  sll          a4, s10, a0
                  addi         t5, zero, 3 #init loop 0 counter
                  sll          a6, s0, a2
                  srl          s0, gp, s9
                  srl          ra, a5, s6
                  srli         s1, s10, 9
                  sra          a4, a7, a3
                  xori         s10, sp, -1057
                  sll          s7, s6, s1
                  slt          s7, s6, t6
                  sltu         s0, s1, t1
                  addi         t0, zero, 3 #init loop 0 limit
sub_2_1_0_t:      and          sp, a4, s3
                  and          s4, t0, a2
                  nop
                  slt          a0, s9, s2
                  addi         t5, t5, -2 #update loop 0 counter
                  sra          a7, s10, t0
                  and          tp, ra, s8
                  slli         s7, s5, 27
                  sll          s10, s4, t3
                  bgeu         t5, t0, sub_2_1_0_t #branch for loop 0
                  srai         a4, t6, 31
                  addi         t3, zero, -10 #init loop 0 counter
                  nop
                  ori          s5, s0, 1119
                  addi         a5, s8, -1856
                  sub          s9, s9, s3
                  sub          s6, a6, s9
                  srai         s7, s1, 15
                  xor          tp, t0, t5
                  sltu         t5, a2, s4
                  addi         t4, zero, -14 #init loop 0 limit
                  and          ra, a0, a5
                  srl          a3, tp, s2
                  auipc        sp, 799498
                  srl          s5, s3, a7
sub_2_2_0_t:      xori         a1, tp, 1590
                  addi         t3, t3, -1 #update loop 0 counter
                  sltu         a5, a4, s6
                  sltu         t0, s1, t3
                  sltu         s4, t0, t0
                  add          a6, a0, s6
                  lui          ra, 907795
                  addi         a0, a3, -1130
                  add          s4, t3, a7
                  srli         s4, t2, 21
                  bge          t3, t4, sub_2_2_0_t #branch for loop 0
                  and          s1, s6, s1
                  slti         ra, s8, 1901
                  srai         t4, s4, 19
                  or           s6, s5, a6
                  andi         tp, a6, 498
                  sub          a0, s8, a6
                  xor          s2, s4, s2
                  and          t3, t3, s5
                  slli         s11, s3, 0
                  slti         s9, sp, 1656
                  bgeu         sp, a0, 18f
                  sub          a2, s9, t2
                  sltiu        s2, a1, -1710
                  slti         a6, s7, 793
                  sltu         s2, a4, a1
                  add          t4, t6, s2
                  bge          s4, sp, 29f
                  bgeu         s10, t2, 25f
                  xor          s10, a0, t5
18:               xor          sp, tp, sp
                  bne          s11, s2, 24f
                  lui          t0, 289368
                  nop
                  blt          s6, t1, 23f
23:               srli         s9, s0, 10
24:               sltiu        s11, a4, 1755
25:               sra          a6, t6, a7
                  srai         a2, t2, 18
                  slt          t5, s3, s11
                  blt          a0, a3, 40f
29:               bgeu         a4, s2, 46f
                  or           s2, s8, s8
                  andi         s3, s8, -1212
                  sltiu        a4, s2, 244
                  auipc        a4, 157651
                  slt          s6, s11, t4
                  nop
                  bltu         s7, a3, 48f
                  or           s2, s6, a0
                  srai         a5, s9, 22
                  slt          s1, s1, s11
40:               xor          s4, t6, s4
                  xor          a6, a1, t6
                  add          a0, a6, ra
                  lui          a7, 1012918
                  sll          sp, s3, s0
                  srl          a3, t1, t2
46:               addi         s9, s9, 561
                  bgeu         s0, sp, 52f
48:               blt          a6, gp, 67f
                  srli         a2, gp, 29
                  and          a7, s11, a1
                  sll          s5, s7, s10
52:               srli         gp, tp, 15
                  add          a0, s0, s8
                  sra          s1, t2, s7
                  sra          s3, t5, tp
                  or           t0, a4, a3
                  slti         a7, s8, -1886
                  nop
                  addi         s2, a0, -1438
                  srl          s10, a4, gp
                  add          t5, a0, t6
                  addi         a3, sp, 1078
                  srli         a6, s11, 3
                  sltiu        s3, a0, -1795
                  or           s9, t4, a3
                  addi         t5, t3, -61
67:               add          a6, a2, a4
                  bne          s6, t3, 76f
                  bgeu         a1, t0, 75f
                  srl          sp, s1, a6
                  bgeu         a4, a1, 79f
                  sll          t3, s9, t5
                  slti         gp, sp, -924
                  blt          t1, sp, 87f
75:               srl          a3, a0, a1
76:               and          a7, a5, ra
                  ori          a4, ra, 378
                  nop
79:               bltu         t1, t4, 93f
                  ori          t1, a4, 1713
                  srl          s4, a4, tp
                  sltiu        t3, a4, -1205
                  andi         ra, ra, 614
                  bge          tp, t0, 85f
85:               add          s7, a5, s4
                  and          s4, s8, tp
87:               xor          t0, a3, s4
                  or           a0, a6, t3
                  sub          s4, s8, s11
                  bne          a4, s6, 104f
                  sltu         s6, s2, t0
                  slt          ra, a5, s1
93:               xori         a4, s10, -563
                  nop
                  bge          s10, a6, 105f
                  or           a2, s11, s2
                  addi         a4, s8, 1373
                  slt          sp, t1, a4
                  bge          t3, s4, 110f
                  bge          a4, s8, 105f
                  bgeu         t1, s1, 114f
                  slli         s2, t1, 29
                  sltu         gp, t6, t3
104:              auipc        s10, 371859
105:              bgeu         a1, a2, 115f
                  or           sp, a5, zero
                  blt          s4, s2, 116f
                  sra          a5, a7, gp
                  slt          tp, a1, a6
110:              sra          s10, s3, t1
                  slti         a3, a5, -1586
                  ori          t1, a3, 771
                  bgeu         ra, s8, 126f
114:              bne          t1, tp, 116f
115:              auipc        s9, 297015
116:              ori          zero, t1, -1645
                  xori         zero, zero, 1188
                  srl          s6, t3, a5
                  bne          s9, gp, 123f
                  sltu         a5, zero, a4
                  slt          tp, t3, s6
                  xori         s11, s5, 1759
123:              srai         a2, a6, 18
                  addi         s3, a6, 1433
                  blt          a5, t4, 139f
126:              blt          a3, a0, 140f
                  slti         a2, t6, 1735
                  or           a1, t5, s4
                  bgeu         t3, ra, 146f
                  bltu         s9, a3, 132f
                  sra          a1, s2, t2
132:              sll          a3, s5, s11
                  bgeu         a4, gp, 135f
                  auipc        s5, 253822
135:              lui          s7, 949746
                  lui          a0, 870542
                  slli         t5, a7, 26
                  add          t1, s3, t4
139:              sub          s2, s4, s0
140:              addi         s9, s11, 1695
                  sra          s6, t4, a5
                  sltu         tp, s11, tp
                  bge          a6, t1, 151f
                  sra          s3, t5, gp
                  bgeu         t5, t5, 159f
146:              and          s1, a5, s2
                  bge          ra, s2, 156f
                  sll          a0, s9, sp
                  sub          a1, zero, s4
                  sra          a2, s8, s2
151:              xor          s9, a6, s6
                  beq          a2, a3, 166f
                  bne          s1, t4, 167f
                  auipc        t0, 478244
                  bgeu         s0, t2, 157f
156:              andi         s2, s10, 1976
157:              ori          t5, s3, 1047
                  sltu         s11, t2, t6
159:              xori         t5, sp, -490
                  srl          t5, s5, s5
                  slti         s5, t4, 47
                  addi         t0, a1, 987
                  ori          a7, t1, 1421
                  slli         t1, gp, 9
                  bltu         t5, a6, 179f
166:              xori         t1, s1, 1795
167:              blt          s11, a3, 172f
                  sll          a0, zero, s6
                  slli         t3, gp, 5
                  sub          s9, s9, s2
                  sltu         a1, tp, a6
172:              sub          t4, sp, s3
                  beq          t0, gp, 186f
                  srli         s7, s8, 15
                  sltu         s7, gp, t0
                  bne          s8, sp, 187f
                  beq          a1, a0, 187f
                  ori          s1, s3, -71
179:              lui          a2, 241983
                  lui          a2, 154526
                  nop
                  srli         s9, s10, 18
                  sub          tp, zero, s1
                  bltu         a7, zero, 190f
                  srli         s3, s7, 19
186:              or           zero, s0, a4
187:              auipc        s7, 201959
                  nop
                  slt          s5, s10, t1
190:              slli         a0, a3, 24
                  bge          a0, s4, 204f
                  srai         s1, s1, 7
                  sltu         a4, t4, s10
                  add          a7, s10, s4
                  slli         a3, s8, 30
                  xori         t5, s7, -183
                  slti         s5, s10, -1824
                  sltu         s11, a2, s3
                  nop
                  andi         s9, t5, -443
                  bgeu         a3, t6, 218f
                  sll          s2, s6, s2
                  beq          s2, t1, 212f
204:              srai         s11, a5, 0
                  sra          s4, t4, ra
                  bltu         t2, a4, 220f
                  auipc        a3, 587663
                  sub          s7, t5, a1
                  bge          ra, s10, 214f
                  nop
                  sra          s4, t4, a7
212:              sltiu        a6, a0, 98
                  nop
214:              sub          s11, s2, s7
                  xor          a0, t3, t5
                  slt          s1, s6, a7
                  ori          a0, gp, 773
218:              slt          a7, a0, a2
                  blt          a7, a1, 231f
220:              srai         a4, s0, 16
                  lui          zero, 510433
                  addi         s1, s2, 1723
                  bltu         a1, ra, 242f
                  or           a4, a7, t1
                  slt          sp, s10, s6
                  srli         ra, s5, 29
                  addi         s9, s11, 1002
                  add          s7, s7, s7
                  andi         t5, a6, -1917
                  ori          a5, a0, -91
231:              andi         s11, t5, -1374
                  sll          s2, s11, a2
                  slt          s1, s9, a0
                  bne          a7, t6, 244f
                  bgeu         t5, t4, 248f
                  slt          s11, s11, gp
                  sltiu        s9, s5, -1255
                  srai         sp, gp, 19
                  lui          a0, 976223
                  beq          s5, s2, 245f
                  auipc        zero, 424798
242:              lui          tp, 308981
                  sll          a6, t3, a7
244:              sltu         a3, a3, s11
245:              xori         a2, s7, 1003
                  slli         s11, s7, 31
                  addi         a2, t1, -489
248:              srli         s0, a3, 18
                  xor          a5, a0, s8
                  srai         a7, zero, 11
                  bgeu         s1, a7, 255f
                  andi         s2, s8, -1249
                  bne          a6, a4, 265f
                  bgeu         s10, t2, 262f
255:              bne          t6, t3, 256f
256:              sltiu        gp, a6, 518
                  slt          tp, sp, a4
                  srli         s5, t4, 11
                  auipc        ra, 1025959
                  bgeu         t5, a7, 261f
261:              xori         tp, a0, 720
262:              blt          ra, sp, 268f
                  srli         s10, s3, 20
                  slt          a0, s11, ra
265:              ori          s9, t0, 383
                  xori         s7, t1, -1759
                  andi         s6, a0, 1608
268:              and          gp, s2, t2
                  add          t4, s4, a5
                  xori         t1, s10, -401
                  srl          t1, s0, gp
                  sra          s9, a7, a6
                  srl          s9, t2, t5
                  lui          a1, 69411
                  lw           a5, 4(t6)
                  addi         t6, t6, 16
                  srai         zero, t1, 9
                  srl          a4, s2, s11
                  srli         a3, t0, 14
                  xor          a3, s4, t2
397:              addi x23, x15, 0
397:              jalr x23, x23, 0
sub_3:            ori          s3, a4, 151
                  nop
                  bne          tp, t5, sub_3_stack_p
                  sub          s10, s5, s1
                  sltiu        s1, a5, -183
sub_3_stack_p:    addi         t6, t6, -24
                  slli         s6, a4, 23
                  srai         s11, gp, 10
                  add          s1, s11, t5
                  sw           a5, 4(t6)
                  srl          t3, a7, t6
                  sltu         t4, a0, s6
                  sub          tp, a5, s4
                  sra          s10, ra, s2
                  auipc        a3, 71999
                  sltu         t0, a7, s10
sub_3_j5:         jal          a5, sub_4 #jump sub_3 -> sub_4
                  addi         t1, zero, -3 #init loop 0 counter
                  andi         s4, s11, -527
                  andi         t3, a1, -417
                  sra          a7, tp, t6
                  and          s6, gp, s0
                  xor          s3, t0, s8
                  xor          a2, ra, a5
                  xori         a3, s1, -1367
                  addi         s2, a7, 188
                  addi         s1, zero, 15 #init loop 0 limit
                  add          s7, s6, t5
sub_3_7_0_t:      lui          s5, 673476
                  sltiu        t0, s2, -472
                  ori          t4, s1, 933
                  addi         t1, t1, 9 #update loop 0 counter
                  sltiu        t4, a5, 1914
                  sltu         gp, t0, s7
                  sra          sp, s1, t4
                  xori         s3, s11, -1586
                  beq          t1, s1, sub_3_7_0_t #branch for loop 0
                  ori          s9, s1, -1327
                  addi         s3, zero, -7 #init loop 1 counter
                  addi         s9, zero, -11 #init loop 1 limit
                  andi         t0, t1, 672
sub_3_6_1_t:      sltiu        s11, t6, 431
                  addi         s3, s3, -10 #update loop 1 counter
                  addi         ra, a4, -582
                  xori         ra, t5, 1815
                  lui          a2, 817238
                  addi         s10, zero, -2 #init loop 0 counter
                  sub          a2, s7, s9
                  ori          ra, s7, -541
                  addi         s6, zero, 918
                  slli         s11, t6, 25
                  addi         a1, zero, 6 #init loop 0 limit
                  or           s1, s3, a3
sub_3_6_0_t:      and          s7, t3, t0
                  sub          t0, a3, s0
                  sra          a4, s11, a1
                  srai         ra, s10, 14
                  slti         zero, s4, -1798
                  addi         s10, s10, 2 #update loop 0 counter
                  andi         s6, a0, -631
                  andi         s7, s4, 1382
                  sltiu        t4, sp, -888
                  or           t4, t6, s5
                  sra          ra, s1, t5
                  bne          s10, a1, sub_3_6_0_t #branch for loop 0
                  add          s11, t5, tp
                  bge          s3, s9, sub_3_6_1_t #branch for loop 1
                  auipc        a4, 540791
                  addi         tp, zero, 5 #init loop 1 counter
                  nop
                  addi         gp, zero, -3 #init loop 1 limit
sub_3_4_1_t:      or           sp, t5, s4
                  addi         tp, tp, -8 #update loop 1 counter
                  or           s1, a3, a0
                  addi         a2, zero, -6 #init loop 0 counter
                  addi         s10, zero, -19 #init loop 0 limit
                  sra          s3, a2, tp
sub_3_4_0_t:      andi         s5, t5, 311
                  addi         a2, a2, -8 #update loop 0 counter
                  bge          a2, s10, sub_3_4_0_t #branch for loop 0
                  sub          t1, t3, t6
                  beq          tp, gp, sub_3_4_1_t #branch for loop 1
                  srl          a3, sp, s0
                  addi         a0, zero, -6 #init loop 1 counter
                  sltiu        t0, t3, 1484
                  add          a3, t3, s6
                  sltiu        s0, s4, -922
                  addi         s3, zero, -1 #init loop 1 limit
                  andi         a3, a7, -541
                  and          s6, s6, a4
sub_3_5_1_t:      xori         s9, s9, 1397
                  addi         a0, a0, 3 #update loop 1 counter
                  slti         zero, a5, 1844
                  sltiu        t0, sp, -1956
                  lui          t0, 157830
                  slt          s1, s5, a4
                  addi         t1, zero, 3 #init loop 0 counter
                  sll          a2, s3, t4
                  sra          a6, s1, sp
                  addi         s4, zero, 14 #init loop 0 limit
sub_3_5_0_t:      slti         zero, s7, 432
                  andi         s0, t3, 1953
                  and          t3, tp, zero
                  addi         t1, t1, 10 #update loop 0 counter
                  bltu         t1, s4, sub_3_5_0_t #branch for loop 0
                  auipc        s6, 875336
                  sltu         s0, ra, t4
                  nop
                  or           gp, t0, a2
                  srli         s10, t5, 16
                  blt          a0, s3, sub_3_5_1_t #branch for loop 1
                  ori          a1, s11, -970
                  addi         t0, zero, 10 #init loop 0 counter
                  add          s2, s4, t6
                  addi         a5, zero, -8 #init loop 0 limit
sub_3_8_0_t:      xor          s10, a3, s5
                  addi         t0, t0, -2 #update loop 0 counter
                  bge          t0, a5, sub_3_8_0_t #branch for loop 0
                  slti         t4, sp, 1592
                  addi         s6, zero, -2 #init loop 1 counter
                  addi         a6, zero, 15 #init loop 1 limit
sub_3_1_1_t:      ori          gp, a4, -1426
                  addi         s6, s6, 5 #update loop 1 counter
                  sltu         gp, t3, t4
                  addi         a5, zero, 8 #init loop 0 counter
                  addi         s7, zero, 10 #init loop 0 limit
sub_3_1_0_t:      slt          s10, s0, s1
                  addi         a5, a5, 1 #update loop 0 counter
                  sltiu        a7, s7, -503
                  bltu         a5, s7, sub_3_1_0_t #branch for loop 0
                  blt          s6, a6, sub_3_1_1_t #branch for loop 1
                  srl          s3, s10, zero
                  addi         t0, zero, 0 #init loop 1 counter
                  sll          a2, s5, tp
                  andi         t4, s8, -1216
                  andi         sp, a4, -1408
                  nop
                  addi         t3, zero, -12 #init loop 1 limit
sub_3_9_1_t:      slt          s11, s4, t3
                  srai         ra, a1, 5
                  ori          s6, t5, -572
                  addi         t0, t0, -3 #update loop 1 counter
                  addi         s2, zero, 8 #init loop 0 counter
                  add          t1, gp, s6
                  lui          zero, 692007
                  addi         a3, zero, 4 #init loop 0 limit
                  xor          zero, s2, a4
                  srai         sp, s11, 12
                  andi         s11, t3, 3
sub_3_9_0_t:      add          s6, s0, gp
                  ori          s3, t4, -833
                  addi         s2, s2, -2 #update loop 0 counter
                  slli         s3, s11, 2
                  slli         t4, a4, 25
                  srli         zero, s8, 25
                  lui          s9, 449159
                  bgeu         s2, a3, sub_3_9_0_t #branch for loop 0
                  xor          tp, sp, s9
                  bne          t0, t3, sub_3_9_1_t #branch for loop 1
                  slti         ra, s5, -1129
                  addi         a7, zero, 7 #init loop 1 counter
                  add          a6, s4, s6
                  addi         s1, t6, 1570
                  sltu         t1, s0, a6
                  xor          s6, a0, s5
                  addi         a1, zero, 7 #init loop 1 limit
sub_3_3_1_t:      addi         a6, ra, -664
                  or           a5, ra, s2
                  addi         a7, a7, -4 #update loop 1 counter
                  auipc        s5, 591149
                  add          t1, t3, s9
                  addi         t3, tp, 1674
                  srli         s4, a0, 1
                  xor          t1, s3, s6
                  andi         sp, s0, -328
                  srl          s3, s2, s3
                  xori         t3, t2, 250
                  and          s11, ra, a3
                  addi         t4, zero, -3 #init loop 0 counter
                  ori          t3, a5, 281
                  addi         s0, zero, 13 #init loop 0 limit
                  andi         a5, zero, -1623
                  addi         s5, s6, -1881
                  and          tp, gp, a7
                  sltu         s7, s11, s3
sub_3_3_0_t:      sltu         ra, a4, a0
                  addi         t4, t4, 1 #update loop 0 counter
                  beq          t4, s0, sub_3_3_0_t #branch for loop 0
                  ori          a5, s4, 1030
                  xor          t3, t3, s3
                  andi         zero, s4, 1085
                  sub          s4, t2, s6
                  andi         s7, s1, -251
                  bgeu         a7, a1, sub_3_3_1_t #branch for loop 1
                  srai         s9, s8, 1
                  sub          t1, s9, a1
                  sra          s7, s5, tp
                  sll          t5, s10, a4
                  xor          a2, s4, t2
                  xori         a2, s3, 1702
                  slti         s1, a3, -36
                  xor          a1, a3, t4
                  sltu         a5, a1, a7
                  srai         s3, a5, 11
                  sra          a6, s0, t5
                  and          tp, gp, a5
                  xor          s9, s9, a7
                  ori          t0, s4, -1860
                  auipc        zero, 1002129
                  andi         gp, a5, 1185
                  add          s4, t2, s2
                  beq          s10, a7, 30f
                  sltiu        s9, s9, 564
                  bne          a7, tp, 21f
                  auipc        t1, 220840
                  slti         a1, t1, -945
21:               ori          a1, a4, -1297
                  bgeu         s11, s2, 36f
                  and          s5, zero, s1
                  slli         tp, sp, 12
                  sub          t0, a1, s1
                  or           s7, t0, a5
                  srai         s7, a6, 14
                  slli         s7, tp, 26
                  sub          s9, ra, a5
30:               addi         s0, t6, 1206
                  sub          s0, a7, t1
                  sltu         zero, a6, a3
                  andi         s11, s9, 1159
                  andi         s11, t1, -1926
                  beq          ra, tp, 52f
36:               srl          t3, s4, s4
                  auipc        tp, 1004419
                  beq          s8, s11, 47f
                  slti         a0, t5, 1759
                  srli         a1, s0, 28
                  slli         s4, sp, 7
                  sra          a4, t0, s4
                  bgeu         s8, a6, 50f
                  xor          t4, t1, s10
                  sltu         s9, t0, t4
                  add          s0, s10, t1
47:               blt          s1, a5, 58f
                  sll          s10, ra, tp
                  srl          a3, a5, t0
50:               srli         a1, s1, 22
                  sltu         s4, s0, s11
52:               nop
                  bgeu         s5, s4, 64f
                  or           s5, ra, a0
                  sltu         s5, ra, s11
                  sltiu        s10, a4, 464
                  srai         a3, t3, 12
58:               beq          tp, s1, 66f
                  slt          s2, t0, t3
                  ori          t1, s1, -132
                  ori          t5, a3, -617
                  add          s1, sp, s2
                  nop
64:               or           gp, a4, t1
                  bne          a1, gp, 81f
66:               sra          a4, zero, gp
                  bgeu         s11, ra, 82f
                  auipc        s9, 800356
                  sltu         a6, t4, sp
                  slti         s11, t4, -2024
                  and          s0, s11, a5
                  and          t0, sp, a5
                  bge          zero, a3, 83f
                  andi         a6, a5, 1752
                  auipc        t0, 757972
                  bne          gp, s8, 90f
                  sltu         t0, tp, s1
                  slti         zero, zero, -100
                  and          s6, tp, a3
                  add          s1, a4, s11
81:               or           a2, a1, s11
82:               slt          a7, a2, s3
83:               slt          s7, s5, a7
                  bge          zero, sp, 94f
                  sltu         a7, t1, a1
                  andi         a3, s11, -821
                  beq          a7, t5, 90f
                  bltu         s10, s7, 104f
                  addi         s5, zero, 2 #init loop 0 counter
                  addi         a2, zero, 2 #init loop 0 limit
                  xori         s1, ra, -545
sub_3_0_0_t:      sltiu        s4, s3, 316
                  addi         s5, s5, -1 #update loop 0 counter
                  bgeu         s5, a2, sub_3_0_0_t #branch for loop 0
                  sll          s7, a3, s10
                  auipc        s10, 169635
90:               xori         s7, s4, -1198
                  slli         a5, s0, 22
                  sra          s1, t6, s9
                  or           a2, s5, s11
94:               xor          zero, a0, a3
                  slti         t1, s8, -457
                  bgeu         tp, s1, 111f
                  srai         s9, s2, 27
                  auipc        s1, 71655
                  slti         a0, a3, 1304
                  sltiu        sp, s0, 493
                  slt          a4, s8, s5
                  lui          s10, 846035
                  sub          a4, t4, a0
104:              bne          zero, a6, 119f
                  nop
                  or           t3, s9, a6
                  bne          t6, s2, 121f
                  or           t1, a0, t3
                  slt          t1, s6, s9
                  slt          sp, tp, t4
111:              addi         zero, a3, -611
                  xori         a6, s3, -518
                  beq          t3, s2, 119f
                  auipc        s0, 82596
                  bgeu         s5, t4, 116f
116:              bgeu         s10, t4, 118f
                  xor          s2, s8, s4
118:              lui          t4, 536925
119:              sll          s0, ra, t3
                  blt          a3, s9, 131f
121:              ori          s3, s5, 728
                  sltu         t0, s6, t0
                  lui          a4, 75130
                  slli         s3, s8, 30
                  andi         s3, ra, -431
                  or           gp, t0, t4
                  bge          s7, a1, 136f
                  beq          s7, a6, 143f
                  auipc        ra, 883678
                  slti         a4, s4, -1579
131:              ori          zero, a3, 2017
                  beq          zero, t1, 133f
133:              lui          t5, 434686
                  xor          t1, t4, s9
                  lui          a3, 78068
136:              andi         a5, t6, 1842
                  addi         s7, a0, 1373
                  nop
                  addi         zero, a3, 408
                  srli         t5, a6, 23
                  or           t5, a0, t0
                  auipc        a1, 857397
143:              or           a3, sp, a0
                  xori         a1, t6, -1625
                  blt          t1, s7, 154f
                  beq          a6, s9, 148f
                  xor          s1, t3, a5
148:              sub          sp, gp, a5
                  auipc        s2, 504272
                  andi         s2, sp, -1390
                  addi         s9, s8, -205
                  blt          a0, s1, 159f
                  bgeu         gp, gp, 173f
154:              sll          t4, t5, a6
                  bge          t6, s8, 165f
                  or           gp, a0, s3
                  auipc        zero, 315678
                  bge          s11, gp, 173f
159:              sll          ra, s0, a4
                  slli         t3, gp, 5
                  bge          sp, s5, 176f
                  bge          sp, s9, 177f
                  blt          a2, s5, 177f
                  add          a7, t3, sp
165:              sub          a6, a7, s3
                  sll          zero, s7, s10
                  bge          a7, t4, 168f
168:              nop
                  srai         s4, s10, 16
                  ori          a6, a3, -1180
                  add          s4, zero, t6
                  sltiu        s10, s10, -678
173:              and          a1, s11, t1
                  sra          s9, ra, s6
                  bltu         s9, s1, 182f
176:              ori          s11, s0, 1887
177:              or           s7, a7, s2
                  slli         gp, s4, 28
                  slti         a7, t6, -1081
                  addi         s5, t0, -249
                  sltu         a4, a3, ra
182:              bne          s7, zero, 196f
                  srl          s0, gp, s4
                  lui          s6, 188472
                  beq          tp, s5, 199f
                  auipc        a7, 558728
                  and          s0, t4, s7
                  nop
                  xori         t5, a2, -1112
                  auipc        a3, 265601
                  nop
                  xor          a4, gp, t6
                  slli         t5, s11, 29
                  blt          a3, t5, 203f
                  bgeu         sp, a2, 204f
196:              auipc        s7, 575474
                  lui          a3, 889112
                  bne          t4, t0, 209f
199:              addi         s10, a3, -1518
                  lui          t4, 705659
                  srli         a5, s0, 24
                  ori          tp, s3, 22
203:              addi         s9, a2, 300
204:              bgeu         t3, tp, 205f
205:              slt          zero, s1, t3
                  add          s6, s5, zero
                  or           a7, a5, a3
                  or           a5, a4, t0
209:              srai         s3, ra, 8
                  or           s7, a0, s11
                  sra          sp, s4, t3
                  add          t0, a3, s3
                  auipc        a5, 230674
                  ori          t1, s9, -17
                  lui          a0, 568190
                  bge          s4, a7, 231f
                  srli         s1, s8, 28
                  sra          s9, a6, a0
                  bgeu         a0, s8, 221f
                  srl          s4, s9, zero
221:              lui          a1, 875851
                  sltiu        sp, s11, 1546
                  bne          a2, t4, 229f
                  srli         s11, a2, 0
                  beq          s7, t3, 242f
                  sra          ra, a0, s2
                  andi         s4, a3, 1387
                  ori          a5, s5, 955
229:              lui          s4, 1043177
                  sltu         a0, tp, t1
231:              sub          s3, a3, s9
                  auipc        s0, 33452
                  bgeu         zero, s7, 243f
                  beq          s11, s0, 237f
                  nop
                  ori          t3, a5, 1713
237:              and          zero, tp, t1
                  sub          t3, t5, zero
                  bge          s9, t5, 247f
                  beq          s7, t5, 243f
                  xor          a1, s0, a4
242:              sll          t5, a5, t5
243:              srli         t4, gp, 12
                  addi         t0, zero, -5 #init loop 1 counter
                  addi         a1, zero, -15 #init loop 1 limit
sub_3_2_1_t:      xor          t3, t0, a4
                  and          a4, zero, t1
                  addi         t0, t0, -8 #update loop 1 counter
                  addi         t5, zero, 9 #init loop 0 counter
                  addi         ra, zero, 13 #init loop 0 limit
sub_3_2_0_t:      xori         s3, a2, -1051
                  srai         tp, a6, 18
                  addi         t5, t5, 2 #update loop 0 counter
                  bltu         t5, ra, sub_3_2_0_t #branch for loop 0
                  and          a0, t0, a0
                  bge          t0, a1, sub_3_2_1_t #branch for loop 1
                  slt          s2, tp, gp
                  blt          t0, zero, 264f
                  bne          a7, s3, 256f
                  and          t5, a5, t1
247:              bge          s9, s4, 256f
                  bgeu         gp, s0, 255f
                  sltu         tp, a1, s0
                  add          t4, ra, s10
                  xor          s2, t2, s4
                  bne          s9, s3, 254f
                  add          s10, s9, a5
254:              sltu         sp, t6, a5
255:              bltu         a0, s4, 271f
256:              bge          a5, t0, 270f
                  blt          t4, t2, 273f
                  slli         gp, a1, 6
                  sra          a3, tp, a0
                  sltu         a6, zero, t3
                  sll          t3, s9, s5
                  xori         s9, s10, -227
                  slt          ra, t3, s5
264:              bltu         s7, s3, 275f
                  auipc        a7, 1024591
                  bltu         a7, zero, 269f
                  sltiu        t0, s1, 694
                  xori         t0, t4, -709
269:              and          tp, a5, a0
270:              ori          gp, t3, 1088
271:              slli         a1, s6, 6
                  add          s9, s8, gp
273:              sll          a0, a0, s5
                  xor          s5, s10, a7
275:              slli         s11, s5, 23
                  srl          s10, t0, tp
                  nop
                  sll          t1, zero, a7
                  bne          t5, tp, 293f
                  sltiu        t5, s8, -1829
                  add          a1, t6, a3
                  sub          a2, a2, s4
                  bge          a6, s11, 299f
                  slt          t3, a6, s9
                  xori         t5, t1, 1323
                  bge          t3, t1, 287f
287:              ori          t1, t5, -989
                  slti         a1, a7, -1195
                  slli         s11, a7, 14
                  auipc        tp, 342714
                  srai         s3, t2, 16
                  ori          s0, ra, -953
293:              andi         zero, a4, 229
                  xori         s2, a6, -1351
                  slti         a5, s4, -1187
                  and          t5, t0, t6
                  add          t3, tp, a1
                  slti         a5, s11, -763
299:              sll          t5, s9, tp
                  auipc        ra, 533636
                  xori         s5, s2, 1847
                  addi         s10, s9, 844
                  lui          ra, 161140
                  sll          s9, s11, s9
                  andi         a3, s11, -471
                  sra          a3, a0, t3
                  bge          s8, s11, 324f
                  bge          s9, s1, 315f
                  ori          a3, t3, 1411
                  bge          t6, ra, 311f
311:              srl          s4, s10, s4
                  bgeu         a3, s8, 315f
                  ori          tp, tp, 1747
                  slt          a7, s6, a3
315:              srli         a6, s3, 12
                  addi         t3, t3, -1584
                  slti         ra, a2, -1744
                  bne          gp, s5, 327f
                  and          t5, s11, t6
                  xori         a2, s2, -888
                  slli         ra, a4, 28
                  xor          s6, s0, a3
                  ori          t4, s5, -568
324:              sub          s3, t2, a3
                  bltu         t6, ra, 335f
                  lui          a3, 836728
327:              bne          a1, s1, 338f
                  bne          s5, ra, 339f
                  sltu         t0, t5, s7
                  nop
                  auipc        s0, 507344
                  nop
                  sra          a7, s4, t5
                  slt          a1, s3, a2
335:              sltiu        s3, t4, 53
                  andi         s6, s9, -457
                  sltu         a5, a7, a1
338:              xor          s0, s0, a6
339:              sltiu        t1, a5, -906
                  beq          t0, s0, 346f
                  sltiu        ra, t0, -845
                  addi         s11, zero, -883
                  auipc        s11, 389269
                  slti         s4, s5, 839
                  xor          ra, s11, t4
346:              bltu         a1, s9, 361f
                  auipc        s6, 755905
                  addi         t4, s7, 151
                  slt          t3, s7, gp
                  slli         zero, s4, 13
                  andi         s3, s5, -1033
                  sltu         sp, a1, gp
                  add          a6, gp, s9
                  srli         tp, a1, 16
                  bgeu         ra, s3, 362f
                  srl          a4, s8, t5
                  srai         a1, s9, 17
                  ori          s4, sp, 316
                  xori         s1, t0, 1401
                  sub          s3, a7, a6
361:              sll          gp, s8, s6
362:              auipc        t0, 991579
                  bltu         t0, s5, 383f
                  blt          s9, t6, 379f
                  sra          t5, s2, s3
                  sra          t5, t5, s11
                  slti         a5, s9, 273
                  sll          sp, zero, t6
                  srai         s7, t4, 15
                  bltu         t1, s0, 384f
                  auipc        a5, 859664
                  sltu         s3, s10, a7
                  bne          a3, a4, 382f
                  sltu         t3, s0, s6
                  add          s0, s9, s9
                  or           t5, s3, t4
                  slt          ra, s2, a5
                  andi         ra, s6, 978
379:              and          s1, t0, t3
                  lui          a7, 264982
                  sra          gp, a7, a5
382:              addi         ra, s8, -182
383:              or           s9, s3, t6
384:              srl          t3, a5, zero
                  and          a5, a2, ra
                  srli         a6, a7, 2
                  sltiu        s6, t3, 387
                  slli         tp, zero, 14
                  sub          a7, a3, a1
                  ori          s4, s1, 238
                  ori          a4, ra, 576
                  beq          sp, s0, 407f
                  slti         zero, s0, -1150
                  blt          a5, s7, 403f
                  add          a4, s4, t4
                  slt          s0, a2, t0
                  add          tp, s4, a2
                  blt          a2, s7, 400f
                  bltu         t3, a4, 409f
400:              sll          s10, a1, t3
                  lui          s4, 788712
                  lui          s6, 511674
403:              blt          a3, a2, 419f
                  slli         a7, s0, 31
                  and          s6, ra, tp
                  sll          a6, a5, a5
407:              slli         zero, s10, 31
                  bge          a0, zero, 419f
409:              lui          gp, 571631
                  addi         a6, s11, 1904
                  slli         s9, t3, 18
                  slt          s4, a3, s4
                  slti         s10, t1, 1173
                  srai         s10, a5, 8
                  bne          t5, a4, 423f
                  slli         a4, s2, 27
                  srai         a2, a6, 22
                  sltiu        s11, s6, -1165
419:              beq          zero, s9, 421f
                  beq          s8, s10, 434f
421:              beq          t5, gp, 436f
                  andi         t3, gp, -1033
423:              srli         s7, zero, 16
                  slli         s11, a1, 1
                  slt          a1, s9, s2
                  and          a0, t6, a7
                  sll          a6, gp, s5
                  sll          gp, t3, gp
                  sub          s0, sp, sp
                  beq          sp, a3, 444f
                  ori          a1, t0, 1061
                  beq          t5, a0, 452f
                  sub          s9, a6, s1
434:              sltiu        s3, t0, 1145
                  bge          a2, s1, 436f
436:              bne          t1, s9, 447f
                  lui          s9, 425069
                  slt          s7, gp, t3
                  srai         s5, s7, 0
                  or           s11, s5, a6
                  bgeu         tp, s5, 444f
                  slt          a4, a0, tp
                  sltiu        s0, a6, 1988
444:              nop
                  srl          t3, a6, t0
                  srl          s4, tp, s3
447:              sub          t1, s7, a2
                  and          s4, s3, t5
                  addi         s6, s4, -958
                  lui          zero, 153769
                  addi         tp, a5, -414
452:              sra          ra, t2, tp
                  sra          a2, s4, t1
                  bge          s5, t3, 468f
                  sltu         a0, s6, a2
                  ori          s3, s2, -789
                  or           t3, s3, t6
                  sub          gp, a5, t5
                  srai         ra, a2, 2
                  xori         s5, t6, -1851
                  slti         s1, s2, 705
                  xori         t5, a2, -1610
                  srli         gp, gp, 0
                  lui          s3, 812672
                  auipc        a0, 207620
                  sll          a1, a0, s7
                  auipc        s0, 306411
468:              slti         t0, s10, 1438
                  bgeu         s5, tp, 486f
                  xori         a2, a5, 1254
                  and          a6, s4, a4
                  sltu         gp, s2, s3
                  slti         gp, t6, -313
                  slli         s9, t1, 12
                  nop
                  add          sp, sp, tp
                  slt          s2, t2, tp
                  bgeu         s3, s5, 479f
479:              sltiu        gp, s5, 423
                  auipc        s7, 870209
                  and          a2, t3, s10
                  sub          s11, a5, s3
                  add          a6, a1, s9
                  xor          a7, s11, s5
                  xori         s10, a7, 671
486:              lui          zero, 553050
                  sub          s5, sp, a1
                  and          a4, zero, t1
                  sltu         gp, a1, a2
                  xor          ra, a7, a1
                  andi         s3, s6, 1886
                  sll          sp, t4, a7
                  sra          t1, a1, a3
                  slti         a3, a6, 1979
                  bltu         a5, a0, 509f
                  ori          s11, s3, 593
                  addi         s6, t1, 1162
                  and          a2, t6, a2
                  bltu         a5, t1, 501f
                  sltu         t0, t4, s3
501:              or           t1, s9, s3
                  add          a0, a3, a6
                  xor          a0, zero, zero
                  xori         tp, s8, 418
                  sltu         a2, t5, t5
                  addi         s2, s7, 1880
                  ori          tp, t2, -1961
                  ori          a5, sp, 633
509:              or           a6, t0, a4
                  slti         t1, s0, -187
                  slti         t1, a2, -418
                  xor          s10, a1, s2
                  bgeu         a7, t1, 514f
514:              sll          s1, sp, s10
                  sub          s0, t2, s7
                  add          t4, s6, gp
                  add          ra, s7, a1
                  lw           a5, 4(t6)
                  addi         t6, t6, 24
                  or           a0, s10, t1
                  slti         s0, s7, -477
                  nop
                  srai         a3, t5, 14
                  xori         a7, t4, 1097
741:              addi x19, x15, 1
741:              jalr x19, x19, 0
sub_1:            xori         s10, a5, -643
                  addi         gp, t5, -325
                  sll          s1, t5, zero
                  blt          s1, s3, sub_1_stack_p
sub_1_stack_p:    addi         t6, t6, -48
                  and          tp, t0, t0
                  andi         a0, s0, 1553
                  srl          t4, s6, tp
                  sw           a5, 4(t6)
                  slt          s7, s11, a0
                  or           zero, s9, a3
                  auipc        s5, 839991
                  addi         a1, zero, 4 #init loop 0 counter
                  addi         s0, zero, 3 #init loop 0 limit
sub_1_4_0_t:      add          a6, s1, t1
                  srli         t5, s3, 23
                  addi         a1, a1, -1 #update loop 0 counter
                  auipc        t1, 327733
                  sltiu        a2, a5, 158
                  slti         zero, s10, 122
                  sub          s9, s6, s1
                  bgeu         a1, s0, sub_1_4_0_t #branch for loop 0
                  ori          a3, t1, -257
                  addi         s11, zero, 10 #init loop 1 counter
                  lui          s4, 947985
                  addi         t4, zero, 5 #init loop 1 limit
sub_1_1_1_t:      lui          s10, 780184
                  slti         tp, s10, -383
                  sll          a1, a7, zero
                  andi         a5, zero, 1875
                  sub          s4, a6, zero
                  addi         s11, s11, -2 #update loop 1 counter
                  addi         ra, zero, 4 #init loop 0 counter
                  slt          s10, t3, s7
                  and          t1, gp, t1
                  sll          s2, a5, s2
                  addi         s6, zero, 5 #init loop 0 limit
                  sltu         zero, s4, tp
sub_1_1_0_t:      sltu         a0, a1, s11
                  add          tp, sp, s3
                  addi         ra, ra, 6 #update loop 0 counter
                  srai         s4, gp, 27
                  bltu         ra, s6, sub_1_1_0_t #branch for loop 0
                  bgeu         s11, t4, sub_1_1_1_t #branch for loop 1
                  sll          t0, a6, t4
                  addi         a2, zero, 6 #init loop 0 counter
                  addi         a5, zero, 20 #init loop 0 limit
sub_1_0_0_t:      andi         zero, s5, -908
                  slt          a4, s3, t1
                  addi         a2, a2, 9 #update loop 0 counter
                  blt          a2, a5, sub_1_0_0_t #branch for loop 0
                  auipc        a7, 587678
                  addi         s2, zero, -5 #init loop 0 counter
                  sub          a0, s7, a1
                  addi         s5, zero, 11 #init loop 0 limit
                  sltu         t3, s4, t5
                  addi         s0, s3, -1643
                  auipc        s7, 928749
                  slti         gp, gp, -1433
                  srli         a5, a2, 21
                  auipc        sp, 228953
                  ori          s6, s7, -1420
                  srli         s11, a5, 31
                  ori          a5, tp, -1700
sub_1_3_0_t:      auipc        a6, 423970
                  addi         s2, s2, 10 #update loop 0 counter
                  sra          a1, sp, s7
                  srli         s10, s7, 29
                  or           a0, s8, a3
                  auipc        t0, 13673
                  blt          s2, s5, sub_1_3_0_t #branch for loop 0
                  sub          s9, s11, a5
                  addi         a0, zero, -3 #init loop 0 counter
                  sltu         t3, zero, s8
                  nop
                  sra          gp, s8, t5
                  addi         s3, zero, 14 #init loop 0 limit
                  srl          zero, t1, s0
sub_1_5_0_t:      sub          t3, s11, s3
                  and          tp, t6, sp
                  lui          a6, 166885
                  srl          a4, sp, s4
                  slti         s5, gp, -800
                  or           a4, tp, s7
                  auipc        t4, 876157
                  addi         ra, s10, 600
                  addi         a0, a0, 7 #update loop 0 counter
                  srli         a6, s3, 20
                  bltu         a0, s3, sub_1_5_0_t #branch for loop 0
                  slt          ra, t0, s2
                  add          tp, s6, tp
                  addi         s0, a7, 1767
                  lui          s5, 11537
                  bge          a7, ra, 16f
                  lui          sp, 823379
                  sltiu        s0, s1, 53
                  nop
                  sltu         a1, t6, a0
                  lui          s11, 699024
                  sub          s6, s11, t1
                  ori          a0, a6, -656
                  and          t3, a5, s7
                  sll          sp, tp, t3
                  srli         s2, sp, 3
                  or           ra, zero, zero
                  ori          s4, s0, 1576
16:               bltu         a2, t1, 35f
                  add          gp, a6, tp
                  beq          s9, t3, 27f
                  sltu         s7, s8, a0
                  bne          t2, s1, 23f
                  bne          s2, t4, 33f
                  bltu         a1, s2, 31f
23:               nop
                  ori          a4, zero, 1332
                  slli         t1, s4, 25
                  sub          sp, s8, a7
27:               xor          s4, s8, t4
                  auipc        s9, 740482
                  add          zero, t0, s3
                  bltu         s4, t0, 44f
31:               add          s11, t5, a5
                  xor          t4, a5, t0
33:               srli         s7, s6, 5
                  slt          a2, s2, ra
35:               slt          s2, s4, s7
                  bltu         s1, s2, 45f
                  nop
                  nop
                  nop
                  xori         s2, s2, -143
                  xor          s2, t4, sp
                  slt          a3, a4, s2
                  sltiu        s7, zero, 1262
44:               blt          a5, s7, 51f
45:               or           zero, s3, s6
                  bgeu         t4, a2, 62f
                  bge          s9, s8, 59f
                  sub          s0, s1, t4
                  blt          zero, ra, 58f
                  xori         t5, t3, -774
51:               auipc        a6, 840656
                  addi         a2, s2, -225
                  ori          s0, t0, 973
                  bgeu         a0, s4, 72f
                  sll          t3, s10, t0
                  nop
                  xor          zero, a7, t2
58:               bge          t0, a4, 75f
59:               addi         s5, a3, -1779
                  and          s9, s9, s8
                  nop
62:               blt          s8, ra, 72f
                  bltu         s1, t6, 67f
                  slt          t4, s10, t6
                  sltu         a4, s11, s11
                  and          ra, a0, a1
67:               bne          gp, gp, 77f
                  slti         s0, t2, 1553
                  beq          a2, t0, 87f
                  andi         ra, s6, 1370
                  add          s5, a4, a7
72:               srli         s1, a2, 10
                  bltu         a5, a6, 83f
                  and          s4, a7, s5
75:               addi         t3, t6, -1547
                  sra          s1, sp, a3
77:               sltiu        s11, t3, -958
                  xori         t5, a2, 1492
                  auipc        s0, 787154
                  srli         s6, s6, 13
                  blt          a6, t1, 96f
                  lui          t0, 1048121
83:               xor          t1, s5, s1
                  xor          a3, a7, ra
                  xor          s6, zero, s1
                  srli         a6, s1, 8
87:               srl          s10, tp, t3
                  srl          s3, tp, s1
                  bgeu         a6, s11, 103f
                  addi         s3, t3, 1735
                  bgeu         tp, s6, 105f
                  slt          zero, t1, gp
                  sra          s6, s2, t4
                  bne          s7, tp, 104f
                  blt          s3, s6, 115f
96:               sub          s1, s1, ra
                  xori         sp, s8, -949
                  bge          zero, a3, 102f
                  sub          t5, t6, s10
                  bne          s10, s5, 105f
                  xor          s1, a0, a7
102:              srli         a6, a3, 28
103:              sll          s1, s3, a6
104:              srl          zero, s3, tp
105:              bltu         t3, s5, 120f
                  beq          gp, t1, 118f
                  bgeu         tp, a5, 124f
                  xori         sp, ra, 237
                  sll          s6, s9, s6
                  xor          s6, s6, t3
                  andi         a7, t5, -68
                  add          s6, s0, s5
                  bltu         a2, a5, 115f
                  sll          a6, s1, s4
115:              sub          s7, s8, ra
                  xori         t1, s10, -1830
                  auipc        s5, 281729
118:              bne          t3, t3, 133f
                  bltu         t1, a2, 136f
120:              srai         a5, a4, 25
                  nop
                  slli         t1, t0, 23
                  blt          ra, s0, 142f
124:              nop
                  xor          ra, a4, a0
                  lui          a7, 846144
                  xori         s3, a6, 1969
                  slli         s0, a0, 22
                  bne          a1, s7, 142f
                  xor          t5, s4, t4
                  srai         gp, s10, 0
                  bgeu         ra, tp, 150f
133:              nop
                  bne          t1, a0, 150f
                  nop
136:              bltu         s3, a5, 140f
                  auipc        t0, 341703
                  xor          a1, a3, s11
                  sltiu        s1, a2, -1340
140:              auipc        zero, 542542
                  and          t4, s0, s2
142:              bgeu         s4, s7, 152f
                  bltu         s7, sp, 157f
                  bne          a1, t5, 154f
                  bge          a5, a3, 159f
                  xori         ra, s3, 392
                  sltiu        s10, s3, -529
                  add          sp, s10, s0
                  lui          t3, 722913
150:              ori          s0, s6, -334
                  sra          s3, ra, s3
152:              sll          tp, t0, s11
                  srli         a6, s8, 31
154:              xori         s1, t2, -764
                  srli         zero, a3, 26
                  sra          sp, t6, s10
157:              ori          s6, t6, 558
                  slli         a7, t2, 23
159:              or           s0, s11, t6
                  sltu         sp, a5, a4
                  srl          ra, t4, a3
                  bge          t0, t6, 172f
                  srai         t1, zero, 28
                  addi         t4, s1, -1463
                  or           t5, s6, s1
                  bne          t3, a2, 181f
                  sltiu        t5, s1, 1795
                  sra          a3, a2, s7
                  srl          s10, a4, a7
                  addi         s1, tp, -1944
                  nop
172:              ori          t3, gp, -1216
                  srai         s2, tp, 28
                  slti         a0, t4, 128
                  and          t5, s0, t0
                  slli         s11, a1, 30
                  bge          t2, s6, 187f
                  or           a2, s2, s2
                  slt          a6, a6, s4
                  sltiu        s7, s6, 1710
181:              srli         s7, a7, 27
                  beq          t6, s4, 202f
                  bltu         ra, s4, 195f
                  sub          s5, a7, t2
                  blt          t6, tp, 197f
                  xor          s3, t5, zero
187:              addi         s1, a0, 1219
                  bne          sp, a1, 200f
                  slli         t3, a5, 31
                  nop
                  xori         zero, s10, 962
                  srl          s7, a1, s7
                  and          tp, s6, s8
                  auipc        t4, 978959
195:              sll          t4, zero, s4
                  xori         s10, a5, -95
197:              lui          s1, 419350
                  addi         a4, zero, -100
                  lui          a3, 288878
200:              sltiu        zero, s6, 1093
                  sub          sp, t1, s0
202:              blt          a1, t3, 204f
                  addi         t4, zero, 1 #init loop 1 counter
                  addi         a3, a5, -2022
                  addi         a2, zero, -13 #init loop 1 limit
sub_1_2_1_t:      sltu         t3, s0, a1
                  slli         a4, tp, 21
                  addi         t4, t4, -2 #update loop 1 counter
                  andi         t5, ra, -1243
                  addi         t1, zero, 3 #init loop 0 counter
                  addi         s6, zero, 19 #init loop 0 limit
                  sltiu        ra, sp, 182
sub_1_2_0_t:      ori          s11, a1, -576
                  sltu         s9, gp, s11
                  sltu         a0, s2, sp
                  sltiu        sp, t3, -245
                  slli         s4, s6, 31
                  addi         t1, t1, 4 #update loop 0 counter
                  bne          t1, s6, sub_1_2_0_t #branch for loop 0
                  beq          t4, a2, sub_1_2_1_t #branch for loop 1
                  lui          a5, 972885
                  bge          tp, a3, 207f
204:              xori         s3, t3, -1147
                  xori         t5, t4, 1440
                  srai         a4, ra, 23
207:              xor          t1, s1, a7
                  add          ra, s1, tp
                  srl          s11, s3, a6
                  ori          a1, a4, 1128
                  ori          s9, s3, -1142
                  sll          a5, a7, t4
                  xori         a1, a0, -1796
                  slt          s4, zero, a2
                  sub          a4, ra, tp
                  sltiu        s1, gp, 1191
                  slti         s2, zero, -1848
                  bgeu         s11, s1, 227f
                  ori          s9, s1, -1777
                  xor          a7, zero, a6
                  bgeu         s7, s0, 224f
                  auipc        t0, 645910
                  blt          t6, t4, 232f
224:              srli         s1, s11, 7
                  bltu         a2, s0, 234f
                  add          s7, s3, t5
227:              bne          a5, t5, 241f
                  bne          s5, a3, 237f
                  sub          a2, s7, t5
                  blt          a4, s9, 247f
                  and          t1, s1, sp
232:              bltu         t5, a5, 237f
                  sll          tp, a7, a4
234:              nop
                  add          s5, s8, a6
                  bgeu         s4, gp, 243f
237:              and          s3, t4, sp
                  slli         s2, t5, 28
                  sll          s3, s11, a7
                  sra          s4, s5, t4
241:              or           t0, t0, s5
                  or           s2, s7, t3
243:              or           s11, t3, a5
                  and          t5, a1, s3
                  auipc        s3, 55425
                  andi         a2, t2, 1407
247:              srai         sp, s4, 23
                  bltu         t0, zero, 266f
                  xori         sp, s6, 41
                  bltu         t4, a6, 267f
                  srai         zero, s1, 21
                  bgeu         tp, s0, 257f
                  bgeu         a1, s1, 271f
                  sll          s5, t2, s9
                  blt          s6, a4, 269f
                  bgeu         sp, a6, 275f
257:              sltiu        a6, a1, 1607
                  add          s3, s11, t0
                  srai         sp, t3, 0
                  sll          t5, s11, s6
                  beq          a0, t0, 273f
                  xori         t0, s9, -113
                  add          s3, s10, a5
                  bltu         s1, s0, 274f
                  add          a2, s3, sp
266:              lui          s0, 85671
267:              beq          a6, gp, 271f
                  andi         ra, zero, 1935
269:              slli         t5, s7, 5
                  blt          s3, s5, 280f
271:              sltu         ra, t0, s2
                  bgeu         t5, gp, 281f
273:              xor          t5, tp, a2
274:              beq          s4, a0, 278f
275:              auipc        s7, 4234
                  slti         gp, a4, -727
                  bltu         s8, a2, 291f
278:              add          s3, s7, s11
                  or           s6, a7, s0
280:              sll          a4, s6, s3
281:              auipc        t3, 972995
                  and          t1, t3, t6
                  xor          s1, t4, t6
                  sub          s0, t0, a4
                  ori          t0, s10, 1956
                  bgeu         s11, t6, 295f
                  slt          s6, a4, zero
                  add          zero, s0, s5
                  bne          a5, ra, 307f
                  bltu         t1, s2, 302f
291:              ori          a4, ra, -1465
                  sltu         s4, s4, s2
                  xori         ra, gp, -475
                  sll          t4, s4, s0
295:              slli         a0, s10, 21
                  slti         zero, a6, 351
                  andi         t1, a5, 81
                  nop
                  bgeu         a2, s9, 306f
                  sra          t3, t4, s1
                  and          a4, t6, t0
302:              xor          gp, s1, t3
                  add          s1, tp, t0
                  ori          a2, s10, 1422
                  add          s5, s6, s7
306:              or           s7, t0, s5
307:              srli         t0, t5, 29
                  srai         a2, s10, 20
                  slt          s5, t2, t0
                  addi         t0, s1, 1467
                  sltiu        t3, s5, -378
                  bgeu         s7, s0, 325f
                  srli         sp, s7, 6
                  and          t1, t3, s6
                  ori          s3, s3, -1195
                  and          a1, a4, t6
                  sltu         s11, a1, a0
                  bge          s10, zero, 328f
                  sltu         a6, s6, s4
                  slli         gp, t1, 12
                  slli         s9, s0, 18
                  sltu         a6, gp, t2
                  sub          t5, s7, t3
                  bne          s11, s7, 333f
325:              nop
                  sltu         s1, t6, s8
                  srai         a4, t5, 23
328:              xori         s11, a6, 571
                  xori         a4, s7, 1441
                  bge          s5, zero, 332f
                  or           s0, s8, s6
332:              bltu         s9, zero, 336f
333:              sra          s3, a5, a4
                  xor          a7, t0, s8
                  sltu         t3, ra, t0
336:              and          a7, s10, t3
                  lw           a5, 4(t6)
                  lui          t3, 653151
                  sltiu        s11, s9, -1890
                  sltiu        a6, a1, 200
                  addi         t6, t6, 48
                  slti         s3, t4, -61
                  slti         s7, s1, -2012
                  slli         t4, a1, 5
                  slli         gp, a7, 7
455:              addi x8, x15, 1
455:              jalr x8, x8, 0
sub_4:            sltu         s1, s1, a4
                  or           a6, a7, t2
                  nop
                  lui          s0, 542342
                  addi         t6, t6, -8
                  slt          a3, s4, t3
                  nop
                  sw           a5, 4(t6)
                  and          s10, s5, s7
                  sltiu        a2, a3, -296
                  andi         s6, s5, 1355
                  addi         s1, zero, -5 #init loop 0 counter
                  slti         s11, s10, -1799
                  sll          s4, zero, s9
                  addi         ra, zero, -17 #init loop 0 limit
                  srli         a3, s1, 11
sub_4_1_0_t:      add          a3, s1, sp
                  srl          a2, t3, s10
                  xor          a3, zero, a1
                  addi         s1, s1, -3 #update loop 0 counter
                  xor          t0, s9, a0
                  srai         tp, s3, 22
                  slti         s3, a7, -540
                  sltiu        t5, t5, 359
                  sra          s3, s1, s6
                  bne          s1, ra, sub_4_1_0_t #branch for loop 0
                  srl          s4, t3, sp
                  addi         s5, zero, -3 #init loop 1 counter
                  add          s11, s9, s5
                  srli         s7, s4, 27
                  addi         t5, zero, 0 #init loop 1 limit
                  xori         t1, tp, -1017
                  srli         t0, s3, 2
sub_4_3_1_t:      andi         a7, tp, -419
                  ori          t0, t4, -1637
                  addi         s5, s5, 3 #update loop 1 counter
                  addi         s2, zero, 8 #init loop 0 counter
                  andi         t3, s7, -1493
                  nop
                  add          s11, a5, t4
                  sra          a5, t3, t6
                  srli         a3, t5, 23
                  nop
                  or           sp, a6, s2
                  addi         s1, zero, 6 #init loop 0 limit
                  sra          s0, a4, t4
                  auipc        s6, 194286
sub_4_3_0_t:      addi         gp, a5, -256
                  addi         s2, s2, -3 #update loop 0 counter
                  xori         s9, s6, -762
                  xori         zero, a1, -979
                  sra          a5, a2, a5
                  andi         zero, a1, 63
                  bgeu         s2, s1, sub_4_3_0_t #branch for loop 0
                  sra          s3, a3, a5
                  xor          t0, a1, s7
                  sll          s0, t4, a3
                  beq          s5, t5, sub_4_3_1_t #branch for loop 1
                  auipc        s7, 24934
                  addi         s9, zero, -7 #init loop 0 counter
                  sltu         s2, a6, s1
                  addi         a7, zero, -72
                  sub          s4, a2, s1
                  sra          a7, s0, tp
                  sltiu        s7, t1, -1685
                  xor          a2, s2, s1
                  addi         ra, zero, -14 #init loop 0 limit
                  lui          s7, 544046
sub_4_0_0_t:      xori         a2, s3, -718
                  and          t5, s7, zero
                  auipc        s3, 399101
                  addi         a2, s11, 1576
                  sub          a3, s9, t6
                  addi         s9, s9, -7 #update loop 0 counter
                  srl          s11, s2, s1
                  sub          s3, t4, tp
                  auipc        s4, 375453
                  sra          s0, t0, t4
                  xori         zero, sp, -15
                  beq          s9, ra, sub_4_0_0_t #branch for loop 0
                  or           t5, zero, a4
                  addi         s3, zero, 6 #init loop 0 counter
                  or           t0, t5, a6
                  slt          s10, s8, t3
                  sll          a2, tp, s9
                  auipc        a2, 462578
                  addi         a0, zero, 15 #init loop 0 limit
sub_4_2_0_t:      xori         s4, s0, -80
                  addi         a6, tp, 1894
                  sltu         a1, s6, s5
                  addi         s3, s3, 9 #update loop 0 counter
                  ori          t3, s9, 230
                  xor          s4, s0, zero
                  sra          a7, t5, ra
                  bne          s3, a0, sub_4_2_0_t #branch for loop 0
                  ori          a4, gp, -838
                  addi         a1, zero, -2 #init loop 0 counter
                  addi         a2, zero, 9 #init loop 0 limit
                  auipc        s0, 713259
sub_4_4_0_t:      ori          t1, s2, -138
                  addi         a1, a1, 4 #update loop 0 counter
                  and          t1, t3, ra
                  bltu         a1, a2, sub_4_4_0_t #branch for loop 0
                  add          a0, s6, s6
                  srai         s6, a3, 25
                  sltiu        s6, s3, -1783
                  srli         s7, gp, 0
                  nop
                  add          s9, s4, s1
                  srl          a0, sp, t2
                  or           t0, s1, zero
                  and          ra, s3, s10
                  xor          t1, t6, a6
                  auipc        s10, 878564
                  srai         t1, a5, 1
                  and          s2, s8, zero
                  slt          a3, s5, a2
                  bne          t5, s2, 31f
                  bne          s8, t2, 21f
                  srli         s10, s7, 26
                  slt          a2, s5, s0
                  bge          s11, s3, 27f
                  and          t4, a6, s11
                  slli         t4, s4, 29
                  xor          t3, a2, s3
21:               ori          s1, t4, -1334
                  lui          s3, 98349
                  beq          a2, a3, 32f
                  ori          a5, s8, -924
                  srli         sp, s11, 3
                  xor          zero, a7, a1
27:               sltiu        zero, t5, 413
                  add          t5, a4, s7
                  slti         t0, a6, -288
                  bgeu         s6, s0, sub_4_j6 #branch to jump instr
                  slti         a0, gp, -825
                  sra          t5, s2, gp
                  slli         sp, s10, 13
                  srl          sp, a7, a0
                  slt          t0, a4, a5
                  add          a1, a4, a0
sub_4_j6:         jal          a5, sub_5 #jump sub_4 -> sub_5
                  and          tp, t4, s9
31:               and          gp, a7, gp
32:               xor          zero, a6, t5
                  sll          s7, t1, t4
                  ori          t1, t3, 1801
                  and          s6, a6, tp
                  sll          a7, a1, t4
                  xori         s3, s5, 1548
                  slti         s0, zero, -1660
                  slli         s0, a3, 28
                  xori         t3, t2, -1227
                  sub          a2, t3, s7
                  slli         sp, s7, 24
                  bge          a6, t0, 63f
                  nop
                  sra          t4, t1, t5
                  lui          s3, 101709
                  sra          zero, ra, t0
                  blt          t2, s9, 50f
                  addi         a6, s4, 2041
50:               add          s1, s8, gp
                  xor          s4, ra, a7
                  bge          t1, a1, 68f
                  add          t1, a7, gp
                  sub          t5, s3, gp
                  slt          a7, a1, a2
                  blt          s7, s5, 75f
                  srl          s9, s0, tp
                  slt          t1, s11, a2
                  bltu         a2, a4, 70f
                  add          t4, s11, t3
                  and          t4, a7, gp
                  auipc        tp, 164716
63:               sll          t5, zero, a1
                  nop
                  srai         s6, a2, 6
                  bne          a5, t5, 73f
                  and          ra, t1, s8
68:               slti         a7, a7, -17
                  bltu         s6, t5, 71f
70:               nop
71:               bge          tp, t1, 79f
                  srai         s0, sp, 24
73:               xor          a0, gp, s6
                  bgeu         t0, s3, 87f
75:               add          s6, s4, s1
                  bne          s6, a1, 83f
                  nop
                  and          t0, zero, s3
79:               slli         s0, tp, 17
                  sll          tp, s7, sp
                  nop
                  slt          s10, a1, ra
83:               andi         t4, s6, 648
                  xori         tp, s1, -896
                  andi         tp, t3, 866
                  add          a2, s4, t5
87:               slli         a1, s9, 5
                  bltu         gp, s5, 96f
                  sra          sp, s1, a4
                  andi         a6, s6, 1433
                  nop
                  srl          tp, t3, t6
                  bge          t4, s5, 107f
                  xor          a7, t1, tp
                  andi         gp, s3, -904
96:               sltu         a6, s2, t1
                  sub          s2, ra, s1
                  or           s0, s4, s7
                  sltu         s2, a6, s10
                  srai         a1, a0, 15
                  srl          t0, s9, s6
                  blt          a4, t0, 116f
                  bge          t0, a0, 118f
                  srai         s2, tp, 29
                  bgeu         a2, t1, 120f
                  bne          tp, s4, 115f
107:              sltu         a6, a1, a2
                  and          s10, s6, s9
                  addi         a4, t5, -163
                  addi         a0, s7, 1144
                  bge          s1, t2, 116f
                  and          a5, s1, s6
                  slti         a1, a3, 579
                  xor          a4, a4, a5
115:              nop
116:              addi         s1, t0, -1368
                  and          a7, ra, s5
118:              or           s2, s9, s0
                  andi         s10, s7, 479
120:              srli         a3, s3, 6
                  sltiu        s9, t1, -199
                  nop
                  lui          a3, 510944
                  slli         a2, ra, 13
                  or           zero, s4, s8
                  bne          s2, s8, 129f
                  lui          a2, 864146
                  sra          s10, a6, t3
129:              addi         tp, sp, -1086
                  addi         a2, a1, -173
                  bltu         s2, s5, 146f
                  sub          s1, s9, a1
                  xori         s11, zero, 1894
                  nop
                  ori          s6, tp, 229
                  sra          a2, s8, s5
                  slti         gp, s8, -1021
                  add          s5, s2, a0
                  slt          s6, a5, a2
                  add          s1, a4, tp
                  bne          tp, a1, 155f
                  lui          a3, 29072
                  srai         s2, s10, 13
                  nop
                  xor          t4, s7, a0
146:              srli         t3, a5, 14
                  bltu         zero, sp, 167f
                  bge          s3, sp, 153f
                  sll          zero, zero, s2
                  ori          gp, tp, -410
                  or           tp, s9, zero
                  ori          gp, t1, -677
153:              lui          s5, 83878
                  or           s9, a2, s0
155:              sub          gp, s3, s0
                  beq          s5, gp, 166f
                  beq          a6, s3, 177f
                  slli         s10, s8, 16
                  ori          s3, t2, -1600
                  xori         a1, tp, 1096
                  srli         a4, sp, 11
                  srli         gp, a3, 0
                  bltu         a5, t0, 179f
                  nop
                  nop
166:              blt          t3, a6, 168f
167:              bltu         a1, s7, 178f
168:              or           tp, t0, t2
                  nop
                  blt          a0, t2, 177f
                  nop
                  ori          t0, a0, -915
                  bltu         t5, a2, 178f
                  xor          s1, t6, a2
                  or           t4, s5, a7
                  sll          t5, t3, zero
177:              slt          a1, s9, s11
178:              andi         zero, t6, -1095
179:              nop
                  or           zero, a7, s5
                  sltiu        tp, t6, -388
                  or           tp, t0, s6
                  slt          s7, a1, a7
                  srli         s1, t4, 9
                  bgeu         s5, t0, 192f
                  xori         a7, s9, -1423
                  srli         sp, s0, 5
                  xori         s3, s9, 1205
                  bgeu         a1, t4, 197f
                  slt          a0, s5, s7
                  lui          s10, 838209
192:              slt          s6, s3, s3
                  slti         a3, s3, 1184
                  bne          s9, s7, 203f
                  slt          s7, s4, t1
                  slti         a7, t3, -1306
197:              bltu         s11, a5, 212f
                  xori         t5, ra, -1264
                  beq          t3, s4, 213f
                  auipc        s0, 800561
                  srli         t1, s4, 3
                  slli         t5, a6, 28
203:              srli         a5, t0, 24
                  and          s9, t6, a7
                  ori          a2, s0, -307
                  srai         t1, a3, 21
                  srli         s11, s10, 20
                  srl          s9, t1, gp
                  ori          t3, s5, 1615
                  bge          s6, s1, 217f
                  beq          s3, tp, 231f
212:              slti         t0, s4, 1766
213:              sub          s4, a2, s0
                  sltu         a6, a5, s8
                  xor          a5, t5, s4
                  srli         a6, zero, 8
217:              bne          s6, s5, 231f
                  bgeu         gp, s4, 228f
                  auipc        s3, 967198
                  andi         s11, a7, 1261
                  auipc        s5, 613621
                  nop
                  blt          s1, a1, 236f
                  slti         s6, a1, 857
                  slti         s4, s7, 1604
                  sltiu        t0, a0, 309
                  sltu         a5, gp, t0
228:              sub          sp, a1, t5
                  xor          tp, s11, tp
                  sll          s1, s2, s1
231:              xori         s11, ra, -294
                  srai         s3, a6, 9
                  nop
                  or           s10, a4, gp
                  blt          a2, t4, 251f
236:              andi         s11, a2, 1346
                  lui          s9, 49064
                  or           t0, s8, tp
                  bne          tp, s4, 253f
                  bltu         t4, s8, 255f
                  sltiu        s4, s11, -2026
                  srli         s0, a1, 16
                  and          a5, t1, a6
                  bgeu         s9, s10, 254f
                  auipc        s5, 618002
                  srai         ra, s9, 6
                  sll          gp, tp, a0
                  or           a1, zero, s6
                  slt          s1, a0, ra
                  slti         gp, ra, -94
251:              sltu         s9, a5, a5
                  xori         s3, a4, -1889
253:              or           gp, a4, s11
254:              xor          ra, tp, s11
255:              bltu         sp, a3, 275f
                  or           s2, s4, a1
                  sll          a5, s9, ra
                  bne          sp, s6, 263f
                  srl          s0, a6, s4
                  srai         t5, s10, 19
                  sltiu        zero, a7, 1574
                  srli         t5, a0, 6
263:              add          a6, t0, t2
                  sltiu        t4, s6, -45
                  beq          a1, a2, 267f
                  bne          t4, sp, 282f
267:              sub          a0, s1, tp
                  blt          a7, a1, 287f
                  lui          zero, 623048
                  nop
                  lui          s1, 13445
                  add          s2, s6, gp
                  lui          s7, 688002
                  sra          s9, a4, s0
275:              ori          a2, gp, 986
                  and          s1, zero, t1
                  srli         a0, zero, 7
                  sltiu        s4, a5, 598
                  srl          t0, s6, t0
                  ori          a0, s1, -1688
                  add          s1, a7, a5
282:              xori         s0, t3, 1375
                  sltiu        t0, t0, 929
                  andi         tp, zero, -1611
                  slli         s0, a1, 13
                  sltiu        s7, t4, -1616
287:              blt          s8, s0, 290f
                  sltiu        a6, s3, -350
                  blt          a6, a0, 290f
290:              add          a7, a0, s10
                  srai         a7, gp, 24
                  lui          a6, 619254
                  srai         s2, tp, 8
                  lw           a5, 4(t6)
                  addi         a4, ra, 1922
                  nop
                  sll          zero, s5, s3
                  addi         t6, t6, 8
                  ori          s6, sp, -1305
                  slti         s6, s11, -1686
                  auipc        a6, 18599
414:              addi x2, x15, 0
414:              jalr x2, x2, 0
sub_5:            sub          s7, s7, t6
                  add          s9, a7, zero
                  sltu         s4, s9, a7
                  sll          a1, s8, tp
                  and          a7, s1, tp
                  srl          t5, t1, a5
                  addi         t6, t6, -12
                  sw           a5, 4(t6)
                  sub          s0, a2, s0
                  addi         s7, t3, 400
                  addi         s5, zero, 6 #init loop 1 counter
                  addi         s3, zero, 16 #init loop 1 limit
sub_5_0_1_t:      xor          zero, t1, ra
                  addi         s5, s5, 2 #update loop 1 counter
                  sltu         tp, tp, s11
                  addi         t4, zero, -6 #init loop 0 counter
                  addi         s7, zero, -12 #init loop 0 limit
sub_5_0_0_t:      lui          a2, 697503
                  sltu         s11, t2, sp
                  addi         t4, t4, -6 #update loop 0 counter
                  beq          t4, s7, sub_5_0_0_t #branch for loop 0
                  blt          s5, s3, sub_5_0_1_t #branch for loop 1
                  and          s4, s4, a4
                  addi         t3, zero, 9 #init loop 1 counter
                  srli         a3, t4, 25
                  addi         a6, zero, 18 #init loop 1 limit
sub_5_4_1_t:      addi         sp, a3, -559
                  addi         t3, t3, 5 #update loop 1 counter
                  slt          a2, s2, t4
                  andi         s1, t3, 1055
                  srai         a4, s9, 3
                  addi         t1, zero, 0 #init loop 0 counter
                  addi         a5, zero, 12 #init loop 0 limit
sub_5_4_0_t:      slt          ra, s11, t1
                  srai         a7, t4, 10
                  addi         t1, t1, 3 #update loop 0 counter
                  xor          s0, s10, tp
                  beq          t1, a5, sub_5_4_0_t #branch for loop 0
                  addi         t5, t2, -596
                  sll          a7, ra, a2
                  blt          t3, a6, sub_5_4_1_t #branch for loop 1
                  andi         ra, a4, 1193
                  addi         t5, zero, 0 #init loop 0 counter
                  srli         a7, gp, 26
                  sll          t1, s9, ra
                  slt          ra, a3, gp
                  or           zero, s3, t0
                  sltu         t0, t4, a1
                  addi         a6, s5, 1946
                  srl          a5, s5, ra
                  and          a4, t6, s0
                  xor          s1, s5, a1
                  auipc        s10, 531055
                  slti         sp, a4, 2024
                  sll          s7, a2, tp
                  andi         tp, s9, 1964
                  and          s11, s10, s7
                  slt          a6, s5, s6
                  addi         t4, zero, -10 #init loop 0 limit
                  lui          a4, 1005014
sub_5_1_0_t:      sltiu        zero, t1, 1927
                  or           a3, t4, a6
                  lui          a3, 628572
                  sub          a2, a7, s0
                  sltiu        a3, tp, 1268
                  slli         a4, a6, 29
                  sll          gp, s10, s4
                  sra          t1, ra, ra
                  addi         t5, t5, -2 #update loop 0 counter
                  sra          s6, s2, s10
                  bne          t5, t4, sub_5_1_0_t #branch for loop 0
                  ori          ra, a2, -418
                  addi         s7, zero, -9 #init loop 0 counter
                  xori         s4, a7, -1132
                  addi         a7, zero, -19 #init loop 0 limit
                  xori         s11, a4, 849
sub_5_2_0_t:      andi         s3, s11, -1594
                  ori          s4, sp, -43
                  lui          s6, 806662
                  addi         s7, s7, -5 #update loop 0 counter
                  xori         s11, a7, -186
                  xor          sp, t4, s3
                  srli         s6, a4, 8
                  srai         s11, s2, 29
                  slti         s9, t6, -384
                  bge          s7, a7, sub_5_2_0_t #branch for loop 0
                  ori          s5, t1, -1670
                  addi         t5, zero, -2 #init loop 0 counter
                  nop
                  addi         t1, zero, 7 #init loop 0 limit
sub_5_3_0_t:      auipc        s6, 641906
                  add          s6, s7, t3
                  addi         t5, t5, 3 #update loop 0 counter
                  blt          t5, t1, sub_5_3_0_t #branch for loop 0
                  xor          s9, s5, t0
                  addi         a4, a1, -1308
                  add          s0, a1, t2
                  ori          t4, s4, -1199
                  add          a5, ra, a3
                  sub          a4, ra, a0
                  auipc        a3, 51087
                  bltu         t0, tp, 8f
                  beq          a5, t5, 25f
8:                lui          s11, 198212
                  bne          s10, s6, 26f
                  add          s4, gp, a5
                  addi         s1, t4, 1878
                  slti         a2, tp, 65
                  andi         t3, t4, 487
                  addi         s3, zero, 50
                  slt          t0, s7, t3
                  slti         sp, s4, 893
                  slli         sp, t0, 3
                  slli         s10, a6, 20
                  lui          zero, 438193
                  add          t4, a6, a4
                  blt          s5, a5, 36f
                  sll          s2, sp, t0
                  slt          zero, sp, s6
                  slli         a5, t5, 20
25:               slti         a2, t3, 442
26:               addi         t0, ra, -289
                  slt          s11, ra, sp
                  sltu         a3, s3, s0
                  srai         s11, s7, 31
                  bge          a4, a4, 41f
                  slli         a1, a6, 26
                  slti         t3, s9, 1496
                  xori         a3, t0, -1260
                  sltiu        ra, gp, -1602
                  addi         a3, s9, -826
36:               nop
                  beq          a2, s10, 42f
                  sra          a6, s10, s4
                  bltu         s0, s1, 53f
                  lui          t1, 950104
41:               lui          t5, 60162
42:               srli         s2, sp, 0
                  beq          t0, t2, 46f
                  slt          sp, s0, gp
                  sltu         a1, a7, t0
46:               srli         a3, gp, 22
                  slt          s7, a6, t2
                  sltu         zero, s2, s6
                  bge          s0, s8, 66f
                  sub          ra, s10, zero
                  and          a3, a0, t6
                  blt          a5, sp, 70f
53:               sltiu        s0, s3, -695
                  or           s1, a7, t6
                  beq          a0, s1, 59f
                  slli         s6, sp, 14
                  xor          a1, t4, s1
                  auipc        s11, 225648
59:               bne          s2, tp, 79f
                  sltiu        a1, s5, -1641
                  bne          s3, a2, 64f
                  sub          ra, s6, a4
                  lui          s1, 376665
64:               ori          gp, gp, -1394
                  bgeu         s7, s0, 79f
66:               ori          a3, a7, -882
                  and          a0, t6, t4
                  srl          a1, a4, ra
                  ori          a1, tp, -483
70:               sltu         t0, s10, a2
                  bgeu         a6, ra, 85f
                  slti         s3, a4, -1313
                  sub          zero, ra, ra
                  add          s7, a1, s7
                  lui          s10, 303260
                  slti         a0, s8, 161
                  srl          gp, t6, s0
                  lui          gp, 53650
79:               bltu         t5, t5, 88f
                  srli         s6, t5, 15
                  sltiu        t3, zero, 757
                  srl          s0, t1, a2
                  bne          a7, s11, 99f
                  sltu         t4, t3, a2
85:               srli         a5, tp, 5
                  sltiu        tp, gp, 437
                  or           t1, s3, s5
88:               slti         s7, s3, -1202
                  bge          s6, s6, 103f
                  sll          ra, t5, ra
                  sltiu        s7, s5, 1174
                  sltiu        t0, s2, -2044
                  bne          t1, s5, 96f
                  beq          a4, s4, 103f
                  xor          a0, sp, s5
96:               xor          a5, s11, sp
                  add          s4, a7, sp
                  beq          a1, a7, 117f
99:               slli         t5, t4, 27
                  andi         s3, t2, 56
                  addi         ra, a3, 1228
                  add          t0, s3, tp
103:              nop
                  and          s4, t6, t4
                  sra          gp, s9, t3
                  sra          s9, ra, a6
                  andi         a1, a0, -573
                  srl          s10, a1, a3
                  xor          s11, s9, s6
                  beq          t2, s10, 121f
                  auipc        a1, 1031762
                  sub          s10, a7, a4
                  sltiu        s2, t2, -1819
                  slt          s9, s9, t1
                  blt          gp, tp, 122f
                  or           s11, a4, s2
117:              andi         ra, s9, 1190
                  add          tp, zero, s6
                  blt          a3, t4, 138f
                  nop
121:              ori          tp, ra, 654
122:              slli         a3, t4, 8
                  slti         t5, s2, 663
                  sltu         a2, a2, a1
                  bgeu         s8, s1, 135f
                  bge          a7, t0, 137f
                  sll          t5, a5, a2
                  sltu         s11, s9, a7
                  srl          t4, s3, t0
                  xor          t0, s2, a4
                  xor          a7, s10, t0
                  srai         s7, a4, 27
                  beq          s11, s5, 147f
                  srai         a7, gp, 13
135:              blt          zero, s5, 155f
                  sll          a3, a2, s6
137:              andi         a2, a1, 1817
138:              andi         s2, s0, -130
                  slt          t5, s2, a6
                  srli         sp, s8, 29
                  slli         s9, s4, 22
                  sub          a5, s1, s11
                  srli         s3, a6, 21
                  xor          s5, s2, t2
                  auipc        a7, 1019031
                  srai         a6, s4, 16
147:              beq          a6, s0, 164f
                  sltiu        a0, a6, -1374
                  slti         a6, s1, -1518
                  sub          a0, a7, a1
                  sltu         s3, a3, a2
                  addi         t3, s7, -817
                  sltu         s4, a1, t1
                  sltu         s11, gp, s3
155:              sltu         s9, a1, s1
                  sltiu        a4, s2, 124
                  srai         a6, s4, 10
                  blt          t5, t0, 176f
                  auipc        s11, 19424
                  bge          t1, s2, 176f
                  bgeu         s2, tp, 178f
                  bge          s5, t1, 181f
                  auipc        t1, 644880
164:              xori         ra, t2, 1599
                  and          a0, s7, t4
                  blt          s5, a0, 180f
                  blt          s1, a2, 170f
                  ori          a2, a1, -863
                  sltiu        s9, ra, 487
170:              xori         zero, ra, 1075
                  bltu         s11, s7, 189f
                  xor          s0, gp, t5
                  slti         s6, s10, 972
                  bge          s5, s1, 183f
                  auipc        gp, 331650
176:              slti         s5, s8, 743
                  sra          s4, zero, s6
178:              or           s1, s10, t2
                  bne          s10, t2, 189f
180:              or           s9, s9, a5
181:              srai         ra, s3, 24
                  add          a0, a3, a7
183:              andi         s4, s0, 14
                  ori          s9, s10, 971
                  add          zero, a5, s4
                  slt          tp, s4, s7
                  bgeu         a5, s11, 206f
                  slti         a4, a6, 758
189:              blt          s1, s7, 192f
                  beq          t1, a3, 210f
                  bgeu         t0, s6, 202f
192:              beq          gp, ra, 209f
                  bne          s0, s4, 204f
                  xor          s7, ra, a5
                  addi         s4, t6, -1004
                  sll          a5, s10, a3
                  slli         s9, t0, 20
                  sltiu        tp, s5, -252
                  bgeu         a5, s5, 208f
                  lui          s0, 834005
                  slt          s5, s2, t5
202:              and          a7, s7, sp
                  slt          s1, t0, t3
204:              ori          t1, t0, -667
                  addi         a5, a4, 431
206:              lui          s4, 990165
                  bgeu         s4, a1, 225f
208:              and          t4, s3, s2
209:              blt          a5, a2, 229f
210:              addi         s7, t1, 1235
                  auipc        s9, 1029801
                  bltu         s6, s9, 219f
                  xor          s3, a0, a2
                  or           tp, a4, s8
                  bge          s0, t2, 226f
                  srli         a3, s5, 25
                  and          t1, a3, s11
                  addi         s2, a2, 1784
219:              sll          s7, s0, s7
                  bgeu         s3, a4, 224f
                  sltu         a4, a1, a7
                  sltiu        a0, s2, -1221
                  or           ra, t5, s10
224:              sra          gp, s2, s2
225:              sub          zero, t2, a0
226:              nop
                  and          a5, s0, a2
                  slti         s1, a7, 716
229:              auipc        a4, 303756
                  addi         s11, s2, -1660
                  or           a3, s2, s9
                  sltu         s11, a0, s3
                  srli         s0, gp, 5
                  bge          s3, s1, 251f
                  blt          s10, s2, 249f
                  xor          s11, s8, sp
                  blt          tp, s1, 251f
                  sll          zero, ra, a2
                  slli         tp, a4, 28
                  slti         a2, s4, 1152
                  slt          s0, a7, zero
                  nop
                  slli         gp, sp, 27
                  blt          a4, s7, 247f
                  sll          t3, s1, t6
                  lui          t5, 295697
247:              nop
                  sub          t3, s3, ra
249:              bltu         t5, a5, 251f
                  bgeu         s0, gp, 265f
251:              srai         s9, s6, 21
                  bne          gp, t1, 266f
                  and          s10, s3, t1
                  or           a1, s8, s3
                  blt          s1, s0, 269f
                  and          t3, s11, s6
                  sra          s4, s9, t5
                  srai         a2, t3, 16
                  slli         sp, a3, 25
                  sltiu        s3, a3, -556
                  xori         t1, gp, -899
                  nop
                  srl          s3, s2, s9
                  nop
265:              srl          a5, ra, s11
266:              lui          s5, 1009697
                  andi         t5, a4, -524
                  blt          zero, tp, 269f
269:              lui          a3, 436879
                  sltiu        a3, t6, -1984
                  sltiu        s6, a5, -1448
                  add          ra, a2, s9
                  lw           a5, 4(t6)
                  addi         t6, t6, 12
                  ori          a1, s2, -1357
                  sll          a4, a7, t4
                  xor          s11, s9, s1
                  sltu         tp, s6, a4
                  auipc        s9, 712022
375:              addi x30, x15, 1
375:              jalr x30, x30, 0
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x7, x31, zero
                  csrr x22, 0x300 # MSTATUS
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 31
                  bne x22, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x22, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x22, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x22, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x22, x30, ecall_handler
                  li x30, 0x1
                  beq x22, x30, instr_fault_handler
                  li x30, 0x5
                  beq x22, x30, load_fault_handler
                  li x30, 0x7
                  beq x22, x30, store_fault_handler
                  li x30, 0xc
                  beq x22, x30, pt_fault_handler
                  li x30, 0xd
                  beq x22, x30, pt_fault_handler
                  li x30, 0xf
                  beq x22, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
