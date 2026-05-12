.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 1
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0xfeb51c58
                  li x1, 0x4
                  li x2, 0x1
                  li x3, 0x0
                  li x4, 0x3a4eca68
                  li x5, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0x5ee536c4
                  li x10, 0xd6a39ed9
                  li x11, 0x80000000
                  li x12, 0x7
                  li x13, 0x3c2d68ec
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0xfe126bdf
                  li x17, 0xa
                  li x18, 0x0
                  li x19, 0x3
                  li x20, 0xfdd68c85
                  li x21, 0x5bc5a0ff
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xf
                  li x25, 0xa
                  li x26, 0xf54927f7
                  li x28, 0x80000000
                  li x29, 0x5859eb9e
                  li x30, 0x9
                  li x31, 0x0
                  la x6, user_stack_end
main:             andi         t2, tp, 1608
                  slti         s2, t4, 551
                  srl          t0, a5, s7
                  xori         a0, s0, -608
                  srl          s8, s10, s1
                  la           t6, sub_2
                  add          a4, s5, s1
                  srai         zero, s2, 12
                  or           a1, s0, t4
                  slli         s2, t6, 27
                  addi         t6, t6, -710
                  bgeu         s11, s2, main_j2 #branch to jump instr
                  srli         t3, s8, 26
main_j2:          jalr         ra, t6, 711 #jump main -> sub_2
                  lui          t4, 340227
                  sltiu        a5, t2, -1077
                  sltiu        s8, gp, -1141
                  slli         s5, t4, 0
                  la           a6, sub_3
                  sub          a4, a5, t6
                  andi         s2, zero, 1256
                  auipc        s4, 768880
                  andi         s10, a6, -1288
                  srl          a1, s6, a4
                  addi         a6, a6, 6
                  slt          t0, s9, t3
main_j3:          jalr         ra, a6, -6 #jump main -> sub_3
                  slli         t2, a3, 25
                  srl          s9, t0, a1
                  la           t3, sub_3
                  andi         t2, tp, -1238
                  srl          a2, t4, t2
                  nop
                  addi         t3, t3, 75
                  slt          a5, a4, sp
                  ori          a2, s11, 292
main_j4:          jalr         ra, t3, -74 #jump main -> sub_3
                  addi         ra, zero, -4 #init loop 1 counter
                  addi         t6, zero, 3 #init loop 1 limit
main_0_1_t:       slti         s10, t3, -1162
                  and          s3, t3, a2
                  and          s5, sp, t3
                  srl          t0, a3, s2
                  addi         ra, ra, 3 #update loop 1 counter
                  and          s0, s10, s5
                  addi         s2, zero, -7 #init loop 0 counter
                  srl          s9, a2, s6
                  addi         s8, zero, -3 #init loop 0 limit
main_0_0_t:       slt          a6, s7, s7
                  or           sp, s6, a0
                  addi         s2, s2, 2 #update loop 0 counter
                  sll          s6, a0, t4
                  slt          s5, t4, t5
                  beq          s2, s8, main_0_0_t #branch for loop 0
                  xor          a0, s9, s1
                  bltu         ra, t6, main_0_1_t #branch for loop 1
                  sltiu        sp, a5, -328
                  slti         s0, a2, 734
                  bge          t4, tp, 4f
                  sltu         gp, a4, tp
                  srl          t3, t6, s3
4:                sltu         t6, zero, s6
                  ori          a0, a0, 1002
                  srli         a5, s3, 7
                  andi         s10, a5, -256
                  sll          s1, s2, s3
                  lui          t2, 223709
                  bge          a2, tp, 23f
                  nop
                  auipc        a1, 859050
                  lui          ra, 13511
                  add          s3, a1, a7
                  addi         a6, s4, 1201
                  lui          s7, 516941
                  slt          t4, s10, ra
                  sltu         zero, t4, t4
                  sub          a0, s8, s8
                  lui          t4, 502525
                  bne          s11, t2, 40f
                  srli         zero, a0, 12
23:               blt          s5, s9, 39f
                  slt          a5, s2, tp
                  bne          sp, zero, 34f
                  srl          s5, s6, s4
                  add          a6, t1, t1
                  and          t6, t5, zero
                  slt          s1, s10, t0
                  slti         a7, t3, 28
                  addi         s8, t0, 1281
                  sltiu        t3, s10, -256
                  sra          a0, t0, s9
                  la           s4, sub_1
                  addi         s4, s4, -149
                  sra          s7, ra, tp
                  ori          s7, s8, -1314
                  xor          a0, sp, s2
main_j1:          jalr         ra, s4, 150 #jump main -> sub_1
                  srl          a2, tp, s6
                  blt          t2, s2, 41f
                  sltu         tp, gp, a6
34:               beq          a7, a7, 36f
                  add          s7, s10, s8
36:               add          zero, a6, s2
                  bltu         tp, s0, 51f
                  auipc        zero, 692572
39:               blt          a4, gp, 49f
40:               sub          a3, gp, t5
41:               or           a6, s5, a0
                  andi         t4, s9, 687
                  bge          a6, s0, 48f
                  slt          a1, a1, a6
                  or           s3, s3, a2
                  srl          a7, s4, t6
                  xori         zero, zero, -1124
48:               bne          s7, s8, 56f
49:               slli         sp, t0, 31
                  srli         ra, sp, 2
51:               lui          s6, 395840
                  sltu         s10, s11, ra
                  srai         s0, s2, 30
                  beq          sp, ra, 56f
                  srli         s3, ra, 28
56:               xori         s8, s11, 1808
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            srl          s9, s7, s1
                  or           s7, s2, a3
                  bltu         t5, tp, sub_5_stack_p
                  xor          a1, zero, a4
                  or           t0, t4, ra
                  slti         a4, a1, 770
                  sltu         s1, a3, a7
                  slti         a2, ra, -381
                  addi         a4, s1, -239
sub_5_stack_p:    addi         t1, t1, -52
                  andi         zero, t1, 786
                  sw           ra, 4(t1)
                  andi         s7, s11, 466
                  addi         t2, zero, -2 #init loop 1 counter
                  andi         sp, t1, 1107
                  addi         s9, zero, 14 #init loop 1 limit
sub_5_0_1_t:      nop
                  slt          t0, s0, s0
                  addi         t2, t2, 2 #update loop 1 counter
                  andi         s3, s8, 323
                  addi         t4, zero, -4 #init loop 0 counter
                  addi         a4, zero, -20 #init loop 0 limit
                  sltu         s1, s0, a2
sub_5_0_0_t:      nop
                  addi         t4, t4, -4 #update loop 0 counter
                  bne          t4, a4, sub_5_0_0_t #branch for loop 0
                  sltiu        a2, s11, 1453
                  beq          t2, s9, sub_5_0_1_t #branch for loop 1
                  xor          a7, s7, s0
                  addi         gp, zero, -8 #init loop 0 counter
                  auipc        s9, 123237
                  addi         t3, zero, -12 #init loop 0 limit
                  lui          a2, 473350
                  andi         s1, s7, -583
                  nop
                  xori         s0, t2, -1790
                  sra          a7, ra, t1
sub_5_1_0_t:      or           s10, sp, t0
                  srl          ra, s6, s7
                  xori         t4, zero, -1060
                  and          ra, a6, t3
                  addi         s10, t4, -662
                  slti         a1, t2, 810
                  addi         gp, gp, -2 #update loop 0 counter
                  andi         s9, t4, -916
                  sltu         a5, a4, a7
                  sltiu        s1, s2, 1223
                  or           t6, t3, s5
                  sub          a0, s11, a7
                  sltiu        s4, a5, -1411
                  add          a2, a1, zero
                  bne          gp, t3, sub_5_1_0_t #branch for loop 0
                  slt          a5, s6, sp
                  addi         s0, zero, -6 #init loop 0 counter
                  addi         a7, zero, -11 #init loop 0 limit
                  sll          a2, a6, a2
sub_5_3_0_t:      or           ra, ra, a7
                  addi         s0, s0, -5 #update loop 0 counter
                  lui          sp, 582546
                  sltu         a3, a0, gp
                  xori         gp, t6, 321
                  add          tp, a5, s2
                  auipc        zero, 672893
                  bge          s0, a7, sub_5_3_0_t #branch for loop 0
                  slt          a3, a5, a7
                  blt          s7, s5, 6f
                  sra          a6, a0, t3
                  xor          tp, t1, t4
                  slt          s6, t1, s0
                  bne          s10, ra, 11f
                  sltiu        s7, s5, -1663
6:                blt          a6, gp, 13f
                  nop
                  slli         a3, s1, 26
                  srl          a7, sp, a5
                  srl          a1, s9, s11
11:               slt          a3, s0, s6
                  xori         t6, zero, 313
13:               slli         s7, a0, 13
                  lui          zero, 817578
                  sll          a1, s3, zero
                  lui          t0, 494895
                  and          s2, s8, t5
                  nop
                  andi         t2, t6, -1595
                  slt          t6, a3, s10
                  xor          s0, s8, s9
                  or           a5, s0, t2
                  addi         t2, a5, 1651
                  sra          s1, a7, s2
                  nop
                  beq          s7, s6, 29f
                  srli         s7, s9, 31
                  sltiu        a7, s8, -625
29:               sltiu        s4, s0, -906
                  ori          s5, a4, -1437
                  srli         s7, s6, 17
                  nop
                  srai         a0, s10, 16
                  xori         a0, s7, -1600
                  blt          a4, t1, 45f
                  xor          a0, a1, a5
                  bgeu         s1, t2, 40f
                  or           tp, t4, a4
                  bge          a2, s0, 41f
40:               bltu         s4, t3, 49f
41:               blt          tp, s4, 42f
42:               and          s9, s0, a2
                  sub          a1, s11, s8
                  and          s0, t5, sp
45:               or           a6, s8, s2
                  and          s10, s10, s10
                  slli         s1, s6, 30
                  slti         t6, s8, -1790
49:               sra          gp, s0, s10
                  sub          zero, s8, t6
                  srli         a5, s7, 22
                  slti         gp, t6, 1022
                  bne          tp, zero, 60f
                  ori          t6, a6, 178
                  addi         a3, sp, -1047
                  bne          a0, a2, 66f
                  bne          s1, s9, 68f
                  slt          t2, s1, sp
                  xori         a7, a2, -1173
60:               slt          a2, a3, a0
                  bne          sp, s8, 75f
                  bgeu         t0, t5, 64f
                  auipc        a1, 376792
64:               ori          s7, s5, 579
                  srli         sp, s6, 14
66:               bgeu         a5, a0, 82f
                  slli         s1, s8, 8
68:               srai         s4, s1, 18
                  or           s1, t1, t1
                  xori         zero, s6, 674
                  sll          a0, s0, a1
                  srl          a4, s1, s8
                  xori         gp, t0, -1928
                  bne          s0, s11, 94f
75:               add          s2, s5, gp
                  bge          s4, a5, 77f
77:               bgeu         a3, t3, 90f
                  blt          s10, s2, 84f
                  add          a5, t4, tp
                  and          s0, s10, s0
                  nop
82:               srli         a5, a7, 30
                  blt          s7, tp, 92f
84:               bne          a3, t5, 95f
                  bltu         s10, t4, 94f
                  beq          a3, t4, 95f
                  beq          t1, s5, 90f
                  ori          a4, a3, -1421
                  sll          tp, t2, sp
90:               xori         s10, a4, -530
                  sra          s3, a6, s11
92:               blt          t5, s1, 103f
                  sll          t4, s2, s10
94:               slti         a2, sp, 43
95:               sltu         a5, a0, s6
                  xor          a5, s3, a7
                  lui          t0, 236444
                  slt          s5, t5, a4
                  addi         s4, zero, -4 #init loop 0 counter
                  srl          a0, s2, s2
                  addi         t6, zero, -2 #init loop 0 limit
sub_5_2_0_t:      xori         sp, t4, 1296
                  srl          t3, s5, a5
                  slli         a3, s2, 4
                  addi         s4, s4, 1 #update loop 0 counter
                  andi         tp, t3, 1887
                  auipc        s7, 817224
                  xori         sp, t1, -1407
                  sltiu        a5, gp, 380
                  srai         s9, s10, 25
                  bne          s4, t6, sub_5_2_0_t #branch for loop 0
                  ori          s9, a3, 8
                  blt          s8, s8, 117f
                  blt          gp, gp, 112f
                  bne          t4, s5, 106f
                  andi         s6, s0, -677
103:              add          s1, a3, a4
                  or           tp, s10, s5
                  lui          s0, 237178
106:              xor          a3, t4, tp
                  sltu         a5, s3, zero
                  auipc        s7, 881523
                  sll          a6, t2, ra
                  sll          s0, t4, t4
                  srli         a3, t4, 15
112:              sra          a2, s1, tp
                  lui          s5, 266230
                  and          zero, zero, gp
                  xor          s9, s1, tp
                  or           a0, a6, s5
117:              ori          s2, t3, -1983
                  slli         sp, a2, 21
                  ori          ra, a0, 61
                  sra          gp, t6, a3
                  add          t3, a3, s7
                  bgeu         a6, zero, 142f
                  slti         t6, sp, -842
                  sltiu        t3, t1, -299
                  ori          a5, s6, -1856
                  xor          t4, sp, a1
                  slti         t6, a4, 1906
                  srai         s4, ra, 30
                  lui          s1, 262921
                  sll          s5, s3, a0
                  srai         t0, sp, 15
                  and          t3, s8, s10
                  slti         a5, t3, 244
                  auipc        tp, 170882
                  beq          t0, ra, 148f
                  slli         s3, s7, 18
                  xor          a4, t6, t6
                  nop
                  bgeu         a4, s2, 146f
                  and          s10, a4, sp
                  xori         s1, t2, 503
142:              and          s4, t6, a6
                  slt          s3, t5, s3
                  bgeu         t6, s10, 153f
                  nop
146:              slli         s1, s1, 6
                  ori          a6, a7, -778
148:              bne          t5, s2, 155f
                  bge          t4, a0, 162f
                  sll          a3, a3, t2
                  xori         a4, sp, 1707
                  slt          a2, s6, a5
153:              sltu         ra, ra, s10
                  blt          a4, s5, 164f
155:              nop
                  sltiu        s8, s4, 1877
                  bne          s7, s10, 158f
158:              beq          gp, a5, 171f
                  srl          s4, t3, t0
                  add          a7, a6, s1
                  auipc        gp, 383508
162:              xor          t0, a0, t3
                  andi         gp, s1, -991
164:              xori         s0, t0, -1769
                  bltu         t6, s3, 176f
                  bltu         t5, sp, 171f
                  nop
                  srai         tp, a4, 9
                  beq          t5, s1, 189f
                  addi         gp, s10, -462
171:              sub          s3, t1, ra
                  srli         t3, t2, 28
                  slt          sp, t3, t0
                  and          zero, a5, t6
                  srai         s9, t2, 16
176:              addi         s2, s4, -1326
                  and          gp, a0, s5
                  sub          tp, t2, s11
                  sll          s3, ra, t1
                  slli         s5, s6, 19
                  bne          a3, s6, 184f
                  sll          s3, s9, s1
                  and          t6, s2, a3
184:              srl          ra, s9, a0
                  lui          t6, 661256
                  bne          s5, s7, 197f
                  blt          ra, s5, 198f
                  add          a4, a0, tp
189:              srai         s9, a7, 13
                  bgeu         gp, a7, 208f
                  sltiu        s3, s1, 1760
                  bltu         a7, t1, 201f
                  xor          s2, a4, s2
                  addi         zero, ra, 378
                  or           s6, t0, s2
                  addi         s10, t2, -1576
197:              slti         a4, s9, -1036
198:              slt          t0, s3, t4
                  sltu         s1, s3, s7
                  blt          t4, a4, 216f
201:              beq          s2, s3, 203f
                  sub          sp, s1, s9
203:              ori          s9, a7, 622
                  ori          a5, t5, 1082
                  or           t0, s5, s6
                  bge          s8, s2, 212f
                  sub          s5, a7, ra
208:              sltiu        zero, s10, 2031
                  beq          a2, s6, 212f
                  bgeu         ra, s6, 211f
211:              andi         ra, gp, 1683
212:              blt          s4, s2, 214f
                  lui          a0, 124135
214:              sltu         tp, s3, ra
                  sub          s0, a0, t3
216:              srai         s1, tp, 0
                  sltiu        a0, s2, -1282
                  or           a7, ra, t0
                  xor          s9, t3, s9
                  srl          s6, ra, t0
                  srl          t6, sp, t4
                  ori          s9, s3, -1577
                  lw           ra, 4(t1)
                  xori         s4, t3, -798
                  sll          zero, t2, a7
                  slt          s1, a0, t3
                  slti         s6, zero, -790
                  addi         t1, t1, 52
                  slti         s8, a3, -1041
309:              addi x16, x1, 1
309:              jalr x16, x16, 0
sub_3:            andi         zero, s4, 1453
                  addi         t1, t1, -16
                  sra          tp, t2, s11
                  sw           ra, 4(t1)
                  slt          s10, s11, s6
                  addi         s4, zero, 2 #init loop 0 counter
                  srl          t3, a3, a3
                  lui          a1, 998790
                  addi         a7, zero, 10 #init loop 0 limit
                  sra          s9, s2, s10
                  or           gp, t6, t0
                  srl          a2, t5, s9
                  sub          a1, t6, s7
sub_3_2_0_t:      andi         ra, a4, -1585
                  and          tp, s1, s8
                  nop
                  ori          zero, a1, 1499
                  slti         tp, a2, 1300
                  addi         s4, s4, 10 #update loop 0 counter
                  ori          a1, t5, 200
                  srl          s9, s6, sp
                  bltu         s4, a7, sub_3_2_0_t #branch for loop 0
                  addi         a5, s1, 1421
                  addi         s1, zero, 3 #init loop 0 counter
                  ori          a5, t6, 1612
                  srli         t6, s3, 27
                  sll          t6, a1, gp
                  auipc        s10, 245438
                  and          t3, a0, s6
                  slli         s10, t0, 27
                  slti         a1, sp, -252
                  sub          a2, t6, s8
                  sltu         s7, a3, s10
                  sltu         s2, gp, s4
                  xor          s10, a7, s3
                  addi         a6, zero, 15 #init loop 0 limit
                  sra          a0, t0, a0
sub_3_3_0_t:      xor          s6, ra, a0
                  addi         s1, s1, 6 #update loop 0 counter
                  auipc        s10, 994481
                  srli         t2, a1, 5
                  slli         t0, t2, 22
                  xori         a7, t2, 1956
                  and          s5, a5, s1
                  beq          s1, a6, sub_3_3_0_t #branch for loop 0
                  auipc        s6, 70623
                  addi         a6, zero, 10 #init loop 0 counter
                  addi         s7, zero, 10 #init loop 0 limit
sub_3_0_0_t:      sub          a7, t2, a6
                  ori          a3, s4, -698
                  addi         a6, a6, -9 #update loop 0 counter
                  bgeu         a6, s7, sub_3_0_0_t #branch for loop 0
                  add          s5, t1, a0
                  bgeu         a0, t0, 10f
                  srai         s5, t6, 31
                  bge          t0, s11, 14f
                  bne          zero, a7, 12f
                  beq          s0, a1, 22f
                  nop
                  sltu         s6, s5, a2
                  sra          a3, t3, s10
                  slti         sp, a3, -330
                  sltu         tp, s7, s6
10:               nop
                  srl          a5, a0, s6
12:               addi         s8, a1, 1190
                  slti         s4, a0, -100
14:               bge          a3, t0, 22f
                  blt          t4, t1, 34f
                  add          a6, tp, t6
                  xori         s9, t4, -447
                  and          a5, t2, s1
                  xori         s4, zero, -1406
                  nop
                  andi         t6, t4, -1959
22:               andi         s3, zero, -807
                  bgeu         t6, sp, 25f
                  bge          t1, s4, 36f
25:               andi         t4, t6, -173
                  sra          s0, t6, a0
                  slti         a6, tp, 1231
                  sra          zero, s2, a2
                  ori          tp, gp, 1679
                  xori         t3, t3, -167
                  nop
                  blt          a5, t4, 41f
                  bgeu         t6, ra, 37f
34:               bltu         zero, t5, 52f
                  ori          zero, a5, -1507
36:               sra          s10, t6, s2
37:               beq          a0, s4, 51f
                  srai         ra, tp, 3
                  slti         zero, s1, 1841
                  slli         s9, a6, 3
41:               ori          a3, a7, 1326
                  bge          a3, s9, 47f
                  bltu         s10, zero, 61f
                  ori          a6, s0, 724
                  slli         t0, s2, 10
                  lui          s0, 857250
47:               bgeu         a0, a4, 52f
                  bgeu         a5, t2, 52f
                  xor          a3, t2, a7
                  nop
51:               lui          t6, 170349
52:               slti         s3, a1, 725
                  or           s5, gp, t6
                  srl          a0, t4, zero
                  bltu         a2, s9, 64f
                  sra          s4, t4, a5
                  sltu         s10, a4, ra
                  xori         s4, s6, 845
                  auipc        sp, 1008084
                  bge          zero, s7, 63f
61:               srai         a3, s11, 19
                  srl          s5, s0, s0
63:               nop
64:               srai         a0, a2, 1
                  ori          tp, a4, 882
                  sub          s0, tp, a7
                  xori         s4, s6, -1627
                  add          s2, a1, t4
                  sub          s4, t0, a6
                  or           s6, s9, a0
                  addi         t0, zero, -9 #init loop 0 counter
                  nop
                  slti         s5, t0, 52
                  sub          a7, a6, s3
                  addi         s7, zero, 14 #init loop 0 limit
                  ori          zero, zero, 1620
                  sltiu        a3, a2, 840
sub_3_1_0_t:      addi         s5, s11, 988
                  srai         a1, s7, 11
                  slti         a3, s8, -1045
                  addi         t6, s1, -652
                  addi         t0, t0, 7 #update loop 0 counter
                  sltiu        s6, s11, -195
                  sra          s10, s3, t6
                  nop
                  blt          t0, s7, sub_3_1_0_t #branch for loop 0
                  srai         t3, t4, 13
                  bgeu         s10, s1, 80f
                  blt          a7, a2, 90f
                  and          gp, a5, s10
                  bge          t0, t2, 92f
                  nop
                  addi         s8, a0, -1414
                  slti         t3, a2, 966
                  srai         s7, t3, 15
                  slti         s9, s10, -647
80:               sltiu        s0, s2, -168
                  or           s5, t6, a7
                  bgeu         a1, a0, 87f
                  sltu         t0, a4, s5
                  slti         s10, s4, -1699
                  addi         s8, s2, 526
                  sltu         a3, a1, a4
87:               nop
                  xor          t2, s7, s3
                  bgeu         a0, s11, 101f
90:               or           s9, s8, t4
                  srai         t0, t5, 9
92:               slli         s3, a5, 25
                  add          t2, sp, s7
                  lui          s5, 836495
                  sra          ra, s3, a7
                  andi         s3, s8, -1555
                  srli         t4, s6, 30
                  xori         s8, s10, -1018
                  and          t0, s1, sp
                  slli         s9, a1, 31
101:              sra          zero, a3, s11
                  xor          a1, s4, s3
                  xori         a4, t6, -970
                  xor          s6, s4, t4
                  bgeu         zero, s9, 123f
                  andi         s9, s8, 770
                  sltu         s6, sp, a2
                  xori         tp, s6, 1363
                  or           a5, sp, s2
                  andi         a7, s1, -114
                  sltiu        a4, zero, -725
                  blt          s11, ra, 122f
                  xori         s0, a3, -946
                  bltu         t1, a7, 118f
                  sub          s10, s4, s6
                  bltu         a4, s6, 125f
                  lui          s6, 874190
118:              xori         t0, s1, 1057
                  xori         ra, ra, -1568
                  bne          s0, s2, 140f
                  slli         ra, a1, 23
122:              sll          s2, a4, sp
123:              bge          gp, s0, 142f
                  xori         s0, a4, 510
125:              beq          s1, s4, 126f
126:              slt          sp, t5, t3
                  srli         s5, a1, 17
                  xori         a4, a4, 1224
                  andi         s8, a0, -256
                  slt          t2, s11, a1
                  add          a6, zero, sp
                  addi         s0, s2, 639
                  bne          t6, s9, 145f
                  auipc        s8, 671573
                  or           t6, s10, a7
                  bge          zero, zero, 140f
                  slt          a3, t6, s0
                  nop
                  or           s2, t5, a2
140:              srl          a6, tp, s6
                  slt          s2, t5, a6
142:              srli         t6, a2, 5
                  sra          t4, a2, sp
                  xori         a4, a1, 1206
145:              bgeu         s9, s4, 149f
                  and          a5, s7, a3
                  sub          t2, s5, t6
                  lui          a7, 1024968
149:              sltiu        t3, ra, -1978
                  sub          a7, s1, a1
                  andi         s1, a7, -653
                  sltu         a6, ra, a7
                  xor          t3, s9, s8
                  srl          t0, s11, s11
                  add          s4, t6, a7
                  srl          s3, t1, zero
                  bltu         t0, t3, 176f
                  sltu         s1, a3, s9
                  xor          a5, s3, a2
                  slti         a3, s5, 1751
                  sltiu        a5, a6, 60
                  sll          sp, s2, t0
                  or           s3, s2, s0
                  bgeu         a1, s10, 184f
                  xori         a7, tp, 338
                  bgeu         s6, s9, 171f
                  addi         s0, zero, -1071
                  sll          s6, s4, s10
                  xori         s1, a1, 1240
                  or           s0, s2, a2
171:              and          s9, s11, a0
                  sub          t4, t1, a0
                  xor          zero, a6, s11
                  andi         a6, s10, -1620
                  srai         t6, t0, 19
176:              sll          t3, a5, a4
                  lui          t6, 538748
                  xor          t2, ra, t0
                  bge          t3, s6, 189f
                  add          s0, t6, s10
                  auipc        a4, 298650
                  auipc        s3, 30745
                  srai         a5, s9, 7
184:              slli         ra, a0, 26
                  or           s5, s6, s3
                  blt          zero, t5, 187f
187:              ori          a7, s10, -763
                  slli         s10, s11, 28
189:              slli         s2, a5, 1
                  ori          s7, t2, 1553
                  or           t6, s7, s7
                  sltu         a7, t2, tp
                  addi         s2, ra, 122
                  sll          s6, gp, a7
                  sltu         s7, t5, s9
                  srli         ra, t4, 22
                  srl          ra, t4, a4
                  srai         gp, zero, 1
                  srai         s7, ra, 27
                  blt          s10, s8, 209f
                  and          t3, t5, tp
                  bge          t0, t6, 216f
                  slt          s2, t0, tp
                  xori         a7, s3, -1776
                  srli         zero, sp, 7
                  bgeu         a7, t5, 219f
                  xor          tp, t1, t2
                  xor          t2, s0, s9
209:              sll          a3, t3, a1
                  or           s10, a0, a4
                  blt          t5, a6, 219f
                  sltiu        zero, t4, 505
                  xori         s7, t0, -1518
                  beq          s3, s5, 219f
                  nop
216:              srl          a2, ra, s4
                  bltu         a6, a1, 219f
                  and          a0, t0, a1
219:              lui          a3, 812241
                  sltiu        sp, gp, 700
                  lw           ra, 4(t1)
                  sltu         s6, tp, t2
                  addi         t1, t1, 16
                  sub          s7, a5, s7
                  sra          s6, t4, s6
                  auipc        a1, 699317
297:              addi x7, x1, 1
297:              jalr x7, x7, 0
sub_4:            bge          t1, s5, sub_4_stack_p
                  and          a2, t4, t0
                  sra          t6, zero, zero
sub_4_stack_p:    addi         t1, t1, -52
                  srli         t2, a6, 15
                  srai         a2, ra, 12
                  sw           ra, 4(t1)
                  sltu         a7, t5, a1
                  auipc        tp, 58031
                  addi         a3, zero, 4 #init loop 1 counter
                  addi         s5, zero, 16 #init loop 1 limit
                  add          s0, s8, a1
                  addi         tp, zero, -2012
                  sltiu        a1, t5, -1321
                  sra          t2, t3, a2
sub_4_0_1_t:      slti         a0, s1, -2000
                  srai         s1, t0, 1
                  slti         s4, a2, 1371
                  addi         a3, a3, 7 #update loop 1 counter
                  sub          tp, s9, tp
                  ori          s7, s10, 909
                  nop
                  addi         a5, zero, 1 #init loop 0 counter
                  srli         s7, a0, 3
                  srli         zero, s1, 21
                  addi         t3, zero, -3 #init loop 0 limit
                  xor          s9, s2, a6
                  sll          s4, a7, tp
sub_4_0_0_t:      slt          s1, t4, t5
                  sll          s3, s9, s8
                  addi         a5, a5, -2 #update loop 0 counter
                  nop
                  bne          a5, t3, sub_4_0_0_t #branch for loop 0
                  sltu         s7, gp, t3
                  srai         s9, s9, 4
                  slt          s10, s3, s2
                  nop
                  blt          a3, s5, sub_4_0_1_t #branch for loop 1
                  add          s7, s5, t5
                  addi         s8, zero, -5 #init loop 1 counter
                  xori         tp, a2, 1288
                  addi         t6, s10, 1096
                  sltu         sp, a7, zero
                  addi         t3, zero, -11 #init loop 1 limit
                  slli         a4, gp, 25
sub_4_7_1_t:      slti         s5, s11, -1943
                  sub          s7, s5, s8
                  andi         t2, a1, -1169
                  xor          t6, s5, a6
                  or           a1, t6, s3
                  addi         s8, s8, -6 #update loop 1 counter
                  and          a2, s1, t5
                  and          a6, t0, s11
                  xori         a7, s11, 1935
                  andi         s1, gp, 504
                  addi         s2, zero, -10 #init loop 0 counter
                  slli         a1, a3, 9
                  addi         t0, zero, -15 #init loop 0 limit
                  ori          gp, gp, 403
sub_4_7_0_t:      sltu         a7, t5, t2
                  addi         s2, s2, -5 #update loop 0 counter
                  srl          t4, a5, sp
                  ori          s6, t3, 1828
                  addi         s6, a1, -1958
                  xor          a0, t4, s2
                  bne          s2, t0, sub_4_7_0_t #branch for loop 0
                  sra          ra, t5, t3
                  beq          s8, t3, sub_4_7_1_t #branch for loop 1
                  xor          t2, a7, a6
                  addi         s0, zero, 0 #init loop 1 counter
                  srli         ra, a2, 20
                  ori          s8, a2, -1390
                  addi         a6, zero, 16 #init loop 1 limit
                  sub          s10, a7, s6
sub_4_3_1_t:      ori          a5, gp, -1446
                  slt          a5, t6, t5
                  addi         s0, s0, 10 #update loop 1 counter
                  nop
                  addi         s2, zero, 10 #init loop 0 counter
                  addi         t6, zero, 9 #init loop 0 limit
sub_4_3_0_t:      and          t4, t5, s5
                  or           a3, a0, a3
                  sltiu        s9, t2, -1507
                  addi         s2, s2, -7 #update loop 0 counter
                  add          a3, a5, a3
                  bgeu         s2, t6, sub_4_3_0_t #branch for loop 0
                  auipc        s4, 675985
                  addi         s8, s9, -424
                  sltu         t2, a7, t1
                  sltu         s4, ra, gp
                  addi         t3, t6, 1915
                  sltu         a2, t4, t2
                  ori          s5, s7, 1732
                  blt          s0, a6, sub_4_3_1_t #branch for loop 1
                  or           a1, ra, s3
                  addi         s6, zero, 8 #init loop 0 counter
                  srai         a0, s4, 14
                  xor          tp, s2, t6
                  addi         s7, zero, 7 #init loop 0 limit
                  srli         s10, a4, 23
sub_4_5_0_t:      nop
                  sub          ra, a1, t3
                  ori          s8, ra, 111
                  srai         s3, a2, 0
                  or           a7, gp, sp
                  sll          t6, s4, t3
                  add          a6, a2, t6
                  srai         s0, a2, 20
                  auipc        a0, 1063
                  add          gp, s11, a1
                  and          s5, gp, a3
                  sub          a7, s9, a2
                  add          zero, a3, s1
                  srl          a5, s4, s6
                  srl          gp, t0, s3
                  sub          t2, a1, a4
                  sltu         ra, s1, t5
                  add          s0, a3, t5
                  addi         s6, s6, -6 #update loop 0 counter
                  xori         a0, t6, -1986
                  ori          ra, s3, 1056
                  srli         a2, s0, 5
                  xor          s8, s11, a4
                  bgeu         s6, s7, sub_4_5_0_t #branch for loop 0
                  slti         t2, zero, -709
                  addi         a2, zero, 5 #init loop 0 counter
                  addi         s1, zero, 14 #init loop 0 limit
                  sub          s5, s10, a4
sub_4_6_0_t:      ori          a0, s10, -1336
                  slli         s0, t5, 26
                  slli         a3, a6, 16
                  srai         t2, s5, 29
                  slt          a7, t6, a0
                  addi         a2, a2, 9 #update loop 0 counter
                  srl          t0, a7, t1
                  add          tp, a2, s11
                  beq          a2, s1, sub_4_6_0_t #branch for loop 0
                  xor          a0, a6, s10
                  addi         s5, zero, -6 #init loop 0 counter
                  srai         s3, tp, 3
                  addi         s8, zero, 14 #init loop 0 limit
                  nop
sub_4_2_0_t:      xor          s2, ra, s7
                  sltiu        t4, a4, 81
                  srai         s2, t2, 28
                  sub          s10, s0, s4
                  addi         s5, s5, 4 #update loop 0 counter
                  bne          s5, s8, sub_4_2_0_t #branch for loop 0
                  add          s9, t3, a6
                  addi         s8, zero, 7 #init loop 0 counter
                  sltu         s2, s10, s2
                  addi         t0, zero, 12 #init loop 0 limit
                  add          zero, s7, zero
sub_4_1_0_t:      sltiu        tp, s9, 1967
                  srli         s10, gp, 9
                  addi         s8, s8, 7 #update loop 0 counter
                  bltu         s8, t0, sub_4_1_0_t #branch for loop 0
                  or           t6, tp, s9
                  addi         s10, zero, 1 #init loop 0 counter
                  sltu         t6, s8, s4
                  andi         s7, tp, 670
                  and          s5, a2, s3
                  addi         a1, zero, -12 #init loop 0 limit
sub_4_4_0_t:      sltu         s8, a1, s3
                  lui          sp, 739625
                  addi         s10, s10, -2 #update loop 0 counter
                  and          a4, a6, s4
                  srai         sp, s10, 14
                  lui          s4, 947141
                  sltiu        t2, a6, -1101
                  sll          a7, a6, t5
                  sra          a6, s5, s4
                  srl          a2, a1, s4
                  srl          t0, s9, s1
                  sltiu        tp, t0, -1242
                  lui          gp, 711567
                  sra          t3, tp, t2
                  and          s0, gp, s5
                  nop
                  xor          s8, t1, t5
                  nop
                  sltu         t0, gp, s9
                  srl          zero, t6, a5
                  srl          s8, t2, ra
                  lui          a4, 608110
                  sltu         s3, t1, s11
                  bge          s10, a1, sub_4_4_0_t #branch for loop 0
                  xor          ra, t2, t5
                  bltu         s4, sp, 12f
                  beq          s5, s8, 11f
                  bne          s7, a7, 21f
                  sub          a4, s9, s7
                  srai         t3, ra, 22
                  slti         s7, s9, 726
                  add          s5, t5, a1
                  srl          a3, tp, zero
                  blt          a2, t0, 20f
                  xor          t2, gp, tp
                  xori         s6, a4, -1117
11:               nop
12:               bltu         tp, sp, 28f
                  bge          a2, a1, 27f
                  auipc        a4, 281864
                  slli         a5, s9, 21
                  srl          a6, t6, s0
                  blt          t5, t6, 31f
                  bgeu         s0, s2, 22f
                  slli         t0, s7, 19
20:               bltu         a3, t0, 29f
21:               bgeu         a6, a3, 34f
22:               srl          a5, a6, t3
                  bltu         s10, ra, 40f
                  add          gp, s6, a7
                  blt          gp, s6, 40f
                  add          s2, t6, a2
27:               srai         s7, s10, 0
28:               sll          s3, s3, t5
29:               bne          s5, s5, 48f
                  and          gp, gp, t0
31:               srai         sp, a1, 25
                  or           s9, a3, sp
                  blt          a3, a5, 42f
34:               or           s8, s11, t2
                  andi         sp, t1, -185
                  bne          a6, s1, 52f
                  add          t0, a1, t3
                  xori         a4, s5, 29
                  sltu         a3, s2, t0
40:               xor          tp, s5, t3
                  sltiu        s5, s6, 1361
42:               sltu         t3, t5, a3
                  bne          sp, zero, 56f
                  sll          ra, a2, a3
                  and          s1, a4, t2
                  beq          gp, gp, 47f
47:               sll          t2, tp, a1
48:               slt          a3, s4, t6
                  beq          s2, t1, 57f
                  srli         tp, s11, 9
                  blt          s2, zero, 52f
52:               xor          a2, s3, s8
                  sll          s8, s2, s3
                  blt          a5, ra, 64f
                  srli         s1, sp, 23
56:               auipc        t0, 1046227
57:               add          s6, gp, s10
                  xor          tp, sp, s10
                  and          ra, s5, t6
                  sra          a6, s2, a0
                  bltu         s2, tp, 77f
                  ori          s2, zero, 1712
                  nop
64:               xor          ra, t1, s2
                  add          t4, a4, s7
                  blt          t3, s7, 75f
                  lui          s1, 801761
                  addi         t2, s0, -1931
                  bne          a2, s6, 83f
                  auipc        t4, 510066
                  ori          tp, s6, -773
                  or           a4, s7, t2
                  nop
                  addi         a5, a5, 330
75:               sll          zero, t4, s5
                  add          s3, t5, a4
77:               sub          s1, ra, s1
                  slti         s4, s5, -539
                  srai         t6, t0, 30
                  auipc        a7, 230881
                  add          t0, s11, sp
                  add          tp, a1, a1
83:               add          a6, t0, gp
                  bge          s4, s5, 97f
                  sll          a6, s0, a3
                  sltu         s7, gp, a3
                  slt          a7, s3, a1
                  bge          s7, t4, 90f
                  srai         s4, a1, 17
90:               nop
                  or           a6, s8, t1
                  nop
                  bne          s8, a5, 112f
                  srli         zero, a0, 5
                  bltu         s10, a7, 96f
96:               sltu         a3, gp, a7
97:               sub          s8, s4, s11
                  sra          a2, s1, t4
                  and          zero, s1, ra
                  lui          a5, 644928
                  bgeu         a6, a1, 116f
                  sltu         s2, gp, zero
                  sub          a2, a2, a1
                  lui          s7, 526182
                  and          gp, a7, s11
                  and          t4, a2, a7
                  sll          t0, s4, s3
                  srai         s3, s4, 26
                  sub          s10, s4, a2
                  sltu         a6, s6, s7
                  xori         s10, t3, -162
112:              beq          ra, t3, 116f
                  add          s8, s7, t5
                  andi         a5, a2, 390
                  xor          sp, s1, s10
116:              sra          a6, t4, a5
                  auipc        t3, 610460
                  slt          s6, a0, s1
                  blt          s1, t0, 129f
                  xori         t3, s9, -1850
                  bgeu         a2, gp, 129f
                  srli         t6, ra, 15
                  ori          t0, t2, 93
                  or           sp, t6, a0
                  slt          t4, a2, a6
                  srai         s3, a3, 24
                  srli         ra, s3, 18
                  ori          a6, a6, -548
129:              or           s7, s4, s3
                  sll          s2, t0, t4
                  xori         s2, a5, -538
                  sra          gp, t4, t0
                  andi         a2, t4, -1729
                  srli         a2, t6, 20
                  sll          a6, a1, s10
                  lui          a2, 224359
                  add          a5, ra, s4
                  srl          ra, s9, t0
                  sll          a5, s6, zero
                  xor          zero, s5, a6
                  beq          t0, a6, 154f
                  srl          t6, t3, t4
                  sltu         s6, s6, ra
                  xor          a2, t3, s3
                  bge          s2, a4, 149f
                  bgeu         s7, tp, 159f
                  xori         s2, a3, 469
                  blt          t4, t1, 162f
149:              beq          s2, zero, 159f
                  blt          gp, tp, 162f
                  xori         s8, a2, 1604
                  bge          t0, a0, 164f
                  srli         t3, s7, 18
154:              sra          s8, s5, a4
                  sltiu        ra, t1, -1865
                  ori          ra, s11, -888
                  lui          s5, 96792
                  ori          gp, a6, -1276
159:              srai         tp, a0, 0
                  bltu         gp, zero, 176f
                  lui          s4, 496679
162:              bne          a7, a3, 176f
                  add          a2, ra, a7
164:              xor          sp, t5, s0
                  sub          s2, zero, a4
                  lui          t2, 910038
                  and          a4, s3, s0
                  addi         ra, gp, -1132
                  bltu         s4, s4, 184f
                  sll          s3, a4, s0
                  bltu         s4, t6, 172f
172:              andi         s1, ra, -143
                  blt          sp, s2, 182f
                  sltu         t4, s0, zero
                  ori          t3, gp, 120
176:              slti         s2, s5, 1742
                  addi         s7, a2, -291
                  ori          a7, a6, 1222
                  bltu         t3, s8, 195f
                  addi         t0, s7, -1393
                  slti         a7, s11, 1498
182:              nop
                  bgeu         tp, t2, 184f
184:              blt          t5, s0, 188f
                  and          t2, a0, s1
                  sltu         a5, tp, t2
                  ori          t0, s4, 340
188:              slti         s9, s7, -1515
                  xor          s5, a6, t4
                  ori          s9, t3, 409
                  sltiu        s4, t1, 1553
                  bge          t3, gp, 205f
                  auipc        a2, 603472
                  srli         a7, s5, 31
195:              srai         t3, zero, 17
                  sra          t4, tp, s8
                  sltu         a5, a1, a7
                  sltu         a4, s3, s7
                  sra          a6, s3, a7
                  bltu         a3, zero, 209f
                  and          zero, s0, a1
                  sltu         sp, t6, s0
                  bgeu         a3, s6, 222f
                  bge          s10, t3, 220f
205:              bgeu         s6, s6, 206f
206:              slt          s10, a4, tp
                  blt          s11, a5, 217f
                  and          s9, s3, a7
209:              xori         s4, t3, 1707
                  bgeu         a7, a7, 212f
                  add          s3, s11, zero
212:              lui          t6, 750700
                  slli         a2, s7, 23
                  xori         tp, s7, -475
                  or           a6, t3, s3
                  srli         s0, t4, 17
217:              blt          t1, a7, 232f
                  slti         t6, a1, 422
                  bgeu         gp, t4, 233f
220:              addi         s3, s11, -1876
                  beq          a0, a4, 230f
222:              srl          a7, a4, a7
                  andi         s0, zero, -458
                  slli         a6, s11, 12
                  sra          s4, s7, a7
                  slli         s2, t2, 9
                  and          s3, s3, a3
                  bltu         s2, t3, 247f
                  sub          s8, a4, s11
230:              and          s10, t4, s0
                  sra          tp, s11, gp
232:              ori          sp, sp, 301
233:              sltu         s0, a3, s3
                  srli         s2, zero, 22
                  nop
                  add          zero, a7, a1
                  bge          s2, t0, 254f
                  srli         a3, a0, 28
                  sra          t4, t4, t2
                  blt          ra, a3, 250f
                  bne          a1, s8, 260f
                  bltu         a7, s3, 255f
                  addi         s6, tp, -183
                  sltu         s6, s3, s6
                  slt          s10, a1, s8
                  bltu         t6, a4, 261f
247:              ori          sp, tp, -1529
                  bge          s0, a0, 262f
                  bge          a3, t2, 250f
250:              bgeu         t0, a4, 259f
                  and          t6, s7, a2
                  slli         t3, ra, 18
                  slli         s6, s6, 3
254:              andi         s2, s3, 8
255:              auipc        a1, 92805
                  nop
                  ori          s4, t5, 1338
                  auipc        a7, 922823
259:              sltiu        a7, gp, -462
260:              nop
261:              nop
262:              sll          a6, s6, a4
                  lui          a6, 361657
                  slti         s8, a7, -938
                  and          s6, s4, s5
                  slli         s8, s11, 14
                  add          s7, a1, s4
                  srai         a4, a3, 15
                  srai         s2, s6, 13
                  xor          t2, t0, a3
                  xori         a7, s9, -627
                  andi         a2, ra, -1189
                  slti         a6, s6, 10
                  srl          tp, t2, s3
                  lui          s7, 422331
                  beq          s0, s4, 295f
                  bge          s4, sp, 296f
                  add          zero, a4, a3
                  sltu         s7, tp, t6
                  sra          a2, tp, t4
                  srli         t0, ra, 9
                  addi         a1, s6, 1282
                  and          s5, tp, s5
                  or           s5, a5, a0
                  bgeu         s10, s8, 286f
286:              ori          s2, t5, 531
                  xor          s4, s7, t0
                  auipc        a0, 890943
                  add          a4, s2, a4
                  bgeu         t6, a2, 306f
                  sltiu        s7, sp, -319
                  andi         s1, a0, -923
                  andi         a1, t1, -838
                  sltiu        s2, s9, 1058
295:              srl          t0, a7, t2
296:              sub          gp, a7, gp
                  sltiu        s5, a6, -750
                  srai         zero, t5, 7
                  beq          t1, s6, 300f
300:              or           t0, s1, gp
                  xor          gp, s2, s10
                  srli         t0, tp, 17
                  bge          zero, t4, 319f
                  slli         ra, t5, 23
                  bge          s3, s7, 321f
306:              slti         s0, s4, -510
                  or           s7, tp, s10
                  sll          s7, s5, s1
                  sltu         tp, s7, t1
                  bne          a3, t4, 320f
                  sll          s8, t4, t1
                  add          s4, t0, t0
                  sra          s8, a2, s8
                  auipc        s7, 678396
                  lui          s6, 493775
                  addi         t0, t6, -584
                  sra          tp, a3, a0
                  nop
319:              lui          a5, 690394
320:              sll          t2, t5, zero
321:              srai         t0, t1, 28
                  or           s1, a7, sp
                  beq          zero, a5, 327f
                  or           s1, a7, t0
                  auipc        t3, 1021428
                  and          a6, s6, t1
327:              xor          s5, tp, a1
                  or           s10, sp, t5
                  or           t4, s8, s2
                  sub          a5, s9, a1
                  xori         s10, s8, -941
                  auipc        s3, 648924
                  bltu         ra, zero, 342f
                  xor          s5, a3, t2
                  ori          a6, tp, 641
                  bge          s2, a3, 340f
                  sra          s4, t6, a5
                  blt          a2, t4, 348f
                  bge          t3, zero, 358f
340:              or           s7, sp, t0
                  sltiu        s8, ra, 1762
342:              xor          s3, t4, sp
                  sltu         t6, s2, t0
                  sltu         a3, t1, a5
                  xor          tp, t0, s7
                  ori          s7, t0, -1129
                  auipc        s4, 543899
348:              ori          s7, a1, 1861
                  sll          t2, s3, s6
                  bge          s3, tp, 362f
                  bne          a4, s2, 353f
                  sub          gp, tp, t3
353:              lui          s6, 817497
                  beq          sp, s4, 367f
                  and          a2, a2, t4
                  add          s8, s11, t3
                  blt          s9, s8, 371f
358:              srl          zero, t3, a6
                  bge          s9, t3, 374f
                  slli         s2, s8, 20
                  srai         s6, t0, 29
362:              sll          t3, t2, ra
                  auipc        a0, 897192
                  slti         t6, s2, 1787
                  bge          a3, s1, 377f
                  nop
367:              or           s9, t5, s11
                  sra          t4, s3, s0
                  ori          s8, s6, 1634
                  beq          a0, a7, 387f
371:              ori          t6, s11, -977
                  sll          t4, a4, s9
                  auipc        t3, 944275
374:              or           sp, ra, t6
                  blt          zero, s6, 384f
                  blt          zero, sp, 386f
377:              lui          a5, 188756
                  bgeu         a7, s0, 386f
                  sra          s7, t4, a7
                  lui          s4, 808221
                  sub          ra, s11, s8
                  addi         zero, s3, -1472
                  sltu         zero, a6, s1
384:              sll          a0, t2, a0
                  xor          sp, t2, s6
386:              blt          s6, t4, 399f
387:              sra          s5, a2, gp
                  nop
                  srai         s8, s7, 16
                  nop
                  slli         a5, a5, 15
                  beq          s5, gp, 406f
                  blt          t3, s3, 412f
                  slt          a5, s8, t5
                  slli         s1, a5, 4
                  slti         zero, s5, -1586
                  ori          t3, a2, -335
                  slt          s4, s11, s10
399:              add          t0, s5, a5
                  lui          s6, 687858
                  sltiu        a2, s1, 1037
                  ori          t3, s4, 1654
                  srl          s5, a1, s4
                  srl          a2, s0, s1
                  lui          s0, 515822
406:              addi         a1, s5, 256
                  addi         a7, tp, 91
                  bne          s3, tp, 412f
                  xor          gp, s0, a3
                  bge          gp, a7, 426f
                  addi         s2, zero, 1660
412:              sltu         gp, s9, s10
                  sltiu        s1, s3, -1129
                  sll          s10, s4, t3
                  bgeu         s7, s7, 433f
                  xori         a6, t0, 39
                  beq          t1, sp, 427f
                  bge          sp, s11, 419f
419:              add          t4, t1, s8
                  auipc        t6, 1032886
                  sll          s2, s6, t3
                  xori         t0, a4, -1743
                  beq          s5, a6, 433f
                  and          s1, zero, a4
                  sltu         a3, a3, t1
426:              slti         ra, s7, 394
427:              srai         t2, t6, 11
                  slti         s10, s4, -1013
                  auipc        a6, 95645
                  srl          s7, t6, t4
                  bge          t6, t5, 433f
                  srli         a6, s2, 23
433:              add          a0, a0, a6
                  andi         t0, s3, -1481
                  lw           ra, 4(t1)
                  sll          a7, s3, s7
                  addi         t1, t1, 52
                  addi         s3, t4, 2007
                  nop
628:              addi x26, x1, 0
628:              jalr x26, x26, 0
sub_2:            slt          a0, gp, a7
                  addi         t1, t1, -44
                  auipc        a7, 629816
                  sw           ra, 4(t1)
                  xori         s10, s10, 1256
                  addi         s1, zero, 5 #init loop 0 counter
                  slti         s0, s11, 1600
                  addi         s9, zero, 14 #init loop 0 limit
                  srli         s10, s7, 27
sub_2_0_0_t:      andi         ra, s6, -1433
                  ori          t0, a7, -945
                  addi         s1, s1, 9 #update loop 0 counter
                  sll          t0, s5, a0
                  sub          a0, ra, a2
                  srai         t4, tp, 12
                  andi         s4, s5, 874
                  add          s7, t3, t2
                  nop
                  sltu         s2, s2, a5
                  slli         t4, s2, 26
                  sltiu        zero, s0, -608
                  slli         t2, t3, 24
                  slti         t3, a3, 1570
                  sra          a2, zero, gp
                  sll          sp, a0, zero
                  or           a7, zero, s8
                  sll          gp, t3, s1
                  sub          a3, s2, t6
                  sra          t4, t2, s10
                  beq          s1, s9, sub_2_0_0_t #branch for loop 0
                  srl          tp, ra, s5
                  addi         a6, zero, -3 #init loop 0 counter
                  sll          s3, s5, s7
                  addi         s0, t6, -50
                  sltiu        s9, s3, 738
                  addi         s4, zero, -11 #init loop 0 limit
                  lui          gp, 852861
                  srai         s2, s5, 9
                  add          a4, s3, s10
sub_2_2_0_t:      sub          a1, s8, t6
                  sra          t2, s5, a3
                  slt          gp, s3, t2
                  addi         a6, a6, -4 #update loop 0 counter
                  sltiu        s7, s0, 1346
                  sltiu        t4, a0, 100
                  add          s10, s3, gp
                  srli         t4, s0, 26
                  sltiu        a3, a2, 63
                  or           a0, a5, a1
                  andi         s1, t0, -1039
                  sltu         zero, a5, s3
                  beq          a6, s4, sub_2_2_0_t #branch for loop 0
                  sll          a5, s1, zero
                  addi         t6, zero, 5 #init loop 1 counter
                  addi         s7, zero, 10 #init loop 1 limit
                  sub          s10, s5, t6
sub_2_1_1_t:      nop
                  addi         t6, t6, 1 #update loop 1 counter
                  addi         s3, zero, -10 #init loop 0 counter
                  srai         a7, s8, 2
                  addi         a2, zero, 9 #init loop 0 limit
sub_2_1_0_t:      xori         t2, t4, 579
                  srai         s0, t5, 5
                  addi         s3, s3, 4 #update loop 0 counter
                  bltu         s3, a2, sub_2_1_0_t #branch for loop 0
                  sll          a7, s10, t2
                  xori         ra, s5, -534
                  bne          t6, s7, sub_2_1_1_t #branch for loop 1
                  sll          s6, a6, s1
                  beq          s10, a3, 18f
                  srai         a7, t2, 29
                  auipc        t4, 110581
                  bltu         t1, s8, 16f
                  slt          s0, s8, a2
                  or           s4, s8, s6
                  slt          tp, t4, t6
                  andi         tp, t0, 1551
                  add          t4, a3, t4
                  sll          t2, s1, s8
                  bgeu         sp, a0, 24f
                  bne          a7, s2, 18f
                  srl          s5, tp, a5
                  add          a4, s7, s7
                  bge          tp, s11, 20f
                  srli         s9, s4, 9
16:               bltu         t6, gp, 22f
                  srai         s1, s8, 2
18:               slli         s0, t1, 9
                  bne          t2, s1, 25f
20:               srl          t2, a4, a5
                  sra          a1, t4, s3
22:               lui          a3, 173592
                  xori         s5, s5, -1779
24:               slt          a2, a4, t6
25:               ori          s3, s5, 295
                  slt          s3, ra, s7
                  blt          a0, a0, 33f
                  srli         t3, t1, 10
                  or           s2, s1, s0
                  slli         s10, a2, 10
                  slt          s5, s1, a3
                  srl          s2, sp, a7
33:               bne          t1, ra, 52f
                  nop
                  slti         s4, t4, -704
                  sltu         a7, t0, s6
                  auipc        a0, 341713
                  xori         a1, s7, -1946
                  addi         t3, zero, -1058
                  auipc        a0, 57322
                  slli         a7, a3, 5
                  auipc        t2, 1028740
                  or           s3, t2, sp
                  slt          s5, a3, a3
                  sltu         zero, zero, s7
                  auipc        s0, 160885
                  addi         s8, a3, 418
                  add          tp, s3, s8
                  sltiu        a6, t0, 638
                  auipc        s10, 983190
                  lui          a6, 82541
52:               bltu         a0, ra, 53f
53:               add          a6, ra, s6
                  xori         s9, ra, -1877
                  add          ra, t1, s11
                  srl          a2, a5, s7
                  slt          a4, a5, s10
                  xori         a4, s0, -1385
                  sltu         a1, s1, s10
                  blt          a7, t4, 79f
                  xor          s8, s8, t2
                  addi         t6, s10, 622
                  xori         sp, gp, -127
                  add          a0, s3, s1
                  bgeu         sp, t4, 73f
                  bltu         s10, s7, 75f
                  srli         a4, a2, 9
                  blt          a0, sp, 76f
                  andi         s9, a2, 1943
                  and          s7, a1, s8
                  bne          s5, s1, 90f
                  bge          s9, s8, 90f
73:               add          zero, s7, s10
                  xori         t6, s10, -67
75:               lui          t2, 823737
76:               bne          a6, s9, 82f
                  bgeu         t2, s2, 91f
                  bne          ra, a5, 80f
79:               blt          t4, s5, 89f
80:               slli         s7, s4, 1
                  bltu         tp, a4, 89f
82:               slli         zero, t3, 26
                  blt          t4, ra, 89f
                  sub          tp, a0, a4
                  sra          s4, s8, s2
                  ori          a5, gp, 1779
                  blt          s0, s0, 95f
                  slti         a3, t6, 1451
89:               auipc        s4, 16350
90:               bge          gp, s4, 94f
91:               bgeu         s3, a3, 104f
                  sra          tp, s10, a2
                  xor          s3, a1, s10
94:               bne          t3, s8, 108f
95:               bltu         a3, a0, 102f
                  bltu         ra, s3, 106f
                  bge          t5, gp, 109f
                  bne          a5, a4, 99f
99:               and          s0, gp, t1
                  addi         sp, a3, -18
                  srl          s4, a3, t4
102:              sra          s7, a4, t6
                  srl          a6, a2, sp
104:              or           a7, s10, t3
                  sltu         a5, a5, t0
106:              and          s2, s0, t3
                  sra          a2, a6, s8
108:              ori          s7, s0, 1616
109:              sra          s5, ra, t6
                  slti         gp, s7, 1474
                  sltiu        a5, s1, 1352
                  sub          sp, s5, s5
                  bltu         a5, t2, 119f
                  sll          s5, s4, ra
                  slti         s10, a4, 1036
                  sll          t6, s6, t1
                  sltu         a1, s8, s2
                  bltu         t6, sp, 131f
119:              sra          gp, s3, a0
                  sub          a1, a5, s10
                  blt          t4, s3, 123f
                  beq          a0, t1, 129f
123:              bne          a3, t0, 129f
                  sltiu        s5, s10, 503
                  xor          a0, t0, t3
                  bge          a2, t6, 144f
                  slti         a3, t4, -1501
                  xori         s7, s0, -1464
129:              ori          a1, ra, -103
                  andi         a7, a7, -412
131:              beq          zero, s3, 137f
                  sltiu        s10, a7, 494
                  or           sp, t3, t0
                  and          s4, s6, a7
                  nop
                  beq          s11, a3, 144f
137:              sltiu        tp, s9, -103
                  bge          a0, s3, 142f
                  bge          t1, s5, 147f
                  or           t2, tp, t6
                  bne          s2, t6, 142f
142:              lui          a1, 406782
                  slti         a3, t0, -1221
144:              slli         s2, sp, 8
                  and          s8, t0, s0
                  addi         a7, s10, -1373
147:              slli         t2, s3, 19
                  add          s7, t3, t2
                  blt          s2, s0, 164f
                  sll          s7, a4, s8
                  or           a7, s10, a3
                  slti         t2, s0, 768
                  ori          s2, a6, -848
                  and          a7, t3, zero
                  sll          a4, s11, s10
                  slti         s2, s6, -1704
                  srli         s10, a5, 17
                  bltu         s0, ra, sub_2_j6 #branch to jump instr
                  nop
                  andi         s3, t6, 1221
                  and          a1, s9, s9
                  xor          gp, s0, a3
sub_2_j6:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  srl          sp, s4, sp
                  bltu         a0, a0, 164f
                  add          s2, s0, s8
                  sub          s1, a2, s1
                  xori         t3, t2, -193
                  ori          t6, a0, -1242
                  sll          s5, a5, t4
                  sub          gp, t6, s7
                  bltu         a6, a2, 164f
                  or           a6, t0, a3
                  srai         zero, sp, 2
                  slli         a5, ra, 12
164:              and          s4, s11, s5
                  slli         a4, a6, 26
                  lw           ra, 4(t1)
                  auipc        t3, 159409
                  srai         t4, sp, 15
                  addi         t1, t1, 44
                  sub          s1, a5, s5
252:              addi x3, x1, 1
252:              jalr x3, x3, 0
sub_1:            sltiu        zero, a5, 30
                  addi         t1, t1, -32
                  srai         a2, s1, 9
                  xor          tp, tp, a6
                  add          zero, s2, gp
                  xor          a1, s8, a2
                  sw           ra, 4(t1)
                  sub          sp, t6, t2
                  slt          a4, ra, s11
                  sub          t2, s6, t5
                  srli         a1, a5, 28
                  xori         a2, s2, -1504
                  addi         s0, zero, 7 #init loop 0 counter
                  slt          s7, s6, t2
                  sltu         t4, a4, t2
                  or           s2, s7, tp
                  sub          a2, s8, sp
                  addi         s5, zero, 0 #init loop 0 limit
                  andi         a4, ra, -1044
                  slli         a7, t3, 25
sub_1_7_0_t:      sltiu        a2, s7, -1389
                  and          t6, a7, a5
                  slli         s3, t4, 17
                  or           gp, tp, t4
                  or           s7, a3, s7
                  addi         s0, s0, -7 #update loop 0 counter
                  add          s7, a2, t2
                  srai         s7, s11, 15
                  andi         s3, s5, 1185
                  auipc        t2, 911548
                  bne          s0, s5, sub_1_7_0_t #branch for loop 0
                  sub          a2, a6, s2
                  addi         t2, zero, -3 #init loop 0 counter
                  lui          a5, 743218
                  srl          gp, a6, a7
                  sub          t6, a0, sp
                  srai         a2, zero, 25
                  sra          s4, t3, s1
                  srai         a5, ra, 10
                  sltiu        s2, t3, -1852
                  addi         s7, zero, -6 #init loop 0 limit
                  xor          s1, a4, sp
sub_1_6_0_t:      auipc        a6, 1022129
                  sub          a4, t0, a7
                  addi         t2, t2, -9 #update loop 0 counter
                  sub          a2, a3, s5
                  srli         s8, ra, 31
                  sltu         s6, s2, s7
                  bge          t2, s7, sub_1_6_0_t #branch for loop 0
                  sltiu        s5, a6, 575
                  addi         a7, zero, 8 #init loop 0 counter
                  and          t3, a3, zero
                  slt          s9, a5, a2
                  sltiu        s2, a2, 1020
                  lui          tp, 54915
                  andi         gp, sp, 1221
                  and          tp, s1, gp
                  sltu         t4, s3, a2
                  sltiu        s9, gp, -659
                  or           a6, s4, s9
                  addi         a1, zero, -20 #init loop 0 limit
                  add          t0, a7, zero
                  ori          t4, s6, 257
                  sll          t3, s4, s8
                  or           s9, s7, s1
                  or           s9, s10, a5
sub_1_1_0_t:      sub          s6, s9, zero
                  sltu         zero, zero, a7
                  lui          s8, 61598
                  srli         s9, t5, 29
                  sra          t0, a6, s3
                  srai         sp, t3, 19
                  addi         a7, a7, -10 #update loop 0 counter
                  auipc        s8, 374073
                  sra          t0, gp, t2
                  addi         s0, a4, 379
                  sra          s1, t5, a0
                  bge          a7, a1, sub_1_1_0_t #branch for loop 0
                  add          s10, s4, sp
                  addi         a1, zero, -8 #init loop 0 counter
                  addi         ra, t2, 1966
                  sltiu        a4, zero, 1890
                  addi         a0, zero, -15 #init loop 0 limit
                  xor          s10, s10, t5
sub_1_2_0_t:      and          s3, a4, s8
                  sll          a5, a4, t5
                  addi         s2, tp, 264
                  addi         a1, a1, -3 #update loop 0 counter
                  sub          t3, s5, tp
                  addi         a6, s9, -1744
                  and          t3, s3, a3
                  or           a7, s10, a4
                  bge          a1, a0, sub_1_2_0_t #branch for loop 0
                  xori         t6, s2, 381
                  addi         s2, zero, -2 #init loop 0 counter
                  sltu         s8, t0, a3
                  srli         s0, t1, 5
                  slti         s9, s6, 568
                  addi         gp, zero, 1 #init loop 0 limit
                  slli         zero, a0, 20
                  lui          s10, 152738
                  slt          t2, a2, t2
sub_1_12_0_t:     nop
                  andi         s10, t1, -964
                  addi         s2, s2, 2 #update loop 0 counter
                  slli         a1, t3, 8
                  add          s0, s7, t3
                  bltu         s2, gp, sub_1_12_0_t #branch for loop 0
                  sub          t3, t5, a0
                  addi         s0, zero, -2 #init loop 1 counter
                  and          s7, zero, s10
                  addi         s8, zero, -12 #init loop 1 limit
sub_1_0_1_t:      xori         t3, t2, -653
                  sub          t4, t1, zero
                  addi         s0, s0, -5 #update loop 1 counter
                  addi         sp, zero, -4 #init loop 0 counter
                  addi         a5, zero, 1 #init loop 0 limit
sub_1_0_0_t:      sub          gp, t6, sp
                  addi         sp, sp, 5 #update loop 0 counter
                  ori          tp, a3, 1172
                  bne          sp, a5, sub_1_0_0_t #branch for loop 0
                  bne          s0, s8, sub_1_0_1_t #branch for loop 1
                  srl          gp, a6, s7
                  addi         s0, zero, 8 #init loop 1 counter
                  nop
                  addi         a0, zero, 11 #init loop 1 limit
sub_1_3_1_t:      nop
                  sra          a2, a7, a1
                  addi         s0, s0, 5 #update loop 1 counter
                  nop
                  nop
                  lui          a5, 161188
                  addi         s8, s8, 676
                  addi         tp, zero, -6 #init loop 0 counter
                  slti         s7, t5, -937
                  addi         t4, zero, 8 #init loop 0 limit
                  lui          s1, 149022
                  or           s4, sp, gp
sub_1_3_0_t:      xori         s4, a5, 1740
                  add          sp, a4, a5
                  sra          t2, s7, s3
                  addi         tp, tp, 7 #update loop 0 counter
                  srai         a2, t6, 17
                  nop
                  beq          tp, t4, sub_1_3_0_t #branch for loop 0
                  srli         t3, a3, 18
                  ori          a3, a4, 1081
                  sra          a2, s9, s11
                  blt          s0, a0, sub_1_3_1_t #branch for loop 1
                  add          s2, s4, s10
                  addi         s4, zero, 1 #init loop 1 counter
                  andi         s6, ra, 1830
                  addi         s2, zero, 14 #init loop 1 limit
                  srl          ra, s11, gp
sub_1_9_1_t:      andi         t6, t4, 1088
                  slli         a0, a4, 26
                  addi         s4, s4, 9 #update loop 1 counter
                  sll          s8, a2, t5
                  slt          sp, gp, t5
                  xori         t2, gp, -1573
                  or           s6, s5, s1
                  addi         a7, zero, -10 #init loop 0 counter
                  or           s6, s7, a2
                  add          t0, s11, a0
                  addi         s7, zero, 8 #init loop 0 limit
                  srai         s3, t4, 20
sub_1_9_0_t:      xori         a5, gp, 553
                  or           sp, tp, t4
                  or           s10, s1, a4
                  sra          s6, tp, tp
                  addi         a7, a7, 9 #update loop 0 counter
                  beq          a7, s7, sub_1_9_0_t #branch for loop 0
                  sll          t3, t2, s4
                  and          s10, zero, t5
                  and          s8, s2, a6
                  blt          s4, s2, sub_1_9_1_t #branch for loop 1
                  andi         a4, a7, 1794
                  addi         s8, zero, -1 #init loop 0 counter
                  andi         a0, gp, 1640
                  auipc        a7, 217545
                  nop
                  lui          ra, 576357
                  addi         tp, zero, 17 #init loop 0 limit
                  ori          a3, s4, 609
                  or           t6, t3, gp
sub_1_17_0_t:     lui          zero, 134359
                  auipc        s5, 601131
                  addi         s3, s4, 1957
                  or           t4, s2, s2
                  xori         a2, s11, -862
                  xori         a0, ra, 1634
                  addi         s8, s8, 3 #update loop 0 counter
                  or           t2, t6, zero
                  blt          s8, tp, sub_1_17_0_t #branch for loop 0
                  slli         a2, s6, 5
                  addi         s2, zero, 6 #init loop 0 counter
                  sltu         t4, t6, a3
                  xori         s4, ra, -1435
                  addi         s5, zero, 14 #init loop 0 limit
                  or           s1, sp, sp
sub_1_14_0_t:     slt          s8, t1, a6
                  addi         s2, s2, 4 #update loop 0 counter
                  addi         a3, a7, -1323
                  bne          s2, s5, sub_1_14_0_t #branch for loop 0
                  xor          s6, s10, s0
                  addi         s9, zero, 0 #init loop 0 counter
                  sub          zero, s9, t0
                  sltiu        a6, a2, 890
                  srli         s3, t1, 26
                  sltu         t6, sp, a6
                  and          a6, gp, sp
                  xori         s4, a7, 1173
                  auipc        s4, 926465
                  slt          s3, sp, zero
                  srai         s5, a6, 19
                  sltu         a3, a3, s10
                  addi         ra, zero, 20 #init loop 0 limit
                  slt          a7, a0, s2
sub_1_15_0_t:     ori          s0, gp, 500
                  auipc        t2, 218567
                  sltu         s10, s7, a5
                  sltu         a3, tp, a2
                  nop
                  xori         s5, a3, -1918
                  addi         s9, s9, 2 #update loop 0 counter
                  nop
                  srli         s1, t0, 3
                  and          s10, s4, a7
                  andi         t6, s6, 750
                  sltu         t2, a3, a4
                  slt          s7, s4, s1
                  bne          s9, ra, sub_1_15_0_t #branch for loop 0
                  slti         zero, s8, -628
                  addi         t3, zero, 9 #init loop 1 counter
                  xor          s5, a5, t1
                  sltu         s0, a3, s11
                  addi         sp, zero, 9 #init loop 1 limit
                  add          a1, gp, s6
                  lui          t6, 936359
sub_1_16_1_t:     andi         s0, t2, -1380
                  xori         s3, t0, -217
                  srli         t4, s1, 8
                  andi         s9, a1, -1718
                  sltu         t6, a4, s6
                  addi         t3, t3, -7 #update loop 1 counter
                  addi         s4, zero, 10 #init loop 0 counter
                  sltiu        s5, tp, -162
                  lui          t4, 757921
                  addi         a4, zero, 10 #init loop 0 limit
                  lui          a5, 929259
                  srai         a5, t4, 10
sub_1_16_0_t:     slti         t0, s3, -495
                  lui          a7, 558685
                  andi         s10, a5, -433
                  slli         gp, a5, 9
                  addi         s4, s4, -2 #update loop 0 counter
                  bge          s4, a4, sub_1_16_0_t #branch for loop 0
                  srl          s6, t0, a4
                  xori         a7, s11, -999
                  auipc        a2, 478494
                  bgeu         t3, sp, sub_1_16_1_t #branch for loop 1
                  slli         zero, s0, 4
                  addi         a5, zero, -8 #init loop 0 counter
                  slt          t0, t3, s11
                  auipc        ra, 702345
                  sltiu        a6, s8, -315
                  srli         ra, t2, 13
                  xor          s10, a5, s0
                  sll          a6, a7, zero
                  addi         s7, zero, 4 #init loop 0 limit
                  xor          gp, s11, t5
                  sltu         t6, t0, s9
                  add          s1, sp, t6
                  addi         ra, t3, -1823
                  or           gp, tp, t2
                  nop
                  sll          gp, a3, s11
sub_1_5_0_t:      auipc        a7, 588768
                  xor          gp, tp, a7
                  lui          s4, 936935
                  sll          a7, s6, t0
                  ori          s5, tp, -1323
                  sra          s0, s9, s1
                  srli         gp, s8, 8
                  sltu         s8, s1, t4
                  addi         a5, a5, 1 #update loop 0 counter
                  sra          gp, t2, a5
                  and          s1, a4, s1
                  lui          s5, 61283
                  blt          a5, s7, sub_1_5_0_t #branch for loop 0
                  or           s9, zero, a7
                  addi         a6, zero, 6 #init loop 1 counter
                  xor          a0, zero, s7
                  add          t3, a6, a2
                  lui          tp, 289887
                  or           s9, t3, t4
                  addi         s10, zero, 15 #init loop 1 limit
sub_1_11_1_t:     add          t2, a2, gp
                  sub          s2, gp, t5
                  sll          s4, s6, a0
                  addi         a6, a6, 3 #update loop 1 counter
                  sll          ra, tp, t4
                  sltu         s2, s9, t1
                  addi         a4, zero, 2 #init loop 0 counter
                  addi         a7, zero, -8 #init loop 0 limit
                  sltiu        a2, s2, 1299
                  ori          tp, t0, 1097
sub_1_11_0_t:     sltiu        a0, s9, -780
                  srai         s6, s2, 25
                  addi         a4, a4, -10 #update loop 0 counter
                  srli         t2, a5, 14
                  lui          zero, 174281
                  or           s6, a6, s4
                  xori         t4, ra, 2039
                  or           zero, tp, t0
                  add          t2, s10, s1
                  beq          a4, a7, sub_1_11_0_t #branch for loop 0
                  nop
                  bltu         a6, s10, sub_1_11_1_t #branch for loop 1
                  andi         t6, t2, -121
                  ori          s5, s3, 1225
                  slt          zero, s2, s3
                  and          ra, s6, s10
                  sltiu        a5, t6, -1850
                  slt          s6, zero, sp
                  sll          s7, s11, t1
                  sltu         a2, a5, s11
                  bgeu         a7, t4, 27f
                  andi         s4, s3, 1044
                  addi         t0, t2, 1923
                  srl          a2, a2, ra
                  andi         sp, ra, 1857
                  sra          s7, a7, s3
                  beq          t1, s10, 33f
                  blt          t5, s3, 30f
                  bgeu         s4, s8, 20f
                  or           t6, tp, t0
                  lui          tp, 200347
                  srai         s8, a0, 18
                  bne          t5, a3, 26f
20:               srl          a5, a5, gp
                  sub          a1, a0, s11
                  nop
                  sll          ra, t6, s2
                  bne          t4, s2, 36f
                  bge          a6, s10, 37f
26:               auipc        sp, 161829
27:               bgeu         tp, t1, 33f
                  beq          sp, s7, 33f
                  ori          a6, a4, 1300
30:               sltu         a2, a7, t6
                  lui          gp, 360130
                  srai         t6, t2, 9
33:               bgeu         ra, t2, 47f
                  ori          s0, s0, -1089
                  slli         zero, s10, 3
36:               srai         s3, s10, 19
37:               sltiu        s5, a1, 854
                  add          s0, s8, s8
                  bltu         a0, a5, 45f
                  lui          t6, 710921
                  slli         a5, a3, 2
                  blt          s9, s8, 48f
                  andi         s10, s8, 1523
                  beq          t3, t2, 50f
45:               xor          sp, t2, s6
                  nop
47:               bltu         a7, t2, 52f
48:               ori          s1, t3, 1858
                  andi         s1, a5, 555
50:               xori         t6, t4, -750
                  bge          t2, a0, 61f
52:               sra          s3, s4, s3
                  beq          sp, s1, 64f
                  lui          a6, 695469
                  beq          zero, t5, 75f
                  ori          sp, gp, 270
                  sub          s6, s9, s8
                  beq          a5, a7, 64f
                  slt          sp, s0, sp
                  bne          t1, s4, 71f
61:               slli         s8, s4, 22
                  srl          a4, s0, a2
                  xori         a6, s1, -1324
64:               bltu         t6, a5, 81f
                  bltu         s11, s2, 74f
                  bge          s1, a0, 76f
                  and          s6, gp, a4
                  blt          s10, t5, 77f
                  slli         t0, tp, 20
                  xor          s9, sp, s9
71:               sltu         s6, ra, s5
                  auipc        tp, 72595
                  srl          t4, a2, t5
74:               nop
75:               bgeu         t6, s4, 81f
76:               slli         s4, s8, 15
77:               or           a0, a1, tp
                  bge          a5, s10, 79f
79:               ori          s2, t3, 1372
                  xori         zero, a5, 1329
81:               blt          t4, a1, 92f
                  srl          s5, a4, s5
                  bltu         gp, a3, 88f
                  srai         s9, a7, 11
                  addi         s3, tp, -481
                  bgeu         t6, s4, 91f
                  andi         tp, s10, -1911
88:               auipc        zero, 172665
                  nop
                  bge          s7, t5, 97f
91:               or           t3, s8, s4
92:               ori          t0, zero, 628
                  sltiu        s2, a7, -1203
                  srl          s2, a7, a5
                  sltu         s9, t3, a5
                  beq          t1, s1, 108f
97:               slli         t6, s5, 15
                  auipc        a7, 373920
                  srli         a4, a7, 13
                  ori          s7, t4, -108
                  slti         t6, s6, -1603
                  xor          zero, a4, s7
                  slt          a5, t3, a5
                  sra          a0, s1, a1
                  xor          s10, t3, t4
                  bgeu         sp, zero, 116f
                  sll          t2, t4, s3
108:              beq          t6, a3, 114f
                  sltu         t3, t2, ra
                  blt          s0, tp, 121f
                  andi         t4, s7, 505
                  blt          a7, ra, 119f
                  auipc        s5, 714577
114:              xor          a5, t1, s3
                  lui          zero, 481399
116:              beq          t0, s2, 121f
                  andi         t2, a6, 1421
                  xori         t6, s6, -815
119:              addi         s8, s5, 1384
                  srl          s4, gp, s3
121:              bge          s8, t1, 141f
                  auipc        a1, 756827
                  slt          a7, t6, sp
                  addi         t0, t1, -920
                  addi         a6, tp, 1687
                  xor          s9, zero, tp
                  sra          zero, tp, a3
                  andi         s1, a4, 1271
                  xor          t3, s8, s2
                  bne          s5, t4, 139f
                  ori          t3, a6, -1823
                  sltiu        s4, a5, -1813
                  auipc        t2, 62798
                  slt          s7, a4, s8
                  add          s1, s10, ra
                  xori         t3, s9, -1204
                  blt          s11, ra, 143f
                  slli         s0, a3, 30
139:              ori          s1, t1, -1199
                  bgeu         s3, ra, 141f
141:              sra          t4, a0, s0
                  add          s8, s3, sp
143:              bge          t3, a4, 154f
                  bltu         s9, a1, 150f
                  bne          t4, s2, 161f
                  srl          t4, s5, s0
                  blt          s1, s4, 153f
                  blt          t3, s6, 154f
                  sub          a3, t0, s3
150:              sra          s10, a0, s4
                  bne          s1, s1, 163f
                  sll          s4, s10, s0
153:              lui          s5, 196147
                  addi         s5, zero, -9 #init loop 1 counter
                  srl          a2, s9, t6
                  addi         t3, zero, 12 #init loop 1 limit
                  auipc        s8, 960383
sub_1_4_1_t:      slti         a2, t6, 1599
                  sll          t6, s0, s11
                  addi         s5, s5, 4 #update loop 1 counter
                  xori         zero, a3, 296
                  or           a4, s3, a6
                  addi         s9, zero, 10 #init loop 0 counter
                  addi         s0, zero, 13 #init loop 0 limit
                  srai         s10, s11, 8
sub_1_4_0_t:      addi         s8, s7, -806
                  addi         s9, s9, 1 #update loop 0 counter
                  sltu         s8, gp, a2
                  xori         a0, s11, -1169
                  bne          s9, s0, sub_1_4_0_t #branch for loop 0
                  sll          tp, t5, a1
                  sltu         a0, sp, t2
                  srl          a5, t5, s7
                  sra          s6, a3, a3
                  bltu         s5, t3, sub_1_4_1_t #branch for loop 1
                  sltiu        s6, s7, 391
154:              xor          s7, a6, a3
                  bgeu         a1, s5, 160f
                  srli         gp, s4, 7
                  add          t6, tp, t0
                  slli         t6, s4, 12
                  sltiu        a5, t6, -1003
160:              slt          a6, t5, t6
161:              srli         gp, s10, 0
                  slt          s2, tp, s9
163:              xor          s5, a3, tp
                  srli         s0, t1, 4
                  bltu         a4, a7, 171f
                  nop
                  sll          t0, a4, t4
                  sra          a5, a1, t1
                  ori          a5, ra, -652
                  andi         t3, a3, 326
171:              slli         s5, t1, 31
                  and          a2, t4, t2
                  bgeu         s4, t2, 184f
                  sll          a2, a4, s0
                  ori          t4, t2, -1750
                  andi         t0, t2, -1418
                  sltu         s4, a4, t1
                  sltu         s1, a6, a7
                  andi         s7, sp, 1241
                  srl          a7, t4, a5
                  addi         a7, ra, 201
                  slli         s3, s3, 12
                  sra          a0, a7, s5
184:              lui          gp, 737405
                  srai         a2, s5, 18
                  srl          gp, a1, s9
                  sltu         a0, s0, t1
                  nop
                  sra          a0, a3, s3
                  bltu         a1, a4, 195f
                  sra          a6, t3, s8
                  srai         s10, s8, 13
                  sll          t3, s2, t0
                  slti         sp, s7, 2004
195:              or           s3, s0, zero
                  nop
                  slli         gp, s0, 20
                  srl          s0, gp, a6
                  add          a7, t2, t0
                  blt          s4, zero, 212f
                  addi         s5, s8, -695
                  andi         s3, a3, 2024
                  bge          a3, zero, 223f
                  sra          a2, a0, a7
                  xori         s3, a3, 1258
                  bge          s3, t0, 211f
                  ori          s6, s1, 1720
                  bne          a0, s8, 213f
                  bltu         s1, a5, 218f
                  slt          a3, a5, s11
211:              lui          s1, 950527
212:              and          tp, s11, a6
213:              srl          a6, a6, t6
                  sub          t2, tp, t0
                  slli         a1, a1, 21
                  bltu         a4, s0, 230f
                  slti         a6, s2, -58
                  addi         s7, zero, 9 #init loop 0 counter
                  add          a0, s6, tp
                  addi         s5, zero, 9 #init loop 0 limit
                  xori         s8, s4, -2040
                  sll          a2, s4, tp
                  sltu         s3, s3, zero
                  nop
                  lui          s10, 515871
                  srl          a2, s9, tp
                  lui          s6, 639913
                  add          s2, t0, s0
                  and          s1, zero, s0
                  or           t2, t2, s5
sub_1_13_0_t:     auipc        a7, 44443
                  slli         a1, s7, 25
                  sltu         a1, ra, a1
                  addi         s7, s7, -7 #update loop 0 counter
                  slli         gp, t2, 6
                  sll          s9, s2, sp
                  andi         a7, zero, 1511
                  sltu         s0, s9, a7
                  srai         t4, t4, 26
                  nop
                  srli         sp, a3, 7
                  and          a2, a6, a3
                  srl          a6, s11, a2
                  andi         a1, a4, -1503
                  bgeu         s7, s5, sub_1_13_0_t #branch for loop 0
                  slli         a7, s1, 10
218:              lui          t4, 894945
                  srl          a4, t6, a7
                  auipc        zero, 939428
                  auipc        s5, 857305
                  or           a4, t2, s6
223:              addi         s4, t0, -979
                  sub          s8, a4, t4
                  xori         s2, s6, 1532
                  add          s0, gp, ra
                  slt          s6, a3, t5
                  sltiu        a4, tp, -1403
                  slti         s3, t5, -1933
230:              bge          s2, s2, 240f
                  beq          s7, s5, 248f
                  sltu         t0, ra, t5
                  bgeu         t1, s0, 253f
                  bne          t2, a2, 241f
                  sltiu        s0, s0, -384
                  andi         s4, s11, -1154
                  bne          s6, t5, 249f
                  sub          s5, s2, a3
                  xori         a1, t1, 2030
240:              bge          s4, s4, 260f
241:              bgeu         s0, sp, 247f
                  auipc        a1, 349248
                  add          s1, t2, s1
                  sltiu        a1, a2, 1844
                  beq          a7, zero, 250f
                  add          s8, s3, a7
247:              ori          t0, s0, 194
248:              slli         s8, sp, 31
249:              bgeu         a1, s3, 255f
250:              slt          s7, ra, t6
                  ori          a1, a1, 2041
                  bge          s0, a5, 272f
253:              bgeu         t1, tp, 264f
                  srl          a4, a1, s0
255:              or           s4, t6, s2
                  slti         a0, t6, 313
                  lui          s6, 500667
                  slt          s8, s5, s9
                  nop
260:              blt          a5, s7, 267f
                  bge          s6, s11, 270f
                  add          tp, s3, a4
                  srli         a3, sp, 20
264:              srai         tp, t3, 1
                  slti         a4, t0, -363
                  addi         s9, s1, 408
267:              bgeu         gp, s11, 276f
                  bge          t6, zero, 278f
                  blt          s1, s3, 289f
270:              sltiu        a2, t4, -521
                  xor          s8, tp, t5
272:              blt          s3, s4, 284f
                  auipc        a7, 997550
                  xor          s9, s11, s3
                  or           s8, s3, s8
276:              srl          t0, gp, zero
                  bltu         ra, t4, 282f
278:              bgeu         tp, t3, 285f
                  xor          ra, t1, t3
                  sra          a5, s5, t4
                  sll          gp, s7, t1
282:              add          a5, t2, s4
                  sltiu        gp, s1, 984
284:              bltu         a5, s6, 290f
285:              or           s5, s9, sp
                  bne          t3, a7, 291f
                  auipc        t4, 868193
                  slli         s1, s4, 23
289:              ori          s1, a5, 760
290:              or           a5, a1, t3
291:              sra          ra, a1, s1
                  bge          a5, s10, 303f
                  bltu         s11, s10, 299f
                  andi         s6, a0, 1450
                  addi         s9, gp, 931
                  addi         t2, t0, -1567
                  lui          t2, 102426
                  sra          sp, a4, tp
299:              bltu         s8, s10, 300f
300:              slli         a2, a6, 1
                  lui          t2, 921835
                  nop
303:              lui          a5, 460190
                  nop
                  sltu         s0, a4, a7
                  bge          a2, s2, 311f
                  slt          a2, s10, s5
                  sra          a0, s2, a5
                  slti         t3, s7, -1566
                  auipc        t3, 834208
311:              srli         a4, s5, 12
                  addi         gp, a0, 1165
                  xori         tp, a5, -308
                  addi         t0, a2, 984
                  add          s3, a5, a4
                  bltu         s3, s9, 328f
                  sra          s0, s7, s2
                  bge          s2, sp, 330f
                  beq          a2, s4, 330f
                  auipc        s3, 889299
                  add          a5, s8, sp
                  srai         s9, t4, 23
                  bgeu         s7, s9, 329f
                  sra          t4, sp, zero
                  srai         a7, t3, 27
                  sll          t6, s10, a2
                  ori          ra, s7, -862
328:              srl          t2, ra, a7
329:              blt          a0, s4, 334f
330:              andi         a2, t1, 1022
                  srli         a6, a1, 24
                  bltu         t2, ra, 338f
                  beq          sp, a2, 343f
334:              sra          a1, s11, s1
                  slli         s1, s3, 30
                  xori         s0, a2, -831
                  xor          s4, a6, s9
338:              slti         t3, a7, 1147
                  nop
                  bne          gp, s1, 356f
                  sltiu        s10, a5, -1023
                  or           a5, t0, t1
343:              xori         zero, s3, -1556
                  xori         t0, t3, -599
                  ori          s1, s9, 755
                  xor          s5, s2, ra
                  sltu         a5, t4, a0
                  xori         a7, t5, -1945
                  lui          a7, 694493
                  slti         t2, s5, 1123
                  bge          a5, t5, 365f
                  and          sp, a7, a4
                  addi         s8, t3, -1829
                  auipc        zero, 310215
                  andi         sp, t4, -2043
356:              lui          a7, 667019
                  bltu         s11, a2, 374f
                  bne          s6, s2, 364f
                  ori          a6, t1, 865
                  sltiu        sp, a7, -570
                  srai         a5, s3, 11
                  ori          a0, t4, -951
                  lui          a1, 227490
364:              bne          t2, a2, 374f
365:              or           a1, t1, s1
                  andi         ra, a4, -967
                  or           t6, zero, s8
                  sub          s9, t4, t2
                  srai         t6, t6, 10
                  slti         s3, a2, -985
                  slti         s3, t0, -102
                  bge          t0, a7, 378f
                  andi         t0, s7, 1872
374:              ori          s5, a6, 40
                  srai         s5, a5, 6
                  auipc        s3, 743565
                  andi         s2, s11, 339
378:              addi         s6, gp, -405
                  xor          ra, t6, t6
                  srl          a1, a5, s7
                  srl          s6, t0, s0
                  slli         s5, sp, 27
                  andi         t2, s9, 1835
                  lui          a2, 406954
                  bgeu         s10, s2, 386f
386:              or           a4, s0, zero
                  sra          s8, a3, t5
                  slt          zero, t1, ra
                  lui          t4, 881913
                  and          a4, a3, s4
                  add          t2, t4, s7
                  bge          t1, a3, 397f
                  add          zero, s5, s9
                  sltu         tp, t6, t6
                  sltu         ra, s4, tp
                  auipc        a2, 614992
397:              beq          zero, t1, 403f
                  ori          ra, s11, -513
                  beq          s9, t3, 404f
                  sub          t2, t5, s7
                  add          sp, sp, a4
                  slt          s9, s10, s11
403:              bge          s10, t0, 417f
404:              auipc        s6, 571503
                  srli         a1, ra, 19
                  beq          a5, s6, 412f
                  slti         s5, s7, 1985
                  srli         s0, a6, 10
                  nop
                  xor          a5, s0, a1
                  add          t2, s7, t2
412:              andi         s8, gp, -828
                  andi         a6, t4, -70
                  sub          s7, a1, t5
                  bgeu         s7, gp, 435f
                  srl          t6, t6, s1
417:              and          a0, s8, a6
                  beq          sp, s9, 424f
                  srli         s2, zero, 19
                  srai         a1, s9, 24
                  srli         s3, t4, 26
                  addi         s4, ra, -1537
                  slti         a5, s9, 141
424:              slli         a2, t6, 13
                  sltiu        a3, s0, -1663
                  or           a3, s6, a5
                  blt          t5, a6, 433f
                  bne          tp, t0, 437f
                  andi         tp, t6, -1192
                  srai         a2, s5, 8
                  slti         a2, a2, 1270
                  or           s8, t3, s2
433:              add          sp, a5, t5
                  slli         tp, t1, 10
435:              andi         gp, t3, -798
                  slli         s4, s1, 22
437:              auipc        tp, 872166
                  sll          gp, s8, a5
                  xor          s5, t3, s3
                  bne          t5, a1, 449f
                  auipc        s6, 22187
                  srli         ra, t1, 13
                  srl          s0, t5, s6
                  and          s8, t6, s1
                  xor          s7, t3, a0
                  sltiu        zero, s6, 722
                  bge          t2, a5, 463f
                  xor          t2, s0, zero
449:              addi         t2, t0, 772
                  bltu         s3, t2, 455f
                  slt          gp, a2, ra
                  addi         s2, s1, 1133
                  sltiu        s3, s0, -1586
                  add          a0, ra, a5
455:              lui          t6, 963665
                  xor          s9, t3, s8
                  and          a1, s9, s6
                  sll          s10, s1, s7
                  bne          a4, a7, 479f
                  lui          a6, 369118
                  nop
                  slli         s8, s2, 2
463:              slt          s9, a1, a5
                  slti         ra, s11, 310
                  bge          a2, s0, 477f
                  and          t6, a1, a5
                  auipc        t0, 97266
                  slli         t2, s3, 6
                  slti         zero, ra, -129
                  andi         t6, t5, -546
                  add          s3, t6, t6
                  addi         s4, t1, -623
                  sub          sp, s9, s4
                  slli         s10, a4, 4
                  srl          t2, a1, s6
                  add          a1, s7, gp
477:              sll          s2, s4, a3
                  lui          a4, 582298
479:              bgeu         s7, sp, 499f
                  beq          s3, s0, 491f
                  bne          a5, t1, 486f
                  blt          a6, zero, 493f
                  srl          s9, t0, s10
                  sltiu        s6, s4, 741
                  addi         ra, s11, -1298
486:              bgeu         s6, s11, 498f
                  beq          a7, s4, 492f
                  blt          s4, gp, 495f
                  lui          s1, 836360
                  slt          s3, s0, t0
491:              xori         s10, t5, -1068
492:              bgeu         a3, s3, 504f
493:              sll          a3, a5, a4
                  bgeu         zero, s6, 501f
495:              sub          a4, s3, s1
                  sltiu        s8, t5, 383
                  bne          a3, a4, 507f
498:              auipc        t4, 339098
499:              bge          a6, a3, 510f
                  xor          s3, a6, t4
501:              andi         a5, t0, -1831
                  slli         s2, a0, 13
                  bltu         s8, s0, 520f
504:              sub          a6, s0, t2
                  lui          t3, 618214
                  slti         s5, t3, 453
507:              and          gp, gp, t6
                  sltiu        gp, a6, -376
                  addi         t0, s10, 1814
510:              and          a0, s0, s0
                  sub          a3, t5, s2
                  and          s9, a6, s9
                  sll          t0, s8, t1
                  srai         a2, s5, 10
                  xori         t2, gp, 1458
                  sll          a5, s8, s4
                  slt          s5, t4, s7
                  lui          s10, 789301
                  bne          a6, a4, 533f
520:              slt          s8, s0, s5
                  sltu         zero, a5, sp
                  xor          t6, t1, s11
                  xori         s7, a3, -674
                  beq          a1, sp, 531f
                  addi         s9, s10, -650
                  and          a4, s2, s11
                  slti         a5, s6, 1361
                  srai         t0, gp, 30
                  bge          s7, zero, 539f
                  beq          s5, a5, 541f
531:              beq          a1, t0, 551f
                  blt          t2, a3, 538f
533:              or           s10, a5, s3
                  slt          s6, s0, s6
                  slti         ra, a0, -1910
                  srli         gp, a4, 11
                  andi         t0, s1, -1510
538:              nop
539:              auipc        s5, 216774
                  ori          a3, a6, 1722
541:              and          a5, t0, s2
                  addi         s10, t2, -1265
                  sltiu        ra, s10, -1716
                  xori         a6, t4, 807
                  addi         s9, s9, -1356
                  sll          t2, t3, s6
                  beq          a7, a4, 552f
                  add          s5, a5, s5
                  sub          s1, a0, s9
                  srai         tp, t5, 27
551:              ori          t6, sp, -554
552:              slt          a6, zero, s7
                  auipc        ra, 259658
                  sub          s7, ra, gp
                  addi         t4, zero, -6 #init loop 1 counter
                  addi         t0, zero, -12 #init loop 1 limit
sub_1_10_1_t:     and          s2, s11, t4
                  srl          s2, tp, t6
                  addi         t4, t4, -3 #update loop 1 counter
                  addi         s8, zero, -2 #init loop 0 counter
                  addi         s10, zero, 9 #init loop 0 limit
sub_1_10_0_t:     xori         s5, t3, 1458
                  addi         s8, s8, 1 #update loop 0 counter
                  blt          s8, s10, sub_1_10_0_t #branch for loop 0
                  bne          t4, t0, sub_1_10_1_t #branch for loop 1
                  or           s2, s11, t3
                  xori         s10, t0, 642
                  sra          gp, t5, zero
                  sub          s4, t1, s5
                  auipc        t6, 122755
                  sub          t2, t3, s3
                  auipc        t0, 446401
                  slti         s10, s9, -1797
                  xor          s10, t5, a5
                  sra          t3, a1, zero
                  addi         a1, zero, -1191
                  nop
                  auipc        a0, 757767
                  bltu         t0, s4, 572f
                  or           t4, gp, gp
                  srli         gp, a4, 23
                  bne          s9, s7, 575f
                  bltu         a0, s3, 577f
572:              slli         s9, a0, 18
                  lui          s0, 482180
                  andi         s0, ra, 1385
575:              srai         s9, t5, 28
                  beq          a7, s4, 585f
577:              and          a1, s3, s7
                  andi         t4, t0, 162
                  slt          s8, t0, s10
                  sltiu        t0, a3, -1383
                  sltiu        s2, a1, -1280
                  nop
                  srli         s3, t5, 4
                  srai         s7, zero, 29
585:              andi         gp, s10, -1099
                  bgeu         gp, a5, 597f
                  srli         a2, t6, 22
                  add          s8, zero, t2
                  srai         t4, s9, 26
                  andi         s9, s3, 428
                  sub          t4, s9, s0
                  nop
                  bne          s1, s5, 599f
                  slti         s2, t5, -254
                  slti         tp, gp, 1985
                  ori          t3, s9, -1513
597:              bne          s9, s5, 609f
                  bgeu         s7, a3, 603f
599:              bge          a5, a3, 619f
                  srai         gp, t5, 18
                  bltu         a1, s4, 613f
                  or           s2, tp, a3
603:              xor          s9, s0, s9
                  addi         s5, s7, -438
                  srl          ra, t5, s1
                  srai         s10, s4, 31
                  slt          a0, s3, t5
                  nop
609:              sltiu        s10, s10, -1909
                  bltu         s10, s11, 616f
                  andi         s9, s3, 201
                  sll          t6, t4, s0
613:              sra          s2, s5, tp
                  xori         a7, s10, 305
                  ori          a6, a1, -1452
616:              ori          s3, s3, 355
                  addi         t0, zero, 2 #init loop 1 counter
                  srli         a4, a4, 2
                  and          s2, a5, a6
                  srli         a6, ra, 30
                  addi         tp, zero, 8 #init loop 1 limit
sub_1_8_1_t:      xori         t6, s8, -2008
                  sltiu        a4, a1, -254
                  addi         t0, t0, 2 #update loop 1 counter
                  sltu         ra, s6, s9
                  auipc        ra, 302831
                  addi         a2, zero, 7 #init loop 0 counter
                  sll          a0, a6, ra
                  srai         a6, s3, 5
                  sll          t6, s10, ra
                  addi         a5, zero, 15 #init loop 0 limit
sub_1_8_0_t:      and          t3, a1, ra
                  nop
                  andi         ra, a1, -2005
                  srli         s2, t4, 14
                  addi         a2, a2, 10 #update loop 0 counter
                  blt          a2, a5, sub_1_8_0_t #branch for loop 0
                  sltu         zero, t5, ra
                  sltiu        s3, a5, -1168
                  nop
                  bne          t0, tp, sub_1_8_1_t #branch for loop 1
                  and          t3, s6, s3
                  beq          a2, t2, 618f
618:              bne          s10, s5, 623f
619:              xori         a0, s1, -1925
                  slt          a0, a1, s8
                  sra          a0, s8, t5
                  xor          s1, a7, t4
623:              beq          t4, a0, 632f
                  slt          a5, a7, s8
                  slli         a6, a7, 3
                  bne          gp, a7, 646f
                  or           t4, t4, s8
                  ori          a1, s0, -1205
                  andi         t4, a6, -1033
                  bge          a4, t5, 640f
                  sltu         a1, s4, a4
632:              bge          s4, a5, 638f
                  beq          tp, t3, 639f
                  blt          s3, t6, 645f
                  slli         t2, a7, 23
                  or           s3, tp, t5
                  addi         a3, zero, -1693
638:              sra          s0, s2, s5
639:              bltu         a3, s3, 646f
640:              bltu         a4, s9, 652f
                  srli         s7, a5, 29
                  slli         zero, s3, 25
                  nop
                  xor          a5, a0, t5
645:              sra          s6, s2, t1
646:              srl          t2, zero, s9
                  lui          s4, 401594
                  and          s5, a1, a7
                  slli         t4, tp, 2
                  sra          t6, a5, sp
                  beq          a7, a7, 667f
652:              srl          s10, a5, a5
                  ori          s1, s2, -1318
                  ori          s3, sp, 103
                  sra          a3, a3, s6
                  srl          a4, a7, s5
                  ori          ra, t4, -1830
                  nop
                  auipc        a1, 259745
                  slli         a5, s3, 16
                  andi         zero, t1, 1237
                  slti         t3, gp, 1083
                  nop
                  bgeu         zero, s9, 681f
                  bge          tp, s10, 671f
                  srai         a7, zero, 5
667:              xor          gp, s0, t6
                  sra          a4, t2, s2
                  xori         a3, s11, -234
                  auipc        t6, 452926
671:              addi         t3, s4, 1403
                  srai         ra, t5, 20
                  and          s9, tp, t6
                  nop
                  slli         a4, t4, 26
                  sltu         s6, a7, s0
                  slli         s1, s0, 20
                  nop
                  sub          a4, s10, s11
                  ori          s9, s9, -873
681:              sll          ra, s5, s5
                  sltu         tp, s8, s3
                  sll          t4, sp, a0
                  bne          t2, s2, 694f
                  bltu         s6, a5, 691f
                  xor          ra, s5, t4
                  srai         t0, a3, 18
                  sltiu        s8, s1, 1005
                  srai         s6, t6, 19
                  add          t3, tp, t4
691:              add          ra, t0, a7
                  bltu         a4, s9, 697f
                  slli         sp, ra, 27
694:              srl          s9, a4, zero
                  sll          a7, t2, s0
                  bne          tp, s1, 701f
697:              bne          t5, s5, 711f
                  sltu         s1, a6, gp
                  auipc        s6, 178309
                  nop
701:              xor          t2, s9, s7
                  and          a0, s2, t1
                  sll          t6, t1, a5
                  bne          a7, s1, 710f
                  sra          s0, s10, t1
                  or           s8, s7, t4
                  srli         s8, s3, 10
                  bne          s7, t6, 715f
                  sub          s3, a5, t2
710:              bge          s1, a5, 715f
711:              sra          s2, a3, s5
                  sll          zero, t0, t6
                  bge          t2, s7, 725f
                  srl          s8, s10, t1
715:              bgeu         a4, ra, 716f
716:              ori          s4, a3, -1403
                  slti         s4, a2, -1870
                  srli         sp, s3, 17
                  and          gp, s4, s9
                  and          a4, a4, s4
                  add          s2, s0, ra
                  nop
                  and          a7, a2, s9
                  andi         s5, a1, -306
725:              bltu         t1, t5, 736f
                  bne          s5, s6, 746f
                  bgeu         a7, t3, 739f
                  ori          s10, s8, 1466
                  slt          t0, tp, s2
                  addi         s6, a3, -323
                  xori         a6, t5, -68
                  addi         s4, s0, 1109
                  addi         tp, t1, 855
                  bne          a4, s3, 740f
                  xori         s1, a4, 67
736:              ori          s5, sp, -1436
                  sub          s8, s7, s10
                  xori         s9, s2, 1069
739:              xori         s2, s2, 1053
740:              slli         zero, t4, 24
                  addi         a2, a1, 1229
                  bge          t3, s6, 748f
                  and          a3, t6, t3
                  xor          s8, s6, tp
                  xori         t4, t4, -1561
746:              auipc        t3, 21254
                  sra          a6, s6, t0
748:              slli         t4, gp, 9
                  lui          a3, 595455
                  slt          a0, a6, a1
                  or           t3, gp, a7
                  andi         t6, a7, -1584
                  bgeu         s8, s6, 764f
                  beq          a2, s5, 774f
                  and          zero, t6, t1
                  xori         zero, s1, 1050
                  bgeu         a0, t0, 767f
                  sub          t3, t2, s1
                  xori         a7, s0, -477
                  xori         t4, a2, 102
                  nop
                  or           t4, s2, s4
                  ori          a5, s5, 1528
764:              or           s6, s11, t1
                  xor          a7, gp, t2
                  sub          sp, s4, s9
767:              and          a3, s2, s10
                  ori          a2, a7, -1119
                  lui          ra, 546044
                  sll          s8, t6, a2
                  bne          tp, t3, 776f
                  beq          t0, a2, 781f
                  srl          a0, s10, ra
774:              bne          s3, t3, 779f
                  srl          a3, s6, t1
776:              nop
                  lui          tp, 990114
                  sltu         tp, t0, t5
779:              slti         a4, s5, -95
                  addi         s10, s2, -870
781:              slli         s9, t2, 0
                  auipc        a1, 541054
                  slli         tp, s11, 23
                  ori          s0, t2, -1711
                  slti         tp, s11, 249
                  blt          ra, s8, 806f
                  ori          gp, a6, 739
                  sltiu        zero, t1, -545
                  sub          s9, a0, t0
                  slli         s8, t0, 23
                  or           tp, s8, s10
                  sll          s10, a3, s3
                  srli         s4, s1, 17
                  srl          a0, tp, t0
                  bne          a3, ra, 812f
                  xori         a2, tp, -467
                  andi         s3, zero, 1589
                  nop
                  sub          a7, t4, a6
                  sll          a6, zero, a4
                  bgeu         s2, a4, 807f
                  bne          ra, t0, 814f
                  auipc        t0, 223159
                  auipc        s4, 448570
                  ori          s0, t3, 1531
806:              or           a7, a4, zero
807:              sra          s2, a4, s10
                  auipc        s10, 753336
                  andi         t3, a7, -353
                  sltu         sp, t4, a6
                  andi         a2, s2, 1999
812:              slti         zero, a4, 1051
                  addi         a5, a7, 1760
814:              slti         t0, t0, -1194
                  srli         gp, sp, 24
                  and          a0, tp, s5
                  srli         s4, a0, 30
                  srl          s3, t4, a0
                  slli         a6, s0, 14
                  srl          tp, s5, a2
                  nop
                  srli         s9, t0, 27
                  sll          sp, s9, s1
                  sll          a6, s6, ra
                  add          ra, zero, a1
                  auipc        s6, 793748
                  slti         t6, s8, 1449
                  srli         s7, t4, 20
                  sltiu        t6, sp, 399
                  slli         s8, a3, 16
                  xori         s5, a6, -1084
                  xor          t0, ra, a3
                  andi         s2, s0, -75
                  andi         s3, zero, 1697
                  bge          s0, s8, 851f
                  sub          s6, s1, s7
                  bltu         a4, gp, 846f
                  addi         tp, ra, -2030
                  bne          a5, a0, 850f
                  sltiu        t4, t4, -868
                  andi         s8, t1, 1960
                  blt          zero, s10, 849f
                  ori          a2, t0, 1768
                  andi         a2, t1, 921
                  sra          s4, s1, a6
846:              slti         tp, s8, 471
                  ori          a0, t5, -1339
                  addi         t2, a1, -1702
849:              ori          a6, t1, 1395
                  andi         t4, a2, 449
                  srai         ra, a5, 8
                  lui          t2, 827524
                  slt          ra, s10, t5
                  srai         s10, s5, 21
                  add          t3, a3, s8
                  slti         a3, s7, 1331
sub_1_j5:         jal          ra, sub_5 #jump sub_1 -> sub_5
850:              bltu         a4, gp, 859f
851:              sll          s8, s5, tp
                  srli         a1, a2, 19
                  ori          a0, t6, 60
                  addi         s7, s8, 1161
                  srli         zero, s1, 27
                  add          a5, s1, t0
                  beq          sp, s4, 863f
                  slt          t0, s10, s0
859:              slti         ra, a6, -621
                  sra          a0, s6, t6
                  auipc        a0, 838478
                  beq          t2, s11, 873f
863:              sra          a1, tp, s1
                  sltiu        sp, s3, 365
                  ori          s3, t2, -69
                  lui          a0, 96377
                  srli         s1, s0, 16
                  srl          s4, t2, a4
                  sub          a5, tp, t5
                  ori          t0, s0, 1845
                  bgeu         s1, a4, 876f
                  srli         s0, t1, 11
873:              sra          tp, s1, t5
                  add          s8, a4, t5
                  beq          a0, a0, 882f
876:              slli         t2, t2, 21
                  andi         a7, zero, 1264
                  xor          t3, s2, t1
                  srl          a5, s0, s5
                  bltu         t1, s2, 900f
                  slt          s7, s9, gp
882:              bltu         s0, a1, 891f
                  slli         a1, t6, 19
                  beq          gp, s3, 890f
                  xor          s3, zero, a0
                  sll          s9, zero, t5
                  add          a1, a5, t3
                  slt          zero, s1, s8
                  sll          zero, s6, a3
890:              srli         s8, s7, 14
891:              srai         s9, a0, 15
                  srli         t2, a0, 0
                  slli         s7, a2, 17
                  nop
                  xori         sp, s2, 1064
                  auipc        s3, 969701
                  addi         s0, s4, 278
                  andi         s3, a3, -1924
                  srl          s7, a6, t4
900:              lui          a2, 10646
                  sltiu        s10, s7, 1460
                  sub          gp, s8, a1
                  ori          a3, s1, -1798
                  sub          s8, t4, s2
                  lw           ra, 4(t1)
                  srai         t3, s3, 31
                  sltiu        s10, s3, -69
                  xori         a1, s8, 163
                  addi         t1, t1, 32
                  lui          a1, 544836
                  srli         sp, a0, 14
1330:             addi x19, x1, 0
1330:             jalr x19, x19, 0
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
.word 0xa0116c7d, 0x7f605f97, 0x51ef814b, 0xe89903d8, 0x8802ad04, 0x6c4089d1, 0xc137af91, 0x7c6ade07
.word 0x4aa35952, 0x5e2bdf55, 0x646b836e, 0xabfe7949, 0x7d610a33, 0xedcc59a3, 0x5079e0ed, 0xf6988449
.word 0x2e00c8d3, 0x3f1a1d94, 0x6010074d, 0x149d92cc, 0xcb49e1da, 0x0d4e80b9, 0x5b18a303, 0x7fa2e736
.word 0xcac0fb56, 0xe973e4a7, 0xd39a9c92, 0x09becb5c, 0x27712521, 0xdc0a0cc9, 0x9a6fec17, 0x67d49f65
.word 0x008f8b70, 0xede02620, 0x17d17ec0, 0x09f9f758, 0xfa67b11a, 0x04add612, 0x74ffca23, 0x56df41ac
.word 0xfe3ddc4c, 0x20c64572, 0xe836a245, 0xa69dfed0, 0xd2ec2b77, 0x8bc9ff14, 0x2b09d440, 0xef4bf3b3
.word 0x5cbcfd1b, 0xbe58ebbc, 0xbb12333e, 0x59b09a73, 0x14a04e03, 0x7e4ba301, 0xa7bca6cd, 0x1b56b8d8
.word 0xd01a6d97, 0xf613e552, 0x51f5c5ec, 0xf91afbe5, 0x7090f746, 0xe9b1bb8a, 0x415cd943, 0xc4118586
.word 0xd7dcf916, 0xcee86ab7, 0x64db3b82, 0xaf48181a, 0xeffdaaec, 0x2a542258, 0x6fe61705, 0x24a19261
.word 0x8367f39b, 0x1bb6f2c2, 0xb06574cb, 0xacb851a5, 0x0e06284b, 0x97036329, 0x5167e66c, 0x93811d73
.word 0x9bf1d928, 0x33570784, 0xe799a1b4, 0x07fb0271, 0x2ce0ae50, 0xdc6ba419, 0xba04847a, 0x57d4b38b
.word 0x163b9d60, 0xd34b5d35, 0xf4886188, 0xd412a317, 0x2d486101, 0x6959f072, 0x81d6c11b, 0x115ab7d9
.word 0xbacccee4, 0xa2df801e, 0xa0f61b35, 0x3588a9f6, 0xd24de7ae, 0xe5e12aee, 0x397cd306, 0xc8372668
.word 0xa454bc30, 0x1b6190bc, 0x26076c79, 0xa39cf01c, 0x7851118f, 0x3d8f609b, 0x04b3f6c9, 0x271fe9f6
.word 0x983c1970, 0xd148940a, 0xa2d01ebf, 0x113c284b, 0x9c630962, 0x0c390d19, 0x35c508ca, 0xb96a3803
.word 0x8ee8506e, 0x6b77f55e, 0x61456331, 0xbb0f8965, 0xc27a27b5, 0x78054701, 0xa9a1a62c, 0x96123257
.word 0x7a832e23, 0xe34d0281, 0xe1476cb2, 0xc435679a, 0xf9d79639, 0x91a466eb, 0x4b1c6d04, 0xac7bdb94
.word 0x5bdb86b5, 0xe0b5a6f0, 0x21e44005, 0xc33e7e00, 0x41222ab0, 0xd7cdbc20, 0x7a3b0254, 0x30530f96
.word 0x6d33b414, 0x24311368, 0xaf331034, 0x3ccee6b7, 0xa6b97484, 0x59c4cd63, 0xf2876405, 0x745d1348
.word 0xc4e38c0c, 0xf0131fa4, 0x3981ce4c, 0xce78d48b, 0xaa828ad7, 0xba649c0b, 0xc33eee97, 0x3b4e8659
.word 0xf67ab933, 0x87bb2b46, 0x7ed2c797, 0xbe4599f2, 0xd32d362e, 0x768035bf, 0x8e3ca9a8, 0x6f5c6c87
.word 0x29fad190, 0x94b9974c, 0x329416aa, 0xf0291613, 0xd267718d, 0x2177c601, 0xe40e4cad, 0xaa992004
.word 0xd970c3a5, 0xd5d14c40, 0x6be790a8, 0x8cf5b700, 0xabe03688, 0x2e51025e, 0x01be1272, 0x6158160a
.word 0x71573923, 0x1fa62106, 0xad674eff, 0xcb654f16, 0xd5418145, 0x94a31e9b, 0xb6e33131, 0x0b22fe33
.word 0xd8762a20, 0x4e79cd5a, 0x2d99db74, 0x280e7cdb, 0xd7da3d37, 0x3a493f64, 0xe39b905b, 0x1fcc33da
.word 0xbe450d80, 0xb5ead777, 0x66dd7c60, 0xa4426fa2, 0x8b2fd12f, 0xf39e227b, 0xb8adc213, 0xd45d968a
.word 0xd9461379, 0x44956d9a, 0x9af30261, 0xb5f6e683, 0xcd8956de, 0x02c3210f, 0x2aa5e14a, 0x1f4a1f83
.word 0x37bafd37, 0x71ff2afe, 0x3855fb44, 0x80738940, 0x6aea0b4a, 0x2471fac6, 0x16d41320, 0xaa1cd37e
.word 0x596628d0, 0x2cce7bec, 0xac6040dc, 0x93a9a792, 0x9f8a38aa, 0xc388e149, 0x347ba9e7, 0x2823c8e9
.word 0x5d878218, 0xd80afec8, 0x1402a92e, 0xd97169c3, 0xf3ecfc97, 0xc43d80fa, 0xdbe05a2e, 0x031bb362
.word 0xbea54a31, 0xc1fc40c3, 0x4788ddbe, 0xdb7702e6, 0xe2f29435, 0x2a049fdc, 0x0df3a554, 0xeda596b1
.word 0x231db57d, 0x8b4d2d25, 0x86dd0abf, 0x199fe14d, 0x3668e18b, 0x4aafbdd8, 0x1189b467, 0x5009b03a
.word 0x85f59679, 0x46ca4b78, 0x0692c09b, 0x11d554a3, 0x305ee243, 0x90986298, 0x201e4840, 0x40394eba
.word 0xb36a746e, 0x28eac0c7, 0xbcdedbe7, 0x22cff665, 0xf60458e8, 0x6e029ed5, 0x7f619fb7, 0x0088ee3d
.word 0xc52655d7, 0x7c03fff3, 0x39a32d66, 0xdb1ffd5a, 0x7b34fef2, 0x2c245fd3, 0x6adb61d9, 0x102645a5
.word 0xf82971d7, 0x421fe5e3, 0x5c95caba, 0x64d41d55, 0x835c72fe, 0xe44eb35e, 0x19fd462f, 0x3b14345d
.word 0xe0deb078, 0x8f43f1ab, 0x088f9800, 0xe31bb554, 0xb78a1a28, 0xf3ff62f9, 0x0945f3e8, 0x4e77b140
.word 0xfe4753f8, 0x2f771b2e, 0x82cdaec7, 0x4934b630, 0x26e22dbe, 0xcb49bf1f, 0xaf008e9b, 0x28f01a59
.word 0xef8f43ac, 0xb98e6869, 0x8843352f, 0x249b4175, 0x77bc6c32, 0xabd187e3, 0x0cb74c1f, 0x842981a8
.word 0x8c6428a0, 0xa5e4eb98, 0xe18a06ba, 0x8dfa592a, 0xcfdf7153, 0x85c42145, 0xaa76a260, 0xb6ec97bc
.word 0xb5f17f45, 0xdfa3582f, 0xa47b2622, 0x38f787c2, 0xf679c007, 0xbbb9500d, 0x1cac358b, 0x755769a0
.word 0x564fefaf, 0x6ee58804, 0xc525b261, 0xa7fd6098, 0x8e195454, 0x53f4afaa, 0xfa13297d, 0xcef8edd8
.word 0xbe6ed7ce, 0xd910e853, 0xb49e130a, 0xe597a8d8, 0xde8ec898, 0x7b5144de, 0xe8c58b55, 0x7fb9e59a
.word 0x252a43ec, 0x5861fb63, 0xb3dc365a, 0x8a625ba9, 0xa2b06e0c, 0xfab8cb34, 0xee8f31b9, 0xde6f3cd3
.word 0x7f34cc9a, 0xa9578e4e, 0xa313547b, 0x758966af, 0x8b97080f, 0xf7ddd5f3, 0x8dd12f36, 0x9d12e154
.word 0x2482746d, 0xa75810bf, 0x1288b197, 0x7fca8e8e, 0xdb9c22ad, 0x3b0f5fe5, 0xec34633f, 0xd70826cf
.word 0xe013cd88, 0x3fe9e9ed, 0x311f5847, 0x5ac991ed, 0x9cad8bc5, 0x46996114, 0x0b3e1f09, 0xc39ebfa7
.word 0x9c81dd04, 0xb5bbccdf, 0x135e9599, 0x7acdba3e, 0x0f4c43ae, 0xcf35e9a1, 0xfa655fdc, 0x70d90552
.word 0x560a3d47, 0xf6f4209b, 0x4cb92e6a, 0x1596c75d, 0x6029a50d, 0x35ce9301, 0x6c5ca918, 0xa74ac54b
.word 0xfe27e0a1, 0xcd7ad902, 0x4f888ee8, 0x4d34271f, 0x825ff801, 0x60988212, 0x8967c66c, 0x1b9614fd
.word 0x1a548aad, 0x702f0f37, 0x1d63b06f, 0x35ae2695, 0x5869b276, 0x744f6a83, 0x2a8df85d, 0x680e5bf7
.word 0xbfed8cc3, 0x21336843, 0x7fd55d8d, 0xa33892de, 0x36823dfb, 0x46ba467d, 0xf9a9a9b6, 0xe0b4b4d9
.word 0xe54d952d, 0x8b3c0583, 0xb220f1df, 0x92af77b0, 0x7e18eac8, 0x95c6bf58, 0x18db58cb, 0x7d9420d3
.word 0xe026af54, 0xa5aa6682, 0x53dee374, 0xa267297a, 0x1a6c51b7, 0x65b548d0, 0x346108ee, 0x1ddcbecd
.word 0x4593a9ab, 0x05b51d4d, 0x81879e8a, 0xc75498a1, 0x9c62fbc8, 0xd940ddf4, 0x989c517f, 0x04482cd1
.word 0xc8b28c53, 0xb8f054ed, 0x8a8b7312, 0x13c189f2, 0xde341414, 0xa1a66d9a, 0xc25893a3, 0xc3c673c0
.word 0xed0a14bf, 0xfcd86bb3, 0x814efc7f, 0xbd4829e0, 0x06a0bd31, 0x2ff9f67d, 0x65175b20, 0x0a10c783
.word 0xf0f76375, 0x764353ac, 0x4bba9ed6, 0x9a780d5b, 0xbf9d8cb1, 0x816e317d, 0x094e765c, 0xe6354fcc
.word 0x3e456d3a, 0x6d1a56af, 0xa939c8e7, 0x0a9f3ac5, 0x7617f76e, 0xfd763c2b, 0x0932164f, 0xe5b577f0
.word 0x5ccbf12f, 0xdd0b7f97, 0x37587f76, 0xc9408b4b, 0x73ea5c43, 0x60d6fa04, 0xba11bcc9, 0xd886ac7e
.word 0x1acde643, 0xbdf7567b, 0xfd6f521d, 0x547fb597, 0x7b76a70b, 0x9966c3e8, 0x1e8d9896, 0x66afcc5d
.word 0x5962bfcf, 0x545eb059, 0xb36b350e, 0x0b131734, 0x0f8816ea, 0x63588e02, 0xbd0a6b6c, 0xddc661cb
.word 0x2c2382af, 0x7721348f, 0xc09f6dbc, 0x221b64cd
.section .region_1,"aw",@progbits;
region_1:
.word 0x71ec7690, 0x7171373f, 0x41b54f98, 0x61da04cd, 0x80599626, 0xcb9f30f9, 0xb67c0132, 0xd7fd8b45
.word 0x621d4032, 0x694c20af, 0x2e96a44a, 0xd4246119, 0xae84d237, 0x7e35929c, 0x4fa71127, 0x1b1c2fba
.word 0xd0e2dedb, 0xf7fbbcf3, 0x0b73be35, 0x4591bc15, 0x8f60138c, 0x251a9601, 0x6dd00086, 0xeea23326
.word 0xa4a8401e, 0x32c098e9, 0xb1097549, 0x9139d6a8, 0xfaf70798, 0xc10912ac, 0x391f2256, 0x7bfc4bd6
.word 0x3cfcfae1, 0xf9dc71a3, 0x6910a360, 0x2d29200e, 0xfaf930e5, 0xf991d69a, 0x4448345e, 0x7d836df9
.word 0x7719ca89, 0x53ff8eed, 0xb4c70e71, 0xa5b158b0, 0xbd05b483, 0xca2523c2, 0x0892d7ab, 0xbff82099
.word 0xf98b97e1, 0x5b3810a0, 0x62a76c3d, 0xb8f07cae, 0xd3df7c60, 0xf6bd6e16, 0xd9ad9816, 0x8aa9376a
.word 0xd534ccdd, 0xe4baa13e, 0xed046d27, 0xdeca7f8e, 0xb0e38d2c, 0x44b3240d, 0xae64ec91, 0x21ee4b83
.word 0x599642fe, 0xb84dce3f, 0xadfb3cf2, 0x70e2c4a1, 0x250b2787, 0x987f0b3d, 0x94d4cea8, 0x4e31029b
.word 0x414ff0ac, 0x44bf018e, 0xab5e77bd, 0xfa08c315, 0x00d16e7c, 0x4787e560, 0x1002f6f5, 0xc44c886b
.word 0x8dd9ec18, 0xcadba89d, 0x4a72f5b2, 0x757c03c7, 0xd5797134, 0x9b95d8f8, 0x0f1b356f, 0xa2286dfb
.word 0xa69ac136, 0x25d0d35b, 0x50e16d09, 0x6a5cf3b5, 0x22ee6dce, 0x5c4daf21, 0x958a503c, 0x99e9710a
.word 0x8b92df18, 0x921fa168, 0x0dd75aeb, 0x5df7eca5, 0x2fb63072, 0x25277f90, 0x1bcce0a0, 0x52d7336f
.word 0xf41041b0, 0x694483f4, 0x87a3d349, 0x189fbafe, 0xbe55bd15, 0xfe7dbc29, 0x8ecb7145, 0x53cb4a91
.word 0xef9d27d3, 0xc0ec40e1, 0x333ac132, 0xa68feeb8, 0x26236803, 0xeb238c0d, 0x435900a0, 0x4176c0c6
.word 0x4739a93c, 0x87f6d638, 0x3fead390, 0x45462076, 0x396cd314, 0x10bf9070, 0x055627f8, 0xb202b2cf
.word 0xcf4ce82e, 0xa589e486, 0xda6e52ea, 0x6168f5de, 0x1802dc65, 0x8ace3658, 0xe5fb5b7b, 0x84a6ece1
.word 0x0596276f, 0x6d3f336a, 0xb59a9f63, 0xa678a48e, 0xb6a17321, 0x422d9024, 0x67cf68a9, 0xb0749122
.word 0x59c955b1, 0xdd386037, 0x2027f34c, 0xe21e29f5, 0xde7737b9, 0x648ba494, 0x35d30cde, 0x8fdac0eb
.word 0x953320e0, 0x4177a6ff, 0x93ea8891, 0xbe804845, 0x43b497a8, 0xc1953aa3, 0xb1ff6734, 0x6d8e4ba5
.word 0x1e114bd0, 0x58ccf47b, 0x7bacb0d5, 0x4e0661e9, 0xf53d1ecb, 0x1f16f3bd, 0xfb150d6f, 0x9ae17a60
.word 0x2d18489c, 0x38189a50, 0xf67d7c7a, 0x4a550e56, 0x70b15ddd, 0x012f36ec, 0x6a914495, 0xdc596b41
.word 0x4f3054c9, 0x9b0361ae, 0x088608ef, 0x5d44240d, 0x205292c9, 0xa00a14cc, 0xa7769542, 0x78fcf8f9
.word 0x3eb3d8af, 0x1cc4a3a2, 0xd33f73c8, 0x253a07f6, 0x396e19c6, 0x75c52c6d, 0x1b76403c, 0x29fccf38
.word 0x8f5f51c4, 0x84d7bdf5, 0x3610966d, 0xe5463baa, 0xac76b2dd, 0x0a120220, 0x87de5833, 0xf91e5b58
.word 0xcf889dc0, 0xfbce02e4, 0xd22ff760, 0x0dc1908a, 0xdc020825, 0x35373ea0, 0x54135b16, 0xe9c41f53
.word 0xefcbee57, 0x2a00e3b6, 0x187d5584, 0x03b53688, 0xf5528361, 0x804c1373, 0xe7b488b6, 0xd0946a68
.word 0x0456fcf7, 0xa3758539, 0xda673a05, 0x2ca8df10, 0x7c41a562, 0x4aed360b, 0xa7297b83, 0x36932a3a
.word 0x20de3ffb, 0xd7456ad2, 0xff642641, 0x05589ce6, 0x6c4fa24a, 0xc37e48f3, 0xff561b90, 0x00c3e983
.word 0x63911c6c, 0x86528709, 0x81a028a0, 0x29009af7, 0x427be3ee, 0xfaa1d428, 0xc30c306d, 0x1e863dcf
.word 0x8197e132, 0x3ff06703, 0x54c4f2cb, 0x7a854285, 0x3268cbbe, 0xacd09dcb, 0x748e8b82, 0xf41a040c
.word 0x55e4424f, 0x2a9e078e, 0xc7543aa7, 0x45d7bc91, 0x80a01b26, 0x7f6df725, 0xe421494a, 0x12b30bb1
.word 0x115f4859, 0x0800bac3, 0x15be8158, 0x0d19a6ef, 0xfc3715ac, 0x610e4967, 0x68b3f472, 0x4557e6bf
.word 0x0fb95bd3, 0x2c3359f0, 0xf623c14d, 0x631c5848, 0xb9ea65e6, 0xbf1046c0, 0xacc21846, 0x97796541
.word 0x8c24e0c6, 0x502f5ce1, 0xd75f2500, 0xf8fc4e5b, 0xf56e0f9d, 0xe5a0cafa, 0x3c6dd0cc, 0xf8d4d27f
.word 0x457a30e0, 0xb743064f, 0xa1807445, 0x7a82a092, 0xde4b5e19, 0x33024bf2, 0x47e3e80f, 0x24dd740c
.word 0x162e0829, 0xcf37c28d, 0xa3603942, 0xd2a7f82f, 0xb6835a74, 0x9f3e335b, 0x827da38d, 0x35475a05
.word 0x237f433f, 0x434028ca, 0x8cc07af4, 0xf9b13666, 0x27091228, 0x11b79fb6, 0x37454971, 0x8d979f45
.word 0x90a648da, 0x8ac7ca3a, 0x7727b786, 0xdd872732, 0x5538af8d, 0xf308ef57, 0x8f16bd04, 0x425180bd
.word 0x91f08409, 0x5b3020c3, 0x327f2f11, 0xf84d6044, 0x0242dedb, 0xe7908f06, 0x903f3b38, 0xb8ba4210
.word 0x27953a4a, 0xced00683, 0x3ad85696, 0x76e8b3aa, 0x44c68831, 0x876b0bff, 0x76691137, 0x5cbc515a
.word 0x4074e37e, 0x764b83a0, 0x96cf88a0, 0x36175b60, 0xd425a0b9, 0xcdc66f0a, 0x4862adb9, 0xeb57b2f5
.word 0x373a2b11, 0x56051e04, 0x04c90cf5, 0xe1d7149a, 0x53efcbbf, 0xe80e5fe5, 0x09d6bd52, 0xa1875c6e
.word 0x0479d895, 0xe98291ea, 0x0ca192b5, 0xfb4dd3cd, 0xc697db47, 0xc257f762, 0x928a6322, 0x72ef5d64
.word 0x540cde39, 0x2d67f206, 0x1c6a8ba9, 0x7ef97388, 0xf27ec49e, 0x41823ca9, 0xab642dbd, 0xa733e435
.word 0xab346703, 0x5c9c5e03, 0xc8c63e9f, 0x3fe8f92c, 0x74db110f, 0x8fce2590, 0x79661e3f, 0x0293b9f2
.word 0x300eea03, 0x7e645003, 0xb6e00e78, 0x47a775d1, 0x9098ee03, 0x909ccd09, 0x7febd328, 0x96415f9b
.word 0x1d8c3860, 0x1ed31316, 0x6152fbfe, 0x6d56c22d, 0x0575bc42, 0x68e2582e, 0xad809bef, 0xa6a7842e
.word 0x2590d7cf, 0x8df84194, 0x55178512, 0xcb38bb29, 0xff51aa38, 0x032e8734, 0x8c7acf0f, 0x34878a69
.word 0x9de6cbb2, 0xe3c1e59a, 0xf4f6d908, 0xeff3155c, 0x5a176ff0, 0x26da9c1c, 0x5ccb18e6, 0xf4b67a70
.word 0x0f61902f, 0x14c5ee56, 0x6ebca835, 0x87f7386f, 0x5d299e1e, 0x08f4d10d, 0x8c4155eb, 0xce0a8548
.word 0x07a1e9c7, 0xef848ee5, 0xf7758a3b, 0xc5c31c0b, 0x0df649c5, 0x50a152e1, 0x7096dcee, 0x7b55b1c1
.word 0x8544c535, 0x8eafc407, 0x266ea091, 0xba196a12, 0x97bc5fb9, 0x0ac19cf7, 0xfaf37fad, 0xbdbe9f4b
.word 0xfe7923f0, 0x80d02b0f, 0x74818ef3, 0xf3331711, 0x48c291ca, 0x105fcb99, 0xcf84e0a4, 0xd4e0894c
.word 0xc3d30066, 0xcc2a44e9, 0x16d157ee, 0x5e471003, 0xe40e2a9a, 0x5d9e45ec, 0xe879e2c6, 0xcdb11ff7
.word 0x17fcddba, 0xb26326b6, 0xfe59ef45, 0xdc656e70, 0xd1892033, 0x35497bda, 0xae96ec8f, 0xc73e3a23
.word 0x587497c4, 0xfe82240e, 0x40ed110f, 0x62544c57, 0x641df7f7, 0xb909a6bf, 0xb003be38, 0xde0f9e7f
.word 0xae151c33, 0x41deaf4d, 0x211a003a, 0xe6c14e4b, 0x080d8c63, 0x63be5021, 0xa84fc1b0, 0x2e4140d3
.word 0x72616c1f, 0xb52a38a7, 0x8d7b08e7, 0xe93926cb, 0x6f4ffb57, 0xaf1f7a22, 0xe8e64c54, 0xcb9c43cd
.word 0x323bf71b, 0x644a65be, 0x3b2ec6b7, 0x4647c57c, 0x73c0a32c, 0x89a8f49c, 0xf5021182, 0xba3c4070
.word 0xc6247bc1, 0x918a12ed, 0xc35821d6, 0xf3374f0a, 0xce1a8e77, 0x54029126, 0x85662d67, 0x477430f6
.word 0x2232afb8, 0x42fe842a, 0x259d021a, 0x9b87266b, 0xdf021956, 0xfc30e1ba, 0xb91c5126, 0xb0face52
.word 0x5d96cfd2, 0x30515d42, 0x873aebdd, 0x446f1fc4
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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x27, x6, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x9, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x9, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x9, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x9, x23, ecall_handler
                  li x23, 0x1
                  beq x9, x23, instr_fault_handler
                  li x23, 0x5
                  beq x9, x23, load_fault_handler
                  li x23, 0x7
                  beq x9, x23, store_fault_handler
                  li x23, 0xc
                  beq x9, x23, pt_fault_handler
                  li x23, 0xd
                  beq x9, x23, pt_fault_handler
                  li x23, 0xf
                  beq x9, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x6, x27, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

load_fault_handler:
                  add x6, x27, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

store_fault_handler:
                  add x6, x27, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x6, x27, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x6, x27, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x6, x27, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
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
