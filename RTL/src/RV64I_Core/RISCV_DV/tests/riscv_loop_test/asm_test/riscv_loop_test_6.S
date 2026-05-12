.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x25, kernel_stack_end

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
                  li x0, 0xfdd93e28
                  li x1, 0x3
                  li x2, 0xc
                  li x3, 0x0
                  li x4, 0x9
                  li x5, 0xd
                  li x6, 0xfd66d58c
                  li x7, 0xf13d21b3
                  li x8, 0xf9c2881a
                  li x9, 0x80000000
                  li x10, 0xa
                  li x11, 0xdf8a45c9
                  li x12, 0xe
                  li x13, 0xf6a85758
                  li x14, 0x47b130f8
                  li x15, 0xa
                  li x16, 0x0
                  li x17, 0x6
                  li x18, 0x3
                  li x19, 0xa9668358
                  li x20, 0x80000000
                  li x21, 0x5
                  li x22, 0x80000000
                  li x23, 0xf20271a5
                  li x24, 0x8a813665
                  li x26, 0x8b5a8051
                  li x27, 0x1
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x31, 0x80000000
                  la x30, user_stack_end
main:             srli         s0, s2, 18
                  la           a0, sub_1
                  ori          s4, a3, -447
                  addi         a0, a0, 89
                  nop
                  srai         a1, t6, 15
                  srli         sp, a0, 5
main_j2:          jalr         s0, a0, -89 #jump main -> sub_1
                  addi         s0, zero, 7 #init loop 1 counter
                  sub          s5, a3, s1
                  addi         a6, zero, -3 #init loop 1 limit
                  nop
main_1_1_t:       addi         a7, a0, -1855
                  slt          s1, s5, s10
                  addi         t4, a3, 1068
                  addi         s0, s0, -2 #update loop 1 counter
                  addi         s3, zero, 10 #init loop 0 counter
                  lui          sp, 1036881
                  srai         s11, s11, 16
                  addi         ra, zero, 10 #init loop 0 limit
                  sll          s1, t3, s9
                  lui          a2, 234565
main_1_0_t:       slt          t1, tp, a7
                  xor          t1, t0, t1
                  andi         t6, s6, 1871
                  sra          a5, t4, s9
                  addi         s3, s3, -8 #update loop 0 counter
                  addi         s11, s9, 260
                  bgeu         s3, ra, main_1_0_t #branch for loop 0
                  slli         s10, t5, 6
                  bne          s0, a6, main_1_1_t #branch for loop 1
                  lui          s10, 33362
                  addi         a2, zero, -1 #init loop 0 counter
                  auipc        s4, 878553
                  and          s0, t4, t5
                  andi         t0, a5, 1223
                  sll          sp, t3, s10
                  slt          s0, a4, sp
                  addi         t1, tp, -1173
                  nop
                  nop
                  addi         gp, s4, 1125
                  andi         a0, t6, -310
                  sra          a4, a0, a7
                  addi         s11, zero, 9 #init loop 0 limit
                  xor          t1, s10, s1
                  slti         s1, t5, -1245
                  sra          t6, s2, t3
                  slti         a6, gp, -1726
                  andi         a0, a4, 37
main_6_0_t:       sltiu        t0, sp, -727
                  add          s8, s8, s4
                  addi         a2, a2, 7 #update loop 0 counter
                  slli         t2, a0, 16
                  sra          tp, a3, a0
                  bltu         a2, s11, main_6_0_t #branch for loop 0
                  or           a7, gp, ra
                  addi         t6, zero, 1 #init loop 1 counter
                  srl          t1, a4, t4
                  sra          a4, tp, s1
                  srai         sp, s1, 4
                  auipc        t2, 445690
                  addi         a0, zero, 20 #init loop 1 limit
main_5_1_t:       nop
                  addi         t6, t6, 7 #update loop 1 counter
                  sltiu        a7, s11, -778
                  slti         a5, s2, -1128
                  addi         a6, zero, 10 #init loop 0 counter
                  sltiu        s11, gp, 862
                  addi         s4, zero, 10 #init loop 0 limit
main_5_0_t:       or           s1, a7, t4
                  add          s3, t2, s7
                  srl          s11, a1, sp
                  srai         gp, t0, 29
                  addi         a6, a6, -8 #update loop 0 counter
                  bgeu         a6, s4, main_5_0_t #branch for loop 0
                  sub          t3, sp, t5
                  blt          t6, a0, main_5_1_t #branch for loop 1
                  lui          t0, 972832
                  addi         s8, zero, 3 #init loop 1 counter
                  addi         a3, zero, 3 #init loop 1 limit
                  or           a2, a0, s4
                  sll          t0, s0, s5
main_2_1_t:       add          a4, ra, s10
                  slt          tp, t2, a0
                  addi         s8, s8, -1 #update loop 1 counter
                  addi         t4, zero, 9 #init loop 0 counter
                  addi         t1, zero, 14 #init loop 0 limit
                  addi         s3, s6, -429
main_2_0_t:       or           s6, t2, s10
                  addi         t4, t4, 6 #update loop 0 counter
                  srli         a0, a0, 26
                  blt          t4, t1, main_2_0_t #branch for loop 0
                  bgeu         s8, a3, main_2_1_t #branch for loop 1
                  ori          s1, s1, 1713
                  addi         tp, zero, 9 #init loop 1 counter
                  sltiu        t2, s2, -518
                  ori          a3, t0, -1223
                  addi         s7, zero, -13 #init loop 1 limit
main_4_1_t:       auipc        a7, 973814
                  slti         s8, ra, 1267
                  addi         tp, tp, -1 #update loop 1 counter
                  ori          t6, t0, -447
                  sltu         t6, t4, s1
                  andi         s8, s11, 1963
                  addi         s0, zero, -2 #init loop 0 counter
                  sltiu        s8, zero, 1118
                  addi         s4, zero, 18 #init loop 0 limit
                  xor          sp, a2, s6
main_4_0_t:       ori          a5, s2, 471
                  addi         s0, s0, 7 #update loop 0 counter
                  lui          t6, 271519
                  bltu         s0, s4, main_4_0_t #branch for loop 0
                  sltu         t4, t5, t3
                  bge          tp, s7, main_4_1_t #branch for loop 1
                  sltiu        a5, t1, 1343
                  addi         s0, zero, 0 #init loop 1 counter
                  sra          a0, s8, t4
                  addi         gp, zero, 12 #init loop 1 limit
                  sra          a0, s10, s5
                  slti         a6, s1, -13
                  sra          a6, t6, t2
                  sltu         s3, tp, t6
main_7_1_t:       slti         t6, s1, -1389
                  slti         t4, t3, -1023
                  addi         s0, s0, 3 #update loop 1 counter
                  auipc        t4, 721432
                  addi         s10, zero, 8 #init loop 0 counter
                  auipc        t4, 765871
                  sra          t2, s6, gp
                  srli         tp, t5, 28
                  sll          s3, s4, t2
                  addi         s4, zero, 19 #init loop 0 limit
                  sll          tp, a2, a7
main_7_0_t:       lui          t3, 87388
                  auipc        a0, 703133
                  addi         s10, s10, 3 #update loop 0 counter
                  bltu         s10, s4, main_7_0_t #branch for loop 0
                  andi         t0, t0, -654
                  beq          s0, gp, main_7_1_t #branch for loop 1
                  sltiu        a5, s8, -1420
                  addi         t2, zero, 2 #init loop 0 counter
                  addi         a3, zero, 5 #init loop 0 limit
main_8_0_t:       sltiu        ra, a2, 565
                  addi         t2, t2, 1 #update loop 0 counter
                  bltu         t2, a3, main_8_0_t #branch for loop 0
                  lui          a6, 669037
                  addi         a7, zero, 5 #init loop 0 counter
                  slli         s4, s11, 15
                  andi         t0, a5, 194
                  addi         tp, s2, -33
                  sll          a6, s4, t4
                  sltiu        t1, t1, 852
                  addi         s0, zero, 1 #init loop 0 limit
                  sltu         s6, s1, s0
main_3_0_t:       xor          s6, t0, a2
                  srl          t6, t4, t1
                  slti         t4, s3, 77
                  sub          a6, s4, t1
                  srai         s3, s5, 20
                  addi         a7, a7, -6 #update loop 0 counter
                  addi         s1, t3, 237
                  srai         t3, s11, 16
                  sll          t6, a0, a5
                  srl          s10, gp, a5
                  bge          a7, s0, main_3_0_t #branch for loop 0
                  ori          s11, s3, 253
                  sra          s7, s9, s10
                  slt          t3, s10, s5
                  slli         s4, s2, 14
                  slli         a6, t5, 12
                  sltu         a4, s0, a7
                  srai         a0, s6, 0
                  slt          t1, s2, t1
                  or           a4, s4, t1
                  nop
                  slt          s4, a2, s11
                  sltiu        a0, s11, 1986
                  lui          a2, 87923
                  beq          t4, a1, 20f
                  sltu         t6, sp, s7
                  slli         a5, t3, 6
                  slti         s0, a5, -239
                  bltu         a2, t6, 34f
                  sltu         t0, t4, ra
                  slti         t0, t1, 675
                  sra          s11, s10, ra
20:               sltiu        gp, tp, -695
                  and          t1, a2, a1
                  nop
                  sltiu        s6, s10, 1503
                  sra          s10, s1, s6
                  auipc        t0, 245001
                  slti         s4, t6, 1555
                  xori         t1, t4, -434
                  lui          t4, 690590
                  addi         tp, s2, -1054
                  sub          t0, s9, s5
                  sra          s7, t5, zero
                  sltu         s7, ra, t4
                  srli         a5, t5, 16
34:               bne          a6, s11, 37f
                  srai         s4, a4, 31
                  xor          a7, t4, s1
37:               srai         a5, t6, 2
                  lui          a6, 341052
                  sra          a6, s10, s7
                  lui          t2, 242277
                  nop
                  beq          a4, s0, 61f
                  sub          a2, s11, s5
                  blt          t2, sp, 55f
                  sll          gp, ra, s9
                  and          t0, t3, a3
                  slti         s4, t2, -942
                  bge          s8, s5, 51f
                  ori          zero, s9, -1728
                  sll          s7, s10, t1
51:               sra          s5, gp, s4
                  or           a5, gp, s9
                  sra          a7, s4, tp
                  xori         s11, s3, -1808
55:               or           a0, a4, zero
                  ori          t1, a5, 52
                  srai         s10, s6, 3
                  add          t2, t5, s10
                  or           gp, t4, s3
                  addi         s3, a2, -1902
                  la           s8, sub_3
                  srli         sp, ra, 20
                  andi         s1, t4, -1928
                  sra          a3, t2, a7
                  addi         s8, s8, 368
                  sll          s10, s5, t1
main_j4:          jalr         s0, s8, -368 #jump main -> sub_3
                  lui          a7, 326941
                  blt          t3, a0, 72f
61:               blt          a3, t0, 81f
                  sra          t6, s4, s9
                  beq          t2, s10, 66f
                  xori         s10, a7, 76
                  sltu         tp, t3, zero
66:               sltu         t2, gp, s7
                  sltu         t1, t2, s3
                  srl          s8, t2, ra
                  srai         s0, s0, 5
                  and          a0, sp, s0
                  slli         s5, a7, 14
72:               add          zero, t4, t2
                  bne          a4, ra, 84f
                  srl          t1, a5, t2
                  slli         t0, t6, 0
                  xori         t6, s9, 5
                  lui          s5, 1005634
                  xor          t4, tp, t5
                  bgeu         s3, gp, 82f
                  ori          a6, a6, 1694
81:               slti         a6, s3, 450
82:               lui          t6, 827342
                  xor          t1, ra, s2
84:               srl          t1, ra, s2
                  slt          s4, t4, zero
                  bgeu         s11, s3, 89f
                  sub          s4, s11, zero
                  slti         ra, t6, -1972
89:               blt          s4, t0, 93f
                  blt          a7, tp, 104f
                  la           tp, sub_2
                  xori         s11, a6, -441
                  auipc        s0, 663487
                  addi         s5, t6, 735
                  srli         t1, zero, 15
                  addi         tp, tp, -607
                  srai         gp, s3, 11
                  auipc        a7, 991923
                  and          t6, a4, a6
                  slt          s5, a6, zero
                  xor          s10, s7, t4
main_j3:          jalr         s0, tp, 608 #jump main -> sub_2
                  sltu         t4, s3, s5
                  addi         t2, s6, -293
93:               beq          s11, t5, 94f
94:               bgeu         a7, a5, 113f
                  sltiu        t3, a7, -1929
                  beq          s9, a6, 102f
                  add          t1, s3, a3
                  xori         t2, t4, 637
                  xori         sp, tp, -290
                  addi         tp, t0, 1651
                  auipc        sp, 997129
102:              sltu         t1, gp, a6
                  bne          a4, a1, 122f
104:              sra          sp, s11, s0
                  andi         s0, s5, -611
                  sra          t4, s0, s7
                  or           s4, s4, t0
                  srai         s3, t6, 11
                  addi         s1, t1, 1101
                  slli         a0, s0, 15
                  sltiu        t0, sp, -1069
                  addi         a2, a3, -669
113:              bltu         s2, s4, 117f
                  andi         s10, a0, -1426
                  slti         s1, s11, -502
                  xori         a5, s3, 2034
117:              slli         tp, s4, 22
                  bltu         s7, tp, 128f
                  srai         s7, t5, 30
                  sltiu        s10, t4, 1200
                  sub          s1, t0, a3
122:              bgeu         s8, ra, 133f
                  srai         t3, s2, 9
                  auipc        s10, 394770
                  add          a5, s8, s11
                  sra          a7, a0, tp
                  ori          s6, t6, -1734
128:              ori          zero, s9, -478
                  xori         a7, a4, 1137
                  bltu         sp, s1, 146f
                  ori          t4, ra, 321
                  slli         t2, t5, 7
133:              blt          a1, s3, 153f
                  slti         t3, s4, 2044
                  blt          s5, t1, 136f
136:              srai         t1, a3, 10
                  or           tp, a6, a2
                  bgeu         a4, s7, 145f
                  auipc        gp, 285748
                  andi         t2, ra, -1264
                  sll          s0, s3, s1
                  bgeu         gp, t4, 149f
                  sltu         gp, s10, t3
                  sll          s8, a1, zero
145:              slt          s0, a5, s4
146:              bltu         s6, s8, 148f
                  bltu         a4, s5, 158f
148:              bge          s0, s5, 166f
149:              slli         t2, s5, 12
                  blt          s3, s8, 156f
                  add          s10, t6, t3
                  srl          ra, s6, a7
153:              andi         s10, t1, 1132
                  nop
                  lui          t3, 642044
156:              add          t6, tp, s3
                  sub          s8, s1, a1
158:              bgeu         zero, s0, 164f
                  sll          s7, t6, a6
                  andi         s3, s3, -113
                  addi         s6, tp, 0
                  add          s8, ra, s8
                  addi         gp, a4, -1572
164:              bge          s1, sp, 167f
                  xori         s4, s8, -300
166:              sub          s0, s3, t5
167:              sll          zero, s11, a4
                  bltu         s3, s4, 176f
                  bge          t1, s11, 189f
                  bne          t1, s5, 181f
                  xori         t3, s11, -135
                  bge          a0, t5, 191f
                  lui          t4, 389385
                  sra          s1, s4, a1
                  addi         s1, s2, -1113
176:              auipc        s3, 696339
                  srai         tp, a1, 27
                  andi         a7, s9, -999
                  ori          t2, s8, 141
                  sltu         s7, s4, t6
181:              lui          a0, 76931
                  sltu         s1, a4, s8
                  slt          sp, s6, a5
                  beq          t5, t4, 190f
                  sltiu        s8, s2, 390
                  beq          a1, a4, 200f
                  and          tp, tp, s3
                  or           t2, tp, s11
189:              srl          a0, a1, s9
190:              add          s11, t2, s8
191:              addi         t0, a5, -383
                  la           s10, sub_4
                  sltu         t2, s3, s1
                  srli         s4, t3, 18
                  addi         s10, s10, -867
                  addi         t6, s7, 3
                  xori         t2, a4, 132
                  sll          s0, t4, s0
                  addi         a6, tp, -1690
                  xor          s3, s5, s9
                  ori          sp, a2, -1141
main_j1:          jalr         s0, s10, 868 #jump main -> sub_4
                  or           ra, a2, a6
                  addi         a5, zero, -9 #init loop 1 counter
                  addi         a7, zero, -13 #init loop 1 limit
                  or           s6, t2, t3
main_0_1_t:       ori          s3, a4, -1795
                  addi         a5, a5, -3 #update loop 1 counter
                  addi         a0, zero, 8 #init loop 0 counter
                  addi         t2, zero, 8 #init loop 0 limit
main_0_0_t:       andi         t4, zero, -178
                  addi         a0, a0, -5 #update loop 0 counter
                  bgeu         a0, t2, main_0_0_t #branch for loop 0
                  bge          a5, a7, main_0_1_t #branch for loop 1
                  srli         ra, t1, 9
                  sra          sp, a7, t5
                  slt          t4, s4, a4
                  nop
                  sltu         s11, s3, zero
                  lui          a6, 958594
                  sra          s11, t6, s2
                  xori         s0, s9, -1688
200:              slti         zero, a7, 1281
                  bge          gp, a0, 221f
                  srl          t1, a0, s10
                  sltiu        a3, t5, 1703
                  or           s4, s8, t2
                  nop
                  beq          t2, s8, 225f
                  or           s1, zero, s1
                  andi         t1, s0, -874
                  beq          s0, t0, 221f
                  srai         t1, a1, 10
                  add          sp, ra, a4
                  auipc        s11, 876910
                  bltu         s6, t5, 214f
214:              nop
                  lui          t1, 556879
                  lui          s4, 156569
                  ori          t3, s2, 1104
                  sll          t4, tp, gp
                  srl          a1, s8, s4
                  nop
221:              bgeu         s2, a3, 224f
                  bgeu         s1, t5, 233f
                  slt          s11, t3, t3
224:              sra          s11, t1, s11
225:              sll          a6, t0, tp
                  beq          t4, s7, 233f
                  sra          t4, s8, t0
                  or           a3, a6, s7
                  bltu         s6, t2, 233f
                  bge          t4, s10, 233f
                  slli         a1, t2, 17
                  nop
233:              lui          t2, 774774
                  bge          t5, t5, 245f
                  slti         t3, t0, 1697
                  bne          a3, s8, 252f
                  slt          s5, tp, s3
                  bgeu         s0, s5, 257f
                  bge          s1, a5, 241f
                  srl          s0, a4, s7
241:              sll          s5, a3, t5
                  sltu         a5, a1, s2
                  ori          a7, s7, -1183
                  bge          s3, s3, 248f
245:              and          t2, a1, t2
                  slli         s1, s9, 27
                  auipc        s8, 859945
248:              bne          t1, s6, 266f
                  ori          s1, a6, 1827
                  sltu         a4, a1, s6
                  slt          t2, a1, a4
252:              or           a3, t1, a6
                  srl          sp, a2, ra
                  nop
                  bge          s11, t4, 273f
                  add          s5, s0, s7
257:              and          t4, s11, a2
                  and          t0, a7, s5
                  srl          a5, a3, t5
                  andi         a4, s3, -1141
                  srl          s8, s0, a5
                  slli         s1, t0, 1
                  lui          t3, 586932
                  addi         a0, s7, -1109
                  xor          a7, s11, s5
266:              bgeu         s0, tp, 273f
                  auipc        a0, 99128
                  blt          s5, s7, 271f
                  sll          t1, ra, sp
                  auipc        t0, 86125
271:              slli         a3, a6, 27
                  sll          zero, a6, t4
273:              bgeu         t4, a7, 284f
                  lui          a1, 708746
                  or           a7, s10, a4
                  slli         s5, s11, 14
                  bltu         a2, t6, 287f
                  andi         s0, sp, -1781
                  slli         ra, s8, 15
                  bgeu         s10, t2, 281f
281:              blt          s9, s8, 284f
                  srli         a2, s7, 5
                  andi         s8, t0, 1475
284:              sltiu        s0, a5, 1645
                  ori          t0, a4, 1805
                  slt          t2, t6, s3
287:              bltu         s5, s2, 288f
288:              srl          s3, sp, s3
                  nop
                  ori          s6, gp, 1100
                  sra          ra, s7, a6
                  srl          a3, ra, sp
                  srli         s3, s8, 5
                  sll          sp, gp, s6
                  srai         t4, s6, 11
                  bne          tp, zero, 300f
                  srai         s4, s0, 1
                  or           t4, s7, s10
                  xor          a1, s9, a4
300:              addi         t4, s7, -338
                  sub          s11, s0, s1
                  lui          a6, 196811
                  nop
                  bgeu         a0, gp, 322f
                  srli         s6, a4, 10
                  srai         s6, s0, 0
                  sltu         a7, s7, s7
                  slti         sp, s3, -1672
                  sltu         s1, s8, t2
                  ori          t1, tp, -1020
                  beq          s4, a2, 314f
                  bgeu         s2, a0, 331f
                  ori          t6, t1, -732
314:              bge          a0, t2, 325f
                  add          s0, gp, s6
                  nop
                  nop
                  bltu         s4, s9, 329f
                  addi         s3, zero, -1560
                  and          a6, a5, s5
                  andi         t6, s8, -883
322:              addi         a3, a2, 2013
                  bge          zero, a6, 334f
                  and          s0, s6, t5
325:              xor          t1, a2, a6
                  or           s0, a3, t4
                  add          sp, t2, s11
                  bge          gp, t6, 331f
329:              srai         t1, s7, 31
                  blt          t6, s0, 346f
331:              slti         s8, ra, 1037
                  slti         zero, a0, 700
                  slli         a6, s6, 15
334:              or           a0, t0, s2
                  xori         s4, gp, 1081
                  blt          a2, a4, 355f
                  andi         s5, s1, 1907
                  nop
                  sra          s1, a2, tp
                  bge          s8, t6, 346f
                  nop
                  bgeu         s9, t3, 354f
                  bgeu         t0, s3, 351f
                  lui          zero, 901117
                  or           s0, gp, a5
346:              andi         a3, s4, -816
                  or           s4, tp, sp
                  nop
                  sub          s0, t5, a2
                  sra          ra, a3, t4
351:              sll          s8, s0, s3
                  blt          s6, gp, 355f
                  and          s1, s5, s5
354:              srli         ra, t5, 21
355:              bge          t3, a7, 358f
                  add          s10, s6, s4
                  or           s8, t3, a4
358:              lui          tp, 765793
                  bltu         t2, a3, 360f
360:              sltiu        t3, s7, 1983
                  slli         a5, t6, 17
                  sll          a4, t1, t6
                  xor          a0, s9, t6
                  bne          s7, t1, 383f
                  sub          a2, zero, gp
                  or           a6, s6, t0
                  sra          s11, s8, gp
                  nop
                  nop
                  or           a0, s2, t6
                  xori         zero, a7, -863
                  bne          t5, s9, 382f
                  srl          s11, s11, s4
                  or           t1, s11, t5
                  and          s3, s4, a4
                  sra          s8, a3, s7
                  bge          gp, sp, 397f
                  nop
                  slt          t0, s1, s3
                  lui          s1, 71251
                  srl          t2, s6, t2
382:              slt          s11, s2, a3
383:              bge          sp, s0, 386f
                  bgeu         a1, s0, 391f
                  nop
386:              and          ra, s4, s6
                  slt          s11, t6, t5
                  xor          sp, sp, t5
                  sll          s6, s6, s11
                  sra          a4, t0, a3
391:              slti         a2, t1, -1671
                  addi         zero, a5, 1272
                  slli         gp, s3, 22
                  add          zero, s3, t4
                  sll          s4, t3, gp
                  srai         s8, s3, 23
397:              or           a4, s4, s4
                  andi         t4, gp, 359
                  slli         a7, a3, 1
                  blt          s5, s4, 402f
                  ori          s5, sp, -230
402:              slt          tp, s1, sp
                  xor          t0, a2, a6
                  srl          a6, zero, s10
                  andi         a6, sp, 960
                  sub          a7, a4, ra
                  xori         ra, t5, -627
                  sltiu        ra, zero, -1209
                  sra          t3, gp, a2
                  bne          t2, a4, 417f
                  xori         a5, a1, 1328
                  auipc        a5, 105671
                  xor          s11, zero, t3
                  slti         a5, a5, -1980
                  add          a3, s0, s0
                  add          t6, sp, t4
417:              xori         t2, sp, 851
                  sra          t3, t1, zero
                  slt          s10, a6, s2
                  sltiu        t2, t1, -248
                  sltu         t4, s8, s2
                  slli         s7, a0, 2
                  srli         t1, s3, 17
                  andi         a4, a6, 373
                  sltu         zero, s3, t1
                  sra          ra, a5, a7
                  slt          a2, a3, a4
                  auipc        a7, 598253
                  sltu         a4, s1, s1
                  bltu         a4, gp, 441f
                  xori         zero, s7, -44
                  sltiu        t1, a5, -1187
                  sll          s8, s0, zero
                  bltu         ra, s5, 452f
                  slti         s5, a5, 609
                  addi         s1, a7, 1059
                  sub          s6, gp, tp
                  bge          t5, gp, 458f
                  sltu         ra, s3, tp
                  bgeu         a3, a7, 446f
441:              sll          s1, s0, s10
                  and          zero, sp, s1
                  and          s4, a4, s3
                  sub          s3, a7, s4
                  and          s11, a1, a0
446:              sll          t3, s5, s6
                  blt          s11, a2, 451f
                  slli         a7, a7, 26
                  bne          t2, s11, 463f
                  slt          gp, t2, a4
451:              bgeu         s5, a3, 454f
452:              slli         a6, a6, 30
                  ori          s6, s5, 363
454:              blt          a7, sp, 455f
455:              andi         s6, tp, -756
                  sll          t1, gp, t0
                  xor          t4, zero, tp
458:              bgeu         a2, t6, 459f
459:              bltu         s4, s0, 464f
                  add          t4, t4, t4
                  xor          t4, t6, t2
                  xori         s3, tp, 1253
463:              bgeu         s10, s2, 464f
464:              slti         t1, t3, -1325
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            xori         s4, sp, -803
                  addi         t5, t5, -20
                  slti         a2, a1, 1379
                  sw           s0, 4(t5)
                  srai         a5, a3, 18
                  addi         a5, a6, -740
                  auipc        zero, 152696
                  sltu         s1, t0, s1
                  nop
                  auipc        s3, 705424
                  srai         zero, s8, 19
                  xor          s8, tp, sp
                  bgeu         ra, a6, sub_2_j5 #branch to jump instr
                  slli         zero, s9, 28
sub_2_j5:         jal          s0, sub_5 #jump sub_2 -> sub_5
                  addi         t6, zero, 9 #init loop 1 counter
                  addi         s10, zero, 8 #init loop 1 limit
sub_2_12_1_t:     xor          s0, t3, gp
                  addi         t6, t6, -7 #update loop 1 counter
                  addi         s3, zero, -5 #init loop 0 counter
                  addi         a4, zero, -7 #init loop 0 limit
sub_2_12_0_t:     sltiu        zero, ra, -1225
                  slli         a1, t6, 5
                  addi         s3, s3, -5 #update loop 0 counter
                  auipc        a1, 111474
                  bge          s3, a4, sub_2_12_0_t #branch for loop 0
                  bge          t6, s10, sub_2_12_1_t #branch for loop 1
                  slli         s6, s1, 15
                  addi         a3, zero, -6 #init loop 0 counter
                  srai         t0, t6, 22
                  sltiu        s0, gp, -1245
                  or           s6, s5, s2
                  addi         t3, s1, 1419
                  addi         a7, zero, 13 #init loop 0 limit
                  and          s7, t6, a2
                  xor          s6, s5, t4
sub_2_11_0_t:     add          gp, t5, a5
                  srl          s7, s4, s9
                  xori         tp, a2, 1407
                  addi         a3, a3, 10 #update loop 0 counter
                  sra          s10, t2, tp
                  sltu         s1, tp, a2
                  and          t1, t2, t0
                  sub          sp, ra, s4
                  sltiu        s1, zero, -251
                  lui          s5, 1033995
                  sra          s0, t1, zero
                  or           a4, sp, ra
                  slli         a2, s11, 17
                  or           a5, s8, t2
                  bltu         a3, a7, sub_2_11_0_t #branch for loop 0
                  srli         t3, a4, 16
                  addi         a6, zero, 8 #init loop 1 counter
                  addi         t0, zero, 9 #init loop 1 limit
                  xor          t6, a6, t2
                  nop
                  sltiu        s4, s4, -1501
sub_2_6_1_t:      addi         s8, t1, -1814
                  sra          a1, t6, s9
                  xori         t6, t1, -652
                  or           tp, s7, a3
                  sltiu        s7, zero, -1308
                  addi         a6, a6, 2 #update loop 1 counter
                  srli         a3, zero, 1
                  ori          s5, a5, -23
                  and          t3, sp, a2
                  nop
                  addi         a0, zero, -5 #init loop 0 counter
                  addi         s0, zero, 16 #init loop 0 limit
                  xor          sp, ra, s0
sub_2_6_0_t:      sltu         s7, a5, s3
                  sltiu        t4, t3, 1656
                  addi         s6, a2, -1478
                  addi         a0, a0, 7 #update loop 0 counter
                  or           zero, tp, s0
                  beq          a0, s0, sub_2_6_0_t #branch for loop 0
                  xori         t4, a7, -1304
                  xor          s5, a0, s9
                  blt          a6, t0, sub_2_6_1_t #branch for loop 1
                  slti         s1, s1, -1628
                  addi         t4, zero, -5 #init loop 1 counter
                  andi         ra, ra, -1595
                  addi         t6, zero, 15 #init loop 1 limit
                  slti         s5, s7, 140
sub_2_3_1_t:      ori          t3, s11, -2007
                  addi         t4, t4, 4 #update loop 1 counter
                  srli         s5, a6, 27
                  nop
                  addi         a1, zero, -2 #init loop 0 counter
                  sll          a3, a3, a3
                  addi         t1, zero, -2 #init loop 0 limit
sub_2_3_0_t:      xor          s0, a1, t4
                  xor          gp, a1, s9
                  addi         a1, a1, -6 #update loop 0 counter
                  bge          a1, t1, sub_2_3_0_t #branch for loop 0
                  sra          s3, s6, t6
                  and          ra, s0, a0
                  nop
                  ori          s0, t1, -62
                  srl          s1, a6, zero
                  bltu         t4, t6, sub_2_3_1_t #branch for loop 1
                  addi         s6, s8, -1269
                  addi         s3, zero, 7 #init loop 0 counter
                  xor          t1, t4, s4
                  srli         a4, ra, 17
                  srli         a5, a4, 15
                  addi         gp, zero, 18 #init loop 0 limit
                  srli         s5, s3, 6
sub_2_2_0_t:      lui          tp, 142292
                  sltu         a6, s10, s8
                  xor          s4, t3, t0
                  andi         sp, sp, 1878
                  addi         s3, s3, 3 #update loop 0 counter
                  blt          s3, gp, sub_2_2_0_t #branch for loop 0
                  sltiu        a5, s7, -66
                  addi         a3, zero, -8 #init loop 0 counter
                  srli         t2, tp, 8
                  slli         s1, s0, 3
                  slt          t1, gp, ra
                  nop
                  sub          s11, t2, t4
                  slli         t2, a7, 25
                  sltu         a6, a1, t0
                  srli         t1, ra, 18
                  slli         a2, a3, 18
                  auipc        a0, 425727
                  slli         s8, s11, 9
                  sub          a0, t2, s1
                  slt          t3, a5, t2
                  xor          a7, t0, a7
                  addi         gp, zero, -18 #init loop 0 limit
                  xori         s1, s11, 237
                  xor          a7, a6, s5
                  lui          s7, 451330
sub_2_8_0_t:      sub          s8, t6, s5
                  sltiu        s7, s11, -1736
                  addi         a3, a3, -9 #update loop 0 counter
                  sra          zero, s4, zero
                  slt          tp, t2, a2
                  xori         tp, a5, -1778
                  sltiu        a5, s11, -143
                  bge          a3, gp, sub_2_8_0_t #branch for loop 0
                  addi         t2, s9, 809
                  addi         a1, zero, -5 #init loop 1 counter
                  xor          s3, s6, s7
                  xor          s3, s7, a7
                  and          s5, s8, ra
                  addi         tp, zero, 8 #init loop 1 limit
                  slt          s10, s3, gp
                  srli         s5, t2, 26
sub_2_9_1_t:      sltu         s1, tp, t2
                  xori         a0, s7, 1325
                  addi         a1, a1, 2 #update loop 1 counter
                  sra          s1, s1, zero
                  srl          a2, t3, a6
                  addi         t1, zero, 6 #init loop 0 counter
                  srli         a4, sp, 25
                  addi         t0, zero, 18 #init loop 0 limit
sub_2_9_0_t:      andi         a2, s4, -241
                  sltu         s11, t2, s9
                  sltiu        sp, t1, -520
                  addi         t1, t1, 3 #update loop 0 counter
                  or           s7, s5, s5
                  beq          t1, t0, sub_2_9_0_t #branch for loop 0
                  andi         ra, tp, 272
                  ori          a3, s0, 1426
                  ori          s3, a6, 1422
                  blt          a1, tp, sub_2_9_1_t #branch for loop 1
                  auipc        t6, 298370
                  addi         t4, zero, 2 #init loop 0 counter
                  srl          a4, a3, a4
                  sub          zero, tp, sp
                  sub          t6, sp, a0
                  andi         s5, gp, 671
                  nop
                  andi         sp, a5, 1327
                  lui          gp, 854314
                  addi         s0, zero, 20 #init loop 0 limit
                  slti         a3, a2, -413
                  addi         s5, a2, -1666
                  auipc        s1, 793473
                  srli         s11, a7, 9
                  sltiu        s1, a5, -1360
                  add          s11, s0, a0
                  sltiu        t6, t3, -595
                  xor          s8, t0, s2
sub_2_10_0_t:     nop
                  slt          s1, s4, a1
                  addi         t4, t4, 6 #update loop 0 counter
                  andi         t1, a3, -701
                  or           a6, s1, t6
                  and          a2, s0, a0
                  auipc        a5, 406108
                  auipc        a5, 706959
                  or           a6, a2, gp
                  slti         s7, a1, -37
                  bne          t4, s0, sub_2_10_0_t #branch for loop 0
                  slti         s6, t1, 2041
                  addi         t0, zero, 4 #init loop 1 counter
                  addi         sp, zero, 8 #init loop 1 limit
sub_2_7_1_t:      auipc        t1, 104238
                  addi         t0, t0, 7 #update loop 1 counter
                  addi         s0, zero, 8 #init loop 0 counter
                  addi         tp, zero, 8 #init loop 0 limit
sub_2_7_0_t:      auipc        t1, 27718
                  addi         s0, s0, -7 #update loop 0 counter
                  bgeu         s0, tp, sub_2_7_0_t #branch for loop 0
                  blt          t0, sp, sub_2_7_1_t #branch for loop 1
                  addi         a7, s9, 1082
                  addi         a6, zero, 9 #init loop 0 counter
                  slli         sp, a6, 15
                  srli         zero, a2, 16
                  addi         t6, zero, -910
                  addi         s5, zero, 15 #init loop 0 limit
                  sltu         a0, s4, a6
                  slti         t1, a5, 41
sub_2_0_0_t:      sub          s1, s2, zero
                  sll          t0, sp, s2
                  slt          a2, s7, s7
                  addi         a6, a6, 6 #update loop 0 counter
                  andi         a2, s7, 274
                  xor          s0, a7, s6
                  xor          s4, s8, s8
                  slli         a7, t0, 29
                  nop
                  slt          s8, s2, t6
                  srai         s7, gp, 10
                  bltu         a6, s5, sub_2_0_0_t #branch for loop 0
                  sll          s4, tp, t3
                  addi         s10, zero, 8 #init loop 0 counter
                  sltiu        ra, a0, -69
                  sra          ra, s9, a3
                  and          a4, t0, s5
                  xor          t2, s5, ra
                  srli         ra, t3, 7
                  sltiu        a5, s8, -323
                  addi         gp, zero, 12 #init loop 0 limit
                  sltu         ra, a2, a0
sub_2_1_0_t:      lui          a0, 28795
                  sra          t3, a0, t2
                  addi         a0, s1, 1058
                  addi         s10, s10, 3 #update loop 0 counter
                  sub          a1, a5, s3
                  sub          t4, a6, s4
                  xor          s0, t5, s7
                  slli         zero, t5, 2
                  nop
                  xor          a1, a0, t1
                  xori         a3, a0, 1639
                  sltu         s7, a1, s6
                  or           t6, s4, t2
                  srl          sp, s10, a6
                  addi         a3, a4, -524
                  slt          s7, t2, ra
                  bltu         s10, gp, sub_2_1_0_t #branch for loop 0
                  xori         s4, zero, 1747
                  addi         s1, zero, -5 #init loop 0 counter
                  auipc        ra, 287209
                  srli         a2, t0, 17
                  addi         tp, zero, 16 #init loop 0 limit
sub_2_4_0_t:      sltu         s6, s7, ra
                  slli         a2, a1, 11
                  addi         s1, s1, 7 #update loop 0 counter
                  srai         t3, a5, 5
                  andi         s5, a3, -100
                  sll          s4, a0, s10
                  sra          t6, s0, s5
                  slli         s10, s0, 17
                  add          ra, a4, s5
                  auipc        s11, 1009338
                  beq          s1, tp, sub_2_4_0_t #branch for loop 0
                  or           zero, a7, a4
                  addi         a0, a6, 1835
                  sltu         t1, t1, a1
                  xori         t4, t4, 1921
                  blt          a2, s0, 13f
                  beq          gp, a6, 6f
                  beq          s8, s4, 7f
6:                andi         s3, ra, -1499
7:                sub          s7, gp, tp
                  srl          a4, a3, s3
                  andi         s1, a7, 945
                  slti         s11, t2, -198
                  bgeu         s2, t1, 31f
                  sltu         a2, a1, s6
13:               sltiu        t1, a3, 1269
                  add          t1, s5, a0
                  addi         a2, s11, 360
                  addi         s1, s11, -84
                  srl          s6, a2, s10
                  beq          s6, s10, 25f
                  sltu         t2, s0, t1
                  bgeu         s6, s1, 32f
                  or           s3, t6, a5
                  andi         s11, a1, 291
                  sra          t6, a2, tp
                  slt          s8, sp, t4
25:               blt          t5, a5, 33f
                  auipc        a2, 728654
                  andi         gp, s4, 2026
                  sra          t6, zero, ra
                  beq          s5, t4, 48f
                  bltu         s7, t0, 39f
31:               slti         t2, a5, 1369
32:               blt          s1, t3, 34f
33:               ori          s0, tp, -925
34:               sll          s10, s3, t4
                  sll          s11, t0, a4
                  sltiu        a6, t1, 1341
                  andi         t0, a3, -741
                  bgeu         s0, s4, 51f
39:               slli         s7, t1, 3
                  andi         t4, t3, -1545
                  addi         t1, a0, 959
                  ori          a5, s4, -1617
                  bgeu         s2, a2, 49f
                  srl          a2, a6, t6
                  sra          s3, s3, s5
                  sll          s3, gp, a3
                  srai         t3, a6, 9
48:               sub          s6, sp, s7
49:               slli         t0, a0, 8
                  srl          t2, s8, t0
51:               andi         s7, zero, 1793
                  ori          zero, t4, -719
                  sltu         a5, a1, t6
                  slti         t3, t0, 1613
                  bltu         s11, t1, 71f
                  bge          t6, s9, 64f
                  lui          s0, 875706
                  bge          gp, t2, 65f
                  ori          s7, s3, -902
                  xori         t4, s9, 325
                  blt          a5, ra, 69f
                  add          s5, s6, t1
                  bgeu         s1, t1, 69f
64:               srl          s3, s4, a4
65:               xor          s11, t3, t2
                  bge          a2, tp, 70f
                  addi         t1, t6, -1687
                  bltu         t4, t1, 82f
69:               beq          t3, t5, 81f
70:               ori          tp, a5, 1302
71:               srl          s8, a6, s7
                  srai         s10, s9, 10
                  lui          s11, 591472
                  and          s11, t2, zero
                  and          a2, a0, sp
                  sra          s0, s0, a1
                  slti         t1, t4, -1289
                  nop
                  sltiu        a7, s7, 915
                  andi         s0, s0, -1286
81:               xor          gp, t3, zero
82:               srl          s11, s5, a2
                  xori         s11, s0, 412
                  srli         s1, a2, 16
                  sltiu        s8, t3, -336
                  ori          s10, a6, -604
                  sltu         t6, tp, s2
                  nop
                  bgeu         s7, t4, 107f
                  sra          t2, t3, a0
                  auipc        a1, 456994
                  slti         s3, a7, -1381
                  andi         s11, s8, -1230
                  add          t6, s5, a7
                  addi         tp, t6, -114
                  slli         sp, s0, 4
                  and          a7, s2, t0
                  sll          s4, t4, s7
                  ori          s11, a2, -96
                  sub          s10, s4, t4
                  addi         a4, a6, -42
                  slli         a6, s0, 31
                  srli         t1, t4, 19
                  auipc        t6, 340883
                  bltu         a7, s4, 112f
                  lui          s6, 737141
107:              xor          a0, t2, a7
                  andi         a7, s0, 607
                  xori         a7, sp, 1649
                  bltu         s6, a1, 123f
                  bgeu         t1, t2, 125f
112:              slli         a3, s3, 4
                  andi         s6, a5, 1911
                  slli         a7, ra, 5
                  or           gp, gp, s7
                  slt          t1, a3, s11
                  slti         s10, a4, -127
                  bltu         t6, tp, 125f
                  sll          t3, gp, t6
                  ori          a0, s6, 601
                  bltu         ra, s3, 140f
                  blt          s6, gp, 142f
123:              sra          s7, a0, s0
                  srai         t0, t2, 28
125:              andi         t1, t1, 78
                  bge          a2, s2, 129f
                  and          a6, a2, t3
                  xor          t0, t0, s8
129:              xor          a5, a6, a3
                  sll          a7, s4, t4
                  xor          a2, s4, s3
                  srai         t3, tp, 5
                  srl          a7, t6, t6
                  addi         a0, a2, -763
                  beq          ra, a4, 143f
                  bgeu         s7, t2, 156f
                  sub          a5, a5, s8
                  beq          t6, t0, 156f
                  lui          s8, 557831
140:              bne          s9, s10, 159f
                  sra          s10, gp, s0
142:              bgeu         s2, t4, 149f
143:              andi         t0, gp, -697
                  addi         a0, zero, -2 #init loop 1 counter
                  addi         s11, zero, 10 #init loop 1 limit
sub_2_5_1_t:      sub          s10, zero, t6
                  addi         a0, a0, 3 #update loop 1 counter
                  addi         s7, tp, -602
                  addi         s0, zero, -10 #init loop 0 counter
                  addi         s5, zero, -18 #init loop 0 limit
sub_2_5_0_t:      and          ra, s5, s0
                  addi         s0, s0, -8 #update loop 0 counter
                  slli         s10, s5, 11
                  bne          s0, s5, sub_2_5_0_t #branch for loop 0
                  auipc        gp, 973706
                  slt          t1, s3, a4
                  blt          a0, s11, sub_2_5_1_t #branch for loop 1
                  sll          ra, s6, t3
                  xor          t4, a4, tp
                  xori         a4, s11, -33
                  sub          s7, t3, t3
                  blt          gp, t0, 157f
                  sltu         t0, s11, s9
149:              srai         a6, s6, 5
                  sra          a0, s3, s10
                  xor          ra, t1, s2
                  bltu         s5, s5, 165f
                  add          t4, gp, a3
                  ori          a2, s0, 381
                  blt          t5, s8, 157f
156:              addi         s10, t0, -370
157:              sub          s3, s4, a0
                  xor          zero, t3, t3
159:              srl          t2, t4, a3
                  xori         a2, a5, -2041
                  sub          s7, s8, sp
                  beq          a6, t3, 182f
                  sltu         t6, t6, s4
                  addi         sp, ra, 478
165:              slt          s6, zero, t3
                  sra          s8, tp, s3
                  bltu         t1, s8, 187f
                  slti         t2, s1, -1229
                  sra          a4, t1, t6
                  and          t6, t6, t3
                  ori          a6, s0, -2015
                  lui          t1, 172883
                  slt          s0, gp, t3
                  and          s5, s10, ra
                  and          zero, zero, s9
                  bgeu         s5, s7, 196f
                  sltu         t6, a6, t5
                  xori         gp, s4, 1722
                  addi         a6, ra, 1049
                  xori         s6, t1, -1580
                  slli         s0, s0, 29
182:              and          tp, s7, t6
                  xori         s11, s10, -136
                  srl          s7, s9, s10
                  sra          s8, t1, tp
                  bltu         s9, s3, 198f
187:              add          a5, s1, zero
                  auipc        s6, 707960
                  bne          gp, a3, 197f
                  slt          s7, s1, s0
                  andi         t2, tp, -2018
                  srai         a6, t3, 23
                  auipc        s6, 945973
                  bgeu         t1, s0, 213f
                  bge          s7, t5, 202f
196:              or           s8, s11, a0
197:              add          s0, a2, gp
198:              bgeu         s0, t4, 212f
                  xor          s0, s7, s8
                  add          t6, s10, s5
                  bne          s10, a2, 207f
202:              nop
                  blt          a1, s10, 219f
                  srli         s4, s5, 24
                  srli         s11, ra, 25
                  bltu         s3, t0, 214f
207:              sll          t3, s2, t2
                  bgeu         s6, gp, 210f
                  xori         t6, zero, 1562
210:              sltu         a2, a6, t3
                  or           s3, a0, tp
212:              beq          gp, t0, 216f
213:              bltu         a4, ra, 215f
214:              sll          a4, sp, a7
215:              bgeu         s10, a5, 223f
216:              auipc        s8, 768321
                  addi         s7, t3, -852
                  slti         s11, s1, 895
219:              add          s7, a3, s3
                  addi         tp, sp, -943
                  srai         s4, ra, 27
                  sltiu        t4, t3, 145
223:              andi         a3, a7, 1626
                  bgeu         t0, t2, 236f
                  bltu         t6, zero, 234f
                  sltu         a2, t5, a4
                  slli         s0, t4, 10
                  bgeu         s3, t0, 242f
                  srli         a7, t6, 3
                  addi         s3, t3, -1275
                  srai         a6, s8, 23
                  add          s0, gp, t2
                  lui          s1, 689444
234:              nop
                  slt          a3, s6, s3
236:              xori         s6, s9, 1107
                  or           a7, gp, a1
                  sltu         a7, t3, sp
                  sll          t0, s11, s6
                  lui          a5, 637498
                  srli         a2, s3, 2
242:              andi         a4, s6, -1036
                  blt          ra, s5, 251f
                  srai         t4, sp, 10
                  andi         zero, t6, -94
                  sll          s5, t0, s6
                  slt          s4, zero, s5
                  bltu         t0, s8, 254f
                  addi         sp, s3, -516
                  srai         s7, s10, 10
251:              add          s6, a0, ra
                  beq          tp, t1, 259f
                  srai         s8, s5, 14
254:              xor          t3, s7, sp
                  and          s8, a3, a2
                  bltu         t4, a7, 259f
                  addi         s3, gp, 1738
                  or           s8, t1, s8
259:              sltu         tp, a6, s2
                  slli         s8, s1, 29
                  bgeu         s5, sp, 268f
                  srl          t1, sp, s10
                  auipc        a6, 734004
                  add          t2, s2, s8
                  srai         s11, t0, 26
                  srli         gp, a7, 10
                  or           t2, s5, s4
268:              add          ra, gp, t4
                  blt          t6, s6, 282f
                  lui          t3, 351606
                  bge          t6, t6, 273f
                  sltiu        s8, t2, 769
273:              sub          t2, s2, a1
                  xori         tp, s2, 932
                  sltiu        gp, ra, 1431
                  blt          a4, t0, 280f
                  slli         gp, a4, 20
                  auipc        ra, 411295
                  sltiu        ra, s4, -1051
280:              andi         a3, t0, -487
                  ori          s11, s11, -42
282:              blt          s10, a2, 294f
                  srl          t3, a3, s0
                  slti         a7, sp, 553
                  bne          t2, gp, 305f
                  and          t6, t5, a7
                  sub          gp, s7, a5
                  add          s0, a2, a2
                  slt          s5, t0, s9
                  beq          tp, t0, 296f
                  lui          a0, 86819
                  bgeu         a1, tp, 299f
                  slt          zero, s6, s0
294:              andi         s11, t5, -1745
                  sra          s8, t6, a2
296:              ori          s3, tp, 561
                  srli         a7, s3, 18
                  add          t1, tp, s10
299:              slti         a6, t5, -10
                  or           t6, t4, gp
                  xor          s11, t5, sp
                  srai         s7, sp, 0
                  sltiu        s5, s7, 1434
                  bltu         t4, t2, 311f
305:              srli         s7, t4, 0
                  bne          t6, a0, 320f
                  beq          s7, a0, 319f
                  sra          a2, ra, zero
                  lui          a4, 996668
                  blt          a2, s3, 319f
311:              sltiu        s11, a7, -145
                  sltiu        s8, s3, -1088
                  slt          gp, ra, s10
                  srl          s4, a1, a1
                  auipc        t4, 1018591
                  bltu         s4, s11, 326f
                  srl          t1, t4, s1
                  slti         t1, t1, -1042
319:              blt          s3, s5, 339f
320:              sll          a6, t4, a1
                  addi         s4, s2, -820
                  andi         s7, s4, 717
                  addi         a6, s6, 1372
                  bge          a3, ra, 337f
                  beq          a4, gp, 343f
326:              andi         t6, a5, -1018
                  sltu         ra, tp, s4
                  and          a3, s8, sp
                  bge          t2, s11, 331f
                  xor          s1, s9, a4
331:              ori          s11, s4, 247
                  auipc        t4, 16100
                  sltu         a2, s4, t2
                  bge          s9, a2, 342f
                  slt          s7, s1, sp
                  sub          s10, t6, a2
337:              xori         a3, a6, 1944
                  srl          a5, t1, s3
339:              and          t4, s5, tp
                  bne          zero, a1, 347f
                  blt          a1, s1, 349f
342:              ori          s3, s2, -1999
343:              blt          t5, zero, 359f
                  sll          ra, zero, s3
                  slt          a5, a3, a4
                  srl          a7, s5, a3
347:              slt          tp, t3, t2
                  addi         a7, a5, -907
349:              and          a4, s5, zero
                  slt          t3, a7, a2
                  auipc        a7, 929695
                  nop
                  andi         a5, s3, 1293
                  blt          s2, t2, 360f
                  bgeu         s4, a4, 363f
                  sltu         sp, t0, a5
                  slti         a4, s9, 1225
                  xori         s7, zero, -5
359:              sra          t0, t3, a0
360:              beq          a7, s7, 379f
                  bgeu         s9, s4, 374f
                  lui          gp, 51303
363:              beq          s3, a1, 366f
                  and          a1, sp, ra
                  slt          a7, a3, t5
366:              add          t0, a3, a1
                  sltu         a5, ra, s4
                  nop
                  nop
                  bne          gp, t0, 384f
                  addi         t3, s1, -1459
                  and          t3, s5, a7
                  srl          gp, t5, s11
374:              srl          s6, s4, t1
                  sltu         a2, s1, a2
                  slli         a5, s11, 20
                  or           t4, s8, gp
                  slti         a1, s9, 1126
379:              slti         a5, s10, -1346
                  srai         t4, s0, 7
                  ori          zero, tp, 1435
                  blt          t1, s5, 389f
                  bge          t1, t1, 385f
384:              sltiu        t1, s10, -1772
385:              blt          sp, s11, 404f
                  slli         a3, t4, 27
                  xor          s10, a6, s5
                  ori          s7, t3, -1466
389:              xori         a4, a6, 781
                  blt          a6, s11, 398f
                  srli         s11, zero, 3
                  sltu         s7, s3, a2
                  xor          s4, a6, a6
                  slt          t4, zero, t4
                  auipc        gp, 609248
                  sub          s1, a4, a4
                  or           s8, a1, a1
398:              srli         t4, s11, 22
                  sltiu        s10, a0, 205
                  ori          s6, ra, -769
                  andi         t3, s2, -1267
                  xor          a5, s10, s1
                  sll          s7, s5, t2
404:              sltu         t2, t4, t6
                  slli         ra, a7, 25
                  sltu         t1, a0, t6
                  srai         gp, s9, 5
                  srli         s6, gp, 3
                  bne          gp, t1, 429f
                  blt          s4, s1, 412f
                  srai         s11, s2, 10
412:              ori          s4, s8, -449
                  or           s8, gp, zero
                  sltu         s4, s2, a2
                  bge          zero, t5, 423f
                  sltu         s4, s6, s2
                  add          s4, a0, s4
                  sll          s3, a0, a5
                  sra          t6, tp, s9
                  bltu         s7, a0, 426f
                  nop
                  andi         a1, a7, -515
423:              slt          s1, s9, s9
                  slti         a0, t1, 1003
                  bne          s3, t4, 445f
426:              slt          s10, s6, t0
                  srli         s7, s5, 28
                  srli         ra, s4, 19
429:              xor          t6, s10, a2
                  ori          a0, a7, 1261
                  andi         s8, a0, -1972
                  or           a4, t6, s7
                  sra          s10, t4, s7
                  sub          s5, a0, tp
                  slti         s10, gp, -511
                  or           s0, sp, s0
                  bge          s10, t6, 444f
                  and          a4, t2, t3
                  bne          a1, s7, 451f
                  sltu         a1, t4, tp
                  beq          s11, s4, 444f
                  ori          s1, s2, -454
                  add          t3, t2, t2
444:              bge          tp, a5, 453f
445:              slti         a6, s1, 1182
                  slli         s11, sp, 9
                  sltu         ra, a7, t4
                  bge          tp, ra, 467f
                  srli         tp, a5, 19
                  xor          s3, s0, s4
451:              slli         s10, ra, 22
                  slt          tp, a7, zero
453:              beq          a3, s4, 467f
                  nop
                  bgeu         s11, a0, 468f
                  slt          s5, a3, t5
                  slti         a0, tp, -1656
                  lui          tp, 816410
                  bge          s10, s1, 463f
                  bltu         a4, s7, 480f
                  blt          s2, a5, 471f
                  add          t2, s6, t0
463:              sltu         t0, s10, s11
                  sub          s3, s10, t4
                  slti         s1, s9, 180
                  xori         s6, a4, 610
467:              andi         t3, s4, -285
468:              slti         s4, t2, -1146
                  slti         t0, a6, -1034
                  slti         sp, a7, -282
471:              sll          gp, s9, a2
                  sub          zero, t3, t0
                  srli         s7, s6, 6
                  lui          s4, 457206
                  auipc        t0, 222235
                  addi         sp, s2, -1007
                  srl          tp, t1, a2
                  srai         t1, s0, 13
                  ori          t0, a6, 875
480:              andi         s7, t5, 1248
                  srai         t4, a4, 24
                  slt          s11, s3, sp
                  xor          s6, a4, ra
                  srli         t2, sp, 17
                  ori          t6, t2, 1711
                  or           ra, s5, t1
                  ori          a2, a4, 748
                  srl          a7, t1, s5
                  bge          zero, s2, 502f
                  andi         ra, s3, -595
                  add          zero, a7, t3
                  sltu         s1, ra, t3
                  bgeu         s9, t4, 509f
                  nop
                  lui          a7, 232739
                  bltu         s1, t4, 503f
                  and          s4, gp, s11
                  and          a7, s3, s10
                  srli         s10, s10, 14
                  ori          s8, ra, 1383
                  srai         s0, t2, 14
502:              xori         s4, a4, -360
503:              sltiu        t0, s7, -1852
                  add          zero, t0, ra
                  xori         s1, t3, -572
                  auipc        t1, 574872
                  slti         t0, s9, 711
                  auipc        s7, 259276
509:              addi         s4, s9, 1163
                  bne          s7, s9, 524f
                  auipc        a2, 462637
                  auipc        a0, 438087
                  sltu         gp, s11, s8
                  xori         s6, s4, -1883
                  srai         a6, s7, 22
                  xori         s6, t1, 954
                  sra          s11, t3, s6
                  nop
                  slli         s6, sp, 3
                  bne          s1, gp, 527f
                  ori          a3, t4, -1830
                  and          s5, t1, gp
                  sltiu        a2, a7, -1852
524:              xor          t2, ra, t6
                  bgeu         s4, t4, 532f
                  sll          zero, t0, s9
527:              xor          s5, s11, t6
                  slt          a5, s10, s11
                  bltu         s6, s9, 537f
                  bltu         a5, s9, 538f
                  bge          a7, a4, 533f
532:              bne          a5, a0, 551f
533:              sra          ra, s7, t1
                  andi         t4, a5, -563
                  slli         sp, t2, 20
                  or           ra, gp, s10
537:              ori          s1, a7, 1876
538:              andi         a6, t1, -964
                  slli         s3, s0, 2
                  bgeu         s10, a5, 552f
                  sll          a5, t5, tp
                  bge          s3, a1, 562f
                  slti         a3, s0, 1748
                  ori          s1, s11, -865
                  beq          s2, s3, 551f
                  ori          gp, s3, 1108
                  sltiu        ra, a0, -100
                  or           t2, a7, a4
                  sub          a5, t0, zero
                  bne          s0, a4, 558f
551:              sltu         s0, s6, a3
552:              sltiu        sp, gp, 1042
                  andi         t0, gp, -988
                  sra          a0, a3, a3
                  xori         s1, a5, 1163
                  auipc        s4, 857252
                  bge          a7, s11, 559f
558:              addi         t3, s11, 1452
559:              sltu         tp, s9, s3
                  bne          ra, s2, 578f
                  srl          s3, a2, s5
562:              nop
                  srai         s3, s8, 0
                  addi         t0, s10, -448
                  sra          s10, t6, s11
                  lui          t2, 858257
                  sltu         s8, a4, s0
                  sra          s3, gp, a1
                  slti         t4, s10, -750
                  bgeu         s8, t6, 577f
                  bge          s7, s7, 578f
                  srai         s7, t2, 5
                  sltiu        tp, s8, -707
                  and          a5, gp, s10
                  sll          s8, s1, t6
                  auipc        a7, 257950
577:              sub          s10, sp, a0
578:              slti         gp, sp, 974
                  slt          t3, a4, t1
                  add          a4, s2, s9
                  sltu         gp, t6, tp
                  xor          t6, t5, a1
                  xor          s8, ra, s1
                  srli         a6, gp, 29
                  sub          a7, t4, a7
                  nop
                  bltu         t2, s9, 607f
                  sltiu        t1, a4, 1112
                  srai         t1, a7, 27
                  bne          t3, a1, 603f
                  slti         t4, a2, -374
                  slli         s11, a1, 9
                  srli         a7, s8, 2
                  xori         zero, a1, 1914
                  nop
                  xori         t3, s1, -1188
                  slli         t3, a7, 29
                  srai         s4, s2, 2
                  add          t0, a4, s9
                  or           ra, s6, a2
                  lui          gp, 406803
                  srai         s4, s3, 11
603:              sltu         gp, ra, a5
                  srai         s3, sp, 1
                  slt          t3, s11, t5
                  sltiu        a5, t1, -1025
607:              auipc        a1, 9350
                  bne          s7, s5, 610f
                  blt          a0, a1, 616f
610:              xori         ra, sp, -982
                  andi         zero, t1, -376
                  bltu         s3, tp, 624f
                  add          s10, s3, a4
                  srli         s7, s7, 16
                  blt          s3, s7, 623f
616:              blt          a1, tp, 632f
                  xori         s4, gp, 501
                  srli         a5, t3, 30
                  add          sp, s10, a5
                  add          s10, a2, s2
                  and          a4, a3, a2
                  bltu         t1, sp, 642f
623:              sltiu        gp, a3, -1720
624:              add          a1, a5, t4
                  xor          ra, t2, s7
                  slti         t1, s11, 456
                  bltu         s6, s2, 634f
                  bgeu         t5, s5, 641f
                  bgeu         zero, sp, 638f
                  bge          t5, s9, 649f
                  srl          gp, s4, s1
632:              sltu         tp, t2, s1
                  sll          s11, s11, t6
634:              bge          s1, a7, 637f
                  ori          s4, s4, 2001
                  ori          s4, a5, -1600
637:              slli         ra, s8, 22
638:              bne          a3, t1, 650f
                  slli         a4, t2, 19
                  add          t3, s6, a7
641:              xor          a6, s5, a1
642:              or           s8, a5, a6
                  beq          t0, a7, 657f
                  xor          gp, s6, s1
                  beq          t2, s7, 649f
                  nop
                  sltiu        sp, s0, 1876
                  auipc        s4, 960709
649:              andi         t0, a4, 1820
650:              andi         s0, t6, 1532
                  lui          s1, 278969
                  blt          tp, ra, 654f
                  or           t0, t4, ra
654:              bge          t4, a1, 664f
                  slt          t3, s1, t2
                  blt          t1, t0, 658f
657:              srl          t3, s0, gp
658:              blt          s7, a3, 666f
                  bltu         t5, gp, 667f
                  slli         tp, s7, 27
                  beq          t5, ra, 673f
                  nop
                  andi         s0, a3, -902
664:              sltu         a3, a7, gp
                  add          t1, s0, s3
666:              or           t3, s2, s3
667:              nop
                  addi         s4, tp, -1835
                  srai         ra, s6, 24
                  srai         s7, t0, 31
                  addi         ra, s3, 391
                  addi         s1, t0, -1530
673:              slti         s3, t6, 1926
                  srl          tp, ra, s8
                  auipc        t0, 27850
                  lw           s0, 4(t5)
                  sltu         tp, a5, zero
                  xori         a3, a7, -141
                  or           a5, s6, s7
                  ori          gp, a6, 1677
                  slt          zero, a4, s3
                  or           s5, s7, s0
                  addi         t5, t5, 20
                  nop
972:              addi x9, x8, 1
972:              jalr x9, x9, 0
sub_5:            addi         t5, t5, -32
                  sw           s0, 4(t5)
                  xor          a2, a1, ra
                  sltu         s8, t1, a0
                  slt          s8, a6, a2
                  or           s8, s11, s8
                  addi         gp, zero, -3 #init loop 1 counter
                  sll          a3, s8, s7
                  srl          a5, a6, s0
                  and          a1, s1, a7
                  addi         s0, zero, -10 #init loop 1 limit
                  sra          t6, t4, sp
                  slti         a0, s5, 1696
                  lui          a5, 281944
sub_5_1_1_t:      slti         t4, s7, 1262
                  addi         gp, gp, -7 #update loop 1 counter
                  lui          t2, 81444
                  addi         a4, zero, 10 #init loop 0 counter
                  addi         s4, zero, 12 #init loop 0 limit
                  srai         t0, t2, 11
sub_5_1_0_t:      slti         zero, sp, -1486
                  auipc        t3, 688069
                  addi         a4, a4, 2 #update loop 0 counter
                  srai         t3, s4, 14
                  beq          a4, s4, sub_5_1_0_t #branch for loop 0
                  srl          a3, t1, s0
                  slti         a0, s1, -272
                  slt          s1, t4, a1
                  auipc        a6, 203324
                  bne          gp, s0, sub_5_1_1_t #branch for loop 1
                  srli         s3, a4, 2
                  addi         s7, zero, -4 #init loop 0 counter
                  addi         t2, zero, 12 #init loop 0 limit
                  ori          a4, gp, -410
sub_5_0_0_t:      lui          t6, 345815
                  addi         s7, s7, 8 #update loop 0 counter
                  slti         a4, s1, 1124
                  slt          ra, a6, s1
                  bne          s7, t2, sub_5_0_0_t #branch for loop 0
                  slti         s11, s10, -1604
                  bltu         s6, gp, 10f
                  or           t6, s3, s7
                  addi         t0, s8, -1161
                  bne          a0, t6, 22f
                  srai         s5, t2, 14
                  beq          a4, a3, 17f
                  andi         sp, a6, -599
                  sltu         gp, a2, t0
                  slt          s5, s1, t2
                  slti         s5, a6, 902
10:               bge          s3, s9, 25f
                  sltu         t0, a6, t2
                  slti         t6, s3, -1544
                  sltiu        ra, t3, 660
                  nop
                  sltu         tp, a7, s3
                  beq          a7, ra, 28f
17:               sll          a0, s7, s3
                  nop
                  and          a2, ra, s6
                  bge          t3, a6, 23f
                  sra          a0, a6, s3
22:               sll          t6, a5, t2
23:               addi         s3, t3, -1875
                  sll          s7, s9, a6
25:               bgeu         s5, ra, 27f
                  sra          a3, a1, s3
27:               or           a1, s9, s3
28:               srli         t1, a5, 14
                  xori         t2, s8, 1077
                  addi         s6, s3, 883
                  addi         tp, s0, -689
                  sltiu        s5, ra, -754
                  auipc        s5, 786409
                  xor          a4, t3, s10
                  auipc        t0, 256191
                  xori         a4, s2, 1331
                  beq          t3, a4, 53f
                  andi         t0, t6, 1401
                  srl          a1, zero, s2
                  xor          a3, t5, s2
                  bltu         s3, a7, 47f
                  xor          s3, t2, s3
                  andi         t1, a7, 1306
                  slti         s1, t5, -1731
                  slti         t6, sp, -544
                  addi         t0, sp, 1615
47:               sra          sp, a7, gp
                  sltiu        a0, tp, 1602
                  auipc        a0, 1026405
                  lui          gp, 960606
                  auipc        s1, 354353
                  sltu         s3, sp, s1
53:               nop
                  bne          s4, t0, 64f
                  srl          t4, s10, s5
                  bgeu         s2, s11, 62f
                  and          zero, gp, gp
                  auipc        t3, 3278
                  bgeu         s5, s7, 65f
                  sra          a5, a7, ra
                  and          a7, s11, a2
62:               sltu         s3, t6, t3
                  srl          t0, t2, s0
64:               srl          t1, s8, t1
65:               add          s8, tp, a5
                  xori         s8, t5, -1680
                  slt          a1, s8, t4
                  bge          s2, gp, 80f
                  or           a2, sp, s7
                  auipc        s7, 129824
                  sltu         t6, s11, s4
                  sltiu        a2, sp, 1949
                  slli         s5, t0, 23
                  slli         s1, tp, 18
                  bge          zero, s8, 93f
                  bgeu         s11, a7, 77f
77:               ori          s4, s9, 997
                  ori          t1, s4, 1604
                  lui          s10, 270363
80:               srl          ra, tp, tp
                  auipc        a0, 605922
                  bge          s6, tp, 86f
                  or           a4, t1, ra
                  bne          s7, t1, 98f
                  bltu         t3, a6, 97f
86:               sltu         a7, t6, a1
                  add          ra, t0, s7
                  blt          zero, t0, 103f
                  addi         ra, t4, -1254
                  bge          s4, t2, 96f
                  sltu         s7, ra, s0
                  srai         t0, s5, 12
93:               slt          t0, a1, t0
                  slli         s10, gp, 21
                  xor          t4, s4, a3
96:               srl          t1, a3, s6
97:               lui          zero, 411484
98:               srl          s6, s6, t2
                  sltiu        s8, ra, 1365
                  xori         s5, gp, 992
                  slti         t1, t1, -1745
                  srai         a0, a0, 8
103:              sltu         tp, s9, zero
                  sll          a6, s7, zero
                  lw           s0, 4(t5)
                  xor          t4, sp, s3
                  addi         t5, t5, 32
                  xor          s8, s5, s1
                  sltiu        t0, s1, -1330
                  andi         a3, s3, 658
151:              addi x4, x8, 0
151:              jalr x4, x4, 0
sub_3:            bne          s5, s8, sub_3_stack_p
sub_3_stack_p:    addi         t5, t5, -48
                  sra          a3, a0, s1
                  sw           s0, 4(t5)
                  addi         s5, t4, -993
                  sltu         tp, t2, a6
                  auipc        a0, 368872
                  auipc        s0, 849567
                  la           tp, sub_5
                  addi         tp, tp, 1013
                  sub          a3, s10, t5
                  slli         a2, a4, 13
                  bgeu         a3, t1, sub_3_j6 #branch to jump instr
                  slt          a6, a2, t1
sub_3_j6:         jalr         s0, tp, -1013 #jump sub_3 -> sub_5
                  lui          s5, 808294
                  addi         s11, s0, -263
                  srai         t1, t5, 14
                  or           a3, t5, s7
                  slt          a4, s0, s2
                  or           sp, a0, t0
                  sltiu        tp, s9, -754
                  srl          t3, t2, s5
                  slli         a7, s5, 0
                  sll          s7, s11, a6
                  srl          a7, t3, sp
                  slt          s11, s5, s1
                  sll          t6, s3, t6
                  sltiu        a6, sp, 1019
                  sltu         ra, t5, a6
                  andi         s0, t3, -1299
                  lw           s0, 4(t5)
                  slti         a6, t1, 1311
                  sltu         a5, zero, s10
                  srai         a1, s9, 18
                  sll          s1, gp, s7
                  addi         t5, t5, 48
                  slli         s4, t1, 1
                  slli         s11, a6, 11
                  xor          s6, t1, t4
40:               addi x9, x8, 0
40:               jalr x9, x9, 0
sub_1:            or           a3, a3, s7
                  sll          ra, s3, s7
                  srai         a2, t0, 3
                  ori          t1, sp, 1047
                  sub          s5, s4, tp
                  blt          a0, s9, sub_1_stack_p
                  ori          a7, ra, -1147
sub_1_stack_p:    addi         t5, t5, -8
                  sw           s0, 4(t5)
                  slli         s7, s7, 9
                  ori          ra, a6, -735
                  ori          s6, s6, 119
                  addi         s8, zero, 8 #init loop 1 counter
                  and          t2, s10, s9
                  xori         a3, ra, -230
                  addi         zero, s5, -345
                  nop
                  and          a4, s4, zero
                  addi         a2, zero, 9 #init loop 1 limit
                  addi         t6, s3, 1029
sub_1_3_1_t:      xori         t2, s7, 795
                  slti         t4, t2, -1063
                  srai         t4, s3, 17
                  addi         s8, s8, 6 #update loop 1 counter
                  xor          a7, s1, s0
                  addi         gp, zero, -3 #init loop 0 counter
                  srl          t6, t0, ra
                  and          s7, s9, sp
                  xori         a4, a1, -448
                  addi         a0, zero, 15 #init loop 0 limit
                  srl          sp, a7, tp
sub_1_3_0_t:      andi         t2, a2, -382
                  lui          s4, 28060
                  srl          s5, s5, a3
                  sltu         s4, s7, a0
                  addi         gp, gp, 9 #update loop 0 counter
                  sra          s4, tp, tp
                  addi         a1, s8, -79
                  bne          gp, a0, sub_1_3_0_t #branch for loop 0
                  xor          tp, s9, a4
                  xor          t2, s4, tp
                  bltu         s8, a2, sub_1_3_1_t #branch for loop 1
                  nop
                  addi         s5, zero, 3 #init loop 1 counter
                  auipc        t6, 1036638
                  addi         a6, zero, 5 #init loop 1 limit
                  lui          a4, 26674
                  sll          s10, s2, t2
                  srli         ra, t5, 17
sub_1_0_1_t:      auipc        gp, 177164
                  addi         s5, s5, 9 #update loop 1 counter
                  slli         zero, tp, 0
                  sra          s11, zero, tp
                  addi         s8, a3, 1436
                  xor          a0, s11, s1
                  addi         t0, zero, 10 #init loop 0 counter
                  addi         t1, zero, 17 #init loop 0 limit
                  andi         a5, zero, -1800
sub_1_0_0_t:      addi         gp, a2, -717
                  ori          a4, tp, -783
                  slt          tp, a2, s1
                  addi         t0, t0, 4 #update loop 0 counter
                  nop
                  or           s0, t5, a0
                  auipc        s8, 986040
                  bltu         t0, t1, sub_1_0_0_t #branch for loop 0
                  blt          s5, a6, sub_1_0_1_t #branch for loop 1
                  addi         s11, a0, 836
                  addi         a3, zero, 10 #init loop 1 counter
                  sltiu        t6, s5, -1111
                  slli         s7, t6, 28
                  xori         s0, t5, 754
                  slli         a5, a4, 5
                  addi         s3, zero, 13 #init loop 1 limit
sub_1_2_1_t:      add          s7, t6, s3
                  addi         a3, a3, 3 #update loop 1 counter
                  addi         s10, zero, 3 #init loop 0 counter
                  sra          ra, s1, t1
                  add          s5, s2, t5
                  and          s4, t4, s11
                  addi         sp, zero, 19 #init loop 0 limit
                  andi         t0, zero, 1391
sub_1_2_0_t:      auipc        s1, 404207
                  addi         s10, s10, 8 #update loop 0 counter
                  srli         tp, s10, 19
                  beq          s10, sp, sub_1_2_0_t #branch for loop 0
                  bne          a3, s3, sub_1_2_1_t #branch for loop 1
                  sltu         t4, t5, a6
                  addi         s4, zero, -3 #init loop 0 counter
                  and          t2, a0, s1
                  sra          t6, s7, s2
                  addi         s7, zero, -19 #init loop 0 limit
                  sltiu        s3, t0, -1567
sub_1_1_0_t:      sltu         t0, s3, s8
                  srai         s10, a7, 13
                  addi         s4, s4, -7 #update loop 0 counter
                  addi         sp, a4, -1732
                  bge          s4, s7, sub_1_1_0_t #branch for loop 0
                  or           s0, s9, a0
                  addi         a5, zero, 3 #init loop 0 counter
                  sltiu        a2, t6, 419
                  addi         t6, zero, 7 #init loop 0 limit
                  nop
                  nop
sub_1_4_0_t:      slti         t0, sp, -124
                  addi         a6, s10, 1285
                  addi         a5, a5, 8 #update loop 0 counter
                  blt          a5, t6, sub_1_4_0_t #branch for loop 0
                  or           zero, s4, s2
                  bltu         a0, s0, 1f
1:                addi         a6, a0, 1618
                  sra          tp, t6, t4
                  auipc        t0, 997283
                  srli         t2, t2, 24
                  bge          s7, s3, 14f
                  sltiu        t2, s0, 1335
                  sra          a6, s0, ra
                  auipc        t0, 229063
                  srai         s5, s9, 7
                  sll          a7, zero, t2
                  auipc        s3, 909077
                  addi         s11, s0, -494
                  addi         tp, t2, 414
14:               srli         a3, s0, 29
                  andi         a0, a2, 254
                  ori          zero, zero, 489
                  sll          t4, s4, t4
                  bltu         zero, a2, 31f
                  srl          s0, s10, s0
                  slti         ra, tp, -751
                  ori          s10, t4, 1673
                  sll          s11, a6, a0
                  ori          a3, t0, 1423
                  slti         s10, a6, 1485
                  addi         tp, s0, -2041
                  bgeu         s9, t3, 29f
                  bge          ra, s11, 34f
                  nop
29:               slti         t0, ra, -280
                  bltu         s2, tp, 49f
31:               addi         t3, s4, 1199
                  bge          a5, a2, 50f
                  sub          s8, s10, zero
34:               blt          s6, s4, 47f
                  add          a4, a2, s0
                  bne          a2, a3, 37f
37:               sub          t6, s3, t4
                  slti         a5, s3, -756
                  srl          s8, a0, t4
                  andi         t6, s11, -749
                  srai         s1, t2, 1
                  sub          sp, t0, ra
                  xori         a3, a6, -350
                  auipc        tp, 608832
                  sll          t3, sp, a5
                  lui          a3, 164156
47:               bltu         s0, t5, 59f
                  sltu         a5, s0, s8
49:               xori         s10, zero, 225
50:               bge          s3, s10, 70f
                  slti         zero, t0, -1941
                  slti         t6, t6, 373
                  srai         a3, sp, 24
                  and          t1, a1, tp
                  slli         s3, a0, 3
                  sub          a1, s2, tp
                  blt          sp, t4, 77f
                  sub          s6, t2, gp
59:               bltu         t3, s10, 70f
                  ori          zero, s11, -363
                  blt          a4, t0, 77f
                  xori         s10, s7, 135
                  sub          t1, a7, s3
                  beq          s3, gp, 78f
                  nop
                  sra          s1, a3, s10
                  bgeu         a1, t1, 76f
                  srl          zero, s4, a6
                  or           t2, t4, a4
70:               blt          a6, s11, 81f
                  blt          a2, s3, 74f
                  sltiu        a6, t5, 163
                  sltiu        ra, t5, -88
74:               addi         s7, t1, -135
                  slt          t1, t6, a5
76:               bge          a0, s9, 95f
77:               bne          a6, ra, 80f
78:               slli         s10, s10, 23
                  lui          gp, 558977
80:               bgeu         s4, a7, 83f
81:               lui          a5, 130625
                  sra          t6, a2, a5
83:               xor          a7, a4, s9
                  sltiu        a5, a6, 1488
                  bltu         s8, a3, 103f
                  or           tp, tp, t5
                  sltiu        a0, gp, 244
                  xori         a5, s8, -166
                  addi         s8, s6, -649
                  sra          zero, tp, a6
                  ori          a7, gp, 1894
                  bne          s0, t1, 110f
                  slti         a1, ra, 596
                  ori          a0, a1, -818
95:               and          t1, a3, t5
                  slt          t2, t0, t5
                  srai         t4, sp, 7
                  slli         s5, a1, 21
                  beq          s6, s3, 100f
100:              srli         s11, a2, 21
                  slti         s6, zero, -1733
                  and          a6, a7, a2
103:              and          a3, t0, gp
                  slt          a1, t3, s10
                  srli         ra, s7, 5
                  and          sp, s6, a5
                  xor          gp, a6, s1
                  xori         sp, s11, -1550
                  beq          a3, s9, 110f
110:              blt          a6, t1, 118f
                  sltiu        tp, s2, 1837
                  or           t1, s0, s1
                  xori         s0, t3, 1770
                  slli         a5, s8, 18
                  addi         t6, a6, -359
                  auipc        tp, 524241
                  addi         a0, s2, -1509
118:              lui          s7, 218085
                  blt          a2, s11, 138f
                  ori          gp, s3, -591
                  lui          t6, 670182
                  add          a6, s10, a1
                  addi         a1, t3, 1836
                  or           a7, a4, t3
                  sltiu        zero, a1, 404
                  or           s3, a3, t6
                  and          a4, t5, t4
                  nop
                  blt          s9, t5, 147f
                  auipc        t1, 885442
                  xori         gp, t0, -1719
                  add          a2, s3, s1
                  srl          s0, s0, a3
                  sll          t2, a6, t2
                  bge          s11, s5, 147f
                  slt          a5, zero, s0
                  addi         t2, s10, -1369
138:              xori         tp, a4, 1607
                  xor          t1, zero, s2
                  and          s7, s2, a3
                  xori         a2, s0, 1640
                  sll          s5, t3, a1
                  sltu         a6, s11, s2
                  xori         a1, a1, 781
                  bge          s4, t3, 164f
                  sltu         a4, gp, tp
147:              srl          s10, s9, a7
                  sll          s0, a3, t2
                  sll          zero, a2, sp
                  bne          s2, s0, 168f
                  or           t3, t6, a2
                  srai         gp, t4, 19
                  or           tp, s9, t1
                  blt          t5, a3, 173f
                  lui          a2, 82726
                  beq          ra, s7, 157f
157:              xori         a6, s1, 1978
                  sub          t6, s11, s7
                  slt          a6, t1, zero
                  bne          s1, t6, 180f
                  beq          s11, a0, 172f
                  ori          t3, s11, -584
                  ori          s6, sp, -1171
164:              and          t1, t0, a1
                  sra          s7, sp, s0
                  sub          s6, s0, s6
                  slt          s3, s0, s11
168:              nop
                  nop
                  blt          t0, t1, 183f
                  xor          tp, a0, t3
172:              beq          zero, zero, 180f
173:              ori          t2, s10, 1424
                  addi         s10, t3, -809
                  xori         zero, s2, -2023
                  sra          s5, s6, s5
                  beq          a6, a5, 180f
                  lui          a6, 618063
                  sra          s11, s8, t3
180:              ori          s7, t1, 992
                  ori          t1, a3, -832
                  sll          ra, a4, s0
183:              auipc        t6, 709113
                  xor          zero, sp, t1
                  xor          s5, t1, tp
                  srli         a0, zero, 27
                  slti         a1, t3, -796
                  nop
                  add          gp, sp, gp
                  ori          t1, t4, -333
                  slli         a6, t0, 5
                  addi         s5, s3, 81
                  nop
                  andi         a1, s2, -1909
                  bltu         sp, gp, 214f
                  bne          t1, s3, 216f
                  slli         s4, sp, 25
                  ori          zero, s0, 1051
                  bltu         s8, s9, 200f
200:              slt          s0, a1, t5
                  slti         t3, tp, -2025
                  auipc        s10, 188415
                  sltiu        s11, a4, 678
                  bne          t1, t4, 216f
                  addi         a0, tp, -1876
                  sltiu        a3, s0, 1515
                  bgeu         ra, a7, 214f
                  ori          t3, a1, -865
                  andi         zero, s10, -1192
                  sltu         a7, s2, t0
                  xori         t0, s10, 547
                  blt          s5, s0, 223f
                  slt          s7, a7, t1
214:              ori          zero, t4, 1204
                  sll          t3, s11, s8
216:              beq          gp, t6, 219f
                  xori         a4, s5, -846
                  sra          t6, t0, s6
219:              addi         s5, s2, 331
                  sll          s10, a6, s4
                  sltiu        zero, tp, -478
                  blt          gp, s11, 231f
223:              addi         s7, s0, 836
                  add          tp, a5, s9
                  xori         a3, zero, -485
                  bgeu         zero, s2, 235f
                  nop
                  auipc        s0, 153014
                  xori         a2, a7, -1640
                  addi         t2, a7, 299
231:              bne          t4, s6, 250f
                  addi         a5, s7, -1597
                  andi         a5, s1, 86
                  bltu         a2, s3, 250f
235:              or           s0, tp, s10
                  ori          s3, a2, 907
                  srl          t3, s3, zero
                  bge          a1, s0, 239f
239:              xor          s1, s11, t5
                  slti         a2, s3, -1897
                  nop
                  srai         sp, zero, 30
                  blt          a0, s11, 255f
                  bltu         sp, s9, 257f
                  bltu         t4, a2, 248f
                  add          s0, t4, s2
                  nop
248:              bgeu         a0, t4, 266f
                  nop
250:              bltu         t4, sp, 251f
251:              bge          s7, a5, 265f
                  bltu         sp, s4, 271f
                  lui          a5, 667942
                  srli         a1, s1, 2
255:              bltu         s11, a2, 258f
                  xori         a7, ra, -917
257:              bne          s4, a3, 275f
258:              slti         s5, s7, 1766
                  xori         zero, s8, -595
                  or           t2, t2, t4
                  xori         s1, gp, 411
                  sra          a3, gp, s5
                  sltiu        s0, s3, 1088
                  slti         a0, t6, -331
265:              bgeu         s9, tp, 283f
266:              bne          s5, ra, 273f
                  bltu         s8, s9, 270f
                  xori         ra, s4, -2019
                  add          a2, s0, s7
                  addi         s4, zero, -6 #init loop 1 counter
                  srai         s6, tp, 11
                  or           a0, t5, s7
                  srli         t1, s0, 25
                  and          t4, t3, t1
                  addi         s10, zero, 4 #init loop 1 limit
                  sltiu        t1, a5, -526
sub_1_5_1_t:      sltu         s0, t0, s5
                  sll          t6, sp, t1
                  addi         s4, s4, 10 #update loop 1 counter
                  sra          s6, s7, a2
                  srai         s5, a2, 11
                  addi         a7, zero, 0 #init loop 0 counter
                  addi         ra, zero, 12 #init loop 0 limit
                  srl          zero, s5, zero
                  add          a0, t3, tp
                  srl          t2, t5, a1
                  sltiu        t2, ra, -479
                  sra          a5, a4, t6
sub_1_5_0_t:      auipc        gp, 1014714
                  sltiu        s7, s3, 1431
                  addi         a7, a7, 6 #update loop 0 counter
                  bne          a7, ra, sub_1_5_0_t #branch for loop 0
                  andi         gp, s0, 1694
                  nop
                  srl          t3, t0, tp
                  add          s5, a2, s6
                  sll          s1, a1, t2
                  srli         s6, tp, 14
                  blt          s4, s10, sub_1_5_1_t #branch for loop 1
                  auipc        a5, 324289
270:              srli         a0, a7, 9
271:              slt          s8, s4, s8
                  ori          a7, a0, 306
273:              bltu         t2, s3, 274f
274:              srl          a3, s11, a5
275:              srai         s1, t0, 23
                  beq          a5, s1, 289f
                  auipc        t0, 35988
                  beq          s1, s0, 296f
                  or           s3, t2, s9
                  bne          s4, t0, 283f
                  auipc        s0, 796992
                  sra          a3, sp, s1
283:              slli         a6, a5, 30
                  addi         s10, gp, 138
                  srai         s3, t5, 10
                  auipc        s4, 177730
                  bgeu         a3, gp, 290f
                  nop
289:              sub          ra, a4, tp
290:              andi         s11, t6, -336
                  andi         a6, zero, 338
                  beq          s7, ra, 301f
                  sub          a5, s9, a5
                  sll          a7, s2, s10
                  or           s5, s8, s3
296:              nop
                  blt          gp, s0, 301f
                  slli         t4, a4, 3
                  sub          s7, s5, a3
                  slt          t4, s11, a5
301:              ori          s0, s4, 1961
                  lw           s0, 4(t5)
                  nop
                  and          sp, a1, t3
                  xor          a2, s4, s5
                  addi         t5, t5, 8
                  add          s5, t0, a3
448:              addi x5, x8, 0
448:              jalr x5, x5, 0
sub_4:            srl          sp, a3, t1
                  addi         t5, t5, -48
                  srl          s6, s3, t5
                  add          tp, s7, s8
                  slti         t2, s7, -1172
                  xori         a5, t2, 796
                  xor          s4, ra, gp
                  sw           s0, 4(t5)
                  or           s8, a5, a5
                  auipc        t1, 177071
                  add          a3, a3, t6
                  addi         s11, zero, 9 #init loop 0 counter
                  srl          s7, gp, ra
                  ori          t4, t2, 1677
                  xori         s7, s1, -267
                  slli         s5, t5, 10
                  sll          s10, s2, t5
                  sltiu        t1, t6, 1083
                  srai         t0, s5, 18
                  addi         a0, sp, -1649
                  slt          s8, a2, tp
                  or           s7, t0, s7
                  addi         a2, zero, -15 #init loop 0 limit
                  or           s0, t3, s1
sub_4_5_0_t:      add          s8, t4, s1
                  andi         sp, a4, -650
                  andi         s1, t3, -523
                  and          s0, tp, a0
                  srli         ra, a7, 28
                  addi         s11, s11, -8 #update loop 0 counter
                  slti         tp, a7, 393
                  andi         s10, s9, 545
                  sra          tp, a0, s0
                  lui          a7, 781782
                  andi         s3, t6, -1713
                  sll          t0, t4, t5
                  bne          s11, a2, sub_4_5_0_t #branch for loop 0
                  slti         a0, s9, 1392
                  addi         s4, zero, 2 #init loop 0 counter
                  srai         sp, ra, 21
                  slti         a7, t5, -472
                  and          t3, a6, s2
                  addi         s1, zero, 16 #init loop 0 limit
                  auipc        ra, 702794
                  add          s7, t4, s10
                  sra          a6, a2, zero
                  lui          ra, 730408
                  xori         gp, a7, -709
sub_4_2_0_t:      sub          s3, a4, s1
                  addi         s4, s4, 9 #update loop 0 counter
                  ori          zero, t2, -1394
                  blt          s4, s1, sub_4_2_0_t #branch for loop 0
                  sll          s8, a6, ra
                  addi         t3, zero, 8 #init loop 1 counter
                  addi         a6, zero, 17 #init loop 1 limit
sub_4_1_1_t:      slt          t6, s11, a2
                  addi         s10, zero, 940
                  addi         t3, t3, 6 #update loop 1 counter
                  add          s1, a3, s4
                  addi         s4, zero, 0 #init loop 0 counter
                  srai         t1, s10, 28
                  addi         s0, zero, -20 #init loop 0 limit
                  sltu         a2, a7, t1
sub_4_1_0_t:      sub          t6, s9, gp
                  and          t6, t5, t4
                  addi         s4, s4, -4 #update loop 0 counter
                  beq          s4, s0, sub_4_1_0_t #branch for loop 0
                  addi         s10, t3, 890
                  blt          t3, a6, sub_4_1_1_t #branch for loop 1
                  addi         sp, a1, -534
                  addi         sp, zero, -2 #init loop 1 counter
                  addi         a5, zero, 2 #init loop 1 limit
                  ori          a2, s1, 1978
                  sltiu        a7, a2, -675
sub_4_7_1_t:      ori          t6, a3, -779
                  addi         sp, sp, 9 #update loop 1 counter
                  slli         a4, s1, 15
                  srli         s5, a1, 13
                  addi         a6, zero, 8 #init loop 0 counter
                  addi         a3, zero, 2 #init loop 0 limit
sub_4_7_0_t:      sltiu        a7, s7, -305
                  nop
                  addi         a6, a6, -3 #update loop 0 counter
                  lui          gp, 6047
                  beq          a6, a3, sub_4_7_0_t #branch for loop 0
                  lui          s5, 980155
                  bltu         sp, a5, sub_4_7_1_t #branch for loop 1
                  addi         tp, s9, 285
                  addi         s10, zero, 8 #init loop 0 counter
                  addi         a6, zero, 6 #init loop 0 limit
sub_4_4_0_t:      slti         a7, ra, -2
                  addi         s10, s10, -5 #update loop 0 counter
                  bgeu         s10, a6, sub_4_4_0_t #branch for loop 0
                  slli         a4, a1, 21
                  slli         a3, s8, 5
                  srli         s11, s1, 26
                  sub          s3, s6, s4
                  xor          t4, s7, zero
                  sll          s0, t3, s8
                  addi         a4, zero, -2 #init loop 0 counter
                  sub          s11, a6, gp
                  nop
                  srai         a1, s0, 14
                  sltiu        a3, s9, 780
                  addi         a2, zero, -11 #init loop 0 limit
sub_4_0_0_t:      sub          s6, t4, a7
                  srl          a1, a7, t0
                  nop
                  addi         a4, a4, -9 #update loop 0 counter
                  xori         t1, t1, 866
                  auipc        zero, 425668
                  srl          t2, s6, a6
                  and          ra, s5, a3
                  sltiu        s3, t6, -665
                  slli         t2, s3, 20
                  nop
                  add          a1, s7, a0
                  lui          s5, 826210
                  or           s3, s3, s4
                  sltu         gp, a5, a5
                  sltu         s0, tp, s0
                  sltiu        a3, s5, 828
                  sub          ra, ra, t2
                  slt          a0, s3, s4
                  srli         gp, a5, 18
                  beq          a4, a2, sub_4_0_0_t #branch for loop 0
                  srl          zero, s4, t0
                  slli         s11, t6, 14
                  xor          t4, t3, a0
                  andi         t3, t1, 1940
                  srl          s0, tp, s7
                  bgeu         s7, s8, 19f
                  lui          a6, 640937
                  slt          s0, a3, s8
                  sltiu        t6, a4, 1081
                  beq          s2, s10, 23f
                  sub          s8, sp, gp
                  andi         s8, a2, 1942
                  srl          s4, t0, a4
                  srli         a5, s6, 26
                  nop
19:               slti         a2, ra, -1904
                  add          zero, a7, tp
                  bne          s11, s11, 28f
                  addi         s10, a2, -127
23:               sll          s8, s2, ra
                  ori          t0, tp, -1493
                  sltiu        t4, a0, 1940
                  slti         sp, a4, -1112
                  lui          s5, 210746
28:               bne          a0, s4, 29f
29:               nop
                  beq          s10, s11, 45f
                  and          s4, t2, a0
                  andi         t4, gp, 1020
                  lui          a2, 653712
                  sub          s0, s11, t2
                  srli         s0, s5, 12
                  bltu         s0, ra, 42f
                  auipc        t0, 1040490
                  srl          t6, a4, t6
                  auipc        a5, 279864
                  xor          t2, a3, s2
                  xor          s5, a3, tp
42:               bge          a1, a3, 45f
                  srl          a7, a3, a7
                  auipc        a0, 301878
45:               bltu         a1, a1, 56f
                  bltu         s10, tp, 52f
                  srai         zero, s9, 18
                  blt          ra, t6, 60f
                  slti         zero, s3, 178
                  srli         a6, a0, 24
                  beq          s1, t5, 69f
52:               lui          s10, 1015927
                  blt          s7, a4, 68f
                  lui          s0, 92488
                  add          t6, t0, s4
56:               auipc        s3, 464990
                  xori         a1, s11, 561
                  sll          gp, t2, a1
                  bne          t6, t4, 69f
60:               srai         t6, s8, 6
                  add          s1, a7, t2
                  slt          a5, t4, s0
                  bgeu         a4, a6, 70f
                  srl          zero, t5, s11
                  xori         t4, s8, 1082
                  sub          s5, t1, t0
                  blt          gp, t3, 86f
68:               slli         a4, s8, 25
69:               sra          a6, s4, t0
70:               sltiu        a6, a2, 1533
                  bgeu         zero, s10, 91f
                  bltu         t2, a6, 89f
                  bne          t2, s3, 79f
                  xori         t4, s7, 591
                  sub          t3, t3, a3
                  slt          s4, s5, t2
                  lui          tp, 990082
                  auipc        a0, 35561
79:               bltu         t5, a2, 90f
                  slli         a6, a2, 22
                  lui          sp, 1013616
                  sub          t3, t0, s9
                  and          a3, a7, s0
                  slti         s8, t1, -1086
                  blt          s6, t0, 86f
86:               blt          s3, t6, 87f
87:               bne          s9, s6, 105f
                  sltu         s4, gp, a2
89:               sub          s1, s9, a4
90:               auipc        sp, 520549
91:               srai         s8, a6, 27
                  sltu         tp, t0, a1
                  sub          a5, a4, a4
                  bltu         s6, a4, 103f
                  beq          s2, s8, 115f
                  sltu         a4, a2, a6
                  xor          a0, a3, a3
                  sltiu        tp, a7, -1283
                  lui          a3, 89814
                  sltu         s7, s3, s11
                  bne          zero, t2, 120f
                  beq          a7, a4, 121f
103:              srl          tp, t0, s1
                  ori          a5, t4, -1462
105:              srli         gp, s5, 30
                  bltu         t1, t4, 125f
                  slt          a5, s9, s8
                  auipc        a0, 120957
                  srl          s1, t4, s4
                  srl          s6, a4, s4
                  lui          t3, 431344
                  addi         s11, tp, -718
                  lui          ra, 1046857
                  add          t4, s5, t1
115:              sll          s10, t0, t6
                  slti         gp, s8, 1335
                  addi         t4, zero, 5 #init loop 1 counter
                  andi         a2, a6, 782
                  addi         gp, zero, 967
                  auipc        ra, 370202
                  andi         a4, a5, 1308
                  xori         s3, sp, -1924
                  ori          s8, ra, -1970
                  lui          a6, 902139
                  addi         t3, zero, 12 #init loop 1 limit
                  slt          s0, a6, t5
sub_4_6_1_t:      auipc        sp, 859899
                  nop
                  slt          s8, s8, s3
                  andi         s10, t6, -1064
                  addi         t4, t4, 7 #update loop 1 counter
                  sltiu        s1, s6, 532
                  addi         s5, zero, -9 #init loop 0 counter
                  srl          a5, a0, s9
                  slli         t6, a7, 11
                  addi         a3, zero, 12 #init loop 0 limit
                  or           gp, gp, t5
sub_4_6_0_t:      auipc        a6, 65107
                  nop
                  addi         s5, s5, 7 #update loop 0 counter
                  beq          s5, a3, sub_4_6_0_t #branch for loop 0
                  add          s11, a2, s4
                  sltiu        a0, s0, -1833
                  nop
                  sltiu        a5, s9, -1936
                  nop
                  andi         s4, s1, 631
                  bne          t4, t3, sub_4_6_1_t #branch for loop 1
                  auipc        s1, 730904
                  srai         tp, a4, 3
                  bltu         s6, s3, 129f
                  add          a4, ra, tp
120:              add          tp, sp, zero
121:              andi         s0, s4, 777
                  slli         a0, s9, 19
                  slti         t2, s0, 352
                  blt          s2, ra, 134f
125:              srai         s11, a3, 6
                  lui          gp, 270995
                  srli         a2, t2, 11
                  blt          t4, t0, 143f
129:              xor          t1, a1, s7
                  srl          sp, a2, s1
                  bltu         s6, s6, 141f
                  slli         tp, ra, 25
                  srli         ra, a4, 9
134:              xor          a4, t6, zero
                  ori          s4, s9, 789
                  srai         s8, s5, 15
                  slt          t0, s1, s2
                  or           s3, a5, s5
                  add          a6, t3, s8
                  or           tp, t3, t3
141:              bgeu         s9, s5, 142f
142:              lui          a4, 277183
143:              srli         t1, a7, 11
                  sll          a6, zero, s7
                  andi         s1, a7, -1419
                  or           a5, s10, t1
                  sra          t4, s9, t4
                  slti         a5, ra, 1749
                  andi         a2, s2, 63
                  bne          s6, s8, 161f
                  bne          ra, t0, 166f
                  slt          s8, s11, a5
                  sub          s7, t1, t4
                  xor          a1, t4, a3
                  addi         s8, a3, -219
                  ori          a4, a2, -1145
                  sltiu        a5, t1, -1131
                  srli         a1, zero, 21
                  slt          s4, s7, gp
                  bne          t3, a6, 175f
161:              sltiu        s10, s0, 1384
                  sra          t4, sp, a3
                  nop
                  and          s5, s11, s5
                  add          s5, t6, s10
166:              sll          t4, s7, t3
                  addi         a0, sp, 1074
                  slti         a1, zero, -423
                  nop
                  bltu         s7, t4, 180f
                  blt          a4, t3, 174f
                  xori         s1, a0, 864
                  and          a7, t6, t3
174:              bge          t4, t6, 191f
175:              xor          tp, t2, t3
                  slt          t0, s1, gp
                  slti         a0, t3, 1144
                  or           t1, t1, t0
                  andi         a7, a6, 83
180:              bne          a2, zero, 198f
                  bne          a3, sp, 191f
                  slli         t0, a4, 17
                  sltu         a4, a6, t0
                  add          s6, s0, t2
                  beq          s11, t3, 195f
                  lui          sp, 720036
                  sltu         t2, gp, t6
                  addi         t1, zero, 6 #init loop 0 counter
                  ori          t6, t0, -1129
                  srai         sp, t3, 28
                  srai         zero, s3, 2
                  addi         a3, zero, 5 #init loop 0 limit
sub_4_3_0_t:      nop
                  srl          a0, s8, a2
                  andi         tp, s2, 1725
                  nop
                  addi         t1, t1, -4 #update loop 0 counter
                  xor          s5, t0, s9
                  auipc        s8, 439588
                  and          t3, s1, s4
                  srli         s1, sp, 22
                  slli         s6, ra, 23
                  sll          sp, a0, a2
                  lui          s1, 486282
                  bgeu         t1, a3, sub_4_3_0_t #branch for loop 0
                  srl          s4, s10, a7
                  srli         tp, t1, 6
                  auipc        s1, 763448
                  addi         s6, t4, -1557
191:              srl          a4, s0, s10
                  slli         t3, s1, 11
                  slli         s7, a6, 28
                  blt          t0, t5, 200f
195:              add          a3, sp, tp
                  bge          a5, a3, 202f
                  sra          s10, t6, a1
198:              and          a2, t3, s8
                  addi         t4, s6, -1698
200:              slti         t2, gp, -742
                  ori          s1, a6, -1770
202:              bltu         t2, a7, 221f
                  srli         gp, a0, 2
                  xor          t3, a5, a1
                  blt          t6, t2, 212f
                  slti         s3, sp, 1930
                  slt          s6, ra, zero
                  bgeu         s9, a1, 209f
209:              bge          s4, a4, 221f
                  lui          a1, 592219
                  sll          a1, s3, ra
212:              bgeu         zero, t2, 221f
                  addi         t3, s6, 10
                  and          a5, t5, a6
                  blt          s4, t1, 234f
                  bltu         a4, a4, 217f
217:              bge          sp, ra, 224f
                  srl          a3, t5, t6
                  sltiu        s1, s9, 151
                  sub          s10, s5, s4
221:              srl          t2, a5, tp
                  nop
                  beq          sp, s8, 242f
224:              sltiu        s5, t6, 946
                  xori         a2, s6, 190
                  srai         s11, s5, 9
                  srli         s10, s10, 8
                  bltu         t1, a4, 243f
                  sra          gp, ra, s10
                  ori          a1, s0, -676
                  bltu         a6, t0, 251f
                  blt          sp, s10, 238f
                  beq          t2, t2, 253f
234:              srli         s5, s3, 24
                  bne          sp, s7, 253f
                  slli         s5, sp, 0
                  nop
238:              xori         t4, t5, -1783
                  sltiu        s6, a2, -98
                  slt          s7, a6, a5
                  auipc        ra, 395760
242:              slli         s11, s1, 22
243:              srai         t2, sp, 27
                  sra          a0, t4, tp
                  slli         a2, a4, 24
                  bgeu         t0, t2, 265f
                  srli         a5, t5, 23
                  bltu         ra, t3, 259f
                  srli         a5, a1, 22
                  slti         t4, a5, -203
251:              blt          sp, a4, 262f
                  andi         a4, a1, 2031
253:              ori          s5, a2, -1264
                  sltu         a0, s4, s3
                  auipc        sp, 789005
                  lui          s6, 546489
                  bltu         s3, s11, 258f
258:              addi         tp, a5, 2006
259:              bge          a2, t1, 270f
                  bgeu         s4, zero, 267f
                  sra          ra, a3, s3
262:              srai         s8, t1, 16
                  srai         s5, t4, 21
                  xor          sp, t4, s8
265:              sll          s5, a6, s4
                  xori         s3, t2, -1726
267:              auipc        s0, 396526
                  or           t3, s3, a2
                  bltu         s9, t6, 275f
270:              slli         a2, t4, 4
                  srai         s3, a0, 29
                  add          s4, s1, zero
                  slt          t0, s1, a0
                  slli         s4, a2, 26
275:              auipc        a1, 249362
                  andi         a5, s7, -94
                  xor          t1, sp, t1
                  beq          t4, s6, 287f
                  sra          t4, a7, a3
                  bge          a2, s4, 286f
                  addi         s0, s10, 985
                  add          a7, a4, s3
                  bne          s9, t3, 302f
                  lui          t2, 898876
                  sltiu        t3, s6, 745
286:              ori          s5, s9, -1872
287:              ori          s6, s2, -1930
                  bne          ra, t3, 289f
289:              sll          s3, tp, a4
                  addi         s5, t5, -148
                  sra          a7, t4, a4
                  sltu         s8, t1, a7
                  bne          t6, s0, 294f
294:              lui          s3, 418074
                  beq          s9, a6, 305f
                  sub          t0, s0, gp
                  beq          s7, s6, 317f
                  sltu         sp, t0, t3
                  or           a0, s7, s11
                  xori         gp, s8, 1178
                  bltu         a7, a4, 307f
302:              xori         a3, s10, 1453
                  auipc        t1, 291988
                  nop
305:              or           zero, sp, a0
                  beq          s8, s1, 323f
307:              xori         s4, a7, -1594
                  and          a1, s8, s2
                  nop
                  or           gp, sp, a0
                  addi         a1, t4, 1190
                  auipc        a3, 700951
                  slli         s11, s11, 21
                  slt          s6, s7, sp
                  srli         t1, s2, 4
                  nop
317:              bgeu         tp, s2, 329f
                  srl          t6, a2, s5
                  lui          zero, 276838
                  add          s5, sp, a0
                  auipc        a1, 65085
                  srli         s11, ra, 0
323:              bne          s4, t3, 338f
                  slli         t0, s7, 13
                  beq          a2, gp, 335f
                  add          sp, a0, t3
                  srl          a2, ra, s1
                  slli         s10, a6, 30
329:              blt          t3, t4, 339f
                  bne          t5, s1, 341f
                  auipc        s3, 795765
                  srl          tp, a6, s5
                  beq          t2, tp, 344f
                  sll          s3, a4, s1
335:              slt          s6, a7, s3
                  or           t2, a4, a7
                  srai         t2, ra, 26
338:              xor          t6, a6, t5
339:              and          tp, s8, t3
                  xori         s7, a6, 655
341:              sub          sp, a4, gp
                  ori          t1, tp, -1472
                  xori         s8, t0, 672
344:              add          a3, a2, s5
                  xori         gp, a7, 874
                  xor          s0, s4, a7
                  add          t3, s11, t5
                  sra          s5, tp, zero
                  bge          tp, t6, 368f
                  blt          a5, ra, 353f
                  bne          a7, a2, 370f
                  srl          gp, gp, s2
353:              bne          sp, a3, 360f
                  bge          s9, s3, 374f
                  blt          a3, a7, 373f
                  or           a5, a3, a1
                  ori          s5, a4, 40
                  sltiu        sp, gp, 222
                  xor          s10, t2, a2
360:              xor          t2, s2, t3
                  blt          s4, zero, 380f
                  slt          t3, a7, t5
                  andi         s1, s6, -371
                  xori         t4, t4, 1620
                  sltu         s3, s6, s1
                  slti         s6, s0, 1802
                  lui          t6, 160123
368:              addi         s3, s9, -1334
                  sltu         t4, t2, s7
370:              addi         s1, t0, 1388
                  beq          s9, s0, 386f
                  xori         s7, t5, -1322
373:              bgeu         t3, s6, 391f
374:              bne          s10, tp, 389f
                  xor          ra, sp, s9
                  slli         t2, s7, 31
                  and          s8, tp, t6
                  beq          t1, s9, 388f
                  sltu         a7, s3, s4
380:              xori         gp, s2, -103
                  bne          s10, t6, 391f
                  srl          t1, s11, t0
                  nop
                  addi         s4, t6, 990
                  sltu         s6, s5, a6
386:              sub          zero, a3, a6
                  bgeu         zero, t1, 402f
388:              blt          t5, tp, 399f
389:              bne          a6, gp, 396f
                  sub          tp, t3, a0
391:              srai         s3, gp, 13
                  lui          a3, 691202
                  andi         s8, s9, 506
                  sltu         a1, t4, tp
                  andi         s6, s1, -244
396:              bgeu         t6, t5, 405f
                  sll          t6, s5, t4
                  srai         s5, gp, 20
399:              sltiu        t3, ra, -1855
                  bgeu         a3, tp, 406f
                  bne          t6, s8, 418f
402:              andi         s5, a5, -1223
                  srl          sp, s1, a6
                  or           t2, s10, a0
405:              bge          a5, s7, 423f
406:              srai         tp, t6, 27
                  sub          t6, a4, a3
                  nop
                  and          t1, s10, ra
                  lui          gp, 794395
                  sra          tp, a1, a5
                  sltiu        s0, a1, 1378
                  and          a7, a1, t0
                  ori          t2, s7, -986
                  or           a6, a5, s0
                  sltiu        a5, tp, -492
                  or           a4, s5, t4
418:              and          s3, a7, s0
                  andi         s7, a7, -1658
                  bge          gp, tp, 421f
421:              addi         ra, s3, 1249
                  sltiu        t3, a0, 1347
423:              slti         s10, a6, -824
                  bne          a5, a5, 434f
                  bgeu         t1, a6, 428f
                  bne          t2, a1, 437f
                  xor          a0, a1, s10
428:              lui          s6, 550220
                  andi         t2, s2, 1639
                  xori         t4, s3, -1541
                  srl          a3, t6, s8
                  or           s0, s10, t1
                  or           tp, s6, s6
434:              srl          a4, t6, a3
                  slt          zero, zero, s5
                  slt          s11, zero, a4
437:              slt          tp, a6, t2
                  lw           s0, 4(t5)
                  andi         a7, s6, -1020
                  addi         t5, t5, 48
                  srai         s3, s2, 1
                  srl          zero, s6, t3
                  srli         tp, a2, 17
                  sll          t4, a5, zero
                  add          t4, tp, a5
                  and          sp, t0, zero
621:              addi x23, x8, 0
621:              jalr x23, x23, 0
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
.align           2
mtvec_handler:    
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
                  add x25, x30, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x24, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x24, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x24, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x24, x4, ecall_handler
                  li x4, 0x1
                  beq x24, x4, instr_fault_handler
                  li x4, 0x5
                  beq x24, x4, load_fault_handler
                  li x4, 0x7
                  beq x24, x4, store_fault_handler
                  li x4, 0xc
                  beq x24, x4, pt_fault_handler
                  li x4, 0xd
                  beq x24, x4, pt_fault_handler
                  li x4, 0xf
                  beq x24, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

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
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x30, x25, zero
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
                  add x30, x25, zero
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
                  add x30, x25, zero
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
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x30, x25, zero
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
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x30, x25, zero
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
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x30, x25, zero
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
