.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 1
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x69d7c541
                  li x3, 0xe56004ce
                  li x4, 0x2
                  li x5, 0x5c954dfe
                  li x6, 0xee3e0f87
                  li x7, 0x80000000
                  li x8, 0xe
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xf33ebe93
                  li x12, 0xbc1c4623
                  li x13, 0xe8c0ce71
                  li x14, 0xd
                  li x15, 0x7c311cc3
                  li x16, 0xccc1b1f
                  li x18, 0x1
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x2c4a47e5
                  li x25, 0xf86647a9
                  li x26, 0xb4db75dd
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0xfdc2bfe3
                  li x31, 0xf66bee31
                  la x17, user_stack_end
main:             addi         a2, zero, -5 #init loop 0 counter
                  addi         t0, zero, 19 #init loop 0 limit
                  andi         a4, t4, 1986
main_0_0_t:       slt          s5, a0, s11
                  addi         a2, a2, 8 #update loop 0 counter
                  beq          a2, t0, main_0_0_t #branch for loop 0
                  ori          a6, s5, -566
                  addi         a0, zero, 10 #init loop 1 counter
                  ori          s11, s11, 1218
                  addi         a6, zero, 10 #init loop 1 limit
main_2_1_t:       slt          a3, s0, a6
                  addi         a0, a0, -8 #update loop 1 counter
                  ori          s8, s1, 1235
                  addi         t2, zero, 5 #init loop 0 counter
                  addi         t3, zero, -11 #init loop 0 limit
                  andi         a1, a1, -155
                  slti         s5, gp, 833
                  sra          tp, s8, s3
main_2_0_t:       slt          a2, a6, s1
                  srai         s4, a0, 5
                  addi         t2, t2, -2 #update loop 0 counter
                  sub          s11, t6, t6
                  slti         gp, s11, 795
                  bge          t2, t3, main_2_0_t #branch for loop 0
                  xor          s1, s5, a1
                  sltu         s7, a7, t5
                  bgeu         a0, a6, main_2_1_t #branch for loop 1
                  srai         s0, s2, 22
                  addi         a2, zero, 7 #init loop 0 counter
                  nop
                  sltiu        t6, t1, 1066
                  sll          s6, a4, a1
                  slti         tp, a7, 425
                  slt          a1, gp, t0
                  sltu         t5, a3, s5
                  sub          a6, s8, s1
                  andi         s8, a6, -295
                  sub          s10, s6, s8
                  or           t1, s1, t6
                  sub          a4, t5, t2
                  slt          t2, a6, s9
                  sltu         s9, s5, s5
                  addi         s1, zero, -1 #init loop 0 limit
                  lui          s3, 584279
main_1_0_t:       xori         a1, s8, 1138
                  sra          t4, s10, a2
                  nop
                  sub          s6, a1, t4
                  slli         s3, zero, 9
                  slti         t6, t6, -1748
                  addi         a2, a2, -6 #update loop 0 counter
                  srli         t2, s4, 4
                  slt          a1, t5, a0
                  bge          a2, s1, main_1_0_t #branch for loop 0
                  sub          s0, a7, t2
                  addi         s9, zero, -2 #init loop 0 counter
                  slti         t6, s8, 6
                  lui          ra, 46750
                  ori          t4, s5, -311
                  andi         s4, zero, -221
                  lui          s10, 664391
                  addi         tp, zero, -18 #init loop 0 limit
                  sra          s1, t5, a5
                  slli         s3, s3, 11
main_3_0_t:       sltiu        a3, s11, -179
                  ori          a3, a7, 450
                  addi         s9, s9, -8 #update loop 0 counter
                  beq          s9, tp, main_3_0_t #branch for loop 0
                  slli         t1, t1, 2
                  sra          gp, t3, s1
                  andi         a3, t0, -373
                  slt          ra, s8, s2
                  slli         t2, t6, 12
                  bltu         a1, tp, 16f
                  addi         s2, a1, 559
                  sltiu        t3, a1, -1303
                  or           a4, t1, t4
                  auipc        a0, 272629
                  slt          s3, s8, t2
                  xor          s7, s6, a1
                  sltiu        t1, a0, -916
                  add          t3, a1, a0
                  andi         t6, sp, -847
                  sltiu        t6, t0, 1052
                  bgeu         s6, t3, 32f
16:               bne          a3, a1, 36f
                  or           t3, sp, s9
                  ori          a1, s5, 2001
                  slli         a6, a6, 24
                  nop
                  slt          s4, t0, s5
                  bgeu         t3, s4, 25f
                  nop
                  sra          s6, s1, tp
25:               auipc        a3, 160837
                  or           gp, a2, t4
                  slt          t5, s6, t6
                  slti         s11, a4, -855
                  sub          s6, t4, s0
                  sub          t4, a7, s11
                  andi         s3, ra, 2032
32:               xor          a2, s8, s7
                  nop
                  nop
                  add          ra, s3, s1
36:               and          ra, s6, s0
                  lui          a2, 546108
                  srai         s5, s4, 24
                  blt          s1, t6, 54f
                  bne          gp, t0, 45f
                  slt          t0, s7, ra
                  sub          tp, a7, t1
                  srl          s3, s5, a0
                  bne          s4, a4, 52f
45:               blt          a2, t3, 64f
                  bltu         t2, tp, 54f
                  srli         s0, zero, 11
                  srl          gp, t6, s9
                  addi         a1, a0, -587
                  ori          s2, a4, -517
                  bltu         t0, s11, 60f
52:               andi         t1, s6, 642
                  xor          t5, s7, s9
54:               xori         s8, a0, -1198
                  sra          a2, s0, s4
                  sltu         a0, gp, a2
                  slli         t4, ra, 29
                  sltiu        s10, t3, -1863
                  auipc        zero, 158470
60:               sub          s3, t5, a2
                  bgeu         s9, a7, 79f
                  bne          t0, tp, 69f
                  beq          t1, s11, 76f
64:               beq          a1, a3, 84f
                  srli         s4, s3, 12
                  bne          s1, t0, 78f
                  sra          s1, a6, t1
                  slli         s5, s11, 9
69:               lui          a1, 928150
                  andi         s7, a7, 1575
                  slti         a2, s11, -1680
                  ori          s3, s6, -1333
                  nop
                  bge          a5, tp, 77f
                  sltiu        a0, s10, -214
76:               slli         t2, a1, 17
77:               or           a4, tp, a6
78:               andi         s7, a5, -2002
79:               beq          a3, a0, 90f
                  auipc        a0, 303014
                  and          t4, s0, a7
                  bgeu         a1, s8, 91f
                  sltiu        s11, s8, -1889
84:               sll          a6, t2, a1
                  addi         a3, s10, -1010
                  beq          a5, s6, 90f
                  srl          a0, a6, a3
                  srl          tp, a4, s0
                  srai         t1, t4, 21
90:               nop
91:               srl          t3, t2, a5
                  auipc        s7, 1013935
                  and          a1, s11, a3
                  bltu         s2, tp, 99f
                  addi         s3, s6, 1061
                  srli         t2, s0, 22
                  beq          sp, s3, 108f
                  srai         s2, a3, 5
99:               andi         a4, s6, -1634
                  srli         zero, s6, 31
                  la           a1, sub_2
                  sra          t3, s0, t5
                  auipc        t0, 316774
                  addi         a1, a1, 1014
                  sra          gp, zero, a3
                  slli         s10, t5, 30
                  srli         s8, t3, 22
                  bne          zero, s7, main_j3 #branch to jump instr
                  slti         s3, a6, 1921
main_j3:          jalr         t5, a1, -1014 #jump main -> sub_2
                  nop
                  bge          s4, t5, 116f
                  slt          a4, s3, t0
                  auipc        a1, 1047221
                  nop
                  srl          a6, s6, gp
                  bltu         t5, t6, 120f
                  bne          s8, s8, 114f
108:              nop
                  sub          s9, sp, a7
                  and          a6, a7, a5
                  nop
                  srl          s0, zero, ra
                  ori          s8, tp, -1915
114:              sub          t2, t5, s8
                  sub          a4, a1, t0
116:              slt          a1, sp, gp
                  slti         s11, s4, -1404
                  lui          gp, 114668
                  srl          ra, s3, t5
120:              beq          zero, s5, 130f
                  slti         a2, a5, 1855
                  sra          s1, tp, tp
                  sltiu        s6, t3, 849
                  auipc        zero, 877307
                  srl          ra, s1, a4
                  andi         s8, a6, 951
                  nop
                  blt          s3, s9, 137f
                  beq          s1, a2, 146f
130:              slti         s9, s4, 1739
                  sub          tp, s6, t1
                  addi         zero, a4, 1153
                  slli         s10, gp, 26
                  sltiu        s4, a4, 704
                  andi         a2, t1, 1491
                  beq          s9, a2, 156f
137:              slt          s8, s9, t0
                  bge          a3, t3, 150f
                  bgeu         a3, a4, 147f
                  blt          zero, a1, 153f
                  sub          t3, a2, a1
                  andi         t1, a0, -574
                  srli         s6, zero, 31
                  bltu         a6, a5, 147f
                  andi         s9, t5, 1714
146:              slli         s11, s4, 5
147:              beq          s3, ra, 155f
                  and          t1, t6, s11
                  sra          t0, t3, a3
150:              slli         t4, a5, 5
                  srli         s3, gp, 27
                  or           a3, s6, t1
                  la           t0, sub_1
                  sll          a4, t6, t6
                  srli         ra, a0, 23
                  addi         t0, t0, -162
                  bne          s0, a5, main_j1 #branch to jump instr
                  sub          s4, a2, zero
                  sra          tp, a1, s9
                  slt          tp, s7, s8
main_j1:          jalr         t5, t0, 163 #jump main -> sub_1
153:              ori          a6, a3, -25
                  bgeu         s2, a0, 174f
155:              sltiu        s1, a4, -1653
156:              srli         a1, s4, 13
                  or           s10, t2, s8
                  add          s9, gp, t3
                  bge          s2, t0, 166f
                  xor          s11, s0, t0
                  bltu         ra, s9, 166f
                  nop
                  xor          a6, s2, a3
                  auipc        s0, 954124
                  sra          tp, gp, s1
166:              slti         a2, t2, 1325
                  addi         s11, zero, -10 #init loop 1 counter
                  nop
                  ori          a6, a3, -1594
                  addi         a4, zero, 9 #init loop 1 limit
main_4_1_t:       nop
                  lui          s5, 152651
                  addi         s11, s11, 10 #update loop 1 counter
                  sltu         s2, a4, t2
                  addi         t2, zero, 3 #init loop 0 counter
                  lui          a3, 598237
                  addi         s8, zero, -4 #init loop 0 limit
                  sltiu        s3, a5, -1023
main_4_0_t:       xori         a6, t2, -572
                  sra          gp, a4, s2
                  slt          zero, t0, s4
                  lui          s5, 565291
                  lui          s5, 1011802
                  sll          gp, s9, a1
                  srli         s7, a2, 2
                  addi         s0, a4, -1687
                  addi         t2, t2, -1 #update loop 0 counter
                  slli         t4, a7, 20
                  xor          a6, tp, s7
                  and          s7, t4, a6
                  bge          t2, s8, main_4_0_t #branch for loop 0
                  nop
                  srli         s6, s3, 22
                  sll          tp, a2, zero
                  bltu         s11, a4, main_4_1_t #branch for loop 1
                  srl          zero, s10, a4
                  srli         s0, sp, 31
                  slt          s0, s10, t5
                  bne          a5, t0, 181f
                  srl          a4, t6, s1
                  xor          tp, t2, s9
                  sltu         gp, a4, a5
                  srai         s9, t6, 3
174:              add          t6, s2, a4
                  andi         s5, sp, 971
                  lui          a0, 101257
                  and          zero, t4, t3
                  or           a6, s10, a4
                  bge          s8, t2, 186f
                  blt          s5, a2, 199f
181:              add          s11, t2, tp
                  ori          t1, tp, 1953
                  slli         s2, s3, 24
                  sra          ra, tp, s3
                  or           t4, s1, a5
186:              srl          a6, a7, zero
                  srli         s5, s1, 15
                  sra          zero, gp, ra
                  sra          s9, s11, t0
                  srli         t4, ra, 8
                  add          s1, s0, a5
                  lui          a2, 727204
                  or           t3, zero, a2
                  srai         t3, a4, 29
                  sltiu        s2, t5, -413
                  add          s10, tp, s9
                  xori         s11, a6, 26
                  srli         a3, a7, 13
199:              sub          ra, a4, s7
                  sll          t0, s2, s0
                  blt          tp, a5, 215f
                  bgeu         s9, t2, 217f
                  slt          a3, s3, a2
                  and          s0, t4, gp
                  slt          s6, t2, a3
                  slti         a3, tp, 1223
                  sltu         s10, t4, s8
                  nop
                  slt          t5, sp, t2
                  auipc        s2, 559002
                  addi         s11, s9, 1929
                  srli         s7, t6, 10
                  srl          ra, s7, s2
                  auipc        a4, 588981
215:              slt          s6, zero, a1
                  ori          s1, zero, -127
217:              srai         t3, t3, 9
                  srai         s11, a7, 14
                  or           s8, s4, s8
                  bgeu         t5, ra, 237f
                  sltiu        a0, s10, -2020
                  addi         zero, t5, 1351
                  auipc        gp, 685320
                  addi         gp, zero, 1896
                  la           s6, sub_1
                  slti         s2, s7, 516
                  sltiu        s11, a0, -1904
                  slt          s11, a4, s0
                  addi         s6, s6, -114
                  beq          a4, a7, main_j2 #branch to jump instr
                  auipc        tp, 993086
main_j2:          jalr         t5, s6, 115 #jump main -> sub_1
                  sll          a0, t0, s10
                  bltu         t5, a6, 233f
                  blt          a2, a0, 246f
                  ori          s3, s0, 842
                  sltiu        s6, t3, -1786
                  slti         a1, t2, -53
                  srl          s2, t4, s7
                  andi         s5, tp, 1364
                  xor          s3, t0, t6
233:              srli         ra, t4, 2
                  srl          s7, gp, s4
                  lui          ra, 509966
                  and          s3, a5, t6
237:              add          a0, s4, s3
                  xor          a6, s4, a0
                  slti         a6, a5, 105
                  sltiu        a1, a2, -1020
                  sra          tp, s9, a3
                  addi         s6, ra, -1264
                  srli         s6, t5, 20
                  and          s10, a1, gp
                  sltiu        s7, a1, -1132
246:              bltu         s8, a2, 266f
                  bne          t0, a6, 259f
                  srai         t5, gp, 29
                  sub          s6, s6, s6
                  srl          s1, a4, s7
                  sll          t1, t0, s9
                  sub          a2, s11, s4
                  xori         a0, a0, 471
                  srl          a0, s7, sp
                  bgeu         t2, s9, 266f
                  auipc        s4, 302139
                  lui          tp, 914199
                  or           s3, s5, a1
259:              or           t2, s10, zero
                  add          tp, t3, s9
                  sltiu        tp, zero, -1664
                  xor          a0, t5, a5
                  auipc        s2, 881862
                  xori         s0, t3, 67
                  sltu         s8, t6, gp
266:              andi         s10, s11, -985
                  lui          a0, 47576
                  bltu         a6, t5, 280f
                  xor          s8, a3, s2
                  and          s3, s5, a1
                  xor          s2, a3, s4
                  xor          t0, t5, t2
                  addi         s7, t2, -790
                  ori          t4, s7, -1665
                  sltiu        t2, s9, 1541
                  srai         s4, a1, 28
                  sub          t3, s6, a1
                  andi         gp, s6, -767
                  slt          zero, gp, s5
280:              sltu         zero, tp, s3
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi         a7, a7, -48
                  xor          s4, tp, s11
                  srai         s3, s1, 28
                  sw           t5, 4(a7)
                  andi         tp, s2, 255
                  ori          s10, s3, -246
                  addi         a1, zero, 8 #init loop 1 counter
                  addi         s7, zero, 9 #init loop 1 limit
sub_5_24_1_t:     add          a0, a5, s9
                  addi         a0, a1, 1775
                  or           t3, ra, s10
                  addi         a1, a1, 4 #update loop 1 counter
                  addi         a3, zero, 2 #init loop 0 counter
                  nop
                  addi         s9, zero, -5 #init loop 0 limit
sub_5_24_0_t:     nop
                  srai         s1, a5, 31
                  addi         a3, a3, -8 #update loop 0 counter
                  xor          s2, s6, t5
                  bge          a3, s9, sub_5_24_0_t #branch for loop 0
                  blt          a1, s7, sub_5_24_1_t #branch for loop 1
                  sltu         a4, s9, gp
                  addi         s5, zero, 7 #init loop 1 counter
                  xori         tp, ra, 396
                  nop
                  add          ra, a7, a7
                  addi         a0, zero, 5 #init loop 1 limit
sub_5_14_1_t:     or           t2, a1, s2
                  addi         a3, t2, 402
                  addi         s5, s5, -3 #update loop 1 counter
                  addi         s8, zero, -6 #init loop 0 counter
                  xor          a6, t6, t2
                  srl          t1, a2, t3
                  auipc        a1, 556863
                  addi         s4, zero, -13 #init loop 0 limit
                  slli         s10, t5, 30
                  sra          s10, s10, a2
                  xor          t6, s10, s0
                  slti         t2, gp, -829
                  xor          a2, s8, s9
                  sll          tp, t5, a2
                  sltiu        a6, s6, -1290
                  xori         s9, tp, -1760
                  srli         s2, t1, 8
                  add          a6, s1, t0
                  sltiu        t6, t6, 881
                  xori         s7, s8, -1589
                  addi         t5, t6, -614
sub_5_14_0_t:     and          a1, s6, t5
                  add          t4, s11, gp
                  addi         s8, s8, -9 #update loop 0 counter
                  slt          t3, t0, a3
                  bge          s8, s4, sub_5_14_0_t #branch for loop 0
                  or           t5, a6, s6
                  sltu         s3, t2, t2
                  bgeu         s5, a0, sub_5_14_1_t #branch for loop 1
                  or           zero, s2, s5
                  addi         s0, zero, 4 #init loop 1 counter
                  add          a1, s2, a6
                  sltiu        a0, gp, -1461
                  addi         s8, zero, 18 #init loop 1 limit
sub_5_7_1_t:      sub          t2, s7, s2
                  addi         s0, s0, 2 #update loop 1 counter
                  slti         t3, s5, 262
                  addi         a3, zero, 1 #init loop 0 counter
                  xor          s3, s9, s5
                  addi         t3, s2, -850
                  addi         t5, zero, 12 #init loop 0 limit
sub_5_7_0_t:      or           t1, s5, s7
                  and          s6, s4, t6
                  addi         a3, a3, 7 #update loop 0 counter
                  and          tp, s3, t1
                  blt          a3, t5, sub_5_7_0_t #branch for loop 0
                  ori          a4, s5, -416
                  bltu         s0, s8, sub_5_7_1_t #branch for loop 1
                  addi         s4, sp, -1143
                  addi         s1, zero, -6 #init loop 1 counter
                  xor          tp, tp, t2
                  addi         a3, tp, -1467
                  srai         s4, s8, 2
                  addi         t5, zero, -3 #init loop 1 limit
sub_5_19_1_t:     xori         a6, s5, 18
                  addi         s1, s1, 1 #update loop 1 counter
                  sub          a3, s5, s0
                  addi         s0, zero, -1 #init loop 0 counter
                  xori         a0, a5, 517
                  slt          s8, t5, sp
                  slli         t4, a7, 2
                  addi         zero, t0, 967
                  addi         t3, zero, -19 #init loop 0 limit
sub_5_19_0_t:     xori         a6, t3, 932
                  srai         a1, t3, 12
                  addi         s0, s0, -9 #update loop 0 counter
                  beq          s0, t3, sub_5_19_0_t #branch for loop 0
                  sltiu        tp, s2, 1531
                  srl          gp, sp, a1
                  srai         s11, a3, 8
                  srai         s4, t2, 19
                  beq          s1, t5, sub_5_19_1_t #branch for loop 1
                  srl          gp, s2, s6
                  addi         s4, zero, 7 #init loop 1 counter
                  slti         t4, a5, -1113
                  addi         s9, zero, 7 #init loop 1 limit
                  srai         a0, a7, 14
sub_5_26_1_t:     xori         zero, t0, -553
                  addi         s4, s4, -6 #update loop 1 counter
                  addi         s10, zero, 8 #init loop 0 counter
                  slli         s2, t3, 7
                  addi         t5, zero, 12 #init loop 0 limit
sub_5_26_0_t:     slti         t4, s4, -71
                  ori          a6, s2, 1678
                  addi         s10, s10, 4 #update loop 0 counter
                  bltu         s10, t5, sub_5_26_0_t #branch for loop 0
                  bgeu         s4, s9, sub_5_26_1_t #branch for loop 1
                  lui          a2, 536538
                  addi         ra, zero, -6 #init loop 0 counter
                  slti         s7, zero, 98
                  addi         s10, zero, -14 #init loop 0 limit
                  lui          s6, 860555
                  lui          a3, 622498
                  nop
                  sltu         a2, a0, s2
                  andi         gp, sp, 1571
sub_5_6_0_t:      sltu         s8, t3, tp
                  slti         t2, t6, 986
                  ori          t2, a7, 1800
                  srai         s8, t0, 2
                  add          s3, s0, zero
                  slli         t3, gp, 20
                  andi         a3, a1, -868
                  sltiu        s3, s1, 807
                  addi         ra, ra, -2 #update loop 0 counter
                  srai         t4, a0, 26
                  srai         t0, s10, 18
                  sra          s1, s0, t0
                  slli         gp, t0, 4
                  bne          ra, s10, sub_5_6_0_t #branch for loop 0
                  lui          s3, 480463
                  addi         s2, zero, 2 #init loop 0 counter
                  addi         t6, s4, 1863
                  lui          s10, 869727
                  slli         s3, zero, 12
                  and          a4, t5, ra
                  srl          zero, s3, s9
                  sltiu        s9, a2, 1118
                  auipc        t1, 475204
                  xor          t4, s1, s6
                  addi         s7, zero, -4 #init loop 0 limit
                  srl          t4, s5, t1
                  xori         t1, s1, -1404
                  addi         s11, t3, -387
sub_5_18_0_t:     or           s6, a3, s9
                  lui          s10, 493228
                  addi         s2, s2, -6 #update loop 0 counter
                  addi         s11, t6, -845
                  sra          a2, s1, s1
                  sub          s5, a0, s8
                  and          gp, a3, t6
                  bne          s2, s7, sub_5_18_0_t #branch for loop 0
                  and          a0, a6, s5
                  addi         s9, zero, -3 #init loop 0 counter
                  sll          s1, a2, t3
                  addi         s0, zero, 14 #init loop 0 limit
                  nop
                  xor          s2, zero, sp
sub_5_22_0_t:     xori         tp, ra, 20
                  sra          t3, s9, a0
                  addi         s9, s9, 9 #update loop 0 counter
                  bltu         s9, s0, sub_5_22_0_t #branch for loop 0
                  nop
                  addi         ra, zero, -4 #init loop 0 counter
                  sub          t1, s6, t0
                  sub          t6, a3, s9
                  xor          s11, t1, s9
                  srai         t4, t5, 28
                  addi         s4, zero, 18 #init loop 0 limit
sub_5_10_0_t:     ori          s2, a5, -1248
                  ori          gp, s7, -1279
                  nop
                  auipc        t4, 796462
                  ori          t0, s0, 1256
                  slli         tp, t1, 6
                  addi         ra, ra, 10 #update loop 0 counter
                  srl          t2, s10, t5
                  auipc        t0, 93791
                  slt          s1, s3, s8
                  addi         s6, t2, 642
                  addi         t1, s3, -2024
                  add          gp, a7, t5
                  xor          t4, a2, s10
                  sub          t0, s0, t3
                  addi         zero, t4, 1887
                  blt          ra, s4, sub_5_10_0_t #branch for loop 0
                  sltiu        a1, t4, -1312
                  addi         s6, zero, 10 #init loop 1 counter
                  sll          zero, a2, s6
                  sltu         a6, s10, a7
                  addi         gp, s3, -610
                  addi         t0, zero, 9 #init loop 1 limit
                  slt          t6, s4, t1
                  and          s11, a0, t4
sub_5_20_1_t:     ori          s8, s10, -763
                  addi         s6, s6, -8 #update loop 1 counter
                  nop
                  srai         s8, t2, 7
                  sub          a1, s2, a6
                  addi         s4, zero, -9 #init loop 0 counter
                  lui          t2, 495346
                  addi         t5, zero, -18 #init loop 0 limit
                  srl          t4, t1, s8
                  add          tp, s4, a5
sub_5_20_0_t:     and          t3, a1, gp
                  sub          t3, s5, t0
                  addi         s4, s4, -9 #update loop 0 counter
                  sltu         gp, s7, s1
                  sltiu        a6, s3, -46
                  or           t2, a0, s5
                  and          s9, t6, s2
                  beq          s4, t5, sub_5_20_0_t #branch for loop 0
                  bgeu         s6, t0, sub_5_20_1_t #branch for loop 1
                  ori          s5, gp, -1725
                  addi         s2, zero, 3 #init loop 0 counter
                  sra          gp, a7, s11
                  ori          t5, s9, -408
                  or           s10, a7, t6
                  srai         s11, t3, 31
                  addi         a1, zero, -6 #init loop 0 limit
                  srl          s10, t5, s11
                  andi         s10, a0, 1240
sub_5_4_0_t:      and          t0, s4, ra
                  addi         s2, s2, -9 #update loop 0 counter
                  addi         s1, sp, -1080
                  sll          s5, s5, zero
                  addi         a2, a0, 70
                  sltu         t4, s9, a7
                  nop
                  ori          a2, s7, -1435
                  beq          s2, a1, sub_5_4_0_t #branch for loop 0
                  slli         s0, tp, 10
                  addi         ra, zero, 8 #init loop 1 counter
                  andi         a2, t6, 1499
                  and          a0, t1, ra
                  addi         s2, zero, 5 #init loop 1 limit
sub_5_9_1_t:      add          s4, s4, ra
                  slli         zero, a7, 28
                  addi         ra, ra, -3 #update loop 1 counter
                  sub          a4, s4, a0
                  lui          s7, 794274
                  andi         t2, a2, 1410
                  addi         a3, a0, 262
                  sll          s9, s11, gp
                  lui          s5, 606823
                  addi         s8, zero, 7 #init loop 0 counter
                  slli         a3, sp, 14
                  addi         s3, zero, 7 #init loop 0 limit
                  sll          s11, s11, a5
                  srai         t1, a7, 18
sub_5_9_0_t:      nop
                  slli         gp, zero, 11
                  nop
                  slli         a0, t0, 10
                  add          t6, t6, s11
                  addi         s8, s8, -8 #update loop 0 counter
                  addi         a1, s4, 1313
                  slli         t0, gp, 30
                  bge          s8, s3, sub_5_9_0_t #branch for loop 0
                  sra          s4, t1, s4
                  sltu         a4, t6, a3
                  bgeu         ra, s2, sub_5_9_1_t #branch for loop 1
                  addi         zero, s3, 1030
                  addi         tp, zero, 2 #init loop 0 counter
                  srai         zero, a3, 8
                  xor          s5, s2, a6
                  slt          s5, s2, s5
                  slti         a1, a7, 668
                  addi         t5, zero, -10 #init loop 0 limit
sub_5_1_0_t:      slt          t6, zero, s9
                  slt          t6, a3, sp
                  slli         t4, t6, 17
                  addi         tp, tp, -1 #update loop 0 counter
                  auipc        s2, 582621
                  slti         s7, a4, -955
                  slti         a2, t6, 1328
                  sub          ra, s10, s4
                  or           a0, s9, a3
                  and          t2, s2, s11
                  or           s4, zero, tp
                  slli         s2, t4, 2
                  lui          gp, 109816
                  srl          t0, ra, s10
                  sra          gp, t3, t5
                  sra          t6, a0, t1
                  and          t2, s3, s2
                  bge          tp, t5, sub_5_1_0_t #branch for loop 0
                  sltiu        a6, s1, 1445
                  addi         a6, zero, 3 #init loop 0 counter
                  andi         t6, a2, -1360
                  sltu         t6, tp, s1
                  andi         a2, s6, -1307
                  addi         zero, t5, 306
                  auipc        t3, 204609
                  addi         tp, zero, 12 #init loop 0 limit
                  sub          t6, t4, s7
                  auipc        t3, 474304
                  sltu         s0, a0, a1
                  andi         s3, s8, 1011
                  srli         a1, t3, 23
sub_5_17_0_t:     xor          a0, a6, gp
                  sub          a1, t6, t5
                  or           s1, s4, s1
                  auipc        t6, 35709
                  lui          t6, 807577
                  andi         s5, s9, 1278
                  xori         a1, a2, 40
                  and          t6, a7, a5
                  addi         a6, a6, 4 #update loop 0 counter
                  ori          t4, t0, -594
                  sltiu        s7, a2, -57
                  or           s7, zero, s2
                  andi         t3, t3, 868
                  bltu         a6, tp, sub_5_17_0_t #branch for loop 0
                  lui          a0, 479680
                  addi         ra, zero, 9 #init loop 0 counter
                  and          s10, s1, t6
                  sltu         s3, a5, tp
                  ori          zero, a0, 1697
                  slt          s1, t2, t2
                  srl          s11, t2, s2
                  sltu         s7, s8, a5
                  srli         t2, ra, 25
                  sub          tp, ra, s2
                  slti         a3, t5, 1025
                  sltiu        s8, t6, -982
                  add          a1, a6, zero
                  srai         t2, ra, 22
                  sltiu        s4, a6, 798
                  addi         t0, zero, 9 #init loop 0 limit
                  ori          s2, s2, 697
sub_5_16_0_t:     nop
                  addi         ra, ra, -8 #update loop 0 counter
                  add          zero, t2, s2
                  slli         a6, a1, 29
                  ori          a3, a2, 1518
                  bgeu         ra, t0, sub_5_16_0_t #branch for loop 0
                  ori          s6, s0, -116
                  addi         s5, zero, 8 #init loop 0 counter
                  sltu         s8, sp, s11
                  sltu         s2, t6, zero
                  addi         a3, zero, -13 #init loop 0 limit
sub_5_8_0_t:      and          t5, tp, zero
                  addi         s5, s5, -7 #update loop 0 counter
                  xori         s7, a0, 1699
                  xori         s8, a1, -1131
                  bge          s5, a3, sub_5_8_0_t #branch for loop 0
                  slli         t2, gp, 13
                  addi         ra, zero, -5 #init loop 1 counter
                  auipc        s2, 419914
                  or           s0, a6, s7
                  srli         a2, a7, 8
                  addi         s4, zero, -3 #init loop 1 limit
sub_5_11_1_t:     slt          s6, s7, t3
                  sub          t2, a2, a4
                  nop
                  auipc        s1, 674163
                  sltiu        s5, a6, 1790
                  ori          t4, s4, 678
                  addi         ra, ra, 2 #update loop 1 counter
                  addi         s10, zero, 9 #init loop 0 counter
                  and          t0, a3, a3
                  addi         tp, zero, -7 #init loop 0 limit
sub_5_11_0_t:     sltiu        a2, a3, 1989
                  slli         s11, s4, 14
                  lui          a3, 45108
                  sll          s3, s6, t4
                  addi         s10, s10, -5 #update loop 0 counter
                  sra          s11, t0, s9
                  sra          s3, t2, s4
                  bge          s10, tp, sub_5_11_0_t #branch for loop 0
                  beq          ra, s4, sub_5_11_1_t #branch for loop 1
                  xori         s5, sp, 391
                  addi         a3, zero, 10 #init loop 1 counter
                  addi         s0, zero, 10 #init loop 1 limit
                  xori         t2, s2, -1493
                  sub          s8, s9, s5
sub_5_0_1_t:      lui          a4, 658342
                  addi         a3, a3, -9 #update loop 1 counter
                  srai         ra, t6, 7
                  addi         a0, zero, 10 #init loop 0 counter
                  srl          a1, t5, a1
                  addi         a6, zero, 9 #init loop 0 limit
                  srai         s6, s6, 21
sub_5_0_0_t:      xori         ra, a6, 1110
                  sltu         s10, t3, s1
                  addi         a0, a0, -8 #update loop 0 counter
                  slt          t5, a3, s2
                  sltu         s2, a4, a6
                  bgeu         a0, a6, sub_5_0_0_t #branch for loop 0
                  slti         t5, tp, 1766
                  bgeu         a3, s0, sub_5_0_1_t #branch for loop 1
                  srli         s10, sp, 0
                  addi         s2, zero, -3 #init loop 1 counter
                  auipc        zero, 107720
                  add          zero, a7, t3
                  xor          a2, gp, s9
                  slti         s6, s9, -620
                  add          s5, a7, s3
                  addi         s10, zero, 6 #init loop 1 limit
                  sltiu        a3, zero, 887
sub_5_5_1_t:      andi         a1, sp, 1560
                  slt          a4, s2, s2
                  addi         s2, s2, 1 #update loop 1 counter
                  ori          s3, s11, -386
                  addi         t5, zero, 2 #init loop 0 counter
                  srli         s3, s11, 5
                  nop
                  slt          s4, t4, t1
                  srl          s11, s8, t4
                  and          zero, gp, s5
                  addi         s9, zero, 8 #init loop 0 limit
                  srai         a6, s10, 15
                  slti         t6, t3, 709
sub_5_5_0_t:      slt          t4, gp, s0
                  addi         t5, t5, 5 #update loop 0 counter
                  sll          s0, ra, a2
                  lui          t4, 969923
                  srli         t0, s1, 13
                  andi         s7, s11, -1939
                  add          a2, a1, a3
                  blt          t5, s9, sub_5_5_0_t #branch for loop 0
                  srli         s11, s3, 24
                  ori          zero, a7, 266
                  auipc        zero, 787746
                  bltu         s2, s10, sub_5_5_1_t #branch for loop 1
                  slli         t3, a0, 5
                  addi         s1, zero, -2 #init loop 0 counter
                  sltiu        t1, a3, -1577
                  srai         s5, s0, 29
                  slt          a6, a4, a3
                  andi         t3, s6, 257
                  andi         t1, ra, 766
                  and          s2, a5, s6
                  or           t5, s7, t2
                  addi         s7, zero, -20 #init loop 0 limit
sub_5_13_0_t:     auipc        s8, 645687
                  ori          tp, zero, 1071
                  addi         s1, s1, -9 #update loop 0 counter
                  ori          t6, a4, 446
                  andi         s11, t6, -1128
                  beq          s1, s7, sub_5_13_0_t #branch for loop 0
                  auipc        s4, 544918
                  addi         s6, zero, 9 #init loop 0 counter
                  srl          s2, s3, s11
                  addi         s1, zero, 7 #init loop 0 limit
                  srai         s2, s10, 11
                  and          s5, s2, a0
sub_5_23_0_t:     ori          t6, gp, -1929
                  lui          zero, 570314
                  addi         s6, s6, -4 #update loop 0 counter
                  bgeu         s6, s1, sub_5_23_0_t #branch for loop 0
                  slli         s0, t2, 12
                  sltiu        zero, a0, -1194
                  xori         s8, a4, 1251
                  bge          s5, s9, 19f
                  slti         s6, a7, 126
                  andi         s1, s0, 795
                  andi         a2, s7, -2013
                  sra          t4, a7, s10
                  beq          a4, s11, 9f
                  addi         t1, gp, -1326
9:                blt          t5, s10, 20f
                  or           gp, sp, s10
                  slti         tp, s10, 165
                  sltu         ra, tp, s2
                  and          s9, t4, s4
                  slt          s2, t4, sp
                  beq          s0, s0, 23f
                  slli         s8, a1, 5
                  sll          tp, gp, a3
                  ori          s7, a3, 643
19:               ori          s2, s1, -1571
20:               srai         s10, t0, 16
                  srai         s8, ra, 19
                  srli         t5, s1, 5
23:               addi         a3, s3, -730
                  bgeu         t4, a4, 41f
                  or           s8, tp, s4
                  slli         s11, s7, 26
                  nop
                  andi         s4, a7, 356
                  beq          t5, t3, 42f
                  sltu         t1, s7, sp
                  bgeu         a1, s6, 51f
                  add          tp, a3, s0
                  slli         s6, s3, 2
                  bne          s10, t0, 51f
                  sltiu        s5, s9, -1293
                  beq          t5, s8, 47f
                  beq          a7, s6, 54f
                  or           tp, t0, t0
                  sll          t1, a5, t2
                  or           s1, gp, t5
41:               or           s4, s3, gp
42:               srl          a0, sp, t6
                  bltu         a7, s1, 51f
                  bgeu         ra, gp, 51f
                  bltu         a1, a6, 54f
                  sll          a0, zero, gp
47:               addi         s11, a4, 458
                  bne          s1, s3, 52f
                  blt          s2, a2, 59f
                  srai         s2, t1, 12
51:               slti         t3, ra, -1504
52:               sltu         a3, t1, s9
                  bge          t3, a7, 62f
54:               slt          t3, tp, sp
                  or           s3, s5, gp
                  sltu         s8, s11, a7
                  nop
                  ori          t6, s1, -466
59:               xor          t6, t4, s6
                  sltu         ra, t0, s8
                  sub          a4, zero, a7
62:               auipc        s1, 846803
                  lui          t4, 825509
                  srl          s4, s8, a7
                  sub          s8, a1, gp
                  addi         s3, t5, -1163
                  blt          s7, tp, 74f
                  add          a6, s11, zero
                  srai         s3, t0, 27
                  blt          t2, t2, 86f
                  slt          s2, t3, s8
                  bge          t1, s11, 77f
                  xor          zero, s8, a3
74:               slt          t3, s4, t5
                  bge          s3, tp, 81f
                  srai         a4, a5, 19
77:               beq          tp, s5, 86f
                  slt          a4, s0, a3
                  add          a1, t3, t2
                  blt          t6, sp, 100f
81:               add          t4, a5, a3
                  xor          a2, t6, ra
                  srai         s11, t3, 7
                  slti         s9, sp, -486
                  sltiu        s10, t6, -252
86:               and          a0, s10, s9
                  or           a4, sp, t1
                  bge          t1, tp, 89f
89:               and          zero, s0, s0
                  srl          t4, tp, a4
                  xor          t5, a1, tp
                  auipc        s8, 6396
                  slli         a1, a6, 7
                  addi         s9, s4, -1021
                  bltu         s10, s1, 109f
                  nop
                  bge          s6, s10, 113f
                  bgeu         sp, t3, 113f
                  sltiu        tp, tp, -1481
100:              slti         s9, a1, 973
                  bltu         t2, t1, 103f
                  xori         t2, s9, 439
103:              srai         t1, t5, 1
                  bne          s6, a0, 106f
                  beq          a5, t1, 125f
106:              bltu         sp, t0, 125f
                  srli         t5, s4, 27
                  sltu         s9, sp, t1
109:              srl          s4, s4, t1
                  and          s6, s2, a3
                  bgeu         gp, a2, 113f
                  bne          a7, s9, 132f
                  addi         tp, zero, -3 #init loop 0 counter
                  slt          gp, s3, zero
                  addi         t2, zero, -14 #init loop 0 limit
                  lui          s2, 262848
sub_5_21_0_t:     and          t3, a0, a4
                  addi         tp, tp, -9 #update loop 0 counter
                  bge          tp, t2, sub_5_21_0_t #branch for loop 0
                  srl          t3, s10, s7
113:              beq          tp, t3, 117f
                  xori         s5, s6, 520
                  add          a3, s3, zero
                  nop
117:              slli         t4, s8, 27
                  andi         t5, a6, 1755
                  add          s4, s11, a0
                  blt          a2, a1, 135f
                  srai         t5, s1, 3
                  auipc        t6, 556332
                  beq          sp, a4, 142f
                  slt          s9, s0, t0
125:              xor          zero, a6, tp
                  bgeu         t5, s4, 128f
                  srl          a3, a7, a6
128:              ori          s2, zero, -93
                  addi         s8, s11, -1837
                  bgeu         t5, a1, 138f
                  nop
132:              nop
                  lui          s4, 638263
                  lui          t6, 443260
135:              sll          s9, a3, a0
                  auipc        tp, 720565
                  sub          t0, a3, t2
138:              srl          s8, gp, s1
                  xori         zero, sp, 530
                  auipc        ra, 74551
                  auipc        t4, 21333
142:              xori         s5, a3, -1075
                  auipc        s4, 975148
                  blt          zero, a4, 161f
                  xori         a6, a5, 1779
                  and          tp, s3, ra
                  beq          t0, s4, 164f
                  nop
                  bge          a3, t3, 150f
150:              srl          zero, a3, s1
                  sub          t6, a0, s4
                  bge          a4, tp, 161f
                  xor          tp, t6, s4
                  add          s10, a0, a7
                  xori         t1, t0, 1390
                  and          t5, t6, tp
                  xor          t2, s9, t4
                  and          s8, s10, t4
                  or           s3, s0, a7
                  slt          zero, s6, t1
161:              srai         s10, t4, 9
                  bltu         s11, s4, 178f
                  bge          t6, s11, 165f
164:              bge          t3, zero, 170f
165:              lui          s2, 696316
                  sub          s2, s4, a1
                  slti         s2, s5, 1356
                  srli         a4, a5, 5
                  bge          s11, a2, 186f
170:              beq          sp, t5, 190f
                  blt          t4, s4, 178f
                  slti         a4, s6, 1476
                  ori          zero, t0, 1234
                  auipc        a0, 546937
                  srl          s4, zero, t4
                  bge          s4, s2, 196f
                  nop
178:              auipc        a4, 262077
                  addi         t2, zero, -4 #init loop 1 counter
                  srli         t3, s1, 31
                  xor          s7, t0, gp
                  srli         s5, zero, 27
                  addi         t5, zero, 1 #init loop 1 limit
                  xori         s7, s0, -2012
                  or           s9, s8, s1
sub_5_25_1_t:     sltu         s1, a1, t5
                  or           zero, a5, s11
                  addi         t2, t2, 4 #update loop 1 counter
                  and          a3, t2, s9
                  addi         ra, zero, 10 #init loop 0 counter
                  addi         t6, zero, 9 #init loop 0 limit
sub_5_25_0_t:     andi         s0, tp, -384
                  or           s0, s5, sp
                  addi         ra, ra, -8 #update loop 0 counter
                  andi         s1, gp, -280
                  bgeu         ra, t6, sub_5_25_0_t #branch for loop 0
                  blt          t2, t5, sub_5_25_1_t #branch for loop 1
                  ori          t1, s10, -1641
                  sub          s9, t1, a0
                  ori          t5, ra, -1453
                  slli         s6, t5, 30
                  ori          a3, s3, 1703
                  sra          t6, t2, a5
                  bgeu         t6, t1, 194f
                  beq          s8, s6, 194f
186:              sub          s9, t1, s4
                  slti         t3, s3, 635
                  bgeu         s9, t6, 201f
                  auipc        zero, 956868
190:              blt          t6, s11, 206f
                  ori          ra, s0, 164
                  srl          ra, a5, a7
                  sltiu        t1, gp, -659
194:              sra          t3, t6, t2
                  sra          t6, a0, zero
196:              andi         s2, a6, 666
                  blt          a5, t1, 204f
                  or           s5, t4, t4
                  srli         a1, s3, 8
                  lui          s3, 415916
201:              slt          t3, t4, t5
                  sra          s4, s4, a2
                  nop
204:              beq          a5, sp, 215f
                  sll          a6, s2, s7
206:              bltu         t0, a1, 215f
                  srl          ra, t6, t5
                  bge          s7, t0, 219f
                  slt          t4, t2, a6
                  xor          s10, t1, s8
                  sltiu        a2, t4, 469
                  bge          s5, s5, 226f
                  sra          gp, s1, t3
                  sra          a4, sp, a3
215:              bgeu         zero, t5, 223f
                  add          ra, a4, t1
                  beq          a4, s3, 234f
                  ori          s4, t0, -1300
219:              blt          s6, t5, 224f
                  lui          s8, 514460
                  sll          t5, sp, t2
                  add          tp, s0, t6
223:              bge          a1, s9, 230f
224:              srl          a3, gp, s1
                  bge          ra, s0, 233f
226:              slti         t4, a7, -1835
                  bne          tp, sp, 244f
                  sra          t0, a6, s4
                  xor          s4, tp, tp
230:              or           s9, s11, s2
                  blt          s6, a7, 237f
                  slti         t5, t5, -1010
233:              sltiu        t2, gp, 180
234:              srli         s7, ra, 24
                  or           s6, s6, a7
                  bge          a7, s1, 245f
237:              srli         s2, a6, 28
                  srai         t6, s6, 27
                  srli         s0, a5, 0
                  sltiu        t1, a1, -621
                  xor          tp, t6, s1
                  addi         a2, gp, 1473
                  xor          s11, t1, a7
244:              nop
245:              add          s1, s7, a6
                  sub          a0, ra, s11
                  sub          t5, t6, t1
                  xor          t4, s10, t6
                  add          s8, a0, s1
                  slti         s9, s9, -1452
                  bge          a0, a1, 253f
                  andi         a4, s9, -1379
253:              add          zero, a4, t5
                  or           s6, t2, s0
                  and          s3, s8, s8
                  or           s11, s11, t0
                  slti         s6, s5, 142
                  beq          s5, t4, 275f
                  nop
                  lui          t3, 708674
                  srl          s0, t3, a6
                  srl          t6, a3, t0
                  bge          s8, a4, 279f
                  xori         s0, ra, 1632
                  srl          a4, t5, s7
                  or           a0, t0, t6
                  sll          t4, a1, s8
                  slt          s11, s1, s5
                  add          ra, s8, a2
                  nop
                  sll          t0, zero, t0
                  slt          s10, a2, t6
                  slti         t4, s7, -1378
                  bgeu         a0, s1, 276f
275:              bne          zero, a5, 295f
276:              srli         s9, zero, 22
                  sra          gp, sp, t5
                  addi         t6, s9, 613
279:              auipc        gp, 379469
                  bge          s10, s7, 289f
                  bgeu         s1, sp, 300f
                  slt          t3, s7, tp
                  auipc        tp, 781842
                  bltu         s4, s8, 285f
285:              auipc        t1, 221148
                  or           s8, s5, a5
                  ori          t5, t2, -1856
                  ori          s6, s7, -481
289:              xori         s3, sp, -1206
                  slt          a4, a7, s2
                  bne          s10, a0, 295f
                  sll          s0, s11, a0
                  xori         s5, t5, 1463
                  bne          a0, s3, 304f
295:              add          tp, t5, t6
                  srl          s5, a2, ra
                  and          t2, t5, s8
                  add          s8, tp, sp
                  srl          s1, s9, a3
300:              sltu         tp, a4, t2
                  auipc        t5, 1012571
                  slt          gp, s5, s0
                  lui          a6, 418141
304:              nop
                  auipc        a6, 1291
                  or           t3, s8, s8
                  nop
                  slti         s0, t3, -1817
                  sltiu        a6, tp, 1528
                  andi         a2, s1, 1856
                  ori          s0, a7, 1404
                  xori         s5, s11, -956
                  sub          s5, a1, s8
                  blt          s10, a3, 334f
                  slli         s4, s7, 13
                  sltiu        a0, t0, -1500
                  and          a4, zero, t3
                  bne          t2, s8, 327f
                  srl          a3, s3, a3
                  sll          gp, t6, s10
                  sub          s8, sp, sp
                  sltu         tp, zero, ra
                  blt          s7, t0, 330f
                  srli         t3, s2, 10
                  slti         s2, a4, -1778
                  slli         t4, tp, 28
327:              sra          tp, s4, t3
                  nop
                  add          gp, gp, s11
330:              beq          s1, t1, 347f
                  slli         a3, a4, 16
                  slli         s11, tp, 28
                  sra          t3, s0, tp
334:              sltu         s7, a5, a1
                  slti         zero, s2, -863
                  or           t2, ra, s1
                  slti         s1, tp, 2040
                  nop
                  xori         s7, s4, 1331
                  slt          s0, zero, s5
                  nop
                  slli         s0, s6, 29
                  slt          a2, a2, a4
                  xor          a0, t0, sp
                  beq          tp, s9, 350f
                  srai         a6, a5, 18
347:              andi         s1, s8, 30
                  bgeu         s1, s6, 361f
                  bge          t2, a4, 369f
350:              and          s3, a6, s11
                  bltu         s0, a2, 359f
                  bltu         s0, t4, 366f
                  beq          t0, s0, 364f
                  addi         ra, zero, -2 #init loop 0 counter
                  addi         t5, zero, 9 #init loop 0 limit
sub_5_3_0_t:      xori         s0, s4, 1033
                  srl          s2, a4, a2
                  slti         zero, s0, -1272
                  sltu         a2, s11, ra
                  slti         t1, t0, 712
                  ori          s6, zero, -1122
                  addi         ra, ra, 8 #update loop 0 counter
                  srl          a2, a7, t3
                  sltiu        s4, s6, -415
                  slt          s0, t1, a3
                  blt          ra, t5, sub_5_3_0_t #branch for loop 0
                  ori          a0, s11, 1840
                  lui          a6, 507509
                  srai         gp, s3, 26
                  addi         s5, s7, 1199
                  bgeu         a2, t1, 372f
                  add          tp, s2, s1
359:              bltu         a2, s4, 370f
                  srai         t1, s6, 12
361:              srli         s0, s1, 29
                  sltiu        t4, s6, -489
                  bne          t5, s10, 380f
364:              sltu         s0, t1, t0
                  ori          a1, s0, -1439
366:              xor          tp, t1, a2
                  xor          a6, gp, s10
                  lui          t3, 972316
369:              or           t2, zero, s11
370:              blt          t1, t4, 386f
                  slli         t3, zero, 19
372:              sra          s11, a6, ra
                  bne          gp, s8, 375f
                  sra          s5, s11, s9
375:              srli         s6, t4, 26
                  nop
                  bne          a6, t6, 385f
                  addi         t4, t6, -733
                  slti         t4, t2, -1646
380:              xor          s8, a7, gp
                  srli         t4, s3, 17
                  or           t2, s9, a3
                  xori         t5, t4, -1044
                  srai         s5, s9, 21
385:              sll          s7, ra, t2
386:              bne          a3, a0, 395f
                  andi         t4, a3, 524
                  and          s0, a3, a0
                  blt          tp, t1, 402f
                  bgeu         t3, t3, 407f
                  bge          a6, ra, 392f
392:              addi         t3, s2, 57
                  sltu         s6, ra, s6
                  sll          s7, s3, s11
395:              bne          t5, sp, 415f
                  lui          s3, 499052
                  bne          sp, a3, 414f
                  slt          s6, t1, s11
                  or           s4, tp, s9
                  and          ra, t4, s0
                  slli         s6, gp, 8
402:              sll          s11, s11, a3
                  beq          gp, t6, 413f
                  srl          t5, tp, s8
                  add          t6, t0, zero
                  sra          s3, gp, t2
407:              nop
                  auipc        t6, 782127
                  sra          tp, zero, a4
                  sltu         t1, sp, s10
                  nop
                  srai         a4, s6, 27
413:              or           ra, zero, t3
414:              xori         t4, s5, 1312
415:              sltiu        t3, ra, -1782
                  addi         t5, s10, -964
                  sra          s4, tp, s4
                  add          s7, a3, gp
                  srl          s4, a6, ra
                  addi         s1, sp, 1931
                  sltiu        a4, a3, -710
                  xori         s6, t2, -430
                  andi         zero, s11, -1388
                  nop
                  addi         s1, t1, -817
                  add          s9, sp, a7
                  bltu         s4, s9, 447f
                  bne          s5, a1, 439f
                  sltiu        s9, sp, 120
                  srli         a6, gp, 0
                  ori          s3, s7, 238
                  nop
                  slli         s4, a6, 28
                  ori          t3, a4, 598
                  sltu         t2, zero, s3
                  srli         a2, a6, 13
                  andi         gp, t0, -308
                  ori          s11, s7, -172
439:              addi         t3, a2, -1128
                  srai         s10, a3, 4
                  bgeu         s11, a2, 446f
                  lui          s8, 308718
                  ori          s4, t4, 302
                  sltiu        t2, a5, 1411
                  add          s8, t3, s8
446:              bgeu         s5, s9, 448f
447:              andi         t2, a0, -547
448:              srai         t3, s0, 7
                  bge          a3, sp, 456f
                  xor          gp, a2, s1
                  srli         s11, s4, 3
                  add          t6, t1, t5
                  sll          t1, gp, a5
                  slt          tp, s1, s6
                  xor          s1, s4, tp
456:              lui          s4, 717633
                  lui          t0, 929941
                  nop
                  xori         t3, ra, 1661
                  bltu         s11, s10, 474f
                  slli         a1, a7, 9
                  xori         s6, gp, -1545
                  slt          s6, t4, ra
                  auipc        t5, 199639
                  srai         s7, s0, 23
                  sub          s6, t2, a1
                  add          a0, s3, s4
                  xori         s8, s10, 69
                  or           gp, a6, a1
                  ori          s2, t6, -447
                  blt          sp, s11, 480f
                  srl          ra, s1, zero
                  bgeu         s4, t6, 488f
474:              addi         t0, s8, 1097
                  srai         s3, s7, 1
                  addi         zero, s6, 347
                  andi         s11, s2, 1139
                  sub          gp, ra, s11
                  and          s1, sp, t5
480:              or           ra, a4, s5
                  xor          t0, s9, s8
                  sltu         s9, s7, t2
                  or           s9, gp, s3
                  bne          s2, s3, 490f
                  sub          a1, t2, tp
                  and          t2, a7, t3
                  beq          t1, a6, 496f
488:              sra          t1, s11, t3
                  add          s4, s10, s4
490:              xor          s9, a2, t5
                  slt          t6, tp, gp
                  blt          s11, a1, 494f
                  sltu         t5, a0, a2
494:              sltiu        t2, t5, 1139
                  blt          s8, s11, 502f
496:              sub          t4, sp, a5
                  slli         s7, gp, 14
                  auipc        a3, 571670
                  bgeu         a2, a4, 503f
                  srl          gp, a7, a2
                  bltu         s9, a1, 518f
502:              add          s1, a7, a1
503:              sll          gp, a7, a1
                  lui          a4, 108416
                  srli         t5, sp, 12
                  sltiu        s3, a4, 606
                  auipc        s7, 740168
                  auipc        gp, 443876
                  sra          zero, s3, s5
                  or           a2, s6, s7
                  sltu         s9, s2, s4
                  srl          s10, s5, tp
                  sra          s10, s2, s11
                  bge          t0, a3, 533f
                  slli         a6, tp, 13
                  ori          s6, gp, -1079
                  and          t4, a0, t0
518:              sra          s6, a6, t2
                  srai         t2, a5, 27
                  andi         t0, t0, -1196
                  sub          s0, t2, a3
                  sltiu        s7, a1, 1920
                  sub          zero, a7, a6
                  xor          a2, sp, s6
                  slti         gp, t2, -1596
                  or           a0, gp, zero
                  sltu         a0, s2, s7
                  slt          a0, gp, s4
                  xori         s6, t2, -977
                  sub          t0, t1, t4
                  sltiu        s1, t6, 1724
                  bgeu         s2, tp, 552f
533:              lui          zero, 442623
                  auipc        s9, 560069
                  sltiu        s8, ra, -1750
                  slt          a2, a7, s1
                  andi         t1, t4, -1001
                  or           a1, t4, gp
                  nop
                  bge          s2, s4, 551f
                  beq          a7, a6, 543f
                  slli         t5, t0, 11
543:              sra          s6, tp, s6
                  sltiu        ra, s10, -1084
                  slti         t2, t1, -1652
                  andi         t0, a4, -679
                  auipc        s8, 302086
                  bge          sp, a7, 556f
                  sltiu        a6, s11, 387
                  sub          s6, s9, a7
551:              beq          s9, ra, 568f
552:              auipc        s2, 42352
                  sub          ra, a0, sp
                  xor          a4, t2, s0
                  sltiu        tp, a0, 480
556:              add          t0, t0, s2
                  addi         t6, s6, 1480
                  sub          s9, s6, t0
                  auipc        s3, 136270
                  srli         s7, t3, 2
                  srl          s7, ra, s0
                  ori          s4, s5, 1547
                  bgeu         s4, s10, 579f
                  beq          s3, t0, 580f
                  blt          s0, a7, 572f
                  sltiu        s5, s8, 546
                  srai         t0, s6, 8
568:              lui          t3, 486262
                  bltu         a4, t3, 585f
                  andi         t0, s9, -1563
                  srli         s0, s10, 3
572:              lui          t2, 91643
                  or           t6, a6, a6
                  andi         t2, sp, -988
                  andi         zero, t0, -912
                  bltu         t6, a4, 578f
                  slt          gp, t2, a6
578:              andi         a3, a2, 1819
579:              slt          t2, s9, s2
580:              sll          t0, a5, s8
                  sub          t4, s2, a3
                  and          s9, t4, sp
                  sltiu        a0, a5, 189
                  nop
585:              srl          s11, s2, zero
                  bltu         s11, a4, 605f
                  sltiu        t3, a4, -192
                  slli         t1, s9, 11
                  sub          s10, a0, sp
                  addi         ra, s7, 1451
                  bgeu         a7, a0, 599f
                  andi         t5, a7, -96
                  srli         ra, a4, 6
                  auipc        s1, 397901
                  srai         a6, s1, 3
                  ori          s9, t3, -402
                  addi         s9, a2, -1160
                  xori         t4, a0, -363
599:              sra          zero, a4, zero
                  nop
                  addi         s10, t2, -604
                  or           s9, gp, s9
                  sra          s7, t3, s2
                  sra          s6, t5, t3
605:              ori          a2, s5, 1450
                  slti         a6, s3, 250
                  xor          s11, s2, a6
                  slli         s5, t3, 13
                  andi         s0, s11, 1710
                  bltu         a1, a4, 621f
                  sltiu        t2, zero, 1837
                  slt          a0, s2, t2
                  lui          s3, 86334
                  srai         s9, ra, 31
                  bltu         t5, a5, 635f
                  bgeu         t2, s4, 632f
                  nop
                  sltiu        t0, t3, -695
                  sra          gp, t4, ra
                  ori          a1, gp, 1616
621:              slt          a2, s4, s4
                  or           s2, s7, t2
                  add          gp, s3, s11
                  srai         a6, s6, 16
                  bne          t5, t5, 633f
                  sltu         gp, a5, t6
                  sltu         t2, s10, s10
                  sra          s4, t3, s4
                  bne          s3, s8, 635f
                  bgeu         s6, s11, 631f
631:              xori         s0, s4, 499
632:              bge          t0, s4, 652f
633:              sltiu        ra, a1, -352
                  sll          s0, a3, a7
635:              auipc        s9, 521419
                  sra          ra, a3, t2
                  ori          s10, s1, 1373
                  sra          ra, t1, zero
                  and          t3, sp, gp
                  and          a0, a3, s8
                  slti         gp, t0, 1436
                  bltu         a1, a6, 662f
                  bge          a6, s11, 654f
                  ori          ra, gp, -461
                  sltiu        tp, tp, 1986
                  sub          t3, s9, t0
                  xor          tp, s2, a4
                  or           t4, a2, a2
                  or           a2, t3, a5
                  sub          t2, t2, t2
                  add          s1, s7, s10
652:              nop
                  sltiu        s9, s4, 719
654:              lui          a2, 806952
                  and          s3, a7, a0
                  slt          ra, t1, t5
                  slt          s5, a5, s3
                  bltu         t5, a7, 660f
                  and          t0, t2, t4
660:              ori          a0, t6, -427
                  nop
662:              sub          s11, s11, t2
                  sltu         tp, gp, t4
                  sltiu        s6, a7, 539
                  and          s10, s1, s8
                  auipc        s0, 112104
                  sltu         s7, s11, s5
                  sll          a1, s8, tp
                  bne          s2, s6, 673f
                  addi         a2, a3, -717
                  nop
                  sltiu        t1, t2, 1771
673:              blt          t3, t6, 687f
                  addi         t0, t5, 219
                  ori          a0, zero, -12
                  or           t6, a4, t1
                  sltiu        t0, s4, -635
                  xor          a0, s1, t6
                  sll          a1, s5, s6
                  or           t2, s8, ra
                  sra          t6, s6, s0
                  or           a1, t2, zero
                  add          t1, a4, s3
                  sltiu        a6, a1, -1079
                  sltu         s3, s8, s2
                  srl          zero, s7, s10
687:              slli         s9, s11, 20
                  andi         s9, tp, 647
                  andi         s6, s4, 911
                  bne          a0, s1, 707f
                  sra          s0, tp, s6
                  ori          ra, s7, -732
                  bge          t0, t4, 710f
                  srli         zero, t2, 5
                  nop
                  lui          t4, 944772
                  sltiu        s10, t4, 671
                  addi         s2, s10, 1353
                  blt          tp, s9, 712f
                  srai         gp, a3, 24
                  slti         a3, s2, 735
                  slti         t2, t4, -811
                  bne          s1, s11, 712f
                  sll          s0, s11, t2
                  srai         s1, t3, 14
                  bne          a7, sp, 715f
707:              beq          t4, a3, 724f
                  and          tp, s4, gp
                  beq          a1, a3, 711f
710:              add          t1, s5, t0
711:              blt          a7, s6, 726f
712:              sltu         s11, t2, s4
                  bge          tp, s0, 718f
                  sll          t1, s5, s2
715:              xori         a3, a0, -235
                  srl          s11, t6, s10
                  slt          s7, t1, s5
718:              slli         t1, t6, 1
                  srai         s5, sp, 12
                  bne          t0, a7, 727f
                  lui          s6, 101305
                  bne          t4, a1, 731f
                  beq          t2, s10, 733f
724:              bgeu         s0, s10, 741f
                  sltiu        a3, a3, 1139
726:              bgeu         a6, t2, 743f
727:              blt          tp, a1, 729f
                  addi         s2, t6, -784
729:              andi         s6, s1, -655
                  bltu         s5, t6, 743f
731:              xor          s5, s6, tp
                  or           t6, s2, s4
733:              srai         s1, gp, 0
                  lui          s7, 960076
                  beq          a7, t1, 754f
                  slli         a4, a2, 16
                  beq          t1, s4, 757f
                  srl          t5, s9, a0
                  beq          gp, t6, 756f
                  sltu         s2, a1, a3
741:              andi         t0, s7, -343
                  slt          t2, s9, a0
743:              srl          s3, a4, a7
                  bgeu         s10, t0, 749f
                  or           s7, a5, a7
                  lui          s1, 741441
                  xori         s0, t3, 660
                  addi         t2, zero, 7 #init loop 1 counter
                  auipc        a3, 49606
                  slli         a3, tp, 1
                  addi         a1, zero, 4 #init loop 1 limit
                  lui          t1, 93599
                  slt          s11, s2, s4
                  sra          s4, s9, s7
sub_5_2_1_t:      slt          a3, t1, a2
                  addi         t2, t2, -3 #update loop 1 counter
                  srl          s1, a0, a4
                  nop
                  addi         gp, zero, 5 #init loop 0 counter
                  sltiu        t3, t3, 177
                  addi         s5, zero, 13 #init loop 0 limit
                  ori          s10, s7, 14
                  srl          ra, s8, t2
sub_5_2_0_t:      nop
                  sub          s1, ra, s4
                  sll          t6, a4, a0
                  srai         tp, tp, 0
                  auipc        s10, 479475
                  addi         gp, gp, 8 #update loop 0 counter
                  nop
                  beq          gp, s5, sub_5_2_0_t #branch for loop 0
                  slli         tp, s1, 9
                  slti         s8, s6, 1338
                  bgeu         t2, a1, sub_5_2_1_t #branch for loop 1
                  slt          s10, a2, t6
                  beq          t4, s6, 750f
749:              beq          a5, a6, 765f
750:              add          a4, s5, s5
                  addi         s10, s0, -1838
                  slt          gp, s9, t4
                  add          s7, tp, ra
754:              bge          a3, s0, 763f
                  sltu         s2, t4, s3
756:              slt          a2, s9, s8
757:              blt          s9, ra, 766f
                  slli         t4, s6, 12
                  auipc        gp, 555020
                  add          a1, t2, sp
                  auipc        tp, 388415
                  andi         t0, s3, -197
763:              sltu         s8, a4, s7
                  xor          t6, a5, a7
765:              bltu         t2, s1, 776f
766:              blt          t2, a2, 781f
                  sra          s6, s7, t1
                  bltu         s9, s6, 779f
                  addi         s1, s1, 71
                  xori         s11, sp, 1078
                  beq          ra, tp, 787f
                  slli         s5, s10, 18
                  or           ra, zero, a7
                  sltu         s8, t6, a6
                  addi         s6, s5, 357
776:              add          s9, zero, ra
                  sltu         t5, a2, a1
                  add          s10, ra, s0
779:              bltu         a2, a2, 780f
780:              addi         t3, s6, -419
781:              ori          a6, t4, 322
                  sll          s1, tp, s11
                  andi         s1, tp, 671
                  auipc        t5, 749124
                  blt          s10, tp, 792f
                  sltiu        s4, s11, 1591
787:              add          t2, a3, s8
                  or           t3, ra, t0
                  srai         s6, s10, 25
                  nop
                  blt          a4, a5, 811f
792:              slli         a3, t6, 7
                  ori          s4, s8, -172
                  slti         zero, s9, -666
                  slli         a3, s7, 8
                  addi         s9, zero, -2 #init loop 0 counter
                  slt          t5, s10, s4
                  nop
                  xor          s10, s5, t2
                  ori          s1, gp, 1733
                  slti         s1, t3, -645
                  addi         t2, zero, 7 #init loop 0 limit
                  sltu         a2, ra, ra
                  addi         s3, t3, 360
sub_5_15_0_t:     slt          a1, s9, a5
                  slti         t4, s5, 308
                  addi         s9, s9, 3 #update loop 0 counter
                  sltu         zero, s7, a4
                  sll          zero, t2, a1
                  xor          s10, sp, s5
                  sub          s2, t4, t6
                  add          s1, a0, s8
                  andi         t1, a7, -110
                  sltu         s0, s2, s0
                  srli         tp, t5, 20
                  bltu         s9, t2, sub_5_15_0_t #branch for loop 0
                  slli         t3, s2, 2
                  blt          s0, a7, 798f
                  srl          tp, s10, t3
798:              xor          s0, a6, zero
                  srli         a4, a5, 27
                  srl          a3, a3, s8
                  andi         ra, gp, -522
                  sltu         a0, ra, a2
                  addi         s5, t4, 356
                  and          s8, gp, a5
                  addi         a0, s7, -1271
                  lui          t5, 664864
                  sub          s8, a1, s8
                  ori          t3, s3, 465
                  srli         t2, t2, 5
                  blt          zero, t5, 817f
811:              bltu         t0, s9, 815f
                  bne          s0, t1, 829f
                  slli         s9, a0, 20
                  srai         s2, t5, 18
815:              bgeu         s0, a3, 835f
                  slt          s6, a0, t0
817:              and          a3, tp, t2
                  bge          s8, s3, 835f
                  slt          s1, s7, t2
                  sra          a3, s9, s1
                  bltu         a4, a7, 829f
                  bge          s0, s8, 830f
                  and          s5, s0, a0
                  bltu         s10, a0, 833f
                  addi         s11, a0, -1849
                  lui          t5, 676629
                  blt          sp, zero, 833f
                  blt          t6, sp, 838f
829:              andi         t0, s2, -1936
830:              nop
                  andi         s8, gp, 822
                  sub          tp, s5, s6
833:              slt          tp, a6, s5
                  srl          s10, a6, t6
835:              srli         a3, zero, 30
                  addi         ra, zero, -1456
                  sltu         s6, s2, gp
838:              or           t2, a5, s8
                  lui          t4, 314818
                  andi         s6, a5, -419
                  ori          a6, ra, -270
                  sltu         s8, s6, s6
                  ori          a1, a3, 1899
                  slt          a1, s0, s9
                  srl          s5, t3, a0
                  srai         t1, s11, 15
                  srl          s5, s0, s10
                  sltiu        s11, sp, -1494
                  bgeu         t1, a0, 863f
                  or           s3, s1, t0
                  andi         s11, a3, -398
                  bltu         s2, t0, 860f
                  bne          t3, s7, 873f
                  add          s5, s7, t5
                  ori          a3, zero, -1583
                  sltiu        s2, s1, -1113
                  xor          tp, s6, s8
                  addi         t0, zero, -1020
                  srl          gp, a5, t4
860:              xor          t5, s1, a2
                  srl          a1, t5, s0
                  lui          a0, 398491
863:              addi         s3, s11, 381
                  xor          s1, s2, a0
                  slt          s6, s1, s3
                  bgeu         t3, s4, 883f
                  srl          a1, t6, s11
                  bltu         s0, s9, 873f
                  auipc        a6, 801756
                  srli         t5, t4, 12
                  sltiu        t0, sp, -989
                  bne          s6, s6, 882f
873:              bgeu         ra, ra, 880f
                  bge          tp, t6, 876f
                  srai         s11, t6, 13
876:              lui          t6, 635201
                  blt          s9, tp, 890f
                  blt          sp, s9, 894f
                  srai         s9, ra, 12
880:              bge          t0, t1, 897f
                  srli         s7, s5, 14
882:              sltiu        s4, s6, 529
883:              srl          a4, t5, a6
                  and          a3, t1, a1
                  sub          zero, s5, t3
                  sltiu        a2, s4, -734
                  or           s9, zero, t5
                  srai         t0, t4, 19
                  andi         s6, s9, -1366
890:              or           s10, s9, tp
                  xori         s4, a0, 600
                  or           s4, s6, s8
                  bgeu         s8, s1, 913f
894:              bgeu         a6, ra, 903f
                  slli         zero, a2, 4
                  sra          t2, s9, s0
897:              nop
                  ori          a6, s9, 1022
                  ori          s5, t3, 1907
                  srai         a4, a6, 28
                  sub          s9, t6, s0
                  and          a1, a0, a7
903:              beq          gp, a2, 923f
                  sltiu        s6, t3, 1511
                  slt          s10, t6, a3
                  xori         ra, a3, -1900
                  bge          a3, t0, 916f
                  sltiu        s1, ra, 653
                  srli         s11, s3, 19
                  ori          t2, a7, 693
                  bne          s11, t0, 922f
                  srai         s2, s1, 23
913:              beq          a0, t4, 932f
                  blt          s10, s0, 920f
                  srai         a1, s8, 17
916:              xori         s6, a0, -267
                  slt          t6, t4, a7
                  bge          s6, s7, 925f
                  slti         a1, t3, -153
920:              srli         s1, a3, 20
                  andi         a2, s9, 929
922:              slti         t4, s10, 495
923:              lui          s11, 662640
                  srli         t4, a6, 2
925:              bgeu         t0, s6, 939f
                  bne          a7, s9, 935f
                  sll          s4, s9, s11
                  slti         ra, t4, 1676
                  blt          s8, s7, 933f
                  or           t3, s11, a5
                  bgeu         tp, t2, 932f
932:              beq          s9, a2, 934f
933:              slli         s8, s2, 19
934:              sub          t6, a6, tp
935:              nop
                  bge          s4, t5, 952f
                  xor          s11, s4, a2
                  slt          s8, t5, tp
939:              ori          s0, s3, 1263
                  and          s10, t1, s1
                  lui          t2, 6499
                  and          a2, t5, s10
                  slt          a4, a1, t0
                  xori         t4, t1, -1529
                  ori          s9, t0, -211
                  and          t3, s3, a1
                  sltiu        s3, s3, 439
                  slli         a1, s8, 4
                  and          a1, gp, s1
                  slli         a6, s6, 22
                  slti         s7, t2, 1005
952:              and          s2, s3, t1
                  blt          a1, a0, 970f
                  srai         ra, sp, 21
                  slt          s2, s2, s3
                  slli         s2, s11, 12
                  beq          s3, gp, 972f
                  srli         t6, tp, 3
                  auipc        zero, 190524
                  lui          s6, 706610
                  bgeu         s4, t5, 972f
                  bltu         a5, a1, 964f
                  nop
964:              slti         s7, s2, 292
                  slti         a1, s10, -702
                  andi         zero, ra, -1484
                  blt          t1, a0, 975f
                  addi         a4, t2, -1400
                  bgeu         a2, s4, 986f
970:              addi         zero, zero, 861
                  bne          t2, a7, 976f
972:              sltiu        s6, s7, -89
                  sub          t3, s6, a2
                  srl          tp, t0, sp
975:              slt          t3, s10, s11
976:              addi         t5, sp, -651
                  sltu         a0, a2, a0
                  sra          a6, t3, s2
                  ori          s7, s1, 1557
                  sub          t0, t6, t6
                  beq          zero, a6, 988f
                  or           a2, s10, s6
                  andi         a1, s4, 1265
                  bne          a4, t3, 988f
                  nop
986:              xori         s8, t6, -2048
                  sll          a4, s8, t6
988:              add          a6, s3, a1
                  add          a2, s10, s11
                  bltu         tp, a2, 999f
                  auipc        a6, 836037
                  sra          tp, s11, a7
                  xor          zero, s7, sp
                  bne          s6, s7, 995f
995:              blt          zero, t2, 997f
                  srli         t4, zero, 5
997:              addi         a4, a0, 400
                  beq          t5, s7, 1006f
999:              ori          a1, s8, -604
                  sltiu        a0, s11, 643
                  bne          s7, t2, 1017f
                  nop
                  sltiu        s4, t3, 1221
                  slli         a2, sp, 7
                  slti         t1, t4, -323
1006:             slli         s9, t3, 9
                  blt          a2, t3, 1024f
                  lui          s1, 310757
                  bltu         a1, s5, 1022f
                  nop
                  sra          a6, gp, s4
                  lui          t5, 674640
                  sltu         s3, s11, s9
                  bne          s3, t3, 1031f
                  andi         s10, a5, -1256
                  srli         t2, s6, 24
1017:             sll          t3, t1, s2
                  xor          s9, sp, ra
                  bge          zero, a0, 1029f
                  sra          t5, t1, t4
                  bgeu         s8, s5, 1027f
1022:             add          s5, s8, t5
                  sltu         t6, a3, a7
1024:             sll          t4, s3, t0
                  sub          a2, s10, sp
                  bne          zero, s7, 1046f
1027:             bne          s7, zero, 1044f
                  lui          t1, 71371
1029:             auipc        s1, 406357
                  nop
1031:             srli         s1, a4, 1
                  andi         s2, t4, -1761
                  xor          s1, a7, tp
                  sll          t2, s7, s8
                  beq          t1, sp, 1050f
                  slli         zero, a5, 31
                  sra          t3, t0, a6
                  slt          s10, s6, s8
                  ori          gp, s6, -174
                  nop
                  bgeu         s4, s11, 1055f
                  or           a4, s11, t4
                  srli         t4, a6, 30
1044:             bltu         a6, ra, 1055f
                  or           a6, s9, ra
1046:             srl          s11, a1, a7
                  beq          s3, a4, 1049f
                  or           a4, tp, s11
1049:             bgeu         sp, s4, 1056f
1050:             add          s2, sp, t0
                  ori          t5, s10, 1081
                  and          s3, s8, s8
                  beq          t6, s2, 1061f
                  slli         t0, a7, 29
1055:             bge          s4, gp, 1064f
1056:             srli         s10, s6, 8
                  srli         t6, gp, 18
                  bgeu         tp, s4, 1078f
                  sub          t0, t3, a2
                  srli         t2, s9, 10
1061:             blt          s6, a0, 1063f
                  add          s3, s2, a1
                  addi         t1, zero, -7 #init loop 1 counter
                  addi         s5, zero, 4 #init loop 1 limit
                  sltu         s6, sp, s11
sub_5_12_1_t:     sltiu        zero, sp, 1164
                  srl          a0, s11, s0
                  addi         t1, t1, 6 #update loop 1 counter
                  sltu         a3, s4, s11
                  sll          a1, ra, sp
                  addi         t3, zero, -3 #init loop 0 counter
                  addi         t6, zero, -15 #init loop 0 limit
                  sltiu        a4, t6, 412
                  srl          s1, a7, t2
                  ori          a6, a2, 1836
                  add          s3, a7, t6
                  slli         a2, a1, 2
sub_5_12_0_t:     sub          s7, s5, a5
                  and          tp, s8, s7
                  slti         s10, sp, 1717
                  ori          a1, s0, -1451
                  or           t5, a6, s8
                  and          s0, s9, s1
                  slt          s7, gp, t0
                  sltiu        ra, a7, -1057
                  nop
                  ori          s0, a0, 1738
                  slli         s8, s4, 3
                  srli         s10, s5, 30
                  addi         t3, t3, -6 #update loop 0 counter
                  sltiu        tp, gp, 545
                  bne          t3, t6, sub_5_12_0_t #branch for loop 0
                  and          s8, ra, sp
                  srli         s2, tp, 17
                  sra          t2, t2, t5
                  blt          t1, s5, sub_5_12_1_t #branch for loop 1
                  sra          s4, s4, a0
1063:             or           t0, s1, a6
1064:             bgeu         a0, sp, 1075f
                  ori          a3, s10, 32
                  sltu         s2, a1, s1
                  add          t1, a5, a3
                  srai         a6, tp, 4
                  slli         s0, t6, 22
                  slti         s2, a4, -509
                  ori          t6, s10, -1222
                  slt          gp, a5, t1
                  beq          a7, s1, 1093f
                  srli         t1, s10, 15
1075:             sll          s11, a5, t5
                  srl          zero, a3, a5
                  sll          s7, t4, s2
1078:             slli         t0, t6, 31
                  slli         s5, s4, 20
                  slti         s9, s2, -1393
                  bge          s10, t2, 1097f
                  sltu         a1, t0, a7
                  blt          s9, a5, 1100f
                  xori         gp, tp, 763
                  and          a1, s5, t3
                  sltu         a3, a7, t4
                  add          gp, t1, a6
                  xori         a1, s10, -1310
                  bne          t4, t3, 1108f
                  bne          t4, s5, 1099f
                  auipc        t1, 761651
                  add          s7, t4, s6
1093:             slli         s9, t5, 15
                  ori          t4, ra, -1027
                  bge          a4, a6, 1112f
                  bge          t4, s5, 1116f
1097:             bge          t6, t1, 1105f
                  sltu         a3, s7, a3
1099:             srl          ra, s7, t1
1100:             sll          t0, s7, a5
                  ori          t6, a0, -786
                  slli         t2, t0, 27
                  slt          t2, s8, s5
                  srli         t4, s2, 16
1105:             nop
                  xori         s0, a1, -1532
                  bne          a4, t4, 1120f
1108:             lui          s10, 234466
                  slti         gp, s1, 1730
                  bgeu         t0, s10, 1130f
                  blt          s11, s9, 1131f
1112:             add          s4, s2, t4
                  addi         t5, a4, 567
                  sltiu        s7, t6, -1199
                  bgeu         t6, s2, 1134f
1116:             bne          ra, a2, 1121f
                  add          t4, t2, s7
                  auipc        s8, 687549
                  slli         s1, a5, 6
1120:             sub          t1, a6, zero
1121:             xor          a4, s3, t0
                  slt          zero, zero, s4
                  sll          a0, gp, t2
                  auipc        s2, 975957
                  beq          s1, tp, 1131f
                  sll          a0, t5, ra
                  addi         a0, s11, 553
                  nop
                  andi         a1, gp, 1809
1130:             sltiu        a3, s8, -625
1131:             bge          a1, t0, 1140f
                  sll          t0, s7, a0
                  auipc        t6, 654535
1134:             ori          a3, s2, 1411
                  sltiu        a1, t6, -1893
                  srli         t4, a5, 26
                  xor          a0, s11, zero
                  andi         s2, s0, -988
                  slti         s7, t0, 442
1140:             sltu         s0, t1, ra
                  sub          s10, s1, t3
                  slli         s9, s7, 15
                  and          tp, s0, s2
                  lui          s9, 866462
                  sltu         tp, s11, a5
                  xor          t4, t0, t4
                  slti         t0, t0, 430
                  nop
                  sll          t0, tp, sp
                  sll          s2, a4, a7
                  bne          t4, t4, 1158f
                  slti         t3, t5, 1582
                  beq          s11, t3, 1155f
                  nop
1155:             sll          zero, s8, s11
                  lui          tp, 1040409
                  sll          s10, s3, t6
1158:             bgeu         a6, s9, 1175f
                  bltu         tp, s10, 1175f
                  xori         s10, s4, -731
                  add          a6, tp, t2
                  add          s3, t1, s0
                  addi         s3, t4, 259
                  sra          s10, a0, s10
                  xor          s9, t3, s5
                  sll          s6, t4, gp
                  srl          s1, t5, s5
                  srli         s8, t5, 6
                  nop
                  beq          t1, sp, 1172f
                  add          t0, a5, s10
1172:             beq          t3, a0, 1182f
                  slli         a3, t6, 4
                  lui          a6, 384911
1175:             auipc        s8, 1001204
                  bge          s8, t0, 1191f
                  lui          s0, 408248
                  and          a0, s9, tp
                  bltu         gp, s2, 1196f
                  nop
                  beq          t1, t3, 1182f
1182:             blt          zero, s6, 1191f
                  lui          ra, 838056
                  sra          s6, s3, s5
                  slt          s11, s2, t3
                  srli         s2, a4, 30
                  bge          t4, a3, 1204f
                  nop
                  andi         s9, ra, 1809
                  slt          gp, sp, gp
1191:             beq          t0, zero, 1199f
                  auipc        s2, 1013659
                  auipc        a1, 823735
                  xori         t6, zero, -703
                  srai         s1, a0, 23
1196:             blt          s4, s6, 1210f
                  bgeu         t5, a7, 1204f
                  bltu         s3, t1, 1202f
1199:             srl          s4, t5, a7
                  auipc        s2, 836577
                  nop
1202:             add          s2, s0, s8
                  bge          t3, s1, 1214f
1204:             ori          gp, a0, 1847
                  add          s6, a1, a1
                  or           a2, zero, t0
                  andi         a1, a5, -876
                  and          s8, zero, a1
                  lui          s0, 10137
1210:             bne          s3, s2, 1212f
                  sltu         s0, a1, t1
1212:             sub          a6, s0, t4
                  sub          t3, ra, s6
1214:             sltu         a4, s3, s6
                  and          s7, s8, t1
                  sltiu        t3, s8, -1630
                  xori         t3, t6, 366
                  addi         a4, t2, -740
                  slti         t6, s8, -1580
                  srli         t5, s6, 23
                  and          s11, t5, t1
                  bne          s10, a5, 1233f
                  auipc        gp, 118355
                  addi         a6, s9, -1967
                  beq          s4, s10, 1241f
                  slt          tp, tp, s3
                  xori         t0, s1, -398
                  sub          s10, a6, t5
                  slti         a0, a4, 1227
                  srli         s8, gp, 2
                  slli         t0, a7, 6
                  xor          zero, s0, s8
1233:             sltiu        gp, a4, 707
                  bge          a1, s8, 1243f
                  or           s3, s5, s9
                  beq          t4, a6, 1243f
                  lui          t1, 196252
                  lui          tp, 826435
                  bne          t6, s10, 1256f
                  srai         t5, t1, 31
1241:             xori         a4, s0, -275
                  slli         s9, zero, 21
1243:             sltu         a1, t0, s4
                  xor          gp, s4, a1
                  bge          a6, s5, 1256f
                  ori          a1, a2, -436
                  bltu         s3, a4, 1262f
                  bne          t6, s0, 1252f
                  slt          zero, s4, ra
                  slti         t0, a0, 944
                  auipc        t4, 714544
1252:             sltiu        t4, a5, 1971
                  bne          tp, s2, 1255f
                  sltiu        s3, s6, -912
1255:             bge          t4, s1, 1268f
1256:             sub          s7, t5, t3
                  bne          t5, a1, 1273f
                  xori         t5, t3, -1125
                  add          t6, t1, ra
                  bge          s4, s7, 1277f
                  slli         a3, s0, 13
1262:             bge          a7, s3, 1279f
                  srli         s7, tp, 4
                  bne          s1, s11, 1273f
                  or           s3, s9, t0
                  srai         a0, a2, 13
                  nop
1268:             xori         t1, t3, 776
                  bltu         a4, s9, 1277f
                  beq          gp, t0, 1284f
                  sll          t4, s6, s8
                  add          t4, a6, s7
1273:             srai         s6, s8, 27
                  ori          s7, s5, -350
                  srl          zero, s3, a5
                  auipc        s3, 411165
1277:             auipc        t2, 856672
                  sub          s11, t2, a3
1279:             bgeu         s9, s8, 1299f
                  sub          t4, s6, t4
                  nop
                  bltu         s1, t5, 1290f
                  auipc        t5, 395274
1284:             nop
                  nop
                  blt          s0, sp, 1305f
                  bgeu         s6, s8, 1303f
                  sltiu        t2, a1, 1845
                  and          s10, s6, s11
1290:             srl          ra, s8, s11
                  slti         a1, t5, -900
                  srl          s3, t5, ra
                  sub          tp, s2, t4
                  add          s6, t3, a6
                  addi         t3, s0, -1921
                  blt          a6, t6, 1303f
                  and          tp, t2, s2
                  sltiu        s6, a2, 253
1299:             xor          s2, a6, s10
                  blt          sp, a6, 1305f
                  xori         s9, a5, 224
                  bgeu         ra, ra, 1308f
1303:             bltu         ra, s3, 1323f
                  xori         a0, s4, 119
1305:             sub          s11, gp, s3
                  lui          s11, 206799
                  nop
1308:             sra          gp, t5, s4
                  andi         a3, s3, 302
                  bge          s2, a6, 1319f
                  sll          s3, s5, tp
                  or           s1, sp, a5
                  xor          t6, s11, s0
                  bltu         s9, a3, 1334f
                  bltu         zero, t0, 1317f
                  ori          s11, zero, 1485
1317:             nop
                  addi         ra, s4, -1071
1319:             beq          t2, t6, 1328f
                  blt          a2, gp, 1337f
                  bne          t4, s3, 1323f
                  bgeu         gp, t4, 1332f
1323:             srli         t0, s9, 20
                  xori         t2, s2, -1193
                  andi         s9, s2, 1538
                  andi         t5, zero, 314
                  andi         a4, t2, 1635
1328:             and          s7, a1, a1
                  or           t0, t3, t4
                  lui          s8, 520931
                  blt          a0, t1, 1332f
1332:             blt          s6, a3, 1343f
                  lui          s9, 341839
1334:             sub          s7, gp, ra
                  xori         s0, ra, 1821
                  srai         s11, s8, 14
1337:             xori         ra, a6, -568
                  bne          s0, s3, 1348f
                  auipc        tp, 669767
                  beq          a3, s5, 1344f
                  add          gp, t5, s2
                  sltu         s2, ra, a3
1343:             bgeu         a4, zero, 1345f
1344:             bge          s7, s9, 1361f
1345:             xori         t6, a4, -752
                  sll          ra, s3, s7
                  blt          s1, t1, 1349f
1348:             andi         t2, s1, -1142
1349:             xor          t4, s5, t0
                  lui          s4, 160691
                  slti         s8, t1, 234
                  and          a4, t1, t0
                  andi         s6, s9, -919
                  bltu         a0, zero, 1366f
                  bltu         t4, s8, 1366f
                  srli         s6, s5, 22
                  slt          a3, t2, ra
                  srl          zero, tp, t4
                  slli         s5, t3, 13
                  bne          s5, t2, 1366f
1361:             sltiu        t1, t0, -1007
                  slti         a2, t4, -1170
                  sll          t6, s11, s7
                  srl          tp, ra, s8
                  xor          gp, a6, s9
1366:             slt          t3, s9, s3
                  lw           t5, 4(a7)
                  addi         t0, s1, -1573
                  slti         s10, a2, 1584
                  addi         a7, a7, 48
                  sub          s6, ra, s9
                  addi         s9, t6, -1232
1960:             addi x3, x30, 1
1960:             jalr x3, x3, 0
sub_4:            lui          s2, 214749
                  slt          s10, a7, a3
                  nop
                  bge          t0, t6, sub_4_stack_p
                  slti         t4, a3, -634
sub_4_stack_p:    addi         a7, a7, -16
                  xor          t0, s7, a1
                  andi         a2, s5, 606
                  sw           t5, 4(a7)
                  addi         t3, t6, 791
                  xori         s2, s9, -1945
                  la           t2, sub_5
                  and          s10, t0, t3
                  lui          s3, 1006667
                  andi         gp, s10, 91
                  addi         t2, t2, 761
                  sltu         s10, s8, ra
                  sll          s11, s0, t5
sub_4_j6:         jalr         t5, t2, -761 #jump sub_4 -> sub_5
                  addi         s7, zero, 10 #init loop 1 counter
                  sra          zero, s10, s3
                  sub          t1, s6, a4
                  lui          a6, 700129
                  srli         zero, a3, 1
                  srli         t3, gp, 26
                  or           tp, t6, s1
                  sltu         t6, tp, ra
                  addi         s4, zero, 9 #init loop 1 limit
                  slli         s9, s0, 24
sub_4_0_1_t:      auipc        t4, 362604
                  slli         s9, s5, 19
                  sltu         t0, s8, s5
                  addi         s7, s7, -2 #update loop 1 counter
                  xori         a1, t4, -134
                  addi         a3, zero, 9 #init loop 0 counter
                  xor          tp, s9, t6
                  srli         tp, s10, 8
                  add          s0, t5, a0
                  addi         a2, zero, 6 #init loop 0 limit
                  sltiu        ra, gp, 1481
                  sub          ra, t2, t6
                  or           s2, sp, s6
                  ori          s10, a3, -804
sub_4_0_0_t:      or           t6, s3, t5
                  lui          a6, 661068
                  ori          a0, s6, 1355
                  xor          a1, s7, t0
                  slti         t1, t5, 38
                  slt          zero, a5, s5
                  addi         a3, a3, -2 #update loop 0 counter
                  bgeu         a3, a2, sub_4_0_0_t #branch for loop 0
                  addi         t2, s3, -619
                  bgeu         s7, s4, sub_4_0_1_t #branch for loop 1
                  sub          s10, a5, a7
                  bgeu         t6, t3, 10f
                  xori         t0, t5, 1568
                  bgeu         t6, s1, 15f
                  sll          ra, a5, t5
                  xori         zero, s3, 450
                  slt          t4, t5, s10
                  or           gp, tp, t1
                  bne          t2, s0, 15f
                  slli         s6, tp, 4
                  sltu         a2, a5, s1
10:               slt          t6, t2, s7
                  ori          s0, a2, -1352
                  auipc        s0, 994701
                  blt          ra, tp, 30f
                  nop
15:               xori         s9, t3, -1475
                  sll          ra, s1, s1
                  nop
                  nop
                  srai         s5, s2, 5
                  addi         ra, sp, 1274
                  andi         s10, s7, 62
                  srli         t1, t6, 23
                  bne          s1, t2, 35f
                  srl          a2, a6, tp
                  srai         a3, a7, 17
                  andi         a1, s5, -848
                  srli         t5, t5, 14
                  addi         s7, s1, -134
                  srai         s1, s10, 27
30:               srl          a2, a4, s1
                  add          s3, t2, s4
                  bgeu         s6, s9, 36f
                  auipc        ra, 360170
                  lui          s0, 886886
35:               slt          s7, sp, a2
36:               or           a1, a5, s0
                  andi         ra, s0, -162
                  srli         s7, s6, 15
                  slt          s11, sp, tp
                  srli         s11, s10, 21
                  xori         s11, s1, -1279
                  bne          s6, t0, 48f
                  sra          a6, a0, a1
                  slt          s10, t1, a5
                  sltiu        t3, s2, 2039
                  bgeu         s0, a4, 49f
                  bge          s7, a7, 49f
48:               sltiu        t0, s11, 343
49:               xor          s11, s3, s5
                  nop
                  and          a4, s6, tp
                  bne          a7, t4, 64f
                  xori         s11, s0, -1835
                  bltu         a3, a5, 62f
                  bltu         t5, t3, 64f
                  sltiu        s9, s9, -1394
                  add          s11, zero, t2
                  sub          a0, s6, a3
                  ori          s10, t5, 351
                  blt          t3, a0, 64f
                  ori          s8, s11, -1412
62:               slti         gp, s10, -1391
                  sltu         t6, a0, ra
64:               xor          a4, s0, t0
                  lw           t5, 4(a7)
                  andi         a6, s8, 1618
                  slti         s11, t3, -769
                  sub          a2, s8, a7
                  sub          a6, a6, s0
                  slt          gp, s9, s2
                  addi         a7, a7, 16
                  andi         tp, t3, -356
127:              addi x29, x30, 0
127:              jalr x29, x29, 0
sub_2:            addi         a7, a7, -8
                  auipc        s2, 503465
                  slli         s3, sp, 17
                  sw           t5, 4(a7)
                  slli         a6, t6, 11
                  addi         zero, sp, 775
                  slt          s10, t1, a3
                  sra          t0, s8, s8
                  andi         t6, t1, 352
                  sltu         a0, s4, a3
                  add          a0, s10, t3
                  sltiu        s1, s7, 506
                  bltu         s8, t3, sub_2_j4 #branch to jump instr
                  sltu         t5, sp, a4
                  addi         a2, s1, -1363
sub_2_j4:         jal          t5, sub_3 #jump sub_2 -> sub_3
                  lui          s11, 370398
                  srai         s8, a7, 3
                  ori          a6, s3, 1716
                  bne          a1, s9, 9f
                  sltiu        a4, a0, 657
                  beq          a2, s0, 9f
                  srai         t0, s4, 28
                  andi         t5, tp, 1488
                  add          ra, tp, s9
9:                slli         s8, t5, 12
                  lw           t5, 4(a7)
                  nop
                  sll          gp, tp, s5
                  addi         a7, a7, 8
                  srl          t4, t6, s9
                  slt          s0, t6, s7
32:               addi x30, x30, 0
32:               jalr x30, x30, 0
sub_1:            sub          s3, a5, t5
                  nop
                  addi         a7, a7, -16
                  xori         s7, s10, -1954
                  sw           t5, 4(a7)
                  auipc        s10, 579452
                  srl          a1, t6, sp
                  nop
                  addi         t3, zero, 3 #init loop 0 counter
                  sra          s4, t6, t4
                  andi         s6, s3, 388
                  sll          s4, a0, s11
                  addi         s9, zero, -16 #init loop 0 limit
                  srai         a4, s6, 6
                  slli         a6, a1, 2
                  lui          a4, 407815
                  sll          t0, a4, a4
sub_1_2_0_t:      sltiu        ra, s1, -1150
                  slt          a4, a5, a6
                  addi         t3, t3, -10 #update loop 0 counter
                  ori          s5, zero, 1994
                  srli         s4, s9, 18
                  bge          t3, s9, sub_1_2_0_t #branch for loop 0
                  srli         t4, s5, 4
                  addi         t2, zero, 3 #init loop 0 counter
                  addi         s10, zero, 15 #init loop 0 limit
sub_1_1_0_t:      ori          a3, a5, 106
                  auipc        t3, 881195
                  sub          a1, t3, sp
                  slti         a0, s11, -676
                  addi         t2, t2, 7 #update loop 0 counter
                  blt          t2, s10, sub_1_1_0_t #branch for loop 0
                  xori         t0, tp, 767
                  lui          t1, 156139
                  or           s0, a6, s2
                  blt          gp, sp, 10f
                  xori         t5, s11, -1495
                  xor          s5, gp, t6
                  bge          s7, t1, 23f
                  and          a1, a6, a5
                  bne          gp, s10, 24f
                  xori         a6, ra, -502
                  bge          t2, s9, 13f
10:               sub          t1, a6, t3
                  sub          s11, a3, tp
                  bne          a5, s3, 22f
13:               sltiu        a2, a2, 911
                  srli         t5, s1, 17
                  lui          t5, 975461
                  sltiu        zero, gp, -263
                  ori          s8, a3, 1837
                  bne          s0, s10, 21f
                  blt          s10, a1, 32f
                  add          t5, zero, a1
21:               ori          a2, a1, -837
22:               sub          ra, s1, t3
23:               slt          gp, sp, a4
24:               lui          s3, 924552
                  slt          ra, s2, a3
                  srli         s10, a4, 22
                  sra          s5, a0, tp
                  sltiu        s0, s10, -1364
                  sll          s5, s6, a7
                  beq          s9, s0, 41f
                  add          a2, s0, a3
32:               andi         s0, t0, -756
                  xori         a4, t3, 1576
                  and          s7, s6, s3
                  addi         s2, t6, 1083
                  bltu         tp, a0, 54f
                  xori         a1, t0, 1987
                  or           zero, ra, s5
                  ori          tp, s6, -1888
                  andi         tp, a2, 501
41:               auipc        t1, 475573
                  bgeu         t1, s10, 50f
                  andi         gp, t5, 1014
                  bge          t2, t0, 46f
                  lui          a6, 833652
46:               sltu         t6, a3, t5
                  lui          zero, 411577
                  or           a1, s11, s5
                  bge          t5, s11, 64f
50:               andi         t3, a5, -411
                  slti         t3, s9, 38
                  add          gp, s7, s10
                  blt          zero, s7, 73f
54:               ori          t5, s4, 181
                  sub          s0, a6, s2
                  bne          a4, sp, 64f
                  slt          gp, s9, a7
                  sltu         t2, s7, s9
                  andi         s0, t6, 411
                  sra          t4, s5, a4
                  srai         a3, a4, 22
                  or           a2, a0, s5
                  addi         t0, t2, 404
64:               or           s4, s7, t2
                  beq          s9, ra, 76f
                  or           s4, zero, t3
                  bge          s11, s1, 71f
                  sltu         s7, gp, zero
                  slt          s3, a5, t1
                  xor          gp, t3, s10
71:               lui          s8, 318142
                  add          t5, sp, s6
73:               and          t2, t6, t3
                  blt          t3, t3, 93f
                  sub          t4, t2, s5
76:               addi         a1, s10, -493
                  bge          s11, s9, 80f
                  srli         t3, ra, 5
                  sltu         t1, tp, a2
80:               slli         a4, t3, 13
                  auipc        a4, 336085
                  add          a3, a6, tp
                  beq          sp, s7, 93f
                  bltu         t2, s0, 97f
                  auipc        s2, 398614
                  srl          s10, a0, t6
                  sll          t3, t0, t4
                  bltu         t0, tp, 101f
                  blt          zero, s4, 104f
                  nop
                  bgeu         t4, t6, 102f
                  slli         gp, s5, 16
93:               sll          s8, s4, t1
                  bgeu         s0, s2, 114f
                  bgeu         t1, tp, 113f
                  sltu         s7, t5, s1
97:               slli         s6, s10, 18
                  xori         tp, s1, -952
                  bltu         t2, s9, 100f
100:              sub          s0, s2, s9
101:              addi         s7, a2, 1901
102:              slti         s7, a7, -1337
                  slti         a2, s6, 2037
104:              addi         s5, s2, 563
                  addi         a0, zero, -6 #init loop 1 counter
                  addi         s10, zero, -18 #init loop 1 limit
sub_1_0_1_t:      xor          s6, zero, s8
                  addi         a0, a0, -4 #update loop 1 counter
                  addi         ra, zero, -2 #init loop 0 counter
                  addi         s2, zero, -20 #init loop 0 limit
                  xori         zero, t4, 1976
sub_1_0_0_t:      and          t1, a5, a0
                  addi         ra, ra, -2 #update loop 0 counter
                  bge          ra, s2, sub_1_0_0_t #branch for loop 0
                  beq          a0, s10, sub_1_0_1_t #branch for loop 1
                  or           s6, s3, sp
                  sll          gp, s2, a5
                  sll          t2, s11, a2
                  or           s3, s0, a2
                  bltu         a4, s1, 112f
                  bgeu         a3, s3, 116f
                  srai         s7, a3, 23
                  lui          a0, 927432
112:              srl          t5, s4, a0
113:              srli         ra, s5, 26
114:              bltu         t6, s0, 116f
                  slti         s5, a4, 1997
116:              xor          t5, ra, s7
                  and          a2, s7, s4
                  slli         zero, a3, 3
                  beq          tp, a6, 135f
                  slt          s11, ra, s3
                  lui          a0, 382491
                  and          s0, s9, s9
                  slt          t5, t4, a0
                  sra          t5, a5, s3
                  xor          s2, s9, a2
                  auipc        a2, 321348
                  xori         s5, s1, -694
                  sub          zero, t3, ra
                  sll          s4, t4, t4
                  nop
                  slti         t2, s7, -1005
                  bne          t0, s0, 142f
                  sltiu        s4, t1, -1858
                  lui          zero, 723142
135:              and          s9, t0, t6
                  add          s2, t0, t0
                  srli         t2, gp, 26
                  andi         s11, zero, -844
                  and          t0, s2, zero
                  ori          s11, s6, -1530
                  slt          a1, t6, a3
142:              srl          s7, t6, zero
                  nop
                  slli         s11, a4, 28
                  slli         ra, t0, 21
                  slti         t6, a5, -263
                  addi         t5, s6, -978
                  beq          s3, sp, 152f
                  sll          s1, t3, t5
                  sra          s8, a7, t3
                  bgeu         a2, a4, 159f
152:              ori          s11, gp, -1866
                  sltu         t0, a4, ra
                  sltiu        s2, t5, -927
                  xori         s1, s9, -1070
                  beq          a1, tp, 164f
                  xor          t6, t2, t2
                  addi         ra, s10, -826
159:              bltu         gp, zero, 176f
                  sll          s4, t5, sp
                  or           s2, s11, a3
                  and          s9, t6, s2
                  srli         s0, gp, 26
164:              xori         t5, a5, -964
                  bne          a7, tp, 178f
                  bge          s9, s4, 177f
                  slli         gp, s8, 16
                  xori         t5, s5, 1536
                  sltiu        t0, s1, -413
                  sll          t5, gp, t3
                  addi         t3, a2, 430
                  bltu         s11, s2, 175f
                  blt          t3, t5, 175f
                  xor          s5, s7, s2
175:              add          s6, a2, ra
176:              lui          tp, 127888
177:              sltiu        t6, a4, -1352
178:              slti         s10, s0, -921
                  addi         s7, t0, -1418
                  bgeu         ra, a1, 187f
                  and          t3, s1, s0
                  ori          t0, a7, 1256
                  addi         a0, a5, 653
                  slli         t0, a3, 7
                  bne          t4, t2, 188f
                  ori          s6, a1, 961
187:              bltu         t3, a3, 191f
188:              andi         t3, s11, -1280
                  lui          s2, 134006
                  and          s11, s8, s11
191:              xori         s10, t3, 1676
                  bge          s5, s5, 194f
                  addi         ra, a6, 1379
194:              sub          a3, a5, a6
                  lw           t5, 4(a7)
                  slti         s3, a6, 1090
                  slti         a0, tp, -2011
                  addi         a7, a7, 16
                  sltiu        s5, sp, -138
                  sll          s1, ra, t5
246:              addi x27, x30, 0
246:              jalr x27, x27, 0
sub_3:            blt          t6, s10, sub_3_stack_p
                  slli         s10, s5, 15
                  or           a0, s9, a0
                  ori          s8, t4, -1778
                  nop
sub_3_stack_p:    addi         a7, a7, -28
                  srl          tp, t1, a0
                  sw           t5, 4(a7)
                  or           gp, t3, s3
                  srl          s3, a7, a6
                  srli         a3, a0, 10
                  lui          ra, 445305
                  addi         s11, s2, 769
                  xori         t2, s9, -190
                  la           s3, sub_4
                  ori          tp, a1, -1595
                  srai         s11, a1, 25
                  addi         s3, s3, 894
                  or           t0, t5, s11
                  bne          s1, gp, sub_3_j5 #branch to jump instr
                  or           a3, a7, s0
                  andi         s10, s11, 1358
                  slli         t5, a3, 14
                  sltu         s2, a5, a0
sub_3_j5:         jalr         t5, s3, -893 #jump sub_3 -> sub_4
                  addi         a2, zero, 8 #init loop 1 counter
                  sra          t6, s4, sp
                  addi         s8, zero, 5 #init loop 1 limit
sub_3_0_1_t:      slt          s2, s3, t1
                  srai         a1, zero, 12
                  addi         a2, a2, -2 #update loop 1 counter
                  addi         t5, zero, -4 #init loop 0 counter
                  addi         s7, zero, -8 #init loop 0 limit
sub_3_0_0_t:      addi         ra, s6, -1844
                  addi         t5, t5, -1 #update loop 0 counter
                  slli         s6, s6, 6
                  bge          t5, s7, sub_3_0_0_t #branch for loop 0
                  and          zero, a6, s8
                  auipc        s1, 406503
                  bgeu         a2, s8, sub_3_0_1_t #branch for loop 1
                  ori          t0, t5, 1077
                  or           s9, s5, ra
                  add          t1, s9, s9
                  andi         s0, s9, 648
                  beq          s2, a6, 16f
                  sltu         a3, a5, sp
                  sltu         a1, a6, s6
                  srl          s9, s1, t1
                  beq          a0, zero, 20f
                  and          t6, a7, t5
                  sra          a1, s10, t3
                  xor          s7, s1, s3
                  lui          zero, 724373
                  sltu         a3, a7, a2
                  sltu         t4, t5, t2
                  addi         ra, t2, -1009
                  bne          s8, a4, 25f
16:               auipc        t0, 651621
                  bge          a5, a6, 37f
                  and          t6, a5, s2
                  ori          s0, s10, -1208
20:               beq          s0, t1, 21f
21:               or           s4, s8, tp
                  addi         t4, zero, 676
                  bgeu         t1, s2, 24f
24:               and          tp, t2, a4
25:               beq          t4, s8, 41f
                  sub          a0, a0, s0
                  blt          s11, s7, 42f
                  bne          a1, a0, 46f
                  nop
                  slli         a1, gp, 28
                  lui          s4, 340593
                  beq          s9, sp, 45f
                  sll          s9, gp, t4
                  sltiu        t4, zero, 1975
                  srai         t1, s8, 20
                  sltu         t1, t2, a5
37:               sltu         s3, t1, t1
                  srli         a4, s2, 2
                  sub          s3, a4, sp
                  beq          a0, s2, 58f
41:               slli         s7, a6, 21
42:               sub          a3, t3, sp
                  ori          s6, s8, 131
                  srl          s11, s8, t5
45:               beq          a5, a3, 56f
46:               ori          s1, s5, 108
                  slli         s1, s6, 20
                  sll          s1, t3, s0
                  auipc        t1, 456291
                  sub          t2, t5, s6
                  lui          s4, 809117
                  blt          a0, t4, 66f
                  slli         tp, gp, 11
                  nop
                  or           t6, t6, a7
56:               sltiu        a2, gp, 1520
                  srli         a4, a2, 6
58:               ori          t3, tp, 863
                  add          s4, a2, a5
                  srai         gp, t4, 31
                  slti         s3, tp, 1027
                  bne          a0, t5, 63f
63:               sltiu        s9, s0, 272
                  sltiu        s3, t6, -792
                  xori         s11, s2, 764
66:               nop
                  and          ra, t6, a1
                  slt          a4, t0, a4
                  andi         s1, t1, 2008
                  xori         a6, tp, -1937
                  srl          t6, t4, zero
                  slt          s6, a5, a4
                  bltu         s9, s0, 74f
74:               addi         t1, s10, 298
                  srl          a3, s11, s4
                  bge          s11, t6, 80f
                  auipc        a0, 366465
                  add          s0, sp, a6
                  srl          s2, sp, s7
80:               srai         t6, s1, 7
                  and          a4, a4, s6
                  lw           t5, 4(a7)
                  addi         a7, a7, 28
                  srai         tp, a4, 1
                  xori         a6, s2, -272
127:              addi x30, x30, 0
127:              jalr x30, x30, 0
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
.word 0xdf7ba71e, 0x5f007493, 0xb99c4828, 0x18d6601c, 0x6e119f83, 0xf5380f54, 0x0fe624ec, 0xb0ea3370
.word 0xcd75574e, 0xb906bd69, 0xf7f94e38, 0x6d4606bb, 0x8074eb67, 0xab694087, 0xdea0c816, 0x5eba8415
.word 0x8d031df4, 0x81fc111f, 0xbfa22517, 0xaa4194b8, 0xad315cc8, 0x97752d93, 0x3d21a143, 0xa17f1958
.word 0xa43d7a71, 0xb28a067b, 0xf76ab580, 0x9ff010ac, 0xc1aab74b, 0x9479f20e, 0x6f8cb63d, 0xe147dd5c
.word 0xedf845b0, 0x1d8fc5da, 0x9c45e34b, 0x24ea6e1a, 0xcc452782, 0x82d8433a, 0x5b363942, 0x73248d82
.word 0xf8c16a57, 0xbb3f0752, 0x0102cb0e, 0x7e44d1b1, 0xd16ae085, 0x771a9e20, 0xf142a987, 0xe9d5134f
.word 0xaefe8804, 0x132dc9a3, 0x89853e53, 0x745a1410, 0xc0c82c53, 0x384e7e90, 0xfb486150, 0x0b6b75d9
.word 0x4514058a, 0xb067796e, 0x302ce54c, 0x080d2792, 0x1793f856, 0x9e750646, 0xfcf022f8, 0x127a69c8
.word 0x468c7beb, 0x5a289820, 0x3dc99d18, 0x59d13d16, 0xa1b5a48f, 0x05366bd8, 0x51f5879f, 0xc6d16e74
.word 0x5638f888, 0xbb04ee47, 0x003c0586, 0xfe921dfe, 0xd95c8bc0, 0x72c1c821, 0xb4a001ba, 0xed324fa6
.word 0x2fbe5d71, 0x59b8a2b2, 0x1fad4bbb, 0x3a5ba0e4, 0xfe711291, 0xd8cc2a4c, 0x45e1f000, 0xca79a38b
.word 0x9ed7f754, 0x6ac7b8e5, 0xfa7f561c, 0x4eb09505, 0xc840d296, 0xea021139, 0x7b9698aa, 0xfbe97542
.word 0x81422608, 0x76df4646, 0xe3291ac0, 0x79d5d7b5, 0xfbebd608, 0x4684af29, 0x6d0abe9f, 0x9250f2a6
.word 0x94779e5a, 0xfb28abd3, 0x40abf705, 0xa2ae3ec5, 0xb35547a7, 0x80b02d6c, 0xb57ca25c, 0xaf177f8e
.word 0x0cc3bfc8, 0x8d9b8067, 0xddceb1fb, 0xfd113398, 0x514dc21f, 0xed7133b2, 0xc4e9938b, 0xb893cb91
.word 0xe3a09a9a, 0x65b2d777, 0x3abaf70a, 0x18d014e4, 0x3d453089, 0xe144be5d, 0xac8b9754, 0x041d66f2
.word 0xc44f3b6a, 0x66c48b4d, 0xc5deb773, 0x2d85ac0c, 0x210c0f5f, 0x2408b3d7, 0x25164f1b, 0x7830871e
.word 0x4d49d45d, 0x36f3a5ac, 0xb64867ba, 0x0a4502e5, 0x6ce25a59, 0xdb48c0a1, 0xa9b4df6f, 0x1704b614
.word 0xdfd6a859, 0x5ce4b55c, 0x2b9a980c, 0x25e024e9, 0x83f4cab2, 0x070c033d, 0xf8791078, 0xd7624104
.word 0xa87cd11c, 0x37efbff5, 0xaa474c35, 0x4c7a23df, 0x236acc7c, 0xc0bd5955, 0xdb6fb98a, 0xa4f757cd
.word 0xae93d926, 0x156027db, 0xe045d072, 0xd568c480, 0xc85e7e30, 0xd04d35d1, 0x9b57a085, 0x6c3cdb5b
.word 0x3a0d5a27, 0x0b44c150, 0x326b81a3, 0x52e304c8, 0x6056a463, 0x2ce2f845, 0x57ece08b, 0xd01148e1
.word 0x686b37c1, 0xa272bdcf, 0x906b80a1, 0xf14b99fa, 0xc0d96bf1, 0x82cfa1bc, 0x294a1b3c, 0xd9e5fb8a
.word 0xe63fd2a2, 0xc445e15f, 0xf4a4b65b, 0xfe87bee8, 0xc565f86f, 0xd8950fea, 0xc0e57430, 0xb1474017
.word 0x04da1d2b, 0xd39e16a5, 0x142b0596, 0x5e663b53, 0xc0095ec4, 0x938c0e1c, 0xe8f576b0, 0xf76447bd
.word 0xbaa706e2, 0xdf5aae63, 0x712d7c53, 0x68f55ba6, 0x21f90685, 0x946b0e56, 0xa99ec4e0, 0x55ee5b7d
.word 0x67a2ece2, 0x6bc6eb2e, 0xe2b9e9f3, 0x4399964f, 0x28f830c3, 0x007a5b4e, 0xc09dd638, 0x65a3967f
.word 0xbba0ee2b, 0xd3c26a45, 0xa91673b1, 0x73fa994c, 0xfe7d9f3c, 0x59c14d16, 0x3d918c66, 0x0a278684
.word 0xc68a958d, 0x8d7be587, 0x94d1ecd9, 0x981b4026, 0x6e77417b, 0x2bc6eda4, 0xd1a2c5eb, 0x90314d5a
.word 0x8cc16568, 0x4b715236, 0xae60e8cd, 0xb297f359, 0xc9156e65, 0x8c5fc2fa, 0xb4e39bbf, 0x4b0e9d6a
.word 0xc4d0120c, 0x52957f3e, 0xef99a3f2, 0xb3fa7f34, 0x7aec1aaa, 0x4b7ec286, 0xc086b19b, 0x107ef4f4
.word 0x0299a1c0, 0x605cd448, 0x9bab09fb, 0x1c249a75, 0x5c766023, 0xc59a375c, 0xf321889d, 0x66358d2f
.word 0x895247b0, 0x6b3bb912, 0xed763a7d, 0x3dd890d4, 0xec02c878, 0x1d7bd439, 0x5fa986ed, 0x1f1ba784
.word 0x44df71ee, 0x57eea796, 0x9f382a73, 0x0f566684, 0xf9bce346, 0x5e064e30, 0x6c7bf4e7, 0x2c4b4beb
.word 0x74ed424b, 0xda9741c5, 0x31a7d47a, 0x14c2a55a, 0x3f322516, 0x8a36cb66, 0x87bf8700, 0xdd7e0a2e
.word 0x190f5dd7, 0x211ab11e, 0x27411147, 0x04d87989, 0x3fcf0651, 0x4f3c39d6, 0xffec01ae, 0x009f759f
.word 0xd612fc3c, 0x37ddfa99, 0xbf246605, 0xef5dc39d, 0x404b6967, 0xf77be484, 0x5022f0da, 0x7bfba65a
.word 0x3874bdb9, 0x5de83225, 0x3006ed68, 0x613d91c6, 0x0804ba67, 0x7e959cd3, 0xdd0c2eae, 0x75399afe
.word 0x7c9c1f80, 0xbf9effa4, 0x4d1fa5c3, 0xb8a0bea8, 0x61ec188e, 0x8c18193e, 0x8441b654, 0x6a0cfd6f
.word 0x60c19130, 0x4185eff3, 0x981341aa, 0x1d516527, 0x054d6d21, 0x68de6d90, 0xe6e959ff, 0xaf8555b8
.word 0xcb382852, 0x8dab523d, 0x1b361afa, 0xd9672c21, 0x851d29ca, 0xc6e7ec28, 0x27d12a04, 0xe2fc549b
.word 0xd7d29ca2, 0x53005418, 0xb580e805, 0x3bbbf28b, 0xa45198fa, 0xd6b9035f, 0x4f42a42e, 0x7ba6b96e
.word 0x617d6b78, 0x88d51150, 0xc059c155, 0xeca7640c, 0x0693146b, 0x42913afb, 0x006ba966, 0x64de2f44
.word 0x942a942b, 0xc4e0417e, 0x51327dea, 0x8f5e6bbf, 0x4eca9410, 0x43035f08, 0x7e388b9c, 0xa59de4b4
.word 0x635ffec5, 0xe0a305fa, 0xb34d2de7, 0xda81d347, 0xb06eb3d3, 0xf0f13576, 0xb0ce79ff, 0x1bb15752
.word 0xee358105, 0x537aa732, 0x9eb94d1a, 0x990d1c41, 0x2465e7e8, 0x949cfe95, 0x551a6cb3, 0xd69d0687
.word 0x1089c009, 0x47a6e5e8, 0x8259350e, 0x9fd080f4, 0x9d47c589, 0xd9bda27f, 0x8f4ed9e2, 0x6836f0d7
.word 0xbae90f06, 0x891946a1, 0x4dbcd96c, 0xd1ad6d1b, 0xb60544ac, 0xbbc23350, 0x6b44e605, 0xbda76658
.word 0x7e75b6e5, 0xe957fe64, 0xfd2f6f82, 0x9e9a72c7, 0x532227c8, 0xd6575db7, 0x691b5f33, 0x24ddbb20
.word 0xd8369468, 0x48f9b5d7, 0x932a3d5d, 0x7c265ade, 0x43d79c6b, 0xa21e0bc9, 0x1097e986, 0x761e9655
.word 0x7285f76d, 0xcce37bcc, 0x3f8e3b67, 0xe820a7a7, 0x5d1d70e4, 0xc06cb7aa, 0x3d750a68, 0x8309de17
.word 0x89f24c35, 0x6170b4d4, 0xa44f3442, 0x28ede4ee, 0x8cc1f5a0, 0x9a95dc21, 0x90007c01, 0xb3f2d352
.word 0xec598a4c, 0xe604540b, 0x942d1e6a, 0xea81d6b4, 0x9f2bedd9, 0xc8e5f745, 0xa946af8c, 0x8f5d252e
.word 0x3f48f378, 0xfa342e5e, 0x52ccd0cd, 0x2704bdf7, 0xb2d28dde, 0x5209e2eb, 0x6cec3b06, 0xb3a2171d
.word 0x3ad46e98, 0xf4f1194c, 0x8cad4caf, 0xf7871b9f, 0xc96e50f3, 0xc731e1ed, 0x39b92b39, 0xc1e35b8d
.word 0x13f50d22, 0x6a6c7d04, 0x329cdafe, 0xe5f2bbf5, 0x1206003c, 0xe5215cd9, 0xa76daef0, 0xe3537e40
.word 0x929f61ae, 0xdc8c0d42, 0x2fef11ab, 0x8d9e7832, 0xffdc02d0, 0x0ad3b924, 0x98a3ff0a, 0x78e7d172
.word 0xc0bcb545, 0x8c44d40a, 0x6821c5e1, 0x1ef23b6b, 0x802027c2, 0xa06d4458, 0x79073828, 0xa65966f8
.word 0x814b7bea, 0xa8eb1282, 0xfc3e5ea2, 0x44cb53b5, 0x9e9154ca, 0xf2a58739, 0x5ad521f6, 0x14ac3e34
.word 0xd9cdb8b5, 0x69277e29, 0x98e968ea, 0x627a96b2, 0x5dd2fd58, 0x7706663e, 0x30d7112d, 0x39b6f353
.word 0x44e08a76, 0x594768e1, 0x17b632a2, 0xc850d8ce, 0x84831df5, 0x8e90a65b, 0xc3966861, 0x237afb38
.word 0xbe9b82c1, 0x2628563a, 0x83de494e, 0x75801d51, 0xe2548ee2, 0xa3147b90, 0xd940bc1e, 0xa2480246
.word 0xa63be174, 0x71474ca8, 0x0a791174, 0x9df6919d
.section .region_1,"aw",@progbits;
region_1:
.word 0x03e75101, 0x62cea5d6, 0x862542bb, 0x50434823, 0xdcacdb60, 0xf72b7364, 0xe7e1ae12, 0xb964fa59
.word 0x05db3064, 0x22562f9b, 0x809f916a, 0xd0fc8a98, 0x43b4b045, 0xe99763ad, 0xf3c0e694, 0xeb5991f1
.word 0xef47f855, 0xf9a91c5b, 0x825bbd99, 0x3d3a0c42, 0x8fa422d7, 0xdb0ccd66, 0x7e4ee33f, 0x9540f267
.word 0xb69a8c17, 0x5e3462a9, 0x4b077445, 0xbff1aaf7, 0xd4ef9571, 0x21c72a7d, 0x2285c90b, 0x5b5971ac
.word 0x335271fa, 0x80534b54, 0x1b82633f, 0x127838f2, 0x84ed441f, 0xb4bde1f6, 0xe2b1b710, 0xa107944a
.word 0xc896abf0, 0x920f2e1b, 0xa8a78f7d, 0xf932ecc6, 0xc0a7e686, 0xf26c79b2, 0xe0db29fe, 0xf6e6b2ac
.word 0xa260db81, 0x6ed7256f, 0xd711b789, 0x44ee0c33, 0x2358d078, 0xf91133ba, 0x2d5e8be1, 0x1d3e53fb
.word 0xf624880a, 0xf97ad371, 0x37849252, 0xe1403e0e, 0x658083f7, 0x34e8a5b2, 0x5652df13, 0xfc754cee
.word 0x026183ae, 0xc4829bdc, 0xdd3a85cf, 0x89939c29, 0x9a0a1818, 0x63071ab3, 0x8d427cb9, 0xba2ac964
.word 0xbdabbe0f, 0x60ba573a, 0x16505251, 0xe0977e3a, 0x31674020, 0x010dcc5e, 0x8529dcf1, 0x5cc5b0f1
.word 0x15c96f38, 0x0fbed33b, 0xc0a86e83, 0x35ee2296, 0x61ff74ea, 0xbb710917, 0xb102de44, 0xa9ee627d
.word 0x9f95d5c0, 0x0009c9a0, 0xb398275b, 0xad8eec33, 0x05e20ff4, 0x723ff236, 0x6da45f63, 0x6c099fdb
.word 0x9169a796, 0x52419992, 0xf6d17fa9, 0xdf3faca7, 0x813c7e4b, 0x0b7a28c7, 0xbae86660, 0xf583bab7
.word 0xe378e79d, 0x183138af, 0x417858b1, 0xed52deed, 0x8c6c98ed, 0xbff47cf5, 0xd4f571c2, 0xd0ada7ca
.word 0x7e1fa538, 0xecc360e8, 0xaa3d88f7, 0x39bcd1c4, 0x11780120, 0x211b3049, 0x5158b0fc, 0x256f244e
.word 0x3f473746, 0xf9e722df, 0x7b54c12a, 0x4cd7531e, 0x174404f1, 0x1752a64c, 0x12418c3c, 0xccf055db
.word 0x89412d31, 0x384adfbf, 0x35d1b328, 0x49aa5dd3, 0x41c22c79, 0xba1ec94f, 0xa110acd6, 0x56f8e498
.word 0xe52230da, 0x1a3479a2, 0x093724b1, 0x7c1084c5, 0xf95c8c73, 0x623640a8, 0x215a9cf3, 0xc88cbbdf
.word 0xa1a3c4cc, 0x7b711fd5, 0x3a6b90da, 0xd2ff1570, 0x474579ea, 0xb0f6d7b3, 0xcce3e4e6, 0x1c7f7441
.word 0x410b87a3, 0x1c2c6994, 0x0471387f, 0xbadc6be1, 0xb559166c, 0xe6886262, 0xf6bda633, 0x385eb325
.word 0x68ba4d99, 0x83c14574, 0xb2f7807a, 0xfb62c622, 0xcb5b9ef9, 0x1a3afe1f, 0x1468d3cc, 0xdeeabc00
.word 0xfe2b0955, 0xddcbfa77, 0xae5f19b8, 0x8d6c4364, 0x160492c7, 0xe214825a, 0xf010440c, 0x5ee4787b
.word 0x8d355d1a, 0xedb7ee68, 0x0b58d5f7, 0xe6e39155, 0x628168e9, 0x4aa962fe, 0xd857865e, 0xd4507ff3
.word 0x629c2854, 0x40277442, 0xe678ca6d, 0x989a0a02, 0x8f2339d9, 0xd1a94a81, 0x6034e87f, 0x1908df25
.word 0x1196f9fc, 0x0f357b28, 0x95ca578a, 0x829cf36f, 0x49a4eeaa, 0xaad8015b, 0xb7f6a0dc, 0x38ab7581
.word 0x20fd9647, 0xc72f3b3d, 0xfc9f8be3, 0x070fff8f, 0x95e64914, 0x44064df8, 0x136797e0, 0xf2e29aaf
.word 0xa295160a, 0x5826d155, 0xb3d4564c, 0x159a8829, 0x63e31a6a, 0x5ed5b9f8, 0x97e5920f, 0xb1233ed3
.word 0x000a07b0, 0xef00da2e, 0x976bf7f0, 0x6e8ce843, 0x1e9b006c, 0x9d746922, 0xffac517c, 0x85ad4071
.word 0x9e3e0342, 0x8b9b2f15, 0x22577874, 0x79f66943, 0x6c71b51f, 0xaf1d7024, 0xf2e7a9f1, 0xe672ae71
.word 0x48e31cb5, 0xae17c395, 0xe16307ee, 0x9813cbda, 0x7267046a, 0x0039c332, 0x2283f66d, 0x4108ff9a
.word 0xa953dfb4, 0x83df2f24, 0x365cda89, 0x56564216, 0xa92831d7, 0x6a1129eb, 0x37121432, 0x997b492f
.word 0x947f457a, 0xe6f3ad03, 0xf90da961, 0xf9fa4717, 0x5356933b, 0xd4253b3f, 0x4603d7fb, 0x588c616c
.word 0xfaaa84d5, 0xd06884b6, 0x23c5d4dc, 0xa498f924, 0xc6122bbd, 0x94fc2c0d, 0xd95b53d8, 0x3c059871
.word 0x9aba057a, 0x22108925, 0xe289a4c9, 0xb364dcbb, 0xcef5935b, 0x98b485d4, 0x4953ab93, 0x35e0b519
.word 0x4517ed90, 0x5440c273, 0x2eb58805, 0x81cf1389, 0x45c3054e, 0xc59e9653, 0x41b945c1, 0x8e015454
.word 0xcde92d1b, 0xe7126e17, 0x6f067f10, 0xa1f96564, 0x9906adc0, 0x5d563aed, 0xb133a7db, 0x03dd6c33
.word 0x31cf1322, 0x92bb3c83, 0x1218244a, 0xcd8d7410, 0x895ea691, 0x28c458de, 0x99a83b4b, 0xc2368b03
.word 0x9304a034, 0x50e7c76b, 0x7af732c5, 0x311864cf, 0x397a1e04, 0x138ba8d1, 0x10637e3c, 0x7bcba8c9
.word 0xe6fb2535, 0x33345b47, 0x5bcafe4c, 0xfe3393f9, 0xd5a72f48, 0xc592494b, 0xae9841b5, 0x370dc8e0
.word 0x363ef44c, 0x3bafdfb4, 0x447eb911, 0x2c56ed8c, 0x537a5e3f, 0x680118ea, 0x2553f768, 0x6dd700a6
.word 0x027d4d36, 0x1e808cd5, 0x4a63717e, 0xb7c77a2d, 0xdebd6f3b, 0xc8fbe41d, 0xde5ec2a1, 0x1c20d1bb
.word 0xc2a7fb3e, 0xe08148eb, 0xdefae211, 0x85deccac, 0x1339553d, 0x36d7d4f3, 0x166828da, 0xb4c446fd
.word 0x70be9dc3, 0x9ade46f8, 0xb508478a, 0xda36094a, 0x613c9423, 0x900bf9c5, 0x7300b910, 0xfd6a5d07
.word 0xe8a28d05, 0x73d5891b, 0x551f7ce8, 0x4a981492, 0x2e9a5bd7, 0xaf416ee8, 0xeae2b1f8, 0xe5f6a2f4
.word 0x905687c8, 0x7c042b82, 0x1c38e209, 0x997bc6d4, 0x15e754cf, 0x97f92eea, 0x3dddf775, 0xcc603e33
.word 0x98d21533, 0x2d81a091, 0x59da6eff, 0x81332548, 0xeda79243, 0xba3fb8c7, 0x0c1ba115, 0x84daecfe
.word 0xb63e802a, 0xdf835d7f, 0x948dc8e4, 0x6e5fc604, 0x344ed526, 0xe330e309, 0x7e091c4d, 0xe34583fb
.word 0x9b4e89d3, 0xe2d6160e, 0xc589ae84, 0xff6cf793, 0x314b8a35, 0xf85e8991, 0xde22c08d, 0x2aef3f7f
.word 0x510b3c96, 0x760c94fd, 0xc385ac76, 0x26c32b50, 0x3d138dc1, 0x93202a29, 0xaabe9e10, 0xb00022ed
.word 0x7279aad8, 0x9e2d70af, 0xfc5f0635, 0x2d1a7f64, 0x1915c35d, 0x7bbd43e7, 0x39f46ddf, 0x8f16feca
.word 0x8dd2525f, 0xc1bca647, 0x17a15c5c, 0xae0824d0, 0x1a0c7f12, 0x67b2b471, 0x88f82729, 0xcb36cbfc
.word 0xf863a943, 0x3abc2594, 0xd5527b90, 0x68b8405c, 0xf18302be, 0xe8d9dd59, 0x10778fbc, 0x685b1e69
.word 0x2df33603, 0x374e8a4d, 0xd1e91c6a, 0x18c23998, 0x20adfc2d, 0xc738ba52, 0xee98250e, 0x48e70580
.word 0xcc294583, 0x56bed9c0, 0x239a6cee, 0x778faee8, 0x8af3398a, 0x55a69bba, 0x1a8ee4fe, 0x3882b630
.word 0xed04c5af, 0xa6f191bb, 0xddd17cfb, 0xe70beeb9, 0xd7843a97, 0x1aa101ad, 0x8613d8de, 0x19b7b8ed
.word 0x4182aac1, 0x2f9443f7, 0xbc03afb2, 0xd5392836, 0x31b4064a, 0x4635adeb, 0x9136af1f, 0x1bc6877c
.word 0xb535b6ea, 0xb905ea9d, 0xf45d5981, 0xe41c9820, 0x5e866c78, 0xfb82dd01, 0xb6c63532, 0x758bb7cd
.word 0xd0c181e4, 0x84aaca09, 0x8f9b779a, 0xcc6ed448, 0x125d14be, 0x8911de6f, 0x250d83e8, 0x3cb2da11
.word 0x43b59732, 0xb4b09e50, 0xeb42687d, 0xf11a4ee7, 0xbf7d8648, 0xc9d35783, 0xf254ef52, 0x95c950a4
.word 0x9e4d6165, 0x95291f6f, 0x827516b3, 0xd52e0f56, 0xac898a21, 0xa8b6ba0a, 0x7b71cdf5, 0xe12c39b9
.word 0x4b8a67b0, 0xab986205, 0x25ce443a, 0xc3ab7d95, 0x1c1f825d, 0x2f814e56, 0xc7bc9b2b, 0xa3b30ed2
.word 0x787fb68a, 0x7e2b302e, 0xed872aba, 0x0cd56d73, 0xb9e2123f, 0x5b0ca6f6, 0xca1db145, 0x02a4f47f
.word 0xd80cde57, 0xfc819660, 0x297801c4, 0x44cee44b
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x19, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x19, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x19, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x19, x25, ecall_handler
                  li x25, 0x1
                  beq x19, x25, instr_fault_handler
                  li x25, 0x5
                  beq x19, x25, load_fault_handler
                  li x25, 0x7
                  beq x19, x25, store_fault_handler
                  li x25, 0xc
                  beq x19, x25, pt_fault_handler
                  li x25, 0xd
                  beq x19, x25, pt_fault_handler
                  li x25, 0xf
                  beq x19, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
