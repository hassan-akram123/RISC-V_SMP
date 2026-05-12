.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x533cae08
                  li x3, 0x8e9dd797
                  li x5, 0xb053e25e
                  li x6, 0xd30cacf
                  li x7, 0x80000000
                  li x8, 0xf20dfdc3
                  li x9, 0x0
                  li x10, 0x77e798aa
                  li x11, 0xf86dc54c
                  li x12, 0xf2357b99
                  li x13, 0x0
                  li x14, 0x6f354ffe
                  li x15, 0x80000000
                  li x16, 0x9
                  li x17, 0x5d74432
                  li x18, 0x9c1e6992
                  li x19, 0xb
                  li x20, 0x1fabb551
                  li x21, 0x0
                  li x22, 0x4
                  li x24, 0x0
                  li x25, 0x48694b8d
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0xbdc594db
                  li x29, 0xa3c023a6
                  li x30, 0xf4f43222
                  li x31, 0xb
                  la x4, user_stack_end
main:             addi         s10, zero, 8 #init loop 0 counter
                  addi         a5, zero, 14 #init loop 0 limit
                  sltiu        a0, zero, 1822
                  auipc        s9, 853136
main_0_0_t:       sltu         s8, s1, a5
                  auipc        s0, 234306
                  add          gp, s5, a1
                  srl          s1, s5, s0
                  addi         s10, s10, 6 #update loop 0 counter
                  srl          t1, ra, a1
                  bltu         s10, a5, main_0_0_t #branch for loop 0
                  slli         s5, s1, 16
                  srai         s9, a1, 0
                  la           s0, sub_1
                  addi         s2, s9, 1495
                  lui          s5, 865779
                  srli         s6, t1, 16
                  addi         s0, s0, 298
                  slli         t3, s11, 13
                  sltiu        s2, zero, -1226
                  sltu         s9, a3, sp
                  sra          sp, gp, a1
                  addi         t4, a1, 1729
                  or           t6, a1, t6
main_j1:          jalr         a2, s0, -298 #jump main -> sub_1
                  srai         gp, a6, 27
                  srli         s10, a1, 24
                  lui          t4, 190995
                  beq          t1, s3, 6f
                  or           a7, a7, s10
6:                slli         t1, a3, 17
                  andi         t3, a2, -1556
                  bne          a2, t1, 10f
                  ori          s4, s9, 1070
10:               srl          a1, s3, s2
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bge          s9, t4, sub_2_stack_p
                  srli         ra, t1, 3
sub_2_stack_p:    addi         tp, tp, -56
                  sw           a2, 4(tp)
                  srl          a0, s0, a4
                  andi         a3, t6, 867
                  auipc        s1, 180810
                  lui          a4, 503266
                  and          s5, t4, a2
                  addi         a2, zero, 2 #init loop 0 counter
                  addi         sp, zero, -7 #init loop 0 limit
sub_2_1_0_t:      sltiu        ra, t4, 1532
                  addi         a2, a2, -10 #update loop 0 counter
                  bge          a2, sp, sub_2_1_0_t #branch for loop 0
                  srli         gp, s8, 0
                  addi         ra, zero, 10 #init loop 0 counter
                  addi         sp, s10, -1938
                  or           s0, s7, a7
                  sll          a7, ra, s10
                  xor          s5, s5, a6
                  srli         s8, t1, 24
                  ori          sp, a4, 1351
                  ori          t2, a4, 640
                  slti         a7, a2, 982
                  srl          a4, a1, a1
                  addi         s3, zero, 7 #init loop 0 limit
sub_2_0_0_t:      lui          gp, 856540
                  addi         ra, ra, -9 #update loop 0 counter
                  srai         s0, s4, 30
                  bge          ra, s3, sub_2_0_0_t #branch for loop 0
                  auipc        s0, 884665
                  addi         t1, zero, -6 #init loop 0 counter
                  auipc        a3, 610223
                  sll          a6, s6, zero
                  srli         t3, t1, 29
                  or           t2, s4, t6
                  xor          zero, s0, a1
                  srl          a7, t3, t6
                  addi         s1, zero, 1 #init loop 0 limit
                  and          a3, t2, a0
                  srai         s4, sp, 0
sub_2_6_0_t:      andi         a1, s9, 321
                  slti         a5, s7, 1249
                  sra          s9, a1, s1
                  sll          a6, a4, t5
                  ori          a6, s6, -562
                  slti         s2, s9, 130
                  ori          t4, t5, 1664
                  srai         a1, tp, 3
                  srl          s3, s11, s9
                  auipc        s5, 638990
                  addi         t1, t1, 7 #update loop 0 counter
                  ori          t2, gp, 1057
                  sltiu        s8, a0, -450
                  slt          a2, s10, zero
                  slli         t2, s4, 7
                  blt          t1, s1, sub_2_6_0_t #branch for loop 0
                  add          t5, a5, a3
                  addi         s2, zero, 2 #init loop 1 counter
                  sll          s11, a6, s5
                  xor          ra, t6, zero
                  sra          s9, a4, t6
                  slli         a7, s4, 20
                  addi         s4, zero, 16 #init loop 1 limit
sub_2_4_1_t:      slt          s9, a1, a3
                  addi         s2, s2, 1 #update loop 1 counter
                  addi         t6, t6, -94
                  addi         t1, zero, -10 #init loop 0 counter
                  srai         s6, s11, 9
                  addi         s6, a5, -1103
                  addi         a4, zero, -5 #init loop 0 limit
                  xori         a0, a2, -46
sub_2_4_0_t:      xori         sp, t2, 1317
                  addi         t1, t1, 10 #update loop 0 counter
                  srai         t6, s2, 1
                  blt          t1, a4, sub_2_4_0_t #branch for loop 0
                  srl          t4, s7, s6
                  andi         s0, sp, 1402
                  bltu         s2, s4, sub_2_4_1_t #branch for loop 1
                  lui          a0, 463159
                  addi         s10, zero, 6 #init loop 0 counter
                  xori         zero, a3, -1344
                  addi         a4, zero, 13 #init loop 0 limit
sub_2_5_0_t:      sub          t5, t6, t3
                  addi         t6, zero, -1932
                  xor          t5, a6, sp
                  addi         s10, s10, 10 #update loop 0 counter
                  slti         a7, t5, -283
                  bltu         s10, a4, sub_2_5_0_t #branch for loop 0
                  srai         a6, a4, 3
                  addi         gp, zero, 6 #init loop 1 counter
                  add          zero, t5, t1
                  ori          s4, zero, -1637
                  addi         a0, zero, -17 #init loop 1 limit
                  lui          s0, 328148
                  srai         zero, t3, 24
sub_2_3_1_t:      lui          t5, 404438
                  sltu         ra, t4, s9
                  addi         gp, gp, -3 #update loop 1 counter
                  sll          s5, t2, gp
                  addi         a5, zero, -7 #init loop 0 counter
                  addi         a7, zero, -17 #init loop 0 limit
                  xori         a4, tp, -1722
                  lui          s9, 332082
                  andi         a6, t0, -713
                  lui          a4, 620108
sub_2_3_0_t:      slt          zero, s3, a4
                  add          t1, s5, a4
                  nop
                  xori         a1, s4, -1461
                  xori         a6, a7, 1727
                  auipc        s4, 477660
                  addi         a5, a5, -10 #update loop 0 counter
                  lui          s0, 724670
                  sub          zero, a6, s4
                  bne          a5, a7, sub_2_3_0_t #branch for loop 0
                  sra          s3, a6, zero
                  sll          a1, t0, s1
                  srai         s3, s7, 3
                  srai         sp, s11, 11
                  xor          t6, tp, t1
                  sll          a6, a5, s9
                  bge          gp, a0, sub_2_3_1_t #branch for loop 1
                  xor          zero, s8, sp
                  srl          a1, ra, s7
                  lui          t1, 472575
                  slt          s10, sp, sp
                  or           s9, s7, a4
                  sltu         s1, s5, t3
                  srli         s3, s5, 7
                  and          zero, t1, a4
                  lui          s5, 929595
                  srli         s2, s11, 13
                  beq          a1, a4, 22f
                  slli         a6, a5, 23
                  slli         t6, a2, 30
                  lui          t3, 877639
                  ori          s11, t5, -1990
                  sra          zero, sp, a3
                  andi         s6, sp, -1394
                  or           a5, ra, t2
                  sub          zero, a6, t2
                  ori          s2, s9, -545
                  srl          a6, s9, s5
                  blt          a4, a6, 36f
                  and          t3, s1, gp
22:               sltu         t2, t2, t0
                  bge          s3, s5, 31f
                  andi         ra, t1, -1092
                  blt          t3, zero, 32f
                  bge          a2, gp, 39f
                  add          s0, t1, t3
                  xori         a4, s4, 1615
                  srli         s5, zero, 9
                  srl          s11, t4, s10
31:               srli         s5, t0, 29
32:               srai         ra, s9, 27
                  bgeu         s1, a2, 37f
                  xori         a1, t6, 431
                  beq          s5, a5, 38f
36:               bne          ra, ra, 40f
37:               srai         s10, s3, 11
38:               or           t2, a5, a5
39:               slti         s4, t2, -1175
40:               bge          t1, t2, 54f
                  sub          a2, s9, t0
                  lui          s10, 37234
                  slli         a0, s2, 29
                  ori          t3, s3, -379
                  bltu         a0, ra, 47f
                  sub          a3, t0, t0
47:               addi         a6, t4, -1909
                  andi         a4, t1, -1398
                  srl          sp, gp, s5
                  srli         a2, s3, 15
                  bne          s4, t3, 65f
                  blt          t5, a4, 69f
                  xori         s1, s7, -258
54:               sll          zero, sp, t4
                  xori         a6, s0, -905
                  addi         a3, s4, -931
                  slti         t4, s0, -805
                  slli         s9, t5, 3
                  srli         t2, t5, 11
                  bge          s6, sp, 76f
                  blt          t2, s8, 73f
                  auipc        a2, 358737
                  bne          ra, sp, 68f
                  addi         s2, t3, 561
65:               bgeu         s1, s4, 67f
                  addi         t1, t3, 2001
67:               xor          s4, ra, t4
68:               sltiu        sp, a6, -15
69:               slti         a5, s2, 1405
                  addi         t3, zero, 1975
                  xori         a5, gp, -52
                  bltu         ra, t1, 81f
73:               ori          s8, ra, -426
                  sra          s5, a2, s0
                  nop
76:               sra          a0, t0, a4
                  sltu         sp, s11, s9
                  xor          s0, s0, s6
                  addi         s0, zero, 9 #init loop 0 counter
                  auipc        s6, 283689
                  addi         a5, zero, -19 #init loop 0 limit
                  add          a7, s5, s1
sub_2_2_0_t:      ori          t3, s0, -165
                  addi         s0, s0, -4 #update loop 0 counter
                  sub          t2, gp, t2
                  beq          s0, a5, sub_2_2_0_t #branch for loop 0
                  addi         a2, t3, -1299
                  nop
                  srl          s10, s7, t0
81:               srl          t3, a0, a2
                  sub          zero, gp, tp
                  sra          s0, gp, t3
                  srli         zero, t6, 18
                  or           a5, ra, s4
                  ori          a1, a5, 695
                  slt          s8, s6, a4
                  sll          t4, s10, s8
                  srai         t1, t0, 0
                  sll          ra, zero, t5
                  blt          s5, ra, 100f
                  srl          s11, a5, s3
                  lui          a5, 947451
                  and          a3, t1, t6
                  sltiu        s10, a7, 1829
                  lui          a3, 409979
                  auipc        s4, 1036864
                  nop
                  addi         s0, s2, 1533
100:              auipc        t1, 638464
                  xori         s3, a4, -958
                  sub          a5, s7, zero
                  sub          s3, t1, a7
                  beq          a2, s9, 114f
                  auipc        s0, 65439
                  auipc        t3, 406831
                  srai         t1, a3, 17
                  add          s5, a1, a0
                  srli         s9, t3, 24
                  ori          a0, a3, 935
                  srai         sp, a6, 0
                  bne          t1, t0, 120f
                  sra          s8, s3, ra
114:              slli         s10, a2, 23
                  sub          t1, t5, s10
                  addi         a0, t3, 1087
                  or           ra, s1, a3
                  bge          s11, sp, sub_2_j4 #branch to jump instr
                  nop
                  xori         a5, zero, 595
                  sltu         t6, a2, s7
                  slli         t3, t5, 25
                  srli         t6, s5, 22
                  sub          a3, a6, s5
sub_2_j4:         jal          a2, sub_5 #jump sub_2 -> sub_5
                  sltu         s6, s9, a7
                  sll          a6, t1, s10
                  bne          ra, a2, 125f
                  beq          a1, s6, 139f
120:              nop
                  beq          t0, s4, 139f
                  sll          s1, s5, s8
                  blt          sp, s2, 128f
                  nop
125:              nop
                  sra          ra, a1, a3
                  bne          t3, a7, 129f
128:              slli         t6, t1, 19
129:              andi         gp, a1, 249
                  slt          a6, a2, sp
                  srai         s4, gp, 15
                  srai         a2, s9, 31
                  bge          s8, a0, 138f
                  ori          s8, t1, 870
                  srli         s8, a4, 12
                  bge          s1, s7, 137f
137:              sltiu        gp, t0, -831
138:              auipc        sp, 77661
139:              blt          a0, s11, 151f
                  sub          s3, s5, zero
                  sll          s0, a0, s6
                  andi         zero, s3, 295
                  xori         t5, a2, -1606
                  bgeu         s5, s3, 150f
                  xori         a4, sp, -103
                  ori          a3, t4, 1843
                  sltiu        t5, t3, 298
                  sra          t1, sp, t1
                  slli         s3, tp, 29
150:              sltiu        s11, s2, -1281
151:              bne          s6, a3, 164f
                  sll          gp, s8, s1
                  xori         t1, t0, 1402
                  andi         s5, sp, -2005
                  addi         a7, s7, -504
                  sub          s4, sp, t5
                  sltiu        s3, s8, 1046
                  blt          t6, ra, 163f
                  sra          a4, a0, s8
                  xor          s6, s6, s10
                  sub          t1, sp, sp
                  slt          sp, s10, a4
163:              xor          s2, a2, sp
164:              addi         s5, zero, 241
                  blt          s8, s10, 172f
                  beq          ra, s10, 169f
                  slti         a7, s5, -1578
                  bge          t6, t5, 184f
169:              sra          a0, a1, s6
                  auipc        s5, 777734
                  srli         s2, a5, 9
172:              sra          a4, tp, a2
                  sll          a0, a5, a0
                  srli         s9, s4, 10
                  or           a3, s11, s11
                  sltu         t6, sp, t2
                  srl          ra, a5, t1
                  bgeu         s0, s8, 183f
                  srl          gp, s4, sp
                  auipc        t1, 101780
                  bge          s2, sp, 182f
182:              srl          t1, s2, t6
183:              bne          s10, a3, 193f
184:              lui          t3, 354856
                  bltu         s11, s7, 189f
                  and          a6, s2, a3
                  nop
                  slt          t5, s10, s5
189:              sll          gp, s0, s8
                  srli         a2, t2, 31
                  auipc        a2, 597020
                  sra          a2, a3, a0
193:              bge          a3, tp, 206f
                  addi         t4, gp, -1150
                  and          s3, s1, a3
                  bge          t3, s1, 205f
                  srl          ra, t1, s9
                  bltu         s7, s4, 211f
                  bne          s4, s7, 201f
                  addi         t4, t2, -949
201:              ori          ra, zero, 2040
                  slli         a3, a3, 30
                  sltu         a2, a1, s11
                  srl          s6, s6, s9
205:              sltu         a3, gp, t2
206:              xori         s4, a1, -698
                  auipc        a0, 779416
                  beq          a6, s5, 222f
                  bgeu         t2, t4, 226f
                  slti         t4, t3, 250
211:              andi         t4, t6, 1401
                  slli         a3, a6, 11
                  or           s0, a1, ra
                  slt          ra, t3, s0
                  add          s6, gp, a6
                  srli         ra, s1, 27
                  add          s3, gp, s10
                  auipc        zero, 365508
                  srl          a0, t3, a6
                  nop
                  bne          zero, gp, 234f
222:              and          s11, s8, t5
                  auipc        s10, 554850
                  slti         s3, s10, 676
                  slti         s0, t1, 1808
226:              slti         s10, a0, 573
                  beq          t0, a1, 241f
                  sltu         a7, s0, s5
                  bne          a7, a2, 238f
                  srl          a3, a2, tp
                  ori          a5, a4, 153
                  bge          s5, a5, 239f
                  slti         a3, s7, 551
234:              lui          s10, 39952
                  srai         s6, s5, 5
                  andi         t6, s10, 1300
                  bne          a6, t6, 249f
238:              slti         a3, a2, -751
239:              slli         ra, a5, 13
                  andi         s4, s4, 1019
241:              beq          s8, t1, 245f
                  bge          t1, gp, 258f
                  bne          t3, s10, 263f
                  srli         s2, t5, 29
245:              ori          s1, a6, 434
                  auipc        a4, 756507
                  slli         s5, s3, 0
                  lui          s10, 350059
249:              addi         s6, a2, -1537
                  blt          s1, s0, 255f
                  xor          s6, t0, s0
                  sltiu        gp, s0, -665
                  auipc        a5, 8865
                  slti         ra, a0, -1124
255:              bge          sp, t2, 267f
                  sltiu        sp, s9, 1562
                  srli         a1, a4, 3
258:              blt          a2, tp, 260f
                  bltu         t3, t3, 267f
260:              bltu         t1, t4, 268f
                  and          s1, tp, a2
                  lui          s1, 141420
263:              andi         zero, a5, -1457
                  addi         s0, t0, -994
                  blt          s7, s3, 267f
                  and          s10, tp, a4
267:              slli         a7, s1, 14
268:              nop
                  xori         a5, a4, 187
                  srl          s5, a7, t0
                  bge          a0, a4, 289f
                  slli         a3, t2, 25
                  bne          s11, a1, 279f
                  andi         gp, t0, -1301
                  bltu         ra, s3, 288f
                  beq          a1, zero, 285f
                  sll          a2, gp, gp
                  bge          s1, t1, 280f
279:              slt          a7, s5, a0
280:              addi         a3, a7, -343
                  slli         ra, s4, 29
                  srl          s8, t6, t5
                  xori         a2, a1, 561
                  blt          gp, t6, 297f
285:              sra          s9, t6, t1
                  or           sp, gp, s9
                  slti         zero, t6, -1390
288:              andi         s9, a0, 1015
289:              and          t5, t3, s1
                  add          s10, sp, s11
                  sltu         t1, t4, t3
                  beq          sp, a2, 295f
                  slti         s6, s9, 1475
                  sll          s2, a1, s7
295:              blt          a4, t1, 299f
                  or           s4, s1, s4
297:              sra          s9, t0, s5
                  slti         s11, s6, 38
299:              nop
                  xor          ra, s6, s10
                  ori          a6, gp, -243
                  or           sp, a2, t0
                  beq          s0, a7, 309f
                  srli         s3, s10, 18
                  or           s6, a4, s7
                  xor          t4, t1, s7
                  sra          t2, s4, tp
                  ori          t4, t1, 604
309:              bgeu         s9, s1, 318f
                  sll          s6, t2, s7
                  blt          s8, a1, 329f
                  sltu         t1, t0, s10
                  sltiu        s6, t4, -1495
                  srai         a2, ra, 22
                  sll          s4, s3, a2
                  bgeu         s4, s1, 333f
                  srai         a5, a0, 3
318:              xor          a3, t6, s2
                  srli         a4, a0, 13
                  slti         s10, s8, 659
                  beq          a5, s9, 328f
                  lui          s5, 201987
                  and          zero, s9, a6
                  srai         s0, t1, 10
                  blt          s4, gp, 341f
                  sltu         t5, s8, t6
                  addi         gp, t4, 1964
328:              blt          t5, gp, 333f
329:              ori          a0, s2, 621
                  bne          s4, s2, 337f
                  bge          gp, zero, 336f
                  slli         s6, t1, 9
333:              bltu         s1, a3, 345f
                  slt          a3, t1, t4
                  and          a5, s9, a1
336:              or           a1, s2, s9
337:              and          s2, t5, s8
                  andi         s1, t3, 760
                  ori          s1, t6, -155
                  slt          s1, s7, t2
341:              beq          s4, a0, 350f
                  add          ra, zero, a2
                  sll          gp, t4, s3
                  sll          s4, t6, tp
345:              and          a7, gp, a7
                  xor          t4, a6, s8
                  slt          a1, a1, a6
                  bltu         s8, s4, 350f
                  sltu         s0, s2, s1
350:              xori         s0, t0, -61
                  srai         t1, s3, 21
                  lw           a2, 4(tp)
                  srai         gp, s8, 24
                  addi         tp, tp, 56
                  sub          t4, a1, a0
                  slti         t6, ra, 763
                  addi         t5, a0, 274
                  ori          s11, s7, 129
502:              addi x13, x12, 0
502:              jalr x13, x13, 0
sub_1:            slti         s2, s0, 1931
                  add          t3, t1, t0
                  addi         tp, tp, -20
                  xor          sp, s9, s5
                  srl          a5, a0, t3
                  sw           a2, 4(tp)
                  and          s8, s2, zero
                  addi         a0, zero, -9 #init loop 1 counter
                  addi         s2, zero, -7 #init loop 1 limit
sub_1_22_1_t:     xor          a4, a6, a2
                  addi         a0, a0, 2 #update loop 1 counter
                  addi         gp, zero, 5 #init loop 0 counter
                  addi         t5, zero, 13 #init loop 0 limit
sub_1_22_0_t:     sltu         a7, t4, a7
                  addi         gp, gp, 8 #update loop 0 counter
                  beq          gp, t5, sub_1_22_0_t #branch for loop 0
                  bne          a0, s2, sub_1_22_1_t #branch for loop 1
                  xori         a3, s11, 166
                  addi         gp, zero, -5 #init loop 0 counter
                  and          t2, t4, t5
                  xori         s9, s4, -466
                  lui          t2, 487025
                  and          a0, s0, s10
                  sub          s1, a0, sp
                  andi         s1, t5, -900
                  addi         s3, zero, 3 #init loop 0 limit
                  xor          t4, a6, s2
                  auipc        s5, 684302
                  xor          s9, t0, sp
                  sra          a4, a3, a7
                  slt          a4, a0, s3
sub_1_1_0_t:      andi         zero, ra, -841
                  add          sp, t1, zero
                  and          s1, t5, zero
                  slt          s4, s8, a2
                  xor          ra, a1, sp
                  addi         t3, s0, 605
                  addi         gp, gp, 8 #update loop 0 counter
                  srl          a4, s2, t0
                  bne          gp, s3, sub_1_1_0_t #branch for loop 0
                  sll          t2, tp, s0
                  addi         t1, zero, 1 #init loop 0 counter
                  addi         s0, zero, 4 #init loop 0 limit
sub_1_20_0_t:     lui          s2, 124404
                  xori         s10, s11, -2044
                  addi         t1, t1, 2 #update loop 0 counter
                  blt          t1, s0, sub_1_20_0_t #branch for loop 0
                  slli         t6, zero, 30
                  addi         t1, zero, 10 #init loop 1 counter
                  sub          a2, sp, a4
                  xor          t5, t3, s6
                  nop
                  slli         t6, tp, 30
                  sll          t6, a3, s0
                  auipc        s3, 613994
                  addi         ra, zero, 17 #init loop 1 limit
                  sra          t3, t1, t6
                  srl          s9, ra, s1
sub_1_9_1_t:      xori         a2, a4, -20
                  sltiu        s5, a6, -2009
                  slti         a7, s2, 161
                  sub          t3, a6, s11
                  addi         t1, t1, 8 #update loop 1 counter
                  add          t2, t1, t6
                  srl          a4, a4, a5
                  addi         s10, zero, -1 #init loop 0 counter
                  addi         a6, zero, 20 #init loop 0 limit
                  xor          a0, t3, s1
                  auipc        s0, 54103
                  auipc        a2, 811693
                  or           s0, zero, a1
sub_1_9_0_t:      andi         a1, t3, -1387
                  nop
                  addi         s10, s10, 3 #update loop 0 counter
                  ori          s6, a4, -128
                  slli         s3, sp, 4
                  auipc        s9, 757544
                  auipc        gp, 869841
                  blt          s10, a6, sub_1_9_0_t #branch for loop 0
                  srai         t4, a5, 16
                  blt          t1, ra, sub_1_9_1_t #branch for loop 1
                  sltiu        s6, gp, 1905
                  addi         s5, zero, -1 #init loop 0 counter
                  srl          s4, s5, s10
                  sltu         s10, s11, s1
                  slt          a4, s8, s8
                  lui          a0, 999044
                  auipc        s10, 196968
                  addi         a2, a4, -67
                  xori         t5, t6, -111
                  and          t4, a4, ra
                  slli         t6, a5, 0
                  srl          t5, a1, t1
                  sra          t1, sp, t5
                  ori          a2, sp, -336
                  addi         a1, a2, 5
                  auipc        t2, 516709
                  xori         a0, s11, -642
                  slt          a0, a0, tp
                  sra          t3, t6, gp
                  addi         s8, zero, -19 #init loop 0 limit
                  lui          ra, 379275
sub_1_24_0_t:     slti         s10, gp, -1761
                  sltiu        a4, t1, 1318
                  addi         s5, s5, -3 #update loop 0 counter
                  bge          s5, s8, sub_1_24_0_t #branch for loop 0
                  add          a3, s7, t5
                  addi         a0, zero, 10 #init loop 0 counter
                  slt          s11, a1, gp
                  nop
                  srai         s1, a0, 3
                  or           a5, a3, gp
                  sll          s9, sp, a4
                  addi         s5, zero, 14 #init loop 0 limit
                  or           s4, s0, s6
sub_1_16_0_t:     andi         s1, tp, 546
                  addi         a4, s4, -1730
                  and          zero, a3, a3
                  andi         s2, s4, -1156
                  or           a7, s8, s10
                  slt          a5, s8, s4
                  andi         t6, a1, -1930
                  addi         a0, a0, 10 #update loop 0 counter
                  srai         gp, s2, 11
                  addi         ra, s2, -506
                  ori          s8, a5, -1360
                  slt          t3, s6, a1
                  sll          t6, s10, t5
                  sltu         s10, s9, a7
                  slti         s3, s1, 1119
                  sra          s10, s3, s9
                  blt          a0, s5, sub_1_16_0_t #branch for loop 0
                  srli         t4, a5, 8
                  addi         s10, zero, -8 #init loop 0 counter
                  or           s3, ra, tp
                  xor          t2, t0, a2
                  addi         t6, zero, 18 #init loop 0 limit
                  slt          a4, t0, s9
                  addi         s1, t0, -398
                  sltu         sp, t0, s10
                  srai         a3, t5, 17
                  srai         a5, t6, 27
sub_1_28_0_t:     addi         s4, s5, -570
                  auipc        s3, 799104
                  andi         a7, t5, 1311
                  addi         s10, s10, 5 #update loop 0 counter
                  auipc        s2, 509364
                  srl          t1, s1, s4
                  slt          t2, t3, s9
                  slt          gp, s11, s10
                  slt          s1, zero, ra
                  xor          s3, a3, s10
                  sub          s0, a3, a1
                  bltu         s10, t6, sub_1_28_0_t #branch for loop 0
                  lui          a1, 791250
                  addi         a1, zero, 5 #init loop 0 counter
                  srl          s6, t4, t4
                  andi         gp, t3, -208
                  sra          a7, sp, tp
                  addi         s9, zero, 5 #init loop 0 limit
                  srli         t3, zero, 2
sub_1_11_0_t:     and          s0, t4, s4
                  addi         a1, a1, -2 #update loop 0 counter
                  addi         s5, s8, 557
                  srai         gp, s0, 11
                  and          s0, t2, t0
                  sra          a2, s6, t0
                  bgeu         a1, s9, sub_1_11_0_t #branch for loop 0
                  sltu         s0, gp, a1
                  addi         a5, zero, -8 #init loop 1 counter
                  or           t4, t3, a0
                  and          t4, t4, gp
                  addi         t6, zero, 2 #init loop 1 limit
sub_1_6_1_t:      lui          a1, 495074
                  andi         s9, a6, 1131
                  addi         a5, a5, 10 #update loop 1 counter
                  slli         zero, s9, 22
                  addi         s0, zero, 9 #init loop 0 counter
                  srli         a4, t0, 5
                  and          s11, a0, t4
                  lui          s9, 268293
                  andi         a2, a0, -1752
                  addi         a6, zero, 6 #init loop 0 limit
sub_1_6_0_t:      xori         a7, s6, -277
                  srli         s11, t4, 1
                  addi         s0, s0, -4 #update loop 0 counter
                  bgeu         s0, a6, sub_1_6_0_t #branch for loop 0
                  andi         t5, a1, 870
                  beq          a5, t6, sub_1_6_1_t #branch for loop 1
                  srli         a3, t2, 5
                  addi         t5, zero, -3 #init loop 1 counter
                  srai         gp, a1, 0
                  slli         s2, s9, 8
                  sltiu        s4, ra, 1375
                  srai         s1, t2, 8
                  addi         a0, s9, 1237
                  addi         s9, zero, -4 #init loop 1 limit
                  xori         s0, s10, -66
sub_1_29_1_t:     sub          t2, s4, s9
                  addi         t5, t5, -1 #update loop 1 counter
                  srli         a5, s2, 28
                  addi         a4, zero, 4 #init loop 0 counter
                  slt          s3, t2, t1
                  addi         s11, a1, -1180
                  and          s4, s7, s4
                  addi         sp, zero, 6 #init loop 0 limit
                  ori          t4, s1, -182
sub_1_29_0_t:     addi         a6, s0, 1549
                  addi         a4, a4, 2 #update loop 0 counter
                  xor          a0, a5, ra
                  beq          a4, sp, sub_1_29_0_t #branch for loop 0
                  nop
                  slt          t6, a0, s9
                  nop
                  beq          t5, s9, sub_1_29_1_t #branch for loop 1
                  xori         s11, s1, -1155
                  addi         ra, zero, 10 #init loop 1 counter
                  addi         t1, zero, 12 #init loop 1 limit
sub_1_14_1_t:     lui          gp, 698802
                  ori          s4, s2, 1912
                  addi         ra, ra, 2 #update loop 1 counter
                  addi         s1, zero, -3 #init loop 0 counter
                  addi         s8, zero, -13 #init loop 0 limit
sub_1_14_0_t:     addi         gp, s4, 615
                  addi         s1, s1, -10 #update loop 0 counter
                  srli         t3, t5, 11
                  beq          s1, s8, sub_1_14_0_t #branch for loop 0
                  bltu         ra, t1, sub_1_14_1_t #branch for loop 1
                  xori         a6, s3, 1137
                  addi         s4, zero, 2 #init loop 0 counter
                  lui          t4, 613500
                  sltiu        s0, t3, -1644
                  sltiu        a2, ra, -982
                  srai         s0, s4, 15
                  and          a1, zero, a0
                  or           t5, s0, a1
                  ori          ra, t3, 53
                  lui          a5, 391603
                  add          s11, s2, ra
                  ori          t6, a3, -1121
                  lui          t6, 162308
                  srai         a3, s7, 13
                  xor          t5, a4, t3
                  xor          s10, a7, s0
                  srli         t6, s11, 7
                  or           a1, a4, sp
                  addi         a0, zero, 14 #init loop 0 limit
                  srl          s1, a1, s1
                  sub          a7, s10, gp
sub_1_8_0_t:      xor          s0, a4, s1
                  sltiu        s11, a6, 516
                  addi         s4, s4, 6 #update loop 0 counter
                  slti         s5, t5, 144
                  auipc        s8, 903956
                  bltu         s4, a0, sub_1_8_0_t #branch for loop 0
                  srai         s6, gp, 12
                  addi         a4, zero, 10 #init loop 0 counter
                  addi         s5, zero, -20 #init loop 0 limit
sub_1_5_0_t:      add          a7, a4, s4
                  addi         a4, a4, -6 #update loop 0 counter
                  beq          a4, s5, sub_1_5_0_t #branch for loop 0
                  auipc        t4, 167838
                  addi         t1, zero, -10 #init loop 0 counter
                  sltu         a0, s6, s10
                  lui          s8, 632945
                  sra          s9, t4, s8
                  sra          s6, a5, sp
                  and          s9, t6, a1
                  addi         s11, zero, 12 #init loop 0 limit
                  sub          a0, t5, a1
                  auipc        gp, 208964
                  sll          a5, s4, s2
                  xor          a5, tp, zero
                  and          sp, s11, t1
                  sra          a6, s3, s5
sub_1_10_0_t:     and          s6, ra, a7
                  addi         t1, t1, 1 #update loop 0 counter
                  sltu         t2, s1, gp
                  sltu         a4, a5, a5
                  sra          s9, s7, s0
                  ori          s2, tp, 84
                  xor          t6, a7, s6
                  add          s6, a3, s0
                  and          gp, t2, tp
                  slli         s5, t3, 16
                  add          a1, tp, tp
                  srl          t6, s11, t0
                  slti         s9, a2, -1028
                  beq          t1, s11, sub_1_10_0_t #branch for loop 0
                  sub          s4, t4, t3
                  addi         a3, zero, 10 #init loop 0 counter
                  sub          ra, s3, s5
                  add          s6, a2, t2
                  lui          s8, 1045694
                  srli         gp, t3, 1
                  andi         a0, a3, 1253
                  slti         t3, s9, 1700
                  addi         a7, zero, 10 #init loop 0 limit
                  or           ra, s4, a0
sub_1_15_0_t:     nop
                  sltu         sp, s11, s3
                  xor          s11, s8, a3
                  addi         a3, a3, -9 #update loop 0 counter
                  and          s2, a1, s9
                  add          s10, s5, a2
                  andi         s2, ra, -606
                  xori         gp, t3, -1617
                  slti         gp, s9, -1354
                  and          a5, a7, s2
                  srl          a6, ra, a2
                  xori         a1, s0, -16
                  lui          a2, 602698
                  xor          s1, tp, t4
                  sltu         t6, t6, s0
                  sltiu        s1, s8, 595
                  sub          s0, t5, a2
                  bgeu         a3, a7, sub_1_15_0_t #branch for loop 0
                  srli         s8, a4, 9
                  addi         a2, zero, -7 #init loop 0 counter
                  srai         sp, a5, 20
                  sra          t2, gp, a5
                  auipc        a7, 157991
                  sltiu        s4, t6, -338
                  lui          t2, 663306
                  or           t1, a6, a2
                  addi         s5, zero, 19 #init loop 0 limit
                  xor          s11, gp, t2
                  lui          s3, 865920
                  srai         a1, a6, 30
                  and          gp, t4, s0
sub_1_13_0_t:     or           zero, ra, t6
                  sra          a7, a2, ra
                  addi         a2, a2, 1 #update loop 0 counter
                  andi         t4, t3, 1654
                  bltu         a2, s5, sub_1_13_0_t #branch for loop 0
                  add          s3, gp, s10
                  addi         a1, zero, 6 #init loop 0 counter
                  auipc        t3, 791244
                  srl          t1, a4, a4
                  andi         s0, gp, -1933
                  slt          zero, gp, a5
                  srli         s5, zero, 5
                  or           s5, s10, a5
                  sub          gp, s4, s2
                  add          t4, s9, a1
                  addi         s6, zero, -12 #init loop 0 limit
                  srli         zero, a7, 6
sub_1_4_0_t:      andi         t1, s11, -1965
                  slt          a2, a0, t0
                  addi         a1, a1, -9 #update loop 0 counter
                  slti         t3, s6, 1627
                  ori          gp, s3, 1847
                  sub          ra, s4, t5
                  lui          a2, 515139
                  sra          sp, t4, gp
                  srl          s10, t0, tp
                  beq          a1, s6, sub_1_4_0_t #branch for loop 0
                  nop
                  addi         s8, zero, 8 #init loop 1 counter
                  andi         sp, a3, -955
                  add          a1, t2, s5
                  addi         t4, zero, 11 #init loop 1 limit
                  slt          sp, tp, s1
sub_1_21_1_t:     slt          a3, a5, t1
                  nop
                  sltiu        t3, zero, 932
                  addi         s8, s8, 3 #update loop 1 counter
                  auipc        a7, 130348
                  lui          s4, 787314
                  addi         s0, zero, 8 #init loop 0 counter
                  slli         s5, a1, 25
                  addi         t5, zero, 7 #init loop 0 limit
                  add          t6, a3, a5
                  ori          a0, ra, 527
sub_1_21_0_t:     addi         s11, s6, 1524
                  addi         s0, s0, -1 #update loop 0 counter
                  xori         gp, sp, -1815
                  slti         s3, s11, -891
                  addi         zero, s6, 457
                  sltiu        s3, t5, -614
                  nop
                  bgeu         s0, t5, sub_1_21_0_t #branch for loop 0
                  sltu         sp, t2, s10
                  sub          sp, t4, a0
                  bne          s8, t4, sub_1_21_1_t #branch for loop 1
                  slli         a1, t0, 14
                  addi         a5, zero, 6 #init loop 1 counter
                  xor          a3, t2, s11
                  ori          a1, gp, 801
                  slti         s0, t6, -1966
                  andi         sp, a6, 1848
                  slt          gp, s11, t5
                  nop
                  srl          a6, sp, s6
                  xori         s9, s3, 537
                  srli         t5, a5, 25
                  sltiu        sp, s9, -463
                  addi         s11, zero, 6 #init loop 1 limit
                  ori          s2, s9, -657
sub_1_3_1_t:      lui          s3, 597959
                  srai         s1, s2, 13
                  addi         a5, a5, -5 #update loop 1 counter
                  addi         s5, zero, -10 #init loop 0 counter
                  slt          a4, a6, s6
                  and          zero, s8, a2
                  addi         s6, zero, -20 #init loop 0 limit
                  ori          t3, s3, -1960
sub_1_3_0_t:      addi         a6, s11, -370
                  xori         s10, s6, -991
                  add          ra, s0, s8
                  addi         s5, s5, -1 #update loop 0 counter
                  lui          t4, 455498
                  nop
                  or           ra, t5, s11
                  beq          s5, s6, sub_1_3_0_t #branch for loop 0
                  srl          s4, s3, a2
                  sra          a4, a4, s10
                  slti         s9, s0, -1573
                  bgeu         a5, s11, sub_1_3_1_t #branch for loop 1
                  sltu         s1, t1, gp
                  addi         s3, zero, -1 #init loop 1 counter
                  slti         a4, s10, -979
                  andi         a6, a7, -1682
                  nop
                  addi         a7, zero, 15 #init loop 1 limit
                  andi         s10, s3, -1950
                  sra          t1, t0, s4
sub_1_18_1_t:     auipc        s4, 869762
                  slli         s4, t0, 22
                  srai         a2, s4, 12
                  slli         s2, s11, 0
                  sltu         t4, a3, s6
                  sll          zero, a7, s7
                  sub          zero, a1, s2
                  addi         s3, s3, 3 #update loop 1 counter
                  sra          s0, s10, a1
                  sll          t2, zero, zero
                  addi         s8, zero, 7 #init loop 0 counter
                  srai         sp, s9, 19
                  addi         s1, zero, 20 #init loop 0 limit
                  or           a1, a0, s5
sub_1_18_0_t:     nop
                  addi         s8, s8, 1 #update loop 0 counter
                  andi         t5, t2, 1110
                  sub          a2, ra, s2
                  srai         s5, s8, 9
                  bltu         s8, s1, sub_1_18_0_t #branch for loop 0
                  xori         s10, a7, -257
                  add          s11, a4, ra
                  bltu         s3, a7, sub_1_18_1_t #branch for loop 1
                  srli         s5, s6, 1
                  addi         a0, zero, -7 #init loop 0 counter
                  addi         t5, zero, -12 #init loop 0 limit
sub_1_12_0_t:     sltiu        s1, t4, 177
                  addi         a0, a0, -3 #update loop 0 counter
                  ori          s2, t4, 903
                  bge          a0, t5, sub_1_12_0_t #branch for loop 0
                  auipc        t3, 12828
                  addi         a2, zero, -1 #init loop 0 counter
                  auipc        s3, 736728
                  sra          s10, t1, s4
                  and          s3, a1, s1
                  lui          s4, 409767
                  sltiu        sp, a5, -850
                  xor          a4, a2, a0
                  addi         s9, zero, 11 #init loop 0 limit
                  srli         a6, s6, 11
                  ori          zero, gp, -672
                  sll          a3, a7, a7
                  slli         a5, s9, 20
                  sub          s5, t6, ra
                  srli         s4, t6, 5
sub_1_23_0_t:     sltiu        t5, s5, -1901
                  auipc        s8, 143912
                  auipc        ra, 843984
                  addi         a2, a2, 2 #update loop 0 counter
                  srai         ra, t6, 23
                  sltu         t4, s5, gp
                  srl          s1, a1, s1
                  andi         a3, ra, -784
                  auipc        sp, 717097
                  blt          a2, s9, sub_1_23_0_t #branch for loop 0
                  sub          s11, s0, s2
                  addi         t1, zero, 7 #init loop 0 counter
                  nop
                  sltu         s3, a3, zero
                  sra          s8, t6, a3
                  sltiu        a3, s9, -1937
                  srai         a6, a0, 7
                  xor          s11, s10, t5
                  sub          t5, t3, a6
                  addi         a1, zero, 15 #init loop 0 limit
                  srl          s8, a4, a7
                  xori         t3, a4, -680
                  sll          a3, s4, a3
sub_1_19_0_t:     sltiu        zero, a4, 737
                  sll          t5, tp, s4
                  ori          a4, t4, 1808
                  slti         s9, s3, -1319
                  sltu         s4, a6, s8
                  addi         t1, t1, 1 #update loop 0 counter
                  xori         a5, s9, 621
                  beq          t1, a1, sub_1_19_0_t #branch for loop 0
                  srl          s3, s2, s10
                  addi         t1, zero, -2 #init loop 1 counter
                  slti         t2, a4, 666
                  addi         t3, zero, -12 #init loop 1 limit
sub_1_26_1_t:     auipc        a4, 361313
                  addi         t1, t1, -1 #update loop 1 counter
                  lui          s1, 875690
                  addi         s9, zero, 10 #init loop 0 counter
                  ori          a6, t5, -1820
                  addi         a3, zero, 17 #init loop 0 limit
sub_1_26_0_t:     sltiu        ra, gp, -772
                  add          t6, a3, t3
                  slt          t4, s11, t6
                  addi         s9, s9, 7 #update loop 0 counter
                  sub          gp, t0, gp
                  beq          s9, a3, sub_1_26_0_t #branch for loop 0
                  beq          t1, t3, sub_1_26_1_t #branch for loop 1
                  lui          t4, 914784
                  addi         s3, zero, 7 #init loop 0 counter
                  addi         ra, zero, -6 #init loop 0 limit
                  srli         s2, a3, 14
sub_1_27_0_t:     slti         s8, a6, -186
                  addi         s3, s3, -10 #update loop 0 counter
                  addi         s1, s1, -1539
                  bge          s3, ra, sub_1_27_0_t #branch for loop 0
                  ori          t4, s3, 1287
                  addi         ra, zero, -3 #init loop 1 counter
                  addi         a4, zero, -13 #init loop 1 limit
sub_1_25_1_t:     slti         s2, tp, 754
                  addi         ra, ra, -9 #update loop 1 counter
                  addi         t2, zero, 6 #init loop 0 counter
                  addi         s1, zero, -1 #init loop 0 limit
sub_1_25_0_t:     ori          gp, zero, -1553
                  lui          a3, 570397
                  addi         t2, t2, -7 #update loop 0 counter
                  bge          t2, s1, sub_1_25_0_t #branch for loop 0
                  bge          ra, a4, sub_1_25_1_t #branch for loop 1
                  nop
                  addi         t5, zero, -1 #init loop 0 counter
                  xor          a0, t1, ra
                  lui          a2, 1013261
                  addi         s6, sp, -34
                  nop
                  ori          s9, s3, 1406
                  srai         s9, a1, 23
                  slt          s8, t4, zero
                  xor          a0, s2, s2
                  addi         zero, a5, 258
                  addi         a4, zero, 19 #init loop 0 limit
sub_1_0_0_t:      and          a3, a0, s3
                  sll          s0, a7, a3
                  add          s4, t2, a7
                  sub          t3, t6, a7
                  addi         t5, t5, 5 #update loop 0 counter
                  sra          s9, s5, a0
                  slli         s4, s11, 25
                  srai         zero, s1, 15
                  slt          a5, a4, t4
                  auipc        s3, 227446
                  slli         sp, t6, 18
                  lui          s11, 296813
                  srli         t4, s5, 27
                  srli         s0, s8, 21
                  srai         s8, a4, 21
                  bltu         t5, a4, sub_1_0_0_t #branch for loop 0
                  sltu         a6, a2, gp
                  srai         s0, t6, 0
                  add          ra, s9, a6
                  add          a3, t5, a4
                  add          a0, gp, t1
                  bltu         s10, t5, 13f
                  nop
                  sub          t3, a2, a0
                  srli         ra, a6, 5
                  srai         s9, t5, 18
                  slti         gp, t3, 2026
                  sltu         a7, t1, a1
                  andi         a7, t4, 372
                  srai         t6, a0, 21
13:               xor          s2, a3, a7
                  nop
                  bne          tp, a7, 24f
                  slli         a7, t0, 19
                  srai         zero, t0, 11
                  xor          s2, a2, a3
                  blt          s7, s11, 38f
                  bltu         a3, t4, 24f
                  sltu         s8, t2, t4
                  srai         s1, s8, 14
                  bltu         s5, s7, 28f
24:               sra          t1, t1, s1
                  sltu         zero, s5, t2
                  lui          t2, 777534
                  bltu         s9, s6, 33f
28:               xori         s9, t3, -714
                  slti         s10, t5, 481
                  beq          s11, s1, 49f
                  slli         t4, a2, 19
                  slli         ra, s4, 21
33:               slt          gp, s8, a3
                  sltu         t2, s4, a1
                  andi         t4, tp, 784
                  slti         s1, zero, 352
                  sltiu        s0, sp, 325
38:               sub          t1, t3, t5
                  sll          s6, s8, t2
                  sra          t1, s5, a7
                  blt          s3, s1, 54f
                  sub          zero, s2, a3
                  nop
                  bne          t6, s6, 58f
                  blt          s5, s0, 62f
                  srai         t4, a2, 9
                  srai         sp, s8, 8
                  xori         s5, t2, 446
49:               slli         s6, s5, 20
                  sub          s6, t0, s11
                  lui          a5, 782858
                  auipc        s6, 174658
                  slt          s6, a3, zero
54:               xori         s2, a1, 1376
                  sll          t1, t6, t5
                  and          t5, s2, s2
                  or           a5, s5, t0
58:               sll          t1, s3, t2
                  srai         s1, a6, 25
                  sltiu        s1, a6, -1914
                  or           s0, s6, s1
62:               sltu         sp, s6, a7
                  sub          s3, s0, s9
                  auipc        t6, 905123
                  srl          a7, s4, s6
                  srai         zero, t0, 18
                  sll          ra, s4, a3
                  nop
                  ori          a5, t2, -1854
                  slli         a6, s11, 4
                  sra          t3, s4, t4
                  add          s8, s0, t0
                  add          s3, s4, s4
                  sltu         s4, s5, gp
                  xor          a1, s3, s11
                  beq          t0, t4, 88f
                  slti         s2, t5, 1864
                  andi         a3, a1, 1172
                  slti         s9, s3, -484
                  srl          t2, t4, t1
                  bltu         s3, s5, 96f
                  ori          sp, s11, 1781
                  andi         a4, s1, 1065
                  slli         s4, zero, 21
                  and          s9, t4, zero
                  bgeu         s8, s1, 90f
                  bgeu         t5, t4, 99f
88:               lui          s5, 349380
                  bge          a1, t4, 96f
90:               srai         s10, t0, 26
                  addi         s11, a4, 1504
                  bne          tp, gp, 95f
                  sltu         t3, a2, a7
                  slli         s10, t0, 30
95:               add          s11, s7, a0
96:               xori         s4, sp, 164
                  srl          s3, a4, s0
                  beq          t6, ra, 105f
99:               bltu         s9, t1, 118f
                  xor          s8, t4, s8
                  bltu         a7, s3, 116f
                  xor          a1, t5, s6
                  add          a7, s8, s0
                  auipc        a4, 451597
105:              or           t2, a0, t3
                  auipc        s11, 929529
                  bne          s0, a2, 126f
                  addi         t4, s10, -1131
                  sltiu        s0, s7, 952
                  sltiu        s0, s4, -1231
                  addi         a6, t6, -2048
                  xor          a1, a3, s1
                  srli         s5, s3, 30
                  or           s2, zero, s8
                  slli         gp, s0, 24
116:              addi         a3, t6, -648
                  ori          s10, s0, 1587
118:              blt          t3, a2, 128f
                  sll          gp, s7, zero
                  slti         a4, t3, 64
                  andi         s11, a6, 1918
                  add          s10, s9, s6
                  bgeu         ra, t2, 132f
                  auipc        s2, 770919
                  sub          s5, s3, s4
126:              srli         s5, s2, 0
                  sltu         a3, s11, s0
128:              beq          tp, t1, 131f
                  add          s11, t3, tp
                  slt          gp, s10, s6
131:              bne          s2, a6, 150f
132:              and          s11, zero, a5
                  bne          s6, a2, 141f
                  srl          t6, s0, sp
                  sra          t2, s11, a4
                  sub          t3, s11, s9
                  bgeu         t2, s6, 143f
                  and          a5, a1, a3
                  and          t6, a0, a7
                  addi         s0, s10, 994
141:              bne          s11, s8, 148f
                  addi         s4, s3, -438
143:              bgeu         s10, t1, 162f
                  bltu         a6, s11, 151f
                  beq          s3, t2, 164f
                  slli         ra, s9, 28
                  sll          s1, s5, a5
148:              bltu         t2, s9, 154f
                  slti         s8, s6, 1177
150:              sll          sp, t3, t4
151:              bltu         t5, a3, 170f
                  bge          a0, a6, 164f
                  xori         s9, s10, -1183
154:              addi         gp, a3, -1210
                  addi         s11, a2, 157
                  addi         a6, a5, 1220
                  xor          t4, t0, a3
                  sltiu        a1, t1, 4
                  xor          t6, ra, t2
                  xori         s8, sp, -1012
                  sltu         sp, s6, t0
162:              slli         zero, gp, 30
                  lui          s1, 799228
164:              addi         s8, s7, -581
                  srli         gp, s2, 17
                  sll          t5, a6, s2
                  sra          a4, t0, a5
                  sltu         t3, s8, a3
                  bltu         a1, t1, 173f
170:              or           zero, t4, tp
                  bltu         t6, s6, 186f
                  sltiu        a2, s0, 1986
173:              andi         zero, t5, 688
                  bge          a1, t3, 183f
                  bgeu         a1, a6, 181f
                  sra          s0, t1, s10
                  nop
                  blt          a0, a2, 185f
                  sltiu        s9, gp, 655
                  blt          sp, a0, 192f
181:              add          a6, s0, s8
                  lui          t2, 336370
183:              lui          s8, 174663
                  sll          a1, zero, s3
185:              nop
186:              or           a4, s0, gp
                  sltu         a2, a1, s11
                  srl          s5, s1, a5
                  blt          a2, t4, 208f
                  srli         s6, s0, 6
                  beq          zero, a0, 198f
192:              and          s9, s10, s2
                  srl          s1, t0, s1
                  and          zero, a3, a6
                  srai         s11, a5, 13
                  slt          s5, t1, s3
                  or           sp, t3, ra
198:              add          ra, t2, s5
                  srai         t1, a7, 0
                  bge          t6, s7, 215f
                  add          a7, a7, s5
                  blt          s3, s11, 216f
                  slti         s11, zero, 278
                  auipc        s9, 952167
                  blt          a5, t4, 208f
                  srli         s0, t6, 15
                  srl          a1, ra, s9
208:              slti         t5, a5, 178
                  auipc        a1, 491386
                  add          sp, t5, ra
                  lui          s2, 800829
                  blt          s2, zero, 222f
                  bne          a2, a4, 232f
                  xori         s0, s9, -242
215:              sll          s3, t2, a3
216:              blt          s10, s10, 235f
                  srli         t4, s10, 0
                  slti         s6, s2, -375
                  xori         s5, t3, 623
                  andi         a4, s7, 1797
                  xori         s2, t0, -1494
222:              srl          a2, a7, gp
                  or           s9, s6, s1
                  xori         a7, a1, -664
                  sltu         s9, gp, s2
                  nop
                  lui          s1, 713443
                  srl          sp, ra, a2
                  addi         s11, zero, 1 #init loop 0 counter
                  srli         s10, s10, 30
                  nop
                  sub          s3, a3, a0
                  sltu         t2, t3, zero
                  add          s10, a2, t5
                  slli         s2, gp, 15
                  ori          a3, s11, 1678
                  sll          gp, a5, t4
                  add          sp, a4, t3
                  lui          s5, 95799
                  addi         t3, zero, -15 #init loop 0 limit
                  ori          s3, s10, -720
                  xori         gp, t6, 1962
sub_1_2_0_t:      xori         s1, a5, -1703
                  xori         t5, t2, 269
                  xori         a5, t4, 401
                  xori         a5, t6, 1299
                  sra          s8, s10, a1
                  andi         s5, t2, -426
                  sltiu        s2, t0, 254
                  addi         s11, s11, -6 #update loop 0 counter
                  slt          a1, s5, zero
                  sltiu        t1, s2, -2002
                  add          a2, a5, s7
                  andi         a2, tp, 1064
                  and          t5, a5, a3
                  bge          s11, t3, sub_1_2_0_t #branch for loop 0
                  and          a2, t3, t6
                  srl          t1, sp, a6
                  lui          t2, 259438
                  xor          a2, ra, a5
232:              slt          zero, s4, s9
                  auipc        t2, 550672
                  sra          a1, zero, gp
235:              xori         s3, t5, -82
                  xori         s9, s10, -933
                  srli         a4, t5, 16
                  andi         s6, a0, 658
                  ori          s5, t6, 1612
                  slt          t6, a3, s1
                  beq          s7, a3, 260f
                  auipc        a1, 841688
                  sll          a4, a7, tp
                  andi         a5, a0, 92
                  blt          s11, s3, 252f
                  auipc        s8, 700209
                  auipc        s5, 786852
                  xor          ra, s9, a4
                  slti         zero, s11, -792
                  bgeu         a5, a5, 263f
                  auipc        s8, 553176
252:              sub          t3, s9, sp
                  sltiu        a4, a7, 1521
                  slt          t1, s3, a4
                  lui          s0, 986537
                  srli         sp, s2, 28
                  blt          s1, a1, 260f
                  addi         s1, t2, -1049
                  sra          sp, t4, a2
260:              srl          s5, a4, a2
                  or           ra, zero, a6
                  auipc        t6, 939976
263:              bge          s7, a5, 280f
                  slt          a2, tp, t6
                  srai         s11, s4, 31
                  sub          s6, s8, a7
                  srl          a5, ra, a6
                  xori         a5, s9, -711
                  srl          s9, s11, s3
                  and          s11, s7, s0
                  srl          t6, s0, s9
                  ori          s3, t0, 1447
                  ori          s8, t3, -386
                  add          ra, s5, a7
                  and          sp, s3, s2
                  blt          s4, a0, 280f
                  sltu         a3, a4, s8
                  bge          s6, s6, 285f
                  bge          gp, a7, 284f
280:              and          s4, s4, s5
                  bne          a1, t0, 300f
                  sltu         a5, a5, t4
                  bge          t4, s11, 292f
284:              lui          gp, 245375
285:              blt          s7, s8, 304f
                  bltu         s8, s1, 294f
                  addi         s10, s8, -802
                  slt          t2, t0, gp
                  srli         s11, s5, 17
                  lui          s3, 714549
                  bgeu         zero, tp, 300f
292:              bne          s5, s7, 304f
                  nop
294:              or           a2, s7, gp
                  or           t2, t5, t1
                  bge          a0, t2, 309f
                  srli         s9, a0, 21
                  srli         s3, s7, 14
                  auipc        sp, 439659
300:              srli         s5, sp, 9
                  bltu         a6, s11, 308f
                  bgeu         t6, s9, 309f
                  and          s8, zero, t5
304:              ori          t3, t2, -1462
                  beq          t5, s0, 311f
                  bge          s2, s8, 323f
                  slt          s3, a3, t4
308:              bge          s2, a1, 317f
309:              ori          ra, s7, 637
                  bne          t5, a0, 329f
311:              nop
                  addi         s5, s2, 1097
                  addi         t2, t1, -1686
                  ori          s8, a7, -1543
                  srai         t4, s0, 6
                  addi         a1, a5, 2043
317:              bgeu         s0, s0, 336f
                  sltiu        zero, t2, -684
                  slt          a1, t2, a3
                  sll          s5, s11, s10
                  slt          sp, s1, s7
                  nop
323:              bltu         s5, gp, 330f
                  addi         s11, t2, 14
                  sub          a5, ra, t2
                  srli         s2, t6, 17
                  auipc        t5, 50064
                  srli         ra, s0, 8
329:              xori         s10, s3, -772
330:              slt          s3, a7, s1
                  xor          a7, tp, a4
                  blt          s7, t2, 335f
                  bge          tp, s6, 337f
                  sltu         s1, s7, a3
335:              slt          ra, a7, s6
336:              srai         a3, a0, 6
337:              add          t2, a5, t1
                  sub          s8, s9, s1
                  bne          a4, tp, 348f
                  addi         s4, s1, -1583
                  auipc        t1, 918691
                  slt          gp, a0, t0
                  ori          s10, s6, 1226
                  bne          a4, a2, 347f
                  srl          gp, s1, t3
                  bge          s6, a2, 354f
347:              sra          a6, t3, t5
348:              bge          sp, a2, 357f
                  ori          sp, s2, -795
                  nop
                  addi         a2, sp, 729
                  srai         a5, s9, 6
                  blt          a7, a2, 360f
354:              bgeu         t4, s11, 369f
                  bltu         s0, s9, 361f
                  and          t6, s7, s10
357:              addi         a6, a0, 1384
                  blt          s0, s4, 377f
                  sll          gp, s0, t4
360:              andi         t5, t0, 2004
361:              slti         zero, t6, 784
                  and          sp, s2, s9
                  bltu         t3, a2, 382f
                  add          a6, s2, t5
                  auipc        s5, 39316
                  srl          a1, s9, t4
                  sltu         a6, s0, t1
                  slti         s2, s9, 998
369:              xor          sp, s6, t4
                  nop
                  lui          t3, 477513
                  srai         t1, a4, 15
                  sub          a2, s10, t6
                  slli         a6, s11, 20
                  ori          a0, s7, 814
                  bltu         t5, t5, 390f
377:              bne          a3, s4, 396f
                  bltu         tp, t4, 388f
                  bgeu         t2, t5, 391f
                  sra          t2, a3, tp
                  srai         sp, s6, 6
382:              srl          s3, a3, a4
                  auipc        t2, 1010468
                  lui          s0, 891715
                  slti         t5, t0, -1133
                  lui          s2, 124644
                  add          s11, t6, a7
388:              and          a0, t1, a4
                  bne          t3, s3, 394f
390:              sltu         a0, a3, t5
391:              andi         a6, a6, 1329
                  auipc        s10, 885534
                  slt          a0, sp, a0
394:              bgeu         a0, gp, 413f
                  xori         s10, s2, 1632
396:              or           s4, t3, t1
                  bgeu         t2, t6, 416f
                  bgeu         sp, t5, 402f
                  srl          s5, s11, s6
                  slt          s3, s2, a7
                  slti         a4, a1, -1905
402:              blt          gp, s4, 417f
                  addi         s4, ra, -1566
                  sub          s10, a6, t6
                  sll          a1, zero, s0
                  auipc        s5, 293155
                  bge          t1, s4, 414f
                  sra          ra, s4, a4
                  sltu         t5, zero, sp
                  srli         a4, s3, 29
                  bge          t1, t0, 430f
                  srai         s2, t6, 30
413:              auipc        a6, 52018
414:              andi         s11, a4, -737
                  sll          s5, a5, a3
416:              slt          a5, tp, a0
417:              srai         t2, sp, 24
                  ori          s9, s7, 1153
                  add          s9, t0, gp
                  srai         s9, t6, 19
                  nop
                  slli         t3, a2, 18
                  sll          s5, t2, s3
                  sub          ra, a3, t6
                  add          a4, s1, s11
                  sub          gp, s11, s9
                  bltu         a2, a3, 439f
                  addi         gp, a4, 737
                  sll          t1, s6, t1
430:              sll          ra, ra, a3
                  sltu         a7, s11, a3
                  lui          t6, 774508
                  add          t1, tp, s10
                  auipc        t3, 102739
                  auipc        s1, 739728
                  sub          s0, s6, s10
                  srli         a1, s5, 13
                  xor          a4, t0, zero
439:              or           a4, zero, s5
                  xori         s1, zero, -659
                  auipc        s5, 290349
                  sll          gp, t6, zero
                  sltu         t5, a7, s1
                  sra          s8, t4, a6
                  bne          gp, t2, 460f
                  slt          s0, s3, sp
                  xori         t6, a1, 1162
                  bgeu         t0, s7, 455f
                  bgeu         t2, a7, 468f
                  nop
                  sltiu        t1, s10, -624
                  andi         t5, s1, 1175
                  slt          s3, zero, t0
                  bne          a3, a4, 464f
455:              sll          s6, s9, t2
                  bge          s2, s0, 475f
                  srai         t6, t1, 2
                  sltu         t4, t5, t5
                  srai         a3, ra, 30
460:              srl          a4, t4, a0
                  addi         t3, tp, 1074
                  blt          s11, a1, 481f
                  bltu         t0, a2, 470f
464:              add          a5, t5, gp
                  sra          a2, t6, a0
                  sltu         t4, t0, tp
                  bltu         sp, s11, 486f
468:              lui          a0, 315762
                  sub          s0, a6, t3
470:              xori         t6, gp, 1535
                  sltu         sp, s3, s1
                  sll          t5, a2, t4
                  beq          s5, s0, 492f
                  bge          a5, s5, 487f
475:              beq          s6, s6, 484f
                  bltu         a2, s5, 480f
                  slli         a3, s8, 21
                  sltiu        s2, a5, -164
                  bge          s2, ra, 483f
480:              bgeu         zero, t3, 495f
481:              andi         t6, t6, 910
                  or           s5, a5, a4
483:              beq          s6, t2, 490f
484:              or           a5, gp, a6
                  add          s1, t6, s10
486:              srli         ra, a2, 27
487:              slli         s0, s2, 27
                  andi         a7, t4, 468
                  or           a3, a5, s10
490:              sltiu        s6, t5, 1589
                  srli         zero, s9, 21
492:              srli         s3, s7, 17
                  slti         a6, s1, 1053
                  andi         s4, a6, 515
495:              andi         a7, t3, 1767
                  blt          a3, a1, 513f
                  xor          t5, t1, s0
                  nop
                  xori         a6, t3, -8
                  srli         gp, t3, 4
                  slti         s11, s5, 86
                  and          t5, s3, a3
                  sll          a3, t1, s5
                  slti         ra, a2, -521
                  blt          s7, ra, 517f
                  beq          s10, t2, 515f
                  sltu         s4, s5, ra
                  addi         a2, a6, 1487
                  bltu         a2, s3, 518f
                  blt          s10, a5, 518f
                  ori          t2, s10, 1112
                  bgeu         t3, s3, 518f
513:              bge          s1, a1, 532f
                  nop
515:              bge          s3, a0, 529f
                  beq          a5, s11, 519f
517:              nop
518:              xori         s6, a5, -1588
519:              ori          s2, t1, -1425
                  beq          a5, t0, 523f
                  beq          s9, ra, 527f
                  bge          t4, t6, 527f
523:              sll          a3, s4, s1
                  xori         sp, s2, -118
                  sltiu        s10, t6, -709
                  sra          a1, t5, t5
527:              and          t4, t3, t2
                  srl          s0, gp, s1
529:              sltiu        s9, s0, -1813
                  beq          s11, a4, 533f
                  andi         sp, sp, 432
532:              slt          a4, a0, t0
533:              sltu         s2, s1, t3
                  srl          s1, gp, t0
                  slt          zero, a2, zero
                  sltiu        a4, a6, 766
                  xor          t1, t5, s2
                  sltu         s6, s3, gp
                  and          s4, s7, s4
                  sltu         s0, s6, a7
                  sub          s2, ra, t0
                  sra          t4, t2, s3
                  auipc        s3, 550889
                  bgeu         sp, s6, 563f
                  sll          s0, s1, t6
                  slt          a7, a4, t0
                  andi         a7, a3, -995
                  sra          s4, t0, tp
                  bne          a0, s10, 559f
                  sll          a0, s2, a5
                  srli         ra, a3, 22
                  or           s9, a3, s2
                  sub          a4, a6, ra
                  auipc        t2, 208131
                  and          a5, t2, a1
                  sub          a3, t4, t0
                  andi         s5, s7, -1492
                  slt          t2, s7, tp
559:              slli         s11, s4, 14
                  slli         a4, sp, 27
                  bne          a1, tp, 570f
                  bgeu         t3, a4, 566f
563:              sub          s6, t5, s5
                  sltiu        s8, t4, -1898
                  slli         a1, s2, 20
566:              slt          s8, s11, s5
                  srl          ra, s9, s5
                  auipc        a1, 431218
                  sltiu        a2, s5, -316
570:              srai         a1, t1, 11
                  add          s3, a5, s3
                  sra          s2, t3, gp
                  beq          a7, s11, 588f
                  sltu         s0, sp, t4
                  beq          a3, a1, 587f
                  beq          a2, s10, 595f
                  srai         a7, s8, 17
                  xori         s10, a5, -604
                  and          s6, a5, a4
                  srai         s11, s1, 15
                  ori          s8, s3, 1230
                  lui          s10, 567760
                  bne          s11, s7, 602f
                  sub          t3, t6, s4
                  sra          gp, sp, ra
                  srli         s5, a4, 23
587:              srli         s5, t5, 27
588:              slt          t1, a0, s6
                  bgeu         s6, s4, 608f
                  sltiu        a6, tp, 1486
                  add          t5, s2, s7
                  andi         a7, a3, -314
                  bgeu         a4, s1, 612f
                  bne          a1, a3, 611f
595:              slli         s5, zero, 16
                  sltu         t4, s2, a0
                  slt          s1, s9, gp
                  sltu         a0, s4, a1
                  addi         s9, sp, 804
                  xori         ra, t0, -1918
                  and          t5, s6, s8
602:              xor          s6, a5, a4
                  lui          gp, 1026460
                  sll          a3, sp, sp
                  bne          t5, a5, 620f
                  slti         a7, sp, 97
                  xor          ra, a3, t0
608:              srl          t3, zero, s1
                  beq          a4, s5, 616f
                  srl          a4, s11, t2
611:              slt          s5, s0, a1
612:              slti         t3, ra, 183
                  addi         a5, a1, -1907
                  slt          t1, t6, s6
                  srl          zero, s0, s0
616:              xor          a1, t4, a3
                  slt          t6, a5, gp
                  slti         s4, t2, -766
                  or           s4, s7, ra
620:              srl          a6, a1, a7
                  or           s4, a1, t5
                  sll          s9, t5, t1
                  auipc        a1, 999058
                  add          s4, ra, sp
                  ori          a0, a6, -1155
                  lui          s3, 666274
                  sra          s1, a2, zero
                  slt          t3, tp, a4
                  srli         t2, t1, 29
                  bne          s11, t0, 633f
                  slti         a3, zero, -596
                  bgeu         a3, a1, 641f
633:              nop
                  srai         s0, zero, 26
                  sltu         sp, a3, s10
                  sll          a3, s9, gp
                  add          sp, gp, t1
                  srl          s10, a5, gp
                  sltu         s10, s7, a0
                  xori         t3, zero, 185
641:              bne          a6, ra, 660f
                  bgeu         t5, t5, 654f
                  srl          ra, a4, t3
                  beq          sp, s11, 653f
                  nop
                  and          s10, s2, zero
                  blt          s11, t3, 653f
                  beq          s9, s7, 655f
                  add          t2, a7, s3
                  sra          t5, t1, a7
                  xori         s9, s10, 1104
                  or           s1, sp, s10
653:              ori          s11, zero, 1027
654:              and          t3, s11, s11
655:              add          a5, s7, t4
                  bne          t1, t2, 664f
                  addi         s0, a4, -253
                  bge          t5, s2, 663f
                  xor          sp, ra, a2
660:              slli         s6, ra, 6
                  blt          t1, a2, 680f
                  ori          s3, t5, 470
663:              sra          zero, a6, t6
664:              addi         t6, t0, 801
                  or           s3, a6, a1
                  xor          t5, a3, s0
                  lui          t2, 97489
                  xori         s1, s1, 1789
                  sltiu        t6, tp, -506
                  bltu         t4, t1, 674f
                  bltu         s0, s2, 685f
                  srli         a6, a7, 13
                  bne          gp, t3, 679f
674:              bne          s0, s7, 681f
                  srli         t6, t0, 25
                  sll          s8, a6, t2
                  ori          s9, ra, 1448
                  srai         t1, t0, 10
679:              lui          t6, 162822
680:              beq          t4, s0, 693f
681:              slt          s8, s8, s4
                  and          a3, s4, s4
                  add          s5, s0, t3
                  beq          s0, s4, 691f
685:              bne          a2, s9, 698f
                  sub          s8, a2, s11
                  sltu         gp, s0, s3
                  bne          a4, t4, 707f
                  auipc        a5, 119183
                  add          a3, sp, sp
691:              bltu         s8, s6, 695f
                  srl          s8, s1, t0
693:              add          s0, s5, s5
                  srli         a3, sp, 7
695:              srai         a5, gp, 1
                  beq          a1, sp, 715f
                  srai         a6, t0, 15
698:              sltu         a0, s7, s4
                  sltiu        s5, s2, 677
                  srai         s9, s4, 5
                  sll          a5, s4, s9
                  or           s6, s8, a2
                  and          s2, gp, s5
                  xor          zero, zero, a6
                  blt          s7, zero, 724f
                  sra          gp, tp, sp
707:              bge          s4, s5, 721f
                  sltu         a3, s4, t2
                  xor          zero, t3, a0
                  srai         s6, t1, 4
                  bne          a6, s7, 720f
                  or           a7, t6, a1
                  sra          a5, t2, s5
                  auipc        a1, 84622
715:              bltu         s1, s1, 721f
                  add          t2, t4, a5
                  lui          s9, 61402
                  sra          s0, a4, s8
                  bltu         a0, t5, 736f
720:              sra          a7, t3, zero
721:              addi         a5, s4, -1236
                  xor          t4, tp, s1
                  srai         a5, t5, 14
724:              xor          s3, t0, tp
                  lui          gp, 173345
                  bne          s3, a6, 745f
                  bge          s10, s4, 730f
                  blt          t1, s7, 737f
                  and          gp, t2, sp
730:              beq          sp, t1, 737f
                  lui          a5, 948780
                  add          s11, s2, a2
                  bltu         a2, t1, 737f
                  lui          s10, 543497
                  slli         a5, s0, 13
736:              andi         sp, t2, -1996
737:              xor          t3, s6, t3
                  ori          a0, t0, -2033
                  srai         s6, sp, 0
                  sub          gp, s9, tp
                  slti         gp, t5, 1672
                  srai         s9, a6, 28
                  xori         s8, gp, 526
                  slli         a4, s4, 11
745:              srl          a5, a5, a4
                  sll          a1, t3, s0
                  xori         a3, t0, -1143
                  xori         zero, t5, -1716
                  add          s0, t0, ra
                  bge          gp, gp, 756f
                  addi         sp, s6, 1308
                  slli         a3, t3, 26
                  xori         gp, a5, 775
                  sra          a0, tp, s10
                  bge          s4, a6, 767f
756:              or           t2, s9, tp
                  addi         s2, s8, -1043
                  lui          s11, 353069
                  addi         s6, s3, 675
                  sll          s2, s10, s8
                  srai         a7, t2, 6
                  xori         s2, s11, 297
                  and          sp, a6, a5
                  ori          t3, s10, 491
                  sub          a2, ra, a5
                  ori          s9, s7, 30
767:              bge          s1, a6, 779f
                  blt          s2, t6, 778f
                  srli         a5, s10, 6
                  slt          s9, s9, a7
                  addi         s0, s7, 1906
                  andi         a2, a4, -127
                  add          s3, sp, t0
                  sub          s9, s9, s10
                  bne          s10, tp, 780f
                  slli         a6, s7, 13
                  ori          t5, s6, 1250
778:              sll          s5, s4, a0
779:              xori         gp, a5, -1436
780:              bne          s9, zero, 795f
                  xor          a6, a7, t6
                  bgeu         a0, t6, 801f
                  srl          s2, tp, s4
                  sll          sp, t4, s4
                  sltiu        a7, s1, -1673
                  beq          a5, s8, 793f
                  bge          t5, s7, 796f
                  andi         a2, gp, 1459
                  srli         a1, ra, 24
                  xori         t2, t6, 58
                  blt          s9, s10, 798f
                  slti         s2, a6, 1926
793:              bge          s3, s0, 800f
                  bne          s1, t2, 813f
795:              and          t2, t4, s9
796:              or           s10, t4, s5
                  addi         s5, s4, 541
798:              sltiu        t3, gp, -796
                  bne          s8, a4, 814f
800:              nop
801:              bgeu         s7, ra, 804f
                  bne          zero, a6, 821f
                  beq          a7, s4, 811f
804:              sub          s8, t2, s0
                  andi         sp, s1, 1280
                  slli         s2, a3, 24
                  addi         a6, s1, -168
                  sltu         s2, a1, a4
                  xor          s9, t2, a3
                  or           a3, s6, s1
                  sub          t6, t2, t4
sub_1_j3:         jal          a2, sub_2 #jump sub_1 -> sub_2
                  bge          s9, sp, 825f
                  beq          t4, ra, 811f
                  add          s10, s2, s8
                  sub          a7, a2, tp
                  nop
811:              srli         gp, t5, 24
                  sra          s6, t4, t4
813:              add          a0, a1, s7
814:              blt          s0, tp, 823f
                  slti         s0, s7, -279
                  sltiu        a0, a2, -235
                  slt          t4, s10, t6
                  sub          s5, s3, gp
                  bgeu         a5, sp, 825f
                  slt          a5, s9, a7
821:              xori         s5, s0, -1045
                  or           s3, s5, s0
823:              and          ra, ra, ra
                  nop
825:              addi         t1, s5, -183
                  slti         a2, s9, -1547
                  lui          t2, 681599
                  ori          t1, s6, 997
                  or           t4, s4, s3
                  slli         t6, a1, 28
                  auipc        t3, 367792
                  nop
                  srli         a3, s2, 16
                  slt          t6, s1, a5
                  auipc        gp, 422771
                  srli         s4, t0, 4
                  xori         s4, s3, -1288
                  nop
                  auipc        s11, 873758
                  addi         t5, t0, 1914
                  bne          s11, t5, 851f
                  srai         s8, s6, 2
                  auipc        s2, 509284
                  andi         s8, a3, -1860
                  nop
                  slli         a2, t6, 9
                  or           s11, s3, s2
                  and          a0, tp, s0
                  sltu         a2, a4, a3
                  blt          s1, a6, 869f
851:              sll          a7, a0, s4
                  auipc        s9, 25250
                  bge          s5, a4, 866f
                  slti         gp, s0, -563
                  srli         s2, t1, 1
                  slli         s10, sp, 0
                  slti         s0, a3, 1973
                  sltiu        a4, gp, 604
                  bgeu         t4, a2, 876f
                  bne          t1, s3, 874f
                  add          s1, a1, sp
                  bne          s2, t0, 881f
                  bltu         s9, s2, 882f
                  srli         s6, gp, 29
                  sub          a7, s3, a5
866:              srl          sp, s1, t5
                  xori         s2, s5, 927
                  slli         ra, ra, 21
869:              sltiu        s1, sp, 1168
                  add          s10, s4, s1
                  slli         s11, a6, 17
                  sltu         t4, s5, a1
                  addi         t6, a3, 996
874:              xori         t2, s4, -1660
                  sltu         sp, s10, tp
876:              sltu         a7, sp, ra
                  slt          a5, t0, s10
                  bge          t3, s9, 887f
                  nop
                  xor          sp, a5, t4
881:              nop
882:              blt          s2, s11, 889f
                  nop
                  andi         s10, t1, -1022
                  beq          t6, ra, 897f
                  bltu         a1, a4, 892f
887:              srl          a5, t2, s1
                  beq          s7, s8, 891f
889:              andi         a5, s6, 1742
                  addi         s6, s11, 1232
891:              lui          a4, 436481
892:              slt          t2, t0, gp
                  bne          a2, zero, 912f
                  or           a6, s4, s5
                  or           zero, a6, s0
                  sltiu        s0, ra, 807
897:              srai         a0, s4, 3
                  auipc        zero, 999197
                  srai         sp, s3, 17
                  xor          a5, s0, a5
                  sra          a5, t4, t4
                  nop
                  srl          s3, t3, gp
                  ori          gp, a1, 637
                  slti         a6, s10, 519
                  add          s2, ra, s3
                  slt          a0, zero, zero
                  sll          gp, s1, a0
                  lui          a5, 837104
                  nop
                  slti         a3, t0, 1966
912:              ori          s2, ra, 844
                  andi         s0, s8, 552
                  sub          s0, a7, a5
                  sll          s2, sp, s5
                  bgeu         a6, a6, 928f
                  sra          zero, t5, s1
                  sltiu        s8, t3, 886
                  sub          s2, a3, a1
                  beq          a7, s8, 935f
                  bge          a6, a4, 925f
                  andi         a5, s6, -1169
                  nop
                  slti         s8, t5, -737
925:              xor          s1, gp, a1
                  addi         a3, t2, 656
                  bne          s2, s6, 935f
928:              beq          s4, s0, 935f
                  slli         s2, t6, 22
                  sra          t3, s10, sp
                  sltiu        a2, s1, -1588
                  bltu         sp, s11, 951f
                  sll          gp, t2, t3
                  xor          ra, s9, tp
935:              lui          t2, 56219
                  blt          t5, s1, 943f
                  sra          t6, s10, t2
                  addi         s3, s0, -304
                  lui          a0, 50348
                  bne          a2, s2, 947f
                  bltu         a1, s1, 944f
                  sltu         t4, a0, a4
943:              xori         s2, t2, 1239
944:              sub          t1, t2, tp
                  srai         s0, a7, 6
                  andi         s9, t1, 323
947:              andi         s9, t4, -52
                  bgeu         s0, a7, 957f
                  srli         a5, gp, 30
                  sub          a3, zero, s11
951:              sltiu        t6, s10, -589
                  nop
                  andi         a6, s6, 972
                  bltu         s11, s2, 969f
                  sltiu        s2, s7, -957
                  srai         zero, s11, 31
957:              slli         s11, a4, 17
                  ori          s5, zero, 1373
                  bne          t4, s9, 978f
                  sra          t5, a4, s1
                  bltu         gp, s1, 966f
                  xori         t1, a0, -651
                  sltiu        a1, t4, 106
                  sra          s2, t2, t2
                  srai         s9, t5, 26
966:              lui          s9, 598328
                  auipc        s10, 829162
                  blt          a1, a5, 977f
969:              nop
                  slt          s8, s11, a4
                  and          t5, gp, a1
                  addi         s0, a2, 911
                  slt          s2, sp, s9
                  sra          a5, a3, s1
                  beq          gp, s5, 983f
                  beq          sp, t4, 995f
977:              andi         s1, tp, 1758
978:              bltu         gp, s11, 993f
                  slti         s1, s2, 969
                  sll          t4, s7, t2
                  beq          s10, a0, 985f
                  bge          t1, t5, 994f
983:              slli         t6, s10, 27
                  sub          s8, s5, ra
985:              bne          s8, s0, 997f
                  sra          a4, a2, s5
                  ori          sp, a6, -1910
                  bge          s2, s0, 1001f
                  beq          a4, t5, 994f
                  ori          t6, a1, 1723
                  addi         s8, tp, -711
                  bge          s6, s9, 998f
993:              srai         a7, t6, 23
994:              lui          t1, 725476
995:              ori          s1, t3, -244
                  bge          s9, a3, 1000f
997:              sll          t3, t4, s9
998:              sub          t5, t3, a2
                  andi         a5, zero, -1941
1000:             lui          gp, 174524
1001:             xori         t1, t0, -1425
                  addi         s1, s3, 266
                  andi         s0, a4, -1166
                  bgeu         s5, t6, 1007f
                  and          a5, a1, s6
                  slti         t2, t5, -1950
1007:             xor          ra, s0, t6
                  andi         t2, a7, 4
                  sll          a4, a5, a5
                  sltiu        s2, t5, 1012
                  slti         a0, t6, 649
                  bne          s10, t5, 1031f
                  sltu         s8, ra, s0
                  sltiu        s1, ra, 1750
                  and          s4, s10, s11
                  sub          s9, s3, s5
                  bgeu         t1, ra, 1036f
                  sltiu        a2, t3, 830
                  or           a0, a0, s3
                  blt          zero, gp, 1039f
                  slti         s0, a0, 938
                  slli         ra, s4, 1
                  srl          a7, t5, t3
                  andi         s9, a3, 912
                  bge          s6, s11, 1039f
                  srl          a4, zero, a6
                  addi         a7, s3, -1109
                  nop
                  and          gp, s8, s8
                  xor          ra, s4, s8
1031:             andi         s4, a7, 1701
                  slti         t3, zero, -1750
                  or           s8, s8, s5
                  beq          a1, a1, 1041f
                  addi         s11, t2, -821
1036:             auipc        a1, 803743
                  slli         t3, s9, 2
                  bgeu         s11, t4, 1047f
1039:             slti         t5, tp, 97
                  srai         t1, tp, 11
1041:             sltiu        sp, a2, 748
                  lui          t3, 814317
                  srli         t2, t5, 21
                  sub          s4, s2, s3
                  auipc        s0, 443378
                  bne          a7, tp, 1061f
1047:             nop
                  sltu         t1, s7, a2
                  xor          a6, s2, s4
                  sub          t4, s10, a6
                  nop
                  blt          t0, s9, 1059f
                  nop
                  slli         a6, t6, 28
                  andi         a0, tp, -574
                  nop
                  xor          a5, s7, sp
                  xor          s2, gp, s10
1059:             and          t1, t0, s11
                  auipc        s2, 392142
1061:             bltu         s2, s3, 1064f
                  srl          t4, sp, s5
                  andi         s11, s1, -761
1064:             xori         a6, t4, -773
                  sll          t6, zero, gp
                  srai         s4, s5, 22
                  sra          ra, s8, s4
                  slti         s5, a3, -1609
                  srl          a4, t6, tp
                  xori         s8, a2, 1515
                  beq          s2, t2, 1088f
                  sub          s9, t4, tp
                  sltu         ra, t0, t0
                  slli         s8, s7, 2
                  addi         s2, t1, 1391
                  srai         t3, a6, 18
                  xori         s3, tp, 1388
                  xori         a1, s5, 63
                  blt          s0, t2, 1098f
                  slt          t1, a0, s6
                  slti         a3, s8, 1872
                  slt          s3, s10, t4
                  or           t5, tp, t1
                  bgeu         s5, a0, 1091f
                  srl          s5, s4, ra
                  bltu         a4, a7, 1092f
                  slt          t2, a3, a3
1088:             xor          a3, a1, s11
                  bgeu         s9, gp, 1096f
                  srai         t6, a0, 27
1091:             auipc        s9, 38032
1092:             bne          s3, a3, 1111f
                  bgeu         s5, t2, 1112f
                  nop
                  xor          s5, tp, t0
1096:             bne          t5, s0, 1105f
                  slt          a7, a2, s1
1098:             andi         a6, s7, -901
                  srai         a4, s2, 22
                  bltu         ra, s1, 1110f
                  slt          t2, zero, s3
                  xori         s10, t1, 1557
                  auipc        a0, 802708
                  lui          s6, 569195
1105:             addi         s5, s1, -890
                  slli         t2, s10, 20
                  slt          s4, s11, a3
                  slti         a5, a3, -552
                  srl          t5, t4, t1
1110:             sra          ra, t1, t4
1111:             slt          a5, s0, t4
1112:             blt          zero, t3, 1121f
                  sltu         t4, a4, a2
                  srl          t3, tp, s11
                  add          s3, zero, s1
                  xor          t2, s0, s1
                  add          ra, t3, ra
                  or           s3, s9, a1
                  sra          t3, s3, s10
                  nop
1121:             srli         s10, s3, 4
                  blt          a7, ra, 1131f
                  and          a2, t0, a2
                  bne          s8, t1, 1134f
                  beq          t2, t5, 1134f
                  sltiu        gp, ra, -1187
                  srli         s6, t4, 8
                  srai         a6, t6, 18
                  bge          a7, t5, 1143f
                  slt          s2, a4, s4
1131:             srl          t2, a7, s4
                  and          s6, a6, t3
                  bge          s3, s8, 1136f
1134:             slt          s1, s4, a3
                  auipc        a2, 671078
1136:             and          s0, t0, ra
                  beq          s11, a1, 1141f
                  and          ra, zero, tp
                  andi         s10, t5, -356
                  lui          zero, 15901
1141:             xori         t6, s8, -225
                  srli         a7, tp, 0
1143:             andi         t1, s0, 703
                  xori         a7, s2, 360
                  slt          gp, s1, a2
                  add          t4, s5, s5
                  blt          t1, s1, 1154f
                  lui          s0, 18983
                  slt          s2, zero, a0
                  bge          s4, t4, 1153f
                  nop
                  sra          s5, zero, sp
1153:             bgeu         s8, gp, 1160f
1154:             slli         s1, a1, 0
                  slli         s11, a3, 16
                  bgeu         t4, s5, 1168f
                  addi         a7, a7, 2024
                  beq          gp, a3, 1163f
                  auipc        t3, 293087
1160:             add          a4, t2, a1
                  ori          a0, a4, 261
                  bltu         zero, t6, 1181f
1163:             auipc        t5, 172125
                  andi         s1, a1, 830
                  xori         gp, zero, 1343
                  and          a1, s5, s9
                  ori          t2, t2, 172
1168:             xori         a4, s7, 1374
                  ori          s4, a4, -1205
                  srai         s4, gp, 14
                  auipc        a5, 69850
                  slli         a0, a7, 21
                  slli         a6, a1, 27
                  xori         s10, s8, -617
                  blt          s6, a4, 1194f
                  or           t5, s0, s0
                  sub          a7, ra, s0
                  slti         s8, s10, -1190
                  srai         s1, s3, 29
                  andi         ra, s5, -1575
1181:             bne          a3, s5, 1193f
                  addi         t3, s10, 266
                  beq          s4, s0, 1187f
                  bltu         t5, s8, 1203f
                  bltu         s5, t1, 1204f
                  addi         a0, t5, -718
1187:             lui          ra, 742051
                  auipc        s0, 465375
                  sltiu        s4, sp, -420
                  ori          s8, a3, 1467
                  slt          a7, s0, t1
                  slt          s3, t6, s10
1193:             srl          gp, t2, s7
1194:             blt          t0, zero, 1200f
                  bne          s5, t0, 1201f
                  bge          s4, tp, 1215f
                  andi         s8, tp, 1814
                  srli         s1, a1, 6
                  sltu         t2, s11, s7
1200:             beq          a4, t3, 1219f
1201:             sltiu        a7, sp, -1758
                  auipc        gp, 851102
1203:             auipc        t1, 893638
1204:             and          zero, ra, s11
                  slt          a5, s11, s8
                  sra          a1, t6, a0
                  sltu         t5, t1, t4
                  slt          t3, a2, t2
                  addi         t3, s5, -220
                  bge          t2, s4, 1227f
                  and          a7, t1, t5
                  ori          a2, s3, 1133
                  addi         a1, a1, 54
                  nop
1215:             or           s4, s3, s9
                  srli         zero, s10, 30
                  sltiu        s10, sp, 957
                  srl          a6, s6, s0
1219:             sltu         a4, s0, s8
                  andi         a2, t1, 778
                  nop
                  auipc        s2, 275935
                  sra          a4, t2, s6
                  slti         s1, t6, -1637
                  ori          zero, s4, 1429
                  sll          t3, s4, s1
1227:             srai         s10, s10, 27
                  bltu         gp, a4, 1243f
                  bgeu         a7, t2, 1244f
                  sltu         a1, a1, s5
                  addi         s4, a7, 1274
                  xor          a7, s5, sp
                  blt          ra, a3, 1252f
                  sll          t6, gp, s5
                  bne          s0, t2, 1242f
                  bge          t3, s2, 1243f
                  beq          sp, s5, 1250f
                  sub          s3, s4, t4
                  nop
                  sltiu        s6, s1, 1715
                  sltiu        t2, tp, -1294
1242:             srai         s10, t2, 10
1243:             and          a4, s2, t0
1244:             beq          t4, a1, 1252f
                  bne          tp, s9, 1259f
                  bge          s7, a2, 1249f
                  and          t4, a7, a3
                  add          s4, a5, t4
1249:             and          t5, sp, a1
1250:             bge          zero, s2, 1257f
                  or           s2, a1, t3
1252:             sub          ra, s6, a4
                  sltiu        a6, zero, 2020
                  slti         s1, a1, 1495
                  blt          a2, s9, 1262f
                  addi         t3, s8, -216
1257:             and          s0, tp, s8
                  bne          s4, a6, 1277f
1259:             sra          t4, zero, a5
                  add          s10, s6, s8
                  slt          s11, s3, t1
1262:             bltu         t5, s10, 1277f
                  sra          sp, ra, s1
                  andi         s10, t2, -716
                  auipc        s10, 85077
                  or           s8, sp, a4
                  bgeu         t6, s4, 1279f
                  and          s6, s6, tp
                  sra          s3, s0, t0
                  bge          a4, t0, 1283f
                  xori         a1, s1, -1750
                  bgeu         sp, t4, 1291f
                  bgeu         s6, a3, 1282f
                  srai         s10, t6, 26
                  xori         ra, s4, 1602
                  sltiu        a6, s5, -798
1277:             sltiu        t6, a6, 1591
                  xori         t4, s0, 1756
1279:             auipc        s9, 259807
                  srai         a0, s0, 28
                  ori          s4, a6, -1862
1282:             srai         s5, a1, 16
1283:             xori         t4, s1, -1518
                  slt          s8, a0, s3
                  and          s11, s1, a7
                  slti         sp, t0, -1628
                  sra          t1, a5, a6
                  addi         a6, a3, -1099
                  lui          a5, 306551
                  sub          s6, a1, s7
1291:             srai         gp, zero, 10
                  xori         s2, t5, 1027
                  blt          s1, a7, 1296f
                  sltu         t1, s1, s0
                  sltiu        a4, a4, 1312
1296:             andi         s2, t0, 599
                  bltu         t2, s3, 1312f
                  sltu         s11, gp, s4
                  sltu         a5, s0, t6
                  bgeu         s2, s5, 1304f
                  sltiu        s2, s0, 1163
                  lui          t2, 979224
                  xor          t3, s11, zero
1304:             sltu         t3, t6, t5
                  and          s0, s11, s6
                  srl          a6, s6, s6
                  sll          s8, a1, t5
                  slt          a1, sp, a2
                  blt          tp, s6, 1315f
                  xor          t1, t4, a5
                  bge          a5, ra, 1330f
1312:             xori         s1, a5, 1301
                  andi         s5, a1, 798
                  sltiu        a3, t4, 137
1315:             sub          a3, a2, s4
                  bgeu         t5, a6, 1324f
                  addi         zero, s0, -1728
                  bge          s8, t6, 1324f
                  xor          a4, s0, ra
                  xor          s11, s10, a4
                  sll          t5, s1, tp
                  la           s3, sub_3
                  addi         s3, s3, 492
                  slt          s2, gp, ra
                  sltu         t3, s0, s7
                  auipc        a3, 674915
                  bne          t5, gp, sub_1_j2 #branch to jump instr
                  xor          a1, zero, s7
                  add          a6, s3, t0
                  or           s9, s9, a2
                  andi         a5, s3, -1285
sub_1_j2:         jalr         a2, s3, -492 #jump sub_1 -> sub_3
                  sltiu        a3, zero, 503
                  xori         a7, t6, -200
                  add          s8, t5, s10
                  bltu         s7, ra, 1333f
1324:             beq          zero, a6, 1333f
                  srli         a6, ra, 12
                  srli         a3, s0, 7
                  slti         s6, sp, -1357
                  srli         s5, s6, 15
                  and          s5, s7, a6
1330:             bltu         t4, s2, 1339f
                  add          a2, s4, a0
                  slti         gp, s1, 925
1333:             addi         s11, sp, -1307
                  and          s10, t3, t2
                  or           s11, t1, ra
                  lui          t5, 418049
                  nop
                  srl          s4, t6, s6
1339:             nop
                  slt          s11, a1, s3
                  bge          s10, t0, 1346f
                  xori         t1, s11, 307
                  beq          a4, a0, 1360f
                  sub          s1, t4, s5
                  and          s11, a4, s6
1346:             srai         s5, a4, 26
                  xori         s0, a3, 189
                  bltu         a3, a5, 1367f
                  auipc        a4, 16290
                  add          t3, s10, s11
                  auipc        a6, 277135
                  ori          t2, a2, 1884
                  sltiu        a1, a7, -1658
                  srli         a6, s0, 1
                  and          a4, s5, a4
                  addi         s4, s5, -1469
                  nop
                  lui          s6, 756979
                  lui          a1, 930757
                  addi         ra, zero, 4 #init loop 1 counter
                  sltiu        zero, s4, 79
                  slli         a3, s8, 17
                  and          gp, a2, s3
                  sub          a6, s4, t3
                  addi         s1, a6, -1279
                  addi         s6, zero, 6 #init loop 1 limit
                  auipc        t1, 148181
sub_1_17_1_t:     sltiu        a6, s7, 69
                  addi         ra, ra, 8 #update loop 1 counter
                  auipc        a0, 665287
                  xori         s1, s5, 1063
                  sltu         a4, s4, t0
                  addi         s10, zero, -1 #init loop 0 counter
                  sll          s8, gp, s10
                  lui          t4, 216470
                  nop
                  or           s3, s8, s8
                  sub          a6, a2, a3
                  auipc        t3, 1015792
                  xori         t2, s5, -1311
                  addi         a7, zero, -14 #init loop 0 limit
                  add          a6, a0, a4
                  sub          s2, s9, s11
sub_1_17_0_t:     addi         s1, s10, 544
                  addi         s10, s10, -6 #update loop 0 counter
                  or           t2, t2, t0
                  sub          a5, s8, s10
                  bge          s10, a7, sub_1_17_0_t #branch for loop 0
                  nop
                  slti         a2, a7, -580
                  ori          sp, s7, 1764
                  bltu         ra, s6, sub_1_17_1_t #branch for loop 1
                  add          s11, t4, t1
1360:             andi         s2, s4, 543
                  slli         a3, t5, 0
                  xor          s6, s7, t2
                  add          t1, tp, s3
                  blt          a1, s5, 1383f
                  slti         t6, s4, -19
                  slti         a0, s1, 398
1367:             sra          s0, a7, zero
                  addi         s10, s8, -261
                  xori         a1, s10, -1561
                  blt          s6, a6, 1382f
                  beq          s7, t0, 1378f
                  addi         s1, s11, 1398
                  beq          s7, a6, 1377f
                  sltiu        s2, t6, -988
                  beq          sp, sp, 1382f
                  beq          s6, s7, 1395f
1377:             add          a0, a5, s7
1378:             auipc        s4, 681915
                  andi         t2, s8, -925
                  xori         a3, t4, 1560
                  blt          ra, a4, 1400f
1382:             andi         zero, s8, 1696
1383:             bne          sp, a5, 1402f
                  bgeu         a7, s4, 1394f
                  nop
                  bne          s11, gp, 1400f
                  auipc        gp, 725411
                  srl          sp, gp, a4
                  and          s6, s4, s2
                  and          t6, t0, tp
                  sltiu        a0, a4, -414
                  srai         gp, s7, 6
                  addi         a0, a1, 1311
1394:             bne          gp, s1, 1401f
1395:             xori         t3, a6, 343
                  xori         t3, t5, -387
                  beq          a7, ra, 1416f
                  nop
                  bgeu         sp, t6, 1406f
1400:             sub          a2, s11, ra
1401:             and          s6, ra, a6
1402:             beq          a4, t5, 1421f
                  bltu         t0, sp, 1411f
                  srai         s4, sp, 9
                  and          s2, t5, a1
1406:             srai         a1, gp, 16
                  srai         t5, a6, 9
                  or           gp, a5, s3
                  lui          s10, 499628
                  slt          zero, zero, s5
1411:             addi         t3, a5, 474
                  sra          a3, s5, a6
                  sra          gp, tp, a4
                  bge          s1, s9, 1433f
                  nop
1416:             srl          s9, s1, ra
                  sll          s10, t2, t5
                  addi         a4, zero, 9 #init loop 0 counter
                  slt          zero, a6, s2
                  sub          a3, a2, a6
                  lui          t1, 661461
                  and          s3, t3, s1
                  or           s8, s3, a2
                  slti         a2, a0, -1128
                  or           gp, s6, gp
                  auipc        a2, 542040
                  sll          s5, a6, a2
                  xori         t1, s8, 214
                  xor          a3, s10, s4
                  slt          a7, sp, s6
                  nop
                  srl          t3, a6, t1
                  slt          s6, s11, sp
                  srai         zero, s4, 17
                  andi         a0, tp, 1409
                  xori         a1, a4, -1577
                  srli         zero, s8, 20
                  addi         t4, s0, -704
                  slli         zero, s10, 8
                  addi         s11, zero, 9 #init loop 0 limit
                  xor          s3, a4, s2
sub_1_7_0_t:      addi         s8, sp, -105
                  or           s10, s9, s6
                  addi         a4, a4, -8 #update loop 0 counter
                  xori         s10, t0, 451
                  bgeu         a4, s11, sub_1_7_0_t #branch for loop 0
                  add          a0, t2, t2
                  sltiu        a2, s4, 1394
                  slti         s4, s3, 683
                  nop
1421:             beq          tp, s8, 1428f
                  sub          a2, tp, a3
                  and          ra, s6, a5
                  srl          s11, a0, a3
                  andi         t3, s10, -1991
                  slti         a2, t1, 41
                  or           gp, a6, s7
1428:             beq          s0, s11, 1435f
                  beq          tp, t0, 1433f
                  nop
                  bltu         a0, s1, 1450f
                  bltu         a2, ra, 1438f
1433:             ori          t5, t6, -666
                  blt          t6, s10, 1443f
1435:             or           s8, s4, a3
                  bge          a2, a5, 1455f
                  blt          s3, s8, 1449f
1438:             sltiu        t5, a1, -762
                  slti         t4, s4, -1800
                  slti         zero, t0, 433
                  add          zero, ra, sp
                  bltu         a7, s6, 1461f
1443:             ori          s9, a0, 268
                  slti         t5, s11, 262
                  nop
                  auipc        s9, 740640
                  beq          gp, a6, 1459f
                  bgeu         t1, a6, 1461f
1449:             nop
1450:             beq          t5, s4, 1467f
                  bgeu         a2, s11, 1455f
                  xor          s5, s0, t4
                  sltiu        a4, zero, -690
                  or           ra, t0, s6
1455:             sub          s5, s4, s6
                  nop
                  auipc        t6, 185541
                  bgeu         s8, a1, 1467f
1459:             blt          t5, sp, 1462f
                  sll          t1, s7, a2
1461:             sltiu        t1, gp, 716
1462:             slti         a4, t3, -1494
                  slli         s9, s3, 8
                  sra          s6, sp, s3
                  lui          s2, 966855
                  bltu         tp, s1, 1481f
1467:             sra          gp, zero, s9
                  blt          t5, a4, 1477f
                  and          a6, a7, a7
                  and          a2, a6, s9
                  sltu         t5, s8, sp
                  bne          t0, s8, 1487f
                  sra          t2, tp, t1
                  auipc        a6, 178075
                  bltu         a6, a6, 1478f
                  xori         t3, s4, -521
1477:             sltiu        a1, s8, 2002
1478:             xori         zero, s9, 1789
                  ori          sp, sp, -920
                  srli         a5, s2, 15
1481:             xori         t2, t4, 274
                  bne          s10, s11, 1488f
                  sll          s6, s2, a7
                  blt          s6, t4, 1489f
                  add          s10, a2, ra
                  addi         s2, s2, -1799
1487:             ori          s1, t4, 762
1488:             sltiu        t6, t0, -1636
1489:             or           a6, s1, s1
                  srli         a5, t4, 26
                  bltu         a0, s7, 1503f
                  xor          ra, t4, t4
                  bgeu         t4, s0, 1500f
                  addi         a6, s1, 1531
                  bne          a7, s5, 1514f
                  ori          a4, s5, 681
                  sltiu        s2, a6, 1601
                  sltiu        a1, a6, -1770
                  auipc        a4, 325929
1500:             sll          ra, s3, s1
                  blt          s6, s1, 1505f
                  sltiu        t1, a7, 1893
1503:             blt          tp, a0, 1512f
                  blt          a0, t6, 1523f
1505:             and          s2, a7, s3
                  srli         sp, s6, 27
                  bge          ra, s8, 1516f
                  bgeu         s10, s6, 1518f
                  add          s8, s8, s7
                  auipc        gp, 740250
                  sltu         t3, s4, t1
1512:             sra          t6, t0, t0
                  sll          zero, a7, t0
1514:             bne          s4, a5, 1533f
                  srli         a3, gp, 5
1516:             bltu         t0, ra, 1522f
                  bne          t1, s8, 1526f
1518:             blt          s9, t2, 1525f
                  sra          t2, s5, zero
                  bge          tp, s7, 1533f
                  sub          t6, s11, s8
1522:             sra          s0, s6, s7
1523:             srli         s2, s4, 23
                  addi         a1, s1, -1349
1525:             bltu         s0, t5, 1530f
1526:             slli         s1, t4, 9
                  sltiu        a0, s0, 742
                  slli         a3, s4, 26
                  bgeu         a2, s7, 1533f
1530:             add          s6, gp, s4
                  sll          s0, s11, s7
                  bgeu         a0, s4, 1533f
1533:             sub          a2, s2, a3
                  xori         s9, zero, -1671
                  srai         s4, t6, 31
                  lw           a2, 4(tp)
                  add          s5, a5, s1
                  addi         tp, tp, 20
                  sub          t3, ra, a5
2222:             addi x30, x12, 0
2222:             jalr x30, x30, 0
sub_3:            nop
                  xor          t3, a7, a0
                  xori         t3, a7, -624
                  slli         a1, t1, 20
                  addi         tp, tp, -8
                  add          a1, t4, t3
                  nop
                  slti         a7, a5, 1987
                  sw           a2, 4(tp)
                  addi         a3, t4, 1577
                  andi         s5, s8, 1465
                  la           a5, sub_5
                  slti         t2, sp, 750
                  addi         a5, a5, 85
                  sltiu        t3, a0, 1732
                  sub          a1, a2, a4
                  sra          t2, t6, a3
                  blt          s9, ra, sub_3_j5 #branch to jump instr
                  ori          t6, gp, -1959
                  srai         a4, a6, 26
                  sub          s0, t5, s3
sub_3_j5:         jalr         a2, a5, -85 #jump sub_3 -> sub_5
                  sltu         a3, s8, s8
                  sub          s1, a1, s9
                  srli         sp, gp, 3
                  sltu         a6, tp, s3
                  bne          s4, tp, sub_3_j6 #branch to jump instr
                  sub          a2, s6, t3
sub_3_j6:         jal          a2, sub_4 #jump sub_3 -> sub_4
                  sub          a0, s11, s3
                  sub          a0, s9, a7
                  ori          a3, s2, -396
                  blt          a0, a2, 18f
                  slt          a3, t4, s8
                  add          a0, s2, s1
                  sltu         s8, a3, a6
                  sltiu        a2, a3, 1018
                  slli         s6, a2, 21
                  beq          a4, a6, 18f
                  sll          ra, t2, t5
                  sub          gp, s7, s10
                  sltiu        t2, a0, 2041
                  auipc        a1, 287351
                  bne          s2, t3, 18f
                  sltiu        sp, s3, 41
                  bgeu         t1, s8, 18f
                  srai         s10, tp, 10
18:               xor          s1, s10, t1
                  lw           a2, 4(tp)
                  and          s9, t3, s4
                  or           ra, s1, s1
                  addi         tp, tp, 8
                  xor          a0, s3, tp
                  sll          s5, t6, a4
                  sltiu        a5, s3, 456
                  slti         a7, s10, -971
56:               addi x19, x12, 0
56:               jalr x19, x19, 0
sub_5:            xori         s4, a4, -487
                  andi         s9, s5, -507
                  addi         tp, tp, -56
                  srli         t1, a1, 20
                  srli         s0, s9, 31
                  slt          s2, s8, a4
                  addi         t4, a6, 586
                  slt          s5, s5, gp
                  sw           a2, 4(tp)
                  lui          a6, 433629
                  sll          s4, a3, a6
                  xor          s10, a5, a1
                  addi         a0, zero, -3 #init loop 1 counter
                  addi         s11, zero, 12 #init loop 1 limit
                  auipc        t3, 169843
sub_5_0_1_t:      andi         t3, s10, 228
                  addi         a0, a0, 3 #update loop 1 counter
                  sra          s5, s10, s4
                  addi         s6, zero, 5 #init loop 0 counter
                  addi         a6, zero, 11 #init loop 0 limit
sub_5_0_0_t:      auipc        s5, 589686
                  addi         s6, s6, 5 #update loop 0 counter
                  bltu         s6, a6, sub_5_0_0_t #branch for loop 0
                  bne          a0, s11, sub_5_0_1_t #branch for loop 1
                  nop
                  ori          s9, a0, -768
                  sub          s2, ra, s1
                  and          s3, t2, a1
                  sll          t5, s8, t1
                  bgeu         s1, s8, 24f
                  or           s8, t4, t2
                  srai         zero, s5, 14
                  beq          s6, t5, 17f
                  sltu         t1, s2, zero
                  addi         s8, a4, 675
                  auipc        s4, 775326
                  and          a7, zero, s0
                  slt          s1, s9, a5
                  sll          s6, a1, t5
                  add          a3, a4, s8
                  sltu         ra, a5, t2
                  sll          ra, t3, a7
17:               add          s0, s1, s2
                  xori         s3, s1, 1699
                  andi         s5, t2, -1937
                  nop
                  slt          sp, s8, s4
                  srli         a6, s4, 24
                  andi         s0, s10, -1348
24:               bne          t1, s5, 27f
                  slti         a6, s0, 1764
                  or           s3, t0, t5
27:               srli         zero, s2, 1
                  srl          a7, a5, s11
                  srai         a4, t0, 15
                  slt          s8, s7, t4
                  sltu         gp, t5, a6
                  or           t2, a6, s3
                  srai         s0, s0, 31
                  and          a4, a0, a1
                  and          a4, t0, t0
                  andi         a1, s9, -1569
                  slti         s4, a5, -930
                  beq          s0, a2, 56f
                  add          a3, t2, a0
                  bge          a4, a6, 57f
                  andi         gp, s4, 1591
                  andi         a7, s6, 37
                  lui          a4, 456397
                  sra          t2, zero, s2
                  srli         s11, gp, 20
                  sub          ra, gp, s2
                  blt          s4, s8, 64f
                  auipc        t3, 743028
                  slt          a4, s4, t2
                  andi         t6, s8, 1346
                  srai         s6, a0, 21
                  sltiu        a2, t0, 1241
                  or           a1, s9, zero
                  addi         t5, s11, -1682
                  slt          a0, tp, s4
56:               blt          tp, ra, 67f
57:               add          s3, s6, a2
                  srl          s2, t0, s2
                  bge          tp, s7, 71f
                  xori         a1, sp, -1433
                  bge          s7, s9, 66f
                  lui          s5, 196231
                  ori          s1, a2, -488
64:               srli         a5, s2, 18
                  beq          s9, s4, 70f
66:               xori         sp, t0, 958
67:               andi         s2, s9, -1393
                  add          a2, t6, t4
                  addi         s9, s0, 781
70:               add          t5, sp, t4
71:               auipc        s0, 896268
                  slli         sp, a3, 4
                  or           t5, s3, s9
                  lw           a2, 4(tp)
                  sub          a3, s10, t4
                  addi         tp, tp, 56
                  xori         t2, s11, -310
103:              addi x25, x12, 1
103:              jalr x25, x25, 0
sub_4:            beq          a4, t6, sub_4_stack_p
sub_4_stack_p:    addi         tp, tp, -52
                  andi         s0, a2, -1309
                  sw           a2, 4(tp)
                  sra          s5, t5, t4
                  xori         t3, t6, -661
                  and          t6, zero, a0
                  srai         s8, s4, 24
                  srai         a3, s8, 28
                  srai         sp, t5, 13
                  srai         a6, s3, 22
                  auipc        a0, 511472
                  beq          a4, ra, 10f
                  srai         sp, t0, 2
                  sll          t5, a2, t3
                  bge          zero, a5, 10f
                  sltu         s4, gp, t4
                  auipc        zero, 541064
                  sltu         t1, t2, t4
10:               sll          a2, a6, s11
                  sltu         a3, s1, a4
                  srai         t3, s9, 11
                  lw           a2, 4(tp)
                  sra          t2, t6, a2
                  slt          s10, a2, zero
                  addi         tp, tp, 52
                  sltiu        t3, t6, 138
                  and          gp, s8, a6
                  xor          ra, a7, s6
                  srli         s0, t6, 9
                  lui          t4, 667190
                  sll          a7, zero, gp
32:               addi x16, x12, 1
32:               jalr x16, x16, 0
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_2:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_3:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_4:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_5:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_6:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_7:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_8:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_9:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_10:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_11:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_12:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_13:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_14:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_15:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x23, x4, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x2, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x2, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x2, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x2, x18, ecall_handler
                  li x18, 0x1
                  beq x2, x18, instr_fault_handler
                  li x18, 0x5
                  beq x2, x18, load_fault_handler
                  li x18, 0x7
                  beq x2, x18, store_fault_handler
                  li x18, 0xc
                  beq x2, x18, pt_fault_handler
                  li x18, 0xd
                  beq x2, x18, pt_fault_handler
                  li x18, 0xf
                  beq x2, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x4, x23, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x23, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x23, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x4, x23, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x4, x23, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x4, x23, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
