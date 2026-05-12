.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 1
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0xf14d3c14
                  li x3, 0x334d6c87
                  li x4, 0x1
                  li x5, 0xc8551fe1
                  li x6, 0xfba70b1c
                  li x7, 0x80000000
                  li x8, 0xff958553
                  li x9, 0x2be097b3
                  li x10, 0xf0bc6e25
                  li x11, 0xb
                  li x12, 0x9147fb36
                  li x13, 0xf0833349
                  li x14, 0x0
                  li x15, 0x1
                  li x16, 0xd
                  li x17, 0xd5b3348e
                  li x18, 0x8
                  li x20, 0xfd3f97a5
                  li x21, 0x80000000
                  li x22, 0x1
                  li x23, 0x0
                  li x24, 0xf7bd5369
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x27a9f207
                  li x31, 0x0
                  la x30, user_stack_end
main:             sub          s6, s11, t2
                  nop
                  nop
                  la           a5, sub_2
                  xori         a4, s5, 998
                  addi         a5, a5, -454
                  srai         a2, a0, 22
main_j2:          jalr         a6, a5, 454 #jump main -> sub_2
                  addi         s7, zero, 4 #init loop 1 counter
                  xor          t2, a7, sp
                  srli         a5, a7, 16
                  sra          t1, t3, s8
                  add          zero, s9, zero
                  addi         tp, zero, 19 #init loop 1 limit
                  sub          zero, s8, s0
main_0_1_t:       auipc        s1, 500990
                  addi         s7, s7, 10 #update loop 1 counter
                  slti         a6, a6, -402
                  and          s1, s11, a7
                  addi         s9, zero, -3 #init loop 0 counter
                  addi         t0, zero, 13 #init loop 0 limit
                  srai         zero, a0, 17
                  auipc        t3, 583529
                  slti         a3, s5, -748
                  sltiu        a5, s4, 938
                  srl          s8, t4, tp
main_0_0_t:       slt          a0, sp, a0
                  xor          s10, a7, a1
                  and          s11, t1, s8
                  andi         t4, s3, 124
                  addi         s4, t6, 276
                  addi         s9, s9, 8 #update loop 0 counter
                  bltu         s9, t0, main_0_0_t #branch for loop 0
                  xor          a1, t1, ra
                  or           gp, t4, s9
                  sub          t1, a7, t1
                  bltu         s7, tp, main_0_1_t #branch for loop 1
                  auipc        a0, 64923
                  xor          a2, a0, gp
                  nop
                  add          s11, s6, a2
                  bltu         s2, a4, 14f
                  ori          tp, a1, -1170
                  xori         a6, s5, -300
                  bne          tp, s9, 10f
                  or           a6, s7, s10
                  addi         a4, s6, 702
                  lui          a2, 905217
10:               sub          t0, zero, s1
                  slli         s8, zero, 20
                  andi         s8, gp, 1692
                  addi         t1, s10, 1281
14:               andi         t1, gp, 415
                  or           t1, zero, a6
                  sltu         ra, a6, a3
                  la           t1, sub_1
                  addi         t1, t1, -630
                  slli         t4, s3, 15
                  bge          zero, s0, main_j1 #branch to jump instr
                  srli         s6, a4, 2
                  or           t0, t5, a5
                  sll          s7, s10, s1
                  lui          sp, 417370
                  srl          a0, s2, a1
main_j1:          jalr         a6, t1, 630 #jump main -> sub_1
                  srli         a0, t1, 15
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            slt          s11, t3, s2
                  addi         t5, t5, -28
                  slti         zero, zero, -160
                  sw           a6, 4(t5)
                  lui          ra, 614016
                  andi         t0, a5, 2009
                  addi         s4, zero, -1 #init loop 1 counter
                  addi         t1, zero, -13 #init loop 1 limit
sub_2_4_1_t:      xori         a2, s2, -1234
                  or           tp, t6, s0
                  addi         s4, s4, -2 #update loop 1 counter
                  addi         t4, zero, 4 #init loop 0 counter
                  addi         s7, zero, 20 #init loop 0 limit
sub_2_4_0_t:      nop
                  srli         t0, a7, 14
                  addi         t4, t4, 8 #update loop 0 counter
                  bne          t4, s7, sub_2_4_0_t #branch for loop 0
                  beq          s4, t1, sub_2_4_1_t #branch for loop 1
                  sltiu        a5, s0, 906
                  addi         a5, zero, -7 #init loop 0 counter
                  addi         s2, zero, 7 #init loop 0 limit
                  xori         a1, t4, 1307
                  srli         s5, s5, 22
                  nop
sub_2_2_0_t:      slti         t1, s11, 601
                  and          a3, a2, s9
                  add          t3, t1, sp
                  addi         a5, a5, 4 #update loop 0 counter
                  slli         s0, a5, 12
                  slti         s9, a0, 923
                  bltu         a5, s2, sub_2_2_0_t #branch for loop 0
                  slti         a2, a1, -741
                  addi         t4, zero, 9 #init loop 1 counter
                  slti         tp, gp, -357
                  slli         a5, a1, 26
                  addi         s2, zero, 8 #init loop 1 limit
sub_2_1_1_t:      nop
                  sltiu        ra, t5, 362
                  srli         a6, s1, 30
                  addi         t4, t4, -6 #update loop 1 counter
                  addi         s11, zero, 0 #init loop 0 counter
                  addi         s6, zero, -20 #init loop 0 limit
                  lui          a0, 232342
sub_2_1_0_t:      xor          a4, tp, s9
                  slti         s8, t6, 1613
                  add          gp, s3, zero
                  addi         s11, s11, -6 #update loop 0 counter
                  addi         gp, a3, -158
                  bge          s11, s6, sub_2_1_0_t #branch for loop 0
                  sub          s9, s8, a5
                  bgeu         t4, s2, sub_2_1_1_t #branch for loop 1
                  srl          gp, tp, s10
                  addi         a0, zero, -5 #init loop 0 counter
                  nop
                  addi         tp, zero, 2 #init loop 0 limit
                  srl          zero, tp, s3
sub_2_0_0_t:      xori         t2, s4, 1390
                  addi         a0, a0, 5 #update loop 0 counter
                  sltu         s6, s3, a4
                  blt          a0, tp, sub_2_0_0_t #branch for loop 0
                  sub          t3, s8, a0
                  slti         a4, s11, 424
                  lui          s2, 258241
                  andi         a5, a1, 1518
                  beq          s3, s4, 17f
                  srli         gp, s1, 3
                  add          gp, s4, s10
                  beq          t3, s7, 8f
                  xori         sp, s2, -15
8:                sra          s8, s9, s0
                  sub          s9, s9, t3
                  slli         zero, a7, 28
                  slti         ra, zero, -353
                  bge          s6, zero, 31f
                  xori         gp, s1, -4
                  slti         s6, s3, 1816
                  bgeu         a2, t5, 32f
                  andi         s9, s0, 1110
17:               nop
                  sltu         s2, s3, gp
                  and          s8, s4, sp
                  srl          tp, s7, s10
                  sll          s2, s8, t4
                  sub          s1, gp, a2
                  add          t3, s2, t0
                  addi         t3, s0, -521
                  sltu         a2, sp, t2
                  andi         s11, s10, -1562
                  blt          tp, s0, 44f
                  xori         a3, s5, -1164
                  slti         zero, s4, 408
                  slti         a2, t6, 1238
31:               srai         zero, s1, 19
32:               sltu         zero, ra, t4
                  bge          tp, zero, 38f
                  sltu         gp, s9, s11
                  srl          sp, s4, t0
                  sra          sp, t0, a3
                  or           s0, t4, a2
38:               slt          gp, sp, s10
                  sra          a6, a1, t4
                  bgeu         t4, t2, 59f
                  sub          a6, a2, s9
                  slli         s5, s5, 12
                  sltu         t4, zero, a1
44:               bgeu         t1, t1, 52f
                  add          s8, a4, a2
                  blt          t0, s9, 57f
                  ori          s8, a7, -115
                  blt          a5, a4, 62f
                  sltiu        s2, sp, -1301
                  sll          a5, ra, s10
                  bge          sp, a0, 65f
52:               slli         a6, ra, 19
                  slt          s4, zero, s9
                  blt          zero, s6, 61f
                  sub          s5, s6, tp
                  addi         s4, a7, 28
57:               bltu         a1, t2, 71f
                  srl          t4, s9, ra
59:               sltiu        ra, s0, 428
                  slli         s8, t5, 25
61:               blt          a3, s11, 80f
62:               srl          a1, s9, t4
                  srai         t0, s8, 28
                  xor          a0, a2, t3
65:               and          s9, s10, s9
                  addi         s7, s2, 696
                  sub          t3, t5, t6
                  ori          t3, t6, 524
                  srai         zero, s9, 15
                  and          sp, s7, t6
71:               addi         t2, t4, 1137
                  beq          s1, gp, 81f
                  ori          s6, gp, 1689
                  sra          sp, t3, a2
                  srli         t6, a3, 8
                  beq          s6, a5, 88f
                  slli         s4, t2, 10
                  srli         s11, a3, 31
                  xor          t1, a7, s8
80:               blt          t2, s1, 97f
81:               bne          t6, s10, 100f
                  sltiu        t2, a1, -788
                  andi         s7, s0, -472
                  slti         t3, s6, -80
                  or           a2, a7, s6
                  blt          s8, s5, 103f
                  slti         s10, t5, -1082
88:               sltu         s5, s1, t2
                  sltiu        tp, a0, -137
                  andi         gp, t6, 1174
                  add          s10, t3, a3
                  sll          a3, s1, t3
                  sub          a4, gp, s3
                  bltu         ra, s0, 98f
                  slt          a2, s9, a5
                  xori         t1, a1, 1605
97:               bge          t5, s4, 115f
98:               nop
                  bgeu         a3, a0, 116f
100:              bgeu         a2, s10, 107f
                  sltiu        t6, t3, -1790
                  bge          s10, t2, 122f
103:              sub          s2, t3, s9
                  bge          a5, t6, 116f
                  sra          s7, s0, s0
                  and          zero, t0, t2
107:              nop
                  and          s11, a3, s9
                  xori         a3, t5, -202
                  sll          gp, a1, t0
                  slli         s9, s0, 15
                  auipc        zero, 290660
                  addi         s11, s8, 1084
                  srli         s7, sp, 29
115:              sltiu        s10, s3, 652
116:              sll          s10, s11, s10
                  bgeu         t3, a4, 125f
                  sltu         s4, s7, zero
                  srai         a2, a7, 19
                  auipc        a5, 28500
                  add          s10, gp, t2
122:              srli         zero, s1, 23
                  addi         s8, t5, 940
                  bge          ra, tp, 137f
                  addi         t3, zero, 1 #init loop 0 counter
                  add          s10, t6, s11
                  sra          s11, s10, s5
                  sll          zero, s5, gp
                  slti         a1, gp, 617
                  xor          s8, a5, a0
                  srai         s6, s10, 25
                  or           t0, t6, t6
                  addi         gp, zero, -14 #init loop 0 limit
                  slt          a5, t1, a4
                  slli         tp, a7, 27
sub_2_3_0_t:      nop
                  sll          a5, s4, s4
                  xor          s7, s7, s1
                  addi         t3, t3, -3 #update loop 0 counter
                  ori          t0, s11, 531
                  nop
                  slt          s6, a1, t5
                  sll          t1, s10, a5
                  lui          a0, 575386
                  slt          s11, a4, s5
                  srli         s9, s3, 31
                  lui          a0, 495461
                  beq          t3, gp, sub_2_3_0_t #branch for loop 0
                  slt          t4, a3, s4
125:              xor          t1, s4, s8
                  beq          t1, a5, 134f
                  auipc        t2, 349350
                  sub          sp, s9, t4
                  beq          t4, t3, 143f
                  srai         s10, t4, 29
                  andi         s4, zero, -1990
                  srai         a1, gp, 17
                  xor          t6, a3, s4
134:              bltu         t2, s10, 139f
                  srai         a1, t3, 5
                  lui          gp, 248278
137:              nop
                  slt          s6, s7, a7
139:              nop
                  bgeu         a6, t5, 157f
                  add          s11, s4, a5
                  xor          t4, s2, a1
143:              beq          sp, ra, 156f
                  nop
                  bge          t5, t3, 159f
                  srai         s6, gp, 17
                  auipc        a1, 421414
                  nop
                  blt          t3, a7, 153f
                  sra          t3, sp, s10
                  bne          s7, a5, 163f
                  and          t0, s3, t0
153:              auipc        s9, 15938
                  auipc        gp, 549265
                  slt          s8, ra, t6
156:              xori         tp, ra, 1065
157:              andi         s10, s1, 421
                  blt          s7, a6, 172f
159:              srl          s10, a6, s8
                  beq          a7, s10, 165f
                  slt          s9, t2, s2
                  lui          s2, 791428
163:              bgeu         s4, t6, 175f
                  beq          ra, s0, 178f
165:              andi         s1, s6, 568
                  bltu         a6, t6, 186f
                  andi         tp, t1, 969
                  bltu         t4, sp, 185f
                  slli         s11, a3, 16
                  and          s7, a4, ra
                  sra          zero, t6, a2
172:              slli         s10, s4, 16
                  sub          a4, s9, s8
                  or           a6, a1, a0
175:              sub          tp, t2, s4
                  xori         a0, a0, 1383
                  sra          a1, a0, s6
178:              bgeu         s3, t6, 187f
                  beq          s11, a5, 197f
                  srai         gp, gp, 2
                  bge          s10, t5, 200f
                  sub          gp, a1, a6
                  sub          t2, s5, zero
                  andi         t1, a7, 376
185:              sltiu        s11, a3, -1308
186:              srai         s10, s4, 19
187:              srl          t4, a7, a1
                  srli         s0, t3, 26
                  addi         a0, s10, 369
                  srl          tp, s6, a4
                  srai         gp, s7, 8
                  blt          ra, t1, 206f
                  lui          t6, 687190
                  slli         s11, s3, 21
                  auipc        s4, 11997
                  sltu         a6, t5, t3
197:              auipc        t3, 953587
                  bgeu         a6, a5, 217f
                  auipc        a3, 632589
200:              slt          t3, s3, a2
                  ori          t3, a1, -291
                  bltu         ra, s0, 210f
                  sll          t1, a6, t2
                  sltiu        s5, t2, -1400
                  or           zero, s8, t4
206:              ori          s7, s2, -1342
                  addi         s5, s4, 1073
                  blt          tp, s10, 215f
                  srli         t4, a2, 9
210:              slli         s2, s4, 10
                  addi         s1, a1, 948
                  srl          a2, zero, s10
                  bne          zero, t4, 232f
                  sub          a4, s8, s0
215:              bne          s5, s8, 232f
                  xori         s0, s3, 1850
217:              sltiu        s1, gp, 1805
                  sub          s6, t2, s8
                  sltu         a3, t2, s11
                  ori          tp, t3, -222
                  bne          s7, s9, 228f
                  lui          tp, 920939
                  nop
                  beq          t1, t5, 226f
                  slt          zero, t5, s2
226:              slli         a4, s10, 10
                  or           s8, a0, a0
228:              addi         t3, s7, 1839
                  blt          sp, t4, 240f
                  blt          t0, s9, 235f
                  auipc        a3, 1027044
232:              lui          s1, 163554
                  srai         s1, a6, 2
                  auipc        ra, 487965
                  sltiu        s4, t4, 598
                  and          zero, t4, s9
                  beq          t5, ra, sub_2_j3 #branch to jump instr
                  addi         s8, t0, 1764
                  xor          s9, t5, a2
                  xori         a4, a5, 276
sub_2_j3:         jal          a6, sub_3 #jump sub_2 -> sub_3
235:              lui          a1, 1029425
                  sub          s9, s9, zero
                  srli         s0, a0, 0
                  blt          a0, a7, 257f
                  add          zero, tp, a7
240:              slli         t4, zero, 8
                  auipc        a3, 811337
                  ori          t3, t2, 1440
                  slli         a5, t1, 26
                  or           s10, a3, a0
                  add          a6, s3, s7
                  and          a1, s9, s5
                  xori         s1, t0, -1418
                  bgeu         s0, a0, 265f
                  bltu         a6, zero, 266f
                  sub          a6, a3, s3
                  xori         s11, a5, -1218
                  ori          s0, s0, 1644
                  srl          s2, sp, ra
                  addi         gp, t2, -1464
                  sra          zero, s9, a2
                  ori          a2, s11, 1574
257:              sltu         t0, ra, a6
                  or           a6, s3, t0
                  slt          t2, a6, sp
                  add          s2, s9, ra
                  xori         gp, a7, 185
                  bltu         s11, t2, 276f
                  or           a1, a0, t4
                  srai         tp, s8, 13
265:              srl          s8, s11, t1
266:              add          a4, a5, s9
                  slli         a1, a1, 13
                  lui          sp, 548350
                  slt          zero, tp, a7
                  blt          s3, ra, 278f
                  addi         s1, a4, 560
                  bge          s3, zero, 280f
                  blt          s9, s8, 284f
                  and          a0, tp, s11
                  xor          a1, s4, tp
276:              andi         s1, a0, 956
                  bgeu         a0, a3, 284f
278:              sltiu        s9, s4, 554
                  auipc        s9, 579827
280:              beq          s7, a5, 284f
                  xor          a0, a4, s9
                  srl          s8, s9, s0
                  sub          tp, s4, s8
284:              or           a4, t6, s5
                  lw           a6, 4(t5)
                  sltiu        s5, a7, -95
                  lui          s1, 116677
                  addi         t5, t5, 28
                  ori          s7, s7, 12
                  sll          s2, t1, t0
384:              addi x13, x16, 0
384:              jalr x13, x13, 0
sub_1:            bge          s0, a6, sub_1_stack_p
                  ori          gp, t1, 1213
                  srai         s8, s7, 31
sub_1_stack_p:    addi         t5, t5, -20
                  sw           a6, 4(t5)
                  srai         gp, a2, 22
                  addi         a1, zero, -1 #init loop 0 counter
                  srai         gp, s0, 18
                  addi         sp, zero, -19 #init loop 0 limit
                  slli         a2, s10, 10
sub_1_3_0_t:      sltu         s6, t2, a3
                  srl          a5, s7, t0
                  srl          t1, s6, s1
                  xor          s9, s8, a6
                  addi         a1, a1, -6 #update loop 0 counter
                  xori         s7, s6, -753
                  andi         t3, s9, -1745
                  sltiu        t1, s10, -1540
                  bne          a1, sp, sub_1_3_0_t #branch for loop 0
                  lui          a5, 623669
                  addi         s8, zero, 8 #init loop 0 counter
                  sltiu        s10, a4, 1312
                  srai         a1, s9, 16
                  or           t0, t5, t2
                  addi         ra, a4, -1844
                  and          s5, a2, ra
                  lui          s4, 868005
                  nop
                  andi         s4, a2, -1007
                  slti         s5, ra, 1095
                  nop
                  addi         s2, zero, 14 #init loop 0 limit
sub_1_4_0_t:      or           a5, zero, a7
                  sltu         a4, sp, a5
                  and          s9, gp, gp
                  addi         s8, s8, 9 #update loop 0 counter
                  sltu         t1, s4, a4
                  slti         t2, t0, 1316
                  nop
                  sltu         s10, a5, s4
                  sltu         t4, s3, a1
                  addi         a0, s11, 480
                  sltu         s5, t0, t0
                  blt          s8, s2, sub_1_4_0_t #branch for loop 0
                  ori          a6, s5, -1840
                  addi         t1, zero, 7 #init loop 1 counter
                  xor          a3, gp, s6
                  sltu         gp, t0, t4
                  addi         s11, zero, 6 #init loop 1 limit
                  sra          s2, a2, t6
sub_1_1_1_t:      nop
                  addi         t1, t1, -1 #update loop 1 counter
                  addi         s7, zero, 6 #init loop 0 counter
                  sltu         t3, s2, a0
                  addi         t4, zero, 5 #init loop 0 limit
sub_1_1_0_t:      slt          ra, s9, t1
                  addi         s7, s7, -4 #update loop 0 counter
                  bgeu         s7, t4, sub_1_1_0_t #branch for loop 0
                  ori          a0, s0, -468
                  ori          t0, a6, -2009
                  bgeu         t1, s11, sub_1_1_1_t #branch for loop 1
                  slli         s6, s11, 8
                  addi         t2, zero, -9 #init loop 1 counter
                  srai         t3, a1, 2
                  srai         s0, tp, 2
                  addi         ra, zero, -13 #init loop 1 limit
sub_1_5_1_t:      ori          s9, t6, 1083
                  srai         s10, s1, 14
                  addi         t2, t2, -4 #update loop 1 counter
                  and          gp, s9, tp
                  addi         a5, zero, 2 #init loop 0 counter
                  ori          tp, t5, 311
                  auipc        s5, 29933
                  sra          zero, s11, a4
                  lui          s11, 714694
                  addi         t4, zero, 10 #init loop 0 limit
                  sll          s4, t3, s7
                  slli         t3, s0, 5
                  andi         s7, t5, 1672
                  srl          sp, t5, s5
                  lui          a3, 621507
                  srai         s2, t4, 13
                  xori         t6, s4, -811
sub_1_5_0_t:      andi         tp, s11, -1236
                  xor          s0, s3, s1
                  slli         t1, a3, 31
                  addi         a5, a5, 4 #update loop 0 counter
                  slt          t0, a6, s1
                  blt          a5, t4, sub_1_5_0_t #branch for loop 0
                  sub          a0, s2, t0
                  xor          t3, s3, a1
                  slti         t6, t4, -1317
                  beq          t2, ra, sub_1_5_1_t #branch for loop 1
                  srl          a3, sp, s6
                  addi         a6, zero, -5 #init loop 1 counter
                  addi         s10, s0, -1423
                  addi         sp, zero, 19 #init loop 1 limit
                  or           tp, a6, s9
                  sltiu        s10, sp, 1661
                  sll          s2, s7, t3
sub_1_0_1_t:      addi         t1, a4, -2
                  add          s7, s1, ra
                  nop
                  or           ra, gp, a6
                  sub          t1, s10, s0
                  addi         a6, a6, 6 #update loop 1 counter
                  sra          s4, s10, t5
                  addi         s9, zero, 6 #init loop 0 counter
                  lui          a1, 482207
                  addi         s1, zero, 6 #init loop 0 limit
                  srli         t2, t5, 11
sub_1_0_0_t:      xor          s8, a0, a7
                  and          s10, s6, a6
                  nop
                  xori         t2, t5, 1761
                  addi         s9, s9, -3 #update loop 0 counter
                  bgeu         s9, s1, sub_1_0_0_t #branch for loop 0
                  sub          a1, t4, s11
                  nop
                  xor          s0, a1, tp
                  srai         ra, ra, 22
                  beq          a6, sp, sub_1_0_1_t #branch for loop 1
                  lui          s5, 60677
                  addi         a6, zero, 8 #init loop 1 counter
                  sll          t3, gp, s8
                  sll          s7, t5, a0
                  addi         s10, zero, 2 #init loop 1 limit
sub_1_2_1_t:      xori         t6, s0, 131
                  slt          t3, s2, t0
                  addi         a6, a6, -8 #update loop 1 counter
                  slli         a3, s3, 0
                  andi         a0, s1, -204
                  ori          t2, a0, -1213
                  addi         tp, zero, 6 #init loop 0 counter
                  addi         s0, zero, -7 #init loop 0 limit
                  sltu         a3, s1, tp
sub_1_2_0_t:      add          s6, a1, a5
                  srl          t2, s0, a1
                  sub          s2, s10, a3
                  addi         tp, tp, -9 #update loop 0 counter
                  bge          tp, s0, sub_1_2_0_t #branch for loop 0
                  sra          s1, a0, s10
                  bge          a6, s10, sub_1_2_1_t #branch for loop 1
                  sub          s4, s11, t4
                  lui          t4, 473056
                  srl          t6, a4, s11
                  sltu         tp, s6, s1
                  xori         a6, ra, 1334
                  and          s5, a7, t1
                  lui          s9, 406639
                  add          s1, s6, s3
                  sll          t2, t2, s7
                  andi         tp, a0, -1108
                  andi         s0, a5, -748
                  sub          t4, a3, s7
                  xori         a6, s2, -480
                  lui          s2, 237639
                  blt          a1, a6, 24f
                  bne          t5, a6, 19f
                  srl          t4, ra, a0
                  srai         a5, a4, 15
                  sub          s8, t1, t2
                  bgeu         s4, ra, 27f
19:               bge          sp, ra, 31f
                  lui          s8, 52902
                  auipc        s6, 424870
                  bltu         t4, s6, 28f
                  xori         s2, s0, 901
24:               sub          s7, s9, s4
                  beq          tp, a7, 35f
                  bne          s0, a4, 38f
27:               add          s4, a1, s9
28:               slli         t3, s8, 16
                  srai         s0, a1, 9
                  bltu         a3, a1, 42f
31:               sll          s0, s0, s6
                  sltu         s9, t0, s4
                  and          s0, gp, s11
                  srl          t3, ra, s9
35:               andi         a5, t1, 158
                  ori          tp, s8, 941
                  add          t3, t4, a1
38:               add          a6, a1, t5
                  auipc        a1, 93815
                  sltu         s8, t5, a2
                  auipc        s4, 723686
42:               ori          gp, s2, -1560
                  sll          a2, a7, ra
                  bgeu         sp, a5, 46f
                  bgeu         s5, s4, 59f
46:               sll          a3, s6, t1
                  sltiu        a0, t5, 592
                  sub          zero, a2, s4
                  slli         s5, a4, 15
                  xor          s7, t4, s9
                  bne          a4, s8, 56f
                  slt          t2, gp, s2
                  or           s0, s8, s2
                  blt          s9, a3, 65f
                  bltu         s6, a7, 57f
56:               bgeu         t1, a1, 60f
57:               slt          sp, t5, t2
                  addi         a4, t5, 676
59:               sltiu        t6, a2, -1864
60:               andi         s4, s11, 206
                  blt          a1, sp, 63f
                  lui          s6, 1014898
63:               xor          gp, gp, sp
                  bgeu         a4, a2, 78f
65:               or           t4, s7, t2
                  lui          s6, 438258
                  ori          s9, tp, 1613
                  auipc        s9, 519380
                  or           t2, sp, s0
                  sra          t1, s3, s9
                  sll          sp, a5, s6
                  slt          zero, t6, s1
                  slti         t1, t1, -1195
                  srl          ra, a0, gp
                  sltu         t0, t0, s6
                  slti         zero, s8, -1706
                  beq          s4, s3, 88f
78:               or           s7, tp, s2
                  bge          a6, t0, 86f
                  srl          s0, a7, tp
                  sra          t1, a4, s10
                  sltu         s5, s7, a4
                  srl          s8, t3, t0
                  sra          s1, s10, s0
                  lui          ra, 93684
86:               slti         t4, t4, 1292
                  slti         t3, t3, -1617
88:               blt          s2, s2, 101f
                  sltiu        a0, s2, 1051
                  bne          sp, a5, 100f
                  or           a1, s0, s2
                  or           s11, ra, s5
                  srli         s11, a5, 7
                  andi         a6, zero, 38
                  bne          s3, a1, 96f
96:               srai         s2, t6, 21
                  slti         sp, t5, 382
                  sub          t6, a2, a0
                  sll          s9, t6, t5
100:              srli         sp, s4, 20
101:              beq          s5, s9, 114f
                  srl          s0, t5, t2
                  slt          s7, s9, a7
                  and          a1, a1, t4
                  slti         ra, t6, 1793
                  slli         a2, t6, 28
                  bne          s0, a6, 121f
                  srai         ra, s3, 14
                  addi         sp, s3, -1147
                  xori         t2, t6, 1528
                  lui          s10, 684402
                  slli         s11, a1, 6
                  or           tp, zero, t5
114:              bltu         a3, s6, 132f
                  or           s10, t2, zero
                  addi         s2, tp, 1218
                  bge          a7, s10, 136f
                  or           t0, a4, ra
                  slt          ra, t4, s6
                  slli         s7, tp, 0
121:              slti         a4, gp, 96
                  add          t3, t6, t2
                  add          t2, s3, a0
                  sub          t3, s10, s8
                  slt          t2, s11, t2
                  and          s9, s7, tp
                  or           a1, a4, zero
                  andi         sp, sp, 1422
                  slti         a1, t1, -105
                  xor          s1, ra, s0
                  auipc        s9, 927553
132:              sltiu        s2, t1, -1147
                  srl          s10, a1, s7
                  bgeu         s11, s1, 139f
                  ori          s0, s5, -713
136:              nop
                  sll          t0, sp, t0
                  srli         ra, t5, 14
139:              xor          a4, t3, s6
                  bne          sp, t3, 154f
                  or           s0, t5, t6
                  or           tp, s7, sp
                  add          s1, a3, t4
                  ori          a1, s5, 837
                  srai         s6, s1, 18
                  sltu         a2, s2, s1
                  bne          sp, t5, 157f
                  ori          s6, gp, 936
                  sub          s2, s7, t5
                  add          tp, t1, a4
                  bge          s8, a3, 152f
152:              blt          a7, s5, 164f
                  srli         t2, a6, 6
154:              andi         a6, a4, -1461
                  xor          s5, t3, s10
                  andi         s0, t4, 1539
157:              bltu         t4, s3, 166f
                  andi         a2, s9, 1299
                  slt          s8, t4, s0
                  beq          sp, t2, 161f
161:              beq          t3, s3, 173f
                  sra          a1, a7, sp
                  sub          s6, a0, t1
164:              sll          a5, ra, s11
                  lui          s2, 118666
166:              sltiu        s4, a1, -635
                  srai         zero, a0, 22
                  sll          s10, t2, zero
                  sll          s11, t3, s10
                  or           t2, sp, s3
                  bne          t0, t4, 178f
                  sub          s2, t3, s0
173:              bgeu         s4, a1, 175f
                  bne          s3, t2, 184f
175:              sll          t0, a6, ra
                  srai         t2, a0, 5
                  xori         a4, a4, 1547
178:              add          s4, ra, s5
                  srai         ra, t3, 0
                  ori          s4, a5, -932
                  srl          t4, s5, s5
                  xor          t2, a5, a3
                  beq          a3, s2, 194f
184:              srl          s7, t1, t1
                  slli         s8, a0, 4
                  ori          gp, t2, -47
                  slli         t3, s1, 30
                  srli         a5, a4, 23
                  and          tp, s3, t4
                  sra          s10, s8, a4
                  sll          a6, a4, a2
                  or           s8, t6, s8
                  slli         s0, a2, 25
194:              bgeu         t1, s2, 205f
                  srli         s7, a2, 11
                  bge          sp, s6, 208f
                  xor          s10, a7, s1
                  ori          a3, s2, -1825
                  lui          s11, 270226
                  xor          s5, a1, t0
                  sub          s8, a1, s10
                  blt          t3, s3, 216f
                  sra          a6, t4, s6
                  bltu         a3, s4, 208f
205:              andi         t0, ra, 1444
                  bge          a3, t2, 216f
                  bge          s7, t3, 221f
208:              srai         gp, a7, 3
                  or           t2, s5, zero
                  add          a0, t0, s0
                  nop
                  nop
                  nop
                  xori         s8, s1, 21
                  srli         s8, s9, 6
216:              xori         a4, ra, -1911
                  ori          ra, s8, 1017
                  auipc        s6, 809340
                  xor          ra, tp, a3
                  ori          s6, t4, -915
221:              and          ra, s9, s2
                  bne          a0, s10, 235f
                  sub          tp, a2, t0
                  add          t1, tp, t5
                  sra          s7, t3, t6
                  slt          zero, s0, s6
                  beq          s3, s7, 240f
                  sltiu        s1, t6, 1861
                  or           a5, s6, s1
                  beq          s11, t5, 235f
                  add          s7, t2, s9
                  add          t1, a2, s6
                  lui          t3, 176472
                  ori          a6, t4, -338
235:              bltu         s1, t2, 254f
                  andi         s6, t3, 1569
                  bgeu         a0, s11, 239f
                  addi         zero, s1, 494
239:              bgeu         t0, a4, 244f
240:              bltu         s3, s11, 241f
241:              slli         a1, s0, 3
                  xori         s7, a1, -155
                  bgeu         s1, t3, 255f
244:              beq          s2, a7, 249f
                  and          t1, s0, zero
                  slt          t2, s5, a3
                  bgeu         s5, t2, 249f
                  addi         s6, t2, -164
249:              beq          s1, zero, 261f
                  bne          s3, sp, 260f
                  srli         ra, t5, 17
                  addi         a2, sp, -138
                  srai         s4, a5, 18
254:              srli         tp, s7, 1
255:              and          s6, s2, t2
                  slli         a3, s1, 1
                  sltiu        s9, a0, -384
                  slt          zero, s4, a1
                  auipc        a4, 721774
260:              auipc        t1, 974389
261:              andi         a6, s6, -916
                  xori         gp, t0, 1761
                  sll          s2, a6, ra
                  slt          t6, s10, s11
                  add          s2, ra, s6
                  nop
                  blt          s5, a1, 278f
                  sll          ra, s1, zero
                  ori          sp, s0, 443
                  bgeu         t3, s3, 284f
                  add          s4, a0, s9
                  slt          s7, s10, s2
                  srli         t6, s8, 4
                  srl          s1, s2, a6
                  bltu         gp, t4, 293f
                  srai         s1, gp, 28
                  blt          t4, sp, 291f
278:              xor          s8, t0, a7
                  add          s2, a0, a5
                  ori          zero, s1, 1647
                  srli         t1, s3, 29
                  xori         t0, tp, -4
                  srai         a1, zero, 18
284:              blt          a0, s2, 290f
                  bgeu         s2, sp, 287f
                  beq          s8, t2, 299f
287:              bgeu         s3, s6, 298f
                  xor          s9, t0, t5
                  sltiu        a1, s3, 2
290:              srl          t6, gp, t4
291:              andi         s6, s5, -553
                  add          a2, s2, s7
293:              bgeu         tp, a0, 299f
                  sll          tp, s9, t4
                  auipc        gp, 475611
                  sra          s2, s1, s4
                  bltu         sp, s4, 298f
298:              srai         ra, t2, 24
299:              auipc        tp, 315774
                  lw           a6, 4(t5)
                  srl          s1, s11, s11
                  andi         a1, s9, -1372
                  srl          a3, a0, t1
                  addi         t5, t5, 20
                  slli         a4, s9, 10
450:              addi x31, x16, 1
450:              jalr x31, x31, 0
sub_5:            blt          t5, t3, sub_5_stack_p
                  sltiu        t1, s5, -857
                  auipc        a3, 401938
                  xor          a4, a7, s9
                  auipc        s1, 478854
                  lui          s2, 134294
                  nop
                  sltiu        a4, sp, 768
                  and          a1, a6, s6
sub_5_stack_p:    addi         t5, t5, -64
                  sw           a6, 4(t5)
                  addi         t3, a2, -820
                  sll          gp, a4, s0
                  addi         s2, zero, -4 #init loop 0 counter
                  ori          a0, s9, 1071
                  sll          a6, t4, s3
                  lui          s4, 975507
                  srai         t4, t6, 0
                  nop
                  nop
                  sub          s7, gp, t6
                  addi         t0, zero, -10 #init loop 0 limit
                  xori         s10, a1, -446
                  srli         s4, t1, 27
sub_5_7_0_t:      sltu         s11, t6, s4
                  sub          a2, s1, t1
                  addi         s2, s2, -6 #update loop 0 counter
                  sltiu        s9, s5, -1503
                  srl          s0, a2, a7
                  beq          s2, t0, sub_5_7_0_t #branch for loop 0
                  srli         s11, zero, 14
                  addi         t2, zero, 0 #init loop 1 counter
                  lui          gp, 28884
                  auipc        a1, 987676
                  addi         a0, zero, 6 #init loop 1 limit
sub_5_20_1_t:     xori         t0, tp, 1720
                  andi         s8, a0, 1054
                  addi         t2, t2, 9 #update loop 1 counter
                  xor          a3, s2, tp
                  and          s5, t6, t0
                  addi         s7, zero, 9 #init loop 0 counter
                  sra          gp, s4, t6
                  xor          s4, t3, s4
                  ori          t3, s9, -1770
                  or           s1, gp, s11
                  slti         s9, a0, 979
                  and          s8, a1, s7
                  addi         s6, zero, 18 #init loop 0 limit
sub_5_20_0_t:     xor          s9, s9, t0
                  addi         a3, a2, 456
                  addi         s7, s7, 9 #update loop 0 counter
                  srl          s8, a4, t1
                  xor          s11, s7, s5
                  bne          s7, s6, sub_5_20_0_t #branch for loop 0
                  blt          t2, a0, sub_5_20_1_t #branch for loop 1
                  sltu         t4, a5, t0
                  addi         s4, zero, 3 #init loop 1 counter
                  add          t6, s9, a7
                  sltiu        t4, t4, -549
                  srli         gp, s6, 20
                  add          s7, s3, a7
                  addi         a2, zero, 13 #init loop 1 limit
                  slti         s10, s2, -761
                  srai         a6, zero, 19
sub_5_8_1_t:      or           t2, a5, a3
                  add          tp, t0, t1
                  slt          sp, t0, tp
                  addi         s4, s4, 7 #update loop 1 counter
                  addi         s6, zero, -8 #init loop 0 counter
                  addi         ra, zero, -9 #init loop 0 limit
                  slti         s9, t6, 1557
                  slli         t6, s3, 3
sub_5_8_0_t:      addi         a0, s4, -1958
                  andi         s9, t0, 702
                  addi         s6, s6, -10 #update loop 0 counter
                  bge          s6, ra, sub_5_8_0_t #branch for loop 0
                  sltu         s11, a6, t1
                  bltu         s4, a2, sub_5_8_1_t #branch for loop 1
                  srl          a1, a1, a1
                  addi         s11, zero, 5 #init loop 1 counter
                  srli         a6, t1, 24
                  addi         s7, zero, 19 #init loop 1 limit
                  nop
sub_5_5_1_t:      addi         ra, a1, 644
                  lui          a5, 692815
                  srl          s10, t6, t2
                  addi         s11, s11, 2 #update loop 1 counter
                  slli         s1, ra, 19
                  addi         gp, zero, -5 #init loop 0 counter
                  andi         sp, s11, 337
                  addi         a0, zero, 13 #init loop 0 limit
                  sltu         s10, a4, s6
sub_5_5_0_t:      slti         tp, s3, 1651
                  nop
                  addi         gp, gp, 5 #update loop 0 counter
                  bltu         gp, a0, sub_5_5_0_t #branch for loop 0
                  andi         a2, s5, 266
                  xori         a6, zero, 1996
                  xori         t3, sp, 66
                  addi         tp, s3, 1413
                  bltu         s11, s7, sub_5_5_1_t #branch for loop 1
                  sub          s4, s7, a6
                  addi         s1, zero, -10 #init loop 1 counter
                  or           s5, t1, t6
                  srai         ra, gp, 15
                  xor          s9, s7, sp
                  xori         t6, zero, 1798
                  and          a3, a1, s11
                  addi         a2, zero, -5 #init loop 1 limit
                  addi         a1, s2, -1470
                  slti         s8, s5, 1821
                  srl          t4, s7, s9
sub_5_18_1_t:     xori         s0, t0, -1264
                  nop
                  addi         s1, s1, 8 #update loop 1 counter
                  addi         t3, zero, 9 #init loop 0 counter
                  addi         s6, zero, 9 #init loop 0 limit
                  xori         t4, t6, -1684
sub_5_18_0_t:     or           s7, t6, a7
                  addi         t3, t3, -4 #update loop 0 counter
                  slti         gp, s1, 1510
                  srl          t2, t3, zero
                  xor          s7, s1, t6
                  bge          t3, s6, sub_5_18_0_t #branch for loop 0
                  srai         s10, t4, 29
                  andi         t0, s2, 1386
                  blt          s1, a2, sub_5_18_1_t #branch for loop 1
                  nop
                  addi         t1, zero, -10 #init loop 1 counter
                  add          s9, s7, s3
                  srai         s10, s2, 17
                  xori         s0, s0, -1672
                  auipc        s5, 329573
                  addi         a5, zero, -18 #init loop 1 limit
                  auipc        s6, 587703
sub_5_0_1_t:      slti         ra, a7, 1144
                  or           zero, gp, gp
                  or           s0, s3, a2
                  addi         t1, t1, -2 #update loop 1 counter
                  addi         t3, zero, 4 #init loop 0 counter
                  addi         a2, zero, -6 #init loop 0 limit
                  addi         a1, t4, -53
sub_5_0_0_t:      sltiu        tp, s4, -1958
                  sub          s2, t2, t6
                  ori          t2, zero, 1460
                  nop
                  andi         t2, s5, 93
                  or           s8, sp, t1
                  nop
                  auipc        t2, 295290
                  srli         s4, a3, 11
                  addi         t3, t3, -5 #update loop 0 counter
                  srl          a3, t4, s10
                  bge          t3, a2, sub_5_0_0_t #branch for loop 0
                  bne          t1, a5, sub_5_0_1_t #branch for loop 1
                  and          a3, s10, a6
                  addi         s9, zero, 1 #init loop 1 counter
                  addi         t4, zero, -15 #init loop 1 limit
sub_5_12_1_t:     lui          t6, 624479
                  addi         s9, s9, -5 #update loop 1 counter
                  addi         t1, zero, 6 #init loop 0 counter
                  sltiu        s0, s1, -1787
                  addi         s5, zero, 18 #init loop 0 limit
sub_5_12_0_t:     sltu         gp, a4, t2
                  addi         t1, t1, 4 #update loop 0 counter
                  bne          t1, s5, sub_5_12_0_t #branch for loop 0
                  bge          s9, t4, sub_5_12_1_t #branch for loop 1
                  srl          zero, t5, t4
                  addi         a4, zero, -2 #init loop 1 counter
                  auipc        t1, 936710
                  sra          s4, s8, t4
                  or           t4, a3, t1
                  ori          tp, a7, -24
                  addi         ra, zero, 0 #init loop 1 limit
sub_5_6_1_t:      xor          s11, a2, a1
                  slti         t1, gp, -1022
                  andi         t1, s3, 914
                  xor          t1, s3, s11
                  addi         a4, a4, 1 #update loop 1 counter
                  ori          a3, a7, -151
                  ori          t0, t2, 120
                  addi         s6, a0, 266
                  and          s1, t2, a4
                  addi         s10, zero, 9 #init loop 0 counter
                  srli         t1, t6, 10
                  sltu         a6, sp, s3
                  xori         t3, zero, -988
                  addi         s9, zero, 6 #init loop 0 limit
                  sll          a1, a7, t3
sub_5_6_0_t:      addi         s1, a3, 1981
                  add          a5, s1, sp
                  lui          t6, 640317
                  sltiu        s5, ra, 1037
                  add          a6, s0, t6
                  addi         s10, s10, -4 #update loop 0 counter
                  bgeu         s10, s9, sub_5_6_0_t #branch for loop 0
                  xor          t2, gp, t4
                  auipc        zero, 821495
                  srl          s2, s0, t6
                  ori          s11, t4, 407
                  sra          s1, ra, s6
                  blt          a4, ra, sub_5_6_1_t #branch for loop 1
                  add          s2, s2, s3
                  addi         s7, zero, -7 #init loop 1 counter
                  and          sp, s8, s1
                  slli         s8, gp, 14
                  and          sp, s10, a7
                  or           a4, s8, s2
                  addi         t1, a2, 935
                  slt          zero, s0, t4
                  srli         s4, s0, 26
                  srl          a5, zero, a7
                  sll          t0, s5, a7
                  addi         a2, zero, 4 #init loop 1 limit
sub_5_22_1_t:     sltu         a6, t6, a4
                  addi         s7, s7, 1 #update loop 1 counter
                  andi         zero, s10, -1429
                  sltu         a6, s5, s9
                  slli         a1, s7, 9
                  addi         t3, zero, 7 #init loop 0 counter
                  xor          t0, a0, ra
                  sll          a5, s1, s11
                  addi         t6, zero, 7 #init loop 0 limit
                  sra          a0, a5, zero
sub_5_22_0_t:     slt          sp, a2, gp
                  xor          s10, t6, s0
                  addi         t3, t3, -6 #update loop 0 counter
                  slli         a5, gp, 6
                  andi         a4, s10, -792
                  slli         t0, s4, 8
                  sltu         s5, t5, s2
                  ori          a5, t2, -21
                  bgeu         t3, t6, sub_5_22_0_t #branch for loop 0
                  srli         s2, sp, 30
                  sll          s8, s8, a6
                  blt          s7, a2, sub_5_22_1_t #branch for loop 1
                  slti         zero, a4, -623
                  addi         s4, zero, -7 #init loop 1 counter
                  auipc        gp, 566622
                  addi         t0, zero, -14 #init loop 1 limit
                  xor          gp, sp, s9
                  nop
sub_5_13_1_t:     andi         s8, a0, -845
                  srl          a1, s10, sp
                  sra          s7, s2, a0
                  srli         sp, a4, 26
                  add          zero, t0, s7
                  addi         s4, s4, -7 #update loop 1 counter
                  srl          s8, s9, gp
                  auipc        a4, 135823
                  addi         a5, zero, 3 #init loop 0 counter
                  or           s2, s1, a4
                  xor          tp, a0, s5
                  addi         s10, zero, 4 #init loop 0 limit
sub_5_13_0_t:     auipc        s8, 578565
                  and          a4, s8, tp
                  slt          s11, a1, t1
                  nop
                  slt          s1, a7, ra
                  sll          a3, s7, t6
                  addi         a5, a5, 1 #update loop 0 counter
                  sra          sp, s5, s0
                  xor          a4, s1, a0
                  bne          a5, s10, sub_5_13_0_t #branch for loop 0
                  add          ra, t3, s7
                  bne          s4, t0, sub_5_13_1_t #branch for loop 1
                  add          a6, a7, s7
                  addi         a2, zero, 10 #init loop 1 counter
                  addi         t0, zero, 9 #init loop 1 limit
                  sll          gp, sp, t3
sub_5_11_1_t:     lui          t4, 915933
                  slt          s6, a6, a0
                  nop
                  nop
                  addi         a2, a2, -7 #update loop 1 counter
                  addi         s0, zero, -9 #init loop 0 counter
                  addi         s2, zero, 16 #init loop 0 limit
sub_5_11_0_t:     nop
                  slti         a4, t0, -722
                  addi         s0, s0, 1 #update loop 0 counter
                  bltu         s0, s2, sub_5_11_0_t #branch for loop 0
                  srl          sp, s2, a2
                  or           t2, a2, s8
                  add          ra, s5, s5
                  ori          s8, s5, -1726
                  ori          a5, a3, -1019
                  auipc        t1, 359759
                  sub          a6, s7, t1
                  sltu         a5, s5, gp
                  sub          ra, a1, t2
                  bgeu         a2, t0, sub_5_11_1_t #branch for loop 1
                  nop
                  addi         s2, zero, 2 #init loop 1 counter
                  addi         t6, zero, -16 #init loop 1 limit
sub_5_16_1_t:     add          s0, s2, s0
                  addi         s2, s2, -9 #update loop 1 counter
                  addi         a3, zero, -5 #init loop 0 counter
                  addi         gp, zero, -9 #init loop 0 limit
sub_5_16_0_t:     or           s9, t2, s3
                  addi         a3, a3, -4 #update loop 0 counter
                  beq          a3, gp, sub_5_16_0_t #branch for loop 0
                  bne          s2, t6, sub_5_16_1_t #branch for loop 1
                  ori          ra, a5, 863
                  addi         t6, zero, 0 #init loop 0 counter
                  andi         a2, s9, 762
                  addi         a1, a1, 349
                  addi         s11, zero, -18 #init loop 0 limit
                  nop
                  slli         s8, t5, 16
                  slt          s5, s6, t2
                  sll          s0, s4, t2
sub_5_10_0_t:     auipc        s4, 307034
                  sub          a4, s11, s5
                  sra          zero, a1, gp
                  srli         t0, t2, 4
                  slti         t2, a5, -703
                  lui          tp, 613220
                  or           s2, t6, tp
                  addi         t6, t6, -2 #update loop 0 counter
                  addi         ra, s2, -1006
                  xor          s7, t6, t6
                  bge          t6, s11, sub_5_10_0_t #branch for loop 0
                  sub          a3, s5, a6
                  addi         ra, zero, -7 #init loop 1 counter
                  srli         tp, a0, 14
                  addi         a1, zero, 6 #init loop 1 limit
                  xor          tp, a6, a4
                  srl          s5, ra, s6
                  srli         s9, s6, 24
                  andi         s2, t3, -1135
sub_5_17_1_t:     sub          a5, t5, t4
                  addi         ra, ra, 4 #update loop 1 counter
                  xor          tp, t3, t4
                  add          a6, s7, a2
                  addi         s11, zero, 8 #init loop 0 counter
                  sra          a4, s6, gp
                  addi         s7, zero, 17 #init loop 0 limit
                  ori          t6, s1, 138
sub_5_17_0_t:     addi         s4, a5, 1260
                  addi         s11, s11, 4 #update loop 0 counter
                  srl          t2, s1, s5
                  blt          s11, s7, sub_5_17_0_t #branch for loop 0
                  and          a5, gp, s10
                  bltu         ra, a1, sub_5_17_1_t #branch for loop 1
                  srai         s1, t4, 0
                  addi         s10, zero, -2 #init loop 1 counter
                  sltu         a0, s8, s6
                  srai         ra, t3, 6
                  slli         s8, a4, 26
                  add          s11, s2, s2
                  sub          s6, s8, a0
                  addi         t6, zero, 3 #init loop 1 limit
sub_5_9_1_t:      nop
                  addi         s10, s10, 8 #update loop 1 counter
                  nop
                  nop
                  addi         a6, zero, 9 #init loop 0 counter
                  addi         t4, zero, -5 #init loop 0 limit
sub_5_9_0_t:      sltiu        t1, gp, -1789
                  xor          s7, s2, a5
                  auipc        t3, 501870
                  addi         a6, a6, -7 #update loop 0 counter
                  sltu         ra, a7, s8
                  sltiu        a5, s9, -1478
                  beq          a6, t4, sub_5_9_0_t #branch for loop 0
                  sltu         s5, t4, sp
                  bltu         s10, t6, sub_5_9_1_t #branch for loop 1
                  lui          zero, 962646
                  addi         s10, zero, 2 #init loop 0 counter
                  sub          a4, s4, s6
                  addi         s2, zero, -5 #init loop 0 limit
sub_5_2_0_t:      auipc        a1, 180079
                  srai         t0, a6, 27
                  addi         s10, s10, -2 #update loop 0 counter
                  bge          s10, s2, sub_5_2_0_t #branch for loop 0
                  addi         a6, a2, -1570
                  addi         s9, zero, 10 #init loop 0 counter
                  ori          s2, s5, -1852
                  addi         a5, zero, 9 #init loop 0 limit
                  slli         s5, s11, 5
                  lui          t6, 24007
                  andi         gp, s0, 570
                  slti         a1, gp, 1120
                  nop
                  add          s10, a1, a3
                  sltiu        zero, t0, -563
                  sltu         a1, s8, t2
                  sll          t0, s11, s4
                  lui          s1, 915174
                  auipc        a6, 608346
sub_5_14_0_t:     addi         s11, a3, -1287
                  xor          t4, s6, a0
                  addi         s9, s9, -2 #update loop 0 counter
                  andi         s8, s4, 1467
                  sub          s0, t4, tp
                  srl          t1, t4, s2
                  slti         t4, t3, -1139
                  srli         gp, s2, 18
                  sll          zero, s6, a5
                  srli         tp, a0, 11
                  auipc        tp, 77660
                  slt          a4, s10, s2
                  slli         sp, t1, 14
                  add          t2, t2, s0
                  bgeu         s9, a5, sub_5_14_0_t #branch for loop 0
                  sub          zero, t1, gp
                  srli         s5, gp, 27
                  auipc        t3, 181228
                  bne          s8, sp, 16f
                  sub          t6, s5, t5
                  slt          t1, s8, s10
                  add          gp, s5, s4
                  sltiu        a1, s8, -168
                  ori          s10, s10, -212
                  bge          s10, zero, 17f
                  sra          s11, s8, t4
                  bge          s3, s6, 20f
                  sltu         a2, a6, s6
                  srl          s5, a7, a7
                  blt          s9, t6, 24f
                  bltu         a2, ra, 17f
                  add          t0, a0, t0
16:               bgeu         a2, t1, 31f
17:               ori          s2, s9, 1282
                  sltu         a6, t5, t4
                  nop
20:               sll          zero, zero, s0
                  andi         s11, sp, -1172
                  sltu         a1, ra, sp
                  or           a1, tp, t4
24:               auipc        tp, 385883
                  blt          t0, s2, 43f
                  addi         t1, s10, 45
                  sra          s10, t0, s1
                  slli         s10, s1, 9
                  addi         s1, s6, 297
                  slli         s6, s9, 1
31:               sub          t4, sp, t3
                  slt          s0, s7, s9
                  sltu         s6, a2, t5
                  blt          a4, t1, 41f
                  beq          a5, a2, 47f
                  slti         s10, t4, 117
                  srai         s0, t4, 8
                  bge          t1, t0, 40f
                  bne          s2, t3, 58f
40:               or           a6, a6, gp
41:               xori         s10, a3, 26
                  lui          tp, 241294
43:               srli         s6, a4, 0
                  sub          s7, a3, s8
                  addi         s5, t4, 495
                  beq          s0, a7, 59f
47:               sltiu        s7, zero, 773
                  sltiu        sp, s9, 661
                  xor          t1, gp, a3
                  sltiu        a6, s0, -387
                  sll          s7, ra, s0
                  bltu         s9, a4, 53f
53:               blt          a0, s11, 56f
                  xor          a6, t3, s1
                  xori         gp, a0, -754
56:               srai         t6, s8, 31
                  auipc        a3, 387901
58:               sltu         gp, gp, a6
59:               bge          t6, s3, 61f
                  sub          a5, a5, a7
61:               and          t2, a6, t5
                  srai         a2, a2, 14
                  bltu         t6, t4, 73f
                  blt          a5, s5, 70f
                  slt          s5, s2, t2
                  sra          t6, s2, t2
                  slti         tp, s4, 1089
                  srai         t1, zero, 22
                  sra          t3, a1, s9
70:               bne          s5, s0, 74f
                  and          tp, a3, t2
                  xor          tp, a6, t2
73:               sltu         tp, s3, t2
74:               blt          gp, ra, 94f
                  xor          s8, s2, t5
                  slti         s11, t5, 1331
                  auipc        zero, 807138
                  lui          t4, 548922
                  slt          s1, s4, t5
                  andi         t2, a1, -2036
                  lui          s11, 458318
                  slli         t0, s5, 0
                  sll          t4, gp, t4
                  sltiu        t2, s6, 674
                  srai         a3, s9, 26
                  slli         tp, zero, 14
                  andi         zero, t2, 841
                  slli         s4, a2, 0
                  xori         a5, t3, 1557
                  sra          s11, s0, s7
                  lui          a3, 1326
                  bne          zero, s7, 98f
                  ori          a6, t3, 862
94:               sra          a1, s6, sp
                  ori          s10, t6, 1667
                  sltu         s9, sp, t3
                  andi         t3, s8, 1486
98:               beq          s7, s10, 107f
                  blt          s5, s8, 103f
                  sltu         a4, t2, s4
                  sra          s4, a4, s0
                  addi         t2, s5, 394
103:              nop
                  bgeu         t6, tp, 121f
                  srl          t4, zero, s9
                  slti         s0, s4, 2014
107:              addi         s4, a3, 1393
                  sltu         s0, s7, s5
                  blt          s6, s2, 120f
                  sra          s6, a2, s4
                  sra          s10, s4, s6
                  bne          t0, s7, 125f
                  andi         s9, t0, 802
                  bltu         s10, s2, 133f
                  xor          a1, s6, a6
                  srli         s0, s4, 24
                  andi         gp, t6, 1497
                  sltu         a1, ra, s1
                  or           s9, a6, a6
120:              sltu         gp, a2, s8
121:              slli         s0, a0, 9
                  sra          s10, s11, a4
                  add          s1, zero, t0
                  and          zero, s8, a1
125:              bgeu         s11, s3, 127f
                  srli         s9, sp, 20
127:              lui          s10, 200654
                  sub          s10, ra, s11
                  andi         a5, t1, 1953
                  add          t1, tp, a2
                  slt          t4, t6, t4
                  srl          a2, t5, s9
133:              sll          s2, gp, t3
                  sra          s7, a6, s1
                  bgeu         a6, s0, 153f
                  srl          s10, a3, s2
                  auipc        a1, 1028051
                  slti         gp, s0, 1954
                  srai         s9, s5, 15
                  sra          s10, t5, ra
                  srai         gp, s10, 16
                  beq          s7, t0, 144f
                  srai         zero, s2, 22
144:              add          ra, s9, a0
                  addi         s11, zero, -9 #init loop 0 counter
                  xor          a6, s7, ra
                  addi         s0, a0, 1902
                  andi         a4, ra, -1622
                  addi         t3, zero, 4 #init loop 0 limit
                  srai         s6, ra, 31
sub_5_1_0_t:      slt          a6, s9, s3
                  andi         s6, s2, 1872
                  sltu         t0, a4, a0
                  slt          sp, gp, a1
                  or           t4, s1, a2
                  and          s6, s0, s6
                  addi         a2, t2, -374
                  slli         s9, s3, 27
                  addi         s11, s11, 2 #update loop 0 counter
                  bltu         s11, t3, sub_5_1_0_t #branch for loop 0
                  slti         s0, s5, 1815
                  andi         a0, t5, 1570
                  sltu         s7, t0, a0
                  or           a3, s2, gp
                  xor          t1, ra, s2
                  addi         s0, s4, -1234
                  or           zero, s8, tp
                  lui          sp, 254917
                  and          a2, gp, t5
153:              beq          t3, a7, 154f
154:              or           s7, gp, s6
                  bne          t0, zero, 158f
                  beq          s1, s7, 165f
                  blt          s7, t2, 159f
158:              slli         a2, a4, 4
159:              lui          a2, 531370
                  addi         t0, s9, -321
                  slt          a0, s2, s8
                  auipc        s7, 404017
                  add          t4, s2, a0
                  add          a2, a5, a2
165:              sltu         a3, gp, s0
                  add          a6, a4, zero
                  srli         a3, s6, 19
                  srli         tp, s11, 14
                  lui          s2, 827486
                  lui          t6, 139578
                  beq          s2, s7, 191f
                  add          a5, ra, a5
                  sll          s1, t5, t3
                  addi         sp, a3, -253
                  sltu         ra, t0, a0
                  bge          a4, t0, 189f
                  ori          tp, a4, 378
                  slli         a4, s4, 25
                  addi         t6, tp, -1614
                  slti         sp, s1, -1053
                  bgeu         s8, a1, 192f
                  addi         t1, t0, -1138
                  srli         s7, s9, 24
                  sll          a1, a4, s6
                  sltu         s2, s11, s11
                  sltu         a6, gp, s5
                  andi         zero, s10, 1587
                  ori          t1, a7, 71
189:              srli         s7, s3, 19
                  ori          zero, a7, 1532
191:              ori          a2, s3, 73
192:              sltiu        a2, t3, -1030
                  srl          a2, t0, s10
                  andi         s9, s2, 81
                  sra          a6, zero, a7
                  beq          a3, a4, 210f
                  sub          s6, t3, s5
                  sll          a6, a2, a2
                  beq          a3, sp, 209f
                  slti         s7, a2, -1445
                  sub          t4, a4, t2
                  bge          gp, a0, 219f
                  sll          t0, s6, a6
                  sra          a2, sp, s4
                  blt          s9, t6, 208f
                  sll          t3, s1, t3
                  add          t2, s4, a0
208:              add          s5, a6, s7
209:              xori         t2, s7, -2011
210:              lui          s4, 153688
                  sltiu        s6, s5, -826
                  blt          a6, t1, 225f
                  or           s4, s1, s3
                  sub          s6, a3, s4
                  slli         zero, s10, 4
                  bne          t5, s4, 220f
                  srl          s11, a1, s0
                  lui          tp, 822235
219:              nop
220:              slt          s10, s5, ra
                  nop
                  srli         a5, t6, 6
                  or           t4, s0, s6
                  srli         sp, s8, 14
225:              sltiu        a4, s6, -1423
                  or           s1, s7, s0
                  srl          t6, s11, a0
                  sltiu        a4, s9, -349
                  add          s5, a0, a1
                  blt          tp, a5, 232f
                  and          gp, a0, tp
232:              slti         t0, t3, 753
                  beq          s4, ra, 251f
                  sltu         t0, t5, a7
                  and          tp, t1, s6
                  addi         s8, t4, 525
                  andi         a5, t1, -7
                  blt          s1, t4, 247f
                  add          a6, s1, t3
                  add          s4, sp, a5
                  bgeu         a3, s2, 256f
                  add          s2, sp, s5
                  srli         a3, t2, 6
                  srai         t4, s8, 23
                  beq          a4, a4, 263f
                  auipc        a4, 1021249
247:              auipc        t2, 669782
                  andi         a1, tp, -2011
                  slli         s11, s9, 24
                  sltu         s5, zero, t4
251:              ori          a6, ra, 947
                  bgeu         t1, t1, 264f
                  ori          s5, s2, 1755
                  addi         a1, t3, -1854
                  bge          s6, s10, 274f
256:              sltiu        t1, s0, 1848
                  slli         a0, t2, 10
                  ori          a5, s8, 130
                  nop
                  nop
                  xori         a5, t1, 1105
                  slli         t6, zero, 24
263:              srai         a2, a6, 2
264:              blt          s6, s1, 275f
                  sltu         t0, s11, s2
                  slti         a4, a3, -1989
                  slti         s4, sp, -322
                  xori         t2, t6, 501
                  slli         s1, t0, 30
                  xori         s1, s8, 1247
                  andi         gp, t3, -998
                  blt          t0, t3, 273f
273:              slli         s10, tp, 29
274:              sltiu        s2, s4, 380
275:              slti         s9, s7, 1368
                  nop
                  srai         ra, s3, 21
                  beq          s3, s7, 280f
                  srl          s0, sp, a5
280:              sub          t6, s1, s3
                  xor          s11, s6, s6
                  xor          a2, zero, a6
                  slli         s1, ra, 14
                  xori         s5, s2, 505
                  or           s7, t1, s11
                  sltiu        a3, t4, -760
                  and          t2, a5, s11
                  slt          t2, a3, s11
                  sll          t2, t0, tp
                  sub          s4, a2, s10
                  sll          sp, t3, t0
                  xori         a5, a5, 1083
                  nop
                  sll          s1, a3, a7
                  srli         s8, s5, 19
                  add          a5, s4, t0
                  beq          s10, t4, 304f
                  sltiu        t6, t4, -452
                  sll          s9, s11, s1
                  bne          s0, s10, 301f
301:              xor          s2, s9, s3
                  ori          a4, a6, -1038
                  bge          a4, t5, 313f
304:              srl          t3, ra, a6
                  blt          s8, t4, 309f
                  addi         a2, t6, 52
                  srl          s0, t6, a0
                  bltu         t0, s5, 314f
309:              blt          s9, s0, 328f
                  sltu         zero, a3, s5
                  sll          s6, t3, s1
                  sub          s5, a5, s0
                  addi         a1, zero, 1 #init loop 1 counter
                  addi         t2, zero, -17 #init loop 1 limit
sub_5_15_1_t:     add          ra, s11, ra
                  addi         a1, a1, -8 #update loop 1 counter
                  addi         a5, zero, -6 #init loop 0 counter
                  addi         a6, zero, -10 #init loop 0 limit
sub_5_15_0_t:     slti         a0, s5, -1948
                  addi         a5, a5, -10 #update loop 0 counter
                  bge          a5, a6, sub_5_15_0_t #branch for loop 0
                  bge          a1, t2, sub_5_15_1_t #branch for loop 1
                  or           zero, s6, s9
313:              sll          a1, t6, a6
314:              srli         s11, a7, 16
                  andi         t4, s11, 1082
                  blt          ra, s6, 318f
                  srli         s0, s6, 19
318:              bltu         a2, tp, 324f
                  sltu         s1, a0, s10
                  srl          s10, a0, a6
                  sll          t3, s2, a1
                  auipc        s7, 601692
                  bne          s10, s8, 332f
324:              slli         s2, s10, 14
                  ori          s6, a0, -502
                  sll          s9, a2, a5
                  sltiu        s6, s3, 1881
328:              bge          s6, a7, 342f
                  srai         a4, s11, 1
                  beq          s2, s8, 340f
                  slti         s9, s1, -174
332:              and          s8, s11, a0
                  sltiu        s0, s7, 807
                  sltu         a5, t5, t0
                  addi         a3, t6, 237
                  bge          s10, s8, 338f
                  slli         a5, t4, 29
338:              slli         a6, s8, 14
                  auipc        s6, 287510
340:              beq          t0, a5, 343f
                  xor          s1, a4, t4
342:              slti         a3, a7, -954
343:              beq          s7, t0, 345f
                  sltiu        t0, s3, 2001
345:              or           a0, s6, s10
                  lui          a4, 355415
                  slli         t0, a7, 17
                  srl          t4, s8, a3
                  xor          a1, t5, a2
                  or           s9, s4, t2
                  sra          s10, a4, t2
                  xor          tp, s6, a1
                  addi         gp, t5, -1323
                  xori         a3, s5, 1908
                  auipc        ra, 453747
                  slli         s6, a3, 22
                  xori         a5, s5, 401
                  blt          s3, s5, 369f
                  srl          a6, t0, gp
                  bltu         s10, t0, 361f
361:              and          ra, gp, a3
                  sll          t1, a6, t4
                  slt          zero, s5, t0
                  bltu         s2, a6, 379f
                  add          s5, sp, a7
                  bne          s11, sp, 367f
367:              srli         s2, a2, 4
                  lui          a0, 72885
369:              sub          a5, s5, t0
                  beq          a6, a4, 377f
                  sltu         t0, sp, s5
                  add          s7, a7, a3
                  auipc        t3, 403583
                  sltu         s2, ra, s5
                  andi         gp, s11, -1755
                  auipc        s0, 216378
377:              srli         ra, t2, 7
                  sub          s4, ra, a7
379:              xori         t2, t2, 912
                  nop
                  lui          a6, 1014743
                  sltu         t0, tp, s3
                  andi         s2, a5, 1805
                  sltu         t3, t0, a7
                  sll          t3, gp, t6
                  srl          s0, a7, t4
                  add          s7, t3, s1
                  bne          t4, zero, 392f
                  slli         s1, ra, 0
                  addi         s2, s0, 415
                  add          tp, a7, tp
392:              bgeu         a1, t6, 404f
                  nop
                  andi         s9, t2, 1469
                  beq          t6, s11, 415f
                  add          a0, t2, s3
                  bltu         s6, t3, 399f
                  bltu         a2, s8, 401f
399:              blt          s10, a4, 409f
                  ori          s2, ra, -1593
401:              auipc        s5, 247557
                  andi         s5, s4, 1103
                  slti         tp, gp, 1286
404:              add          s11, t1, a2
                  andi         s2, ra, 1093
                  srli         sp, a7, 22
                  sltiu        sp, sp, -2040
                  andi         s6, t0, -1187
409:              sll          sp, tp, gp
                  sltu         s4, s2, s9
                  xori         t3, a7, 1591
                  slt          s6, a4, a6
                  sltiu        a4, a0, 1623
                  or           a4, s5, t3
415:              beq          s4, a2, 434f
                  bgeu         t0, s1, 434f
                  bgeu         s6, t6, 423f
                  and          tp, t6, t5
                  srai         s6, a3, 23
                  sll          t4, s8, a4
                  srai         t2, s8, 8
                  srl          s11, tp, gp
423:              andi         s11, s0, 1473
                  slti         a0, s2, -1491
                  andi         ra, t4, 2015
                  nop
                  sltu         a3, ra, s9
                  blt          a6, a2, 430f
                  andi         s0, sp, 152
430:              bltu         s10, a7, 439f
                  addi         a1, zero, 5 #init loop 1 counter
                  ori          ra, s8, 455
                  andi         gp, a5, -1406
                  or           a2, s2, s4
                  add          t2, a0, s10
                  addi         s4, zero, -17 #init loop 1 limit
                  slti         gp, s3, -940
                  sltiu        t6, gp, -1020
sub_5_3_1_t:      xori         s8, a3, 2014
                  slt          a6, s5, t3
                  andi         sp, a0, 1631
                  addi         a1, a1, -1 #update loop 1 counter
                  ori          t3, t1, 549
                  addi         s9, zero, 8 #init loop 0 counter
                  slt          t4, t1, t0
                  sub          zero, s7, tp
                  andi         s5, a2, 694
                  xori         s11, a3, -1207
                  xori         tp, s10, -1492
                  and          s0, s3, t2
                  sub          t1, gp, s4
                  addi         t0, zero, 6 #init loop 0 limit
                  sll          a6, t0, a6
                  ori          a3, ra, -823
sub_5_3_0_t:      sltiu        a2, t3, 1485
                  xor          a4, s9, s3
                  sltiu        a4, s10, 1284
                  sub          t2, s5, a5
                  xor          t1, ra, a4
                  addi         s9, s9, -3 #update loop 0 counter
                  sll          s7, s7, s0
                  bgeu         s9, t0, sub_5_3_0_t #branch for loop 0
                  lui          zero, 287710
                  bne          a1, s4, sub_5_3_1_t #branch for loop 1
                  sll          gp, t2, s0
                  andi         s0, tp, -1978
                  lui          s2, 886708
                  ori          a2, s7, -2034
434:              lui          s4, 378877
                  slli         s4, a5, 15
                  bge          a6, s11, 447f
                  xor          s2, a1, sp
                  srli         s11, s9, 11
439:              srli         t6, t5, 15
                  addi         a3, a7, -125
                  slli         t6, sp, 15
                  slt          tp, s3, tp
                  addi         a5, s4, -6
                  beq          t6, s11, 457f
                  andi         s10, a5, 279
                  ori          t4, s10, 1264
447:              ori          t2, t3, 229
                  xori         t2, a6, 512
                  xor          zero, a7, s6
                  srai         s7, a0, 1
                  lui          s7, 983014
                  blt          a0, t5, 470f
                  sltu         a5, ra, t3
                  slt          t6, gp, a7
                  xor          s1, s2, zero
                  xori         sp, ra, 761
457:              srli         t3, t2, 4
                  bgeu         a7, s6, 464f
                  auipc        t3, 984791
                  auipc        gp, 397433
                  beq          sp, t3, 478f
                  sll          a6, s3, sp
                  lui          tp, 1014378
464:              sll          a3, t3, gp
                  addi         a3, s4, 1876
                  blt          s6, ra, 470f
                  sll          a0, a6, t2
                  blt          t4, a1, 481f
                  xor          a2, s1, s11
470:              blt          s9, t1, 489f
                  srl          s8, t5, a3
                  srli         sp, s1, 30
                  beq          gp, a1, 482f
                  slt          s4, t2, a1
                  srl          gp, t4, a7
                  slt          t6, s3, a3
                  sub          t2, s6, s9
478:              srai         s8, t3, 9
                  nop
                  blt          a6, a0, 498f
481:              or           a6, t2, s3
482:              sltu         t1, t4, a5
                  bgeu         a7, s1, 492f
                  srai         sp, tp, 10
                  slti         s6, tp, -1298
                  andi         s6, s11, -75
                  and          t3, tp, a7
                  beq          a7, t3, 489f
489:              andi         gp, t3, 1028
                  sll          a5, s2, s7
                  or           s10, s3, s11
492:              andi         a2, t2, 1420
                  slt          s8, s0, sp
                  blt          t4, zero, 514f
                  sltiu        s6, t2, 925
                  auipc        t4, 98231
                  blt          a2, t0, 500f
                  addi         s10, zero, 8 #init loop 1 counter
                  addi         sp, zero, 7 #init loop 1 limit
sub_5_4_1_t:      addi         a2, a1, 137
                  addi         s10, s10, -1 #update loop 1 counter
                  addi         s4, zero, 6 #init loop 0 counter
                  srli         t1, gp, 30
                  addi         a4, zero, -9 #init loop 0 limit
sub_5_4_0_t:      add          t6, a2, s0
                  or           a0, t6, a1
                  addi         s4, s4, -5 #update loop 0 counter
                  bne          s4, a4, sub_5_4_0_t #branch for loop 0
                  bgeu         s10, sp, sub_5_4_1_t #branch for loop 1
                  slti         t3, s4, 113
498:              add          gp, tp, sp
                  slli         tp, a0, 4
500:              andi         t0, t2, -360
                  sltiu        t3, t3, -1920
                  and          s11, s9, s3
                  srai         s11, s11, 13
                  sltiu        a6, s8, -1784
                  slli         zero, s7, 28
                  sltu         ra, s4, a1
                  sltiu        zero, s10, 197
                  slli         a4, tp, 19
                  bne          a1, s1, 515f
                  bge          ra, a1, 514f
                  bne          s2, a1, 530f
                  xor          t3, t4, t1
                  lui          s5, 635891
514:              slt          t0, a2, a3
515:              and          s1, a6, t6
                  slti         a5, t0, -1826
                  sub          a6, sp, s10
                  slli         s6, s3, 28
                  xori         t2, a6, 36
                  sltiu        zero, tp, -405
                  xor          a3, zero, t1
                  sltiu        s10, t2, 875
                  and          t0, t4, t4
                  add          a2, sp, gp
                  addi         s7, s8, 591
                  sra          t1, s0, t2
                  xor          t4, t5, a4
                  bltu         a2, t5, 539f
                  auipc        t3, 1040089
530:              slti         a0, s6, -1661
                  auipc        a1, 567214
                  andi         t0, s0, 1604
                  blt          t1, s3, 548f
                  slt          t0, tp, sp
                  srli         t6, s2, 30
                  add          a1, t2, a0
                  bltu         t4, s0, 539f
                  add          a6, t4, s0
539:              nop
                  sll          s10, t1, s4
                  auipc        s1, 60860
                  blt          s8, a1, 544f
                  slti         a3, a5, 1946
544:              xori         s8, a7, -1114
                  sltiu        s4, s5, -773
                  blt          s3, a6, 548f
                  bgeu         s4, a3, 551f
548:              auipc        a0, 981544
                  srl          s1, t0, a7
                  addi         sp, s0, 561
551:              bgeu         s11, s4, 564f
                  xori         t0, s8, -625
                  addi         a6, t3, -1824
                  xor          sp, t0, s0
                  bge          s8, t1, 565f
                  srli         gp, s11, 8
                  sra          s4, zero, s2
                  add          a2, a2, t2
                  xori         sp, ra, 882
                  bltu         t1, t6, 579f
                  sra          s11, t3, t6
                  nop
                  blt          a0, a0, 580f
564:              bgeu         t5, s1, 582f
565:              sub          gp, s5, s10
                  sra          a2, s11, t1
                  lui          s8, 73823
                  xori         a5, zero, 1314
                  addi         zero, t6, 2037
                  xori         t3, t2, -174
                  ori          a5, tp, -1490
                  srli         zero, s2, 16
                  srai         s5, t5, 2
                  srli         s2, t6, 3
                  xori         t0, s6, -1444
                  srl          s6, a1, t4
                  srl          t0, s1, t1
                  xor          s2, t3, s6
579:              sltu         s9, s10, t0
580:              bge          s11, a6, 593f
                  slti         a1, s10, -373
582:              slt          s6, zero, s6
                  bge          a5, t0, 593f
                  bltu         t0, a0, 587f
                  slt          s2, t3, a3
                  nop
587:              addi         s9, s1, 385
                  sub          t1, s6, a5
                  blt          s7, s5, 600f
                  sub          a3, a0, sp
                  bgeu         s5, s7, 605f
                  bgeu         a0, s6, 604f
593:              add          s11, zero, t3
                  or           zero, ra, zero
                  andi         a1, a5, 156
                  bne          s1, tp, 602f
                  sub          s5, s10, sp
                  auipc        s5, 619773
                  addi         a0, zero, -344
600:              andi         s5, t1, 1740
                  xori         a1, s5, 37
602:              andi         a4, a7, 923
                  sll          t2, a2, a1
604:              andi         a6, t2, 1700
605:              blt          ra, s9, 607f
                  auipc        tp, 931979
607:              addi         a0, t3, -1299
                  sltiu        s1, s2, -446
                  bgeu         t1, s2, 610f
610:              bltu         zero, t6, 617f
                  slli         s2, sp, 22
                  sltiu        s2, t0, 1899
                  bgeu         sp, t5, 616f
                  blt          zero, t2, 629f
                  srli         t0, s1, 26
616:              or           s2, a2, s8
617:              slt          s9, s8, a2
                  or           s5, a1, a0
                  xori         sp, s10, 1111
                  sltiu        t6, a2, -2020
                  auipc        sp, 990994
                  beq          a0, s2, 624f
                  sub          sp, s8, a1
624:              addi         s6, s6, 496
                  bltu         a6, a0, 629f
                  auipc        a2, 965513
                  xor          t3, s4, s11
                  lui          s11, 701516
629:              sra          a0, sp, t4
                  bltu         s5, s4, 640f
                  slt          a3, zero, s7
                  ori          s4, t3, -555
                  slti         sp, s6, 1372
                  andi         s7, s5, 426
                  bne          t1, t3, 652f
                  sll          tp, t2, sp
                  ori          a3, a5, 911
                  sltiu        t2, ra, 951
                  andi         s6, a7, 187
640:              xor          a0, s10, s10
                  sub          t2, t2, a5
                  and          t2, s4, gp
                  bgeu         s0, a0, 646f
                  or           tp, a3, sp
                  bltu         a6, t0, 659f
646:              auipc        tp, 722300
                  ori          t3, t0, 1308
                  sltu         s8, a2, s2
                  srl          t2, sp, s7
                  xor          a1, a2, s2
                  lui          a1, 1003732
652:              xor          s6, s6, s3
                  bltu         a5, t5, 654f
654:              sra          s5, zero, t1
                  xori         s11, t5, -1186
                  nop
                  slti         t1, sp, -1706
                  sltiu        t1, sp, 1901
659:              srl          t2, s2, a0
                  bge          tp, s9, 662f
                  sltiu        s2, a0, 1134
662:              bge          a4, s3, 666f
                  beq          t0, s8, 672f
                  bne          a0, sp, 682f
                  slti         t4, a3, -1778
666:              slli         s2, s1, 22
                  addi         a6, ra, -1449
                  srai         a0, zero, 23
                  andi         s0, a3, -45
                  bne          a7, tp, 690f
                  srli         t2, s5, 0
672:              srai         s4, a3, 0
                  sra          s8, s3, s11
                  xori         s9, a0, -717
                  bne          a7, a4, 684f
                  or           a4, ra, gp
                  slli         a5, t1, 3
                  nop
                  srai         ra, s7, 10
                  sub          zero, ra, s8
                  sra          a4, s6, gp
682:              blt          gp, ra, 684f
                  slti         s5, s8, -711
684:              xor          s5, a6, a2
                  slt          t3, s8, t2
                  add          s6, a2, s0
                  andi         s11, t3, -155
                  xor          s7, s7, a5
                  sll          s11, s8, s2
690:              sltu         zero, t3, t3
                  andi         s0, a1, 1577
                  nop
                  slti         t2, s11, -1033
                  sll          sp, ra, a3
                  beq          s10, s10, 696f
696:              xor          s6, a2, s2
                  sltiu        s2, sp, -1969
                  andi         s9, a5, 827
                  xor          sp, t6, s7
                  srl          s11, s11, s6
                  bgeu         t3, t0, 713f
                  nop
                  bne          zero, t0, 714f
                  sltu         s9, tp, gp
                  slt          a0, s11, t4
                  srli         tp, s10, 30
                  and          sp, s8, t3
                  slli         s8, a1, 31
                  blt          s1, t0, 727f
                  nop
                  slti         t1, a4, 131
                  srli         ra, sp, 5
713:              bge          s11, a2, 715f
714:              nop
715:              bne          t4, a6, 722f
                  beq          s0, t3, 726f
                  ori          ra, tp, 1829
                  ori          s1, s0, -1503
                  andi         a5, gp, -274
                  addi         ra, s2, -1681
                  bge          t2, s7, 727f
722:              sll          tp, t2, t3
                  bgeu         s11, a0, 734f
                  addi         s1, a7, -1320
                  blt          sp, s4, 738f
726:              srli         s5, a7, 29
727:              add          t6, t3, s8
                  srai         s4, s1, 6
                  xori         t6, tp, 272
                  bne          a7, t4, 749f
                  srai         s9, gp, 7
                  sltu         s4, s0, s1
                  bge          tp, ra, 746f
734:              sra          t6, t4, a5
                  andi         a2, t0, -400
                  xori         t0, s5, 615
                  or           s6, a2, t5
738:              ori          s9, t0, -1147
                  bltu         a5, a7, 745f
                  slli         t3, a6, 7
                  ori          s11, t4, 883
                  addi         t2, s0, -1812
                  blt          s0, ra, 762f
                  add          ra, t5, s0
745:              ori          s10, t4, -1730
746:              slti         s8, t2, 1355
                  add          tp, ra, s7
                  srl          zero, a7, s0
749:              bne          s6, s7, 768f
                  sll          tp, t3, t3
                  ori          s0, s7, 993
                  bge          s5, t2, 770f
                  bge          t0, s0, 764f
                  slt          s11, zero, s3
                  bne          a4, s11, 757f
                  slli         s8, s2, 17
757:              bge          s3, s11, 769f
                  and          s11, s1, a4
                  blt          a3, a1, 773f
                  sltiu        s0, s8, 1855
                  srli         s7, s9, 11
762:              srl          s4, s6, a7
                  and          s11, a5, s2
764:              sll          t2, ra, sp
                  or           s1, gp, s8
                  slti         ra, t2, 378
                  add          s5, zero, a2
768:              addi         s1, a2, -1665
769:              andi         sp, zero, -396
770:              srl          s2, gp, t4
                  bne          a1, s4, 789f
                  add          s4, s7, a7
773:              or           a1, a2, t4
                  bge          t5, gp, 784f
                  and          t0, t2, a3
                  addi         a5, zero, 10 #init loop 1 counter
                  addi         a2, a4, 1475
                  xori         a6, s9, -505
                  slli         s5, t6, 0
                  sll          s10, t1, a0
                  or           s0, t0, s11
                  ori          t1, s8, 1637
                  addi         s11, zero, 14 #init loop 1 limit
                  slt          s7, s2, t6
                  srl          s0, s11, s7
sub_5_21_1_t:     or           a3, t6, gp
                  xor          a3, a6, s1
                  addi         a5, a5, 1 #update loop 1 counter
                  addi         t6, zero, 7 #init loop 0 counter
                  slti         t3, a0, -292
                  addi         a0, zero, 5 #init loop 0 limit
                  xor          t3, t5, zero
                  sra          sp, gp, t3
sub_5_21_0_t:     sub          sp, sp, t4
                  addi         t6, t6, -4 #update loop 0 counter
                  srl          t4, sp, s5
                  bgeu         t6, a0, sub_5_21_0_t #branch for loop 0
                  bne          a5, s11, sub_5_21_1_t #branch for loop 1
                  and          s7, gp, s1
                  slti         t1, t3, 1366
                  sll          s11, t4, s6
                  and          ra, sp, t5
                  lui          s8, 1022385
                  xori         s1, s4, -742
                  add          t2, tp, t3
                  slt          t0, a0, t1
                  srli         s0, sp, 6
784:              bltu         t0, a4, 785f
785:              bltu         s6, a6, 798f
                  beq          t3, a7, 796f
                  and          t4, s2, s4
                  or           s10, s11, a7
789:              nop
                  slti         s2, t1, 721
                  sub          s2, t1, ra
                  sub          s5, t4, ra
                  srl          s7, t0, a6
                  add          a4, s10, s11
                  sub          s8, s10, s11
796:              sltiu        ra, t2, -492
                  slti         t4, a1, -375
798:              srl          t1, t1, a1
                  auipc        a0, 209092
                  bltu         sp, a5, 804f
                  sll          t2, s3, s3
                  slli         s5, t2, 19
                  bne          sp, s8, 807f
804:              ori          s5, t6, 669
                  bltu         s8, t0, 822f
                  auipc        a1, 343630
807:              addi         t4, a3, 2017
                  slt          t0, t3, s3
                  xori         t2, t1, 431
                  and          t3, t4, t5
                  sub          a1, s9, sp
                  srli         gp, gp, 19
                  add          a4, a4, s9
                  slt          gp, a0, zero
                  auipc        t2, 795170
                  lui          t0, 374609
                  addi         s1, zero, 5 #init loop 0 counter
                  sltiu        s6, s6, 405
                  and          t4, a3, t3
                  auipc        s8, 890132
                  addi         a3, zero, 17 #init loop 0 limit
                  sra          ra, tp, tp
                  addi         a4, s11, 385
                  srai         s6, a7, 18
                  sltu         a5, a6, gp
                  srai         zero, tp, 11
sub_5_19_0_t:     auipc        s6, 326542
                  xor          sp, s0, a6
                  sltu         s11, t4, s10
                  sltu         s11, a2, a4
                  addi         s1, s1, 9 #update loop 0 counter
                  xori         t6, a2, -612
                  blt          s1, a3, sub_5_19_0_t #branch for loop 0
                  srli         ra, gp, 1
                  slt          s7, t5, s11
                  or           s0, t5, gp
                  slli         zero, a7, 7
                  xori         a5, t5, 1989
                  or           s11, zero, s2
822:              srl          sp, a5, gp
                  sltu         a6, a0, gp
                  bltu         t6, s1, 826f
                  bgeu         t6, t0, 827f
826:              slt          t3, a5, a1
827:              beq          s4, a2, 833f
                  bltu         s8, a7, 839f
                  or           gp, a0, s7
                  bltu         t4, t2, 831f
831:              slli         s6, s11, 16
                  srli         s2, a0, 0
833:              srai         a6, s7, 29
                  add          gp, t2, t1
                  beq          s10, ra, 850f
                  addi         zero, s2, -426
                  slti         t2, s9, -1000
                  bne          s11, a1, 841f
839:              slli         t2, s8, 31
                  bge          t3, s10, 847f
841:              slti         t2, s0, -1443
                  srli         t0, ra, 6
                  ori          ra, t6, 1566
                  bltu         a5, a4, 853f
                  bne          s4, sp, 854f
                  sltu         tp, s4, t3
847:              add          s8, ra, s4
                  sra          s8, a1, gp
                  blt          s10, zero, 862f
850:              or           zero, s10, sp
                  sltu         zero, ra, a6
                  bge          tp, a4, 872f
853:              xori         s8, t6, 767
854:              slti         a2, s5, 17
                  bltu         s9, t1, 858f
                  addi         t6, s0, -62
                  nop
858:              sltiu        sp, a5, -232
                  andi         t4, zero, -1311
                  srli         zero, t6, 2
                  sll          tp, t4, s5
862:              bltu         s7, a4, 864f
                  and          s9, a2, a4
864:              bne          s6, s4, 883f
                  slt          ra, s3, zero
                  and          s10, s7, a7
                  blt          t5, s7, 873f
                  sub          s4, s7, a6
                  sra          t1, s2, t0
                  slti         s0, s4, -1518
                  srai         tp, a2, 10
872:              xor          a5, sp, t1
873:              add          t1, s7, a3
                  slti         s7, a3, 28
                  slt          t6, s2, t5
                  ori          a6, s6, -259
                  bge          t5, s10, 888f
                  sll          a5, a2, a7
                  sltiu        s5, s8, 1789
                  bgeu         zero, a1, 881f
881:              slti         t2, ra, 182
                  sll          s2, s7, a2
883:              srai         s2, a1, 27
                  sub          t0, s8, a2
                  auipc        gp, 782451
                  sltiu        zero, s3, 1498
                  bgeu         s4, sp, 890f
888:              bltu         a5, gp, 891f
                  slli         t0, a4, 25
890:              andi         t4, a7, 958
891:              or           s0, s2, a0
                  sltiu        a5, s6, 1392
                  xori         s10, a3, -57
                  nop
                  xor          a5, s7, ra
                  slti         s6, t4, -1592
                  slli         s6, s8, 26
                  nop
                  bge          s5, s1, 905f
                  xori         a3, s9, -35
                  sra          sp, a5, s9
                  sltiu        a2, gp, 1431
                  sltu         a5, s0, s2
                  bgeu         tp, a0, 906f
905:              srl          t6, t3, s6
906:              nop
                  srai         t3, t0, 13
                  bltu         tp, s0, 921f
                  nop
                  auipc        s10, 966690
                  beq          t1, t6, 918f
                  add          s10, t2, s4
                  sub          s2, s9, tp
                  bltu         s7, sp, 916f
                  srli         a2, s11, 7
916:              beq          s1, s11, 935f
                  bgeu         a3, t2, 923f
918:              sltiu        zero, a4, -2023
                  xor          t3, gp, s11
                  and          s9, a6, a1
921:              auipc        s2, 25505
                  sub          tp, zero, t5
923:              xor          s0, t3, a7
                  lui          s0, 822227
                  auipc        s10, 564332
                  or           s2, t5, s1
                  srl          t3, tp, ra
                  slt          a3, s7, ra
                  blt          s5, s3, 938f
                  srl          tp, a6, t1
                  srai         ra, s6, 12
                  sra          a3, t0, t5
                  sll          zero, s3, s10
                  slt          s4, t4, s5
935:              xor          gp, t0, s8
                  auipc        t1, 442169
                  slt          t6, s11, a3
938:              slt          s6, a7, t2
                  bge          t0, s2, 949f
                  and          a3, t0, a0
                  blt          a5, t5, 945f
                  ori          s4, s7, 225
                  bne          t4, s0, 953f
                  and          s9, t6, zero
945:              xor          t6, sp, s0
                  bgeu         a3, s5, 947f
947:              sra          zero, s1, zero
                  slli         t2, ra, 0
949:              auipc        a5, 303818
                  blt          ra, a6, 952f
                  sub          t0, a7, t4
952:              nop
953:              bgeu         t3, t2, 967f
                  slli         a4, gp, 20
                  srli         gp, a4, 31
                  sra          s10, t6, a7
                  add          t3, a3, s9
                  andi         s9, s2, 1890
                  srli         t2, a4, 23
                  slli         a4, s5, 22
                  or           t2, a0, s1
                  sra          t3, t6, a1
                  slli         s10, s11, 9
                  sltu         t4, s5, s3
                  srli         s0, zero, 6
                  addi         s2, s3, 875
967:              sltiu        a3, gp, -439
                  add          s1, t2, s2
                  ori          t3, t5, -198
                  andi         t3, s10, 771
                  bltu         s8, s9, 991f
                  and          a4, s2, ra
                  beq          t2, s4, 991f
                  nop
                  xori         s5, t6, -999
                  sub          s1, s0, s3
                  xor          s6, s7, s9
                  and          s9, s6, s6
                  bge          s11, s1, 991f
                  add          t3, t3, t4
                  auipc        a3, 51271
                  srai         s6, s8, 3
                  sll          t0, a5, s8
                  or           a3, tp, zero
                  sra          s11, s3, sp
                  add          a5, a7, s0
                  bge          zero, a1, 1000f
                  ori          t6, a0, -415
                  srli         t6, a2, 10
                  xor          a1, s7, zero
991:              nop
                  sll          a3, a2, s10
                  slt          a2, zero, s11
                  sll          a2, s7, ra
                  xori         s1, s9, -1897
                  lui          tp, 563880
                  sub          s1, s11, a2
                  bne          s4, tp, 1007f
                  and          s5, a4, s10
1000:             lui          s1, 989900
                  or           zero, a1, a5
                  xori         a1, a0, 242
                  slti         s8, t5, -2027
                  slti         t1, s0, 1889
                  sra          s2, zero, sp
                  add          zero, a4, s0
1007:             sub          a6, a7, zero
                  sltu         a1, s1, a1
                  xori         a5, s6, -553
                  or           s4, s5, a2
                  slti         ra, s6, 18
                  or           a1, s0, a3
                  sub          a1, sp, s6
                  lui          s8, 617195
                  sra          gp, a1, tp
                  addi         s2, t0, 663
                  sll          t2, zero, a5
                  srl          a2, a3, t5
                  nop
                  sll          t2, s5, s1
                  sra          a2, t1, s2
                  xor          a0, s6, s8
                  srli         s5, t1, 9
                  xor          s4, a1, s3
                  blt          s7, s6, 1029f
                  ori          t1, s10, 1905
                  slli         a2, t6, 7
                  srai         s7, t5, 22
1029:             srli         s7, t3, 2
                  sll          sp, a6, s8
                  bne          s2, a1, 1049f
                  sltiu        gp, s10, 535
                  xor          zero, s4, s8
                  bge          s9, s5, 1036f
                  xor          zero, sp, a6
1036:             ori          ra, t6, 1729
                  srl          s8, a4, a7
                  ori          s9, s3, 1014
                  auipc        a1, 189943
                  bgeu         s2, a3, 1059f
                  bgeu         a2, gp, 1052f
                  sltu         gp, a7, s4
                  sltiu        zero, s7, 1183
                  nop
                  srl          s11, gp, t1
                  ori          s7, s4, -180
                  bge          s6, tp, 1062f
                  ori          s5, a4, 1592
1049:             slli         s1, a1, 27
                  srai         s2, a1, 15
                  sltiu        ra, a2, 822
1052:             xor          tp, s8, s10
                  bltu         a3, s4, 1070f
                  add          s2, a2, s11
                  sub          a3, t2, s11
                  sub          t3, a5, a7
                  srai         a2, a2, 19
                  add          t4, a0, s6
1059:             nop
                  beq          a4, tp, 1080f
                  xor          s2, s0, a1
1062:             auipc        t1, 869465
                  slli         a6, t4, 30
                  bgeu         a2, sp, 1075f
                  auipc        a3, 973413
                  bgeu         s8, a6, 1068f
                  and          gp, a0, s2
1068:             sltu         t4, s9, s1
                  sltiu        t0, s5, -1020
1070:             nop
                  slt          ra, tp, t0
                  xori         a4, s1, -1337
                  and          s4, sp, sp
                  sll          t1, zero, a7
1075:             nop
                  sltu         a5, t3, sp
                  lui          zero, 354654
                  slti         sp, a3, 955
                  andi         t0, zero, -513
1080:             bltu         s3, s0, 1087f
                  lui          t2, 293558
                  xori         gp, s10, -1074
                  slli         a1, s11, 15
                  bgeu         t4, s6, 1102f
                  bge          t2, s9, 1088f
                  srli         t3, s8, 0
1087:             bge          a2, s4, 1100f
1088:             srai         a3, t1, 12
                  bltu         s8, s7, 1090f
1090:             bgeu         ra, ra, 1092f
                  lui          a6, 191694
1092:             auipc        t3, 806587
                  sll          s7, s1, t4
                  auipc        s7, 414409
                  slt          a4, s11, t0
                  sll          s11, t0, s10
                  xori         a6, a1, -1910
                  srli         s6, t3, 2
                  sltu         a6, t4, t4
1100:             xor          s4, s11, s8
                  xori         s4, s2, -1359
1102:             bgeu         a4, t3, 1104f
                  beq          s5, a5, 1120f
1104:             sub          s10, zero, s10
                  bne          a6, s2, 1109f
                  bne          a6, t2, 1107f
1107:             andi         a2, a1, 1341
                  or           a5, t2, a6
1109:             slli         s4, sp, 8
                  srai         a5, t4, 25
                  bne          s10, t2, 1120f
                  sub          a2, t4, s4
                  sub          t3, t2, t1
                  slti         s9, s6, -1876
                  sltiu        s5, a0, 963
                  nop
                  sub          a5, s1, a1
                  add          s10, s7, t0
                  andi         a0, a6, -1045
1120:             sltiu        s6, gp, 13
                  auipc        t0, 821899
                  slli         t2, a2, 12
                  xori         a3, t6, 1090
                  slli         a6, s1, 28
                  xori         sp, a4, 58
                  sra          gp, s1, s10
                  sub          a6, t4, s0
                  or           t4, a3, tp
                  slti         a5, a6, -1964
                  nop
                  auipc        t0, 967849
                  and          s5, a1, a7
                  blt          zero, s10, 1143f
                  bge          s4, s7, 1147f
                  srl          t2, a5, t6
                  xor          a4, s11, t0
                  xor          a5, s6, gp
                  srl          a5, s1, s8
                  and          a3, a6, gp
                  slt          s5, s9, s3
                  andi         s5, a6, -386
                  andi         ra, a4, 320
1143:             srai         t1, t2, 7
                  xor          a1, s10, s4
                  and          s5, s2, a7
                  bltu         s6, s11, 1160f
1147:             bgeu         t2, sp, 1165f
                  sll          s0, a2, s2
                  bge          tp, a1, 1155f
                  or           a2, a5, a2
                  lui          sp, 891845
                  bltu         t0, t6, 1155f
                  bgeu         a4, t4, 1159f
                  lui          s9, 250401
1155:             srl          t2, zero, a0
                  andi         zero, t6, -1454
                  slt          a4, a4, t0
                  sra          ra, gp, a4
1159:             slt          tp, t6, s7
1160:             andi         t1, s1, -709
                  slt          t3, s11, sp
                  nop
                  bltu         t5, zero, 1178f
                  sltu         t2, s5, a5
1165:             bne          zero, t3, 1177f
                  bgeu         sp, s5, 1176f
                  srl          t6, a0, sp
                  bge          s5, t1, 1177f
                  nop
                  beq          a6, s1, 1181f
                  add          a1, t6, a6
                  sltu         zero, a0, s6
                  sll          s1, a7, s6
                  xor          t6, t4, s4
                  slti         a3, t4, 169
1176:             or           a1, s2, a1
1177:             ori          a3, s11, 10
1178:             auipc        s4, 124270
                  and          a6, tp, t5
                  bgeu         s7, sp, 1181f
1181:             ori          s6, t2, 1891
                  lw           a6, 4(t5)
                  srli         s8, s7, 19
                  xori         t2, s11, 1676
                  addi         t5, t5, 64
                  nop
1711:             addi x27, x16, 0
1711:             jalr x27, x27, 0
sub_4:            xori         s6, t2, -393
                  bltu         t1, a7, sub_4_stack_p
                  srai         s10, s4, 4
                  ori          s0, a7, 1950
                  nop
                  add          a4, s9, t1
                  and          ra, t6, a6
sub_4_stack_p:    addi         t5, t5, -40
                  addi         t3, tp, -230
                  sra          a4, zero, t1
                  lui          t1, 162195
                  sw           a6, 4(t5)
                  srai         s10, a5, 14
                  slt          a5, t6, a4
                  sub          s5, s5, s4
                  sub          a4, a4, a4
                  srai         s7, s4, 17
                  or           t3, s11, a1
                  bne          a4, a4, sub_4_j6 #branch to jump instr
                  sltu         sp, tp, s4
                  auipc        ra, 446337
sub_4_j6:         jal          a6, sub_5 #jump sub_4 -> sub_5
                  addi         s8, zero, 5 #init loop 0 counter
                  srli         t4, s4, 31
                  lui          s6, 147142
                  xori         gp, s2, -1283
                  slti         t1, t0, -1185
                  srl          s1, s9, tp
                  or           s1, a2, t4
                  addi         ra, zero, 4 #init loop 0 limit
                  slti         t0, s7, 2040
                  or           a1, a5, s0
                  srai         s4, s7, 13
sub_4_0_0_t:      and          t6, a2, s10
                  xor          a2, sp, t4
                  addi         s0, sp, 870
                  sra          a2, t6, a0
                  xori         s10, tp, 975
                  auipc        t6, 717924
                  slti         s1, a2, -1944
                  addi         s8, s8, -2 #update loop 0 counter
                  xor          t3, s5, a2
                  or           s7, s1, a5
                  ori          a4, t5, 1954
                  bgeu         s8, ra, sub_4_0_0_t #branch for loop 0
                  slti         a5, a1, -1758
                  addi         s7, zero, 9 #init loop 0 counter
                  andi         s2, t0, 1892
                  andi         gp, a2, 1135
                  srai         a0, s4, 25
                  srai         t6, t0, 27
                  addi         s10, zero, 19 #init loop 0 limit
                  sra          s11, s1, a0
                  andi         t6, s9, -152
                  slti         s8, a1, 1423
sub_4_1_0_t:      slt          tp, a0, a1
                  addi         s7, s7, 5 #update loop 0 counter
                  and          t3, s7, s10
                  addi         t3, t2, 781
                  sra          s6, tp, a0
                  addi         t2, s0, 837
                  andi         t4, t6, -1821
                  sltu         s1, t1, s11
                  auipc        s11, 1040265
                  and          t2, ra, a1
                  bltu         s7, s10, sub_4_1_0_t #branch for loop 0
                  sltiu        s6, gp, 1430
                  nop
                  sll          s8, t3, a1
                  sltiu        s1, zero, -583
                  bgeu         tp, a6, 10f
                  sltu         a6, a7, s6
                  bge          a0, t4, 21f
                  ori          s6, s7, -94
                  lui          s8, 159919
                  sra          t2, a0, s11
                  sll          a5, s8, s11
10:               sll          a0, zero, s2
                  bltu         ra, s10, 23f
                  sll          t4, s0, a4
                  blt          s11, gp, 21f
                  srl          t3, s1, s7
                  ori          tp, t0, -85
                  addi         s8, a4, 2046
                  sll          t4, t4, s8
                  andi         s8, t2, 8
                  sltiu        s2, a1, -915
                  slt          s7, t1, a5
21:               or           t1, s1, t6
                  auipc        s4, 124016
23:               blt          gp, t4, 34f
                  auipc        s6, 40142
                  addi         t0, t1, -1167
                  nop
                  srli         a1, a1, 27
                  slli         t6, a5, 23
                  lui          s9, 223852
                  srai         a3, s4, 23
                  bgeu         s9, s6, 42f
                  xori         a4, a6, 179
                  and          t2, t2, t1
34:               bge          a5, s4, 46f
                  srai         zero, s10, 17
                  srai         t2, s0, 25
                  xor          a1, s2, a2
                  nop
                  sltu         s11, s6, a2
                  beq          s2, tp, 41f
41:               bne          a2, s6, 60f
42:               bgeu         s4, ra, 43f
43:               sra          a5, t6, ra
                  slt          zero, ra, t2
                  sll          zero, t2, s4
46:               slt          t0, s3, t5
                  addi         a0, s11, -1322
                  xori         t1, s2, -1541
                  srli         t6, s7, 30
                  bge          s2, a6, 58f
                  beq          t3, a6, 71f
                  bge          s11, s1, 60f
                  sub          a4, a2, s7
                  nop
                  xor          s7, s4, zero
                  slt          t6, s2, s6
                  sll          a5, a3, s6
58:               and          s4, s0, t2
                  slli         a4, t5, 10
60:               lui          a3, 249273
                  slti         t2, a3, 47
                  beq          a4, t2, 67f
                  slti         t6, s6, 194
                  beq          tp, tp, 67f
                  beq          a2, s6, 69f
                  srli         a5, a3, 3
67:               add          tp, s10, a5
                  auipc        s1, 882555
69:               ori          a2, s2, -803
                  srai         t1, a0, 25
71:               bne          s3, t4, 80f
                  bne          a6, zero, 87f
                  beq          t4, s4, 77f
                  sra          s9, t6, a7
                  xor          a2, t1, a1
                  srli         a2, t2, 16
77:               lui          s4, 865792
                  slti         t1, a7, -754
                  beq          s8, t0, 89f
80:               srai         a2, t2, 29
                  lui          s1, 624121
                  bne          s7, s4, 89f
                  and          a6, t2, a2
                  bltu         a0, s3, 89f
                  slli         s2, sp, 11
                  andi         t0, a7, 703
87:               or           s1, t4, s8
                  srli         s1, a6, 22
89:               add          a5, s6, tp
                  srai         gp, s11, 1
                  xori         s11, s4, -727
                  xori         a0, s11, -125
                  srl          t4, t3, s3
                  bge          t0, a3, 103f
                  sltu         a0, a7, t3
                  sltiu        s9, a3, -397
                  slli         s5, t0, 18
                  srli         s7, s1, 16
                  bne          t0, a2, 103f
                  nop
                  sra          t0, t6, s10
                  or           s8, t6, t0
103:              srli         t2, s6, 14
                  add          t2, s3, s8
                  xori         s11, zero, 784
                  lw           a6, 4(t5)
                  addi         t5, t5, 40
                  or           t2, s11, s0
176:              addi x21, x16, 0
176:              jalr x21, x21, 0
sub_3:            bgeu         zero, a6, sub_3_stack_p
                  lui          t2, 935691
                  nop
                  sra          s1, a3, a3
sub_3_stack_p:    addi         t5, t5, -20
                  sw           a6, 4(t5)
                  sra          t3, a6, a0
                  sub          s6, t6, t2
                  and          s5, s11, s10
                  add          t3, t5, s5
                  sub          t6, s11, zero
                  xori         a3, s8, 440
                  add          s11, s10, zero
                  sub          gp, s8, zero
                  xor          t6, t1, tp
                  andi         s11, s10, -631
                  or           gp, s10, tp
                  slti         s9, ra, -904
                  srai         a3, t4, 27
                  la           t1, sub_4
                  addi         t1, t1, 545
                  xori         zero, s3, 934
sub_3_j4:         jalr         a6, t1, -545 #jump sub_3 -> sub_4
                  srai         s1, s0, 31
                  andi         s4, s6, 78
                  or           t1, a7, a3
                  nop
                  srli         a2, ra, 15
                  or           t1, s5, s5
                  bne          zero, a2, sub_3_j5 #branch to jump instr
                  xor          gp, gp, s7
sub_3_j5:         jal          a6, sub_4 #jump sub_3 -> sub_4
                  addi         t0, zero, 0 #init loop 1 counter
                  srai         s10, s4, 6
                  sltu         s4, s6, t3
                  sltiu        s11, a7, -1399
                  addi         a2, zero, 6 #init loop 1 limit
                  lui          ra, 320701
sub_3_0_1_t:      nop
                  and          tp, a5, s6
                  addi         t0, t0, 6 #update loop 1 counter
                  addi         sp, zero, 9 #init loop 0 counter
                  auipc        t3, 888059
                  addi         t2, zero, -16 #init loop 0 limit
                  lui          t1, 585949
                  andi         a0, s4, 655
sub_3_0_0_t:      nop
                  srl          s2, a3, ra
                  xor          s8, zero, t6
                  addi         sp, sp, -5 #update loop 0 counter
                  sltiu        t6, t2, -1927
                  sll          tp, gp, t0
                  bne          sp, t2, sub_3_0_0_t #branch for loop 0
                  xori         a5, s10, 11
                  sltu         a3, a7, s4
                  slti         s2, a7, -800
                  sra          t1, s0, t0
                  add          s6, t3, t2
                  sra          ra, a7, ra
                  and          s8, tp, a5
                  beq          t0, a2, sub_3_0_1_t #branch for loop 1
                  slti         a0, zero, -497
                  addi         a1, zero, 4 #init loop 1 counter
                  sll          s4, a7, a2
                  or           s9, a5, s10
                  addi         a2, s6, -501
                  addi         s1, zero, 8 #init loop 1 limit
                  lui          s5, 435750
sub_3_1_1_t:      lui          s2, 97055
                  addi         a1, a1, 4 #update loop 1 counter
                  andi         a6, s0, -602
                  addi         t1, zero, -5 #init loop 0 counter
                  nop
                  addi         tp, zero, 16 #init loop 0 limit
sub_3_1_0_t:      andi         s6, a6, 346
                  slti         s2, s6, 1771
                  addi         t1, t1, 10 #update loop 0 counter
                  xori         a0, s0, -1716
                  bltu         t1, tp, sub_3_1_0_t #branch for loop 0
                  sltu         a0, zero, s7
                  nop
                  and          zero, a7, a3
                  bne          a1, s1, sub_3_1_1_t #branch for loop 1
                  or           t3, t1, a2
                  or           t2, s10, a0
                  add          t0, a7, sp
                  bne          t4, t6, 11f
                  bge          t0, s10, 23f
                  andi         a4, t4, 1370
                  srai         ra, s10, 9
                  beq          s6, a0, 7f
7:                andi         s9, t1, 417
                  blt          a5, ra, 13f
                  sra          s11, a1, t1
                  slti         a5, s8, -1545
11:               or           a5, sp, s3
                  blt          s2, zero, 24f
13:               bltu         a0, s1, 21f
                  sltiu        tp, t6, 1908
                  auipc        a0, 169529
                  or           a0, a6, s8
                  auipc        s8, 574215
                  sltiu        s11, tp, 718
                  addi         ra, ra, -1211
                  andi         sp, t6, -889
21:               nop
                  ori          tp, a5, 1334
23:               slti         zero, zero, -517
24:               xori         a6, t6, 997
                  and          s6, s8, s5
                  auipc        a0, 557989
                  nop
                  addi         sp, a5, -663
                  ori          s8, ra, 748
                  bge          a0, s9, 43f
                  bltu         ra, s9, 40f
                  add          t6, s11, a6
                  bgeu         a1, t6, 41f
                  sltu         a0, s7, s10
                  add          s11, s6, t1
                  sub          s11, a3, a2
                  andi         s4, s10, -579
                  slli         sp, a4, 19
                  xor          s10, gp, a2
40:               auipc        tp, 985754
41:               sub          t2, s5, tp
                  xori         t1, t5, -1934
43:               auipc        ra, 103743
                  and          s7, tp, s2
                  auipc        a0, 594071
                  slli         zero, zero, 22
                  lui          s7, 271843
                  bltu         s3, gp, 61f
                  slli         s1, s5, 12
                  beq          t3, s0, 64f
                  slti         zero, s3, -12
                  bgeu         sp, a6, 63f
                  bltu         t3, a3, 63f
                  lui          s9, 714548
                  blt          ra, a0, 68f
                  sub          s10, s1, a4
                  ori          a2, s3, 881
                  slti         t1, s7, -1076
                  andi         s5, a3, 1870
                  xori         s0, a0, 401
61:               sll          t3, a1, t2
                  slli         a1, s6, 8
63:               srai         a4, t4, 19
64:               nop
                  slt          s9, s10, a4
                  nop
                  addi         gp, s4, -1741
68:               bltu         s8, s2, 75f
                  beq          a6, s1, 80f
                  srai         s11, t6, 4
                  add          s7, zero, s4
                  nop
                  or           s6, s8, s11
                  sltu         s7, s5, s11
75:               slli         sp, sp, 23
                  ori          s0, a6, -1560
                  bne          s9, t3, 95f
                  bne          t4, a0, 98f
                  lui          t4, 884426
80:               slli         zero, a3, 31
                  auipc        s1, 849009
                  srli         s4, s8, 19
                  bne          s7, s6, 102f
                  bltu         s3, a7, 88f
                  nop
                  srl          ra, t1, t2
                  add          a5, s7, a5
88:               blt          s11, a2, 91f
                  bltu         s11, s4, 97f
                  blt          t0, s4, 91f
91:               srl          t2, s1, t4
                  xor          a4, s10, t4
                  bltu         a0, s5, 100f
                  lui          s8, 174635
95:               srli         s11, t4, 21
                  bgeu         s1, tp, 102f
97:               sltu         a4, t1, s0
98:               bne          a3, a1, 105f
                  sll          a5, s2, ra
100:              bgeu         gp, t4, 111f
                  add          s0, zero, gp
102:              slt          t1, s11, a0
                  xor          t6, s3, s7
                  bge          ra, s2, 111f
105:              nop
                  srl          s9, t2, t0
                  sll          a0, t5, a2
                  nop
                  add          t3, a7, s1
                  xori         t6, a0, -1342
111:              slt          s10, s1, t2
                  xori         s10, t5, 1402
                  lw           a6, 4(t5)
                  sltu         s7, a7, zero
                  nop
                  addi         t5, t5, 20
                  nop
202:              addi x13, x16, 1
202:              jalr x13, x13, 0
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_2:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_3:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_4:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_5:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_6:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_7:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_8:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_9:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_10:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_11:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_12:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_13:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_14:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_15:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x19, x30, zero
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x8, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x8, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x8, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x8, x18, ecall_handler
                  li x18, 0x1
                  beq x8, x18, instr_fault_handler
                  li x18, 0x5
                  beq x8, x18, load_fault_handler
                  li x18, 0x7
                  beq x8, x18, store_fault_handler
                  li x18, 0xc
                  beq x8, x18, pt_fault_handler
                  li x18, 0xd
                  beq x8, x18, pt_fault_handler
                  li x18, 0xf
                  beq x8, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x30, x19, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x19, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x19, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x30, x19, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x30, x19, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x30, x19, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
