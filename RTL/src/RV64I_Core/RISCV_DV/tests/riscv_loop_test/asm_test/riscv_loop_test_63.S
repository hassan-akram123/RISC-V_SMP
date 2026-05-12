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
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0xb
                  li x1, 0x4236054f
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xb278ff71
                  li x6, 0xc
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x4d22f340
                  li x10, 0x80000000
                  li x11, 0x7ecebb02
                  li x12, 0xfe765fb5
                  li x13, 0xf985a4b7
                  li x14, 0x6
                  li x15, 0xf1242de0
                  li x16, 0x1
                  li x17, 0xfddbc523
                  li x18, 0x80000000
                  li x19, 0xf
                  li x20, 0xfa94c28c
                  li x21, 0xfdd11981
                  li x22, 0x3
                  li x23, 0x2
                  li x24, 0xf0b5adc0
                  li x25, 0xf
                  li x26, 0x80000000
                  li x27, 0x8
                  li x28, 0x5d802ad8
                  li x30, 0x0
                  li x31, 0xb
                  la x5, user_stack_end
main:             srai         s11, s5, 0
                  la           s6, sub_1
                  addi         s6, s6, -712
                  or           s2, s10, a0
                  lui          s1, 397783
                  xor          s1, s0, s1
                  slli         s9, s1, 27
main_j2:          jalr         t1, s6, 713 #jump main -> sub_1
                  addi         t3, zero, 9 #init loop 0 counter
                  or           a2, t2, a5
                  and          a2, a6, ra
                  slt          s4, a0, t5
                  sra          s1, s9, s4
                  auipc        s4, 59904
                  srl          s2, s5, a3
                  srli         t2, t1, 2
                  auipc        a0, 830640
                  nop
                  sra          zero, t6, t4
                  slt          a2, s8, t3
                  or           t6, zero, a2
                  sltu         a4, s6, sp
                  addi         s11, zero, 0 #init loop 0 limit
                  sub          s7, t4, a4
main_0_0_t:       slt          s4, s3, t3
                  sll          a2, a6, t2
                  addi         t3, t3, -3 #update loop 0 counter
                  sra          t2, a5, s6
                  sll          ra, s3, s11
                  srli         ra, t5, 23
                  andi         s5, s9, 1309
                  xor          a5, t1, a5
                  xori         a2, s10, 2032
                  beq          t3, s11, main_0_0_t #branch for loop 0
                  sub          s1, s9, t2
                  bltu         s4, t5, 2f
                  and          tp, t2, a4
2:                sll          s11, t3, a1
                  addi         tp, t6, 333
                  slt          s9, s0, s3
                  bltu         t0, zero, 18f
                  slli         a2, s7, 1
                  slt          s8, t2, s7
                  srl          a0, a6, t5
                  xor          t3, s1, a6
                  bne          a2, a6, 30f
                  auipc        s6, 294123
                  or           s2, s7, t5
                  bgeu         s11, gp, 31f
                  srl          sp, s11, s9
                  andi         s0, s8, 1490
                  slli         s7, tp, 23
                  sra          t2, gp, t0
18:               ori          tp, a4, -281
                  sltiu        s5, t0, 669
                  sltiu        a4, s4, -1049
                  auipc        t2, 417637
                  srli         s0, a4, 2
                  bgeu         t3, ra, 36f
                  or           s8, tp, sp
                  sub          s3, zero, a7
                  slli         a0, a0, 10
                  xori         s1, s3, 621
                  srai         s8, s4, 18
                  lui          a1, 825904
30:               bne          tp, ra, 37f
31:               bgeu         t2, a4, 32f
32:               or           gp, s11, a4
                  nop
                  la           s11, sub_1
                  sltiu        t1, s5, 1723
                  srli         s4, s11, 29
                  sub          s2, a5, s3
                  sltiu        s5, a4, -852
                  addi         s11, s11, 329
                  add          s8, gp, s2
                  or           tp, s8, zero
                  or           s3, s4, s7
main_j1:          jalr         t1, s11, -329 #jump main -> sub_1
                  andi         t5, s6, 1717
                  bltu         a7, s6, 39f
                  sra          t5, a4, s9
36:               or           sp, s0, gp
37:               or           s6, gp, s9
                  bne          t6, s1, 39f
39:               or           sp, gp, t4
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sub          s11, a1, a3
                  srai         s9, s10, 21
                  srl          a2, t0, s4
                  or           gp, s9, ra
                  addi         t0, t0, -40
                  sltiu        t3, t0, 1366
                  srli         gp, s0, 6
                  ori          gp, a6, -1193
                  sw           t1, 4(t0)
                  srl          t2, a0, a2
                  or           s2, a7, a3
                  and          s1, gp, s11
                  or           a4, s1, s1
                  srl          s2, t4, s7
                  auipc        a2, 643558
                  bne          s2, s8, sub_2_j6 #branch to jump instr
                  slt          ra, s8, s2
                  sra          s1, s3, s5
                  nop
                  andi         s4, s11, 170
                  auipc        t6, 667700
sub_2_j6:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  addi         t6, zero, 6 #init loop 1 counter
                  slti         a4, t0, -482
                  xori         a5, gp, 1839
                  ori          zero, s4, 913
                  addi         a3, zero, 8 #init loop 1 limit
                  xor          t1, a4, s11
                  sra          a1, s10, a4
                  or           sp, a6, s1
                  sll          s6, sp, s4
                  add          s7, sp, t0
sub_2_2_1_t:      slti         a5, t1, -469
                  sra          a0, tp, a1
                  addi         t3, s1, -509
                  sltiu        tp, s0, -1784
                  addi         t6, t6, 3 #update loop 1 counter
                  addi         s8, zero, 4 #init loop 0 counter
                  srl          s5, a7, tp
                  sll          gp, s1, t0
                  addi         s11, zero, 0 #init loop 0 limit
                  srli         t2, s0, 22
                  xor          a6, a7, t2
sub_2_2_0_t:      andi         s0, t2, 544
                  addi         s8, s8, -10 #update loop 0 counter
                  xori         s5, t0, -1638
                  slti         s7, s3, 702
                  add          t5, t0, t3
                  bge          s8, s11, sub_2_2_0_t #branch for loop 0
                  nop
                  sltu         tp, s8, s4
                  sra          s6, t5, s3
                  sll          a0, t6, t4
                  bltu         t6, a3, sub_2_2_1_t #branch for loop 1
                  slli         s4, sp, 19
                  addi         t5, zero, 5 #init loop 0 counter
                  addi         a2, a3, 1317
                  addi         s11, zero, 19 #init loop 0 limit
sub_2_1_0_t:      xor          a3, a1, s0
                  addi         t5, t5, 5 #update loop 0 counter
                  ori          s3, gp, -1586
                  lui          s6, 868372
                  bltu         t5, s11, sub_2_1_0_t #branch for loop 0
                  slti         a7, a3, -706
                  addi         s1, zero, -1 #init loop 1 counter
                  slli         s7, s9, 29
                  andi         s6, a7, -1665
                  addi         a6, zero, 0 #init loop 1 limit
                  srli         s5, t1, 23
                  srli         tp, s2, 1
                  srai         a0, t4, 23
sub_2_0_1_t:      andi         t1, s3, 263
                  addi         s1, s1, 5 #update loop 1 counter
                  sra          ra, a5, s1
                  sll          s2, s11, s0
                  srai         tp, t3, 12
                  addi         s3, zero, -4 #init loop 0 counter
                  addi         a5, zero, 10 #init loop 0 limit
sub_2_0_0_t:      xori         ra, t3, 1897
                  sll          s2, s6, t1
                  andi         s7, s0, 1743
                  slli         tp, a3, 26
                  addi         s3, s3, 6 #update loop 0 counter
                  xori         s5, s9, 1825
                  blt          s3, a5, sub_2_0_0_t #branch for loop 0
                  srl          s0, s3, s9
                  xor          t5, a2, t3
                  blt          s1, a6, sub_2_0_1_t #branch for loop 1
                  nop
                  addi         a0, zero, 9 #init loop 1 counter
                  sub          t6, t5, t4
                  addi         t1, zero, 9 #init loop 1 limit
                  nop
sub_2_3_1_t:      add          s11, t1, t3
                  xor          t3, t1, a6
                  addi         a0, a0, -8 #update loop 1 counter
                  slt          a6, t4, a6
                  addi         sp, zero, 4 #init loop 0 counter
                  sll          a7, a7, t6
                  addi         a4, zero, 14 #init loop 0 limit
                  srai         s2, sp, 10
                  xor          s0, a1, ra
                  auipc        s6, 834241
sub_2_3_0_t:      add          s1, a4, gp
                  or           gp, t2, s7
                  addi         sp, sp, 4 #update loop 0 counter
                  xor          s3, s4, t3
                  blt          sp, a4, sub_2_3_0_t #branch for loop 0
                  bgeu         a0, t1, sub_2_3_1_t #branch for loop 1
                  and          s6, tp, s0
                  lui          s11, 1041718
                  xor          s11, s6, sp
                  ori          a4, a4, 1569
                  auipc        a7, 307292
                  or           t2, ra, a4
                  srai         t3, a6, 1
                  slti         s9, s0, -1683
                  andi         sp, a2, 1907
                  or           zero, s11, s9
                  srai         t6, a6, 9
                  srl          t6, t2, t4
                  sra          t1, s6, s3
                  sra          a1, zero, a6
                  xor          zero, s5, sp
                  add          t1, ra, a3
                  or           s0, s8, ra
                  blt          sp, a7, 24f
                  sll          t1, ra, s8
                  nop
                  or           a7, a5, t4
                  or           t5, t4, s8
                  sra          t6, t5, a6
                  addi         a3, s8, -1673
                  sltu         t6, s6, t3
24:               slti         a4, a0, 2047
                  addi         zero, a0, -968
                  lui          zero, 194921
                  xor          a1, a6, a7
                  bgeu         t4, s10, 38f
                  and          t2, a3, sp
                  sltu         s8, a6, t2
                  bltu         s0, a3, 37f
                  lui          tp, 446273
                  add          s1, zero, a1
                  andi         s4, a3, -1293
                  and          t3, a3, t1
                  andi         a5, s11, -1828
37:               srl          s3, s10, a2
38:               add          a1, t1, t5
                  sub          a0, t3, t5
                  srai         s6, s7, 4
                  xori         s2, t4, -1382
                  xor          a1, t5, t5
                  andi         a6, t2, 736
                  beq          ra, t4, 52f
                  nop
                  xor          a7, a5, t5
                  ori          s7, t5, 754
                  xori         gp, sp, -674
                  bge          s11, a5, 57f
                  bge          t5, a3, 56f
                  ori          a3, a7, 1339
52:               xori         t1, s3, 1517
                  sltiu        a1, zero, 476
                  sll          sp, a1, sp
                  sub          gp, tp, t3
56:               add          t6, tp, s11
57:               srl          s11, t3, s10
                  xor          s2, a3, s5
                  xori         a3, a2, 954
                  bge          zero, zero, 78f
                  sll          t6, t3, a0
                  auipc        s8, 97633
                  bne          s3, tp, 75f
                  sub          a0, t4, s10
                  slti         a4, s11, -705
                  nop
                  nop
                  blt          s9, sp, 77f
                  ori          s2, s6, 136
                  sll          a7, s2, s9
                  srai         a6, a1, 27
                  xori         t3, a1, 659
                  srl          s0, tp, s0
                  xori         a7, tp, 493
75:               auipc        s2, 97121
                  lui          a4, 535857
77:               srli         t1, t2, 20
78:               srai         s8, t3, 24
                  auipc        a0, 499058
                  nop
                  add          s2, s6, a3
                  sltu         t5, sp, t1
                  or           gp, a7, tp
                  slt          a7, a3, a5
                  sub          gp, a0, s8
                  add          t5, a4, t6
                  auipc        a4, 662657
                  slt          a7, s6, a5
                  slli         s8, s7, 7
                  slt          ra, a0, s6
                  lui          t3, 711063
                  blt          t2, s5, 95f
                  bge          s9, s3, 95f
                  bge          s0, t6, 104f
95:               slli         a6, a4, 23
                  srli         s4, sp, 0
                  srl          s2, t3, a6
                  sub          s5, s10, t1
                  addi         s2, s0, -1662
                  srl          a2, gp, t0
                  sltiu        a6, s7, -508
                  srai         sp, tp, 24
                  bgeu         a4, t6, 106f
104:              sltiu        a7, a7, 195
                  slti         s6, s4, -151
106:              addi         sp, s8, -1749
                  xor          s0, s9, s7
                  srli         sp, ra, 8
                  beq          s5, sp, 125f
                  auipc        a2, 741185
                  sra          t1, a5, s8
                  sll          s5, t2, s3
                  nop
                  srli         t1, t5, 1
                  slti         a0, s2, 1564
                  ori          t3, s8, 1234
                  slt          a5, a4, t2
                  slt          t3, a3, t0
                  srli         a0, t4, 21
                  bgeu         a1, s4, 122f
                  blt          a3, gp, 133f
122:              auipc        s9, 334906
                  sub          t5, a3, a2
                  sub          a3, zero, t0
125:              or           t3, a5, s1
                  nop
                  sltiu        a5, a6, 863
                  blt          a4, s0, 146f
                  srli         s11, a3, 1
                  beq          a3, s8, 146f
                  xor          a2, t4, a4
                  srl          s0, gp, gp
133:              or           t3, a0, s8
                  and          s9, s4, tp
                  add          t3, t0, s4
                  auipc        s1, 907823
                  srl          s0, t6, a5
                  sltiu        a7, a5, -1359
                  and          a0, s7, a1
                  slti         a5, t0, -341
                  bge          t0, ra, 156f
                  lui          s2, 39107
                  sra          a7, t1, t5
                  sll          t2, t0, a2
                  bne          s4, s0, 146f
146:              xori         t2, s7, -660
                  sra          ra, t5, gp
                  sltu         s1, gp, a5
                  bge          t0, s3, 164f
                  srl          s0, s2, a2
                  srl          t5, a6, s4
                  lui          s7, 598363
                  sltiu        tp, ra, -1247
                  addi         a7, t1, 403
                  xor          ra, ra, s8
156:              srl          s9, a1, s2
                  srl          s0, t6, a4
                  srai         t3, t4, 15
                  xori         a4, a2, -801
                  sra          sp, s3, s9
                  lui          tp, 352292
                  slli         a7, gp, 6
                  blt          s1, s10, 181f
164:              blt          t1, sp, 173f
                  sltiu        zero, s7, 1087
                  add          s8, t2, s8
                  slli         a5, s3, 2
                  sll          ra, zero, a1
                  bge          t1, tp, 178f
                  sub          s6, a6, zero
                  add          tp, ra, a0
                  srai         s6, a6, 0
173:              add          s1, s9, s6
                  auipc        s3, 612825
                  srai         s9, s2, 20
                  beq          s2, s2, 183f
                  beq          s1, t0, 183f
178:              xori         gp, a1, -1888
                  bne          t1, t6, 196f
                  bge          a6, a1, 193f
181:              auipc        s11, 704298
                  bne          a3, s0, 197f
183:              sll          s9, t3, t1
                  blt          s6, s1, 198f
                  sltu         s9, sp, a1
                  blt          zero, s9, 188f
                  slt          a6, tp, s8
188:              blt          sp, t0, 195f
                  and          s4, a7, t2
                  and          s8, a7, s0
                  srli         a0, s8, 22
                  bne          a7, a2, 201f
193:              bltu         t0, a4, 203f
                  slt          s1, a7, a4
195:              bne          t1, s11, 211f
196:              addi         s2, a2, 699
197:              lui          zero, 252971
198:              auipc        s8, 1036067
                  lui          tp, 13008
                  ori          a0, s11, 737
201:              slli         zero, a3, 6
                  andi         a1, a0, -233
203:              sltu         a1, s6, a4
                  and          t3, t2, a7
                  sll          a5, s3, t1
                  slli         sp, a6, 9
                  sltu         a2, tp, a1
                  xor          t2, tp, s8
                  bge          a7, s11, 217f
                  srl          a5, s11, t5
211:              bge          s9, s6, 229f
                  auipc        tp, 28009
                  sra          s6, a0, s9
                  sltiu        s6, s7, 1858
                  xor          t3, a4, t4
                  xori         s9, a7, 540
217:              bltu         s7, t6, 219f
                  nop
219:              sltu         t1, a4, s9
                  sltiu        s1, t1, 666
                  bltu         s4, t3, 231f
                  bge          sp, tp, 228f
                  sra          a2, a0, a4
                  srai         s4, t6, 19
                  andi         s8, s10, -1491
                  slli         tp, t5, 1
                  slti         sp, a1, -1210
228:              sltu         zero, t1, tp
229:              bne          tp, s11, 237f
                  sra          a5, t4, sp
231:              srai         t6, zero, 30
                  slti         t1, s3, 30
                  sll          zero, s8, s4
                  sltu         t6, s8, t6
                  sltiu        t5, a6, 1236
                  auipc        s11, 666766
237:              ori          tp, s2, -1224
                  ori          s7, t4, -283
                  andi         tp, s10, -649
                  xor          a2, t1, s2
                  nop
                  sltu         t2, t4, ra
                  srl          s1, s10, t6
                  lw           t1, 4(t0)
                  nop
                  auipc        s9, 287638
                  add          s2, a4, tp
                  addi         t0, t0, 40
                  auipc        a3, 67733
360:              addi x10, x6, 0
360:              jalr x10, x10, 0
sub_1:            addi         t0, t0, -36
                  addi         t6, gp, -946
                  lui          t3, 396170
                  sw           t1, 4(t0)
                  srl          s4, s0, s5
                  beq          s8, a7, sub_1_j3 #branch to jump instr
                  andi         a6, t3, -364
                  sub          s4, t2, a0
                  srl          s2, a0, ra
                  andi         a6, s7, -1753
                  srli         sp, t2, 7
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  la           a2, sub_3
                  sub          s5, s10, s0
                  or           t6, ra, ra
                  addi         a2, a2, 962
                  sra          a3, s4, s6
                  sltiu        t2, a0, 1072
                  bge          t3, s11, sub_1_j4 #branch to jump instr
                  lui          a1, 863857
                  auipc        s9, 327173
sub_1_j4:         jalr         t1, a2, -962 #jump sub_1 -> sub_3
                  addi         ra, zero, 3 #init loop 1 counter
                  srli         t5, a7, 3
                  srli         s9, zero, 27
                  srl          s1, t0, zero
                  and          a0, a1, tp
                  srai         t1, a2, 3
                  addi         a5, zero, -15 #init loop 1 limit
sub_1_1_1_t:      add          a0, s9, a7
                  xor          t5, a2, s5
                  sll          a1, s2, t4
                  andi         s5, sp, -1237
                  ori          s0, s9, 887
                  addi         ra, ra, -6 #update loop 1 counter
                  addi         gp, zero, 7 #init loop 0 counter
                  sltu         t3, t5, a0
                  srli         t2, t0, 11
                  addi         t1, s0, -62
                  slli         a0, ra, 21
                  addi         t6, zero, 6 #init loop 0 limit
                  nop
sub_1_1_0_t:      sltu         s4, a1, sp
                  lui          s0, 683387
                  sra          a6, a3, t1
                  addi         gp, gp, -1 #update loop 0 counter
                  bgeu         gp, t6, sub_1_1_0_t #branch for loop 0
                  andi         s0, a4, -648
                  sll          zero, s10, a3
                  beq          ra, a5, sub_1_1_1_t #branch for loop 1
                  sltiu        a0, a0, -235
                  addi         s11, zero, -2 #init loop 1 counter
                  addi         s9, zero, -3 #init loop 1 limit
sub_1_3_1_t:      slt          t2, zero, ra
                  sll          t2, t2, s6
                  addi         s11, s11, -4 #update loop 1 counter
                  addi         ra, zero, 4 #init loop 0 counter
                  addi         s2, zero, -11 #init loop 0 limit
sub_1_3_0_t:      xori         a2, ra, 1346
                  addi         ra, ra, -3 #update loop 0 counter
                  sub          a3, s8, t1
                  bge          ra, s2, sub_1_3_0_t #branch for loop 0
                  bge          s11, s9, sub_1_3_1_t #branch for loop 1
                  slti         s5, a4, -549
                  addi         t5, zero, 10 #init loop 1 counter
                  sll          s2, tp, t0
                  sll          s11, s1, a4
                  sltu         s4, s1, ra
                  nop
                  add          a1, a3, zero
                  addi         t6, gp, 1530
                  andi         sp, t1, -994
                  addi         sp, s4, -1782
                  or           a1, a2, t0
                  slt          sp, t3, t5
                  addi         a7, zero, 10 #init loop 1 limit
                  sub          s1, a0, s0
sub_1_2_1_t:      lui          tp, 962347
                  sltu         s4, zero, a6
                  ori          t3, a4, -1417
                  sub          a2, s8, s3
                  addi         t5, t5, -9 #update loop 1 counter
                  addi         s5, zero, 6 #init loop 0 counter
                  slti         s4, t3, -1073
                  addi         a0, zero, 4 #init loop 0 limit
sub_1_2_0_t:      sub          a3, ra, s6
                  or           ra, sp, t0
                  slt          a3, s3, s10
                  sra          s1, a6, t3
                  slli         s4, t6, 8
                  addi         s5, s5, -3 #update loop 0 counter
                  srl          ra, ra, s8
                  slti         t6, t4, 985
                  srl          s4, s8, a5
                  and          s11, t5, a1
                  bgeu         s5, a0, sub_1_2_0_t #branch for loop 0
                  bgeu         t5, a7, sub_1_2_1_t #branch for loop 1
                  auipc        t6, 163690
                  addi         t1, zero, 10 #init loop 0 counter
                  addi         ra, zero, 15 #init loop 0 limit
sub_1_0_0_t:      andi         zero, ra, 1581
                  slt          a2, s5, a2
                  xor          a7, s10, s10
                  slti         zero, a1, -5
                  addi         s6, a3, -689
                  sra          s0, a2, a0
                  addi         t1, t1, 9 #update loop 0 counter
                  srli         s3, a3, 23
                  slli         a3, t4, 12
                  and          gp, s4, ra
                  slt          t5, a6, t0
                  slli         a1, s2, 3
                  sub          zero, a2, zero
                  ori          zero, tp, -1121
                  and          s3, s1, s7
                  srai         a3, a1, 26
                  slt          s3, t2, ra
                  srai         a7, t4, 13
                  addi         tp, t5, -1617
                  or           zero, t3, a4
                  slti         a7, ra, -451
                  blt          t1, ra, sub_1_0_0_t #branch for loop 0
                  slt          s7, tp, s2
                  andi         t3, sp, -1492
                  bltu         a1, s4, 16f
                  sub          a5, s6, t5
                  and          ra, t6, t3
                  lui          gp, 956447
                  or           s3, gp, sp
                  slt          a0, sp, gp
                  slti         a7, s3, -668
                  bltu         s10, sp, 17f
                  add          s0, s1, s10
                  bltu         zero, tp, 25f
                  srli         t3, a5, 29
                  bne          t1, s3, 24f
                  and          a3, a2, s6
                  xor          a3, gp, a5
                  srai         s2, a2, 10
16:               xori         a3, tp, 709
17:               beq          a1, a0, 37f
                  srl          s3, s4, ra
                  andi         a7, a0, 1597
                  srai         t1, ra, 15
                  lui          sp, 560052
                  lui          s0, 182541
                  nop
24:               sra          a5, a0, a6
25:               bge          s7, a5, 29f
                  sltiu        s8, tp, 310
                  slli         sp, t6, 15
                  sltu         sp, s1, a7
29:               sll          s9, a0, a5
                  blt          a2, a0, 34f
                  bltu         s1, s9, 48f
                  srl          t1, a6, s5
                  sll          a2, t3, t2
34:               slt          s1, a6, t5
                  bge          sp, zero, 43f
                  add          s9, t1, s4
37:               slti         a2, a0, -438
                  sra          s5, sp, a4
                  beq          s4, zero, 53f
                  andi         s0, s7, 1649
                  slli         ra, a4, 5
                  bltu         t0, s10, 46f
43:               addi         a0, tp, 872
                  addi         s1, a6, 1904
                  beq          tp, gp, 49f
46:               blt          s4, t6, 56f
                  srl          t3, a1, s4
48:               xor          a5, s5, t6
49:               auipc        a6, 122045
                  addi         a6, t4, 236
                  slt          a5, t2, s0
                  sltu         zero, a7, a6
53:               sltiu        t5, s9, 1434
                  bltu         s4, s3, 68f
                  bne          s5, t4, 75f
56:               add          s5, s7, a0
                  sltiu        t6, s1, -879
                  bltu         s1, a5, 61f
                  blt          a1, s9, 60f
60:               lui          s1, 771964
61:               bltu         t0, t5, 70f
                  sub          t1, a1, a0
                  blt          s3, t4, 79f
                  sltiu        s9, a3, -1909
                  slt          s2, s1, s0
                  add          t1, s8, tp
                  or           sp, t3, s5
68:               blt          t4, a4, 74f
                  and          s6, s5, s9
70:               blt          t3, s10, 83f
                  addi         ra, s2, -1029
                  bne          s7, s3, 92f
                  nop
74:               auipc        gp, 224308
                  la           a5, sub_2
                  sltiu        s8, s10, 1185
                  ori          t6, s0, -263
                  or           tp, s8, s3
                  addi         a5, a5, -1005
                  addi         s7, sp, 1181
                  addi         a3, zero, -930
                  xor          t6, s1, s4
                  sltiu        zero, s0, -117
                  addi         t1, a6, -510
                  and          s6, t5, t0
sub_1_j5:         jalr         t1, a5, 1005 #jump sub_1 -> sub_2
75:               xori         a1, t1, 1444
                  sll          s4, s0, zero
                  and          t1, s3, s1
                  slli         s1, s8, 16
79:               add          s2, t1, t3
                  beq          a1, a0, 89f
                  sltu         a4, s9, gp
                  andi         a6, t2, 1774
83:               ori          s9, a6, -1350
                  bge          s6, s8, 89f
                  add          s1, a1, a3
                  xor          sp, ra, t5
                  sra          s9, t6, s8
                  bgeu         t6, a0, 100f
89:               and          t2, t6, s1
                  slti         s2, s8, -1629
                  srl          s3, s2, s7
92:               slti         s6, s11, -1046
                  andi         gp, tp, -485
                  and          s2, a0, s10
                  and          t5, s6, a3
                  srli         s3, a6, 4
                  beq          s7, ra, 112f
                  andi         s11, t1, 555
                  andi         tp, t1, 716
100:              blt          s6, a2, 117f
                  sltiu        t3, a3, -633
                  srai         gp, a1, 5
                  andi         a2, t5, 289
                  ori          s2, s4, -883
                  sra          gp, t3, s1
                  blt          t4, t4, 109f
                  xor          a7, tp, a6
                  bne          a1, a0, 122f
109:              sra          s5, a1, sp
                  bgeu         s4, s9, 122f
                  bgeu         s0, ra, 117f
112:              add          a5, t5, tp
                  xor          ra, t1, a1
                  add          a5, s2, sp
                  xori         s11, s11, -1800
                  sltu         t1, t0, t5
117:              sub          s11, a0, a3
                  xori         s2, a2, -781
                  blt          s0, s2, 134f
                  srli         s0, t3, 5
                  lui          t6, 465953
122:              bgeu         zero, s2, 123f
123:              srl          t6, s9, sp
                  sll          s3, t1, t2
                  slli         a5, s9, 13
                  sra          a1, s0, s7
                  blt          tp, s11, 131f
                  sltu         s0, t3, s3
                  bgeu         a2, a6, 145f
                  andi         a4, t4, -767
131:              and          a2, t5, ra
                  srai         s11, s0, 28
                  nop
134:              xor          sp, s1, t0
                  add          zero, t2, s7
                  andi         a7, t2, 528
                  bgeu         sp, s11, 154f
                  sra          t5, s5, t4
                  beq          s4, s1, 151f
                  and          s3, s4, gp
                  blt          s8, s9, 155f
                  bge          a2, a2, 162f
                  xori         s2, s10, -1890
                  nop
145:              bge          t4, t6, 149f
                  bge          s3, a2, 158f
                  addi         s9, a0, 343
                  bgeu         a2, t0, 151f
149:              srai         t3, a3, 25
                  add          a4, a2, a0
151:              slli         gp, a7, 23
                  sltu         s2, s7, t3
                  bge          s8, s9, 157f
154:              add          zero, s8, t6
155:              srli         s2, s1, 31
                  bltu         t4, a0, 169f
157:              slli         t6, tp, 28
158:              auipc        t3, 89532
                  ori          ra, s7, -96
                  xori         a2, tp, -73
                  slti         a0, s0, -965
162:              xori         t5, a5, -1288
                  slt          t5, t0, a1
                  add          s5, t2, a2
                  beq          a0, s4, 174f
                  ori          s9, t0, 1587
                  sltu         s6, a6, s2
                  sub          s6, tp, t5
169:              srli         t5, t6, 20
                  or           s11, s0, ra
                  sltiu        s9, t1, 2027
                  lui          a6, 753723
                  add          t5, s2, a6
174:              auipc        a7, 995349
                  slli         a5, t5, 22
                  xor          s5, ra, a0
                  srai         t1, s7, 4
                  bgeu         sp, gp, 183f
                  blt          t1, a4, 196f
                  and          a7, s6, t2
                  xori         a3, sp, -645
                  bne          a2, s4, 191f
183:              lui          s0, 780716
                  sub          a3, s0, t4
                  slt          s8, s3, s9
                  auipc        s1, 371415
                  xori         sp, t6, -919
                  beq          t3, tp, 196f
                  bgeu         t5, t1, 201f
                  addi         s3, s6, 20
191:              nop
                  sltiu        t3, s5, -430
                  addi         s5, zero, 513
                  slti         s3, s11, -973
                  slt          t3, s8, s3
196:              sra          s3, s3, s0
                  add          s1, s8, a5
                  xor          tp, sp, s5
                  add          s0, a5, t1
                  slt          t5, t1, sp
201:              sltu         s7, s7, s8
                  ori          zero, s2, 246
                  slt          s3, t5, a0
                  andi         tp, gp, -2005
                  xori         s7, a4, 1671
                  and          a6, a7, s8
                  auipc        s3, 1039135
                  sll          ra, a3, s0
                  and          a7, tp, a5
                  blt          ra, ra, 214f
                  beq          tp, a6, 225f
                  auipc        a1, 755766
                  xor          s0, gp, tp
214:              slti         t3, zero, 362
                  sll          s1, a6, s5
                  addi         gp, a5, -1013
                  slti         t3, sp, 1969
                  sra          a3, s2, a5
                  sltiu        gp, a4, 1637
                  bgeu         s5, t2, 223f
                  auipc        a0, 267911
                  add          a4, s6, t4
223:              sra          s6, a7, t6
                  and          a5, tp, s6
225:              srai         ra, s6, 22
                  bge          gp, a1, 235f
                  andi         s11, ra, 676
                  ori          a3, tp, 997
                  xor          t2, a5, s2
                  xori         t1, t3, 1606
                  sll          a0, a2, t5
                  and          a2, s1, s2
                  sub          s3, t1, zero
                  bgeu         a2, s11, 237f
235:              slt          t3, s1, t3
                  andi         s6, t0, 1070
237:              sltiu        a0, s3, -819
                  lw           t1, 4(t0)
                  sub          s11, s10, a1
                  and          t3, s6, s6
                  srai         sp, a6, 11
                  addi         t0, t0, 36
                  sub          tp, t0, t4
                  xor          ra, s9, t6
                  slt          s8, gp, t5
                  sub          sp, s8, t3
382:              addi x14, x6, 0
382:              jalr x14, x14, 0
sub_3:            addi         a1, s6, -982
                  srl          t5, a5, a0
                  addi         t0, t0, -56
                  addi         a2, s5, 765
                  sw           t1, 4(t0)
                  and          ra, a4, s10
                  sltiu        s2, s5, -454
                  srai         gp, a5, 12
                  addi         s7, zero, 7 #init loop 0 counter
                  sub          s8, t3, s10
                  lui          s4, 802815
                  sll          s8, a1, s0
                  and          t6, s10, tp
                  addi         a0, zero, 2 #init loop 0 limit
                  sltu         s3, tp, s8
                  add          t1, ra, s4
sub_3_8_0_t:      sub          a5, zero, s6
                  sub          zero, s1, t5
                  addi         s7, s7, -1 #update loop 0 counter
                  xori         a1, a4, -1594
                  srl          zero, s6, s8
                  and          a3, a6, t2
                  bgeu         s7, a0, sub_3_8_0_t #branch for loop 0
                  or           s1, a6, t4
                  addi         s7, zero, 6 #init loop 0 counter
                  sub          s0, a6, ra
                  addi         s5, t5, -2009
                  ori          ra, t6, 1692
                  slt          ra, a0, t0
                  auipc        s4, 461261
                  sltiu        s3, t6, -2011
                  nop
                  nop
                  addi         a4, zero, 13 #init loop 0 limit
                  sltiu        a2, s9, -1896
sub_3_10_0_t:     xori         a2, s0, -1587
                  slti         a3, s11, -45
                  sltu         a3, s3, a0
                  addi         s7, s7, 2 #update loop 0 counter
                  auipc        t6, 417380
                  sra          s2, t3, a1
                  auipc        s3, 419596
                  slti         ra, t1, 1266
                  and          s2, ra, t4
                  and          t2, ra, s7
                  slt          t3, s2, t2
                  slli         ra, s6, 20
                  blt          s7, a4, sub_3_10_0_t #branch for loop 0
                  addi         a6, t6, 547
                  addi         a1, zero, 0 #init loop 0 counter
                  addi         a6, zero, 9 #init loop 0 limit
sub_3_20_0_t:     or           a0, s9, s10
                  sltu         s2, sp, t6
                  addi         a1, a1, 9 #update loop 0 counter
                  bne          a1, a6, sub_3_20_0_t #branch for loop 0
                  slti         s0, s11, 55
                  addi         gp, zero, 9 #init loop 1 counter
                  auipc        a6, 512666
                  auipc        s1, 1000941
                  andi         s7, gp, 1185
                  xori         a2, s4, -1515
                  auipc        a2, 393478
                  xor          a6, t6, a2
                  addi         a2, t1, 402
                  addi         a0, zero, 3 #init loop 1 limit
                  andi         t5, a1, 41
                  slli         s5, t2, 29
sub_3_2_1_t:      add          t5, s8, s3
                  or           sp, a6, s5
                  addi         gp, gp, -1 #update loop 1 counter
                  addi         a7, zero, 0 #init loop 0 counter
                  srl          a1, s4, s5
                  sra          s9, tp, a4
                  addi         t6, zero, -8 #init loop 0 limit
                  addi         s2, sp, 1505
                  srli         a3, a7, 21
sub_3_2_0_t:      add          s5, a5, t4
                  xor          s1, t3, s0
                  addi         a7, a7, -3 #update loop 0 counter
                  srl          a3, t1, s0
                  bge          a7, t6, sub_3_2_0_t #branch for loop 0
                  sra          a2, a6, s11
                  sra          s0, a1, s3
                  addi         s9, s11, -770
                  srai         a6, s4, 0
                  bgeu         gp, a0, sub_3_2_1_t #branch for loop 1
                  lui          s6, 1035818
                  addi         sp, zero, -1 #init loop 1 counter
                  addi         s7, zero, 9 #init loop 1 limit
sub_3_15_1_t:     auipc        a3, 181049
                  addi         sp, sp, 10 #update loop 1 counter
                  addi         s3, zero, 4 #init loop 0 counter
                  addi         s5, zero, 20 #init loop 0 limit
sub_3_15_0_t:     lui          a6, 145711
                  addi         s3, s3, 3 #update loop 0 counter
                  bltu         s3, s5, sub_3_15_0_t #branch for loop 0
                  beq          sp, s7, sub_3_15_1_t #branch for loop 1
                  srl          s1, zero, a5
                  addi         s9, zero, -4 #init loop 0 counter
                  srli         tp, a3, 26
                  addi         a4, zero, 10 #init loop 0 limit
                  ori          s4, a2, -1490
                  xor          a2, s9, s1
                  and          s4, gp, t0
                  and          a3, s4, a2
                  andi         a7, s11, -1837
sub_3_11_0_t:     sub          s3, t5, a6
                  addi         s3, t1, -180
                  addi         s9, s9, 7 #update loop 0 counter
                  srai         a3, t3, 12
                  nop
                  bltu         s9, a4, sub_3_11_0_t #branch for loop 0
                  xori         s1, t1, -669
                  addi         a5, zero, 3 #init loop 0 counter
                  addi         s2, zero, -9 #init loop 0 limit
sub_3_19_0_t:     lui          s7, 1019571
                  sra          t6, ra, t1
                  addi         a5, a5, -6 #update loop 0 counter
                  bne          a5, s2, sub_3_19_0_t #branch for loop 0
                  srli         t2, s0, 15
                  addi         a3, zero, -8 #init loop 0 counter
                  xori         sp, t5, 695
                  add          t5, t2, a2
                  addi         t6, zero, 13 #init loop 0 limit
sub_3_21_0_t:     xor          s11, a4, t6
                  addi         a3, a3, 3 #update loop 0 counter
                  xori         zero, t0, -216
                  srai         s2, s2, 16
                  srai         s2, zero, 22
                  srli         s3, s0, 2
                  sltu         s8, t1, a0
                  beq          a3, t6, sub_3_21_0_t #branch for loop 0
                  slt          zero, t5, s6
                  addi         s7, zero, -9 #init loop 0 counter
                  addi         s11, a3, -648
                  addi         sp, zero, -12 #init loop 0 limit
sub_3_23_0_t:     add          gp, a4, a6
                  xori         a3, sp, -275
                  auipc        s8, 184556
                  slt          s8, a2, a2
                  and          s0, s7, a2
                  srl          ra, s5, s10
                  slt          a4, gp, a4
                  sltiu        s6, s10, -621
                  nop
                  addi         s7, s7, -1 #update loop 0 counter
                  sltiu        s3, t5, 1340
                  slli         s9, s5, 14
                  sltu         t6, s5, s4
                  andi         a6, s0, 278
                  slli         s6, a2, 17
                  addi         a5, a6, -410
                  bge          s7, sp, sub_3_23_0_t #branch for loop 0
                  lui          s2, 276294
                  addi         t1, zero, -9 #init loop 1 counter
                  addi         a0, zero, -17 #init loop 1 limit
                  slt          s8, t5, a7
                  slti         t5, t6, -621
                  srai         s1, s11, 8
                  andi         s4, t3, -1978
sub_3_6_1_t:      auipc        s5, 168739
                  lui          zero, 588041
                  addi         t1, t1, -8 #update loop 1 counter
                  addi         s7, zero, 9 #init loop 0 counter
                  addi         t2, a6, -1525
                  or           sp, t3, s10
                  srl          t5, s1, t6
                  addi         tp, zero, 9 #init loop 0 limit
sub_3_6_0_t:      add          s9, a7, t4
                  srl          s3, t6, s4
                  addi         s7, s7, -7 #update loop 0 counter
                  lui          s6, 282515
                  bgeu         s7, tp, sub_3_6_0_t #branch for loop 0
                  slti         ra, a7, -448
                  sra          s1, t3, s11
                  bne          t1, a0, sub_3_6_1_t #branch for loop 1
                  sltu         sp, sp, s9
                  addi         a3, zero, -10 #init loop 1 counter
                  or           t1, s11, a4
                  sltiu        s8, s1, 1460
                  slti         a4, t6, 16
                  sltiu        s5, s7, -1514
                  sltiu        s6, a7, 1666
                  addi         s9, zero, 15 #init loop 1 limit
                  srl          s4, t2, t4
                  sltu         s5, ra, s9
sub_3_12_1_t:     sltu         a5, t5, s4
                  addi         a3, a3, 5 #update loop 1 counter
                  or           s8, gp, s8
                  addi         s1, zero, 7 #init loop 0 counter
                  and          tp, s0, ra
                  sltiu        gp, a3, 1878
                  add          t5, zero, a7
                  addi         ra, zero, -7 #init loop 0 limit
sub_3_12_0_t:     auipc        s4, 527186
                  lui          t5, 704344
                  lui          s11, 948929
                  sltu         s2, ra, tp
                  addi         s1, s1, -7 #update loop 0 counter
                  beq          s1, ra, sub_3_12_0_t #branch for loop 0
                  srai         s5, zero, 10
                  slti         s0, a7, -1417
                  bne          a3, s9, sub_3_12_1_t #branch for loop 1
                  srli         a4, a6, 0
                  addi         a6, zero, 10 #init loop 0 counter
                  addi         tp, zero, 10 #init loop 0 limit
                  srl          t2, t6, s3
sub_3_24_0_t:     ori          s11, tp, 1190
                  addi         a6, a6, -2 #update loop 0 counter
                  bgeu         a6, tp, sub_3_24_0_t #branch for loop 0
                  sll          a7, s8, zero
                  addi         gp, zero, -3 #init loop 1 counter
                  nop
                  or           t6, a6, s6
                  addi         a1, zero, -12 #init loop 1 limit
                  xor          s8, t5, s0
sub_3_17_1_t:     slt          a2, s4, tp
                  addi         gp, gp, -8 #update loop 1 counter
                  addi         a3, zero, 9 #init loop 0 counter
                  addi         s11, zero, 9 #init loop 0 limit
sub_3_17_0_t:     slti         a0, a2, 1144
                  slt          ra, t4, a0
                  addi         a3, a3, -8 #update loop 0 counter
                  bgeu         a3, s11, sub_3_17_0_t #branch for loop 0
                  bge          gp, a1, sub_3_17_1_t #branch for loop 1
                  sra          t3, t1, s6
                  addi         s7, zero, -10 #init loop 1 counter
                  nop
                  addi         s8, zero, 17 #init loop 1 limit
                  andi         s4, s4, -1139
                  xor          a5, t4, s5
                  or           a0, a0, zero
                  sltiu        t3, gp, 1532
                  slti         s0, a0, 429
sub_3_7_1_t:      sub          s4, t6, s5
                  addi         s7, s7, 3 #update loop 1 counter
                  lui          s3, 84242
                  addi         a3, zero, 2 #init loop 0 counter
                  slli         s4, s4, 10
                  or           a4, t6, tp
                  srai         gp, s3, 1
                  addi         ra, zero, -5 #init loop 0 limit
                  auipc        a1, 435112
                  add          t6, s7, s1
sub_3_7_0_t:      sltiu        s11, t6, 1760
                  addi         a3, a3, -1 #update loop 0 counter
                  add          s6, a7, a1
                  andi         a1, gp, -1515
                  bne          a3, ra, sub_3_7_0_t #branch for loop 0
                  sra          s9, t0, a3
                  and          s6, t4, t3
                  or           a4, s1, sp
                  beq          s7, s8, sub_3_7_1_t #branch for loop 1
                  auipc        a4, 998315
                  addi         ra, zero, 10 #init loop 0 counter
                  or           s5, t5, s6
                  add          s2, s2, ra
                  nop
                  nop
                  sub          s9, zero, a1
                  add          a3, t1, a7
                  lui          t1, 509200
                  addi         a7, zero, 18 #init loop 0 limit
sub_3_5_0_t:      add          a6, gp, a2
                  srli         t3, s9, 22
                  addi         t3, s10, -552
                  sltiu        t1, ra, -1979
                  addi         ra, ra, 9 #update loop 0 counter
                  nop
                  srai         a4, t3, 26
                  sltu         tp, ra, a5
                  or           s6, t4, t6
                  slti         s4, t2, -1893
                  blt          ra, a7, sub_3_5_0_t #branch for loop 0
                  sltu         tp, ra, s6
                  addi         s6, zero, 7 #init loop 1 counter
                  xor          a7, t0, t2
                  add          a6, a0, s3
                  andi         t2, t0, -2002
                  sltu         s11, a1, t3
                  addi         gp, zero, 6 #init loop 1 limit
                  sll          s0, s5, s3
sub_3_3_1_t:      slti         a2, s3, -906
                  xor          a2, zero, a4
                  addi         s6, s6, -2 #update loop 1 counter
                  nop
                  slt          s8, s3, s3
                  addi         t3, zero, -5 #init loop 0 counter
                  srai         a4, a2, 27
                  addi         s1, zero, 2 #init loop 0 limit
                  sub          s7, s0, sp
                  slli         t6, s0, 16
                  addi         zero, a1, -1959
                  xor          t2, s5, a6
sub_3_3_0_t:      xori         sp, s9, -100
                  xori         s7, t4, 416
                  sra          s9, t3, tp
                  addi         t3, t3, 5 #update loop 0 counter
                  blt          t3, s1, sub_3_3_0_t #branch for loop 0
                  sra          a2, ra, s6
                  andi         s11, s8, 1558
                  sltiu        s4, s0, 578
                  ori          a3, s9, 1376
                  slti         t6, s1, 1731
                  xor          zero, s3, t5
                  bgeu         s6, gp, sub_3_3_1_t #branch for loop 1
                  add          a2, a7, a2
                  addi         s3, zero, -1 #init loop 0 counter
                  xor          a2, a7, a1
                  or           a6, t2, s1
                  addi         sp, zero, -10 #init loop 0 limit
                  auipc        a3, 1003575
sub_3_25_0_t:     xor          t5, zero, s3
                  sub          a3, tp, gp
                  srl          tp, s7, a3
                  slli         s1, s6, 6
                  addi         s3, s3, -1 #update loop 0 counter
                  add          a1, t1, s3
                  sub          a4, t6, sp
                  slli         t6, s8, 31
                  ori          s5, s2, -392
                  srai         s5, s0, 15
                  bne          s3, sp, sub_3_25_0_t #branch for loop 0
                  slli         s0, sp, 28
                  addi         tp, zero, 9 #init loop 1 counter
                  sltiu        s4, s4, 1438
                  sll          s1, s5, s7
                  slli         t6, s4, 27
                  slti         t3, s1, -1521
                  sub          gp, a1, ra
                  and          s4, s3, t1
                  addi         s11, zero, 12 #init loop 1 limit
sub_3_26_1_t:     andi         s3, t0, -318
                  sltiu        gp, t1, 1758
                  sra          a1, s7, s0
                  addi         tp, tp, 6 #update loop 1 counter
                  srai         gp, sp, 15
                  addi         a6, zero, -4 #init loop 0 counter
                  addi         s0, zero, 2 #init loop 0 limit
                  slti         s6, a6, 493
                  sltiu        a3, a1, 188
                  and          sp, t0, s8
                  add          t2, s6, s10
                  xori         s6, s2, 1048
                  slt          sp, t2, t6
sub_3_26_0_t:     and          a1, s4, a5
                  xor          s1, t3, t3
                  addi         a6, a6, 3 #update loop 0 counter
                  slli         a0, a7, 30
                  andi         a7, a6, 1301
                  blt          a6, s0, sub_3_26_0_t #branch for loop 0
                  xori         s3, s7, 1232
                  blt          tp, s11, sub_3_26_1_t #branch for loop 1
                  xori         a5, ra, 855
                  addi         s1, zero, -2 #init loop 0 counter
                  xor          a5, zero, s4
                  addi         s11, s7, 1450
                  srl          t3, sp, t5
                  addi         gp, zero, -13 #init loop 0 limit
                  sltu         a7, s1, zero
                  nop
                  srli         t5, s4, 23
sub_3_0_0_t:      andi         zero, s7, 1875
                  add          t3, t3, t2
                  sltiu        a7, t5, 416
                  or           zero, a7, s6
                  xor          ra, a5, s11
                  addi         s1, s1, -3 #update loop 0 counter
                  slli         s8, ra, 18
                  and          s3, t1, zero
                  andi         a5, zero, -2001
                  srl          t5, tp, a7
                  srl          t2, t0, s4
                  sll          s0, a1, a4
                  slt          sp, s10, a5
                  ori          a0, zero, 563
                  slli         s0, a1, 29
                  bge          s1, gp, sub_3_0_0_t #branch for loop 0
                  sltu         a7, zero, s10
                  addi         s11, zero, -5 #init loop 0 counter
                  lui          a1, 938430
                  slli         a5, a4, 11
                  srai         a6, a7, 22
                  sub          sp, t1, t3
                  nop
                  addi         s9, zero, 19 #init loop 0 limit
                  sub          t6, s6, a2
                  sra          a3, s2, a3
sub_3_14_0_t:     sltiu        s1, s3, -1825
                  or           s4, a6, t2
                  addi         s11, s11, 3 #update loop 0 counter
                  srli         gp, tp, 20
                  srai         t2, t2, 22
                  slli         sp, a4, 0
                  srai         a0, s8, 11
                  srai         a7, s8, 8
                  add          t3, s2, tp
                  and          a1, s0, t1
                  srli         s6, t6, 14
                  bltu         s11, s9, sub_3_14_0_t #branch for loop 0
                  addi         s3, s10, -444
                  addi         t5, zero, -1 #init loop 0 counter
                  and          a1, a0, s7
                  xori         s4, tp, -1464
                  and          a7, s5, zero
                  addi         tp, a6, -1216
                  slli         s5, s3, 24
                  slli         a1, a1, 20
                  sra          gp, ra, gp
                  nop
                  slli         s1, t1, 24
                  sltu         s7, s9, a0
                  and          a1, t6, a2
                  srli         s0, s10, 16
                  addi         ra, zero, 20 #init loop 0 limit
                  xor          zero, a6, t6
sub_3_1_0_t:      nop
                  slt          s7, a3, s7
                  addi         s9, t1, 1906
                  and          s4, t4, ra
                  auipc        a4, 127931
                  addi         t5, t5, 5 #update loop 0 counter
                  slli         a3, t0, 8
                  slli         s2, s11, 17
                  srli         sp, a6, 6
                  blt          t5, ra, sub_3_1_0_t #branch for loop 0
                  auipc        s0, 396366
                  addi         sp, zero, -1 #init loop 1 counter
                  xori         s8, t1, 2037
                  srl          gp, s10, a1
                  srai         s9, s7, 16
                  auipc        s5, 537197
                  addi         s7, zero, 13 #init loop 1 limit
                  sltiu        s8, gp, 484
                  ori          a3, s10, -162
                  sltu         a1, s5, zero
                  auipc        s2, 31429
sub_3_13_1_t:     sub          t2, s9, t0
                  addi         sp, sp, 3 #update loop 1 counter
                  sra          s8, tp, t3
                  lui          a6, 972860
                  auipc        t6, 877853
                  sub          zero, ra, s5
                  srli         s9, a1, 11
                  addi         s6, zero, 7 #init loop 0 counter
                  srl          gp, s2, t4
                  addi         t5, zero, 19 #init loop 0 limit
                  slti         s9, sp, 1086
sub_3_13_0_t:     sub          s0, s1, s11
                  srai         a4, t6, 25
                  addi         s6, s6, 6 #update loop 0 counter
                  add          t3, t5, t2
                  sltu         t2, s0, a3
                  slt          t2, t3, a6
                  bne          s6, t5, sub_3_13_0_t #branch for loop 0
                  bltu         sp, s7, sub_3_13_1_t #branch for loop 1
                  slt          t1, a4, t5
                  srl          t2, s6, zero
                  xor          a2, t6, s11
                  nop
                  add          zero, t5, t5
                  ori          s7, s10, -841
                  bne          a5, sp, 23f
                  beq          sp, s3, 19f
                  srai         s8, a1, 17
                  slt          s6, ra, s11
                  sltiu        s3, a3, -1389
                  auipc        gp, 267323
                  slti         t2, s2, 1380
                  and          s9, s9, s11
                  bgeu         ra, s7, 14f
14:               srl          s4, s3, s1
                  xori         a2, a0, -1190
                  sub          a6, s5, t6
                  xori         t5, a7, 1845
                  or           s0, t3, s8
19:               add          a3, t2, a6
                  nop
                  sra          gp, a2, s1
                  xori         s11, a0, 1344
23:               slti         sp, a5, -189
                  or           s2, s4, s7
                  srli         t6, a3, 12
                  slti         a6, s7, -1845
                  andi         t2, a6, -353
                  sltu         a3, t5, s9
                  sll          s5, s7, s7
                  xor          gp, t2, tp
                  srli         a6, s2, 16
                  sll          t6, t1, s2
                  slt          zero, a2, t2
                  sltu         a0, s0, s6
                  lui          s3, 526972
                  bge          a2, tp, 53f
                  srli         a4, t5, 16
                  xor          s7, a6, a6
                  bltu         zero, a0, 43f
                  addi         s6, t5, -448
                  srl          s3, t1, s1
                  andi         t1, a3, -522
43:               bltu         s10, s8, 62f
                  slti         a1, s6, -1252
                  bgeu         zero, s5, 58f
                  sll          s0, s0, a5
                  andi         s9, s2, 2
                  bge          a4, a6, 58f
                  bltu         a3, a3, 62f
                  nop
                  beq          t3, gp, 69f
                  nop
53:               srai         zero, a5, 11
                  xor          a5, s6, s2
                  bgeu         t4, s5, 67f
                  xor          a5, a7, a3
                  bge          s8, sp, 66f
58:               blt          s10, sp, 69f
                  xori         s0, a4, -166
                  or           a2, s3, a3
                  beq          s6, s11, 73f
62:               slt          s0, a2, s8
                  sltiu        s4, gp, -871
                  bne          a3, a1, 84f
                  and          t2, sp, t4
66:               srl          a3, a4, s10
67:               addi         zero, s6, -725
                  xori         s2, ra, -82
69:               srai         s7, tp, 3
                  andi         s9, s5, -616
                  or           t6, s8, t2
                  slti         t2, a2, -179
73:               nop
                  slti         a4, zero, 127
                  srai         s6, sp, 0
                  sltiu        a3, t2, -208
                  xor          s8, s5, t6
                  xor          s3, s8, gp
                  sub          a2, zero, t2
                  xori         a3, s2, 1835
                  and          s8, sp, a7
                  andi         s7, s5, 543
                  sra          tp, s4, a1
84:               slli         t5, t6, 24
                  srl          a5, t0, a5
                  srai         a0, s10, 18
                  and          t1, s1, s8
                  srai         a1, s0, 24
                  sub          s1, tp, a2
                  xor          a5, zero, s1
                  sltu         sp, s9, ra
                  addi         s4, s11, -744
                  slt          gp, t2, s0
                  srl          s3, s7, s11
                  xor          s4, tp, s10
                  ori          s5, s2, -1754
                  or           gp, ra, t5
                  sub          s11, tp, s11
                  sra          s4, t5, a4
                  sltu         ra, t6, gp
                  slti         s7, a4, -286
                  and          s6, gp, a1
                  sub          t2, ra, s3
                  bgeu         s11, t4, 112f
                  sub          a6, a7, gp
                  sra          s6, t5, a4
                  sub          tp, s0, s7
                  add          s2, s4, t2
                  srli         a7, t6, 3
                  blt          a5, a0, 112f
                  auipc        a6, 720585
112:              sltu         s3, a5, a6
                  bne          tp, a3, 123f
                  beq          zero, a7, 120f
                  or           t3, s10, s7
                  bge          a1, s8, 133f
                  nop
                  blt          tp, a3, 130f
                  ori          a7, s3, 1778
120:              bge          t4, t2, 138f
                  blt          s11, s3, 132f
                  xor          a0, s3, a4
123:              srl          a0, s6, t2
                  bge          sp, s8, 135f
                  srai         s4, s7, 8
                  sltu         sp, a2, t1
                  bne          t6, t3, 138f
                  add          a5, s8, a6
                  lui          a4, 689938
130:              add          tp, a5, a0
                  srl          zero, tp, a5
132:              xor          sp, a7, t2
133:              sra          sp, sp, a2
                  beq          s7, s8, 146f
135:              srl          zero, a3, s4
                  sll          a3, a3, a5
                  lui          s4, 966879
138:              xori         t2, tp, -2044
                  or           zero, s10, ra
                  andi         t3, s7, -323
                  slti         tp, t5, -656
                  lui          a1, 906715
                  andi         a4, gp, -186
                  bltu         s5, s4, 164f
                  nop
146:              xor          s3, gp, s2
                  sra          zero, a1, t0
                  beq          ra, s7, 153f
                  slti         zero, a7, -52
                  slt          s3, gp, s5
                  bge          t3, s5, 168f
                  or           gp, t4, t6
153:              bgeu         s7, gp, 159f
                  lui          a2, 1002432
                  bge          ra, s11, 174f
                  or           ra, a5, s0
                  slt          s5, a2, t5
                  sra          s3, s1, t5
159:              bltu         s0, s2, 170f
                  slli         a3, s7, 18
                  bgeu         t1, s3, 173f
                  or           s11, a4, t4
                  beq          a3, a7, 164f
164:              bgeu         a4, s7, 170f
                  and          zero, t6, s9
                  auipc        a5, 899958
                  and          sp, s10, s7
168:              beq          s11, a0, 179f
                  sra          a7, s5, gp
170:              srli         tp, s8, 30
                  srl          s0, s9, a4
                  slli         a3, s11, 1
173:              slti         a1, s7, 1614
174:              auipc        s8, 589176
                  and          t2, a4, s10
                  andi         a1, zero, 412
                  slti         t1, t3, -255
                  or           zero, s9, gp
179:              xori         ra, s10, 1664
                  add          t5, a2, s1
                  ori          sp, s1, 984
                  add          s2, s5, a3
                  lui          a7, 691973
                  srli         a4, ra, 7
                  slti         a3, t5, -738
                  ori          t2, s3, -1589
                  blt          a7, s3, 197f
                  xor          ra, t6, a6
                  sltu         tp, s9, a0
                  andi         zero, t0, -39
                  bge          ra, s5, 196f
                  andi         s6, ra, -505
                  add          s4, a1, s0
                  sltu         s0, s0, a3
                  andi         a0, a4, -565
196:              srai         s5, tp, 13
197:              bgeu         s6, t6, 209f
                  add          a2, a4, t3
                  ori          s0, tp, -791
                  bne          s9, t5, 218f
                  lui          s8, 802289
                  bge          a3, a0, 222f
                  sltiu        t5, t2, 770
                  slti         t5, t5, -1416
                  srl          t2, a2, ra
                  blt          t0, s8, 223f
                  or           t2, ra, tp
                  add          ra, sp, a4
209:              sltu         zero, s0, s8
                  addi         zero, a7, -1471
                  srli         a7, t0, 8
                  xor          a3, ra, a4
                  slli         gp, s5, 22
                  slt          s6, t2, sp
                  sltu         tp, sp, zero
                  sltu         s6, s6, ra
                  ori          s5, t1, -125
218:              beq          s8, a4, 238f
                  sltiu        zero, a2, -295
                  sll          t1, s9, s5
                  bltu         a0, a6, 231f
222:              andi         a5, s11, -1958
223:              slti         s1, s7, 680
                  blt          gp, s11, 228f
                  bne          a5, s5, 227f
                  xor          s0, t0, s5
227:              addi         a1, a3, 1032
228:              slti         a4, s3, -449
                  slli         s1, s7, 13
                  auipc        s2, 456998
231:              beq          s8, t2, 244f
                  xori         ra, t2, -1073
                  beq          t5, s10, 239f
                  andi         a4, s0, 282
                  xori         zero, sp, -741
                  bge          s7, ra, 249f
                  bltu         a1, a1, 245f
238:              or           s11, t0, t2
239:              sltiu        zero, tp, 749
                  sub          a1, s8, s5
                  beq          s9, a0, 254f
                  beq          a7, s11, 251f
                  lui          s2, 83822
244:              srli         t1, a4, 14
245:              srli         t2, t2, 12
                  xori         zero, s8, 1382
                  sltiu        s7, s7, 1452
                  beq          s4, s1, 259f
249:              bgeu         s11, a4, 266f
                  ori          gp, s3, -44
251:              sra          t1, a3, t0
                  auipc        tp, 40132
                  and          zero, t4, t1
254:              and          s4, a0, s10
                  bgeu         s5, a0, 272f
                  lui          a6, 56173
                  andi         s2, t2, -292
                  sra          gp, sp, s6
259:              sub          s5, s10, ra
                  xor          s11, s6, s0
                  srai         tp, t3, 31
                  xori         a3, zero, -721
                  xor          s8, a4, a7
                  sltiu        t5, t1, 851
                  srli         s7, ra, 28
266:              addi         a4, tp, 605
                  slt          gp, t0, a7
                  bltu         s0, s11, 280f
                  or           a4, s5, t2
                  and          a5, t5, a2
                  sub          s7, a1, sp
272:              sub          zero, ra, s4
                  sra          s11, t6, t5
                  sltu         a7, s8, sp
                  srai         s8, s7, 2
                  blt          t4, gp, 288f
                  sll          t1, s7, gp
                  slti         s2, s0, 442
                  nop
280:              bltu         a0, sp, 298f
                  and          a6, s0, a2
                  slli         a1, s9, 9
                  addi         s0, s0, 1881
                  sltu         a2, s2, s9
                  sub          a6, a6, t6
                  slt          t6, s10, s3
                  srai         s5, s8, 0
288:              or           a5, ra, s1
                  srli         s11, a0, 9
                  or           s0, a7, s9
                  and          s1, a7, zero
                  add          t3, t6, t5
                  slli         gp, s6, 25
                  xor          a0, t6, a6
                  nop
                  auipc        s6, 544368
                  sra          gp, s0, s5
298:              andi         s2, ra, 695
                  srl          tp, a3, s8
                  sra          s9, s10, sp
                  ori          t3, a6, 1929
                  blt          s9, a4, 320f
                  and          tp, s11, s9
                  srli         t1, s11, 15
                  addi         a7, s5, 909
                  add          t6, a6, t2
                  slt          a5, a5, a0
                  ori          s8, s7, 1863
                  sra          a7, s6, s6
                  or           zero, t5, s0
                  add          s6, a5, a6
                  and          a4, s6, t3
                  srl          a0, s1, a7
                  add          t6, s1, s6
                  bgeu         a4, ra, 326f
                  xori         s11, a6, 71
                  addi         tp, t0, 1800
                  bltu         t1, ra, 335f
                  sltiu        t2, s7, -1614
320:              xori         s4, a2, 447
                  slti         ra, t6, -961
                  srai         s8, s4, 8
                  xor          t1, a6, s10
                  bne          s5, s0, 344f
                  ori          zero, s1, 190
326:              sltiu        a7, a3, 670
                  sltu         s1, tp, s9
                  srai         zero, s5, 28
                  slli         sp, a2, 28
                  nop
                  sub          zero, s1, t0
                  beq          s7, t1, 349f
                  sltiu        t5, s1, 1576
                  ori          t6, s7, -604
335:              bge          s7, ra, 346f
                  sltiu        zero, s7, 246
                  or           s9, s0, zero
                  ori          t6, a6, 24
                  xori         sp, s8, 30
                  sra          s8, s7, t1
                  ori          tp, t6, -895
                  sltu         s2, s1, s2
                  beq          s4, gp, 356f
344:              bgeu         a1, gp, 357f
                  srli         a3, s9, 14
346:              or           s5, s9, sp
                  auipc        t3, 890675
                  lui          s0, 974811
349:              beq          a4, t1, 361f
                  bgeu         ra, s3, 368f
                  bltu         s2, s9, 368f
                  srli         s1, s4, 5
                  or           s8, s7, a2
                  or           tp, s2, s8
                  srl          sp, a0, a3
356:              slli         a6, s4, 2
357:              sub          zero, t4, t5
                  or           t1, t4, s6
                  nop
                  sra          s9, s1, a7
361:              slti         s6, a2, -811
                  slti         ra, t0, 1724
                  sll          a3, t3, a7
                  xor          s5, a3, t1
                  or           a5, a3, s5
                  auipc        a3, 137032
                  sltiu        tp, t6, -1790
368:              or           gp, t0, s10
                  andi         t1, a3, -1575
                  srl          s1, s9, s7
                  bgeu         sp, s5, 375f
                  auipc        a0, 682812
                  and          ra, t3, t0
                  sub          s5, ra, s3
375:              slti         s1, s5, -1417
                  or           zero, t0, s11
                  xori         zero, tp, 1743
                  xori         s2, t6, 568
                  sltu         ra, s10, t3
                  srai         s7, a3, 14
                  srl          t5, t6, t0
                  lui          a6, 534508
                  bne          t1, t1, 401f
                  and          s4, s1, s8
                  bgeu         a5, t2, 387f
                  and          t6, s4, s3
387:              slli         ra, gp, 7
                  blt          a6, t6, 398f
                  lui          t6, 680885
                  sra          a0, gp, a2
                  slt          t3, a5, a5
                  add          s3, t2, s6
                  auipc        a2, 440855
                  srl          s11, s5, sp
                  add          s8, s0, s10
                  sub          a2, a7, s4
                  add          s4, t4, s0
398:              lui          s9, 871175
                  or           s9, tp, a1
                  andi         s0, a6, 1031
401:              srai         a1, s2, 5
                  beq          a7, t3, 422f
                  auipc        a5, 957492
                  slt          a6, t5, t4
                  nop
                  sltu         a5, s2, zero
                  sltiu        a5, s3, 319
                  slli         t6, a4, 15
                  sra          tp, tp, a3
                  slt          s2, s7, t0
                  slt          a0, s6, s5
                  auipc        s6, 1005058
                  sltu         a4, t4, s10
                  slli         tp, a6, 10
                  andi         t2, t0, 667
                  bge          s1, a5, 421f
                  sltu         a6, s9, s9
                  sll          t5, s0, s1
                  lui          s11, 149303
                  auipc        a3, 356741
421:              xor          a6, tp, s6
422:              slli         s5, t0, 6
                  add          t1, a2, s7
                  slt          a0, s9, t5
                  sll          a7, s8, s2
                  bgeu         a3, s7, 427f
427:              slti         gp, sp, -872
                  beq          s2, s11, 446f
                  sltiu        s3, s1, 1438
                  bltu         a1, s6, 436f
                  auipc        s1, 293479
                  sra          ra, a4, s8
                  addi         s0, a4, -1477
                  sra          zero, a5, s5
                  slti         a7, s10, 931
436:              addi         tp, ra, 487
                  xori         a5, s11, -74
                  srli         s8, s1, 15
                  bltu         s5, t2, 450f
                  bltu         tp, s3, 453f
                  srl          s9, t4, t0
                  andi         s5, s8, -1909
                  andi         t6, a0, -875
                  or           a0, t6, t1
                  bne          t6, t4, 455f
446:              srai         t5, a1, 21
                  slti         t1, s1, -1198
                  sltiu        t2, t5, -1940
                  sltu         a5, s6, zero
450:              beq          t2, t6, 456f
                  xor          t1, s9, a0
                  bltu         s0, s7, 464f
453:              srl          tp, s5, s9
                  bgeu         a6, s3, 462f
455:              bltu         a1, t6, 466f
456:              lui          ra, 14539
                  slt          a6, a2, s2
                  bgeu         a2, s8, 477f
                  xor          t6, t3, a5
                  lui          ra, 180499
                  slt          t3, t3, s1
462:              and          s7, s10, s9
                  nop
464:              ori          s8, s9, -1080
                  sltiu        a6, t1, 723
466:              auipc        a2, 233517
                  slli         s6, a2, 31
                  xor          a0, a6, t4
                  sub          t1, s6, s1
                  slt          s4, zero, s9
                  lui          tp, 95532
                  and          ra, s3, t0
                  beq          t6, s0, 485f
                  addi         ra, s1, 835
                  slti         a6, a5, 1419
                  slt          a1, sp, sp
                  addi         gp, zero, -4 #init loop 1 counter
                  sltu         s1, a4, s2
                  sra          ra, s7, t0
                  sltu         t5, s7, t5
                  or           a1, s3, a4
                  addi         s5, zero, 11 #init loop 1 limit
                  sub          s9, t2, s5
sub_3_9_1_t:      nop
                  slt          t2, a6, tp
                  addi         gp, gp, 10 #update loop 1 counter
                  addi         a0, zero, -4 #init loop 0 counter
                  addi         t6, zero, 10 #init loop 0 limit
                  ori          tp, a7, -1015
                  sltu         s4, s4, t2
sub_3_9_0_t:      slt          zero, a0, a3
                  slt          s2, tp, a4
                  sra          t1, s6, a6
                  sub          s8, s6, s10
                  sra          a1, s2, tp
                  ori          t2, s3, -112
                  sltiu        a2, t1, -796
                  srai         t1, a1, 4
                  addi         a0, a0, 5 #update loop 0 counter
                  lui          tp, 644739
                  sll          a5, a0, t2
                  bltu         a0, t6, sub_3_9_0_t #branch for loop 0
                  auipc        s4, 412656
                  lui          a2, 858732
                  bltu         gp, s5, sub_3_9_1_t #branch for loop 1
                  slti         a6, s7, 797
477:              srai         t3, s9, 21
                  sll          a3, zero, s3
                  ori          s5, s9, -1844
                  srli         s0, sp, 8
                  addi         a3, a6, 984
                  beq          a2, gp, 491f
                  lui          gp, 180593
                  ori          sp, a7, -447
485:              bltu         s4, s2, 497f
                  auipc        tp, 434270
                  beq          s6, t5, 498f
                  srai         a6, s5, 3
                  bltu         s7, t0, 499f
                  bne          a4, gp, 501f
491:              slli         s1, s3, 11
                  srl          s1, ra, a1
                  sll          s7, sp, tp
                  or           a0, a0, tp
                  bgeu         t3, tp, 505f
                  sltiu        a7, a7, 1922
497:              ori          s5, a4, 197
498:              srl          zero, a3, gp
499:              andi         t6, t6, 689
                  srli         s3, tp, 31
501:              xori         s4, a4, -1521
                  addi         t6, zero, 6 #init loop 1 counter
                  srl          a6, s7, sp
                  addi         gp, zero, 6 #init loop 1 limit
                  srl          a5, s7, s10
sub_3_22_1_t:     sltu         s5, a2, t2
                  ori          a7, gp, -1078
                  addi         t6, t6, -5 #update loop 1 counter
                  auipc        s3, 890191
                  addi         t2, zero, 1 #init loop 0 counter
                  addi         s7, zero, 13 #init loop 0 limit
sub_3_22_0_t:     xori         s9, sp, -275
                  add          s6, t0, s11
                  addi         t2, t2, 9 #update loop 0 counter
                  bltu         t2, s7, sub_3_22_0_t #branch for loop 0
                  bgeu         t6, gp, sub_3_22_1_t #branch for loop 1
                  auipc        s0, 208194
                  slli         a3, s10, 2
                  ori          s1, s0, -1213
                  andi         a0, a5, 1552
505:              sltiu        t3, s5, 888
                  srai         s6, t5, 15
                  sll          t5, a4, s0
                  add          s5, gp, a5
                  bne          t2, a6, 520f
                  bltu         a1, a2, 521f
                  addi         a0, a3, 147
                  add          sp, ra, sp
                  and          tp, a5, s11
                  sra          a4, t3, s9
                  slti         s6, a7, 1026
                  nop
                  andi         s8, a3, -79
                  sra          a4, gp, s5
                  bge          t2, s1, 531f
520:              sltu         s2, a7, a5
521:              sub          s5, a5, t4
                  xori         s8, t6, 368
                  nop
                  sub          s4, sp, a7
                  sub          s9, tp, s7
                  srli         s7, t4, 9
                  bltu         s10, t6, 540f
                  bltu         t6, a7, 541f
                  sub          gp, s2, s8
                  bltu         a7, zero, 536f
531:              srai         gp, s0, 6
                  slt          t3, a4, a7
                  slt          ra, t6, s2
                  srl          s2, a6, s8
                  auipc        a1, 483592
536:              add          s2, s10, s10
                  sra          gp, s9, a2
                  andi         s11, a6, 463
                  or           t5, t2, t5
540:              sll          a3, t3, a7
541:              nop
                  slt          a1, ra, zero
                  sltu         s8, t2, t5
                  bgeu         t3, s1, 548f
                  slli         a1, t1, 2
                  sub          a3, s4, s5
                  sub          sp, tp, a7
548:              beq          sp, t0, 550f
                  andi         s11, t0, -1355
550:              bne          s8, a0, 570f
                  slti         s6, s10, 196
                  or           s11, zero, s8
                  xori         ra, s1, 1583
                  slti         a2, s1, 998
                  beq          tp, s4, 567f
                  addi         a0, t1, -990
                  srli         tp, s11, 0
                  auipc        s11, 924555
                  andi         t1, s4, 1810
                  addi         a7, a4, 1464
                  sltiu        a2, t2, -2042
                  lui          s8, 877682
                  lui          a1, 428410
                  srl          a1, t6, a0
                  srai         t3, s5, 0
                  bge          s11, t4, 578f
567:              srli         a0, t1, 4
                  xori         gp, t3, -1230
                  srl          s9, t4, s7
570:              xor          tp, a3, sp
                  sra          a0, sp, t1
                  bltu         t3, t3, 589f
                  ori          a1, t5, 1897
                  sltiu        s8, s6, 1015
                  andi         a4, s9, -462
                  sll          t5, tp, t4
                  lui          tp, 514033
578:              and          s7, t1, a5
                  sll          s8, sp, a5
                  slli         t2, t4, 31
                  bltu         a0, sp, 600f
                  xor          s8, t0, s3
                  bne          t5, zero, 596f
                  and          a0, s2, t2
                  nop
                  xor          a5, t1, a1
                  sub          s7, sp, t1
                  or           a0, a5, s4
589:              srl          t5, a7, ra
                  and          t2, a6, t3
                  bgeu         s9, a2, 609f
                  slt          a5, sp, t1
                  nop
                  sll          sp, t2, s1
                  bltu         s10, s0, 612f
596:              and          a4, t4, s1
                  bgeu         zero, t2, 615f
                  slt          s4, s3, s1
                  bge          t5, s2, 600f
600:              srai         s3, sp, 12
                  ori          s11, t0, 1208
                  xori         t1, a4, -1324
                  nop
                  bltu         zero, zero, 621f
                  sll          s2, t3, a7
                  or           sp, t3, s10
                  bltu         gp, tp, 613f
                  nop
609:              or           s0, s7, a7
                  sltu         t6, zero, zero
                  slt          t5, a4, s5
612:              ori          s9, s9, 198
613:              add          s7, a2, tp
                  sltiu        a7, t1, 356
615:              ori          s7, t4, -922
                  sra          t6, s8, s10
                  addi         s2, s9, 1558
                  ori          s1, zero, 812
                  sub          a0, t0, zero
                  sub          a6, t6, zero
621:              blt          t2, s1, 633f
                  bge          t4, a5, 631f
                  beq          sp, t0, 641f
                  lui          s7, 179236
                  srai         t1, a2, 10
                  sltu         s0, a5, a2
                  bltu         a2, t1, 632f
                  nop
                  bgeu         s7, s2, 649f
                  slt          zero, t1, gp
631:              sra          t2, gp, s8
632:              and          a3, t3, t4
633:              xor          ra, a2, a2
                  sltu         a4, a2, a6
                  sub          s5, s7, t1
                  add          a5, tp, t3
                  sub          t1, s5, a7
                  slti         a7, s1, 1292
                  or           t2, s11, sp
                  xor          sp, s5, a6
641:              or           s9, s5, t2
                  sub          a3, ra, t0
                  slti         s4, s9, -1974
                  add          tp, a7, s5
                  slt          s9, gp, a0
                  sltiu        a4, s6, 1439
                  srli         a0, t0, 11
                  slli         ra, a5, 0
649:              slt          a4, ra, s9
                  sll          s8, tp, a5
                  ori          t2, t0, -1418
                  sra          s1, s6, gp
                  beq          t6, t0, 661f
                  sra          zero, s4, a4
                  auipc        t6, 765
                  sub          a5, t6, s5
                  bgeu         s1, s8, 668f
                  beq          s1, gp, 663f
                  beq          t5, t6, 660f
660:              sll          a6, s3, t5
661:              srl          a1, a4, s3
                  lui          a7, 308331
663:              srl          t2, t3, t3
                  and          a5, s4, a1
                  sltu         tp, s6, t1
                  bgeu         a4, sp, 672f
                  slti         s6, s5, -1021
668:              bltu         t5, s2, 688f
                  bgeu         t0, t5, 682f
                  and          s9, t3, a5
                  bltu         a1, t1, 681f
672:              andi         a0, s7, -1715
                  bge          a2, t1, 681f
                  xori         a7, sp, -624
                  xori         a1, t3, 279
                  slt          s3, t6, a5
                  add          s4, a5, zero
                  bgeu         a2, a5, 695f
                  slt          t3, s9, t1
                  add          s5, gp, t3
681:              xor          s5, s5, t5
682:              nop
                  slli         s5, t5, 15
                  xor          t2, s3, ra
                  blt          a2, zero, 696f
                  blt          t0, a3, 698f
                  bne          a6, t0, 691f
688:              ori          s6, t3, -373
                  ori          t1, s1, 1816
                  andi         s6, s5, 376
691:              auipc        tp, 81435
                  sltiu        a6, s6, 989
                  ori          s1, tp, 2023
                  bne          t0, gp, 711f
695:              sra          s9, a2, s9
696:              sltiu        zero, s8, -1494
                  slt          a5, a2, t0
698:              bltu         s2, s3, 709f
                  slti         s3, a6, 980
                  and          s7, s10, a3
                  sltiu        sp, s4, 1948
                  slti         a3, t0, 1304
                  ori          s5, s3, 1494
                  add          s9, t6, a7
                  bgeu         a5, t4, 716f
                  and          ra, a7, s11
                  nop
                  xor          s4, a1, t4
709:              bgeu         t0, s6, 729f
                  srai         a2, t0, 31
711:              lui          s9, 429716
                  blt          t6, s7, 724f
                  sra          t1, t0, a3
                  beq          gp, s7, 732f
                  srl          a1, s6, s8
716:              slt          s9, a5, a6
                  or           s1, s4, t2
                  auipc        a5, 397260
                  slti         s2, zero, 873
                  lui          zero, 980850
                  bne          a4, a6, 740f
                  sltu         a5, s2, a3
                  beq          a2, s9, 735f
724:              slli         s4, sp, 21
                  addi         t1, s8, -1285
                  addi         a4, t5, -1962
                  add          t1, s0, s10
                  addi         a6, a2, -264
729:              xor          s7, a1, t2
                  nop
                  srl          s0, t2, a7
732:              slti         sp, s2, -494
                  andi         t5, a5, -1038
                  srl          ra, gp, gp
735:              lui          t2, 185634
                  add          t5, s2, t4
                  sra          s6, t3, ra
                  ori          t3, a6, -228
                  sub          a3, tp, s0
740:              blt          t4, ra, 757f
                  sra          s9, t6, gp
                  and          t6, a1, a5
                  sra          a6, s3, t3
                  sll          s8, s1, s8
                  blt          sp, gp, 763f
                  or           a5, a6, s2
                  add          a0, s11, t6
                  sltiu        zero, t4, -1718
                  auipc        t6, 802114
                  bge          zero, t3, 762f
                  slli         s0, t0, 4
                  andi         t1, a1, 1783
                  lui          s7, 866198
                  andi         ra, s9, 557
                  or           a1, s11, t5
                  bgeu         s0, t4, 766f
757:              bge          a6, a2, 775f
                  sltiu        s8, zero, -1336
                  auipc        s7, 109137
                  bne          s10, s7, 771f
                  add          s6, s2, s8
762:              xor          s6, tp, a3
763:              slt          t1, a2, zero
                  xor          t5, s10, s9
                  xor          s5, a0, s1
766:              or           zero, s5, zero
                  bltu         t3, s6, 776f
                  andi         s4, tp, 1577
                  addi         tp, s3, 469
                  blt          gp, zero, 776f
771:              or           s11, a6, sp
                  blt          s6, a7, 774f
                  bge          tp, ra, 786f
774:              andi         s1, s9, 767
775:              ori          a1, s8, 1625
776:              andi         t1, t3, -45
                  srl          t5, a3, tp
                  addi         s8, tp, 1409
                  bltu         s10, sp, 792f
                  or           s1, a6, a5
                  slli         a7, s11, 27
                  sltiu        t6, s7, 776
                  sltiu        s3, s2, -516
                  lui          t2, 537420
                  slt          s8, s4, s0
786:              srli         t1, t5, 8
                  sltiu        t1, a2, -38
                  srl          s9, t6, s10
                  srli         a6, a7, 4
                  bne          t3, s4, 810f
                  ori          ra, s9, 1389
792:              and          s3, t3, s7
                  slti         a2, a7, 202
                  slt          zero, ra, a1
                  bne          s11, t2, 805f
                  beq          t2, a2, 808f
                  bgeu         a5, a6, 806f
                  addi         t3, s6, -537
                  lui          s1, 516965
                  xori         s4, sp, -1065
                  sltu         s2, t1, s1
                  slt          s5, s1, s1
                  bge          s2, ra, 821f
                  sltiu        s4, t0, -925
805:              sra          s6, s0, a6
806:              nop
                  srai         a7, a4, 18
808:              sltu         a0, t6, s4
                  bgeu         a5, zero, 814f
810:              bge          tp, zero, 827f
                  sll          s5, a4, a2
                  lui          s6, 789007
                  srai         t6, s5, 11
814:              blt          s0, s10, 831f
                  bne          s4, a7, 816f
816:              bne          a7, t1, 822f
                  bltu         s0, a6, 830f
                  sltiu        a3, zero, -1623
                  add          ra, s5, t6
                  sub          s1, t2, a7
821:              auipc        s8, 328368
                  addi         t1, zero, -10 #init loop 0 counter
                  addi         s4, zero, 8 #init loop 0 limit
sub_3_16_0_t:     slti         t5, s4, -1492
                  sltiu        s8, s1, -1888
                  addi         t1, t1, 7 #update loop 0 counter
                  bltu         t1, s4, sub_3_16_0_t #branch for loop 0
                  ori          a4, ra, 1650
822:              addi         s6, a3, -1409
                  sub          a6, t1, s2
                  bge          s5, a5, 836f
                  xori         t3, a3, 846
                  blt          s1, t5, 834f
827:              sll          tp, s8, s8
                  slti         a2, s11, -513
                  beq          s0, zero, 848f
830:              sltiu        t1, s10, -1215
831:              ori          s7, a2, -203
                  xori         a1, t4, 1987
                  lui          s3, 1033631
834:              blt          s5, s8, 852f
                  add          s1, s3, s4
836:              bltu         s10, gp, 847f
                  slt          a7, ra, t3
                  sra          s4, gp, t1
                  bltu         t4, sp, 857f
                  srl          t5, s2, s2
                  sub          s3, a3, s11
                  slli         s3, s4, 21
                  bltu         t4, s8, 854f
                  srli         t2, a3, 30
                  xori         gp, s8, -1741
                  slt          a0, t2, a0
847:              srli         a4, a6, 29
848:              nop
                  blt          s1, t0, 862f
                  slt          s0, s4, a3
                  srl          s5, s3, t6
852:              xor          s11, a2, s2
                  bge          s7, tp, 857f
854:              auipc        s1, 570208
                  lui          a0, 1047298
                  nop
                  addi         a6, zero, -1 #init loop 1 counter
                  sltu         zero, s3, s6
                  addi         s5, zero, -17 #init loop 1 limit
                  or           s3, t3, zero
sub_3_4_1_t:      slti         s0, t5, -1680
                  addi         a6, a6, -2 #update loop 1 counter
                  slt          s7, s10, zero
                  srli         zero, a7, 5
                  addi         ra, zero, 9 #init loop 0 counter
                  addi         s8, zero, -6 #init loop 0 limit
sub_3_4_0_t:      addi         s3, t1, -882
                  addi         ra, ra, -1 #update loop 0 counter
                  srl          s3, t6, s5
                  bge          ra, s8, sub_3_4_0_t #branch for loop 0
                  xori         tp, s5, 1254
                  slli         s3, a1, 9
                  bne          a6, s5, sub_3_4_1_t #branch for loop 1
                  auipc        a4, 685174
857:              sll          gp, ra, s7
                  sub          tp, t2, tp
                  sub          ra, s8, t0
                  srl          s7, s2, s8
                  bne          zero, s10, 873f
862:              slti         a2, t1, -28
                  blt          s11, a2, 875f
                  or           zero, s4, zero
                  srli         gp, ra, 17
                  beq          a6, t2, 876f
                  slli         a5, zero, 15
                  srai         t2, a1, 22
                  sra          zero, t1, ra
                  auipc        a2, 749612
                  sub          s8, ra, s3
                  slli         s5, s7, 23
873:              slli         s8, s2, 7
                  slli         s0, t2, 9
875:              bne          s10, gp, 886f
876:              bne          a6, ra, 893f
                  xori         s4, a2, 1469
                  add          s7, t4, s8
                  sltu         s11, t5, a6
                  blt          t4, t5, 891f
                  bge          sp, s4, 901f
                  and          s3, s2, t3
                  xor          t5, a4, t6
                  or           sp, s9, t6
                  srai         t6, tp, 11
886:              sltiu        s9, t1, -1334
                  andi         ra, s7, -508
                  sll          s7, s10, s2
                  blt          a7, s8, 891f
                  srai         a5, a4, 19
891:              or           t1, a3, a4
                  sltiu        ra, a2, -711
893:              srli         s9, a0, 16
                  nop
                  sra          a3, t2, a1
                  slti         t6, s10, -824
                  bne          s11, a6, 903f
                  addi         s6, s4, -1794
                  bgeu         ra, a4, 912f
                  slt          a0, s1, t1
901:              nop
                  lui          s7, 817342
903:              sub          s8, s1, a1
                  bne          t3, s3, 924f
                  beq          s4, s4, 906f
906:              slli         t5, t1, 18
                  bne          a1, s9, 926f
                  auipc        s11, 501617
                  ori          s2, ra, 562
                  or           ra, a3, a5
                  beq          a7, a0, 922f
912:              ori          zero, a7, -46
                  srl          tp, t1, gp
                  xori         a7, gp, 1165
                  xori         a7, zero, 1186
                  xor          ra, t6, s4
                  lui          a0, 910780
                  srai         gp, tp, 31
                  ori          s9, s11, 1537
                  sra          tp, s3, s5
                  bne          sp, t2, 930f
922:              srli         s0, s10, 17
                  sub          a3, s0, tp
924:              bge          s6, a1, 934f
                  or           zero, a5, t0
926:              or           s11, zero, tp
                  bgeu         a7, a5, 940f
                  srai         s2, a0, 27
                  xor          sp, s4, a6
930:              sltiu        s9, s3, -728
                  auipc        a6, 2595
                  sltiu        s1, sp, 1754
                  auipc        a4, 202342
934:              lui          gp, 948300
                  srli         t2, s9, 3
                  srai         s6, s8, 9
                  andi         tp, s11, 1246
                  srai         a6, t0, 11
                  slti         a0, a3, 88
940:              or           a1, tp, s2
                  sll          a6, t6, zero
                  sll          s7, sp, s5
                  srai         a3, a2, 29
                  xori         gp, tp, 1067
                  srai         a4, t2, 28
                  and          s7, t3, gp
                  sltiu        tp, t2, -701
                  ori          s1, t3, 1480
                  auipc        s2, 366237
                  nop
                  slt          a5, ra, ra
                  sltiu        zero, a2, -852
sub_3_j7:         jal          t1, sub_4 #jump sub_3 -> sub_4
                  nop
                  sub          s11, s3, t6
                  bge          a1, s10, 962f
                  ori          tp, t5, 82
                  bne          s6, a7, 972f
                  srai         a0, s4, 1
                  bgeu         s2, a6, 964f
                  xori         s4, a5, 248
                  sub          s8, a0, t6
                  lui          a4, 871647
                  xori         a2, t5, -796
                  sltu         s11, s1, t1
                  sub          a7, a3, s6
                  add          tp, a2, ra
962:              sll          tp, t0, s1
                  beq          a2, tp, 967f
964:              sll          s8, t4, s5
                  or           a6, s7, s8
                  slli         s2, s11, 0
967:              slti         t3, a2, -172
                  slti         a5, gp, 1390
                  blt          s10, s11, 977f
                  nop
                  sra          s8, t0, s1
972:              slti         t1, t1, 974
                  auipc        tp, 275901
                  srl          t3, t5, a6
                  srli         s6, t6, 12
                  or           a6, t6, a1
977:              bgeu         a1, t1, 989f
                  sra          s0, a5, s0
                  andi         t3, t0, 1326
                  xori         sp, t3, 174
                  bge          s9, s7, 999f
                  bge          s7, s6, 994f
                  or           t2, a7, ra
                  beq          a2, s11, 990f
                  bgeu         s8, t4, 991f
                  bltu         a0, t1, 988f
                  bltu         t0, s1, 998f
988:              addi         a0, s1, 1740
989:              and          a2, zero, tp
990:              srl          tp, t4, t3
991:              and          s8, a1, tp
                  or           t1, a4, a2
                  bge          s2, s8, 1006f
994:              ori          a7, a5, -304
                  xor          a5, a2, a4
                  sra          sp, a6, tp
                  sra          ra, s0, s7
998:              or           s0, zero, s6
999:              srl          a1, s5, a3
                  andi         a7, gp, -1297
                  srl          t1, ra, s1
                  bltu         s4, sp, 1014f
                  sltiu        zero, t6, 614
                  slli         a0, a4, 10
                  bltu         tp, a3, 1022f
1006:             lui          a2, 992723
                  auipc        a2, 994087
                  lui          a5, 326491
                  add          sp, zero, a3
                  lui          a1, 807492
                  sltu         sp, s9, ra
                  sra          s0, a0, a0
                  auipc        s3, 392081
1014:             andi         s0, s1, -1012
                  slli         ra, t4, 15
                  add          s3, s6, tp
                  auipc        s3, 616470
                  bne          s7, t5, 1029f
                  blt          s4, ra, 1037f
                  xor          a3, s8, a2
                  addi         t2, sp, 1585
1022:             xori         a7, t6, -321
                  slt          s4, s1, t4
                  srl          a2, s7, s1
                  blt          a6, s3, 1030f
                  bne          a5, a7, 1039f
                  bge          s4, s9, 1044f
                  beq          s11, s8, 1046f
1029:             srai         a0, tp, 30
1030:             srli         s6, s0, 0
                  srli         s7, s9, 16
                  srai         s11, t2, 12
                  blt          gp, gp, 1044f
                  bgeu         gp, a5, 1051f
                  srai         gp, gp, 24
                  bgeu         a2, a5, 1048f
1037:             slli         t5, s9, 4
                  or           t3, a0, a6
1039:             xori         a6, s2, -155
                  slt          sp, t2, a7
                  srai         s11, zero, 2
                  sltiu        a5, t3, -1506
                  andi         s8, t4, -1538
1044:             bgeu         s6, s6, 1056f
                  ori          t3, a1, 1941
1046:             sub          gp, t3, t5
                  addi         s8, ra, 520
1048:             sltu         s2, s9, s2
                  or           s5, s0, ra
                  and          s6, s6, t4
1051:             bne          s3, s11, 1059f
                  and          s11, a5, a7
                  slti         gp, t3, 1906
                  sll          a2, zero, s11
                  auipc        t5, 423674
1056:             slt          s6, s6, s10
                  sll          s8, s5, s11
                  sltu         t6, t0, a7
1059:             addi         s2, tp, 1181
                  ori          ra, s4, -207
                  addi         s4, s6, -816
                  beq          s9, a6, 1079f
                  beq          s8, zero, 1076f
                  xor          t1, a1, s8
                  bltu         s1, s2, 1077f
                  auipc        zero, 737459
                  blt          a7, a6, 1087f
                  nop
                  auipc        s9, 340665
                  add          t3, t4, t2
                  slti         zero, a4, 227
                  blt          s10, s4, 1090f
                  sll          a2, a2, a7
                  ori          s2, t5, -512
                  srli         t5, t1, 20
1076:             slt          s11, s11, s1
1077:             auipc        s5, 893368
                  bne          s4, a5, 1096f
1079:             srli         s11, zero, 13
                  bgeu         t4, s6, 1085f
                  beq          s4, s2, 1091f
                  and          ra, a3, tp
                  slli         tp, t2, 15
                  sltu         t2, s7, s9
1085:             xori         a5, s6, 1994
                  lui          s11, 885254
1087:             srl          zero, a7, s7
                  sltiu        t2, s4, 953
                  sll          sp, s3, a7
1090:             slti         s2, a5, -1676
1091:             srai         s0, s10, 4
                  bgeu         s9, sp, 1102f
                  sra          a3, a1, s8
                  slti         gp, t6, -86
                  ori          s5, s10, 1513
1096:             bgeu         a3, s5, 1113f
                  lui          a1, 709830
                  sltiu        s1, a7, -591
                  slli         a2, s4, 30
                  add          s7, t4, s7
                  and          s6, s8, s9
1102:             nop
                  beq          a7, s6, 1109f
                  sltiu        a0, a6, -941
                  bge          t3, s10, 1111f
                  sll          s0, s4, a1
                  xor          a0, s3, s3
                  srl          tp, s8, s2
1109:             slt          s7, gp, zero
                  sltu         t5, s6, s0
1111:             srai         zero, sp, 16
                  slt          s6, tp, a1
1113:             add          s3, s8, s6
                  srli         t2, t2, 23
                  auipc        a2, 564059
                  sltu         a5, s8, s2
                  lui          a5, 539352
                  beq          s6, t2, 1129f
                  srl          tp, gp, t3
                  bltu         a4, t2, 1140f
                  slli         s4, s5, 11
                  slti         a5, s3, 1536
                  sltu         s6, t0, tp
                  and          t2, s2, tp
                  or           t2, t5, t0
                  sra          s9, s6, a0
                  bltu         s8, s10, 1131f
                  ori          t5, s0, -1624
1129:             slt          a1, a7, a0
                  lui          t6, 890957
1131:             or           s3, s11, s5
                  lui          s6, 662990
                  bge          zero, s1, 1144f
                  sub          zero, s8, a0
                  xor          t6, t4, s11
                  xor          a3, a1, a6
                  beq          gp, s4, 1156f
                  srl          s8, s8, s7
                  andi         a4, s9, -1110
1140:             xori         a6, tp, 1154
                  beq          s9, s9, 1152f
                  sra          s4, a1, gp
                  sub          s0, tp, tp
1144:             ori          s2, s9, 582
                  slt          tp, t6, a6
                  sltiu        a2, s1, 2025
                  sra          s2, a1, s9
                  ori          t5, a5, 1890
                  slt          s11, a1, s10
                  sll          a6, tp, a6
                  sltiu        sp, t5, 1593
1152:             slti         t1, a6, -1248
                  slti         s7, t0, -1577
                  slt          gp, s10, t6
                  beq          a1, t1, 1172f
1156:             and          a6, gp, gp
                  lui          s11, 603456
                  xori         gp, s11, -1431
                  beq          s2, s2, 1171f
                  srai         s0, zero, 9
                  sra          zero, s7, s5
                  slt          t5, s1, ra
                  bge          a1, s2, 1165f
                  sll          s4, a2, t1
1165:             andi         s5, a5, 1990
                  or           s3, a6, gp
                  sltiu        t5, t1, 1240
                  bge          t3, a1, 1186f
                  lui          t6, 949447
                  sub          t3, s1, s5
1171:             addi         sp, t1, 286
1172:             srli         t5, a5, 14
                  srli         s0, ra, 31
                  ori          zero, s0, 1055
                  lui          sp, 98404
                  blt          t6, s7, 1189f
                  ori          a4, s8, -346
                  andi         zero, t1, 333
                  xori         a3, a7, 1785
                  xor          a1, s8, a6
                  andi         s2, s9, -586
                  slti         t1, gp, 61
                  sltu         t1, a7, s3
                  sll          s0, a6, sp
                  srli         s9, t1, 11
1186:             slti         ra, s8, 1690
                  bgeu         s7, s10, 1200f
                  slli         sp, a7, 1
1189:             lui          a0, 220498
                  slli         sp, a4, 21
                  bne          a2, s8, 1200f
                  slt          a6, s7, a5
                  slli         gp, gp, 18
                  or           t3, sp, t1
                  bltu         s0, t5, 1206f
                  blt          a0, ra, 1197f
1197:             bge          s9, s10, 1207f
                  sltu         a5, a3, tp
                  sll          s5, s8, t1
1200:             xor          t2, s4, a5
                  bgeu         s11, t5, 1211f
                  srl          s2, a7, s2
                  ori          a0, s10, 2016
                  lui          a6, 941966
                  addi         s0, a3, -984
1206:             slli         a4, zero, 30
1207:             sltiu        zero, a5, 993
                  slti         s0, s0, -1266
                  and          a2, s5, zero
                  sltiu        s8, s10, 2047
1211:             xor          a6, s1, t5
                  srli         s6, a5, 10
                  bne          t4, t4, 1217f
                  or           a4, a4, s6
                  srli         s11, a2, 21
                  beq          ra, s3, 1228f
1217:             auipc        s11, 64781
                  xori         sp, a4, 80
                  bge          t0, s8, 1237f
                  addi         s11, s9, -1777
                  bne          s1, tp, 1226f
                  bge          zero, s3, 1235f
                  sltiu        a2, a4, 1260
                  sub          t5, a0, zero
                  xori         s8, t6, 1568
1226:             blt          s4, t1, 1234f
                  sll          t6, a1, ra
1228:             slt          s5, t0, t0
                  slti         s3, a2, 436
                  xori         t1, s4, 160
                  lui          a2, 431234
                  sltu         t5, t1, t3
                  ori          s2, s3, -794
1234:             slli         tp, t5, 30
1235:             bne          t2, s8, 1248f
                  beq          s7, sp, 1242f
1237:             auipc        a5, 736752
                  andi         a7, s11, -1844
                  or           s6, a1, s10
                  srai         s0, a0, 24
                  xori         s5, s2, 1324
1242:             bne          a4, t4, 1254f
                  blt          zero, s1, 1261f
                  srli         a7, a5, 29
                  slti         s11, s8, 915
                  srai         s9, s8, 2
                  xor          s7, s3, a3
1248:             or           s2, t5, s10
                  bge          s1, s7, 1261f
                  sra          s11, t3, s6
                  bne          a2, s7, 1268f
                  bgeu         s9, gp, 1263f
                  add          gp, a1, gp
1254:             srli         t6, s7, 22
                  sltu         a2, a4, sp
                  addi         s0, s1, -585
                  sltu         sp, sp, a1
                  srli         s3, s11, 5
                  srl          a4, s9, t4
                  slli         zero, zero, 26
1261:             or           s0, s4, s11
                  srl          a4, sp, t5
1263:             add          a3, tp, a6
                  add          a4, s3, a0
                  sltiu        t2, gp, -1209
                  ori          t6, s10, 1688
                  slt          a1, s1, zero
1268:             bltu         s10, sp, 1286f
                  slti         s0, s11, -892
                  sub          a5, s11, gp
                  xor          a2, zero, s4
                  xor          t5, t2, s1
                  blt          a2, s6, 1275f
                  srl          s4, t5, s7
1275:             sll          s2, t1, ra
                  xori         s9, t3, 73
                  bltu         t6, s6, 1294f
                  andi         s1, s0, 314
                  srai         t6, ra, 9
                  sll          tp, s5, a4
                  addi         tp, s11, 196
                  srli         a5, t0, 11
                  auipc        t1, 167403
                  srai         s8, s4, 17
                  add          s3, s8, gp
1286:             bne          s1, s2, 1287f
1287:             xori         s5, s2, -741
                  nop
                  sltu         a0, s0, s7
                  xor          t5, s8, s1
                  bltu         s3, a0, 1311f
                  bge          t0, s11, 1304f
                  or           s8, a4, s0
1294:             xori         a4, a2, -967
                  slti         s0, a3, -142
                  slti         a2, s3, -862
                  srai         t2, a5, 8
                  ori          a2, sp, -55
                  bltu         s2, t4, 1310f
                  xor          a7, t2, a3
                  beq          a0, s6, 1314f
                  ori          a0, t4, -708
                  bne          a2, a5, 1312f
1304:             srai         a3, s9, 3
                  bge          t0, t4, 1316f
                  beq          s1, a1, 1326f
                  beq          s2, a2, 1313f
                  sub          t5, s1, a2
                  srli         ra, a0, 9
1310:             auipc        t6, 96291
1311:             slt          s4, sp, s0
1312:             lui          s5, 353830
1313:             srai         t3, zero, 14
1314:             bltu         tp, a6, 1333f
                  srai         s1, a6, 0
1316:             add          s5, s3, s7
                  bge          a3, s7, 1328f
                  xori         a0, s9, 1862
                  add          s3, a3, s0
                  slti         s7, a4, -107
                  xor          t3, t2, a6
                  sltiu        t5, t0, 124
                  lui          sp, 656317
                  sra          s9, s4, s0
                  slt          t6, s11, tp
1326:             slt          t1, s9, t0
                  xori         a3, a7, 171
1328:             add          s8, t2, a1
                  srai         tp, ra, 30
                  sra          zero, ra, s1
                  and          zero, s11, gp
                  xori         s9, s8, 679
1333:             lui          s6, 158260
                  beq          t4, t4, 1351f
                  add          t6, t0, tp
                  or           t2, a4, tp
                  sub          a1, s7, t2
                  and          t5, a6, t6
                  slt          a6, t3, a2
                  and          t1, s7, t2
                  sltu         s6, tp, s10
                  or           a6, t6, s4
                  bge          s0, t4, 1362f
                  xor          t2, a4, s8
                  add          s6, t0, s8
                  sltiu        s6, a0, -1676
                  srl          s5, t3, t2
                  xor          tp, ra, s0
                  bgeu         a5, a6, 1362f
                  addi         s11, s3, -1001
1351:             bgeu         s5, s2, 1363f
                  sub          t2, t5, t3
                  sltu         a3, gp, t6
                  slli         a2, a5, 3
                  srai         s2, a4, 2
                  sltu         a5, s11, t0
                  xor          t6, a1, a3
                  bgeu         t4, s10, 1370f
                  addi         zero, zero, -1177
                  bge          t0, s3, 1368f
                  sltu         s6, gp, s6
1362:             xor          s11, t3, a1
1363:             slli         s4, s8, 25
                  add          s5, sp, s11
                  or           s2, a2, s1
                  sll          ra, t2, t1
                  andi         s8, a1, -175
1368:             nop
                  blt          s4, s0, 1380f
1370:             add          a6, s5, s5
                  slt          s2, a3, t6
                  srl          s7, s7, s2
                  lui          zero, 767054
                  beq          s5, s8, 1383f
                  or           t5, t3, s2
                  xor          tp, s7, a4
                  ori          t1, a3, 1834
                  andi         s4, zero, -1653
                  addi         a5, zero, 9 #init loop 0 counter
                  addi         s2, zero, 6 #init loop 0 limit
                  auipc        s6, 507181
                  ori          s9, a2, 1576
                  andi         s7, s2, 995
sub_3_18_0_t:     ori          s7, t0, 751
                  xor          t5, s6, t6
                  addi         a5, a5, -4 #update loop 0 counter
                  sll          sp, t4, a2
                  auipc        s3, 465610
                  or           s5, a6, s8
                  sltu         s5, t2, gp
                  auipc        s6, 594835
                  bgeu         a5, s2, sub_3_18_0_t #branch for loop 0
                  srli         ra, a6, 21
                  lui          t1, 294827
1380:             add          gp, s10, gp
                  sltu         s9, t5, a4
                  or           t5, ra, t0
1383:             srai         zero, zero, 28
                  and          s2, zero, a0
                  bge          a7, a4, 1395f
                  add          a3, t3, s2
                  lui          s4, 690476
                  xori         a1, t3, 1522
                  andi         a0, s1, 927
                  andi         t2, s9, -651
                  or           s1, t5, t2
                  slli         tp, a2, 11
                  srl          s4, t2, s4
                  bne          tp, t1, 1396f
1395:             srl          a7, s0, s9
1396:             ori          a2, zero, 375
                  and          s7, zero, t6
                  srli         sp, s1, 25
                  and          sp, s6, s4
                  and          s7, s5, s5
                  lw           t1, 4(t0)
                  add          a3, t2, t2
                  nop
                  addi         t0, t0, 56
                  slt          s11, s5, a4
1955:             addi x23, x6, 1
1955:             jalr x23, x23, 0
sub_4:            beq          t0, zero, sub_4_stack_p
                  sltu         s11, ra, s9
                  nop
                  sub          a5, t3, t2
sub_4_stack_p:    addi         t0, t0, -32
                  auipc        a7, 673480
                  sra          s5, sp, s9
                  srai         a7, s0, 22
                  sub          tp, s2, a3
                  sw           t1, 4(t0)
                  sub          s4, ra, t2
                  nop
                  or           s1, a6, s3
                  add          t5, s1, t5
                  xori         s5, s1, 340
                  srl          s5, s6, s2
                  slti         a5, a0, 851
                  slti         a7, a5, -1873
                  la           t3, sub_5
                  xori         a4, t3, 1169
                  addi         t3, t3, -593
                  nop
                  add          t1, zero, s8
sub_4_j8:         jalr         t1, t3, 593 #jump sub_4 -> sub_5
                  addi         ra, zero, 0 #init loop 1 counter
                  addi         s6, zero, 14 #init loop 1 limit
sub_4_0_1_t:      nop
                  slt          s3, t2, a4
                  addi         ra, ra, 8 #update loop 1 counter
                  slti         s7, s6, -980
                  addi         s0, zero, 10 #init loop 0 counter
                  addi         s11, zero, 10 #init loop 0 limit
sub_4_0_0_t:      auipc        t5, 509413
                  nop
                  addi         s0, s0, -9 #update loop 0 counter
                  bgeu         s0, s11, sub_4_0_0_t #branch for loop 0
                  and          t2, t1, s0
                  blt          ra, s6, sub_4_0_1_t #branch for loop 1
                  sub          s9, a5, t3
                  lui          a0, 499573
                  xor          s9, s8, s1
                  bltu         a6, s7, 6f
                  nop
                  xori         t3, s10, 736
                  lui          a6, 307074
6:                lui          s9, 226302
                  auipc        t5, 854355
                  srai         s11, s11, 7
                  sra          t2, s4, zero
                  xori         a5, sp, -465
                  nop
                  bgeu         s10, t0, 19f
                  slti         s2, gp, -1724
                  xori         s6, a5, 1706
                  bge          s9, a4, 31f
                  srl          sp, t4, ra
                  beq          t0, s10, 27f
                  auipc        ra, 826696
19:               sltiu        s8, a5, -1686
                  bgeu         s1, a3, 25f
                  bltu         s1, zero, 22f
22:               slli         a2, t4, 9
                  slli         s0, sp, 23
                  srl          s4, s8, t0
25:               srai         s2, tp, 16
                  beq          ra, s3, 34f
27:               bge          t4, s2, 38f
                  addi         a6, s8, -69
                  sub          zero, s1, t5
                  sub          a5, a4, a6
31:               ori          s3, s0, 216
                  lui          s3, 804673
                  xori         a2, s6, -638
34:               andi         s0, a0, 1556
                  addi         s4, s5, -626
                  blt          s1, zero, 48f
                  sll          t6, a6, t4
38:               blt          a5, s8, 41f
                  sltu         s8, a2, t2
                  srl          s4, s3, a3
41:               andi         s2, s4, 1692
                  slti         t5, s10, 1442
                  srli         s3, a5, 27
                  srli         a2, a2, 13
                  srai         s8, a7, 18
                  beq          s9, s10, 48f
                  bltu         tp, gp, 48f
48:               xori         s2, t2, 1469
                  add          gp, t1, s0
                  lw           t1, 4(t0)
                  sub          s3, a6, t5
                  nop
                  slt          s11, a7, a6
                  addi         t0, t0, 32
                  slli         s9, t2, 12
                  sra          sp, t6, a6
                  nop
                  auipc        s5, 146372
                  ori          tp, a3, 562
99:               addi x9, x6, 0
99:               jalr x9, x9, 0
sub_5:            sub          s3, t2, s5
                  andi         a7, s4, 309
                  sub          s2, s11, ra
                  andi         a2, t6, 80
                  slti         tp, sp, -300
                  addi         t0, t0, -60
                  or           a7, t6, s4
                  xor          s0, a6, t6
                  sw           t1, 4(t0)
                  or           zero, a0, a0
                  or           s7, a1, a4
                  sltu         s9, s9, tp
                  nop
                  sra          t5, t1, t3
                  xori         s3, s3, -1552
                  add          zero, t2, a7
                  and          t6, gp, a4
                  sub          a0, ra, t1
                  bgeu         gp, s11, 23f
                  nop
                  nop
                  sub          a4, s3, s5
                  slti         t6, t1, -991
                  bge          t2, s6, 26f
                  xori         a3, a0, 1362
                  ori          s11, sp, -972
                  xori         s7, a7, 38
                  add          a5, a1, s9
                  slt          t6, s10, s7
                  xor          s9, a5, t6
                  blt          zero, s1, 31f
                  ori          a7, t0, -1240
                  or           t3, a2, t2
                  lui          t3, 96774
                  auipc        s1, 47560
23:               slt          a0, a4, t1
                  addi         t6, s5, 63
                  andi         a7, gp, 930
26:               sll          t3, t1, t0
                  srai         tp, s3, 12
                  slti         a0, s11, 1780
                  sltu         tp, s7, gp
                  bltu         a3, tp, 35f
31:               slti         t3, zero, 1424
                  xori         sp, a6, -1035
                  and          s9, t1, s10
                  add          s6, zero, a1
35:               srai         s0, a6, 5
                  sub          a2, zero, t2
                  sll          s1, s8, sp
                  slti         s6, t0, 282
                  lw           t1, 4(t0)
                  srl          t6, s3, sp
                  slti         a7, ra, 2006
                  sll          zero, s6, t6
                  ori          t2, zero, 423
                  addi         t0, t0, 60
                  and          s4, s11, ra
58:               addi x18, x6, 1
58:               jalr x18, x18, 0
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
.word 0x60d586ac, 0x6d81bf8c, 0x2e29ea61, 0x5c707fcb, 0x77cbce09, 0xfa352b06, 0xcd664c82, 0xc3fb9805
.word 0xbf51d4c6, 0xc63c3758, 0xdc56d250, 0x9911ebcb, 0x50d62bbc, 0xe3b29a5c, 0x9110a670, 0xb8dbd159
.word 0x3f76a023, 0x592d19de, 0x05dca851, 0x2783c17c, 0x37c7ce96, 0xdfd90940, 0x38fbca63, 0xca170686
.word 0x58cfd6a5, 0x4a0c05cf, 0xb09ba264, 0x385839e6, 0x81405666, 0x979d9b57, 0x86119c26, 0x5b4f54e4
.word 0x6676fc80, 0x794e2b2e, 0x1fb93f11, 0x67a12f47, 0x0ed9ec62, 0x569054a2, 0xe4d5bb31, 0xb3520955
.word 0xa72e523e, 0x8fe4bb39, 0x2bf9042b, 0xc8a0cb17, 0x6eaa99ce, 0x2a5fac5a, 0x4a5fcf77, 0x58bab5e2
.word 0xce3b1bb6, 0xd7b069c1, 0x78912a33, 0x647967f4, 0x8a31a981, 0x5b4e4add, 0x4a1a2422, 0xb3016582
.word 0x8dbc54de, 0x9f379c51, 0x1dba7e47, 0x6baa1b37, 0x91818d2b, 0x5aaa314b, 0x6c4849b4, 0xf384423a
.word 0xf99131b7, 0x102c2b8a, 0x48f3c506, 0x68ac3d8a, 0x63559fcb, 0x3e1347f0, 0x6ae21855, 0xddd3c871
.word 0xf745f797, 0xe75ba26d, 0xfc3ab3be, 0xfa080bf9, 0xe5059882, 0x9cf364b4, 0x1385c8fd, 0x23531a81
.word 0xbf6fa054, 0xcf65d74b, 0x391a772f, 0x25ae72e7, 0x70fce357, 0x78223e39, 0x290ff0ad, 0xf90401f8
.word 0x6e1e4bc6, 0xfc4ea0e3, 0x173d88c4, 0xce2c7b54, 0x871f6710, 0xfaad2a77, 0x9f5da66b, 0x51526d30
.word 0x094cfed3, 0x35a8a12d, 0xb3a9b552, 0xb21fe9ad, 0x514333d8, 0xf2993ab9, 0x2483a8d2, 0x3142652c
.word 0xf1d46ba5, 0xc4a72ae2, 0xe2f76629, 0xc6e81590, 0x7f25782d, 0x53a0d4bd, 0x5c61d61b, 0x2632728c
.word 0xf56e35ca, 0x62369246, 0xa68e5975, 0xaf64bcf3, 0x8fe7d380, 0x2a6c0bcb, 0x360d5b9f, 0xa2d41123
.word 0x48a89564, 0xb6a5ffcf, 0x23c1d0be, 0x631337e0, 0xd3dadf1e, 0x1e7bd39c, 0x5770baa7, 0xcdb68eab
.word 0x0546bb51, 0xc839bd9c, 0x81bf442f, 0xab28abc4, 0x1b94e32a, 0x7d17379d, 0x6b548e22, 0x099f5fed
.word 0xef44186b, 0x3feba761, 0x05d536b0, 0x11fd07e1, 0xe8303fc8, 0xb15a5a06, 0xd1bc3fa3, 0x27946dc8
.word 0x5a0d3570, 0x1092e414, 0x86368b2e, 0xe6a16abf, 0x3bee5ec5, 0xebdafca2, 0xf858bfef, 0xeb0a9bc3
.word 0xe4a32dee, 0x6925f2e9, 0x7205ca26, 0x17511d61, 0xc76979e6, 0x6d1ccdb1, 0x72dc39d4, 0x7c4001b0
.word 0x67a71214, 0xaf29126f, 0x55d9e1a3, 0xc35f7661, 0x69cbbfe0, 0x2135289d, 0xfdd82599, 0x0ec5bbd0
.word 0x2d677de6, 0xf005088c, 0x6cf4f233, 0x68bd1475, 0x63bccc4f, 0x3f707c03, 0x91534cf5, 0x346d96d1
.word 0x018f8196, 0xe44d8baa, 0x157da770, 0x60eb5f9c, 0x97b97867, 0x6ba9deca, 0xb529e356, 0x12ac1e35
.word 0x4866e001, 0x27014c3d, 0xb3859f0f, 0x7b720ced, 0x25a99d13, 0x6d476ad6, 0xc2534855, 0x56e24c4a
.word 0x7fb10959, 0xada952d6, 0xa35a07c6, 0x3c7b5c0b, 0xf6cf20ab, 0xf332b8e4, 0x8ee7daa5, 0x3a623d56
.word 0xc3008e11, 0x2aa0fb19, 0x4255f0a0, 0xee7ed5c1, 0x48e9c2cb, 0x1d0fe2b4, 0x7f7dd661, 0x00de753e
.word 0xc378bfbd, 0x4ba07b9b, 0x5b684ab0, 0x836566f9, 0x7a7cf4ff, 0x513222b4, 0xb1c873df, 0xa1ae9823
.word 0x2ef582d0, 0x87db4116, 0xe1fa0822, 0x2a318a58, 0x397cbe4a, 0x767c690d, 0x927fe285, 0x52b920cd
.word 0x394eb5e8, 0x888dfc70, 0xe4f0f538, 0xd222b231, 0x8517e125, 0xe1484fd4, 0x730c1b7b, 0x8f5a5ba5
.word 0x580a6316, 0xc98360b7, 0xe6c35338, 0x129a53f3, 0x4622ca12, 0xfe950135, 0xdfecd18b, 0x1a18636b
.word 0x9705ba8c, 0x5b30f28c, 0x35db8eff, 0x77ed3768, 0x97dc1c60, 0x4665cc1f, 0xa6b3ca24, 0x91cd45af
.word 0x9bc810f9, 0xbd30b3da, 0x77d117fe, 0xe9379b19, 0x50789b3c, 0xb167cab6, 0x46d7c2b0, 0xc8d540a4
.word 0xa1e4702e, 0x0cef07a8, 0xad059143, 0x88535e4d, 0xd2497e56, 0x2330f10d, 0x98528056, 0xcad42ad2
.word 0xc61241d5, 0x685fb590, 0xa3a5da5a, 0x49120f8c, 0xaad2bf5d, 0x79cf0fb3, 0xb1d6edf8, 0x8528d12a
.word 0xdf11f36d, 0xf530fd9c, 0x60b3d33e, 0x8a1f8f30, 0x8d029419, 0xb87e4f8d, 0x2cc3bdc8, 0xf7872aba
.word 0xd3d7e0d2, 0xf80776ee, 0x8e1389ad, 0xc7e6933b, 0x7a8dfb75, 0xc43315df, 0x5192756f, 0xee7b702b
.word 0x1f426936, 0x860f280c, 0x1faea6f9, 0x7a025b17, 0x296f9f69, 0xfa364bcd, 0x7740fe24, 0x65e0757f
.word 0x51739b46, 0x07ccbf77, 0x92d0df95, 0xa349afe6, 0xccbbae84, 0x73293e2d, 0xaedc31e7, 0xc58be1f4
.word 0x27672c0d, 0x331cfcb3, 0x0c87440f, 0xe84ec2a5, 0xbb2780f7, 0xe7f9090c, 0xe662557a, 0x76974612
.word 0x61ad7bd4, 0x491d3838, 0x85588a99, 0x1149c13f, 0x83749b2a, 0xac68372d, 0xec2554a6, 0x3f050bd6
.word 0x1fae0e30, 0xeac2d076, 0x2eca6edc, 0x78ea2053, 0xf2ba74fc, 0x1507efe6, 0x4a7a0823, 0x4d686f7a
.word 0xaac254b6, 0x64717234, 0xca9b1a0a, 0x710103b4, 0x51cfad25, 0xa3cc0344, 0xb29f95d1, 0x0fbee0bd
.word 0xb46d34a0, 0xf048c884, 0xfb562ba0, 0x06f7645e, 0xc4c31114, 0x45188e85, 0x91f6f5c1, 0x1de25a83
.word 0xcee8219a, 0x8066930e, 0x70102ebc, 0x22befe58, 0xf2725971, 0x3cdecda7, 0x88e45975, 0xdd6ecb60
.word 0x48d5df00, 0xb1ceedd3, 0xc738d6e8, 0x19f12d28, 0xac9e44af, 0x4aef0ccb, 0x6aa4206b, 0x7e12ae72
.word 0x44e29da8, 0x43a51a39, 0x57db3720, 0x8296c734, 0x1ed9c238, 0x06e0422d, 0x884b9afc, 0xd359572a
.word 0x81408645, 0x47baa2ac, 0x3cadca38, 0x9718b6c6, 0x4bcb4173, 0x4a6821bd, 0x40cd0b8a, 0xf2f64907
.word 0xb654e50b, 0xcd4eeabe, 0x2ff31276, 0xf9d108c6, 0x29cc9224, 0x9405ac02, 0xdd4c5a72, 0x84010877
.word 0x23acf866, 0x05dd6f05, 0x3e8cf2c4, 0xa287ec51, 0xcc79b112, 0xe1f9efe6, 0xc4e20b95, 0x542609fb
.word 0xaf733064, 0x230b1367, 0x7193abe0, 0xaee28a17, 0x8b805171, 0x2480ec71, 0xfde62af6, 0x987d7d44
.word 0x32c5b2e8, 0x77157ca9, 0x3f73d6ee, 0x58b2d698, 0xb949950e, 0x05267329, 0xa6ff1fc5, 0xb2706eb2
.word 0x63ba9fde, 0xcc8cb48f, 0xd0ccd7b4, 0x2cdbf45c, 0xf397d632, 0x15c7f955, 0x5fee932b, 0x08d3ce2c
.word 0x1e1191c6, 0x4675d7b7, 0x60372b66, 0xf16967c3, 0xa27a10e0, 0x21458701, 0x4c59b3d4, 0x7a5b0d46
.word 0x51d3ec64, 0x029a7a52, 0x5dcfcddf, 0x6fa039a0, 0x320df7cf, 0x4083c265, 0xc8267bfe, 0x0330d91d
.word 0xc18e063d, 0xc37949f0, 0xfcbdea6a, 0xddc27826, 0xf4c7182d, 0x859aca80, 0x1dd19a4e, 0x9c468fb2
.word 0xf3e4c419, 0x4f499c8f, 0x04293208, 0xe408f58e, 0xcc65f9c8, 0x486687e0, 0x678976d9, 0x0d5a6993
.word 0x41a05bb6, 0x598fe563, 0x2266992a, 0xf98e89c2, 0x21ed22a9, 0x32a7f620, 0xc25080c1, 0x4844904d
.word 0x6a47aa32, 0x4c66c19b, 0x93d9d7e2, 0x74d5a71d, 0x4b4a6e61, 0xa926bb7a, 0x3d060284, 0xe6c41409
.word 0x0c55b3a2, 0x9e3f2e30, 0xcf7f4069, 0x92d1c282, 0xd05fc592, 0x9f1d407f, 0x8b87b4dd, 0xfb5f3f22
.word 0x28211e8e, 0xbfc0c576, 0x1b323e16, 0x63a56a8b, 0xb90eb48d, 0x02145928, 0x0e6b2e1c, 0x2d065069
.word 0xcb2ec38d, 0xa7008ee2, 0x84b2d737, 0x11c807f0, 0x4c456712, 0x0a5c8df6, 0x0e39d436, 0x20022b7d
.word 0xb4fd3ecc, 0xab0dddc4, 0xe7aaa320, 0x33162995, 0xa93e3814, 0x6e1ab944, 0x71a858d1, 0xd47a5fe3
.word 0x3ab03b83, 0x79743349, 0x7e1e8aab, 0xd40af5d2
.section .region_1,"aw",@progbits;
region_1:
.word 0xb24dd0dc, 0x8a7057be, 0x80cd6edd, 0x913a061f, 0xb3dec1a9, 0x26fdcb99, 0x30e1120b, 0x01ae5be0
.word 0xe413b31a, 0x5950639d, 0x5c17144e, 0x0cbcade5, 0x035d223f, 0xd760f5f1, 0x3735b8da, 0x17e0097a
.word 0x8df74f7d, 0x3fda2b96, 0xf2b2144b, 0x03c0726c, 0x17736a94, 0x26752b8d, 0xdc14310b, 0x3ac27d6d
.word 0x968ce5c3, 0xcfdc3d2f, 0xf645d2d2, 0x14565e72, 0x0a6c6a4c, 0x13136c0f, 0xda77917a, 0x421ba9f1
.word 0xc6e58aaf, 0x9d766249, 0xaa876ea4, 0xa7400fba, 0xc04d75c6, 0xa47585d7, 0xd1fe34a9, 0x30a2461f
.word 0x78cfac0c, 0x30f2d0f5, 0xee091efe, 0x2dbdc893, 0x5b322ad8, 0x182a62e3, 0x3066fc71, 0xe15aa346
.word 0x922910aa, 0xd3d6c87a, 0x062181aa, 0x892cb3b1, 0x0ed873d5, 0x5c0487bb, 0xf4a816ae, 0x351e220b
.word 0xe8fe4421, 0x86950150, 0xbd0587c4, 0xd89d4b70, 0xd2106a2e, 0x93cc16ca, 0x62482981, 0x87b15adc
.word 0x9d6cf589, 0xdb0e3ec5, 0xf0044753, 0xa86e0862, 0x9308ef72, 0x8a83f8d0, 0x291f2589, 0x6b57c163
.word 0x12540c39, 0x1b0a8c5e, 0xe5e25562, 0xd0414caa, 0x0b7fdd9e, 0x490b9806, 0x9d968d8a, 0xbf166821
.word 0x28b5323a, 0x53cfccb6, 0x647e431b, 0x7bb14196, 0x5b6d7acc, 0x3eea4181, 0x7c2d7f82, 0x20f3a4b6
.word 0x0a2d61c8, 0xe4eb4183, 0xc9e3f69a, 0xee0ddebd, 0xbe166d6f, 0x7b0a6278, 0x24eaa511, 0xdd9d3388
.word 0xca82db25, 0x8b584d51, 0x70b2c720, 0x1cbb0731, 0x23511936, 0xaf51ba91, 0x04f7f12d, 0x882bae3c
.word 0x5f7e3239, 0x4acd7977, 0x7b384a1a, 0xa9d3e407, 0x0e1fa6d3, 0x32b6b8e8, 0xcc572c92, 0xdb62447c
.word 0x5cd743cf, 0x6c49692b, 0x9b47eab4, 0x39b42f3a, 0xf4acee6f, 0xc59762c9, 0x5ec4ca1b, 0x193de1a1
.word 0x166834b8, 0x9e8516ab, 0x594ab37b, 0xaecd9f6f, 0xd616553c, 0x2446b1dc, 0xf6857018, 0x57f138d4
.word 0xce4ba77b, 0xd2a85cf1, 0x62ddc410, 0xb735a2ae, 0x3d854f90, 0x602a5dcb, 0x42d2e067, 0x78a15126
.word 0xf3d2984b, 0xabb01754, 0xa098d8e7, 0xeb0572ea, 0xa8a77d1e, 0x2b831b7e, 0x1aca091f, 0x1cb08cab
.word 0xdcbe7b0c, 0x34afa124, 0x2d09f1aa, 0xb931df98, 0x60016241, 0x9ebbe058, 0x3ff25ced, 0x8457681b
.word 0x7cc3c57f, 0x5e924c81, 0x9d827b76, 0x599b95e6, 0x1d5ddab2, 0x6f527ed5, 0xe1942b95, 0x04269982
.word 0xee41ff95, 0xb7bd5404, 0xf0476d70, 0x7e06975c, 0xf66b0432, 0xe693a206, 0x1139a59d, 0xcd0d5416
.word 0xb2cfa258, 0x77ca0e7f, 0xf5979e5a, 0x81e8491d, 0x4bb00379, 0x513a7eae, 0xa84af941, 0xb08fd9fe
.word 0x06e9a956, 0x2d13a454, 0xbf831608, 0xb1d5547d, 0x5f84603f, 0x83f6cb3f, 0x80f447a7, 0xf4d2bba6
.word 0x16893b7d, 0x19964ed6, 0xb2f07694, 0x775db201, 0xedd57ce5, 0x5bbe2d81, 0x3b4a5674, 0xbf47a856
.word 0x28eb2571, 0x46297788, 0x360b3ed3, 0xc5a265b9, 0x99b25569, 0x5a9eb401, 0x465ba9d6, 0x39804d00
.word 0x49c172e4, 0xd0ce3ca9, 0x574cd1ed, 0x2eae9e58, 0xeaba816f, 0x24b42da7, 0x9d3cc48a, 0x91052cb3
.word 0xacdc23fa, 0x06356041, 0x12887f9c, 0xcf8bf8ea, 0x5b4c42b9, 0xef399159, 0x24e0e08f, 0xdf26fe32
.word 0x200c4fb4, 0x3caceaef, 0x4e27a11c, 0xefc21cf0, 0x029f24d8, 0xe5db73b2, 0x07dd5b65, 0x6a2fa8be
.word 0x74bc5ce4, 0x901e641e, 0x6ac27c28, 0x27912fae, 0x1b1d2c37, 0x97ed37ec, 0xae3036b7, 0x08ba00fd
.word 0x47292acd, 0xa2bd8f54, 0xbb205536, 0x0d3c9b11, 0xba09677d, 0x9c964f3a, 0x6e4b4be5, 0x6f3e59d0
.word 0x1de0ad43, 0xb37e50a1, 0x7687054e, 0x31fa68a2, 0x5138cb6c, 0xac57d2a2, 0xf3e17e9e, 0x40c6bcaf
.word 0xfd4e3253, 0xe08e2270, 0x62bd3f2e, 0x4cfd5b68, 0xd718fbce, 0x7582db08, 0x047d51ba, 0x7e4ff2a7
.word 0xf193b619, 0x15418aa3, 0xf2513342, 0x371ef61c, 0x089eaff4, 0x62087e94, 0x48b4a46d, 0x12a0e16a
.word 0x2eb2d3da, 0x86db2a61, 0xba08894b, 0x6b0e3022, 0xf16b1a30, 0x6ba4b52e, 0x0a303623, 0x856f1c71
.word 0x10db7182, 0x534561d4, 0x2386fc5f, 0xb1ee39f0, 0x55aba6f8, 0x11acb15a, 0x76718e66, 0x92bb2627
.word 0x62c93642, 0xd8912f8b, 0x8e6e32be, 0xcdab66cd, 0xd27c0864, 0x843914c9, 0xfdda4401, 0x1b5a7d57
.word 0xeae6c3d8, 0x36ea9d5b, 0x967efeff, 0x50fb6c33, 0x5a387b15, 0xbc948915, 0x825d69f9, 0xc44bd5b0
.word 0xf9b129c2, 0xcf523b27, 0x41326d35, 0x389e067b, 0xd1a1d588, 0x3e89e91e, 0x92acabc3, 0xc96d2103
.word 0x2c1c225d, 0x7d9482e9, 0xb2c4c6f0, 0xf0a7cb71, 0xd3a51e7e, 0x6f7c3d04, 0x203e9b6d, 0xf43e6d4e
.word 0xdac017f1, 0xe57af1f8, 0xb302ad38, 0xb9631734, 0xb6371b16, 0xea852272, 0x6fa34afb, 0x0d8b9874
.word 0x2687e62c, 0xae84f10f, 0xa52f23bb, 0x63275702, 0xf0177a54, 0x26f4b579, 0x268ca944, 0xd22bde94
.word 0x9cd4b1f4, 0x0531b23e, 0x48d79a3d, 0x43519525, 0x6e9bf204, 0xa6c1bb3f, 0x8d8ba8ae, 0x85d44a22
.word 0xfd1b96d6, 0x05cd954a, 0x108235c1, 0x6c7cc43f, 0xb519ff9c, 0xb7f5a3bf, 0x56f9e0a5, 0x649de14c
.word 0xa659f76d, 0xc72b0a31, 0x14a4ce9d, 0xbd036011, 0x9eadcbfd, 0xa3edc656, 0x52e13f20, 0x0e5fe1d8
.word 0x4491c204, 0x2f923645, 0x3393b30b, 0xf4938f5f, 0x23be2e36, 0xf5450778, 0x3abe2306, 0xa00342e6
.word 0x45d4bbfa, 0xd9b265db, 0x54cdb36d, 0xe5da7cb7, 0x36732219, 0xdd5df9a4, 0x5fe92d17, 0x6be3d0e0
.word 0x10b782d1, 0x00659732, 0x48677644, 0x77102a44, 0xe5351b8a, 0xc96dd49d, 0x99610545, 0x71a90e0f
.word 0xab9f685d, 0xd7bfbeb9, 0x9b90a356, 0xd48609cf, 0x5993d4f5, 0xc447b762, 0xaa7b8b3c, 0x04fba064
.word 0x24b0f884, 0x4b5cfd02, 0x1f4dee39, 0xd45f0c9f, 0xb1b8cc89, 0xf2f27c20, 0xd7583a4c, 0x07a73bd9
.word 0x0b434c89, 0x964aa46f, 0x676a4420, 0xd3295b85, 0x797f8224, 0xf916a16c, 0xb9fa26d9, 0xe1fba943
.word 0x8b11c2eb, 0x5d1e88b3, 0x91ae4e5f, 0x5cdbe97e, 0x1616da72, 0x488e744c, 0x8286e179, 0x22ebdc11
.word 0xb74fffd3, 0x3a12a7a1, 0x273ef653, 0x43046060, 0xc6e4ee67, 0x97a5c8df, 0x9567b957, 0x591058fb
.word 0x719dee42, 0xe29d7c61, 0x28a38a86, 0x9e4c4f77, 0xb3a36bf7, 0x018c001e, 0xe59c2546, 0xcbaa0f77
.word 0x79911e66, 0xab403c30, 0x5c5278c8, 0xad89673d, 0x4bbcbd58, 0xf9552a7d, 0xcd7cddbf, 0xac9548bc
.word 0xd97fce1a, 0x72672319, 0xe1ac08e6, 0xe49cfe44, 0xbc6ccd21, 0x12d2d4ba, 0x0e2c9b3d, 0x3031170a
.word 0xb90aa2c6, 0x27029b46, 0xfcf12f75, 0x7e10193f, 0xb2a48cf1, 0x02f33444, 0xda5b2214, 0x0922d784
.word 0x9d0dee84, 0x20165fb7, 0xd1fafeac, 0x30afcdad, 0x3604e02f, 0x003cea0f, 0xd57f3bdf, 0x72674541
.word 0xe487e1b3, 0x77272553, 0x985599af, 0x1ea70267, 0x47239e14, 0xece807a3, 0x6cc3ddc4, 0x8312aab1
.word 0xe88a06bc, 0x001660e2, 0x18036c97, 0xab19f773, 0x4f239c55, 0x2a69e969, 0x46d2d3d2, 0x904797ca
.word 0x53654a6a, 0x2c3af77e, 0xb8ca821d, 0xbb4ef3fd, 0xc2da2218, 0x71dcc2e1, 0x814affea, 0x1fe07b0d
.word 0xc63e15fb, 0xa28e8063, 0x222d660f, 0xc23e46b5, 0xb2df4de0, 0x78c11e28, 0x1518d043, 0x1200d97d
.word 0x9c4e542d, 0x576fec99, 0x557eddfe, 0xaad9c74d, 0x644d8c9c, 0x3ede676e, 0x58fd4e84, 0xf3aa92f8
.word 0x726770f3, 0x0311f962, 0xd4d49cb1, 0x1087cec8
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x29, x5, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x24, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x24, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x24, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x24, x27, ecall_handler
                  li x27, 0x1
                  beq x24, x27, instr_fault_handler
                  li x27, 0x5
                  beq x24, x27, load_fault_handler
                  li x27, 0x7
                  beq x24, x27, store_fault_handler
                  li x27, 0xc
                  beq x24, x27, pt_fault_handler
                  li x27, 0xd
                  beq x24, x27, pt_fault_handler
                  li x27, 0xf
                  beq x24, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
