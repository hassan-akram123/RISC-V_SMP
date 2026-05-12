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
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 1
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
                  li x0, 0x6
                  li x1, 0x80000000
                  li x2, 0x4
                  li x3, 0x0
                  li x4, 0x7
                  li x5, 0xfda8c089
                  li x6, 0x774858dc
                  li x7, 0x36a094fc
                  li x8, 0x80000000
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x35c9624e
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x3
                  li x16, 0xc
                  li x17, 0xfdcf788b
                  li x18, 0x9
                  li x19, 0xfc486cc0
                  li x20, 0xf
                  li x21, 0x9a1cff42
                  li x22, 0xfcedb4bc
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x8329f83f
                  li x26, 0x80000000
                  li x28, 0xd
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0xc62c7fe9
                  la x27, user_stack_end
main:             addi         t2, zero, 10 #init loop 1 counter
                  sll          sp, t5, t1
                  and          a7, a1, t0
                  auipc        t1, 743872
                  addi         a3, zero, 16 #init loop 1 limit
                  srl          t1, s1, t2
main_1_1_t:       or           a7, s6, t3
                  and          t6, gp, gp
                  addi         t2, t2, 6 #update loop 1 counter
                  slli         a1, zero, 8
                  addi         a6, zero, -3 #init loop 0 counter
                  andi         a5, a6, -545
                  addi         a2, zero, 14 #init loop 0 limit
main_1_0_t:       and          t0, s0, s0
                  or           a0, tp, s6
                  addi         a6, a6, 7 #update loop 0 counter
                  add          t5, s3, s10
                  sra          ra, a6, a4
                  sll          t1, s9, a7
                  auipc        t3, 283164
                  sll          t5, s6, t2
                  slli         s10, s5, 17
                  or           s6, t3, t1
                  lui          t1, 33960
                  bltu         a6, a2, main_1_0_t #branch for loop 0
                  ori          s4, s0, -982
                  bne          t2, a3, main_1_1_t #branch for loop 1
                  slli         t0, s9, 29
                  addi         t0, zero, 7 #init loop 1 counter
                  slt          a7, ra, t5
                  sub          gp, s6, a5
                  addi         s0, zero, 16 #init loop 1 limit
                  addi         t5, a1, 1828
                  xor          t2, a4, s6
                  sra          a0, s5, zero
                  slti         t5, s10, 640
main_0_1_t:       nop
                  sub          a0, s5, t4
                  ori          a0, a1, 425
                  addi         t0, t0, 6 #update loop 1 counter
                  addi         s7, zero, -3 #init loop 0 counter
                  addi         tp, zero, 1 #init loop 0 limit
                  add          s3, gp, a0
                  sltu         s8, s7, s10
                  srli         s6, s9, 12
                  sub          a4, t4, s4
                  auipc        t3, 165063
                  or           t2, t6, t2
main_0_0_t:       xori         s8, a4, -1452
                  sll          t3, s4, s5
                  addi         s7, s7, 6 #update loop 0 counter
                  bltu         s7, tp, main_0_0_t #branch for loop 0
                  sub          a4, s6, t1
                  nop
                  ori          zero, t0, 602
                  ori          a5, s2, -1637
                  sra          a3, a2, t1
                  blt          t0, s0, main_0_1_t #branch for loop 1
                  and          a2, t0, t2
                  addi         t3, zero, 4 #init loop 0 counter
                  auipc        tp, 850691
                  srli         a3, s0, 25
                  or           a0, t2, sp
                  addi         t6, zero, 19 #init loop 0 limit
                  ori          s5, s8, 1229
                  or           t4, s4, s8
                  srai         s3, s7, 26
                  and          s5, s10, a3
                  sltu         s6, s0, gp
                  addi         s7, s10, 1195
                  xori         s8, s11, -2017
                  sll          tp, t5, a0
                  add          s6, t0, s3
main_2_0_t:       auipc        gp, 297550
                  and          gp, t2, a2
                  sll          a6, s4, sp
                  addi         t3, t3, 5 #update loop 0 counter
                  and          a5, tp, sp
                  and          a6, s3, a1
                  or           a1, t1, s9
                  bne          t3, t6, main_2_0_t #branch for loop 0
                  sra          tp, s11, t1
                  lui          t6, 981139
                  sll          zero, s1, ra
                  bge          s3, t5, 6f
                  srli         tp, a7, 27
                  ori          t6, t1, 1473
                  la           s3, sub_1
                  auipc        s9, 137588
                  srai         s4, s9, 9
                  addi         s3, s3, 847
                  sltu         t2, s4, s7
                  beq          a7, tp, main_j2 #branch to jump instr
                  nop
                  srai         t3, s9, 24
                  xori         a1, s6, 1460
                  slti         s5, t1, 1390
                  srai         tp, ra, 19
main_j2:          jalr         a5, s3, -846 #jump main -> sub_1
                  sub          t5, tp, s2
                  xori         s7, s9, 1052
                  nop
6:                blt          s7, t1, 13f
                  and          t3, sp, a0
                  xori         t5, t6, -1485
                  xori         a2, s0, -102
                  bge          s9, s3, 25f
                  beq          t6, t0, 28f
                  or           a3, s10, s10
13:               xor          s3, s9, t1
                  slti         s6, t4, -174
                  nop
                  slti         t1, s9, -1959
                  bgeu         s1, a3, 25f
                  slti         ra, s11, -1828
                  sub          t4, s3, s0
                  auipc        s10, 839471
                  slti         gp, a0, -576
                  and          a7, s5, sp
                  bltu         s7, tp, 41f
                  blt          s0, gp, 36f
25:               beq          t2, s10, 44f
                  bgeu         s8, a2, 35f
                  srai         s3, a0, 14
28:               srl          t1, s8, a4
                  sub          s0, zero, a3
                  sra          a1, a7, t0
                  xori         s10, a4, 1316
                  sll          t2, s0, gp
                  xori         s5, s8, 1998
                  bne          a0, s5, 35f
35:               slt          a1, zero, s8
36:               add          a3, s1, s7
                  xor          t3, s11, s5
                  nop
                  blt          a3, a2, 57f
                  ori          tp, s4, 533
41:               and          a2, sp, a0
                  sltu         s4, zero, a7
                  blt          a5, a2, 48f
44:               lui          s6, 428676
                  srai         s9, t5, 9
                  bltu         a3, s7, 54f
                  xor          t5, a1, s9
48:               lui          a6, 704900
                  lui          gp, 560468
                  sltu         t5, a1, t6
                  slti         sp, a6, -1742
                  srai         t2, ra, 12
                  bltu         s2, ra, 62f
54:               slt          a1, a4, t2
                  sltiu        a7, a5, 952
                  add          ra, s0, a0
57:               bltu         s4, a0, 68f
                  xori         s10, s1, -1323
                  or           a5, s4, s1
                  blt          a1, t3, 72f
                  bltu         t6, a5, 75f
62:               srai         t0, s11, 31
                  sll          s3, t3, zero
                  bge          ra, a2, 78f
                  and          t1, t6, s9
                  auipc        t5, 160429
                  or           s3, t1, s6
68:               andi         s4, a3, -1139
                  sub          t1, s3, a5
                  bge          a7, t5, 87f
                  andi         gp, a0, 1939
72:               slli         s6, s11, 17
                  slli         t0, t2, 11
                  xor          s9, t3, t3
75:               or           s3, t6, s9
                  bne          a0, a6, 92f
                  lui          t0, 623551
78:               beq          ra, s0, 97f
                  sll          t5, s8, sp
                  addi         ra, s9, -1264
                  bltu         zero, gp, 82f
82:               beq          s2, t3, 100f
                  add          tp, sp, s6
                  xor          sp, s1, a5
                  sub          a2, ra, a1
                  add          s4, t6, s7
                  la           gp, sub_1
                  addi         gp, gp, 377
                  sra          a4, a1, gp
                  ori          t3, s6, 1351
                  sub          zero, t6, t4
                  sra          s10, s9, a5
                  sub          t1, s1, t3
                  and          t3, s2, s1
main_j1:          jalr         a5, gp, -377 #jump main -> sub_1
                  lui          a0, 356247
                  add          a3, s7, t1
                  bge          zero, s9, 91f
87:               auipc        ra, 629654
                  sra          a3, s9, zero
                  beq          a2, zero, 104f
                  nop
91:               bge          t6, ra, 108f
92:               lui          ra, 137259
                  sltu         t3, s3, a0
                  add          t4, s0, a6
                  or           s3, a6, a6
                  slli         sp, t6, 27
97:               bltu         a1, t5, 100f
                  sra          s8, sp, s9
                  slli         s4, a6, 25
100:              bne          t1, t4, 118f
                  sll          s9, s10, ra
                  srli         t3, a3, 16
                  or           t0, gp, s1
104:              addi         s7, t0, 68
                  srai         s5, zero, 9
                  srl          t6, gp, t3
                  xori         s0, t0, 297
108:              sltu         a0, s7, s10
                  and          a7, t5, zero
                  slti         zero, zero, -1967
                  xori         gp, s10, -924
                  andi         t1, s11, -118
                  addi         gp, t3, 59
                  srli         t0, t5, 13
                  and          ra, a5, sp
                  xori         sp, t0, 1633
                  sll          sp, s2, s10
118:              sub          t5, s8, s4
                  bne          s10, zero, 131f
                  sra          t2, a0, a0
                  bltu         sp, s6, 124f
                  xori         a3, s11, 847
                  auipc        s9, 1034145
124:              bge          s2, a4, 142f
                  ori          s5, a5, 38
                  blt          t5, s3, 131f
                  slti         s4, gp, -441
                  sltiu        s8, s1, 321
                  srl          a7, a5, s11
                  sub          ra, a1, s4
131:              blt          a0, s10, 148f
                  sltiu        s10, a0, 1060
                  add          sp, t5, a7
                  slli         t2, s3, 2
                  andi         s0, t1, -78
                  or           s3, a2, a5
                  sll          s5, a0, a4
                  or           a3, a4, s0
                  beq          s9, t5, 158f
                  sltiu        a2, a2, -1070
                  xori         t3, a5, -1581
142:              add          s0, tp, sp
                  bne          a2, s5, 157f
                  bge          ra, ra, 161f
                  andi         sp, a2, -1684
                  bltu         gp, s1, 149f
                  bge          s0, t0, 165f
148:              sltiu        a4, t2, -516
149:              sll          ra, a0, ra
                  blt          s8, a3, 162f
                  blt          t6, s0, 169f
                  slti         t4, sp, 549
                  sll          s0, s5, a3
                  sltiu        gp, s3, 1847
                  xori         s7, t6, -1407
                  xor          t0, a7, s1
157:              ori          t6, a4, -102
158:              bgeu         s7, s10, 165f
                  bgeu         ra, a7, 171f
                  bltu         t4, s11, 163f
161:              bltu         gp, sp, 171f
162:              nop
163:              bge          a0, s0, 167f
                  or           s3, s7, s5
165:              srai         a7, s10, 6
                  add          t2, a7, t4
167:              sltiu        t4, a7, -989
                  sra          t6, s2, t4
169:              addi         s8, s8, 609
                  or           s5, s4, t3
171:              slli         sp, a4, 0
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            bltu         t1, t2, sub_5_stack_p
                  slli         ra, a2, 13
                  sub          a7, a1, s6
                  sub          t6, s0, s5
                  slti         s6, s2, -1180
sub_5_stack_p:    addi         s11, s11, -12
                  sw           a5, 4(s11)
                  srl          s3, s6, t2
                  sltiu        a4, s9, -1298
                  srl          s5, a3, s3
                  addi         s7, zero, 9 #init loop 0 counter
                  addi         t0, zero, 19 #init loop 0 limit
                  andi         t6, gp, -8
                  srai         s0, t3, 29
                  sra          t4, t1, sp
sub_5_0_0_t:      sub          t3, a0, s11
                  nop
                  addi         s7, s7, 1 #update loop 0 counter
                  auipc        a6, 1031205
                  slt          tp, gp, s10
                  bltu         s7, t0, sub_5_0_0_t #branch for loop 0
                  or           s8, s8, s4
                  addi         a5, zero, 9 #init loop 0 counter
                  andi         s7, tp, -1766
                  addi         a3, a0, 1800
                  sltu         zero, s2, s3
                  ori          s3, t4, -1924
                  sub          a2, s1, s5
                  addi         ra, zero, -16 #init loop 0 limit
                  sltu         s8, s4, s2
                  slt          a2, s11, s6
                  srl          t6, s1, t4
sub_5_3_0_t:      andi         s8, ra, 1487
                  srl          sp, s7, a7
                  addi         a5, a5, -5 #update loop 0 counter
                  andi         a1, s6, 1647
                  beq          a5, ra, sub_5_3_0_t #branch for loop 0
                  xor          t4, s8, t0
                  addi         a5, zero, 5 #init loop 1 counter
                  or           s0, t0, s9
                  or           a3, a7, t3
                  addi         a4, zero, -13 #init loop 1 limit
                  andi         t4, s11, 399
                  srai         tp, s10, 30
                  and          gp, s4, t0
                  addi         s0, s4, 1162
                  xor          t6, s11, t6
sub_5_1_1_t:      xori         a7, zero, -428
                  sra          t1, s2, sp
                  addi         a5, a5, -6 #update loop 1 counter
                  lui          s10, 35315
                  addi         s3, zero, 0 #init loop 0 counter
                  andi         a2, a3, 251
                  addi         s4, zero, 17 #init loop 0 limit
                  nop
sub_5_1_0_t:      add          t0, t1, s4
                  nop
                  lui          a0, 721014
                  sltu         s9, a7, s4
                  sltu         s5, a3, t5
                  slti         s7, a7, 1653
                  addi         s3, s3, 5 #update loop 0 counter
                  nop
                  blt          s3, s4, sub_5_1_0_t #branch for loop 0
                  sll          a0, a6, t5
                  nop
                  bge          a5, a4, sub_5_1_1_t #branch for loop 1
                  ori          ra, s10, 709
                  addi         a7, zero, -1 #init loop 1 counter
                  addi         a5, zero, 14 #init loop 1 limit
                  srli         tp, s9, 0
                  slti         s7, a3, 225
                  sub          t4, s3, tp
sub_5_2_1_t:      sltiu        t0, s7, 1196
                  srl          a6, a4, tp
                  addi         a7, a7, 5 #update loop 1 counter
                  slti         t5, t0, 819
                  xor          t0, s9, a2
                  auipc        t6, 728294
                  auipc        a0, 323764
                  sub          t4, s3, a6
                  or           a0, ra, s3
                  addi         sp, zero, 7 #init loop 0 counter
                  slt          gp, s6, a6
                  andi         s6, tp, -275
                  slti         a2, a4, -1425
                  sltiu        s9, a4, 629
                  slti         t5, a2, -1614
                  addi         s3, zero, -9 #init loop 0 limit
                  ori          t2, sp, -1655
sub_5_2_0_t:      sltiu        s8, s2, 1209
                  addi         sp, sp, -8 #update loop 0 counter
                  xor          zero, a7, gp
                  lui          t0, 357013
                  sra          s9, sp, a5
                  slt          s8, s5, t1
                  srl          t0, s4, s2
                  srl          zero, a1, a3
                  bne          sp, s3, sub_5_2_0_t #branch for loop 0
                  sub          t3, gp, t1
                  beq          a7, a5, sub_5_2_1_t #branch for loop 1
                  sltiu        s8, a0, -1984
                  bgeu         s8, a4, 17f
                  addi         t6, t2, 677
                  add          t3, a5, sp
                  and          t5, a0, t2
                  sub          t1, s10, t0
                  sra          ra, t6, s4
                  srl          a3, a7, a1
                  srai         s10, s5, 21
                  andi         t0, a5, -1867
                  addi         s6, s0, 1306
                  sub          s10, s11, s11
                  bge          a2, a6, 21f
                  xor          a5, t2, t6
                  bge          a3, s7, 26f
                  sub          s10, a6, t5
                  xori         s5, ra, 1572
                  slti         t6, s0, -1613
17:               add          s0, ra, t4
                  sltu         ra, t2, s5
                  xor          t4, a0, a3
                  bgeu         t1, s9, 23f
21:               bne          s2, s7, 39f
                  nop
23:               xori         sp, s9, 44
                  or           s9, zero, t2
                  sra          sp, t6, s3
26:               bgeu         t3, a0, 32f
                  bne          s10, s11, 44f
                  slti         ra, s1, -1019
                  srli         s4, gp, 7
                  sra          gp, s9, zero
                  beq          a7, s1, 43f
32:               nop
                  blt          s7, s10, 42f
                  srli         s10, t6, 1
                  slti         t5, gp, -94
                  andi         a5, s9, 521
                  and          s4, a1, a0
                  ori          t5, gp, -1301
39:               slt          a5, t6, a5
                  slli         s7, t1, 31
                  nop
42:               slti         ra, s1, 1353
43:               slli         t4, a0, 30
44:               xori         s6, a6, -138
                  sltiu        t3, s7, 307
                  auipc        s9, 1036196
                  beq          a4, zero, 59f
                  slt          t5, s4, t5
                  or           zero, a2, t1
                  and          a0, a4, gp
                  or           a0, t6, a1
                  ori          a1, s0, -297
                  sub          s9, a1, s6
                  sra          a5, a0, t1
                  add          t4, s2, t1
                  srl          t4, t3, s2
                  blt          s6, s7, 70f
                  beq          s4, a1, 61f
59:               sub          s3, t0, s11
                  bgeu         s2, t4, 66f
61:               bne          ra, s2, 77f
                  sltu         s5, s4, a4
                  nop
                  sub          t1, tp, t0
                  bge          t2, sp, 78f
66:               xor          zero, s4, a3
                  sltu         s3, s6, s5
                  srai         a3, s1, 1
                  blt          s3, s2, 76f
70:               or           a6, sp, zero
                  srai         t5, s8, 10
                  auipc        sp, 981669
                  beq          t3, s10, 78f
                  or           a6, ra, t4
                  slt          s0, a5, s0
76:               auipc        a0, 63452
77:               sltiu        t6, s1, -796
78:               bne          t3, gp, 82f
                  nop
                  add          s9, s2, t0
                  srl          t2, t3, s2
82:               lui          t5, 48231
                  addi         t6, s8, 183
                  xor          a7, ra, zero
                  bgeu         s7, a4, 102f
                  nop
                  addi         t0, s7, -1928
                  xori         a7, s2, 1114
                  sra          gp, t6, t3
                  addi         t1, t0, 1556
                  sltiu        tp, s11, -1201
                  addi         t2, s9, 1115
                  slt          sp, s10, a6
                  andi         gp, a3, 1912
                  beq          s11, s4, 110f
                  lui          t3, 222882
                  slli         t5, t0, 14
                  slt          s4, s3, s2
                  auipc        s5, 465417
                  or           a7, a1, s10
                  sra          a7, a3, s4
102:              slt          sp, a2, zero
                  nop
                  sltu         t2, t2, s11
                  auipc        sp, 71657
                  or           s9, t2, s8
                  xori         t4, t6, -1315
                  slti         s4, s4, 1960
                  slt          a1, a5, t2
110:              slli         t5, s1, 29
                  sltiu        a2, a7, -1665
                  sll          s10, tp, zero
                  blt          a1, gp, 132f
                  sra          s8, s7, ra
                  ori          a3, s6, -407
                  bne          s2, s9, 129f
                  srl          s6, sp, s8
                  sltiu        a0, a4, -1142
                  ori          t1, a2, -1788
                  sra          t0, t2, s11
                  bltu         zero, a6, 138f
                  bltu         zero, zero, 141f
                  sltiu        s5, ra, 2010
                  sub          t2, t0, t2
                  or           a2, s9, s1
                  srl          s0, a2, s5
                  slt          t2, s8, tp
                  lui          a6, 1013105
129:              bgeu         a7, a4, 133f
                  add          s6, s4, a5
                  bne          t6, s7, 142f
132:              sra          ra, s1, sp
133:              bltu         t1, gp, 137f
                  andi         tp, s1, -636
                  add          t4, a0, s0
                  sll          s10, t3, s7
137:              or           s3, a3, s6
138:              bltu         a4, s0, 139f
139:              sltu         a7, t2, ra
                  sub          s9, t1, gp
141:              xor          t5, a1, t0
142:              bge          gp, s3, 143f
143:              bltu         t4, s1, 161f
                  bne          s0, s10, 162f
                  addi         s9, a0, -2001
                  sll          sp, a7, gp
                  add          s0, s0, s1
                  bltu         tp, s7, 167f
                  beq          s0, t3, 152f
                  addi         s4, t5, -642
                  or           s0, t6, a7
152:              nop
                  beq          t2, s8, 170f
                  bge          s9, t4, 158f
                  beq          sp, t4, 168f
                  ori          a4, s3, -505
                  sub          ra, a0, s11
158:              addi         s0, t1, 1593
                  srli         s3, t3, 25
                  beq          a7, a1, 164f
161:              beq          s4, a1, 173f
162:              sub          s6, s1, a1
                  sltu         t6, s0, a5
164:              bltu         s4, s2, 180f
                  addi         s10, t1, -1762
                  bge          a0, tp, 172f
167:              srli         s6, s1, 30
168:              auipc        s5, 161435
                  srl          ra, a3, s5
170:              sll          s3, a0, t2
                  bltu         s4, a6, 176f
172:              srai         t0, t3, 21
173:              sub          t0, t1, a5
                  bgeu         a0, s9, 178f
                  srai         s10, a6, 19
176:              add          s5, t4, a3
                  slti         s4, a5, 1934
178:              sub          a7, s10, s6
                  nop
180:              sltu         t2, s3, a0
                  add          a4, t0, s4
                  nop
                  or           s4, a5, t6
                  xori         t2, a4, -580
                  srai         s3, a2, 21
                  bgeu         s7, s1, 189f
                  bgeu         s2, a2, 196f
                  beq          a3, a4, 205f
189:              ori          s6, sp, -1106
                  and          ra, a1, ra
                  add          tp, t0, s8
                  beq          a6, s2, 202f
                  slt          s6, t5, s10
                  ori          t6, s2, 799
                  srai         t5, s8, 13
196:              srli         sp, a4, 17
                  slli         s9, s2, 11
                  lui          gp, 89604
                  beq          s8, t1, 212f
                  xor          s10, s4, t5
                  and          s4, a6, s7
202:              bltu         s8, t4, 203f
203:              sub          a2, s1, t1
                  nop
205:              or           a7, s11, s9
                  lui          s8, 246472
                  auipc        s0, 744273
                  xor          t5, a0, s6
                  xor          s7, s1, s1
                  lui          zero, 723168
                  bltu         a4, gp, 224f
212:              slt          t4, a7, s5
                  sltiu        s10, s5, -171
                  srli         s4, t5, 14
                  sltiu        a5, sp, -1062
                  beq          s11, s2, 223f
                  bgeu         s6, a1, 232f
                  bltu         s4, t0, 237f
                  sll          t6, zero, sp
                  sra          t0, a3, t6
                  srai         s9, s9, 31
                  addi         t5, a0, 944
223:              srai         s6, t2, 10
224:              srl          a1, a3, sp
                  srl          s9, a5, s1
                  srli         s4, s1, 8
                  slti         s3, s8, -222
                  blt          s5, t6, 240f
                  bne          s2, t6, 235f
                  slt          t2, t3, s10
                  bltu         a7, a6, 240f
232:              slt          a7, s7, s10
                  blt          a5, a6, 240f
                  sll          s8, t5, ra
235:              bne          t0, tp, 240f
                  slli         a2, a7, 27
237:              bltu         t0, a4, 240f
                  nop
                  lui          ra, 443006
240:              and          s9, s9, a2
                  srai         t5, s10, 12
                  lw           a5, 4(s11)
                  addi         s11, s11, 12
                  add          t2, a0, tp
                  sra          t5, sp, a3
348:              addi x22, x15, 0
348:              jalr x22, x22, 0
sub_4:            or           a0, s1, a6
                  beq          a5, zero, sub_4_stack_p
                  sltiu        s10, s2, 1360
                  slli         tp, a2, 0
sub_4_stack_p:    addi         s11, s11, -8
                  sw           a5, 4(s11)
                  sll          gp, s1, s9
                  addi         s10, zero, -7 #init loop 1 counter
                  sra          s9, s11, a5
                  sub          a5, a2, s3
                  or           s8, t4, s6
                  slti         ra, s4, 884
                  and          ra, t4, a3
                  slli         s7, s1, 4
                  sltu         s9, s0, a6
                  lui          s4, 695498
                  addi         a6, zero, 4 #init loop 1 limit
                  slli         a5, gp, 14
sub_4_3_1_t:      add          s3, a0, a6
                  ori          s0, s5, 279
                  sra          t1, s10, s9
                  addi         s10, s10, 1 #update loop 1 counter
                  slt          tp, a4, s6
                  add          a7, gp, tp
                  srli         t4, a7, 5
                  slli         a5, s3, 7
                  addi         t5, s7, 1113
                  addi         a4, zero, 4 #init loop 0 counter
                  addi         t6, zero, 2 #init loop 0 limit
                  ori          a3, s7, -316
sub_4_3_0_t:      slt          a5, t1, t0
                  ori          s7, s10, 1602
                  addi         a4, a4, -9 #update loop 0 counter
                  sltiu        a1, s7, 1421
                  sltu         a7, ra, a1
                  xori         s0, s6, -1015
                  sltu         s0, s0, gp
                  bge          a4, t6, sub_4_3_0_t #branch for loop 0
                  blt          s10, a6, sub_4_3_1_t #branch for loop 1
                  auipc        a3, 916835
                  addi         t0, zero, 5 #init loop 0 counter
                  sltiu        s0, zero, 993
                  slti         t5, s0, -822
                  slt          s0, s3, s7
                  addi         s4, zero, 4 #init loop 0 limit
sub_4_4_0_t:      xor          gp, s7, t5
                  auipc        a3, 820185
                  nop
                  addi         t0, t0, -1 #update loop 0 counter
                  ori          s8, a6, -547
                  and          s10, t0, s7
                  sltiu        a3, t5, 1015
                  andi         s6, t2, -1502
                  bgeu         t0, s4, sub_4_4_0_t #branch for loop 0
                  sll          s8, s6, a3
                  addi         t6, zero, 7 #init loop 0 counter
                  or           s3, t2, s7
                  sra          s9, s7, a7
                  sra          s8, a3, a2
                  slti         zero, a6, -297
                  sltiu        s4, gp, 1908
                  andi         s4, t1, -602
                  andi         t4, s4, -1795
                  srli         a1, t2, 16
                  addi         s0, zero, 7 #init loop 0 limit
sub_4_2_0_t:      sltiu        t5, a1, 1598
                  xor          a0, sp, t1
                  addi         t6, t6, -3 #update loop 0 counter
                  sra          a3, zero, s10
                  slli         a4, a1, 0
                  auipc        a4, 747611
                  bgeu         t6, s0, sub_4_2_0_t #branch for loop 0
                  sub          t3, s3, s11
                  xori         s10, tp, 1895
                  slt          sp, t1, s11
                  sra          gp, a4, s7
                  sll          a5, s5, tp
                  lui          a1, 513515
                  srli         s7, gp, 19
                  nop
                  sub          s8, s8, tp
                  and          t4, s1, t0
                  slli         a0, zero, 4
                  lui          gp, 568011
                  bltu         s7, t3, 13f
                  slli         gp, a1, 29
13:               addi         s6, tp, -1871
                  srli         s5, s1, 11
                  bne          t1, t3, 19f
                  auipc        a3, 973414
                  srl          a0, t3, a7
                  andi         t3, s6, -209
19:               bne          s5, sp, 36f
                  ori          s6, s2, -164
                  bgeu         s2, t0, 33f
                  slt          gp, s10, a4
                  add          a7, s7, sp
                  or           t3, t0, a4
                  or           s3, ra, s4
                  sra          a5, s2, s7
                  sltiu        s8, ra, -1809
                  andi         a4, s1, -2007
                  srai         s4, ra, 5
                  and          a2, s5, t6
                  sub          zero, s1, s1
                  xori         zero, a6, 272
33:               or           t3, t5, ra
                  xori         ra, a4, -987
                  sll          t3, a5, a6
36:               auipc        s6, 706532
                  bge          s1, ra, 39f
                  sub          t0, a7, a5
39:               slt          a0, zero, s10
                  bne          s3, a2, 53f
                  srli         t4, s2, 24
                  bne          s10, a6, 54f
                  add          s0, t3, zero
                  srli         t0, s3, 3
                  sltiu        a3, gp, 361
                  beq          tp, tp, 60f
                  slli         s7, t2, 2
                  sll          s10, s4, s10
                  beq          s8, s10, 55f
                  sll          a6, s0, s11
                  srl          a5, s7, s2
                  and          t2, s5, s8
53:               or           s0, s5, zero
54:               and          tp, t4, s5
55:               bne          s5, ra, 75f
                  blt          t1, t6, 70f
                  auipc        a2, 991696
                  xori         a0, a4, 948
                  bne          sp, s1, 73f
60:               and          s9, a5, a6
                  sra          zero, s0, a6
                  blt          s1, a7, 75f
                  sltiu        s7, t6, -3
                  slti         a5, a2, 1042
                  xor          t0, t3, gp
                  bge          s1, t0, 78f
                  nop
                  bne          s1, t4, 70f
                  sra          a6, t4, a1
70:               sra          t4, a0, t3
                  xor          tp, a6, s4
                  blt          t1, t0, 79f
73:               lui          a2, 416539
                  slt          a5, s8, s9
75:               xori         a6, s11, -222
                  lui          t3, 833235
                  beq          a5, s9, 91f
78:               xor          t1, zero, s5
79:               xor          s8, s11, a4
                  lui          tp, 364902
                  xor          a4, a3, tp
                  sltiu        a4, t5, 1340
                  srl          a0, s0, s3
                  srli         t0, tp, 7
                  srl          a6, t4, t0
                  slli         t5, a7, 24
                  addi         sp, zero, 8 #init loop 1 counter
                  srli         s9, a0, 26
                  srai         s8, t3, 18
                  ori          a5, t0, -1022
                  addi         a3, a5, -1989
                  lui          t1, 646197
                  sra          gp, t2, s1
                  lui          a5, 769421
                  sub          s8, a5, gp
                  addi         a6, zero, 10 #init loop 1 limit
                  or           t3, t1, s5
                  ori          t6, ra, -1952
sub_4_1_1_t:      and          zero, s5, t3
                  addi         sp, sp, 1 #update loop 1 counter
                  addi         zero, a3, 2007
                  addi         s0, zero, -9 #init loop 0 counter
                  addi         a1, zero, 11 #init loop 0 limit
                  sub          a3, s3, s8
                  auipc        t5, 596943
sub_4_1_0_t:      sub          ra, s4, s11
                  ori          t0, s0, 1430
                  add          t4, a6, ra
                  addi         s0, s0, 10 #update loop 0 counter
                  sltiu        a0, s3, 1900
                  beq          s0, a1, sub_4_1_0_t #branch for loop 0
                  or           s4, a2, s11
                  slti         tp, s8, 201
                  sub          s6, s8, sp
                  bltu         sp, a6, sub_4_1_1_t #branch for loop 1
                  slti         t2, a5, 1595
                  andi         s6, t0, 2044
                  sub          ra, a5, gp
                  sll          gp, t2, sp
                  nop
91:               sra          t0, a1, s4
                  nop
                  xori         s5, t3, 1636
                  xor          t3, s4, zero
                  srli         sp, t4, 25
                  addi         a7, zero, -3 #init loop 0 counter
                  nop
                  sra          a3, sp, t1
                  srl          a3, a7, s11
                  sltiu        a2, a7, 1854
                  slti         a6, s9, 1879
                  addi         t0, zero, 19 #init loop 0 limit
                  auipc        s3, 126984
                  sltu         s0, t5, t5
                  ori          s5, a4, 393
sub_4_0_0_t:      slt          a1, ra, a4
                  or           s6, s4, s8
                  sra          t2, s4, t1
                  addi         a7, a7, 3 #update loop 0 counter
                  sltiu        s0, s6, -1705
                  addi         s5, s4, -1829
                  sub          s8, a3, sp
                  sltiu        a0, tp, -214
                  srl          t4, t2, s6
                  nop
                  add          a2, s9, a4
                  blt          a7, t0, sub_4_0_0_t #branch for loop 0
                  add          t5, a2, a7
                  sub          gp, t0, s3
                  addi         sp, ra, -221
                  andi         ra, a3, -1352
                  slli         s4, a5, 8
                  add          t1, gp, ra
                  ori          t1, t1, -1781
                  bgeu         a3, a7, 115f
                  bge          a5, s9, 121f
                  ori          s6, a6, -801
                  srl          t1, t2, gp
                  xori         s5, s1, 1273
                  srli         a6, sp, 3
                  addi         a7, s7, 1146
                  addi         t6, s8, 749
                  srai         tp, s2, 1
                  blt          s11, s8, 124f
                  beq          a3, s8, 114f
                  lui          zero, 566403
114:              bne          s3, t2, 127f
115:              srl          s7, a2, zero
                  blt          s0, s5, 120f
                  sub          s3, s8, sp
                  sltu         s5, a5, t4
                  and          s7, t2, t5
120:              bgeu         a0, s6, 131f
121:              or           ra, s3, s10
                  lui          a6, 970622
                  bltu         t4, s7, 137f
124:              slli         s7, t4, 22
                  andi         t6, t0, -437
                  sra          s4, s8, t1
127:              slt          t3, t3, gp
                  addi         s0, t2, 350
                  bltu         s5, s11, 148f
                  srli         zero, s1, 6
131:              sltu         s6, ra, tp
                  bgeu         a2, zero, 148f
                  ori          s3, s0, -1874
                  addi         a3, a4, 1490
                  bge          s7, a3, 139f
                  auipc        s8, 557905
137:              sub          s10, t0, a6
                  sltu         t1, a3, a3
139:              sra          gp, s0, s10
                  xori         s5, s11, 1870
                  srli         s6, a3, 8
                  sub          t0, tp, s11
                  sltiu        s10, s11, -1912
                  sll          tp, a5, s10
                  srl          t2, gp, gp
                  xori         a3, sp, -183
                  xor          s10, a5, t2
148:              lui          t2, 897188
                  srli         a0, s0, 8
                  andi         a1, s3, -1636
                  slt          s8, a4, a2
                  slt          a3, t6, s9
                  srl          a1, t5, gp
                  srl          tp, tp, s2
                  blt          t6, a2, 159f
                  andi         t6, zero, -1978
                  lui          a2, 144283
                  sll          a5, a7, s8
159:              or           s6, a5, zero
                  lui          sp, 657061
                  slt          t4, a0, t3
                  or           a6, a1, t6
                  or           a6, t2, t3
                  nop
                  andi         s9, a7, -1810
                  sll          a5, t2, a3
                  lui          a4, 300636
                  blt          s0, t0, 178f
                  auipc        s0, 277667
                  srai         sp, ra, 5
                  sltiu        s7, s6, 752
                  bne          s5, a1, 184f
                  slt          s4, s7, s0
                  or           s3, s10, a5
                  and          a1, a0, tp
                  blt          t0, ra, 189f
                  and          gp, s1, s4
178:              srl          t2, t0, tp
                  addi         s3, t2, -2027
                  add          a6, s7, tp
                  bltu         s10, s1, 197f
                  and          a1, ra, a5
                  add          ra, ra, a0
184:              bne          a2, s1, 201f
                  sll          gp, s8, t3
                  sltiu        a4, t0, -1301
                  addi         a0, t0, 531
                  or           t1, sp, zero
189:              addi         t5, a3, 1307
                  bgeu         ra, a6, 192f
                  sll          a2, t1, t2
192:              bgeu         t4, a2, 196f
                  srai         s7, a3, 27
                  andi         a2, zero, -935
                  add          a3, s6, s7
196:              bltu         s9, s7, 210f
197:              ori          a1, s6, 601
                  sltu         a5, s2, s4
                  or           t1, t2, s11
                  or           gp, s2, sp
201:              or           t0, t4, zero
                  beq          s1, a3, 204f
                  bge          a2, t4, 214f
204:              bgeu         s8, s7, 214f
                  ori          t4, s2, -561
                  bltu         a6, tp, 219f
                  sltu         s5, gp, t5
                  srli         a0, s8, 13
                  auipc        a3, 6928
210:              srai         t5, t3, 28
                  bne          a6, s2, 223f
                  xor          tp, ra, a2
                  slli         s8, s10, 15
214:              beq          s4, a3, 228f
                  xori         a0, gp, 981
                  sltu         t1, s7, a2
                  slti         s4, t4, 1212
                  and          t6, a4, a7
219:              and          a5, s10, a1
                  bgeu         tp, gp, 226f
                  xor          gp, a1, a5
                  sltiu        s9, s9, 1987
223:              sub          a0, a3, s9
                  sltu         s3, s9, gp
                  xor          s7, t4, t3
226:              nop
                  xor          sp, s11, s0
228:              sll          a6, a4, sp
                  slt          a3, s9, a3
                  addi         s0, s4, -226
                  lui          t5, 724397
                  srai         a1, a4, 26
                  sltu         t0, a4, s2
                  nop
                  add          s8, a7, s4
                  auipc        s7, 819861
                  nop
                  bgeu         s6, a0, 250f
                  slti         s10, s6, -310
                  srli         zero, tp, 5
                  bne          a6, t0, 255f
                  lui          t6, 339811
                  slli         a6, s9, 10
                  xor          a4, s9, ra
                  srli         a6, sp, 0
                  xor          ra, s10, a3
                  add          s10, s4, s6
                  srai         s7, a4, 31
                  sltiu        t2, a4, 86
250:              bgeu         a4, zero, 264f
                  slt          a6, t1, s1
                  slt          s9, a3, t0
                  srli         tp, s1, 18
                  nop
255:              sra          t3, s10, s9
                  and          t0, a4, t4
                  sra          s7, t1, a7
                  andi         zero, s3, 1562
                  sltiu        a1, a5, 893
                  addi         t5, s8, -1593
                  xori         s4, t0, 296
                  sra          t2, t4, s10
                  srl          a0, t3, t4
264:              sltu         s5, ra, t5
                  and          s9, s10, a4
                  sll          s3, a0, s11
                  beq          t5, s3, 280f
                  xori         ra, a5, 960
                  bne          a3, tp, 287f
                  auipc        s7, 257861
                  bltu         a7, t1, 285f
                  sltu         t1, s9, s4
                  bne          t0, zero, 292f
                  bgeu         a6, a1, 278f
                  srli         s8, s6, 21
                  xor          a5, s6, t6
                  and          s6, gp, a1
278:              addi         zero, s0, 1373
                  add          t0, t0, t4
280:              slt          t4, s5, a3
                  sra          a5, ra, s11
                  slti         a6, s1, 1716
                  sra          zero, s6, t3
                  lui          t6, 154874
285:              add          t2, gp, s8
                  bne          a2, s11, 292f
287:              xori         t4, a4, 1928
                  xor          t2, a3, s9
                  lui          s0, 595653
                  add          s5, a4, t1
                  xori         a5, gp, -2046
292:              addi         a5, t6, -145
                  slli         t6, s9, 18
                  lw           a5, 4(s11)
                  sub          s7, s0, gp
                  slt          sp, a7, a7
                  slt          s7, t3, s7
                  addi         s11, s11, 8
                  addi         s5, a7, 688
426:              addi x5, x15, 1
426:              jalr x5, x5, 0
sub_3:            bltu         t1, t5, sub_3_stack_p
sub_3_stack_p:    addi         s11, s11, -32
                  srai         a6, s2, 28
                  sw           a5, 4(s11)
                  sltu         t3, s1, a7
                  xor          a0, gp, tp
                  addi         s4, zero, -7 #init loop 1 counter
                  sll          t6, a0, s0
                  or           t6, a5, t1
                  addi         a7, zero, -6 #init loop 1 limit
                  srl          sp, s5, t4
sub_3_11_1_t:     sltiu        a1, s1, 868
                  xor          s9, a3, t2
                  addi         zero, s3, -1008
                  nop
                  nop
                  lui          a1, 80914
                  srli         s7, t2, 1
                  addi         s4, s4, 8 #update loop 1 counter
                  addi         t5, zero, -6 #init loop 0 counter
                  slt          s10, gp, a1
                  xori         a3, zero, -749
                  sltu         a2, ra, s4
                  addi         t2, zero, -20 #init loop 0 limit
                  auipc        s6, 280955
                  sltu         a4, a7, s9
                  srai         a1, t5, 2
                  or           a1, s2, t4
sub_3_11_0_t:     slti         s5, t6, 1927
                  srai         s8, s0, 13
                  sll          t0, a3, sp
                  addi         t5, t5, -5 #update loop 0 counter
                  slti         t6, s5, 303
                  ori          s5, s8, -1098
                  or           t3, a3, s1
                  or           s10, a3, s10
                  ori          s3, s4, -1500
                  bge          t5, t2, sub_3_11_0_t #branch for loop 0
                  blt          s4, a7, sub_3_11_1_t #branch for loop 1
                  sltu         s10, a6, s6
                  addi         s7, zero, -3 #init loop 1 counter
                  srai         s5, s5, 20
                  srl          gp, tp, a4
                  addi         a3, zero, 4 #init loop 1 limit
sub_3_2_1_t:      slti         a7, t2, 13
                  add          ra, gp, a5
                  addi         s7, s7, 7 #update loop 1 counter
                  addi         t0, zero, 6 #init loop 0 counter
                  addi         t6, zero, 4 #init loop 0 limit
                  sltiu        s3, s0, -1828
sub_3_2_0_t:      slti         t3, a2, 1223
                  addi         t0, t0, -3 #update loop 0 counter
                  nop
                  bgeu         t0, t6, sub_3_2_0_t #branch for loop 0
                  sub          s4, s2, a7
                  sltiu        tp, s6, 1832
                  lui          s9, 111115
                  srli         s4, tp, 16
                  bltu         s7, a3, sub_3_2_1_t #branch for loop 1
                  sra          a7, s11, a2
                  addi         sp, zero, 8 #init loop 0 counter
                  xori         s8, a2, -1034
                  xor          t2, a3, s5
                  srl          t5, gp, sp
                  addi         a2, zero, -3 #init loop 0 limit
                  add          t2, s4, a6
                  andi         s7, a7, 494
                  ori          t4, a1, 1520
                  sra          t1, a1, s11
sub_3_0_0_t:      addi         a5, s4, -1639
                  xori         t2, t1, 951
                  addi         sp, sp, -4 #update loop 0 counter
                  slli         s9, a3, 20
                  sub          a0, t5, a2
                  add          s9, s11, t6
                  sltu         t4, s5, ra
                  andi         a1, a5, -1652
                  or           s8, ra, s3
                  nop
                  xor          tp, s9, s1
                  srai         s0, sp, 28
                  add          a3, s4, t2
                  sra          a3, t1, t3
                  or           a4, a7, t1
                  addi         ra, s1, -739
                  xori         t3, sp, 7
                  xor          s0, s9, gp
                  bge          sp, a2, sub_3_0_0_t #branch for loop 0
                  srli         s6, a0, 17
                  addi         s3, zero, -9 #init loop 0 counter
                  lui          sp, 303357
                  sub          s9, s6, a1
                  add          s0, t0, s10
                  andi         s9, t3, 538
                  auipc        s0, 374229
                  sltiu        t3, s4, -1404
                  xor          t3, s6, s6
                  srai         t6, a6, 1
                  xor          tp, a4, a2
                  slli         t6, s1, 11
                  xor          t3, s5, a7
                  sub          ra, t2, a4
                  slli         s6, a6, 17
                  addi         a3, zero, -19 #init loop 0 limit
                  srli         t6, a3, 7
sub_3_14_0_t:     slt          a4, s2, t6
                  lui          s10, 774345
                  slt          gp, s5, t1
                  slti         s5, t1, 1400
                  srli         t0, s3, 21
                  and          zero, ra, a1
                  slt          s0, gp, t6
                  or           s7, t3, s9
                  slti         ra, t4, 803
                  sltu         zero, t4, s9
                  srli         a6, s3, 31
                  addi         s3, s3, -2 #update loop 0 counter
                  bne          s3, a3, sub_3_14_0_t #branch for loop 0
                  and          t6, a0, t2
                  addi         t1, zero, 7 #init loop 1 counter
                  slli         s3, t3, 20
                  addi         t2, zero, 6 #init loop 1 limit
                  sub          a0, a1, s1
                  xor          a4, s0, s2
                  auipc        s6, 178881
                  srl          a1, s6, s0
                  xori         a1, s10, -238
                  srai         t6, gp, 6
sub_3_8_1_t:      slti         tp, s4, -566
                  sltu         sp, t2, a3
                  addi         t1, t1, -5 #update loop 1 counter
                  srai         ra, t3, 6
                  lui          s8, 431693
                  srli         a3, t1, 16
                  addi         a6, zero, -3 #init loop 0 counter
                  xor          t5, t3, s6
                  and          s6, gp, s2
                  ori          s7, s8, 1569
                  sltu         a3, gp, s6
                  or           s8, sp, a4
                  addi         s0, zero, 11 #init loop 0 limit
sub_3_8_0_t:      lui          s4, 412021
                  sll          s4, s10, s9
                  addi         a6, a6, 6 #update loop 0 counter
                  slti         s4, s9, -341
                  sltu         ra, s3, s8
                  sltu         a2, t4, a2
                  srl          s5, s8, a7
                  or           s7, a1, s1
                  xor          a0, s1, s4
                  bltu         a6, s0, sub_3_8_0_t #branch for loop 0
                  bgeu         t1, t2, sub_3_8_1_t #branch for loop 1
                  add          a5, a7, gp
                  addi         s4, zero, 5 #init loop 0 counter
                  addi         a4, zero, 0 #init loop 0 limit
                  srai         s7, s4, 7
sub_3_15_0_t:     slti         s0, t4, -1110
                  andi         gp, s0, -1190
                  addi         s4, s4, -5 #update loop 0 counter
                  sltu         zero, a3, t2
                  bne          s4, a4, sub_3_15_0_t #branch for loop 0
                  xor          s0, a1, s1
                  addi         t3, zero, 6 #init loop 0 counter
                  add          s3, a5, a4
                  xor          t6, a0, a2
                  auipc        zero, 769472
                  addi         t5, zero, 6 #init loop 0 limit
                  srai         t1, s4, 18
                  auipc        t4, 33459
                  nop
sub_3_12_0_t:     lui          a3, 724327
                  and          a6, s11, t4
                  slt          sp, sp, s1
                  sll          sp, zero, t1
                  addi         t3, t3, -4 #update loop 0 counter
                  srai         t2, t0, 30
                  sltiu        s0, a4, -1015
                  add          a7, t0, s6
                  bgeu         t3, t5, sub_3_12_0_t #branch for loop 0
                  auipc        s10, 792679
                  addi         a2, zero, -9 #init loop 1 counter
                  sll          sp, a0, s0
                  addi         a7, zero, 4 #init loop 1 limit
sub_3_9_1_t:      sub          t2, gp, a5
                  ori          a5, s1, 97
                  addi         a2, a2, 3 #update loop 1 counter
                  addi         a0, zero, 10 #init loop 0 counter
                  addi         a4, zero, 12 #init loop 0 limit
sub_3_9_0_t:      add          s7, s7, s11
                  srl          sp, s10, t3
                  addi         a0, a0, 4 #update loop 0 counter
                  xor          a3, s11, t4
                  bltu         a0, a4, sub_3_9_0_t #branch for loop 0
                  xori         t4, a7, 541
                  bltu         a2, a7, sub_3_9_1_t #branch for loop 1
                  ori          a5, s8, 1095
                  addi         a0, zero, 2 #init loop 1 counter
                  addi         t5, zero, 18 #init loop 1 limit
sub_3_6_1_t:      andi         gp, s8, -1196
                  addi         a0, a0, 7 #update loop 1 counter
                  addi         t4, zero, 0 #init loop 0 counter
                  addi         t2, zero, 10 #init loop 0 limit
                  xor          t0, t4, s2
sub_3_6_0_t:      lui          s5, 101114
                  addi         t4, t4, 1 #update loop 0 counter
                  nop
                  beq          t4, t2, sub_3_6_0_t #branch for loop 0
                  bltu         a0, t5, sub_3_6_1_t #branch for loop 1
                  slti         s3, tp, 708
                  addi         a5, zero, 5 #init loop 0 counter
                  auipc        s0, 117325
                  addi         s7, zero, 2 #init loop 0 limit
sub_3_13_0_t:     addi         ra, s3, 682
                  sra          t4, s9, ra
                  addi         a5, a5, -1 #update loop 0 counter
                  nop
                  nop
                  bgeu         a5, s7, sub_3_13_0_t #branch for loop 0
                  lui          a0, 417319
                  addi         t2, zero, -8 #init loop 1 counter
                  addi         s10, zero, 11 #init loop 1 limit
                  and          zero, sp, t2
sub_3_3_1_t:      and          s8, s4, sp
                  addi         t2, t2, 8 #update loop 1 counter
                  addi         t6, zero, 4 #init loop 0 counter
                  addi         s7, zero, -1 #init loop 0 limit
sub_3_3_0_t:      auipc        t5, 237924
                  addi         t6, t6, -5 #update loop 0 counter
                  bne          t6, s7, sub_3_3_0_t #branch for loop 0
                  blt          t2, s10, sub_3_3_1_t #branch for loop 1
                  addi         s0, a4, 1847
                  addi         a5, zero, 10 #init loop 1 counter
                  sltu         t2, a5, a3
                  addi         a3, s9, -1580
                  nop
                  addi         ra, s9, 1421
                  slt          t3, a4, s8
                  sub          t0, s1, a4
                  addi         t1, zero, 17 #init loop 1 limit
                  srli         a2, t4, 24
                  srli         a0, ra, 15
                  sltu         s3, sp, s2
                  sub          zero, t3, sp
                  and          t2, a0, a1
                  xori         t0, a6, 204
                  sltiu        t2, a4, -240
sub_3_4_1_t:      and          zero, a3, tp
                  addi         a5, a5, 7 #update loop 1 counter
                  nop
                  addi         s4, zero, -5 #init loop 0 counter
                  addi         sp, zero, -15 #init loop 0 limit
sub_3_4_0_t:      slti         t3, a6, 1796
                  andi         a7, s5, 207
                  addi         s4, s4, -1 #update loop 0 counter
                  slli         ra, gp, 16
                  bge          s4, sp, sub_3_4_0_t #branch for loop 0
                  add          s3, tp, s1
                  sub          a2, s10, sp
                  xori         t4, s7, 532
                  slli         a2, ra, 11
                  beq          a5, t1, sub_3_4_1_t #branch for loop 1
                  auipc        tp, 57059
                  sub          s8, t1, s9
                  andi         s0, a3, -1282
                  lui          s3, 1869
                  ori          t0, a6, 777
                  sub          tp, tp, a2
                  or           t4, tp, s3
                  bltu         s5, t0, 17f
                  sltiu        a4, gp, 470
                  andi         s5, tp, -1073
                  bltu         s10, s1, 24f
                  ori          t5, a7, 76
                  sltu         sp, s0, a3
                  sll          s3, t1, t6
                  bge          s7, a1, 15f
                  sltu         a7, s6, a3
15:               sltiu        s0, t5, -1628
                  sll          s10, a0, tp
17:               nop
                  sltiu        t0, s1, 362
                  bne          s11, s0, 33f
                  srl          t6, t5, gp
                  add          a2, sp, t6
                  bgeu         t5, t0, 32f
                  and          ra, a6, t4
24:               ori          s7, t6, 1763
                  sra          t1, t2, a0
                  andi         t0, s2, 700
                  sltiu        t0, s4, 657
                  sra          t6, s0, a4
                  srli         t5, s5, 10
                  slli         a3, s11, 24
                  blt          ra, a0, 33f
32:               srli         t0, s3, 25
33:               andi         a4, t5, -67
                  nop
                  sltu         a2, t2, a4
                  slt          a6, a5, a2
                  srl          a0, t2, a2
                  srl          a7, t5, s5
                  ori          s7, ra, -2045
                  addi         s7, a7, -656
                  sub          tp, s4, s5
                  auipc        s5, 308892
                  slli         t4, s11, 26
                  slt          t0, ra, s0
                  sltiu        a3, a6, -1617
                  srl          gp, a1, s3
                  srl          s6, a4, t2
                  and          ra, a0, s4
                  sltiu        s8, sp, -1466
                  srli         s9, t4, 7
                  ori          a0, gp, 847
                  srl          a7, tp, s7
                  bgeu         a2, s7, 58f
                  add          s0, s7, a5
                  addi         a6, s1, 1124
                  auipc        t0, 78221
                  sll          s7, a3, s4
58:               srli         a2, t0, 30
                  sub          t3, zero, t3
                  srli         s3, t2, 19
                  bge          sp, t4, 64f
                  sub          a6, tp, ra
                  add          a0, a1, s7
64:               sll          s3, s1, t0
                  bltu         a7, t1, 85f
                  slli         ra, a3, 8
                  sll          t5, t0, t5
                  addi         s7, s10, -2008
                  bne          a0, t0, 72f
                  bne          a0, a1, 90f
                  sra          s4, s9, s3
72:               bne          a5, s1, 89f
                  auipc        t5, 694344
                  add          zero, s5, tp
                  bne          a1, s0, 83f
                  lui          a5, 834225
                  sub          t1, s4, s6
                  andi         s0, a6, 1091
                  sltiu        tp, t4, -1594
                  blt          t2, s7, 83f
                  lui          t4, 95892
                  srl          zero, a2, s9
83:               xori         t6, a0, 473
                  lui          tp, 307061
85:               nop
                  andi         t3, s4, -2041
                  slti         a0, t5, -171
                  beq          s0, gp, 95f
89:               sltiu        a6, s1, 1893
90:               blt          sp, a1, 94f
                  bgeu         gp, a2, 92f
92:               srli         t1, a6, 18
                  bge          a1, a1, 109f
94:               blt          t1, s6, 97f
95:               ori          s4, a2, 951
                  srli         s8, s3, 20
97:               lui          s10, 467762
                  sra          a2, s4, t6
                  auipc        zero, 11153
                  auipc        s5, 892856
                  slt          ra, ra, a4
                  blt          zero, s1, 106f
                  bge          s0, a4, 113f
                  sltu         sp, tp, a6
                  srai         sp, gp, 23
106:              sltu         s6, s10, t0
                  ori          tp, s3, -822
                  beq          s5, a4, 123f
109:              sltiu        s0, a1, -1855
                  nop
                  ori          t3, a1, -1710
                  blt          a1, s1, 119f
113:              sub          t5, t0, s4
                  xor          a6, t3, s2
                  beq          a6, t6, 132f
                  addi         a5, s9, -1656
                  srl          sp, s11, gp
                  or           s5, a6, s8
119:              lui          s8, 424302
                  srai         a0, s3, 11
                  srai         a0, zero, 14
                  xor          a6, a4, a4
123:              bltu         a2, s4, 126f
                  bge          t0, sp, 131f
                  slti         a3, s3, -219
126:              slli         a2, zero, 8
                  ori          a3, t1, -1456
                  sltu         s7, a3, t0
                  bne          s4, a2, 130f
130:              ori          a4, t2, -1563
131:              slt          t6, t6, tp
132:              slti         s8, gp, 199
                  bltu         s6, tp, 148f
                  sltu         s4, sp, t6
                  sub          t6, ra, s2
                  xor          a4, a0, t5
                  sra          zero, t2, t1
                  sltu         t1, t0, a6
                  sll          ra, a7, s11
                  and          s5, a7, sp
                  and          s0, a7, t0
                  sltiu        s6, s1, -133
                  slt          a0, t3, sp
                  bgeu         s1, s7, 161f
                  addi         t0, zero, -3 #init loop 1 counter
                  addi         a2, zero, -6 #init loop 1 limit
                  srli         t4, t4, 26
                  lui          ra, 159576
sub_3_7_1_t:      sltiu        zero, s0, -46
                  and          ra, zero, s9
                  and          s10, s0, tp
                  addi         t0, t0, -2 #update loop 1 counter
                  slli         t4, s4, 14
                  addi         sp, zero, 9 #init loop 0 counter
                  sub          s3, tp, zero
                  xor          s10, t2, a1
                  sll          t4, t6, t1
                  slli         t6, s10, 15
                  sra          a3, a5, s8
                  lui          a0, 457170
                  slli         a3, a2, 24
                  sll          tp, a6, t0
                  andi         a6, s2, -630
                  addi         s4, zero, 8 #init loop 0 limit
                  sltiu        s10, s2, 1637
sub_3_7_0_t:      slti         s6, tp, 1545
                  or           s5, s4, s1
                  addi         sp, sp, -6 #update loop 0 counter
                  sltu         t4, t4, s7
                  bgeu         sp, s4, sub_3_7_0_t #branch for loop 0
                  lui          s8, 408321
                  slti         t2, t3, -1372
                  bge          t0, a2, sub_3_7_1_t #branch for loop 1
                  srai         a5, t5, 31
                  bne          a6, t1, 152f
                  slt          s8, s11, t4
                  add          t0, gp, a5
148:              slli         gp, ra, 1
                  slti         s7, a7, -1048
                  bne          t3, t4, 153f
                  and          sp, tp, t6
152:              lui          sp, 22691
153:              sltu         s3, s2, t4
                  sra          gp, t2, s1
                  addi         a2, zero, 10 #init loop 1 counter
                  addi         s10, zero, 11 #init loop 1 limit
sub_3_5_1_t:      andi         s4, sp, 1664
                  addi         a2, a2, 1 #update loop 1 counter
                  addi         a6, zero, -10 #init loop 0 counter
                  addi         s5, zero, -20 #init loop 0 limit
sub_3_5_0_t:      lui          zero, 464725
                  addi         a6, a6, -5 #update loop 0 counter
                  beq          a6, s5, sub_3_5_0_t #branch for loop 0
                  bltu         a2, s10, sub_3_5_1_t #branch for loop 1
                  slti         s4, s1, -684
                  srli         zero, a1, 2
                  sub          zero, s0, a3
                  or           a2, s6, t4
                  sll          s4, t5, t0
                  xor          t5, s10, a1
                  srai         a2, s0, 29
161:              xori         t0, t6, 103
                  or           s6, s9, zero
                  bge          tp, s2, 173f
                  xor          tp, t5, gp
                  and          zero, sp, a6
                  andi         t0, s1, -360
                  lui          a3, 484380
                  lui          sp, 479855
                  bne          t3, t1, 176f
                  sub          a2, a2, s11
                  sltu         a5, a6, a1
                  beq          s7, a1, 176f
173:              xori         s10, a7, -703
                  sltu         t6, s4, a3
                  or           s10, t0, t3
176:              auipc        ra, 872114
                  slli         t0, a7, 1
                  bne          a1, a6, 198f
                  lui          gp, 915369
                  bge          s6, tp, 200f
                  lui          a2, 1023958
                  bge          s4, a2, 192f
                  sll          a5, s11, s11
                  sll          s5, t3, a7
                  srai         s10, s2, 4
                  bltu         t6, a0, 202f
                  or           t3, s7, s1
                  lui          a6, 52533
                  auipc        t0, 274976
                  ori          a5, a7, 994
                  sub          a5, a7, sp
192:              and          t5, s9, zero
                  auipc        t1, 816385
                  xor          s10, t2, s8
                  sra          t5, a2, s6
                  addi         t1, zero, -7 #init loop 0 counter
                  srl          t6, t3, s2
                  slt          t6, a7, t5
                  andi         a3, sp, 520
                  addi         s8, zero, -6 #init loop 0 limit
                  srli         t5, tp, 25
sub_3_10_0_t:     or           t5, s0, t4
                  slti         a1, s5, 926
                  addi         t1, t1, 7 #update loop 0 counter
                  nop
                  blt          t1, s8, sub_3_10_0_t #branch for loop 0
                  srl          t4, a6, a2
                  bge          s0, s7, 204f
                  xor          s6, sp, s6
198:              srl          a6, t4, s8
                  nop
200:              ori          s7, a4, -1968
                  bge          t4, t5, 208f
202:              and          s9, sp, s5
                  srai         t2, a4, 5
204:              sll          s7, t5, t4
                  ori          a4, sp, 1873
                  sll          t1, s9, s10
                  sltiu        ra, t3, 1724
208:              add          a1, s3, t3
                  addi         s4, a3, -850
                  auipc        s4, 390503
                  bne          a5, s0, 213f
                  xori         a2, sp, -2034
213:              bne          t6, s8, 218f
                  beq          s2, a2, 229f
                  slt          a5, gp, zero
                  bltu         s2, t3, 217f
217:              lui          gp, 878302
218:              bgeu         s0, zero, 222f
                  sub          s10, a6, a4
                  nop
                  srl          ra, s2, s11
222:              bne          s11, a3, 229f
                  sra          a1, s1, a0
                  ori          s3, t2, -1925
                  sra          a1, t0, tp
                  sltu         tp, s6, ra
                  xor          a5, t1, tp
                  sltu         a7, tp, t1
229:              srl          t3, s10, a4
                  xor          t2, a1, s0
                  auipc        a0, 745931
                  bge          gp, t0, 239f
                  lui          s5, 229960
                  or           gp, a1, s10
                  sra          a4, s2, s10
                  or           t4, a2, tp
                  bltu         a3, s0, 240f
                  slt          t4, s2, a3
239:              slti         a7, s10, -107
240:              bne          a0, s11, 242f
                  slti         t1, a3, -756
242:              nop
                  auipc        s5, 331944
                  auipc        a6, 460079
                  or           a6, t1, s3
                  bltu         gp, s0, 263f
                  bgeu         t1, a5, 264f
                  srai         a5, s5, 24
                  or           s6, s4, t4
                  srai         s4, tp, 29
                  blt          s4, a7, 265f
                  addi         s7, a1, 809
                  slli         a6, zero, 18
                  auipc        s6, 477051
                  sra          t3, sp, sp
                  andi         tp, s8, 341
                  nop
                  lui          sp, 146514
                  bltu         t2, a2, 260f
260:              sltu         t1, t4, a0
                  sub          a5, a2, s7
                  bltu         s7, a5, 279f
263:              xori         a1, sp, 522
264:              sltiu        zero, ra, 694
265:              or           tp, s9, s6
                  xor          a5, a4, t4
                  addi         a7, zero, 691
                  blt          s4, a5, 271f
                  bltu         s9, s4, 272f
                  nop
271:              add          tp, a2, s4
272:              slti         t5, zero, -1776
                  xor          tp, t3, t4
                  bgeu         s7, a0, 289f
                  slti         t4, s1, 1466
                  slli         tp, a7, 23
                  lui          t6, 260563
                  slli         zero, tp, 28
279:              and          a1, s3, a0
                  bne          a5, s9, 283f
                  beq          a6, a1, 296f
                  lui          t4, 563504
283:              sra          a2, s8, t3
                  ori          t2, a6, 1747
                  xor          t2, a2, a5
                  add          s4, t2, a4
                  srli         a5, s4, 17
                  bltu         s7, t6, 299f
289:              auipc        t0, 263297
                  srli         t5, s1, 3
                  sltu         t2, s4, a5
                  sltiu        a7, tp, 400
                  sra          a7, a7, sp
                  srli         s4, s4, 26
                  srai         s7, ra, 19
296:              srai         a7, t6, 25
                  addi         t5, s8, 1330
                  sra          s6, s9, s3
299:              slli         t6, t4, 0
                  sltiu        s4, s9, -655
                  ori          a3, s1, -1588
                  bge          a2, s0, 306f
                  ori          a6, t3, -1050
                  addi         s5, a1, 412
                  srli         s5, a1, 7
306:              or           a0, s6, s11
                  sub          s9, a6, s10
                  slt          a3, s7, a7
                  beq          a3, s3, 312f
                  beq          s10, a2, 327f
                  xori         t2, ra, -1999
312:              slli         a6, s7, 22
                  addi         s4, t0, -661
                  xori         a2, s8, 125
                  sll          gp, s8, s6
                  ori          gp, tp, -1747
                  srli         t5, s10, 20
                  andi         s5, s3, 415
                  slli         s5, t5, 10
                  slti         a0, s8, -141
                  auipc        s10, 44078
                  srai         s3, a7, 16
                  blt          t0, t0, 326f
                  add          s9, s9, s1
                  bgeu         s2, t4, 332f
326:              sltu         s10, a3, ra
327:              or           t2, s5, a5
                  bge          gp, s9, 329f
329:              and          a5, a5, s4
                  slt          s3, a3, s2
                  slti         zero, a1, -83
332:              bltu         t0, t3, 335f
                  slti         ra, s11, 460
                  beq          t5, ra, 354f
335:              bge          ra, a6, 350f
                  xor          s5, a0, ra
                  sll          t1, s5, a4
                  sltiu        a2, gp, 274
                  bltu         t1, s1, 342f
                  bge          a1, tp, 354f
                  nop
342:              srli         t3, a6, 29
                  slt          t1, t3, a5
                  slti         t2, a7, 1931
                  sltu         tp, a4, zero
                  sra          a6, tp, s5
                  nop
                  sltu         zero, t6, tp
                  srli         t1, s3, 5
350:              bge          t1, tp, 365f
                  slli         a6, s9, 16
                  sll          s3, s8, s2
                  slt          s7, s2, s7
354:              xor          s7, s3, a7
                  or           gp, t3, a3
                  andi         a1, t3, 558
                  sll          t0, s9, t0
                  sub          s9, s2, t1
                  blt          s10, a3, 366f
                  slt          s5, s7, gp
                  sltiu        s6, a5, -1316
                  add          a7, t3, t1
                  slli         sp, s6, 24
                  bge          s8, a0, 367f
365:              beq          sp, a2, 380f
366:              sltu         t4, s11, tp
367:              xor          a2, a2, t6
                  srl          s5, a1, a6
                  xori         t6, s10, -832
                  bge          t1, s3, 387f
                  xori         t3, sp, -257
                  xor          s8, a4, s10
                  xor          t5, t2, gp
                  addi         t2, a1, 1288
                  slti         a5, t4, -1878
                  nop
                  srli         s3, s6, 13
                  srai         zero, t1, 11
                  bltu         tp, t4, 389f
380:              sub          s5, a5, s5
                  bgeu         s4, tp, 385f
                  and          a7, a7, t1
                  or           s3, ra, a3
                  slti         s3, s4, -2034
385:              sltiu        s5, t0, 891
                  slli         t6, s2, 6
387:              srl          s10, s3, tp
                  srl          gp, t0, s2
389:              add          a2, a7, s8
                  ori          s0, a2, 744
                  sltu         ra, a1, s7
                  bge          t6, a7, 400f
                  xor          a2, gp, t6
                  add          t2, a1, t3
                  ori          zero, s0, 1288
                  sub          ra, a1, s6
                  srli         gp, sp, 2
                  xor          t1, s6, s11
                  add          a6, s9, a1
400:              slti         s3, t4, 1853
                  nop
                  andi         s4, s0, -330
                  sll          t3, t6, s8
                  slti         t6, s4, -304
                  andi         t0, a3, 1147
                  ori          s4, gp, 1684
                  slli         zero, t0, 27
                  srai         a6, zero, 1
                  blt          s9, s11, 416f
                  bne          s9, s5, 415f
                  bltu         t3, t5, 427f
                  addi         s0, t1, 1123
                  slt          s0, a2, a1
                  xori         ra, t1, -1696
415:              slti         a1, a0, 1369
416:              ori          s4, t2, -476
                  bge          a0, s11, 437f
                  srl          s5, zero, s5
                  sll          s7, a1, t0
                  sltu         a6, a0, sp
                  sra          s5, a5, s4
                  beq          sp, s8, 424f
                  lui          t2, 1008177
424:              sub          a3, ra, t2
                  srli         s8, t1, 15
                  slti         a0, a4, -1380
427:              bne          zero, t5, 438f
                  xori         s5, a0, -299
                  blt          t3, s6, 439f
                  lui          s7, 444938
                  srli         t0, gp, 6
                  slt          s3, t5, t1
                  sra          sp, a5, t2
                  slli         s8, s9, 10
                  andi         a7, a5, 275
                  auipc        a5, 177694
437:              lui          t6, 385262
438:              bgeu         a2, s11, 439f
439:              lui          s10, 334159
                  slti         s0, s9, 39
                  and          s7, a7, zero
                  andi         t4, t1, 1800
                  slt          s6, a1, t3
                  xor          s9, t1, s2
                  sltiu        a6, t0, 982
                  srl          s3, s3, s9
                  sub          s7, t2, s5
                  bgeu         t5, s3, 455f
                  andi         t5, ra, -1398
                  and          s10, a5, s10
                  ori          a6, a7, -1014
                  lui          t5, 523312
                  sub          s6, a6, t4
                  nop
455:              bltu         s5, t4, 472f
                  ori          t4, s11, -687
                  srli         a3, s1, 3
                  sltu         t4, a1, a6
                  andi         t0, a4, -1010
                  bne          t6, tp, 462f
                  sltu         a6, a7, s4
462:              bltu         t6, s6, 465f
                  bne          s3, s7, 479f
                  sub          s4, t3, a6
465:              or           s6, s5, tp
                  beq          s11, s0, 473f
                  sub          a7, t2, s5
                  bge          a6, a5, 471f
                  and          zero, s1, s4
                  nop
471:              lui          s0, 122768
472:              sub          s0, ra, s1
473:              slt          s10, a0, a1
                  bne          ra, s7, 476f
                  slli         t0, a5, 30
476:              sltu         s5, s0, a1
                  lui          t2, 415154
                  sltiu        a1, a3, -982
479:              nop
                  beq          a6, s1, 484f
                  nop
                  bltu         t0, s2, 485f
                  add          a5, t2, t0
484:              sra          t6, a2, tp
485:              sll          s6, s1, t2
                  srli         a3, a4, 26
                  slti         s5, a1, -2
                  sltiu        a3, s3, -439
                  addi         t4, a1, 302
                  slti         a3, s9, 1317
                  beq          s4, s5, 506f
                  add          a0, s3, s7
                  xor          a4, s8, s0
                  and          t0, zero, s8
                  sll          s5, s9, s6
                  xori         a3, s10, 945
                  bge          t4, t4, 504f
                  xor          a0, t1, s3
                  and          s3, s6, a5
                  andi         sp, t4, -648
                  addi         a5, s0, 706
                  sll          s0, a6, a5
                  auipc        a4, 805719
504:              slti         t3, ra, -818
                  sltiu        a1, a1, -507
506:              nop
                  blt          s7, tp, 511f
                  bge          tp, gp, 509f
509:              slli         sp, zero, 27
                  sra          gp, s11, a4
511:              sra          t0, s2, ra
                  xori         sp, a6, -1547
                  auipc        t3, 850627
                  sltiu        s3, t3, 891
                  sra          s7, t3, s10
                  andi         a6, s3, 2016
                  addi         s5, zero, 7 #init loop 0 counter
                  xor          a5, sp, s10
                  addi         s3, zero, -3 #init loop 0 limit
                  sra          a7, s1, t0
                  xori         a5, a4, -539
                  slti         a0, a4, -1446
                  nop
                  nop
                  slli         t6, a5, 11
                  sra          sp, t5, t1
                  sltiu        s0, t6, 2040
                  auipc        sp, 811579
                  srli         s8, a6, 2
                  sll          t6, s7, s5
sub_3_1_0_t:      xori         s9, t3, -806
                  addi         s5, s5, -8 #update loop 0 counter
                  sltiu        t5, a1, 1059
                  add          t6, a1, t5
                  slti         s6, t6, -1014
                  bge          s5, s3, sub_3_1_0_t #branch for loop 0
                  or           a2, a1, t1
                  sltu         t5, s2, s10
                  sltu         s7, t0, s10
                  sltu         a6, a3, zero
                  or           a5, s10, s3
                  slt          zero, s9, a0
                  xor          s4, a3, t1
                  sltiu        s4, a6, 1780
                  beq          sp, a3, 527f
                  xori         s6, a2, 1073
                  or           s9, s9, a2
527:              add          ra, sp, tp
                  sltu         s5, s0, tp
                  bgeu         a7, ra, 537f
                  slti         a4, s2, -365
                  sll          s8, s1, a4
                  bltu         s2, s9, 552f
                  slt          tp, s5, s8
                  beq          s0, t3, 554f
                  nop
                  srai         s3, tp, 0
537:              sub          s6, t4, a1
                  srl          s10, gp, s1
                  xor          sp, sp, t0
                  srli         t0, t0, 28
                  sub          t3, a0, s7
                  ori          tp, a5, 1035
                  slt          s9, s7, s9
                  slti         t6, a3, 463
                  bgeu         ra, s7, 555f
                  or           s9, t2, s1
                  sltu         s8, s2, t1
                  beq          t3, a1, 555f
                  xor          t2, a7, s5
                  bne          t1, s11, 557f
                  sra          s10, a2, sp
552:              and          tp, gp, tp
                  srai         s10, s7, 30
554:              bge          gp, t2, 565f
555:              bgeu         s7, sp, 569f
                  srai         sp, t3, 22
557:              slli         a1, t5, 28
                  sra          a0, t5, a1
                  lui          a7, 37311
                  or           a3, s9, s9
                  add          t3, s2, sp
                  lui          a6, 931330
                  sltu         a0, s6, a2
                  or           s5, ra, ra
565:              sltiu        gp, gp, -1662
                  bgeu         s9, tp, 583f
                  xori         t5, a2, 1648
                  or           ra, t5, t3
569:              bne          s5, s6, 570f
570:              ori          a0, t4, -1189
                  sub          s10, s2, t1
                  and          a6, s5, a6
                  bgeu         a1, s9, 588f
                  srai         a7, ra, 22
                  and          a4, s0, zero
                  bge          s1, a2, 581f
                  bne          s6, s1, 579f
                  slti         ra, gp, -1625
579:              add          a1, zero, t2
                  andi         s10, t3, -1443
581:              bne          s2, s2, 591f
                  beq          a7, s7, 585f
583:              slti         zero, a7, -1620
                  nop
585:              srl          a0, t1, s9
                  bgeu         a6, a1, 603f
                  sltiu        a4, ra, 816
588:              andi         a4, zero, -849
                  beq          a4, a3, 604f
                  auipc        a4, 135066
591:              bge          a2, s11, 608f
                  auipc        s6, 741529
                  sub          zero, s11, t4
                  bne          s2, a6, 601f
                  nop
                  bgeu         tp, s11, 597f
597:              blt          s5, s1, 598f
598:              nop
                  slti         s4, t5, -2014
                  srli         sp, a4, 19
601:              nop
                  srl          s3, gp, t3
603:              srai         s7, tp, 11
604:              nop
                  addi         gp, s3, -563
                  sra          s8, t2, sp
                  add          zero, a1, a7
608:              slti         ra, a4, 1717
                  add          a1, s8, a7
                  beq          a6, a1, 620f
                  blt          s3, s11, 621f
                  xori         s7, s8, 149
                  srai         tp, s0, 7
                  sltu         s3, s0, s9
                  xori         t5, a2, 888
                  ori          s3, s6, -1607
                  nop
                  blt          s2, t3, 621f
                  auipc        s6, 49871
620:              nop
621:              slti         a5, s10, -1939
                  auipc        a0, 160684
                  srl          a1, tp, zero
                  bltu         zero, s2, 640f
                  lui          s10, 774634
                  xor          a1, s5, a3
                  bgeu         t5, a3, 631f
                  xor          s0, s0, t3
                  sltiu        t0, gp, 604
                  slt          s9, t1, tp
631:              or           a0, tp, zero
                  xor          a2, s8, a6
                  xori         a3, s4, -1902
                  srai         s9, s4, 11
                  and          s5, t1, s9
                  blt          s8, t3, 651f
                  sll          gp, s2, s1
                  srli         s0, s7, 10
                  nop
640:              slt          t1, s7, t2
                  slti         t0, a5, -171
                  and          t2, t2, t2
                  bltu         a1, s2, 646f
                  bltu         a1, t1, 661f
                  sltu         zero, zero, gp
646:              add          t4, s7, zero
                  slli         a3, t0, 0
                  beq          s7, a2, 651f
                  slli         t6, gp, 13
                  slli         ra, t3, 26
651:              srl          s4, t4, t4
                  and          s9, s8, s2
                  srl          s3, tp, t3
                  bgeu         a1, a4, 668f
                  srli         s8, a1, 31
                  add          s4, sp, a5
                  nop
                  addi         t6, t4, -533
                  bgeu         a1, s8, 670f
                  sll          a2, s4, zero
661:              xor          t0, zero, s10
                  add          t3, a3, t3
                  xori         a6, tp, -1517
                  bne          tp, a3, 668f
                  sltiu        s6, a0, 271
                  srl          s5, t4, a2
                  bge          zero, s2, 674f
668:              addi         t6, a3, -1739
                  slt          a4, s7, zero
670:              sra          zero, s7, s6
                  sll          a0, t0, s11
                  sll          a0, t1, t6
                  auipc        t4, 602936
674:              lui          s6, 422831
                  andi         s8, a6, 451
                  add          a3, t6, s10
                  sub          s5, gp, s4
                  slli         s0, s1, 14
                  or           t1, sp, s8
                  bgeu         s0, s9, 683f
                  sltu         a4, t5, s9
                  slt          a1, t1, a2
683:              srl          t1, s11, s5
                  ori          a0, s8, 1724
                  bgeu         sp, t4, 687f
                  lui          s6, 704372
687:              bge          s11, tp, 707f
                  addi         a6, s11, 1390
                  bltu         s9, s7, 709f
                  bgeu         s11, s0, 692f
                  ori          a7, ra, 2044
692:              beq          a0, t0, 709f
                  andi         a2, t6, 1786
                  andi         a1, a5, -755
                  sra          s8, a1, t4
                  srai         a0, sp, 27
                  beq          sp, a0, 712f
                  nop
                  sltiu        t1, a1, 994
                  bne          t3, t5, 707f
                  srai         t0, t6, 16
                  add          tp, sp, ra
                  sltiu        s5, a1, -1433
                  sub          a6, s6, s10
                  srl          a7, a5, t5
                  ori          a0, a3, 660
707:              lui          a3, 290761
                  bge          s1, zero, 716f
709:              bne          s11, s9, 714f
                  sll          s8, s2, t5
                  blt          s11, ra, 726f
712:              beq          s7, a1, 715f
                  bltu         s5, s2, 720f
714:              ori          zero, a0, -880
715:              sub          ra, a6, s8
716:              slti         s3, s11, 26
                  bltu         t4, a5, 734f
                  srl          a4, ra, s11
                  lui          a2, 247209
720:              addi         a4, s8, 1747
                  beq          s9, a1, 724f
                  or           gp, gp, s6
                  or           t1, s1, s4
724:              srl          sp, a7, tp
                  sltu         a3, s8, s8
726:              bge          ra, t6, 727f
727:              srli         s8, s3, 23
                  xori         tp, s0, 1808
                  slti         s7, s0, -1890
                  ori          a4, s2, 836
                  sltiu        a4, t6, 731
                  lui          t0, 950673
                  or           s0, a3, a4
734:              nop
                  xor          t6, t1, s7
                  sra          t5, t2, s6
                  sll          s3, zero, a7
                  bge          t4, s0, 749f
                  or           s5, t4, t2
                  add          s10, s2, a3
                  sub          a2, a2, gp
                  sll          a4, s5, s7
                  slt          s9, a4, t4
                  or           s10, t2, ra
                  add          t3, t4, s5
                  bge          tp, a5, 749f
                  srli         t0, t4, 9
                  beq          t6, s2, 753f
749:              ori          t5, s9, -274
                  sltiu        tp, t2, -311
                  slt          s8, s2, a7
                  sub          s8, s7, s8
753:              srai         t1, gp, 22
                  add          t6, a1, s1
                  sra          ra, a0, s8
                  andi         t1, s6, 2003
                  sra          s7, s1, s4
                  xor          t3, zero, s3
                  blt          zero, a6, 774f
                  bne          a0, a4, 780f
                  auipc        s8, 973930
                  lui          t5, 425061
                  srl          t0, a6, a5
                  blt          a6, t4, 767f
                  add          t3, s6, s11
                  add          ra, t6, t3
767:              slli         a6, a2, 24
                  or           a5, t1, s8
                  sltiu        s10, t0, 1517
                  auipc        t6, 336624
                  sltiu        s5, ra, 1051
                  srli         s7, a3, 30
                  bge          a7, a1, 777f
774:              srai         a4, s1, 11
                  sub          s7, zero, s5
                  bne          s11, t0, 778f
777:              or           s5, s0, t4
778:              bgeu         a7, s11, 794f
                  bgeu         s5, t3, 793f
780:              nop
                  sltu         t6, s2, t3
                  srl          t4, a7, s1
                  ori          a5, sp, 1624
                  xori         s9, a1, 854
                  xori         a2, a0, 1187
                  beq          t0, a5, 793f
                  srai         gp, a3, 20
                  beq          s0, t3, 791f
                  and          s0, s2, a0
                  slt          t0, s2, tp
791:              bgeu         gp, s2, 811f
                  sra          s8, s1, s6
793:              bltu         t1, t4, 800f
794:              or           a2, tp, t6
                  andi         s5, s7, -1984
                  beq          a7, t4, 803f
                  xor          a0, a4, s1
                  slli         s10, s1, 13
                  or           a1, sp, a7
800:              and          t4, gp, a7
                  blt          s1, t0, 818f
                  srli         sp, a4, 9
803:              add          a2, a5, s7
                  bne          s4, t5, 808f
                  sltu         t5, t1, t4
                  addi         a2, t0, -1754
                  xor          s8, a3, s11
808:              and          t6, t4, a7
                  sub          t4, a7, a5
                  sltu         a0, a3, a2
811:              ori          a2, a6, 1525
                  bltu         a5, s1, 822f
                  or           t0, tp, s4
                  bgeu         t6, t1, 817f
                  bne          t4, s2, 826f
                  lui          s4, 810791
817:              or           t0, t4, t2
818:              andi         a1, a7, -1056
                  sltiu        a2, s0, -2016
                  srli         zero, s7, 21
                  sltu         a5, a4, s11
822:              xori         s7, s9, -1880
                  addi         s5, s1, -1053
                  xor          s3, s11, s11
                  bge          a7, s6, 826f
826:              add          a4, a6, s2
                  auipc        a3, 137558
                  sra          t1, a1, a2
                  lw           a5, 4(s11)
                  srl          ra, t0, a3
                  addi         s11, s11, 32
                  srl          s3, a1, ra
                  xori         s10, t4, 1529
1170:             addi x8, x15, 1
1170:             jalr x8, x8, 0
sub_2:            sltu         a0, s11, t5
                  bltu         s0, s3, sub_2_stack_p
                  sltiu        s7, t2, -1806
sub_2_stack_p:    addi         s11, s11, -44
                  sw           a5, 4(s11)
                  sll          s0, s4, a3
                  xori         s10, t1, -86
                  srai         t0, a0, 2
                  addi         a3, zero, 10 #init loop 1 counter
                  add          t1, s2, s11
                  addi         s8, zero, 10 #init loop 1 limit
                  srai         t6, s11, 16
sub_2_0_1_t:      xori         t5, s5, -1314
                  sltiu        ra, s3, -1745
                  add          t2, s6, gp
                  addi         a3, a3, -9 #update loop 1 counter
                  addi         s9, zero, -4 #init loop 0 counter
                  srai         a2, gp, 20
                  xor          t0, s11, s7
                  srl          t1, a2, a3
                  auipc        a1, 113351
                  addi         gp, zero, 17 #init loop 0 limit
sub_2_0_0_t:      add          tp, t2, a2
                  auipc        sp, 990382
                  addi         s9, s9, 9 #update loop 0 counter
                  xori         s6, gp, -462
                  bltu         s9, gp, sub_2_0_0_t #branch for loop 0
                  bgeu         a3, s8, sub_2_0_1_t #branch for loop 1
                  ori          ra, s11, -370
                  addi         t1, zero, -8 #init loop 0 counter
                  addi         s4, zero, -13 #init loop 0 limit
                  sltiu        sp, a4, -1800
                  add          s10, s11, s5
sub_2_1_0_t:      addi         s9, a4, -1607
                  lui          sp, 1012126
                  addi         t1, t1, -4 #update loop 0 counter
                  bge          t1, s4, sub_2_1_0_t #branch for loop 0
                  nop
                  addi         a5, zero, -2 #init loop 1 counter
                  addi         t4, zero, 8 #init loop 1 limit
                  xori         t2, t4, 1352
sub_2_2_1_t:      sltu         a7, s8, s0
                  ori          zero, gp, -1829
                  ori          a4, tp, 215
                  nop
                  addi         a5, a5, 4 #update loop 1 counter
                  add          gp, ra, a2
                  addi         t3, zero, -6 #init loop 0 counter
                  addi         a1, zero, 1 #init loop 0 limit
sub_2_2_0_t:      lui          t2, 199381
                  addi         t3, t3, 6 #update loop 0 counter
                  andi         s10, a6, -1553
                  and          ra, s3, t2
                  sll          t6, s3, a3
                  blt          t3, a1, sub_2_2_0_t #branch for loop 0
                  srai         t6, a1, 3
                  bltu         a5, t4, sub_2_2_1_t #branch for loop 1
                  or           ra, s0, s10
                  sltiu        zero, t6, 1445
                  add          s4, t2, a0
                  slti         t4, s8, -1018
                  slli         t5, s5, 9
                  sra          t6, s5, s9
                  bne          t2, s6, 25f
                  auipc        gp, 227925
                  sltu         sp, t2, a0
                  srai         s7, t6, 28
                  xor          t2, t6, s0
                  or           ra, s10, ra
                  slt          s7, a0, sp
                  bltu         s1, s6, 22f
                  ori          s8, s1, 1543
                  xor          t5, t5, s1
                  xori         s3, a4, -838
                  ori          tp, s7, -916
                  beq          a2, sp, 37f
                  sub          a5, s5, a3
                  andi         t2, a4, 1463
                  andi         a3, s11, 1030
                  blt          s0, s6, 35f
22:               bne          ra, s9, 40f
                  slti         s4, a6, -2002
                  sltu         tp, a4, t6
25:               sra          t6, t6, t2
                  srl          t2, s8, s3
                  slti         zero, s11, -51
                  xori         zero, t2, -259
                  andi         a7, a4, -1530
                  srli         gp, a2, 10
                  nop
                  srli         a2, s10, 7
                  bge          a0, t0, 41f
                  slti         zero, a6, 1267
35:               ori          s8, s10, 1268
                  bne          a3, zero, 44f
37:               slti         s4, s8, -565
                  blt          tp, s8, 41f
                  slti         a2, t4, -1584
40:               bltu         s9, ra, 58f
41:               addi         t6, a7, 375
                  bltu         s0, t3, 47f
                  ori          ra, s11, -789
44:               bge          s1, a2, 60f
                  sltu         s9, s6, t3
                  srli         s7, t6, 4
47:               bne          t5, s0, 49f
                  sra          tp, s9, tp
49:               beq          t2, t1, 61f
                  xor          s4, s1, a4
                  bne          s2, s11, 66f
                  sra          t4, t1, s4
                  beq          s9, t1, 68f
                  bne          a2, gp, 62f
                  add          a1, a6, t5
                  blt          s10, s0, 57f
57:               and          a1, t0, a4
58:               add          gp, s3, tp
                  sltu         t5, t1, s8
60:               srl          t1, t0, s6
61:               beq          s9, s4, 74f
62:               auipc        a7, 597292
                  blt          zero, s4, 67f
                  xor          s8, s11, t0
                  sll          s10, a3, t5
66:               andi         s8, t6, 1586
67:               xori         s10, s0, -515
68:               sltu         t4, sp, a2
                  beq          s3, t1, 72f
                  or           t2, t1, a4
                  srli         t2, s8, 30
72:               slli         t4, a1, 2
                  addi         t2, s8, -383
74:               xori         s0, a7, 1775
                  srli         s10, a2, 28
                  add          s4, s8, tp
                  sra          a1, t0, s9
                  or           t4, s1, gp
                  xori         s9, a6, 1273
                  nop
                  srl          zero, s2, s10
                  sra          s9, s2, s2
                  nop
                  auipc        a7, 812318
                  bge          s3, t3, 92f
                  bltu         t1, s7, 87f
87:               bgeu         t1, t5, 107f
                  slti         s4, t0, -1875
                  xor          s6, tp, s4
                  bgeu         s6, t5, 107f
                  add          s9, a0, s1
92:               bge          zero, tp, 103f
                  nop
                  sub          a5, a0, ra
                  sltiu        s5, s10, 310
                  xor          s0, gp, t0
                  and          a2, t3, a7
                  andi         t4, a2, 1280
                  andi         s5, t6, 649
                  sltiu        sp, a0, 252
                  lui          t4, 141083
                  auipc        t4, 223875
103:              bgeu         s8, t5, 118f
                  lui          t5, 736562
                  bge          t2, t4, 121f
                  bge          s6, tp, 117f
107:              add          s3, zero, t3
                  srl          sp, s0, gp
                  sub          s7, t4, t2
                  xor          s10, t4, s10
                  beq          t1, tp, 123f
                  sra          a4, tp, t6
                  beq          ra, s6, 120f
                  add          a6, s4, a3
                  nop
                  sltiu        t3, a0, 1677
117:              bge          zero, t3, 130f
118:              slli         a0, t1, 23
                  bge          sp, s7, 137f
120:              xori         t0, gp, -1529
121:              srai         s3, ra, 23
                  blt          a2, t1, 139f
123:              sub          t4, s10, a5
                  xori         gp, a5, 723
                  xor          t5, s0, zero
                  bgeu         ra, s8, 141f
                  slti         a6, s9, 1091
                  andi         a0, a7, -574
                  add          sp, s10, s4
130:              sll          gp, s10, t2
                  slt          a0, t0, a5
                  bne          a0, t0, 140f
                  nop
                  xori         gp, s4, -988
                  bge          a4, a4, 150f
                  srl          t2, t5, t6
137:              bgeu         a3, s8, 157f
                  addi         s10, a1, -1039
139:              sra          t4, ra, ra
140:              sltu         tp, t1, tp
141:              sra          s4, gp, zero
                  ori          sp, s3, -172
                  sltiu        t0, s0, 1710
                  auipc        s3, 879894
                  auipc        s9, 127307
                  slt          zero, s8, t3
                  beq          t2, t6, 163f
                  sltiu        t1, ra, 1650
                  sra          t5, a7, s3
150:              bltu         t6, zero, 168f
                  sltu         s10, a6, t6
                  bltu         t5, t5, 153f
153:              srai         a7, s8, 9
                  xori         s5, s7, 1497
                  slt          t1, t5, t6
                  xori         t3, t5, 1739
157:              xori         t2, a1, -1578
                  sra          a2, sp, t6
                  slti         t3, t1, 93
                  slti         a4, t6, -168
                  srli         s6, tp, 4
                  slli         t1, a1, 7
163:              sll          a3, s2, s0
                  srai         gp, s7, 1
                  nop
                  sll          a3, s10, s6
                  nop
168:              ori          t1, s6, 1847
                  srli         sp, s6, 6
                  lui          a2, 253153
                  lw           a5, 4(s11)
                  addi         s11, s11, 44
                  sltiu        a7, s11, 1172
232:              addi x3, x15, 1
232:              jalr x3, x3, 0
sub_1:            slt          t6, s5, ra
                  lui          a2, 244644
                  srai         zero, ra, 1
                  slt          sp, a1, t4
                  or           s6, t1, s8
                  beq          a6, t2, sub_1_stack_p
sub_1_stack_p:    addi         s11, s11, -56
                  and          a1, a1, s9
                  sw           a5, 4(s11)
                  sltu         gp, t0, a1
                  add          sp, t0, a7
                  or           s0, s11, t1
                  sltiu        s10, gp, -921
                  add          a7, a2, zero
                  addi         s10, ra, -752
                  sltiu        s4, a4, 881
                  la           a2, sub_3
                  auipc        t4, 446472
                  sub          a3, s5, s4
                  auipc        a7, 863368
                  slli         ra, tp, 9
                  addi         a2, a2, -880
                  beq          zero, s7, sub_1_j4 #branch to jump instr
                  xor          t3, tp, t0
                  sltu         a6, s1, gp
sub_1_j4:         jalr         a5, a2, 881 #jump sub_1 -> sub_3
                  srli         s3, s3, 2
                  sll          s9, s7, s3
                  sltu         s7, s11, a1
                  la           a4, sub_2
                  xori         a6, t0, 443
                  slt          a6, s9, s10
                  addi         a4, a4, 589
                  srl          zero, s7, s11
                  bltu         a3, zero, sub_1_j6 #branch to jump instr
                  xor          t2, s1, s9
sub_1_j6:         jalr         a5, a4, -588 #jump sub_1 -> sub_2
                  la           a5, sub_5
                  xori         s6, sp, -968
                  sltiu        s5, s8, 308
                  addi         a5, a5, -648
                  sra          t5, t2, s9
                  add          s8, t4, s6
                  sra          a6, a2, s4
sub_1_j7:         jalr         a5, a5, 648 #jump sub_1 -> sub_5
                  addi         gp, zero, -6 #init loop 0 counter
                  lui          s4, 723406
                  sltiu        a3, a4, -1912
                  addi         a2, zero, -12 #init loop 0 limit
                  sltiu        t5, tp, 1885
                  or           a7, s4, ra
sub_1_2_0_t:      lui          s4, 375364
                  sll          t5, t2, ra
                  or           a6, a0, s6
                  srli         a5, zero, 29
                  sltu         s5, a6, t2
                  addi         a3, t2, 1812
                  slt          t3, a1, ra
                  and          s10, s10, sp
                  srl          s7, t5, s4
                  add          t2, a5, tp
                  lui          a6, 677704
                  or           s3, a2, sp
                  addi         a0, s10, -1071
                  addi         gp, gp, -3 #update loop 0 counter
                  sub          s9, s11, t2
                  sra          s4, a1, t0
                  slt          t0, s9, s7
                  andi         ra, tp, 1396
                  srli         t5, a2, 18
                  beq          gp, a2, sub_1_2_0_t #branch for loop 0
                  sub          tp, t2, a7
                  addi         tp, zero, -7 #init loop 1 counter
                  slli         s10, s6, 9
                  addi         a7, zero, 14 #init loop 1 limit
                  and          a0, t6, s6
sub_1_4_1_t:      sltu         a5, t5, t3
                  addi         tp, tp, 7 #update loop 1 counter
                  xor          ra, s9, a5
                  sra          a6, a4, s3
                  addi         a1, zero, 7 #init loop 0 counter
                  sll          a3, s1, a5
                  addi         s6, zero, -2 #init loop 0 limit
                  xor          a5, s6, t0
                  sra          a4, t3, t1
sub_1_4_0_t:      xori         a4, s5, -1837
                  addi         a1, a1, -4 #update loop 0 counter
                  lui          s5, 646389
                  srl          a3, t3, sp
                  bge          a1, s6, sub_1_4_0_t #branch for loop 0
                  andi         t6, t6, -657
                  beq          tp, a7, sub_1_4_1_t #branch for loop 1
                  sltiu        t6, gp, 684
                  addi         gp, zero, -7 #init loop 1 counter
                  nop
                  addi         s8, zero, 5 #init loop 1 limit
                  sra          t2, s5, s1
sub_1_3_1_t:      sltiu        s6, s10, 2045
                  addi         gp, gp, 5 #update loop 1 counter
                  sltu         a7, a1, gp
                  addi         tp, zero, 3 #init loop 0 counter
                  lui          t2, 402710
                  srl          a5, s7, s4
                  addi         t3, zero, 9 #init loop 0 limit
sub_1_3_0_t:      nop
                  addi         tp, tp, 6 #update loop 0 counter
                  bltu         tp, t3, sub_1_3_0_t #branch for loop 0
                  sub          t0, ra, t0
                  blt          gp, s8, sub_1_3_1_t #branch for loop 1
                  srai         a2, zero, 9
                  addi         a1, zero, 5 #init loop 1 counter
                  andi         s7, a4, 922
                  sll          t5, t6, zero
                  nop
                  andi         t3, s7, -720
                  sub          s10, a2, t4
                  slti         t6, a6, 953
                  or           s10, a2, s10
                  addi         s4, zero, 10 #init loop 1 limit
sub_1_0_1_t:      slti         a4, s6, 872
                  addi         a1, a1, 1 #update loop 1 counter
                  addi         gp, zero, -2 #init loop 0 counter
                  sub          s7, s2, a3
                  and          tp, gp, t2
                  srli         a7, s0, 16
                  addi         s9, zero, -11 #init loop 0 limit
                  srai         t1, t1, 25
                  sra          a0, a4, s1
                  sub          zero, a2, t5
                  add          t2, a2, s11
sub_1_0_0_t:      slt          ra, a1, a0
                  addi         gp, gp, -5 #update loop 0 counter
                  bge          gp, s9, sub_1_0_0_t #branch for loop 0
                  slt          t4, t6, a4
                  sltiu        s3, a7, -418
                  auipc        t5, 794870
                  slt          a0, a6, a5
                  srli         t1, s11, 26
                  sll          t3, t4, s3
                  beq          a1, s4, sub_1_0_1_t #branch for loop 1
                  lui          zero, 678104
                  addi         s10, zero, -5 #init loop 0 counter
                  sltiu        t3, ra, 447
                  lui          a1, 622983
                  nop
                  sra          a4, tp, a1
                  or           t2, s1, a7
                  sltiu        a7, tp, 467
                  ori          a0, a5, 109
                  or           s9, s10, s1
                  addi         s5, zero, 8 #init loop 0 limit
                  sra          t0, a6, a6
                  or           a5, a5, a1
sub_1_1_0_t:      slt          s4, a5, a7
                  or           s6, ra, t0
                  lui          a0, 336911
                  xor          a7, t6, ra
                  srai         t5, t1, 24
                  addi         s10, s10, 3 #update loop 0 counter
                  sltiu        a0, a4, -418
                  srli         t6, a6, 29
                  auipc        a1, 237007
                  blt          s10, s5, sub_1_1_0_t #branch for loop 0
                  slt          t5, t0, s6
                  blt          s6, a1, 16f
                  beq          t5, s4, 14f
                  nop
                  bne          s5, s9, 15f
                  add          ra, s8, zero
                  slti         tp, s7, 1979
                  sltu         s10, gp, s0
                  slti         gp, s5, 623
                  bltu         t2, t2, 18f
                  srai         t4, a6, 6
                  sltu         a1, tp, s11
                  srli         s3, a4, 3
                  sub          s9, gp, t2
                  and          t4, a1, ra
14:               srl          t6, s8, s4
15:               srl          s9, a7, zero
16:               beq          s7, a4, 21f
                  sltiu        tp, t3, 1167
18:               bltu         a1, t0, 23f
                  add          t5, s1, s6
                  and          s10, t0, t1
21:               ori          t4, s6, 1687
                  andi         a2, a6, 272
23:               slti         a6, tp, 1659
                  srl          s0, gp, t6
                  andi         sp, s2, -1560
                  addi         s9, a2, 964
                  sub          a0, ra, s10
                  bgeu         s4, t2, 32f
                  andi         sp, s6, -16
                  and          a0, s11, t5
                  auipc        s0, 540419
32:               bge          s5, s5, 50f
                  and          a0, s0, t2
                  xori         t4, t2, -1550
                  addi         t2, s10, 179
                  srl          s9, s4, s10
                  bge          t1, t2, 53f
                  sll          gp, s8, s5
                  bgeu         t0, ra, 43f
                  srl          a7, a1, a0
                  bge          a1, s7, 60f
                  sltiu        t2, s6, -121
43:               sub          ra, a4, s1
                  blt          a3, s2, 52f
                  auipc        s6, 52759
                  srli         t6, s1, 29
                  bgeu         t5, s7, 63f
                  slli         s3, s5, 27
                  bltu         a4, t5, 55f
50:               and          s9, a7, sp
                  bgeu         s6, zero, 64f
52:               ori          t4, s10, -887
53:               or           t4, s3, a7
                  lui          t0, 994683
55:               srai         a6, a4, 19
                  nop
                  bne          gp, gp, 70f
                  add          s5, s8, s9
                  sltu         t3, s11, t6
60:               bge          s10, a2, 61f
61:               srli         t2, a5, 0
                  sll          s6, tp, s10
63:               nop
64:               slli         t6, t4, 21
                  srli         s6, t2, 5
                  sll          s9, s5, a6
                  add          t4, t2, a6
                  bne          s0, a3, 70f
                  ori          s8, s0, -119
70:               addi         t5, s4, -360
                  auipc        s7, 839204
                  xori         t4, s8, -825
                  and          zero, t3, s10
                  and          s9, a6, t3
                  slt          s9, a0, t1
                  sltiu        s8, s2, 1322
                  sub          s6, t1, tp
                  or           a5, t3, a2
                  lui          s3, 153056
                  srai         s0, a0, 16
                  add          a4, s11, a3
                  sltu         t4, t5, t0
                  slt          sp, a0, s6
                  or           a1, s11, s7
                  slli         s4, s8, 18
                  addi         s4, a6, -1089
                  nop
                  ori          s0, t6, 1531
                  blt          t3, s6, 103f
                  auipc        s8, 964545
                  srai         a7, gp, 2
                  slt          s5, a7, t6
                  srli         t3, t5, 3
                  and          t3, t6, s6
                  bgeu         t0, a1, 102f
                  blt          t0, s5, 116f
                  bge          t4, zero, 117f
                  add          a2, a3, s0
                  sltiu        a2, t2, -1134
                  srli         a6, s8, 0
                  addi         gp, s3, 690
102:              or           a7, t4, t1
103:              slti         tp, t3, 1158
                  slt          tp, t4, s0
                  addi         a5, s3, -1384
                  srl          s6, t2, sp
                  xor          ra, s2, a7
                  sltiu        s0, s4, 2004
                  andi         sp, s9, -286
                  sltu         t6, s10, t6
                  bltu         a1, a4, 117f
                  nop
                  bge          sp, t1, 118f
                  lui          a6, 252253
                  xor          s8, a2, s5
116:              slli         t1, s9, 23
117:              andi         s5, t3, -1305
118:              and          gp, s1, t3
                  nop
                  slt          s3, gp, a3
                  andi         tp, t2, 76
                  srl          a0, a4, s4
                  slti         a3, a0, 59
                  srl          a0, a1, t4
                  xori         a3, a6, 1979
                  add          t3, tp, a7
                  srl          s8, tp, a3
                  srli         a4, s8, 31
                  xor          s8, a0, s2
                  bne          s3, s10, 150f
                  slli         ra, s5, 27
                  slti         t1, t0, -890
                  xor          t5, s5, t0
                  bge          s10, a0, 137f
                  ori          a7, s0, -1765
                  or           a7, s0, t4
137:              blt          sp, t4, 148f
                  beq          t6, sp, 152f
                  sra          s7, s7, s10
                  sub          t3, t1, s7
                  auipc        a3, 380933
                  sll          a2, s5, sp
                  sltiu        s5, a2, 1206
                  blt          tp, s10, 153f
                  lui          s3, 704624
                  auipc        t2, 629298
                  and          s8, a6, gp
                  la           a6, sub_3
                  addi         a6, a6, -870
                  auipc        a0, 524075
                  bgeu         t1, s10, sub_1_j3 #branch to jump instr
                  sra          t6, s5, a4
                  srai         ra, a2, 5
                  auipc        s9, 534842
                  addi         a2, a2, -698
                  srli         s0, s3, 5
                  add          t3, a5, a5
sub_1_j3:         jalr         a5, a6, 871 #jump sub_1 -> sub_3
                  srai         s9, s7, 6
                  bltu         t0, gp, 158f
148:              and          a2, s1, t4
                  addi         a6, a2, -419
150:              sltu         zero, t1, t0
                  addi         t4, s9, 363
152:              sra          a7, a5, t2
153:              slt          tp, a4, a6
                  ori          t5, gp, -486
                  and          a6, a6, t6
                  ori          a3, s5, 1043
                  and          s4, a4, s10
158:              add          zero, s7, a0
                  auipc        t6, 211023
                  slli         a3, s3, 11
                  nop
                  nop
                  bgeu         t0, s7, 176f
                  andi         tp, t5, -1505
                  srai         s0, s1, 9
                  bge          s1, a2, 186f
                  addi         a0, s1, -1766
                  bgeu         t1, t5, 177f
                  bltu         a1, s5, 176f
                  bltu         gp, zero, 180f
                  auipc        a3, 883370
                  add          gp, t2, zero
                  sltiu        a6, s1, 1779
                  slti         s7, s3, -1336
                  bge          s3, a3, 187f
176:              slli         a4, t3, 5
177:              slti         s7, gp, 1335
                  srl          a0, s11, a0
                  addi         s4, s7, 1198
180:              srai         sp, s2, 18
                  nop
                  sltu         a7, t0, a6
                  sll          s10, a5, sp
                  lui          zero, 704274
                  or           a1, a1, a0
186:              add          t2, s5, t0
187:              beq          s9, tp, 193f
                  bgeu         s6, s8, 193f
                  sra          s4, s3, a1
                  and          tp, t6, a0
                  bge          a7, ra, 196f
                  slt          s10, t5, t3
193:              or           s8, a7, s2
                  ori          gp, t0, -482
                  xori         t2, t1, 2011
196:              add          sp, t1, s4
                  xor          t4, s0, tp
                  bgeu         a1, s5, 214f
                  xor          tp, s7, a6
                  slli         t5, sp, 5
                  or           t1, t4, sp
                  slti         t4, gp, -399
                  blt          s1, s4, 217f
                  sra          a6, t0, gp
                  bne          a0, t4, 225f
                  sra          a2, t1, s7
                  sltu         a1, s8, sp
                  la           a5, sub_4
                  and          s8, zero, t1
                  sltiu        t4, zero, 374
                  sll          t4, s0, a3
                  addi         a5, a5, -535
                  auipc        t1, 169501
                  and          t1, s6, s0
sub_1_j5:         jalr         a5, a5, 535 #jump sub_1 -> sub_4
                  andi         a1, t0, 1399
                  bne          gp, t5, 215f
                  bltu         t1, t1, 221f
                  auipc        a0, 154201
                  ori          t4, gp, 509
                  or           s5, s2, s9
                  sra          s5, s6, s7
                  slt          s10, t6, tp
214:              addi         s7, t1, -1157
215:              slt          t0, gp, s6
                  beq          s5, t1, 220f
217:              slt          a5, a3, s8
                  srl          tp, a7, t0
                  andi         a6, s11, 276
220:              bne          t6, a2, 234f
221:              xor          a4, s4, s7
                  sub          a3, a1, a0
                  nop
                  sub          t5, tp, s1
225:              lui          t1, 616058
                  blt          t3, s5, 228f
                  auipc        a7, 601838
228:              srai         s9, s7, 10
                  xori         zero, t6, -395
                  srli         s5, t2, 13
                  and          ra, s4, s7
                  slt          a2, s0, s9
                  srli         a1, s6, 3
234:              xori         t0, s8, 318
                  slt          s6, s0, a6
                  srl          a6, a1, tp
                  lui          s0, 396706
                  bltu         a5, a7, 241f
                  andi         s7, a7, -796
                  srl          a4, t3, a6
241:              addi         s7, zero, 1838
                  srl          s5, t5, t0
                  xori         s9, ra, -2035
                  bgeu         t3, s9, 248f
                  auipc        t1, 769357
                  bltu         a5, s11, 264f
                  and          s0, a3, t5
248:              srai         a3, a2, 19
                  nop
                  sll          tp, a0, t3
                  xor          t2, s1, t5
                  or           a0, s3, s10
                  beq          tp, s5, 266f
                  bne          t1, t4, 273f
                  sltu         a3, a5, s3
                  andi         s5, a2, 927
                  srl          a7, sp, t3
                  or           tp, s5, zero
                  or           s10, a4, s10
                  bgeu         s4, s4, 261f
261:              srl          s7, t4, a7
                  lui          s5, 428783
                  slli         a0, a4, 31
264:              bne          zero, s2, 280f
                  xor          s6, t3, t2
266:              srai         a5, s2, 16
                  srl          a5, t5, t3
                  blt          a1, a0, 279f
                  bge          s9, s6, 275f
                  srl          ra, t2, s2
                  bltu         a3, t2, 282f
                  blt          a5, a6, 277f
273:              auipc        s9, 215152
                  sra          s9, a3, ra
275:              slti         t4, gp, -1809
                  bne          a5, s5, 292f
277:              bge          tp, t3, 295f
                  lui          a4, 510507
279:              xor          t0, gp, s2
280:              srli         s6, s9, 31
                  addi         a5, s1, -412
282:              or           a0, a0, a0
                  xor          s10, a5, t5
                  blt          gp, s10, 295f
                  ori          a3, t1, 492
                  srl          s8, t5, s6
                  beq          a2, a2, 295f
                  and          a6, s3, a2
                  xori         a5, s5, -1465
                  bltu         a6, a2, 295f
                  bltu         t6, tp, 295f
292:              bge          gp, t2, 295f
                  ori          a1, s9, -1571
                  lui          t3, 308852
295:              lui          s0, 137849
                  lui          t1, 32334
                  nop
                  lw           a5, 4(s11)
                  nop
                  nop
                  addi         s11, s11, 56
                  add          t0, a0, s10
                  lui          a3, 120043
                  addi         t4, a2, 291
                  ori          sp, s2, -465
                  sltiu        t1, t0, -779
494:              addi x30, x15, 1
494:              jalr x30, x30, 0
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_2:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_3:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_4:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_5:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_6:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_7:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_8:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_9:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_10:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_11:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_12:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_13:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_14:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_15:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x9, x27, zero
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x24, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x24, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x24, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x24, x10, ecall_handler
                  li x10, 0x1
                  beq x24, x10, instr_fault_handler
                  li x10, 0x5
                  beq x24, x10, load_fault_handler
                  li x10, 0x7
                  beq x24, x10, store_fault_handler
                  li x10, 0xc
                  beq x24, x10, pt_fault_handler
                  li x10, 0xd
                  beq x24, x10, pt_fault_handler
                  li x10, 0xf
                  beq x24, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
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
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x27, x9, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
