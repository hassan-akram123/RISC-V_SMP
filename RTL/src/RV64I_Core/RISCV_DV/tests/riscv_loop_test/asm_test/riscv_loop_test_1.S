.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf0415c02
                  li x2, 0xef3999cb
                  li x3, 0x0
                  li x4, 0xd
                  li x5, 0xdfc4fab8
                  li x6, 0x0
                  li x7, 0xdce202e3
                  li x8, 0x8
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x6
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0xf8765218
                  li x17, 0xc
                  li x18, 0xf
                  li x19, 0xe
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x3ec4e418
                  li x24, 0x80000000
                  li x25, 0x9
                  li x26, 0xc
                  li x27, 0xa2b42eff
                  li x29, 0x0
                  li x30, 0xc
                  li x31, 0x80000000
                  la x28, user_stack_end
main:             addi         s10, s4, -253
                  slli         a2, s9, 31
                  la           a7, sub_1
                  slli         zero, a4, 20
                  slti         zero, s8, -282
                  addi         a7, a7, 770
                  auipc        ra, 365583
main_j1:          jalr         s10, a7, -770 #jump main -> sub_1
                  la           s0, sub_1
                  sra          s2, sp, a7
                  andi         t0, a1, 192
                  xor          a1, t2, s3
                  addi         s0, s0, -479
                  xori         t1, s4, -730
                  slt          s8, s11, t5
                  or           t2, t0, a1
                  addi         ra, t5, -1957
main_j2:          jalr         s10, s0, 479 #jump main -> sub_1
                  addi         a0, zero, 5 #init loop 0 counter
                  or           s10, s1, gp
                  addi         s3, zero, 0 #init loop 0 limit
                  xor          s9, t3, s8
                  xori         s8, a5, 869
main_0_0_t:       sltiu        s8, s0, 1956
                  nop
                  slt          a2, t4, a4
                  and          t1, s5, s0
                  slt          a1, s11, s7
                  srai         s11, a4, 18
                  or           s0, ra, t2
                  addi         a0, a0, -1 #update loop 0 counter
                  sub          s6, s7, t6
                  nop
                  lui          tp, 85956
                  andi         s8, s0, -702
                  bge          a0, s3, main_0_0_t #branch for loop 0
                  sltiu        t4, a3, -1312
                  sub          sp, t3, s0
                  bge          t4, s3, 12f
                  nop
                  bltu         s2, s6, 7f
                  or           t1, s5, s0
                  srli         s10, s2, 26
                  ori          t5, s4, 1046
7:                addi         s0, s2, -1096
                  xor          sp, sp, s2
                  sra          a2, a5, t3
                  ori          s0, tp, 811
                  andi         s0, tp, 183
12:               nop
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            srli         s1, gp, 12
                  addi         t3, t3, -12
                  and          t1, tp, s5
                  sw           s10, 4(t3)
                  and          a7, s6, a2
                  sltu         a2, s11, ra
                  srl          a6, a5, tp
                  xor          t5, s10, zero
                  lui          s8, 103841
                  bge          s5, a2, sub_4_j8 #branch to jump instr
                  and          a1, a1, a1
                  sub          s9, sp, s8
                  slli         s8, a5, 17
                  andi         a4, a5, 718
                  xor          s1, zero, s1
sub_4_j8:         jal          s10, sub_5 #jump sub_4 -> sub_5
                  sra          s1, a4, t5
                  la           a5, sub_5
                  slli         a2, tp, 6
                  srl          a7, a1, a1
                  addi         a5, a5, 1002
                  lui          s6, 590543
                  srli         a4, t4, 31
sub_4_j9:         jalr         s10, a5, -1002 #jump sub_4 -> sub_5
                  addi         s1, zero, -9 #init loop 0 counter
                  slti         s7, s5, -455
                  sra          ra, a0, tp
                  srai         s9, a4, 26
                  addi         a0, zero, -17 #init loop 0 limit
                  sltu         s5, a5, s10
                  srl          t2, a5, a6
                  and          t5, s8, sp
                  srai         s11, s8, 1
                  slt          s3, a6, s0
                  andi         gp, gp, 1257
                  sub          s11, t1, s10
                  nop
                  sltu         s8, t4, a1
                  sra          a6, s6, s7
                  srai         s6, t6, 11
sub_4_2_0_t:      sltu         t1, t2, a6
                  srl          t2, a3, t3
                  sltu         a6, a4, s7
                  ori          sp, a4, -844
                  slti         s10, a2, 780
                  ori          t5, t1, -927
                  addi         s1, s1, -8 #update loop 0 counter
                  sltu         s7, gp, a2
                  bne          s1, a0, sub_4_2_0_t #branch for loop 0
                  xor          a2, a4, a3
                  addi         s11, zero, -5 #init loop 0 counter
                  slti         s5, t3, -1049
                  and          a5, t4, s8
                  slti         s1, t1, 66
                  srai         a6, t5, 16
                  auipc        a3, 966357
                  srl          s6, gp, a6
                  srli         gp, a5, 27
                  srl          s5, t1, zero
                  sll          tp, s9, a3
                  sub          t1, a0, gp
                  slti         s9, a5, -384
                  sub          s8, t2, t1
                  srl          ra, sp, ra
                  addi         a7, zero, 7 #init loop 0 limit
                  xori         s9, s6, 1849
sub_4_0_0_t:      addi         s2, ra, 1264
                  srl          zero, a3, a7
                  add          a3, a3, s5
                  or           a6, a3, s2
                  srl          gp, s0, ra
                  and          s7, t3, a3
                  srli         s2, s0, 10
                  slti         t5, t4, 1651
                  addi         s11, s11, 4 #update loop 0 counter
                  beq          s11, a7, sub_4_0_0_t #branch for loop 0
                  sltu         t2, ra, t1
                  addi         a2, zero, -9 #init loop 1 counter
                  addi         a6, zero, -6 #init loop 1 limit
                  srli         a1, a0, 2
sub_4_1_1_t:      slt          a1, s1, sp
                  addi         s1, s8, -2030
                  sra          t0, t6, ra
                  sltiu        s8, gp, 1429
                  addi         a2, a2, 1 #update loop 1 counter
                  sra          s7, t1, a1
                  nop
                  ori          a3, s4, -1310
                  or           s2, t4, zero
                  nop
                  addi         s10, zero, -4 #init loop 0 counter
                  andi         a7, a7, -933
                  addi         s3, zero, -1 #init loop 0 limit
                  addi         a7, a2, 442
sub_4_1_0_t:      slti         ra, a1, 1878
                  addi         s10, s10, 10 #update loop 0 counter
                  and          s9, gp, t1
                  blt          s10, s3, sub_4_1_0_t #branch for loop 0
                  srli         a0, t2, 17
                  sub          ra, sp, t4
                  blt          a2, a6, sub_4_1_1_t #branch for loop 1
                  srli         s9, s7, 2
                  slli         t4, s7, 17
                  blt          s3, a5, 21f
                  srai         s7, t3, 2
                  and          s0, s0, s5
                  andi         s9, s2, 1797
                  add          s6, s3, tp
                  bge          s10, s1, 10f
                  sll          gp, s7, t4
                  bgeu         a1, sp, 25f
                  sltiu        t2, s5, -1302
10:               andi         t1, s5, -974
                  sub          s5, t6, s5
                  andi         t5, a2, 336
                  slt          s8, sp, a1
                  lui          s11, 35050
                  sub          zero, s2, s7
                  slti         a5, s3, -346
                  bgeu         s1, s9, 24f
                  lui          t5, 782108
                  lui          s6, 478322
                  bge          s0, a6, 28f
21:               sra          s1, tp, s11
                  srli         t0, s8, 11
                  slt          a6, a7, a7
24:               bge          zero, sp, 27f
25:               sltu         t2, a6, a6
                  blt          zero, a5, 40f
27:               nop
28:               slti         s10, a1, 1399
                  slt          s2, t0, tp
                  sltiu        s8, s10, 151
                  sra          zero, a5, a0
                  andi         s8, a5, 596
                  srai         sp, s7, 5
                  sll          sp, s0, a2
                  nop
                  slt          a7, a6, s0
                  blt          zero, zero, 52f
                  auipc        s2, 54291
                  beq          gp, s11, 45f
40:               xor          s2, s7, s2
                  blt          t2, s7, 42f
42:               slti         s2, a3, 467
                  andi         gp, s0, -261
                  add          s11, a3, zero
45:               xori         s6, t0, -273
                  xor          a5, t5, gp
                  ori          s6, t6, 1068
                  nop
                  bge          t1, s8, 54f
                  sra          a5, a5, zero
                  sub          s1, t4, s7
52:               srai         zero, s1, 5
                  lui          a4, 473781
54:               bge          s4, gp, 67f
                  srli         a2, a7, 5
                  sltiu        a4, t5, -1227
                  add          a1, s4, a4
                  xor          s10, t6, t5
                  sltu         a0, a7, t2
                  lui          ra, 370382
                  beq          t2, s10, 68f
                  srli         sp, zero, 31
                  bgeu         s6, s1, 64f
64:               slt          s0, a0, s0
                  blt          a2, gp, 70f
                  addi         s7, t3, -1423
67:               nop
68:               sll          zero, a3, s8
                  xori         a0, t2, -756
70:               bltu         t1, t2, 79f
                  sll          t4, s8, a5
                  andi         s9, a6, 158
                  ori          s3, a6, 945
                  beq          t6, s5, 76f
                  beq          t2, s10, 85f
76:               lui          s10, 1035909
                  srai         s8, tp, 6
                  nop
79:               bltu         s11, s7, 86f
                  bge          ra, tp, 99f
                  blt          a3, a5, 92f
                  sltu         s7, s3, s5
                  or           t1, t5, a6
                  xori         s1, s6, 566
85:               lui          zero, 440137
86:               sra          t1, a5, a5
                  slti         a4, a6, 1683
                  sltiu        s9, t0, 2021
                  xori         t4, t4, 1074
                  sltu         a4, ra, t2
                  srli         s0, s4, 30
92:               ori          t0, s0, 1227
                  auipc        gp, 508848
                  bltu         sp, s2, 101f
                  srai         s3, gp, 19
                  bge          t3, t5, 101f
                  and          s5, a3, s0
                  sltiu        s10, t0, -1279
99:               auipc        t4, 443533
                  srai         s11, a6, 22
101:              lui          a6, 939018
                  bne          a1, s7, 106f
                  slti         a5, s8, -65
                  nop
                  sltiu        t0, t4, -552
106:              andi         gp, a7, -1788
                  srli         sp, s3, 11
                  sll          a3, a4, a4
                  add          s8, a0, s4
                  addi         tp, s5, 956
                  bltu         a6, s4, 116f
                  bgeu         s0, s0, 121f
                  sltu         s5, a0, tp
                  slt          gp, t0, t0
                  bge          a6, s3, 132f
116:              bge          s8, t2, 119f
                  beq          a0, a3, 128f
                  bge          gp, s11, 123f
119:              sra          a6, zero, a0
                  bge          t5, s9, 121f
121:              auipc        t2, 469358
                  or           t5, a2, t3
123:              xor          s11, s1, t3
                  auipc        s11, 144562
                  slt          a0, s10, s9
                  srli         a1, s8, 30
                  andi         s7, s7, -1961
128:              add          t4, tp, s11
                  add          sp, ra, a0
                  blt          t5, s3, 137f
                  bge          a7, s4, 136f
132:              beq          a0, t2, 136f
                  add          a3, a4, tp
                  andi         s8, s11, -75
                  or           a1, t4, a0
136:              sra          s3, s2, a1
137:              sll          a2, a4, s7
                  sub          sp, a7, s11
                  ori          s5, t1, -774
                  srl          t1, s11, zero
                  xori         s7, sp, -381
                  srai         a0, sp, 4
                  lui          a1, 737921
                  and          s0, s11, s0
                  sltu         a5, gp, s10
                  sub          s11, t4, s9
                  blt          tp, s6, 153f
                  beq          s3, s7, 155f
                  srl          zero, s5, a5
                  or           a6, s0, s9
                  addi         s1, s6, -1463
                  sll          s10, a2, a7
153:              sltu         t4, s1, t2
                  add          ra, s6, a6
155:              srai         s8, a5, 12
                  sltu         a7, a5, ra
                  srli         t0, s9, 23
                  slli         a6, s5, 23
                  and          a1, a4, t4
                  bltu         tp, t5, 165f
                  or           s2, s10, t1
                  xor          t1, a2, t4
                  blt          t0, t6, 173f
                  sub          t5, ra, a7
165:              bge          s2, a1, 173f
                  sra          s7, a3, a7
                  nop
                  nop
                  blt          a2, s2, 171f
                  bne          t6, s6, 179f
171:              xori         t1, ra, -1479
                  ori          zero, s2, 837
173:              bgeu         s5, a2, 178f
                  slt          s1, a3, t1
                  xor          s3, t3, a5
                  beq          s0, a1, 179f
                  and          t1, s6, s0
178:              slti         t5, ra, 900
179:              sra          s8, gp, s5
                  andi         t2, ra, -587
                  add          s9, s10, s9
                  andi         gp, a0, 1551
                  add          t5, t4, a7
                  slt          t1, s0, a0
                  nop
                  lw           s10, 4(t3)
                  xori         tp, s8, -353
                  addi         t3, t3, 12
                  slti         t1, s8, 494
292:              addi x18, x26, 1
292:              jalr x18, x18, 0
sub_5:            xor          s5, s10, a6
                  sll          s7, s8, a7
                  blt          s10, t5, sub_5_stack_p
                  srli         s9, a0, 3
sub_5_stack_p:    addi         t3, t3, -36
                  sw           s10, 4(t3)
                  sltu         a6, a2, a5
                  addi         a2, zero, 2 #init loop 0 counter
                  auipc        t2, 406052
                  xori         s5, s2, -916
                  addi         s6, zero, -16 #init loop 0 limit
                  lui          s5, 300325
                  sub          a6, s7, tp
                  sub          s3, t4, s9
sub_5_1_0_t:      lui          a0, 685547
                  xori         s10, ra, -121
                  or           a3, t3, a1
                  xor          s10, gp, s7
                  lui          t0, 798655
                  addi         gp, a2, 954
                  slt          a0, t1, s8
                  srl          t4, ra, s7
                  ori          t1, a1, 1905
                  addi         a2, a2, -9 #update loop 0 counter
                  sltiu        a7, t5, 1275
                  addi         gp, s0, -1327
                  slt          t5, t0, t5
                  ori          s9, s3, 86
                  slli         t4, s7, 0
                  ori          zero, t1, 680
                  slli         s5, t4, 23
                  xor          s7, s2, s7
                  srai         a0, t5, 6
                  or           s1, t0, s8
                  bne          a2, s6, sub_5_1_0_t #branch for loop 0
                  or           a4, t6, s6
                  addi         s10, zero, 8 #init loop 0 counter
                  xori         a3, a7, 242
                  lui          s1, 680454
                  slt          t5, s5, t6
                  srli         s6, sp, 10
                  nop
                  slti         t5, a7, 71
                  sltu         ra, t5, a3
                  addi         a1, zero, -12 #init loop 0 limit
                  srl          a7, a3, s11
                  ori          a6, sp, -1030
                  lui          a0, 347024
                  sub          s8, t5, s11
sub_5_0_0_t:      lui          s11, 213617
                  xor          s8, s2, t4
                  add          a5, tp, a7
                  slti         t1, a4, -811
                  srli         gp, t0, 20
                  addi         s10, s10, -4 #update loop 0 counter
                  srli         t5, a4, 2
                  sltu         a5, s3, gp
                  nop
                  bge          s10, a1, sub_5_0_0_t #branch for loop 0
                  sub          s0, a7, s8
                  auipc        gp, 394678
                  blt          tp, s9, 3f
                  slli         a3, s11, 1
3:                blt          t0, a5, 6f
                  sltu         s10, ra, t4
                  slti         a3, s8, 1500
6:                ori          s0, s4, -1894
                  bltu         t5, s2, 17f
                  xor          s2, s7, s6
                  ori          t2, t6, 268
                  sra          s3, t0, s10
                  sub          t5, a3, tp
                  slli         a5, s6, 1
                  blt          s5, zero, 18f
                  slli         t2, t2, 13
                  and          ra, t3, s4
                  or           s11, t1, a1
17:               srl          gp, zero, a1
18:               and          a7, a7, s3
                  slt          t2, a2, ra
                  slli         tp, t6, 15
                  slti         sp, s4, -443
                  lui          s10, 407458
                  blt          t0, a1, 28f
                  xor          s9, s10, s8
                  slt          ra, a1, tp
                  auipc        t1, 333881
                  slti         sp, gp, 613
28:               slli         s6, a0, 1
                  add          sp, s3, t0
                  blt          s7, a0, 34f
                  sra          a7, t1, s8
                  lui          a5, 493679
                  or           a4, s6, s4
34:               sltu         s1, a1, zero
                  sra          a0, t6, t6
                  beq          t3, a2, 42f
                  bgeu         s6, ra, 53f
                  sltiu        t2, sp, 50
                  srai         s10, s5, 16
                  sltu         gp, t5, t0
                  slt          tp, t5, a7
42:               nop
                  ori          s1, s7, -1645
                  slli         t0, t0, 9
                  bne          a7, s0, 50f
                  blt          s11, t3, 50f
                  slt          s11, t4, a1
                  srli         t1, s7, 12
                  slti         a4, s7, 349
50:               xor          t4, s1, sp
                  bne          sp, a5, 65f
                  xori         s11, s8, 1417
53:               srl          s9, a2, a3
                  slti         tp, a5, 751
                  and          a2, a3, t5
                  srai         t2, t3, 21
                  xori         a6, s9, 693
                  bge          s3, t2, 59f
59:               add          s1, tp, s11
                  slti         s0, tp, 73
                  slli         a3, zero, 1
                  auipc        t0, 411037
                  nop
                  slti         s2, t6, 1065
65:               bgeu         s0, s8, 66f
66:               slli         t4, sp, 22
                  nop
                  add          zero, a0, t4
                  or           s11, t5, t5
                  or           s0, t0, sp
                  beq          t6, t0, 84f
                  xor          ra, t5, s10
                  xor          s11, t4, sp
                  andi         s6, s4, 2022
                  sltiu        s10, s5, 1645
                  sll          a0, a3, t5
                  bgeu         t4, s8, 87f
                  srl          t1, t2, s0
                  and          s8, a2, a6
                  add          s5, a0, t4
                  slti         t4, s0, -893
                  beq          s9, a0, 94f
                  sltiu        a2, t0, -1830
84:               ori          a0, t5, 1798
                  srli         s5, sp, 19
                  bgeu         gp, s10, 99f
87:               sltu         t2, a1, t6
                  blt          a2, t6, 94f
                  bltu         t1, a3, 93f
                  xori         gp, a0, 1705
                  sltiu        t1, a3, 1901
                  nop
93:               srl          t0, s3, a0
94:               sltiu        t4, s10, 520
                  sub          s3, s0, s4
                  addi         s3, a1, -1882
                  slli         s10, a0, 5
                  addi         a3, t0, 1699
99:               slt          zero, t4, s4
                  srai         s6, t4, 5
                  lui          gp, 200208
                  sll          zero, s2, a2
                  slt          gp, zero, s0
                  sltu         a1, s4, t3
                  slti         a6, s10, -219
                  lw           s10, 4(t3)
                  sub          s5, a5, s1
                  addi         t3, t3, 36
                  srli         a0, a2, 24
                  nop
171:              addi x3, x26, 1
171:              jalr x3, x3, 0
sub_1:            sltiu        sp, a1, -863
                  addi         t3, t3, -16
                  ori          t1, t0, -1622
                  xor          a2, t1, a7
                  sw           s10, 4(t3)
                  andi         t2, s4, -1222
                  andi         a6, t2, 2016
                  sltu         s7, s3, s11
                  addi         sp, s7, 1770
                  add          gp, s3, s5
                  xori         tp, t2, -186
                  xor          sp, s8, s3
                  sll          a6, zero, s0
                  slt          zero, zero, t6
sub_1_j3:         jal          s10, sub_2 #jump sub_1 -> sub_2
                  addi         s1, zero, -6 #init loop 1 counter
                  sltiu        a7, t5, -882
                  or           t4, a2, s9
                  ori          sp, a4, 1058
                  srl          a6, s1, s2
                  addi         s6, zero, 8 #init loop 1 limit
sub_1_2_1_t:      xori         t5, s2, 296
                  addi         s1, s1, 3 #update loop 1 counter
                  nop
                  addi         a3, zero, 0 #init loop 0 counter
                  sra          t2, t4, s9
                  xori         a0, s1, -1043
                  addi         t0, zero, 18 #init loop 0 limit
                  add          ra, s2, s4
sub_1_2_0_t:      sltu         s7, s8, t1
                  andi         a6, t2, -773
                  xori         zero, t2, -960
                  sub          s3, s8, a1
                  sll          t1, s8, t3
                  slt          s10, a7, s10
                  addi         a3, a3, 7 #update loop 0 counter
                  slt          a2, zero, t5
                  addi         t2, t6, 997
                  blt          a3, t0, sub_1_2_0_t #branch for loop 0
                  andi         sp, a5, -1247
                  xori         sp, t1, -1333
                  bltu         s1, s6, sub_1_2_1_t #branch for loop 1
                  addi         s5, zero, -1696
                  addi         a5, zero, 8 #init loop 0 counter
                  sltu         ra, s0, t1
                  nop
                  sub          zero, t1, t1
                  addi         s1, a1, 229
                  nop
                  srl          s11, tp, t3
                  or           s9, s8, s1
                  xori         t5, a1, -693
                  slt          s7, t2, s0
                  addi         s3, zero, 17 #init loop 0 limit
                  lui          t1, 56188
sub_1_7_0_t:      ori          s8, a0, 1968
                  nop
                  addi         a5, a5, 9 #update loop 0 counter
                  ori          t1, s5, 1294
                  slli         s0, t3, 25
                  slli         a1, t3, 28
                  beq          a5, s3, sub_1_7_0_t #branch for loop 0
                  srai         a2, t3, 25
                  addi         a5, zero, 2 #init loop 1 counter
                  lui          s9, 298045
                  auipc        s9, 980653
                  addi         a3, zero, -2 #init loop 1 limit
sub_1_1_1_t:      or           a4, a6, t6
                  addi         s1, s4, -531
                  srli         a1, s8, 28
                  sra          a7, s3, t3
                  or           s0, s1, a7
                  srai         s8, s8, 9
                  xori         s11, s5, -359
                  addi         a5, a5, -4 #update loop 1 counter
                  addi         s7, zero, -3 #init loop 0 counter
                  xori         a7, sp, -220
                  addi         s10, zero, 7 #init loop 0 limit
sub_1_1_0_t:      xor          t5, a3, s9
                  ori          a2, t2, -2010
                  addi         s7, s7, 2 #update loop 0 counter
                  slti         s5, s3, 388
                  bltu         s7, s10, sub_1_1_0_t #branch for loop 0
                  sltu         s5, s0, t0
                  ori          a2, t6, 271
                  or           s6, a6, a1
                  sll          zero, t6, a5
                  beq          a5, a3, sub_1_1_1_t #branch for loop 1
                  slt          gp, tp, a2
                  addi         s9, zero, 1 #init loop 1 counter
                  addi         s3, zero, 6 #init loop 1 limit
sub_1_10_1_t:     slt          s1, s10, a5
                  addi         s9, s9, 5 #update loop 1 counter
                  sltiu        t5, a3, -1234
                  addi         t4, zero, 6 #init loop 0 counter
                  addi         t0, zero, 17 #init loop 0 limit
sub_1_10_0_t:     or           a0, t6, s11
                  addi         t4, t4, 8 #update loop 0 counter
                  blt          t4, t0, sub_1_10_0_t #branch for loop 0
                  or           t1, s11, s3
                  bne          s9, s3, sub_1_10_1_t #branch for loop 1
                  slti         a6, t3, -1737
                  addi         t1, zero, 9 #init loop 1 counter
                  slt          a5, t1, ra
                  lui          a1, 802241
                  sra          sp, tp, s2
                  xori         t5, s8, 745
                  add          s1, t2, s2
                  ori          gp, a6, -245
                  addi         s11, zero, 7 #init loop 1 limit
                  sra          sp, a2, ra
                  nop
sub_1_4_1_t:      addi         zero, t6, 802
                  slli         s7, s2, 22
                  xori         gp, s9, -989
                  sltiu        t2, s6, 974
                  addi         t1, t1, -3 #update loop 1 counter
                  sltiu        s9, t3, -475
                  addi         a4, zero, -8 #init loop 0 counter
                  slti         a1, s9, 1174
                  addi         a3, zero, 9 #init loop 0 limit
                  addi         s7, a7, 1438
sub_1_4_0_t:      or           tp, a4, s2
                  slti         s5, s10, 971
                  nop
                  addi         a4, a4, 1 #update loop 0 counter
                  andi         s10, s4, 1186
                  beq          a4, a3, sub_1_4_0_t #branch for loop 0
                  andi         tp, t4, 1019
                  lui          s6, 453848
                  bgeu         t1, s11, sub_1_4_1_t #branch for loop 1
                  sll          t5, s11, s3
                  addi         a4, zero, -3 #init loop 1 counter
                  srl          gp, zero, sp
                  lui          a2, 141569
                  addi         t5, zero, 10 #init loop 1 limit
                  add          s11, s3, gp
                  sra          gp, t4, s2
                  srai         a6, a6, 9
sub_1_5_1_t:      xori         s10, s8, 1527
                  or           a2, a0, s3
                  sltu         s11, s10, s0
                  sra          a3, gp, a6
                  ori          s3, a4, -1117
                  lui          a5, 107641
                  addi         a4, a4, 8 #update loop 1 counter
                  addi         ra, zero, -6 #init loop 0 counter
                  slti         a0, s7, -1826
                  or           s1, a6, t2
                  srli         t4, t1, 30
                  addi         a7, zero, 3 #init loop 0 limit
                  or           s5, t6, s8
sub_1_5_0_t:      xori         s10, a4, 437
                  auipc        s5, 582741
                  addi         ra, ra, 9 #update loop 0 counter
                  sltu         s11, tp, t0
                  bne          ra, a7, sub_1_5_0_t #branch for loop 0
                  nop
                  ori          t0, s10, -703
                  sltiu        s3, tp, -1453
                  xori         a3, s5, 1492
                  and          s0, s7, a7
                  addi         s11, s6, 748
                  slti         t1, t3, 747
                  sll          t1, t0, t3
                  bltu         a4, t5, sub_1_5_1_t #branch for loop 1
                  sub          a5, zero, s10
                  addi         a7, zero, 4 #init loop 0 counter
                  sll          ra, a1, t5
                  srai         a3, a7, 19
                  addi         s11, zero, 9 #init loop 0 limit
                  xor          s2, a5, t0
sub_1_3_0_t:      xori         tp, s4, 558
                  addi         a7, a7, 5 #update loop 0 counter
                  sltiu        a4, t4, -492
                  sub          a6, t5, a3
                  beq          a7, s11, sub_1_3_0_t #branch for loop 0
                  nop
                  addi         a4, zero, -5 #init loop 1 counter
                  sub          t1, a7, ra
                  sltiu        a6, s8, 117
                  addi         s2, zero, -8 #init loop 1 limit
sub_1_9_1_t:      or           gp, t3, t3
                  sub          s9, a3, tp
                  addi         a4, a4, -4 #update loop 1 counter
                  sltu         gp, t2, ra
                  add          s5, s6, s3
                  addi         s0, zero, 2 #init loop 0 counter
                  sll          a0, s9, a1
                  addi         s11, zero, 12 #init loop 0 limit
                  or           zero, tp, a5
                  nop
                  and          a3, gp, a0
sub_1_9_0_t:      xor          s1, s4, s9
                  sub          t2, gp, s3
                  srli         s10, t5, 15
                  slt          tp, t0, s8
                  addi         s0, s0, 4 #update loop 0 counter
                  ori          s3, a0, -1748
                  blt          s0, s11, sub_1_9_0_t #branch for loop 0
                  xor          t1, sp, a0
                  bge          a4, s2, sub_1_9_1_t #branch for loop 1
                  auipc        t0, 224275
                  addi         s6, zero, 0 #init loop 1 counter
                  slli         zero, a0, 18
                  lui          s10, 235523
                  srai         a4, a7, 10
                  addi         t4, gp, -1295
                  addi         t1, zero, 1 #init loop 1 limit
                  srli         s0, t4, 11
                  sll          s3, s3, s9
sub_1_0_1_t:      lui          s0, 320915
                  addi         s6, s6, 9 #update loop 1 counter
                  sltiu        a3, zero, -1526
                  addi         s7, zero, -5 #init loop 0 counter
                  addi         ra, zero, -18 #init loop 0 limit
                  and          t4, a5, a1
sub_1_0_0_t:      slt          s1, s5, s2
                  addi         s7, s7, -9 #update loop 0 counter
                  slti         t2, a2, 1043
                  bge          s7, ra, sub_1_0_0_t #branch for loop 0
                  srli         gp, s9, 22
                  slti         s5, a6, -1401
                  sltiu        t2, a6, -1161
                  blt          s6, t1, sub_1_0_1_t #branch for loop 1
                  nop
                  addi         s0, zero, -5 #init loop 0 counter
                  addi         a4, zero, 13 #init loop 0 limit
                  nop
sub_1_6_0_t:      slti         s7, ra, -1196
                  or           s7, a2, s1
                  addi         s0, s0, 5 #update loop 0 counter
                  sltu         sp, s6, s7
                  slli         s2, tp, 27
                  andi         a2, t3, 433
                  bltu         s0, a4, sub_1_6_0_t #branch for loop 0
                  ori          s6, gp, 1641
                  addi         a6, zero, -3 #init loop 0 counter
                  slli         s8, s4, 5
                  addi         a3, zero, -4 #init loop 0 limit
sub_1_8_0_t:      auipc        t4, 862663
                  addi         a6, a6, -3 #update loop 0 counter
                  slt          a1, s11, s4
                  xori         a2, s6, -1133
                  bge          a6, a3, sub_1_8_0_t #branch for loop 0
                  ori          t0, a6, -226
                  beq          s5, t2, 11f
                  xori         s5, a5, -1942
                  sltu         ra, a3, t6
                  bltu         s4, gp, 12f
                  srl          s5, s7, t0
                  sub          s2, s4, t2
                  srli         t0, s7, 10
                  nop
                  andi         a7, a7, -1461
                  or           zero, t4, t6
                  bge          a4, s6, 28f
11:               sltiu        a1, s0, -1430
12:               sra          s9, t1, ra
                  slti         a4, s2, -1889
                  sll          s9, s9, sp
                  bltu         tp, s10, 23f
                  add          t4, s3, s4
                  slti         s8, t1, -1540
                  sll          s6, sp, s1
                  or           s5, s8, s1
                  addi         t5, s2, -11
                  addi         ra, a3, 1764
                  or           a6, s3, s2
23:               beq          t4, a5, 33f
                  lui          s8, 396917
                  bltu         a6, s3, 35f
                  slti         sp, s6, 1941
                  slti         s1, t6, 1989
28:               andi         a6, a5, 1612
                  bgeu         s8, s6, 35f
                  slti         s6, tp, 1322
                  add          a1, s7, tp
                  sll          a5, a2, a2
33:               and          t0, a1, s0
                  srl          t5, s8, t6
35:               add          s7, s3, a6
                  bgeu         s6, t4, 40f
                  sra          t2, a6, a7
                  addi         t5, zero, -1641
                  and          zero, a7, a1
40:               andi         a6, t6, 1225
                  xor          a3, s6, a7
                  add          s9, ra, s3
                  bgeu         zero, tp, 49f
                  bne          tp, a5, 47f
                  bne          s9, zero, 49f
                  bne          s9, a0, 57f
47:               bne          s6, a4, 64f
                  xor          t0, s6, tp
49:               or           s1, t2, tp
                  sltiu        a0, zero, 1529
                  bltu         s0, a0, 62f
                  addi         t2, s11, -438
                  srai         sp, t1, 28
                  xor          a5, s5, t6
                  sltu         t0, sp, tp
                  bgeu         s9, ra, 70f
57:               sub          a0, zero, s9
                  bltu         t1, s1, 62f
                  bltu         a2, s6, 66f
                  addi         a2, s9, -1394
                  srai         a5, s1, 1
62:               bge          s3, a4, 71f
                  bne          t6, s5, 70f
64:               bne          s9, s5, 67f
                  beq          s4, s3, 68f
66:               bne          s7, s7, 68f
67:               bge          s0, t4, 68f
68:               bge          zero, t6, 75f
                  xor          ra, t4, s11
70:               nop
71:               srli         t5, a7, 29
                  bltu         t1, s1, 83f
                  nop
                  sltiu        a7, t0, -541
75:               or           gp, s4, t6
                  and          a0, a2, tp
                  auipc        t4, 449326
                  slli         gp, s2, 27
                  bne          t2, s7, 81f
                  xor          t0, a2, s1
81:               ori          ra, t0, -1555
                  andi         t2, a7, -1819
83:               bne          s11, s8, 99f
                  sll          s7, s3, a4
                  and          a3, t2, t6
                  slli         a5, t4, 0
                  auipc        a4, 473557
                  sub          tp, s7, t2
                  addi         t1, a4, 1011
                  beq          t2, a1, 105f
                  xor          a7, t5, t6
                  slli         s2, s0, 7
                  beq          a7, s4, 107f
                  bne          s11, s2, 113f
                  srli         s7, a6, 19
                  srli         tp, a7, 11
                  bltu         t4, a0, 100f
                  sra          s1, s3, t4
99:               slti         t1, s5, 1311
100:              addi         s10, t5, 479
                  slli         a1, zero, 21
                  add          a0, t1, s0
                  sra          t4, s3, a5
                  sub          s11, a3, t5
105:              xori         s7, gp, -1254
                  slli         a4, a4, 11
107:              sltu         zero, s7, tp
                  addi         s1, s6, 200
                  lui          s7, 829437
                  addi         s2, a7, -1076
                  add          a6, t4, s4
                  auipc        s8, 505537
113:              xor          tp, t0, a6
                  slli         t4, s0, 13
                  srai         a1, t6, 27
                  sll          s11, t4, a2
                  bge          s7, s7, 134f
                  sltu         s11, t5, a5
                  nop
                  beq          s8, s4, 121f
121:              srl          s9, s2, t6
                  srli         s9, t6, 18
                  and          s10, gp, a3
                  sltu         a1, s5, t4
                  ori          s1, gp, -1611
                  and          a7, s4, s4
                  srai         s6, ra, 6
                  srl          a4, s2, s9
                  sll          a7, s2, t6
                  add          a3, s7, t5
                  sra          a4, s11, a5
                  srai         sp, a0, 21
                  beq          sp, a6, 139f
134:              sll          s9, t0, s9
                  blt          s3, sp, 146f
                  srli         s1, t6, 7
                  sltiu        s0, s8, -1291
                  xori         a6, s4, 325
139:              nop
                  auipc        zero, 770381
                  ori          a5, s9, -999
                  beq          a2, a7, 153f
                  andi         ra, ra, 640
                  xori         a1, gp, 1816
                  andi         s6, s9, -911
146:              or           a1, s7, t4
                  or           t4, t6, gp
                  blt          s6, s7, 162f
                  bgeu         a1, t6, 155f
                  la           s11, sub_2
                  addi         s11, s11, 960
                  srli         t5, a5, 28
                  slti         sp, s1, 543
                  ori          a3, t0, 1799
                  slti         s10, sp, -32
                  sltu         s3, t1, a5
                  xori         s8, a3, -1295
                  srai         s8, s4, 1
                  srai         s2, s2, 22
                  sll          a4, s11, t0
sub_1_j4:         jalr         s10, s11, -959 #jump sub_1 -> sub_2
                  addi         t2, a2, 260
                  slt          t1, s10, a1
                  slli         tp, t4, 18
153:              xor          t0, t1, t2
                  auipc        s9, 778717
155:              sra          t2, s3, s11
                  beq          a3, s2, 159f
                  slli         a0, s10, 27
                  sll          t4, s7, t4
159:              bne          zero, a1, 168f
                  beq          t4, sp, 162f
                  blt          t6, s11, 168f
162:              ori          t0, s0, -1365
                  slt          s1, s6, t4
                  andi         s6, tp, 552
                  nop
                  srai         t1, t2, 22
                  slt          ra, s7, a4
168:              nop
                  nop
                  andi         tp, a3, -24
                  srl          s9, a1, s5
                  and          a3, t2, zero
                  andi         a1, a7, -1481
                  srli         a0, a2, 3
                  andi         t4, t3, -2029
                  srli         s10, a6, 10
                  blt          a5, s9, 187f
                  bge          a4, s2, 187f
                  xor          a4, gp, ra
                  addi         a0, s5, 134
                  bge          a6, s7, 191f
                  srl          s6, a5, s2
                  srai         ra, sp, 12
                  slt          t4, a0, s1
                  slli         s2, s0, 8
                  srl          sp, t4, s11
187:              bge          s1, s6, 201f
                  nop
                  sltu         t0, sp, s6
                  srl          s6, a0, sp
191:              andi         s10, a7, -938
                  sltiu        a7, t0, -632
                  sll          a7, a6, t1
                  sub          s7, s8, gp
                  slti         s6, t2, -1962
                  nop
                  add          t1, s6, s6
                  xor          s3, t3, a4
                  andi         s2, a6, -21
                  blt          ra, t2, 211f
201:              slli         a3, t2, 10
                  beq          a0, s8, 218f
                  add          a1, a6, s0
                  srai         s5, s9, 18
                  sll          ra, a2, sp
                  sltiu        t4, t1, -1188
                  bne          a3, a2, 214f
                  andi         s7, s8, -1796
                  auipc        a3, 902636
                  add          s0, ra, s3
211:              sll          a4, s7, s3
                  slli         sp, t4, 0
                  ori          s6, s8, -1022
214:              andi         s9, t5, -474
                  sra          s11, a4, t0
                  andi         s0, a1, 1276
                  sra          s7, s6, s8
218:              bgeu         gp, t3, 221f
                  bgeu         zero, t3, 221f
                  nop
221:              andi         s3, s2, -1956
                  auipc        zero, 531898
                  nop
                  bne          tp, a3, 232f
                  xori         a0, a4, -522
                  beq          t0, s1, 230f
                  beq          a5, tp, 238f
                  srl          ra, zero, s5
                  sll          a6, s10, ra
230:              and          s7, s10, a6
                  sra          a5, a6, a5
232:              addi         a3, s8, 92
                  ori          ra, a5, -1902
                  sub          s6, sp, t2
                  bltu         ra, a3, 239f
                  slti         s7, tp, 722
                  ori          a5, t2, -1272
238:              addi         s8, zero, -168
239:              sltu         s5, s9, t4
                  sll          t0, s1, a4
                  xori         s5, zero, 649
                  xori         t1, a7, -332
                  and          gp, t4, a6
                  sub          a1, s11, t0
                  srl          t0, s1, t5
                  srli         a3, s8, 14
                  lui          a6, 65170
                  srl          s3, t2, t6
                  nop
                  lui          t0, 27119
                  xori         s6, a0, 1924
                  add          t5, s2, s5
                  srl          a5, s2, a2
                  andi         s6, s0, 471
                  or           s10, a5, s3
                  xori         a6, a5, 818
                  andi         s5, s11, 1093
                  bgeu         s11, s3, 265f
                  lui          t5, 498619
                  sltu         t0, ra, s11
                  andi         s1, s8, -206
                  xor          s7, s4, sp
                  srai         t2, s1, 3
                  sll          s3, s3, t5
265:              bge          a4, a4, 283f
                  slt          a6, gp, t4
                  slt          s9, a0, a0
                  beq          s8, s0, 283f
                  slli         s3, s7, 5
                  bne          a5, t5, 274f
                  xori         ra, gp, -1401
                  andi         sp, sp, -258
                  bge          t0, s10, 292f
274:              bgeu         t0, s10, 281f
                  srai         a1, a1, 2
                  srl          ra, t1, s1
                  bltu         s9, s3, 287f
                  sltiu        t0, ra, 1030
                  bgeu         s2, s10, 293f
                  slti         t5, s3, -849
281:              addi         a4, t6, 1425
                  xor          s8, sp, s6
283:              andi         a3, tp, -1486
                  addi         s8, a7, 230
                  bgeu         s4, s9, 296f
                  sra          t2, s7, s11
287:              sll          a2, s0, t1
                  ori          a1, t5, -171
                  bge          tp, a1, 292f
                  srai         zero, a3, 0
                  sltu         s8, a3, s10
292:              addi         a0, s5, 121
293:              andi         a6, s2, -622
                  sra          s6, s2, s7
                  auipc        zero, 511297
296:              srl          gp, a5, s9
                  beq          t0, a3, 306f
                  nop
                  xori         s6, s11, -1477
                  srl          t2, t1, a3
                  lui          t1, 631721
                  blt          tp, t1, 304f
                  sltiu        a5, a1, 946
304:              sll          s1, a0, t3
                  slti         s9, s9, 1356
306:              srli         t4, s10, 24
                  xori         a4, t3, -1743
                  xori         t2, s7, -358
                  blt          t6, s6, 311f
                  bne          sp, s11, 316f
311:              slt          t0, a5, tp
                  sra          s0, s6, t5
                  slli         a6, gp, 31
                  addi         a7, gp, -735
                  auipc        zero, 824243
316:              bne          a7, t2, 331f
                  xori         a7, s7, -162
                  sra          t2, zero, sp
                  sra          a4, sp, s3
                  ori          gp, s2, -857
                  srai         s9, a2, 7
                  add          s6, tp, a7
                  sltu         a4, a5, a1
                  sltiu        s7, s4, -1432
                  and          t2, t5, s1
                  addi         s0, s1, 3
                  sub          s1, t2, s2
                  sll          t1, s2, tp
                  srl          tp, s0, sp
                  srl          s1, t5, s7
331:              sltu         s9, s10, s11
                  slti         zero, a3, -1732
                  slli         a7, t6, 2
                  andi         t1, a2, 1447
                  bgeu         ra, a3, 339f
                  srli         s11, s4, 0
                  srli         s2, t5, 21
                  xori         a7, t0, -1977
339:              sra          s5, tp, t5
                  bltu         t6, t1, 347f
                  srai         s9, s2, 31
                  slt          a2, tp, a3
                  xor          ra, s2, s7
                  andi         t0, s6, -1909
                  sltiu        t5, s6, -1297
                  srli         t0, sp, 2
347:              andi         s2, s4, 1014
                  or           t4, t5, s5
                  xor          zero, sp, zero
                  or           gp, s8, t6
                  addi         s8, t1, 159
                  addi         t1, s9, -392
                  bne          zero, s11, 360f
                  blt          a6, a0, 371f
                  andi         a3, s11, 286
                  nop
                  add          s6, a3, a2
                  srl          s7, s8, a7
                  ori          a0, s4, -40
360:              blt          s1, s1, 374f
                  bge          t5, s7, 369f
                  sltiu        s7, t4, -1146
                  blt          s7, a0, 382f
                  sub          s5, s9, a2
                  srli         t5, a3, 1
                  blt          s3, ra, 376f
                  addi         s1, s9, 1652
                  slti         s3, t4, -8
369:              add          t4, t3, a4
                  lui          s0, 193598
371:              slli         s7, s7, 17
                  beq          sp, s10, 376f
                  xori         s6, a3, 1137
374:              srai         s1, t4, 26
                  slti         s6, t3, -922
376:              xor          t0, s9, s7
                  slti         a2, t1, 1247
                  addi         a7, t5, 89
                  bgeu         t5, a6, 382f
                  xor          t2, a3, t2
                  and          gp, s0, s11
382:              add          s6, t6, s9
                  and          sp, a2, s10
                  add          a0, t2, a0
                  sltiu        s9, s1, 1796
                  andi         s10, t0, -609
                  srli         t5, s10, 29
                  or           a1, s11, s5
                  ori          ra, s5, -382
                  sub          zero, t1, zero
                  srli         t1, tp, 25
                  or           s9, s3, s7
                  bgeu         ra, t5, 404f
                  sub          t5, a4, sp
                  add          zero, s4, a4
                  sltiu        a6, ra, -646
                  bltu         s3, ra, 406f
                  sra          gp, s0, a0
                  add          s1, s9, s1
                  slt          a4, t3, t2
                  slt          s0, a5, t5
                  beq          s7, a0, 405f
                  blt          s2, t4, 414f
404:              auipc        a2, 946410
405:              xor          s6, s7, s4
406:              sra          sp, s8, t1
                  and          gp, s2, s5
                  slti         tp, sp, 526
                  bne          a4, a7, 413f
                  bltu         t0, s7, 428f
                  sra          s1, a6, tp
                  andi         zero, sp, -1080
413:              bgeu         s2, t4, 424f
414:              xor          s0, gp, sp
                  xori         s3, a7, 1912
                  sra          s6, tp, a4
                  add          s0, zero, s9
                  xor          a3, s8, s10
                  slli         t1, t0, 17
                  bltu         t3, s2, 426f
                  sub          t2, t1, t5
                  nop
                  and          s0, t6, t6
424:              lui          tp, 554316
                  srai         s11, t4, 29
426:              beq          s9, s2, 427f
427:              xori         s0, a3, 1099
428:              sra          a4, t0, s7
                  xor          s6, a4, t1
                  andi         zero, s0, 581
                  xori         s0, a4, -1473
                  ori          s2, t1, 1919
                  nop
                  bltu         a5, s6, 450f
                  or           tp, s7, s9
                  or           a0, s9, t1
                  sll          t4, t2, a4
                  slli         a0, ra, 14
                  bgeu         s1, ra, 443f
                  or           a6, a3, s11
                  bltu         s5, s0, 448f
                  add          s11, t0, s10
443:              ori          s0, t5, 1120
                  sll          a3, s9, s4
                  slt          a5, s5, t3
                  bltu         a4, s5, 457f
                  sra          a2, s11, s1
448:              ori          t5, t5, 1321
                  andi         ra, a6, -1303
450:              addi         s10, t0, -1525
                  slli         a7, s5, 13
                  sltiu        ra, a0, 185
                  slt          a4, a3, s2
                  auipc        a0, 45304
                  bne          t2, tp, 464f
                  bge          a3, sp, 471f
457:              sll          sp, t3, gp
                  bne          t4, s0, 462f
                  and          s2, t4, gp
                  andi         t1, s3, 76
                  sra          a4, tp, tp
462:              bltu         a6, a6, 470f
                  add          t1, s2, s4
464:              slt          a7, s11, ra
                  xori         s10, s11, -1141
                  and          ra, t3, a2
                  sltiu        s1, s1, 1978
                  ori          a7, s10, -1693
                  slt          s1, tp, t2
470:              srli         t2, sp, 8
471:              nop
                  srli         a6, a6, 9
                  sltu         a5, t6, a2
                  sra          s7, t4, t4
                  srai         a6, zero, 28
                  beq          a3, s3, 479f
                  or           s8, s8, t1
                  bne          a3, a2, 497f
479:              andi         s2, t2, -1922
                  blt          a3, s9, 481f
481:              sub          s3, tp, s8
                  srai         s8, t6, 8
                  bne          s11, gp, 494f
                  bge          a4, s6, 486f
                  sltiu        a5, s2, -452
486:              bne          a0, s5, 489f
                  xor          t5, t2, a3
                  xor          s1, s8, s6
489:              srai         sp, s0, 10
                  nop
                  bgeu         ra, a4, 507f
                  addi         a6, a4, -1493
                  bne          s9, t5, 503f
494:              bge          t4, a2, 501f
                  addi         s11, s11, -1778
                  slli         zero, s1, 21
497:              ori          a6, a1, -1053
                  srl          sp, a2, s4
                  srai         s10, s3, 0
                  blt          a5, a6, 517f
501:              sltu         s5, a3, a1
                  slti         a0, s1, -1763
503:              bltu         tp, s11, 507f
                  bgeu         t1, s1, 515f
                  srl          a4, tp, s1
                  bne          s3, a5, 524f
507:              auipc        a3, 769889
                  sltiu        sp, s5, 1354
                  bge          s1, s8, 523f
                  beq          s1, zero, 524f
                  nop
                  bltu         a7, gp, 518f
                  slti         t1, a7, 389
                  srai         s3, s5, 16
515:              add          t4, a3, zero
                  sub          a3, t2, a4
517:              blt          s1, a3, 523f
518:              srai         a2, s2, 17
                  sltu         s2, s5, s2
                  srai         s0, a6, 18
                  and          s9, tp, t0
                  xor          s7, sp, t0
523:              blt          s8, a7, 533f
524:              bgeu         s6, a2, 533f
                  or           s8, t3, a1
                  sltiu        a1, t6, 1443
                  sltu         t1, tp, s9
                  sltiu        s9, a1, 618
                  andi         s2, a2, 892
                  andi         a3, s7, 947
                  sub          t1, ra, t6
                  andi         a0, s7, 1115
533:              sra          gp, a4, t4
                  srli         s2, t6, 26
                  sltu         t0, a3, t5
                  bne          a0, s0, 543f
                  bne          s9, a2, 548f
                  srli         a5, s1, 12
                  slt          a1, t6, s8
                  sra          s3, s7, a3
                  sub          t5, t2, s7
                  bne          a3, a3, 544f
543:              xor          a0, s11, s2
544:              blt          s9, s2, 547f
                  slt          t1, s9, a5
                  blt          s11, a3, 557f
547:              nop
548:              bltu         a2, a2, 559f
                  lui          s6, 1025185
                  sra          s6, s1, a6
                  srli         s9, ra, 29
                  bltu         a6, s8, 563f
                  slti         a2, s8, -243
                  ori          a4, t3, -1857
                  sub          s11, s9, a6
                  bgeu         s7, t2, 563f
557:              srl          a3, a0, a0
                  bge          a0, s4, 560f
559:              auipc        s5, 489167
560:              sra          ra, t2, a3
                  sltu         s5, s0, a4
                  add          s6, t3, s1
563:              or           s5, s6, s6
                  add          t1, t3, s9
                  xori         a5, a2, -1795
                  xor          s10, tp, a3
                  and          a5, t6, a4
                  bltu         s0, s6, 579f
                  xori         a1, s4, 1131
                  ori          s1, t1, 439
                  addi         gp, a5, -1665
                  and          s8, tp, a7
                  bge          s0, s9, 579f
                  sltu         a4, t4, s7
                  bne          s8, t1, 579f
                  ori          t5, t6, -1379
                  sra          t0, ra, s7
                  sll          zero, t4, a7
579:              andi         a0, s9, -1553
                  sltu         s11, a2, gp
                  sub          a2, s0, t1
                  lw           s10, 4(t3)
                  auipc        t4, 7979
                  sltu         a7, a0, a0
                  add          a2, a6, a7
                  addi         t3, t3, 16
                  and          t0, a7, ra
                  lui          sp, 234569
                  sra          a6, t5, s8
                  nop
                  slt          a4, ra, s8
850:              addi x12, x26, 1
850:              jalr x12, x12, 0
sub_2:            bltu         a0, s11, sub_2_stack_p
                  auipc        a1, 493856
sub_2_stack_p:    addi         t3, t3, -52
                  add          ra, t5, a6
                  or           a7, s7, t0
                  sw           s10, 4(t3)
                  ori          ra, s4, 978
                  sltu         gp, a3, t4
                  sra          sp, s11, sp
                  ori          a5, a3, 397
                  xori         a3, a4, -375
                  slti         s5, s8, -596
                  addi         sp, t3, -1078
                  nop
                  slt          ra, s9, s5
                  nop
sub_2_j7:         jal          s10, sub_3 #jump sub_2 -> sub_3
                  addi         t4, zero, -10 #init loop 1 counter
                  lui          s6, 103645
                  srai         s10, s4, 29
                  addi         s5, zero, 14 #init loop 1 limit
                  addi         t1, t4, 1337
                  lui          t1, 92068
                  addi         a6, sp, 404
sub_2_12_1_t:     lui          s3, 499493
                  addi         t4, t4, 4 #update loop 1 counter
                  sltu         s1, t1, s9
                  slt          s6, s0, a4
                  srli         s7, s0, 30
                  addi         ra, zero, 8 #init loop 0 counter
                  xor          s6, s8, s9
                  slli         a6, s1, 28
                  addi         s2, zero, 17 #init loop 0 limit
                  sll          s0, a2, a0
                  xor          a1, t3, s8
sub_2_12_0_t:     and          s8, t0, s10
                  sll          s6, t6, s11
                  slt          sp, s8, a1
                  xor          s1, s9, t5
                  addi         ra, ra, 1 #update loop 0 counter
                  srai         a0, a4, 26
                  sub          gp, a1, a1
                  ori          s0, s5, 273
                  srai         a5, sp, 20
                  blt          ra, s2, sub_2_12_0_t #branch for loop 0
                  ori          a3, t4, -1501
                  sltiu        sp, s7, 1221
                  bne          t4, s5, sub_2_12_1_t #branch for loop 1
                  sra          s11, ra, t3
                  addi         a1, zero, 5 #init loop 1 counter
                  auipc        s7, 127385
                  srai         s8, a6, 24
                  ori          s7, s5, 1958
                  slt          a5, gp, gp
                  nop
                  addi         gp, zero, 20 #init loop 1 limit
sub_2_9_1_t:      slti         s11, ra, 1019
                  or           s6, tp, t0
                  addi         a1, a1, 3 #update loop 1 counter
                  slti         zero, a4, 1110
                  xori         s1, s0, -183
                  ori          s6, t1, 1725
                  sll          t2, a1, a2
                  xori         t4, s6, -1752
                  add          s11, sp, zero
                  addi         a0, zero, -8 #init loop 0 counter
                  addi         tp, zero, 3 #init loop 0 limit
                  xor          t1, s7, t3
sub_2_9_0_t:      auipc        a4, 760096
                  slli         a3, s9, 13
                  addi         a0, a0, 1 #update loop 0 counter
                  auipc        s10, 134876
                  blt          a0, tp, sub_2_9_0_t #branch for loop 0
                  sltiu        s0, s4, 1159
                  xori         a7, s11, -732
                  xori         a6, t1, 1417
                  ori          zero, s4, -366
                  sub          a5, a0, s0
                  bne          a1, gp, sub_2_9_1_t #branch for loop 1
                  sltu         a3, s6, s2
                  addi         ra, zero, 4 #init loop 1 counter
                  or           a3, t1, s1
                  sub          s2, s0, a5
                  addi         gp, zero, -10 #init loop 1 limit
sub_2_8_1_t:      and          a6, t0, ra
                  sltu         s3, s4, s2
                  andi         s10, gp, -1971
                  addi         ra, ra, -2 #update loop 1 counter
                  slti         s8, a0, -977
                  addi         s0, zero, -6 #init loop 0 counter
                  and          a2, a2, a6
                  addi         tp, zero, -15 #init loop 0 limit
                  nop
                  sltu         s2, t4, t0
                  auipc        t2, 543588
sub_2_8_0_t:      nop
                  srai         s10, s4, 2
                  addi         s0, s0, -9 #update loop 0 counter
                  ori          a1, sp, 372
                  bne          s0, tp, sub_2_8_0_t #branch for loop 0
                  nop
                  bge          ra, gp, sub_2_8_1_t #branch for loop 1
                  add          a2, s9, t6
                  addi         s8, zero, -9 #init loop 0 counter
                  sra          gp, t0, t5
                  srai         a6, s10, 13
                  and          s11, s5, s9
                  srli         zero, s8, 9
                  slti         a4, s11, -1488
                  slti         zero, t2, 128
                  srai         a2, t2, 19
                  nop
                  sll          a7, a5, s10
                  slt          s2, sp, s8
                  addi         t5, zero, 11 #init loop 0 limit
                  add          s7, gp, s2
                  srai         s3, a3, 6
sub_2_1_0_t:      slt          sp, s9, s11
                  slt          s6, s3, t4
                  sra          s11, s1, s11
                  sltu         a7, a1, t2
                  srl          s6, a0, a0
                  or           s6, a5, sp
                  sltu         ra, t5, s11
                  addi         s8, s8, 10 #update loop 0 counter
                  sra          zero, a4, s3
                  add          a7, a2, s7
                  bltu         s8, t5, sub_2_1_0_t #branch for loop 0
                  srai         s9, tp, 1
                  addi         s9, zero, 3 #init loop 1 counter
                  addi         s6, zero, 14 #init loop 1 limit
sub_2_7_1_t:      or           t5, a4, t2
                  addi         s9, s9, 2 #update loop 1 counter
                  addi         t1, zero, 10 #init loop 0 counter
                  addi         s2, zero, 10 #init loop 0 limit
sub_2_7_0_t:      slti         s11, s3, -1278
                  ori          a4, t2, -1251
                  addi         t1, t1, -9 #update loop 0 counter
                  bgeu         t1, s2, sub_2_7_0_t #branch for loop 0
                  blt          s9, s6, sub_2_7_1_t #branch for loop 1
                  sub          t5, s11, a1
                  addi         s7, zero, -1 #init loop 1 counter
                  sub          tp, t0, s5
                  addi         s1, zero, -15 #init loop 1 limit
                  nop
sub_2_2_1_t:      xori         t0, t5, -388
                  sub          s9, a0, s1
                  addi         s7, s7, -2 #update loop 1 counter
                  lui          gp, 853526
                  addi         sp, zero, -6 #init loop 0 counter
                  sltiu        a4, s7, -570
                  sltiu        s5, s11, 1283
                  lui          s2, 869076
                  srli         a0, s6, 22
                  addi         s0, zero, -9 #init loop 0 limit
                  slli         a3, s1, 29
                  auipc        gp, 22265
sub_2_2_0_t:      and          a5, sp, a2
                  addi         sp, sp, -4 #update loop 0 counter
                  xor          s6, zero, s8
                  bge          sp, s0, sub_2_2_0_t #branch for loop 0
                  sltu         t2, t3, a5
                  xor          a6, s0, sp
                  andi         gp, gp, -985
                  srai         ra, s3, 19
                  bge          s7, s1, sub_2_2_1_t #branch for loop 1
                  srl          t0, t0, s3
                  addi         a3, zero, 4 #init loop 0 counter
                  nop
                  addi         s0, gp, -1647
                  addi         t5, zero, -17 #init loop 0 limit
                  slt          s3, a3, a2
sub_2_10_0_t:     xor          a4, a7, a5
                  slti         s2, a5, 470
                  addi         a3, a3, -4 #update loop 0 counter
                  sra          ra, a7, t2
                  srl          s11, t6, s6
                  addi         a7, gp, -1731
                  bge          a3, t5, sub_2_10_0_t #branch for loop 0
                  srli         s8, a7, 5
                  addi         t4, zero, 6 #init loop 1 counter
                  addi         a6, zero, -1 #init loop 1 limit
                  sra          s10, a7, a6
sub_2_4_1_t:      slti         sp, s0, 1877
                  sll          t0, t0, ra
                  addi         t4, t4, -7 #update loop 1 counter
                  addi         s8, zero, 10 #init loop 0 counter
                  addi         a7, zero, 14 #init loop 0 limit
                  ori          t1, a0, 1581
sub_2_4_0_t:      slt          a5, s2, t5
                  sltiu        gp, a4, 58
                  addi         s8, s8, 10 #update loop 0 counter
                  addi         tp, a3, -800
                  blt          s8, a7, sub_2_4_0_t #branch for loop 0
                  srai         a3, s2, 19
                  sltiu        s0, sp, 426
                  bge          t4, a6, sub_2_4_1_t #branch for loop 1
                  add          a2, t2, gp
                  addi         a3, zero, 0 #init loop 1 counter
                  srai         s11, s1, 30
                  srl          t2, t2, a3
                  addi         s8, zero, 1 #init loop 1 limit
                  srai         a5, a6, 31
sub_2_3_1_t:      addi         t1, a5, 1337
                  and          s5, a0, a5
                  addi         a3, a3, 10 #update loop 1 counter
                  addi         ra, zero, 2 #init loop 0 counter
                  sltiu        t4, t4, 1857
                  addi         s9, zero, -4 #init loop 0 limit
sub_2_3_0_t:      lui          t5, 262072
                  slti         a5, sp, -874
                  addi         ra, ra, -6 #update loop 0 counter
                  srli         a2, t5, 3
                  bne          ra, s9, sub_2_3_0_t #branch for loop 0
                  sra          tp, t4, t2
                  slti         t5, a3, 1899
                  bltu         a3, s8, sub_2_3_1_t #branch for loop 1
                  add          s6, s6, a7
                  xor          s1, s11, s8
                  andi         a1, s6, 9
                  auipc        s1, 309708
                  auipc        a7, 1041073
                  slti         a5, s10, 1544
                  auipc        sp, 520984
                  sra          gp, gp, a3
                  bge          zero, a0, 9f
                  andi         t5, s5, -493
9:                sltiu        t1, a1, -883
                  nop
                  beq          a7, s6, 31f
                  sltiu        t4, gp, -1466
                  or           s1, t6, s9
                  add          zero, gp, t6
                  srl          s6, s10, s4
                  bge          a5, t4, 36f
                  srl          s6, tp, sp
                  slt          s1, s5, a3
                  slli         a3, t0, 31
                  bltu         s5, t1, 40f
                  blt          zero, t5, 38f
                  bgeu         t4, tp, 30f
                  addi         a1, t5, -611
                  or           t2, t5, s11
                  add          gp, a6, a7
                  srai         s8, a0, 15
                  beq          sp, s1, 39f
                  sltu         a7, s10, s2
                  andi         zero, s3, -100
30:               and          t4, s10, t1
31:               or           tp, a2, a3
                  or           gp, s10, t1
                  beq          a7, a4, 39f
                  srai         s1, t6, 18
                  sltiu        s8, a7, -1315
36:               sll          a7, a0, s7
                  ori          s3, a3, 1068
38:               bgeu         gp, s0, 51f
39:               slli         a5, t5, 7
40:               beq          s3, t4, 46f
                  sub          a7, s9, t4
                  nop
                  xor          s5, s9, t3
                  bgeu         t3, s8, 53f
                  addi         a5, a4, 1274
46:               srl          s8, s11, s5
                  sltiu        a3, s3, -778
                  sltu         s3, ra, t4
                  or           s3, a2, t6
                  sll          t4, s9, t1
51:               srai         a1, s9, 2
                  or           a4, ra, ra
53:               bge          s8, s5, 63f
                  bgeu         a6, a3, 64f
                  bge          s10, s6, 66f
                  xori         a1, s2, -1713
                  andi         t1, t6, 1080
                  slti         s7, s4, 1471
                  ori          zero, sp, -1422
                  srai         a3, ra, 20
                  or           s7, a5, t5
                  auipc        a7, 399474
63:               bge          s4, t4, 75f
64:               nop
                  sltiu        s2, a4, -1256
66:               srl          t5, a7, a6
                  lui          a4, 951950
                  sub          t5, s0, sp
                  bltu         s2, s8, 82f
                  bge          s7, tp, 78f
                  and          s6, s10, tp
                  bge          s9, s5, 83f
                  beq          t2, zero, 87f
                  slti         gp, gp, 1675
75:               bge          gp, t1, 78f
                  nop
                  bge          s1, s4, 80f
78:               sll          s6, a4, s5
                  srai         s0, s10, 7
80:               slt          gp, a7, a1
                  auipc        ra, 63523
82:               and          t4, t0, tp
83:               sltiu        gp, a7, 999
                  addi         s10, zero, -3 #init loop 1 counter
                  slli         t2, gp, 27
                  lui          a1, 631895
                  addi         s0, zero, -11 #init loop 1 limit
sub_2_0_1_t:      slt          a7, t5, a6
                  sra          s6, t1, a3
                  sra          s1, sp, s7
                  slt          t4, a4, t2
                  addi         s10, s10, -8 #update loop 1 counter
                  addi         a0, zero, 8 #init loop 0 counter
                  sll          a4, s6, s11
                  addi         a3, zero, 10 #init loop 0 limit
sub_2_0_0_t:      slti         tp, s2, -307
                  sltiu        sp, t0, 874
                  addi         a0, a0, 9 #update loop 0 counter
                  srl          s7, s0, a1
                  bltu         a0, a3, sub_2_0_0_t #branch for loop 0
                  lui          s2, 361286
                  beq          s10, s0, sub_2_0_1_t #branch for loop 1
                  sltu         t5, a0, s1
                  andi         s2, a6, -1584
                  srl          t1, s8, t4
                  sra          s7, a1, a0
87:               addi         t0, t5, -440
                  blt          t4, s8, 102f
                  bltu         t3, t0, 96f
                  bne          t0, s5, 107f
                  add          s8, s4, a2
                  sub          s11, t3, t2
                  add          a5, s6, a1
                  srl          s9, a6, a6
                  bge          gp, s8, 101f
96:               slli         s10, a6, 22
                  beq          s7, a2, 109f
                  srli         s3, a1, 2
                  auipc        s9, 138743
                  sltiu        s9, tp, 1963
101:              or           s3, tp, s2
102:              auipc        tp, 697326
                  sltiu        ra, t5, 1172
                  slli         ra, a3, 4
                  sltu         s1, tp, s9
                  bne          zero, t2, 112f
107:              bge          gp, tp, 113f
                  bgeu         s9, a3, 114f
109:              add          s7, t4, a1
                  sltiu        s11, zero, -2040
                  slti         s3, s3, 591
112:              lui          a5, 89078
113:              slt          a7, a5, t3
114:              xori         a2, t5, 367
                  addi         s10, s10, 2031
                  bne          s7, s9, 130f
                  xor          s9, s1, a1
                  slli         a4, a5, 12
                  srai         a3, s6, 11
                  slti         s5, s7, -482
                  addi         a6, t1, 1702
                  bgeu         s1, t0, 132f
                  blt          sp, a5, 130f
                  addi         sp, t4, -1812
                  slt          s0, t1, s3
                  auipc        ra, 331773
                  bge          a0, gp, 130f
                  bne          a5, a3, 137f
                  nop
130:              sub          s5, t2, s11
                  bgeu         sp, s4, 133f
132:              addi         s0, zero, -1337
133:              bge          s3, tp, 146f
                  sll          t0, a3, a2
                  bltu         t2, zero, 143f
                  bgeu         s10, t3, 142f
137:              bltu         s11, tp, 150f
                  srl          s11, a4, s4
                  addi         a3, ra, -1223
                  or           a3, a4, a6
                  sltiu        a0, s6, -570
142:              beq          a0, a6, 153f
143:              add          t5, t6, s8
                  slli         t5, s8, 28
                  blt          s11, tp, 156f
146:              auipc        s11, 290380
                  bge          t4, t4, 167f
                  srai         a6, t5, 10
                  and          a4, s8, a1
150:              slti         t1, t5, -424
                  bne          a2, a5, 171f
                  slt          t5, a3, a2
153:              and          t4, s7, a6
                  bgeu         s6, s2, 168f
                  add          s5, s11, a3
156:              lui          s8, 993491
                  ori          s3, a1, -1794
                  slli         gp, s4, 13
                  slli         a3, s2, 12
                  slt          s1, t5, ra
                  xor          s6, s9, t1
                  bne          a4, s0, 174f
                  slti         t2, ra, 1840
                  sltu         s3, t1, t2
                  lui          a2, 687364
                  srai         s7, t4, 27
167:              xori         s0, a5, -183
168:              lui          s7, 424598
                  slti         t0, t6, -1756
                  add          s8, tp, t6
171:              sltu         s0, s1, t2
                  or           s9, s7, s10
                  slt          s8, a1, ra
174:              srli         a6, s1, 13
                  and          ra, tp, tp
                  srl          s5, s2, a5
                  addi         a6, t1, -1082
                  ori          t4, s8, -1450
                  nop
                  lui          s7, 735145
                  slt          s6, t2, t6
                  sll          t1, s10, t0
                  srli         t5, s0, 31
                  addi         s8, t3, -1251
                  beq          s5, s10, 193f
                  andi         t5, t0, 1334
                  nop
                  addi         t2, a5, -1567
                  and          a6, s9, s4
                  srai         zero, t6, 29
                  slli         t1, a5, 16
                  sra          t2, a1, zero
193:              xori         a6, s4, 427
                  slti         s11, t0, -983
                  nop
                  auipc        a3, 896209
                  sub          s8, a7, s9
                  bne          t1, s3, 204f
                  beq          t4, a2, 205f
                  beq          s3, a1, 212f
                  bge          a1, t3, 218f
                  srli         s9, a4, 26
                  sltiu        a6, s1, 1697
204:              nop
205:              ori          s2, t6, -624
                  slt          a7, ra, s9
                  sltiu        t1, t4, 152
                  addi         s10, zero, 643
                  add          sp, a3, gp
                  sub          s1, s9, a6
                  addi         t0, ra, -237
212:              add          s2, s11, gp
                  sub          s10, s1, zero
                  add          t2, a5, a4
                  xor          s9, s9, s10
                  sll          gp, t3, s3
                  blt          a4, a5, 223f
218:              sltu         t1, t3, t3
                  slt          zero, s5, t5
                  bltu         s2, a4, 234f
                  xori         gp, s10, -438
                  slt          t4, a6, s0
223:              beq          s0, a1, 235f
                  sltiu        s0, a1, -1577
                  and          a1, s1, t4
                  addi         a0, a7, 1683
                  beq          s9, a1, 233f
                  addi         tp, t5, -1282
                  blt          a4, a6, 232f
                  sub          s2, a1, s1
                  srai         s7, s5, 25
232:              slti         ra, a0, -1789
233:              bltu         s6, a5, 250f
234:              beq          s7, gp, 244f
235:              slt          t5, s0, t5
                  bge          s7, t2, 256f
                  xori         ra, s0, 337
                  sltiu        t2, s10, 2020
                  slli         zero, a6, 17
                  auipc        t1, 455710
                  srl          s2, a6, a4
                  bne          zero, a0, 256f
                  andi         a6, s6, -426
244:              slti         s0, tp, -238
                  bltu         gp, t4, 251f
                  slti         a0, s8, -1907
                  slti         ra, gp, -2034
                  bge          t1, a5, 259f
                  add          a2, zero, t4
250:              ori          s6, s7, -244
251:              blt          s3, gp, 265f
                  lui          s9, 335795
                  sll          t0, a4, s1
                  slt          a7, s4, a4
                  addi         t2, t1, -185
256:              lui          zero, 862038
                  ori          s10, a2, -192
                  sra          t4, zero, t0
259:              or           s6, a0, t2
                  xor          t4, a0, s2
                  slti         s9, s0, -1300
                  auipc        s10, 1000349
                  xori         a2, s1, -1786
                  slti         a5, t3, -817
265:              beq          a7, s0, 285f
                  slt          zero, a2, s11
                  sltiu        gp, t5, 1557
                  slt          t2, s5, s5
                  xor          a0, s5, a3
                  srl          s11, t3, zero
                  sll          s5, s2, s1
                  sub          s2, s4, t4
                  xor          a5, a3, s3
                  slli         s10, s3, 2
                  blt          s3, s0, 282f
                  sll          ra, a2, t1
                  slli         s0, a3, 2
                  slti         t2, a1, -915
                  bgeu         a5, t4, 288f
                  slti         a5, zero, -548
                  or           gp, sp, sp
282:              slli         tp, sp, 21
                  sltu         t2, t3, a7
                  and          t4, a1, a7
285:              sll          t4, tp, t2
                  and          t0, s10, a5
                  lui          a0, 68799
288:              srai         t1, ra, 22
                  sub          s0, s1, s0
                  add          a3, a3, a7
                  addi         tp, s8, 1206
                  bgeu         ra, t3, 304f
                  beq          s0, t4, 310f
                  lui          a4, 679655
                  add          a6, s4, s11
                  ori          a6, t3, -1087
                  sub          a6, t6, t6
                  and          a7, s2, s1
                  add          a6, s5, s9
                  bge          a7, s3, 317f
                  auipc        s8, 79662
                  sub          tp, t0, a7
                  bltu         s3, a5, 315f
304:              lui          s0, 379479
                  addi         s8, s2, -1513
                  srai         t4, a5, 29
                  blt          s6, a1, 318f
                  slli         a6, tp, 4
                  srai         s11, t5, 14
310:              xori         s11, a5, -452
                  srli         a5, t2, 14
                  andi         tp, s0, -1145
                  srli         s0, t2, 26
                  slt          a6, sp, s7
315:              xor          t1, t6, s6
                  beq          zero, tp, 326f
317:              slli         t2, t0, 22
318:              slt          s6, sp, zero
                  sll          s1, t1, a2
                  nop
                  bgeu         t6, sp, 335f
                  ori          t1, t0, -1268
                  add          a3, s7, a0
                  sltu         s5, gp, t0
                  sra          a6, gp, t2
326:              sll          s7, a3, t6
                  slli         a5, a3, 8
                  andi         s5, a7, 1592
                  beq          s4, s9, 335f
                  ori          s9, s9, 481
                  sltu         s1, s7, ra
                  slti         s7, tp, 1424
                  slli         a3, a7, 21
                  andi         s6, t2, -1829
335:              lui          ra, 60794
                  xori         a7, s7, -1852
                  srli         t0, t1, 28
                  andi         a2, t0, 1348
                  slt          a5, gp, a2
                  srl          s7, a5, s5
                  slli         s10, s8, 27
                  slli         t4, t5, 8
                  blt          s9, s0, 363f
                  slt          tp, tp, s0
                  beq          zero, a3, 347f
                  bge          t1, s6, 360f
347:              bltu         s2, t3, 359f
                  sltu         zero, t0, gp
                  auipc        a5, 578347
                  srl          zero, s6, gp
                  slti         s1, tp, 295
                  lui          a5, 854947
                  sltiu        tp, t0, -1614
                  addi         t2, t4, -1967
                  bne          s6, a5, 368f
                  and          s9, s0, s6
                  andi         a0, s10, -927
                  sll          a6, t6, tp
359:              lui          zero, 274647
360:              srl          s1, s7, t5
                  srl          a2, a6, s11
                  xor          a7, s11, a1
363:              andi         s11, a7, 363
                  sub          tp, s0, a2
                  xori         s11, t0, 1986
                  bltu         a3, t2, 372f
                  addi         a1, s5, 1536
368:              add          t5, s0, a7
                  nop
                  andi         t4, s6, -1711
                  nop
372:              bltu         a5, ra, 378f
                  xori         tp, s10, 1786
                  sll          s6, a0, a1
                  ori          t5, s7, 1635
                  sltiu        tp, s6, -872
                  srli         a7, s10, 1
378:              addi         t0, a6, -294
                  sub          a5, a0, a1
                  beq          sp, a3, 388f
                  slli         a0, t2, 5
                  beq          zero, s5, 402f
                  add          s9, s0, s1
                  and          s1, t2, s0
                  andi         s2, sp, -1748
                  addi         tp, a3, 686
                  and          a1, s9, a6
388:              sll          t2, t5, s10
                  xor          s2, a5, a3
                  sltiu        s8, s7, -383
                  srli         s7, a1, 3
                  blt          t4, t1, 398f
                  blt          s11, t1, 399f
                  bge          sp, sp, 400f
                  xor          a1, t0, s10
                  bne          t4, a7, 404f
                  srli         s11, t4, 20
398:              srai         a0, s3, 29
399:              sra          gp, s7, t0
400:              or           s10, t5, s7
                  sra          s11, s11, s3
402:              nop
                  srli         tp, a6, 2
404:              bne          s10, s3, 417f
                  slli         s9, a4, 18
                  ori          s9, ra, 1905
                  bgeu         a4, a5, 410f
                  slli         tp, s4, 23
                  srl          t5, a2, a1
410:              ori          a2, a0, -147
                  blt          s7, t3, 421f
                  srl          gp, s2, s1
                  sub          s1, s10, a2
                  xor          s0, a3, t2
                  srl          a5, a0, a7
                  beq          s8, s3, 419f
417:              lui          tp, 299873
                  sltiu        a0, a3, 766
419:              and          s10, a1, s11
                  or           a5, a0, a5
421:              sra          zero, gp, t0
                  bgeu         s10, tp, 434f
                  srl          s10, s8, s8
                  auipc        t2, 266934
                  auipc        zero, 569157
                  sub          a2, gp, s9
                  beq          s6, s1, 430f
                  srai         s9, s1, 27
                  and          a2, s7, s6
430:              sub          s7, s0, t3
                  ori          a1, gp, 1143
                  srl          s9, tp, a5
                  nop
                  sub          s5, t6, a6
                  addi         zero, s6, -1753
                  slti         sp, a7, -36
                  sltu         t2, s4, ra
                  slti         zero, gp, 491
                  slt          s0, a4, a1
                  slt          zero, t1, t6
                  xori         s5, s5, -838
                  add          t0, a2, t1
sub_2_j6:         jal          s10, sub_4 #jump sub_2 -> sub_4
434:              and          s3, s3, t4
                  beq          s5, gp, 455f
                  ori          a6, sp, -1517
                  slti         s8, t5, -71
                  lui          s5, 144200
                  bge          t3, t6, 456f
                  slli         s3, s9, 5
                  addi         s7, s0, -469
                  slli         s3, t4, 21
                  nop
                  or           t1, gp, a7
                  bltu         s0, s11, 465f
                  beq          s7, t5, 466f
                  nop
                  blt          sp, s2, 457f
                  slt          a2, gp, a2
                  slti         ra, t4, -1246
                  bne          t0, s11, 465f
                  srai         s6, s5, 3
                  blt          s7, t2, 464f
                  sltiu        a0, gp, 1167
455:              auipc        a1, 171695
456:              lui          tp, 392588
457:              xor          t2, s9, t5
                  xor          s5, tp, t2
                  addi         s10, zero, 7 #init loop 1 counter
                  sub          sp, s6, a1
                  addi         s11, zero, 9 #init loop 1 limit
                  lui          gp, 199628
                  srli         s7, t2, 31
sub_2_5_1_t:      sltiu        a3, s7, 1966
                  slli         s7, a4, 10
                  xori         t0, t4, -1491
                  addi         s10, s10, 2 #update loop 1 counter
                  addi         s9, zero, 7 #init loop 0 counter
                  sra          t2, s4, a5
                  addi         t4, zero, 19 #init loop 0 limit
                  srli         a4, gp, 23
                  sll          a1, s2, zero
                  sra          a5, s7, s11
sub_2_5_0_t:      sltiu        s2, s5, -1475
                  addi         a4, gp, 1357
                  sll          a2, t4, s1
                  addi         s9, s9, 4 #update loop 0 counter
                  srli         zero, ra, 9
                  bltu         s9, t4, sub_2_5_0_t #branch for loop 0
                  bne          s10, s11, sub_2_5_1_t #branch for loop 1
                  add          s1, gp, t5
                  beq          a6, a7, 465f
                  slt          a4, a0, s3
                  sub          a5, a6, a4
                  bne          a6, a5, 468f
                  xor          t0, gp, a4
464:              slti         s1, t5, 1487
465:              lui          s10, 796721
466:              sltiu        a0, s10, 922
                  and          s3, s11, t5
468:              slli         a3, a4, 27
                  auipc        s3, 120103
                  sltiu        s2, t2, -1287
                  slli         a0, s10, 26
                  lui          a3, 807526
                  addi         gp, s7, 536
                  sll          zero, t5, s8
                  sll          sp, s4, s10
                  and          t5, a5, a5
                  sra          gp, s3, s6
                  sra          s0, a3, zero
                  addi         t1, t3, 1799
                  bge          sp, s1, 494f
                  ori          gp, a7, -1713
                  andi         t2, t2, -1473
                  ori          a6, s0, -844
                  slt          s11, a4, t5
                  srai         zero, s4, 9
                  addi         a2, zero, -3 #init loop 1 counter
                  xor          zero, a0, a6
                  addi         s7, zero, 8 #init loop 1 limit
                  add          tp, t2, a5
                  addi         s6, a7, -73
                  srl          s6, t1, s10
                  slt          s0, a7, s3
sub_2_6_1_t:      andi         a6, s3, 407
                  or           gp, gp, sp
                  addi         a2, a2, 10 #update loop 1 counter
                  addi         ra, zero, 9 #init loop 0 counter
                  or           t1, a3, a7
                  addi         a3, zero, 6 #init loop 0 limit
                  nop
sub_2_6_0_t:      ori          s1, zero, 885
                  ori          t1, tp, 1454
                  addi         ra, ra, -4 #update loop 0 counter
                  lui          sp, 726056
                  bgeu         ra, a3, sub_2_6_0_t #branch for loop 0
                  slli         a5, a3, 15
                  blt          a2, s7, sub_2_6_1_t #branch for loop 1
                  sltu         s3, t4, s10
                  xor          s11, s2, t6
                  ori          s1, a0, 1352
                  blt          s2, s2, 500f
                  srai         s3, s2, 0
                  slli         t2, t4, 1
                  srai         s0, s5, 3
                  slt          a0, ra, a4
                  srai         s3, t0, 8
494:              ori          a3, t6, -1356
                  and          a5, s4, t6
                  bgeu         a6, s1, 510f
                  sltu         gp, t6, a1
                  addi         s7, zero, -3 #init loop 1 counter
                  slli         sp, s6, 11
                  slli         s1, a2, 8
                  addi         t5, zero, 7 #init loop 1 limit
                  auipc        a5, 261380
sub_2_11_1_t:     and          gp, t6, s6
                  and          t2, a7, t4
                  addi         s7, s7, 5 #update loop 1 counter
                  addi         t0, zero, -2 #init loop 0 counter
                  addi         s5, zero, -20 #init loop 0 limit
sub_2_11_0_t:     lui          zero, 575559
                  addi         t0, t0, -6 #update loop 0 counter
                  xor          a1, t0, a2
                  srl          a3, t3, a4
                  bne          t0, s5, sub_2_11_0_t #branch for loop 0
                  srai         a2, t3, 22
                  beq          s7, t5, sub_2_11_1_t #branch for loop 1
                  sra          t4, t5, s2
                  bltu         s0, s7, 504f
                  sltiu        ra, s0, -1990
500:              bne          s1, s10, 510f
                  srl          s2, a2, s8
                  sltu         zero, ra, s0
                  sltiu        s7, sp, -2001
504:              sltu         gp, s4, zero
                  sltiu        s11, a4, 440
                  slti         s1, sp, 1754
                  add          a3, s7, a7
                  bne          tp, sp, 514f
                  beq          a0, tp, 522f
510:              sll          a4, a3, t4
                  srl          a4, t3, t1
                  slti         t2, a3, -696
                  ori          a7, gp, -473
514:              blt          s3, a2, 517f
                  bgeu         s1, t5, 523f
                  xor          s3, t6, s3
517:              sltiu        zero, sp, -337
                  and          t2, t1, s5
                  beq          s10, t5, 527f
                  nop
                  ori          a0, s4, -394
522:              sll          s10, a5, a4
523:              xor          s6, a4, a6
                  sub          a1, t2, s9
                  bne          a3, s8, 538f
                  sltu         a3, s9, ra
527:              xori         zero, a0, -850
                  srl          s10, s5, sp
                  slli         t4, t1, 1
                  bne          t1, t2, 542f
                  slti         ra, s3, 1045
                  beq          gp, a0, 538f
                  slli         s6, a6, 24
                  slt          a5, s4, a5
                  and          gp, s3, t2
                  blt          tp, t5, 553f
                  andi         a2, s9, -1365
538:              nop
                  srai         gp, sp, 15
                  sub          s8, s9, s7
                  nop
542:              addi         s9, s10, 233
                  srai         a2, s7, 26
                  slti         a0, s4, -438
                  bne          t2, s1, 551f
                  or           s11, s7, t6
                  auipc        t1, 524430
                  or           a3, ra, s7
                  la           s0, sub_4
                  and          t0, s5, t1
                  slt          zero, s0, a1
                  addi         s5, a3, -1161
                  xori         a5, s10, -1591
                  sra          s1, a7, a3
                  ori          t0, a3, 1167
                  addi         s0, s0, -137
                  sub          a3, s7, t6
sub_2_j5:         jalr         s10, s0, 138 #jump sub_2 -> sub_4
                  sra          s3, s0, t4
                  blt          s7, gp, 554f
                  ori          a0, zero, -1586
                  bge          t6, a3, 559f
                  srai         ra, s7, 4
551:              blt          s10, t1, 553f
                  ori          s7, a5, -185
553:              xori         t5, t6, -1727
554:              addi         a3, sp, -1054
                  bgeu         tp, gp, 566f
                  andi         a1, t4, -255
                  add          zero, t0, s8
                  andi         t5, gp, 1244
559:              andi         a0, t2, 1918
                  addi         a4, t0, 2040
                  andi         t4, a3, 424
                  beq          a0, s3, 568f
                  beq          a1, s2, 576f
                  bge          s0, s3, 576f
                  srli         s9, a5, 2
566:              nop
                  bge          a1, zero, 581f
568:              bgeu         tp, a5, 580f
                  addi         a6, s6, 1770
                  bne          s11, a2, 584f
                  slt          a4, s10, s5
                  nop
                  beq          s7, a1, 584f
                  bgeu         zero, s11, 577f
                  blt          t1, zero, 581f
576:              lui          s8, 659724
577:              sltu         gp, a4, a1
                  bgeu         s8, ra, 585f
                  srli         a6, s0, 23
580:              srl          a5, t4, t3
581:              srl          a6, t3, s7
                  bltu         gp, a7, 596f
                  sltiu        s9, t2, -303
584:              sltu         s0, a6, a7
585:              andi         s1, t4, 1803
                  or           s2, s0, s2
                  bgeu         s10, zero, 590f
                  slli         tp, t2, 2
                  bge          s5, t3, 595f
590:              srai         a6, t4, 2
                  nop
                  sub          a2, s4, t6
                  add          s10, gp, a0
                  sra          s8, tp, s5
595:              sltu         gp, t3, s1
596:              bge          s10, a7, 605f
                  slli         t2, s7, 30
                  srai         zero, sp, 4
                  andi         sp, t2, -1875
                  srai         s9, t2, 9
                  bgeu         a1, t4, 613f
                  slti         a7, a7, 27
                  ori          s6, t0, 106
                  slli         t2, t4, 8
605:              add          t1, s8, s11
                  sub          zero, a0, s8
                  lui          ra, 800183
                  andi         s6, a4, -982
                  slli         t4, t5, 1
                  sll          zero, a3, gp
                  andi         t1, s0, 1578
                  ori          a1, ra, 1335
613:              srai         s5, a2, 16
                  and          t1, s9, a4
                  andi         t4, a7, 236
                  bltu         t5, sp, 633f
                  ori          a2, s8, -1605
                  srli         t1, tp, 11
                  beq          a5, s2, 621f
                  lui          gp, 104095
621:              add          s5, s8, t3
                  sra          a6, t1, zero
                  sltu         a0, t2, ra
                  bne          a5, a6, 635f
                  sub          s5, t5, s8
                  srai         ra, a3, 24
                  xor          s1, gp, gp
                  ori          a7, s1, -1261
                  sra          a3, s4, t1
                  xor          ra, a3, zero
                  slt          a6, t3, s0
                  blt          s9, ra, 652f
633:              slti         a6, t6, 1534
                  xor          s1, s4, s4
635:              bge          ra, s0, 645f
                  srl          ra, a4, t0
                  auipc        a4, 743280
                  slli         a1, s2, 0
                  add          s10, s7, s1
                  sltiu        tp, a1, 528
                  sltiu        s10, s10, 1835
                  and          t1, a4, t3
                  slti         s6, a3, -411
                  addi         a3, s5, 910
645:              addi         s3, a7, -652
                  beq          gp, ra, 652f
                  sltiu        t4, s8, 516
                  sll          s5, t5, t5
                  ori          s6, t5, -435
                  sll          s3, t1, t0
                  nop
652:              xori         s0, a7, 1773
                  addi         s5, s0, 729
                  or           s0, tp, sp
                  sub          tp, a4, a5
                  slti         t1, zero, -1731
                  nop
                  bne          t6, a7, 666f
                  bne          ra, a7, 679f
                  bltu         a2, t5, 666f
                  sltu         a0, t4, a5
                  srai         a3, a4, 19
                  srl          a6, tp, t6
                  srai         s10, s11, 14
                  add          t4, a0, a4
666:              slli         s11, a7, 31
                  sra          s5, s11, zero
                  bgeu         s1, sp, 676f
                  auipc        s5, 1004349
                  beq          a4, a7, 686f
                  ori          a5, a3, 246
                  xor          a2, s0, gp
                  sub          t1, a5, t6
                  beq          a7, gp, 680f
                  ori          a3, a7, 121
676:              andi         t4, a0, -362
                  sltu         t2, s7, tp
                  xor          s1, zero, a2
679:              slt          s3, s10, sp
680:              bne          t0, s9, 686f
                  srli         t4, t4, 30
                  srai         ra, a0, 8
                  slti         a5, a4, 1049
                  add          t1, s2, s8
                  srl          ra, s2, t0
686:              ori          t1, a6, 1507
                  sltu         s6, a6, s7
                  lw           s10, 4(t3)
                  srai         s3, a2, 1
                  ori          s2, t3, -410
                  sltu         t4, a6, a4
                  xori         t1, t4, -1323
                  addi         t3, t3, 52
                  xor          s2, sp, t1
                  slti         gp, t0, 200
                  srl          a0, a0, s3
1021:             addi x14, x26, 1
1021:             jalr x14, x14, 0
sub_3:            addi         t3, t3, -32
                  srl          a7, s10, t5
                  sw           s10, 4(t3)
                  sra          a4, t4, t2
                  slti         s7, a6, 175
                  addi         a7, zero, 8 #init loop 1 counter
                  srli         zero, s5, 2
                  and          s8, tp, a1
                  addi         a5, zero, 19 #init loop 1 limit
sub_3_1_1_t:      nop
                  sub          t4, s2, a7
                  addi         a7, a7, 8 #update loop 1 counter
                  ori          t1, a6, 1000
                  sll          a4, t0, s7
                  addi         t0, zero, 0 #init loop 0 counter
                  xor          a2, t5, t0
                  sra          sp, a4, zero
                  addi         s11, zero, -18 #init loop 0 limit
                  sll          t2, ra, a7
sub_3_1_0_t:      nop
                  sra          s5, t2, a6
                  slli         a0, s8, 9
                  auipc        t2, 504534
                  sub          s8, s9, s3
                  add          s5, s11, t6
                  sltiu        s10, t6, 251
                  addi         t0, t0, -7 #update loop 0 counter
                  auipc        zero, 889841
                  bge          t0, s11, sub_3_1_0_t #branch for loop 0
                  sub          s10, gp, s10
                  andi         s6, s5, 1020
                  bltu         a7, a5, sub_3_1_1_t #branch for loop 1
                  slti         a3, s8, -1127
                  addi         a5, zero, 7 #init loop 0 counter
                  addi         s3, zero, -3 #init loop 0 limit
sub_3_3_0_t:      auipc        a3, 516718
                  addi         a5, a5, -10 #update loop 0 counter
                  bne          a5, s3, sub_3_3_0_t #branch for loop 0
                  xor          s0, s10, s4
                  addi         s9, zero, -8 #init loop 1 counter
                  slti         s8, sp, 1167
                  addi         s3, zero, 5 #init loop 1 limit
sub_3_4_1_t:      auipc        s5, 576326
                  addi         s9, s9, 5 #update loop 1 counter
                  addi         s10, zero, -4 #init loop 0 counter
                  sltiu        a0, a4, -1334
                  addi         s6, zero, -1 #init loop 0 limit
sub_3_4_0_t:      xori         s8, a1, 1398
                  addi         s10, s10, 2 #update loop 0 counter
                  srli         a4, sp, 6
                  blt          s10, s6, sub_3_4_0_t #branch for loop 0
                  bltu         s9, s3, sub_3_4_1_t #branch for loop 1
                  lui          a3, 503207
                  addi         s8, zero, 1 #init loop 1 counter
                  sub          zero, s5, gp
                  ori          tp, s1, -1679
                  addi         s9, zero, 19 #init loop 1 limit
                  slt          ra, s9, a5
sub_3_5_1_t:      xori         a6, a6, 1961
                  ori          s0, sp, 651
                  add          ra, s1, a7
                  addi         s8, s8, 6 #update loop 1 counter
                  nop
                  slt          a6, a1, s10
                  addi         s10, zero, -7 #init loop 0 counter
                  addi         a0, zero, -13 #init loop 0 limit
                  sltu         t1, a7, a0
                  add          a5, s8, sp
                  nop
sub_3_5_0_t:      addi         s0, a4, 413
                  addi         s10, s10, -2 #update loop 0 counter
                  auipc        a4, 287833
                  bge          s10, a0, sub_3_5_0_t #branch for loop 0
                  addi         ra, a4, 40
                  beq          s8, s9, sub_3_5_1_t #branch for loop 1
                  ori          t4, tp, 1792
                  addi         s0, zero, 7 #init loop 0 counter
                  addi         a3, a1, 1308
                  ori          zero, a7, -67
                  addi         s3, t4, 292
                  xori         s3, a3, -1752
                  nop
                  addi         t4, zero, -20 #init loop 0 limit
sub_3_7_0_t:      xor          s8, t6, a3
                  or           a6, ra, t6
                  xori         t5, a1, -738
                  sub          a3, s6, t0
                  addi         s0, s0, -3 #update loop 0 counter
                  and          sp, zero, t3
                  xori         s2, a7, -1122
                  xori         t1, gp, -1192
                  sltu         s2, s6, s1
                  or           s10, s1, s1
                  sltiu        s7, a1, 1652
                  srl          s11, s9, s0
                  sltu         s9, s4, s11
                  beq          s0, t4, sub_3_7_0_t #branch for loop 0
                  srl          s6, s4, gp
                  addi         t4, zero, 10 #init loop 1 counter
                  slli         a3, t1, 21
                  srli         s9, t2, 5
                  add          a1, a6, t2
                  xori         s6, t5, -356
                  addi         s8, zero, -12 #init loop 1 limit
                  srai         sp, a3, 25
sub_3_0_1_t:      ori          gp, s9, 1649
                  sub          ra, s10, a0
                  sra          a6, s5, t5
                  sll          a7, t6, s7
                  addi         t4, t4, -8 #update loop 1 counter
                  addi         s5, zero, -6 #init loop 0 counter
                  sltiu        s10, t5, -250
                  xori         t1, a7, -612
                  sra          a4, a0, a5
                  xori         ra, a1, 503
                  xori         s3, s5, 485
                  srl          ra, tp, a1
                  addi         a2, zero, 0 #init loop 0 limit
                  sra          tp, gp, s4
                  andi         a6, a0, 1187
sub_3_0_0_t:      auipc        s9, 462177
                  srli         a3, s4, 27
                  addi         s5, s5, 9 #update loop 0 counter
                  slt          t2, a6, zero
                  blt          s5, a2, sub_3_0_0_t #branch for loop 0
                  addi         gp, t6, -419
                  srli         a3, s7, 10
                  srl          t2, s9, s7
                  add          a7, a5, a2
                  bge          t4, s8, sub_3_0_1_t #branch for loop 1
                  sll          s6, t0, s4
                  addi         s1, zero, 10 #init loop 1 counter
                  addi         sp, zero, 10 #init loop 1 limit
                  or           a7, zero, s4
sub_3_2_1_t:      xor          s8, ra, t3
                  or           a7, s3, t4
                  addi         s1, s1, -8 #update loop 1 counter
                  addi         s11, zero, 7 #init loop 0 counter
                  addi         t4, zero, 11 #init loop 0 limit
sub_3_2_0_t:      add          a7, s5, a4
                  or           s2, s7, s10
                  slti         s0, gp, -1205
                  sltu         s5, s8, t0
                  addi         s11, s11, 4 #update loop 0 counter
                  bne          s11, t4, sub_3_2_0_t #branch for loop 0
                  sub          s9, t5, a1
                  and          a5, s4, s1
                  or           tp, t1, sp
                  slti         zero, zero, -313
                  bgeu         s1, sp, sub_3_2_1_t #branch for loop 1
                  sll          s8, t6, s10
                  addi         sp, zero, 10 #init loop 0 counter
                  addi         ra, zero, 17 #init loop 0 limit
sub_3_6_0_t:      or           a7, a1, t2
                  srli         s5, a6, 29
                  addi         sp, sp, 1 #update loop 0 counter
                  bne          sp, ra, sub_3_6_0_t #branch for loop 0
                  slt          a0, t6, ra
                  andi         s2, a4, -1521
                  bgeu         gp, t4, 2f
2:                sltiu        s9, ra, -833
                  or           s6, s8, s1
                  beq          s9, a0, 7f
                  nop
                  or           a5, t6, a1
7:                sll          a4, a7, s5
                  bltu         t1, sp, 9f
9:                beq          ra, a3, 25f
                  and          s8, a4, gp
                  bltu         a7, s0, 28f
                  slli         t4, s0, 29
                  ori          t2, t1, -601
                  auipc        a0, 365691
                  xori         a2, s8, 1852
                  bne          s4, t5, 22f
                  ori          tp, s0, -496
                  bgeu         a1, t1, 23f
                  slti         t4, sp, -539
                  slt          tp, sp, s5
                  sltiu        t1, t0, 1112
22:               sltiu        s7, s3, -983
23:               bgeu         t0, tp, 25f
                  sub          a2, t0, s4
25:               xor          s11, s4, s2
                  addi         ra, s0, -952
                  slti         t5, t4, 1804
28:               nop
                  sltiu        tp, s6, 1691
                  sub          gp, t3, a4
                  bne          a6, a1, 51f
                  andi         t2, t3, -441
                  srli         a4, gp, 31
                  slli         gp, a3, 3
                  or           s6, zero, a1
                  slti         gp, s11, 1387
                  andi         a2, s6, -1534
                  blt          s0, t1, 40f
                  sltu         zero, s2, a5
40:               beq          a3, ra, 52f
                  blt          a2, s4, 52f
                  beq          s9, s0, 45f
                  bne          s5, s6, 55f
                  slli         s10, a0, 20
45:               sltiu        tp, s9, -1018
                  beq          t6, zero, 61f
                  slt          s10, s3, zero
                  auipc        a3, 880692
                  sub          t4, s5, s10
                  beq          s3, t3, 55f
51:               auipc        s2, 418560
52:               ori          a4, s7, 561
                  blt          s5, t4, 55f
                  beq          s7, t4, 62f
55:               lui          s1, 864985
                  slli         tp, gp, 5
                  blt          s7, ra, 72f
                  and          s7, s3, s8
                  bne          s4, tp, 67f
                  beq          a5, s5, 73f
61:               sub          s11, s0, s0
62:               xori         s7, a3, -1547
                  sltiu        zero, s1, 904
                  xor          s11, a1, a0
                  sltiu        a5, zero, 914
                  bgeu         t2, ra, 69f
67:               and          a1, a4, s2
                  slt          gp, a3, s11
69:               bltu         a2, s10, 79f
                  sra          s1, t1, s7
                  add          s10, a3, a7
72:               xor          a4, zero, t5
73:               blt          s2, s9, 78f
                  addi         s1, t6, 1317
                  lui          a1, 865991
                  beq          s8, s5, 82f
                  sltiu        s3, s7, -1700
78:               addi         zero, t5, -1772
79:               srl          gp, a0, s3
                  nop
                  beq          a7, a3, 92f
82:               ori          a0, t5, 1218
                  or           gp, a4, t0
                  bne          t5, a0, 98f
                  slli         a3, s4, 8
                  xori         a7, s6, 1732
                  srai         t1, s4, 26
                  sub          a6, s8, t2
                  sltu         a4, gp, a6
                  or           a2, zero, t3
                  sltu         s6, a2, sp
92:               andi         t5, s11, 1500
                  slli         a1, s2, 4
                  or           t0, s7, t2
                  slt          a6, s3, zero
                  bne          a5, s4, 103f
                  sub          s0, a3, s5
98:               slli         s11, s2, 31
                  addi         a6, a7, 1739
                  sltiu        s10, s11, -695
                  slti         a6, s10, -12
                  ori          zero, t3, 243
103:              ori          zero, s11, 1470
                  andi         s9, t6, 1010
                  slt          a1, s10, a1
                  add          s0, a5, s0
                  slt          tp, s3, a7
                  srli         s0, s0, 11
                  sltu         s1, zero, zero
                  or           s8, s1, s0
                  srli         s8, s11, 18
                  srai         a6, s3, 16
                  blt          a0, a0, 125f
                  bgeu         t1, a6, 117f
                  or           s9, zero, s2
                  andi         t2, a1, -506
117:              xor          s10, a4, a6
                  blt          t2, t4, 123f
                  nop
                  bne          s5, s4, 123f
                  srl          s7, a2, sp
                  srli         t0, a0, 23
123:              srl          zero, tp, gp
                  xori         s5, s0, 1850
125:              xori         s0, s5, 1238
                  bne          s4, a3, 142f
                  andi         s7, s0, -1576
                  lui          a1, 745269
                  beq          tp, ra, 132f
                  sra          s1, a5, s7
                  bge          a4, t3, 143f
132:              srai         a4, a3, 17
                  slt          a6, t6, t3
                  add          t2, a3, s1
                  sltiu        a1, a6, -274
                  bne          s4, a3, 138f
                  auipc        s7, 518215
138:              slti         t4, a1, -1747
                  xor          s0, a2, a3
                  srli         s8, t4, 19
                  bne          sp, s0, 156f
142:              bge          t5, a3, 147f
143:              bge          a7, t4, 150f
                  sra          a1, s11, s0
                  bgeu         a0, s11, 162f
                  ori          a1, a0, 1634
147:              bgeu         sp, t0, 150f
                  xor          tp, t0, a7
                  sltu         t1, t4, gp
150:              or           sp, s1, s3
                  sub          sp, s5, s3
                  srli         a1, s7, 18
                  add          s10, s1, s1
                  add          s9, a4, s7
                  or           s0, a2, s2
156:              sub          t5, s11, zero
                  srli         s7, ra, 17
                  or           t1, s9, ra
                  sltu         s1, a5, a1
                  bne          s10, a4, 162f
                  bltu         s3, a4, 167f
162:              sub          s8, s4, s8
                  bne          t0, a0, 183f
                  xor          a3, s11, s4
                  srli         t2, a3, 25
                  ori          s2, a1, -2022
167:              slli         t2, sp, 13
                  nop
                  bgeu         a4, a0, 181f
                  slli         a3, t3, 13
                  blt          s11, s1, 183f
                  bgeu         sp, t4, 183f
                  sra          t0, a6, t4
                  add          s3, t1, a2
                  srl          t1, a7, s9
                  add          a0, t0, s3
                  srl          a3, t0, t4
                  sltu         a5, sp, s4
                  auipc        a4, 831075
                  sltiu        s8, s6, 1374
181:              sub          t0, sp, s2
                  bne          a7, s6, 193f
183:              and          a6, s0, a7
                  bne          s11, t3, 194f
                  srli         s10, t1, 30
                  sub          a2, t3, s9
                  sltiu        a5, gp, 1305
                  xor          s3, t2, a4
                  add          a0, s0, s10
                  add          t1, s5, a0
                  lui          zero, 274563
                  lui          a5, 128950
193:              bne          s6, s3, 199f
194:              slt          s10, t4, ra
                  beq          tp, s2, 203f
                  xor          t5, sp, ra
                  ori          tp, s6, 162
                  sll          sp, s0, a4
199:              addi         t2, s7, 1073
                  sub          s11, a3, tp
                  or           gp, a6, a2
                  auipc        s8, 487438
203:              srli         a4, a2, 23
                  sll          a5, s10, s3
                  xori         t5, s8, -589
                  sra          a7, zero, t0
                  sra          sp, zero, a7
                  sltu         a7, t3, s2
                  xori         gp, s10, -1627
                  blt          ra, s8, 215f
                  auipc        sp, 902623
                  sltu         t5, t4, a6
                  sub          s8, a5, s4
                  sra          s7, s3, a6
215:              nop
                  srli         s11, a6, 25
                  nop
                  slti         a3, s1, -219
                  bne          ra, s1, 220f
220:              bge          s10, a1, 235f
                  andi         a0, s9, -1495
                  bge          ra, a7, 236f
                  slt          gp, s0, s3
                  beq          zero, a4, 226f
                  addi         s0, tp, 1993
226:              sll          t0, tp, a7
                  and          s10, a7, a7
                  sra          a7, gp, a6
                  sltiu        s11, a3, 387
                  srl          s11, s9, a4
                  sltu         a1, s9, zero
                  auipc        a6, 488341
                  xor          t5, t5, t2
                  sltiu        s10, t2, 1358
235:              srli         zero, a1, 21
236:              andi         a4, a0, -1462
                  sltiu        a5, s10, -566
                  addi         a3, a0, 677
                  sll          s10, a0, t6
                  slli         a0, t3, 25
                  slti         s0, a4, -581
                  sltu         t1, t3, t4
                  slti         s6, a7, -1662
                  blt          a4, s11, 245f
245:              lui          a0, 447372
                  addi         t0, t2, -1179
                  add          sp, t6, a7
                  slli         t5, t1, 4
                  xor          a2, gp, gp
                  and          zero, s11, t5
                  addi         ra, t1, -1193
                  sub          t4, t4, t5
                  bge          t1, s1, 261f
                  andi         a0, s3, 1298
                  beq          s6, ra, 268f
                  sltiu        s8, a0, 167
                  sltiu        a0, s1, -907
                  or           s8, s9, s1
                  bne          t0, t0, 262f
                  slti         a2, sp, 1194
261:              xor          t1, zero, t2
262:              andi         s5, sp, -383
                  ori          t4, s5, 647
                  addi         s10, a3, 1228
                  slt          a7, s11, a1
                  sra          zero, s5, t3
                  bge          sp, s11, 270f
268:              lui          s0, 357154
                  nop
270:              or           s0, s10, a1
                  sltiu        t1, a5, -86
                  srl          sp, t2, s8
                  bltu         a7, a3, 278f
                  srli         s9, ra, 22
                  sub          a3, s11, t1
                  bgeu         a3, s9, 286f
                  bgeu         a5, zero, 280f
278:              bgeu         s10, s9, 286f
                  lui          s9, 354793
280:              sltiu        t1, gp, 1725
                  ori          t1, s9, -922
                  lui          a7, 724098
                  add          zero, s2, t0
                  bgeu         s2, a7, 286f
                  bge          a4, s11, 302f
286:              sltu         a0, a5, a6
                  or           t2, s7, s2
                  bge          t5, s6, 302f
                  slt          a2, a5, a0
                  ori          a1, s11, 2014
                  auipc        ra, 999303
                  blt          a2, t3, 304f
                  srai         tp, sp, 19
                  or           tp, s4, t2
                  sll          t2, a2, s1
                  bne          zero, a2, 307f
                  addi         s10, s6, 1088
                  blt          t3, s3, 300f
                  xori         a1, s0, 877
300:              xori         s2, s2, -869
                  srai         a6, t6, 6
302:              sltu         s8, a3, a5
                  nop
304:              bge          ra, s7, 317f
                  beq          a2, t2, 311f
                  slt          t1, ra, t0
307:              bge          s5, s1, 323f
                  sub          a4, s9, tp
                  nop
                  addi         s9, s10, 104
311:              sra          a1, s0, t6
                  andi         s2, ra, 843
                  blt          a0, a7, 316f
                  xori         zero, a7, 279
                  andi         t5, s9, -524
316:              bge          s6, s7, 323f
317:              ori          s2, t1, -513
                  ori          s3, a4, 369
                  lui          zero, 248456
                  sltiu        s1, s8, 987
                  bne          s3, t1, 323f
                  slt          t4, a0, s11
323:              sll          s9, a7, a2
                  bge          s10, a6, 332f
                  blt          s0, a0, 326f
326:              blt          s9, t2, 337f
                  bge          t1, t3, 342f
                  lui          s2, 911592
                  bne          s3, s10, 330f
330:              addi         a4, a6, -563
                  add          a5, s0, s3
332:              sll          a5, ra, zero
                  sub          s0, zero, t4
                  blt          t3, s4, 340f
                  slti         s9, s10, 1160
                  auipc        sp, 112651
337:              blt          t3, s7, 349f
                  sub          a0, zero, s11
                  or           a2, sp, s4
340:              nop
                  xori         a2, s11, 437
342:              bge          s8, s3, 357f
                  andi         sp, a4, 285
                  slt          s7, s1, a1
                  and          zero, s6, s2
                  add          s7, s7, a6
                  sltu         zero, s4, s8
                  bge          a0, s8, 351f
349:              beq          s3, t5, 354f
                  srli         t1, a7, 14
351:              sub          zero, sp, s9
                  blt          tp, s11, 357f
                  nop
354:              and          tp, a1, t6
                  or           t2, s6, s2
                  xori         s11, s2, -630
357:              or           a0, s6, s1
                  beq          s3, s4, 378f
                  or           a2, s11, s9
                  sltu         s0, t3, s10
                  or           a7, s11, s0
                  bltu         t6, s9, 374f
                  nop
                  srai         t1, a0, 11
                  nop
                  blt          s9, a3, 371f
                  nop
                  and          s9, s1, gp
                  srl          a0, a3, s3
                  xori         a5, s5, -884
371:              bne          a5, t5, 373f
                  andi         s7, t5, -1640
373:              andi         t5, s5, 247
374:              ori          tp, s8, 1188
                  sub          tp, t4, gp
                  bltu         a3, a7, 388f
                  srai         s5, s2, 4
378:              srli         t1, s5, 0
                  add          s1, s10, s4
                  sltu         t5, t3, t3
                  sltiu        s9, t0, -1516
                  andi         s3, t5, -475
                  addi         s5, a6, 1191
                  bgeu         t5, a1, 391f
                  sltiu        a2, s0, 1377
                  blt          s6, t0, 406f
                  srai         s8, s9, 30
388:              xor          zero, a5, a7
                  blt          s2, gp, 402f
                  xori         a1, tp, -2037
391:              slli         s1, t1, 14
                  blt          a3, t2, 407f
                  sub          a1, t3, s7
                  blt          t5, s4, 404f
                  slli         a3, t5, 29
                  add          s7, a5, t1
                  slti         s1, s11, -1506
                  slti         tp, a1, -683
                  sltu         s11, s11, s4
                  sra          tp, s7, t6
                  srai         s10, sp, 28
402:              and          s8, a6, t4
                  beq          s8, a1, 406f
404:              sub          gp, s6, s8
                  xor          t5, zero, s7
406:              sltu         t0, t2, s1
407:              and          gp, s4, s1
                  sra          a1, a4, tp
                  and          s0, a6, zero
                  srai         gp, s6, 6
                  nop
                  andi         a0, s0, 410
                  and          t1, s5, s3
                  ori          zero, s9, -2021
                  auipc        a6, 38857
                  xor          s5, t1, gp
                  slli         a3, s3, 4
                  slt          s11, t4, tp
                  nop
                  bltu         tp, s10, 421f
421:              bltu         s9, ra, 423f
                  sub          a7, s2, s1
423:              and          a5, tp, sp
                  xori         s0, a0, -1742
                  auipc        a7, 935408
                  blt          s8, a7, 431f
                  andi         t1, s10, -655
                  and          a2, a2, s7
                  and          tp, a5, a1
                  blt          s3, t0, 431f
431:              lui          a6, 108119
                  sub          a0, t0, a6
                  lw           s10, 4(t3)
                  auipc        ra, 36400
                  addi         t3, t3, 32
                  sll          tp, s0, t1
                  auipc        t4, 872116
596:              addi x21, x26, 1
596:              jalr x21, x21, 0
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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x20, x28, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x5, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x5, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x5, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x5, x14, ecall_handler
                  li x14, 0x1
                  beq x5, x14, instr_fault_handler
                  li x14, 0x5
                  beq x5, x14, load_fault_handler
                  li x14, 0x7
                  beq x5, x14, store_fault_handler
                  li x14, 0xc
                  beq x5, x14, pt_fault_handler
                  li x14, 0xd
                  beq x5, x14, pt_fault_handler
                  li x14, 0xf
                  beq x5, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x28, x20, zero
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
                  add x28, x20, zero
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
                  add x28, x20, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x28, x20, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x28, x20, zero
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
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x28, x20, zero
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
