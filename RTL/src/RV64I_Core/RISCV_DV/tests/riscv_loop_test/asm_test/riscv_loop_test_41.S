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
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 1
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0xa085f97b
                  li x1, 0xfe918d06
                  li x2, 0x80000000
                  li x3, 0xe
                  li x4, 0x80000000
                  li x5, 0x6ef70f67
                  li x7, 0xa52d0447
                  li x8, 0x80000000
                  li x9, 0x896cff11
                  li x10, 0xfed0c4d4
                  li x11, 0xf868b03d
                  li x12, 0x80000000
                  li x13, 0xf7650570
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xf4aef9de
                  li x18, 0x7193693d
                  li x19, 0x0
                  li x20, 0x6
                  li x21, 0x8
                  li x22, 0x0
                  li x23, 0xf84b0157
                  li x24, 0x0
                  li x25, 0xe
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x7
                  li x29, 0x7
                  li x30, 0x80000000
                  li x31, 0x0
                  la x6, user_stack_end
main:             sltu         t4, s1, t3
                  ori          s6, a2, -507
                  la           a3, sub_1
                  slli         s10, a7, 21
                  addi         a3, a3, -216
                  srli         s0, s3, 20
                  beq          s11, s7, main_j2 #branch to jump instr
                  ori          s10, tp, 1942
                  srai         s1, t6, 12
                  auipc        a6, 457587
main_j2:          jalr         sp, a3, 217 #jump main -> sub_1
                  addi         s0, zero, -10 #init loop 0 counter
                  slti         s6, s2, 716
                  or           s3, s4, t3
                  and          tp, s4, a0
                  sll          gp, t0, a3
                  addi         a0, zero, -13 #init loop 0 limit
                  sltu         s10, sp, a7
                  srl          s10, t1, s0
                  slti         s5, s6, 514
main_0_0_t:       sltu         a7, s4, s6
                  nop
                  auipc        a5, 636673
                  addi         s0, s0, -6 #update loop 0 counter
                  slti         ra, t6, 685
                  sra          t3, sp, t5
                  sltiu        s7, t2, 754
                  ori          t3, s0, 1943
                  bge          s0, a0, main_0_0_t #branch for loop 0
                  lui          a1, 281451
                  addi         s10, zero, -7 #init loop 1 counter
                  addi         a0, zero, 10 #init loop 1 limit
                  xori         sp, s10, 265
                  nop
                  auipc        s2, 528435
                  slti         s3, t2, 755
                  slti         s4, a7, -2035
main_2_1_t:       andi         s8, gp, -613
                  sltiu        a1, s2, 1594
                  auipc        s7, 601323
                  nop
                  srli         s4, tp, 6
                  lui          a5, 214767
                  slti         s5, t5, 1902
                  addi         s10, s10, 6 #update loop 1 counter
                  sll          s3, sp, a3
                  addi         tp, zero, -7 #init loop 0 counter
                  xori         a6, s6, -171
                  addi         s6, zero, -19 #init loop 0 limit
                  sltu         s5, a7, s4
                  slt          t0, t3, s7
                  srai         zero, a2, 28
main_2_0_t:       xori         t0, a2, -1524
                  sra          t3, zero, sp
                  addi         tp, tp, -6 #update loop 0 counter
                  xori         ra, s1, 1343
                  beq          tp, s6, main_2_0_t #branch for loop 0
                  lui          t2, 61694
                  lui          ra, 253814
                  lui          a1, 439730
                  bltu         s10, a0, main_2_1_t #branch for loop 1
                  lui          s4, 639252
                  addi         ra, zero, 7 #init loop 1 counter
                  addi         s6, zero, 5 #init loop 1 limit
                  sub          s5, a7, a6
main_1_1_t:       slti         a3, s2, 1432
                  addi         ra, ra, -4 #update loop 1 counter
                  ori          a1, a0, -1692
                  addi         s4, zero, -3 #init loop 0 counter
                  addi         t3, zero, 15 #init loop 0 limit
                  sltu         t2, zero, s0
main_1_0_t:       sub          a6, t6, zero
                  addi         s4, s4, 6 #update loop 0 counter
                  and          s8, zero, t4
                  beq          s4, t3, main_1_0_t #branch for loop 0
                  ori          a5, a7, 1785
                  bgeu         ra, s6, main_1_1_t #branch for loop 1
                  sltiu        a7, gp, -340
                  srai         t3, tp, 22
                  slli         t5, s6, 23
                  slt          s0, s6, a5
                  and          a0, s2, a7
                  sub          t4, ra, a5
                  sltu         t3, s5, t2
                  xor          a1, t4, s6
                  xori         s6, t0, -1178
                  slt          s3, tp, s10
                  xor          t2, a7, a6
                  bne          t6, t4, 18f
                  slti         s4, s10, 312
                  xor          s3, s7, s6
                  bne          t2, gp, 18f
                  lui          s8, 145839
                  slli         a2, t3, 26
                  xor          t0, s4, s10
                  srai         t2, s3, 9
18:               slti         a5, s1, -999
                  bge          s2, s4, 21f
                  bge          tp, t0, 26f
21:               bltu         a1, t6, 34f
                  beq          a2, tp, 33f
                  or           s8, t4, s9
                  sra          s0, t6, t3
                  sub          s10, s0, t6
26:               addi         s0, gp, -1793
                  bgeu         s10, a6, 41f
                  srl          a2, t4, ra
                  and          a0, s3, s1
                  sra          s10, a4, t3
                  ori          tp, t2, 202
                  srai         s0, t4, 23
33:               xor          s6, t4, s0
34:               nop
                  sll          t5, ra, s2
                  xor          a2, s7, s7
                  sltiu        zero, a1, 1403
                  sub          a0, s1, zero
                  sra          s9, a4, a2
                  sltu         s0, gp, s7
                  slti         a6, t3, 272
                  slt          sp, zero, a2
                  la           s2, sub_2
                  addi         s2, s2, -93
                  sub          s7, t4, t3
                  bge          s7, s0, main_j1 #branch to jump instr
                  or           s3, tp, gp
                  srl          ra, s5, t4
                  slt          t3, t4, a2
main_j1:          jalr         sp, s2, 94 #jump main -> sub_2
41:               xor          zero, s6, s0
                  sltu         a6, t2, a0
                  slt          ra, tp, a6
                  bge          s11, s9, 50f
                  sltiu        ra, gp, -1066
                  srai         zero, zero, 9
                  bge          a3, s10, 51f
                  blt          a7, s11, 54f
                  bltu         s10, s9, 60f
50:               nop
51:               sra          gp, s2, t0
                  bltu         s3, s6, 62f
                  slli         t2, t1, 18
54:               srli         a0, s0, 15
                  sltiu        a5, a2, 575
                  srli         a2, a4, 19
                  blt          s10, gp, 74f
                  sll          gp, s7, t1
                  blt          a7, a7, 62f
60:               srli         zero, s9, 7
                  or           t0, s2, a2
62:               andi         s10, s5, 1390
                  bge          a7, a2, 82f
                  sll          t0, t3, s4
                  auipc        a7, 727999
                  nop
                  ori          t4, s2, 70
                  sltiu        a6, t6, 688
                  slli         a7, s11, 23
                  beq          s8, sp, 89f
                  bne          gp, s8, 86f
                  beq          t1, s6, 85f
                  srl          a6, s6, sp
74:               slt          s3, zero, s8
                  lui          gp, 387592
                  xor          sp, tp, a3
                  xori         s9, s7, 1122
                  sra          s3, s10, s3
                  bge          t5, s3, 88f
                  and          gp, s7, s7
                  slti         s8, t5, 1777
82:               beq          s6, a1, 84f
                  bne          t2, a2, 95f
84:               ori          a0, t4, 1202
85:               blt          s11, s5, 103f
86:               auipc        ra, 161612
                  sltiu        s4, a6, -276
88:               xor          t5, t0, s1
89:               slti         s6, zero, -1658
                  beq          t1, t2, 109f
                  bltu         s2, s10, 101f
                  ori          s7, s10, -701
                  lui          a3, 837722
                  srli         t3, a4, 19
95:               addi         t5, gp, 422
                  bne          s6, a1, 112f
                  beq          gp, t4, 107f
                  xor          t4, a4, t3
                  sll          s6, t2, t4
                  sub          s5, s5, t5
101:              srai         s4, t6, 0
                  bne          t1, a3, 108f
103:              slli         t3, zero, 28
                  nop
                  ori          s10, a1, 162
                  or           s6, s8, a7
107:              srli         t2, s1, 11
108:              bgeu         t6, a0, 119f
109:              slt          s10, a3, gp
                  ori          a2, s5, 1389
                  lui          s7, 1038048
112:              lui          ra, 777920
                  or           s9, a1, tp
                  sltu         a6, s10, s1
                  bltu         t6, s3, 128f
                  xor          s10, a2, a0
                  auipc        zero, 410691
                  andi         s8, t0, -1688
119:              auipc        sp, 1029901
                  and          s1, tp, a3
                  srai         a0, s10, 28
                  bgeu         t3, zero, 129f
                  xor          t0, a3, t6
                  slt          a5, t1, s7
                  xor          s5, a1, s6
                  xor          a3, a4, s8
                  addi         s10, s3, 825
128:              and          zero, a1, a6
129:              add          zero, a7, a3
                  srli         a7, a3, 7
                  ori          t3, s0, 1545
                  bgeu         a4, ra, 143f
                  and          a2, tp, t3
                  sltu         s5, a0, t6
                  sltu         ra, zero, s11
                  beq          a4, a0, 139f
                  bgeu         t0, s10, 156f
                  sub          s10, s7, a6
139:              beq          t6, s5, 143f
                  bne          zero, a4, 150f
                  srl          tp, s9, s8
                  bltu         t4, a7, 153f
143:              sub          ra, s0, t2
                  nop
                  srli         s4, ra, 28
                  lui          t3, 368590
                  sra          t4, s8, s6
                  srli         a3, a1, 25
                  sltiu        t4, a4, 1702
150:              or           s1, s5, t3
                  addi         ra, t6, -1447
                  sra          s3, a7, s9
153:              srai         tp, t1, 9
                  srl          s3, t6, s8
                  xori         ra, a2, -1904
156:              bne          a0, t2, 172f
                  slti         s5, a6, 1749
                  blt          s8, a1, 169f
                  srli         a2, a6, 20
                  ori          s7, s5, 1861
                  bne          s11, s7, 174f
                  sltiu        s1, s3, 689
                  xor          t0, gp, a3
                  add          a2, t0, a0
                  addi         s11, a1, 860
                  slt          s5, gp, a5
                  slli         s11, s11, 22
                  addi         s0, s5, 293
169:              ori          sp, s4, 1150
                  sra          s1, s8, zero
                  srai         a6, s9, 25
172:              bne          t5, a3, 178f
                  beq          s6, s8, 178f
174:              srai         s5, t2, 22
                  add          s10, t5, s0
                  xori         a7, a1, -384
                  nop
178:              andi         s9, s4, -312
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            nop
                  beq          s6, zero, sub_5_stack_p
sub_5_stack_p:    addi         t1, t1, -40
                  slli         s11, a4, 29
                  sw           sp, 4(t1)
                  addi         s2, a5, 540
                  addi         s0, zero, 6 #init loop 0 counter
                  addi         s6, zero, -14 #init loop 0 limit
sub_5_1_0_t:      slt          s4, t4, sp
                  addi         s0, s0, -10 #update loop 0 counter
                  beq          s0, s6, sub_5_1_0_t #branch for loop 0
                  and          t2, t0, a0
                  addi         t3, zero, 10 #init loop 1 counter
                  srl          s0, t0, s0
                  addi         s9, zero, 0 #init loop 1 limit
                  auipc        a7, 350615
sub_5_7_1_t:      addi         t4, t2, -301
                  srl          s3, t3, a2
                  addi         t3, t3, -2 #update loop 1 counter
                  sra          s10, s5, s5
                  addi         s7, zero, 5 #init loop 0 counter
                  lui          t4, 35616
                  addi         t5, zero, 11 #init loop 0 limit
sub_5_7_0_t:      slti         a2, tp, 242
                  xor          sp, s9, tp
                  add          ra, t3, s2
                  addi         s7, s7, 6 #update loop 0 counter
                  ori          a1, s0, -1620
                  andi         s11, s6, 1695
                  srl          a1, t0, a0
                  bne          s7, t5, sub_5_7_0_t #branch for loop 0
                  sltiu        s0, a2, -128
                  bge          t3, s9, sub_5_7_1_t #branch for loop 1
                  slti         s8, s8, 292
                  addi         s3, zero, 9 #init loop 1 counter
                  slli         a3, a0, 12
                  srli         a3, a4, 7
                  sra          a2, s2, a7
                  addi         a5, zero, 8 #init loop 1 limit
                  sub          t2, s2, zero
                  addi         s8, s3, 825
sub_5_4_1_t:      xor          a1, a5, t4
                  sltiu        a6, s6, -984
                  addi         s3, s3, -6 #update loop 1 counter
                  auipc        s9, 821066
                  addi         a7, zero, 7 #init loop 0 counter
                  addi         gp, zero, 6 #init loop 0 limit
                  sll          s9, s4, a4
                  and          s8, s9, ra
sub_5_4_0_t:      or           s0, s0, t0
                  sltu         s6, a4, zero
                  addi         sp, a1, 582
                  slti         s1, s7, -230
                  sltu         tp, s9, s11
                  sltiu        a6, a6, 851
                  slti         s10, s0, -2009
                  add          s10, a1, t3
                  addi         a7, a7, -3 #update loop 0 counter
                  bgeu         a7, gp, sub_5_4_0_t #branch for loop 0
                  nop
                  addi         t3, s10, -1857
                  xor          t5, s7, s0
                  slti         s0, t1, -1528
                  bgeu         s3, a5, sub_5_4_1_t #branch for loop 1
                  slti         s1, s11, -821
                  addi         t3, zero, 7 #init loop 0 counter
                  addi         s7, zero, -1 #init loop 0 limit
                  xor          s9, s0, t6
sub_5_5_0_t:      lui          s9, 180186
                  addi         t3, t3, -4 #update loop 0 counter
                  sltu         s9, t0, s5
                  slti         s8, s10, -617
                  ori          ra, s6, -1119
                  sll          s11, gp, gp
                  xori         t0, s3, -52
                  bne          t3, s7, sub_5_5_0_t #branch for loop 0
                  lui          s11, 781274
                  addi         sp, zero, 0 #init loop 0 counter
                  xori         s10, t0, 178
                  xor          s2, a4, a6
                  or           s7, a6, s10
                  slli         t3, t1, 13
                  srli         ra, s1, 3
                  addi         a6, zero, 18 #init loop 0 limit
                  sll          s1, gp, a5
sub_5_8_0_t:      or           a0, a6, t2
                  srl          t3, zero, t4
                  srli         t2, s7, 25
                  xori         a1, s5, 396
                  lui          s4, 578763
                  ori          t2, a6, -680
                  sra          a1, a1, s8
                  sra          ra, zero, t5
                  andi         a1, s4, -1883
                  srl          zero, s8, s3
                  or           t5, s7, a6
                  addi         sp, sp, 5 #update loop 0 counter
                  sltu         s3, s1, t0
                  add          t3, a5, a2
                  slti         a3, a1, 207
                  bltu         sp, a6, sub_5_8_0_t #branch for loop 0
                  nop
                  addi         t4, zero, 3 #init loop 1 counter
                  addi         s11, zero, 13 #init loop 1 limit
                  sltu         t3, a7, s5
sub_5_0_1_t:      sltu         s8, t3, t6
                  slti         a6, s0, -1744
                  addi         t4, t4, 10 #update loop 1 counter
                  srl          a0, a4, t0
                  slli         s5, s2, 10
                  sub          s10, s0, t1
                  auipc        t3, 214345
                  srl          sp, ra, zero
                  andi         s7, tp, 727
                  slli         a5, s3, 29
                  addi         t5, zero, -2 #init loop 0 counter
                  andi         s3, t2, -2010
                  addi         s0, zero, 10 #init loop 0 limit
                  slt          a5, gp, ra
                  andi         t0, a3, -1513
sub_5_0_0_t:      xor          s6, a6, gp
                  andi         a0, t1, 110
                  addi         t5, t5, 6 #update loop 0 counter
                  or           tp, t1, s7
                  bne          t5, s0, sub_5_0_0_t #branch for loop 0
                  bne          t4, s11, sub_5_0_1_t #branch for loop 1
                  andi         t0, s1, -371
                  addi         s7, zero, -6 #init loop 1 counter
                  sltu         t4, a7, zero
                  addi         s4, t5, -848
                  andi         zero, sp, -1376
                  and          s11, t3, gp
                  sll          s10, zero, s10
                  and          zero, tp, zero
                  srai         s5, s7, 27
                  srl          ra, a6, ra
                  addi         s6, zero, 14 #init loop 1 limit
sub_5_9_1_t:      sltu         a2, t5, s2
                  andi         tp, s0, 1310
                  sub          s10, a2, t4
                  addi         s7, s7, 3 #update loop 1 counter
                  addi         a6, zero, -1 #init loop 0 counter
                  addi         gp, zero, 13 #init loop 0 limit
                  srli         t2, s8, 17
                  srl          a2, a3, s4
sub_5_9_0_t:      nop
                  addi         a6, a6, 2 #update loop 0 counter
                  sltiu        s8, t0, -1792
                  nop
                  bltu         a6, gp, sub_5_9_0_t #branch for loop 0
                  srli         t0, a2, 2
                  srl          ra, t1, a4
                  bltu         s7, s6, sub_5_9_1_t #branch for loop 1
                  lui          s5, 920377
                  addi         s7, t2, -2001
                  sltu         s8, s9, gp
                  srli         s0, a6, 18
                  or           s2, a6, s7
                  slli         s10, s7, 26
                  sll          s0, s11, a0
                  andi         a7, s5, -1410
                  bge          s11, s4, 10f
                  xori         a3, s4, -1083
                  bltu         a2, t3, 22f
10:               lui          s7, 600204
                  nop
                  or           t4, tp, s10
                  nop
                  xori         s9, zero, -432
                  blt          s4, s8, 25f
                  xori         t0, s0, 60
                  srl          a6, s1, a5
                  addi         zero, s7, -1895
                  srai         s8, ra, 27
                  addi         s7, t5, 117
                  slli         s6, tp, 28
22:               xori         a5, s11, -1760
                  srai         a0, a4, 27
                  sll          t4, a1, t4
25:               blt          a4, a3, 27f
                  sltu         t5, t5, zero
27:               sltu         ra, s6, ra
                  or           a5, a0, a1
                  srl          ra, a6, t4
                  add          s9, t2, a2
                  sltu         a6, s6, t1
                  bne          t3, s3, 36f
                  auipc        s10, 914355
                  sub          a3, a1, tp
                  srai         a1, s1, 2
36:               sub          s8, sp, s1
                  srli         gp, ra, 14
                  srl          t2, ra, t1
                  andi         s2, s0, 620
                  slt          a1, ra, s2
                  bgeu         t3, t3, 56f
                  ori          sp, s8, -1435
                  sll          s7, zero, t2
                  bltu         s11, s11, 55f
                  auipc        a0, 263741
                  sra          s6, a0, s1
                  srli         s11, s1, 19
                  sltu         t5, t1, a2
                  bgeu         s2, t5, 65f
                  beq          s10, s6, 61f
                  sub          s9, sp, a7
                  blt          ra, a7, 71f
                  slt          ra, t1, t4
                  lui          a6, 447497
55:               andi         s6, s11, 1730
56:               slli         t2, t2, 20
                  srai         t3, a4, 11
                  andi         t3, t6, 554
                  bge          sp, t6, 79f
                  slt          t0, a1, s9
61:               and          s7, a0, s5
                  blt          t2, s9, 72f
                  bltu         s6, a6, 72f
                  nop
65:               sll          s2, t3, s7
                  slti         a5, zero, 421
                  slli         zero, s8, 21
                  sltiu        s9, t0, -1339
                  add          s10, s3, s9
                  bne          s5, t5, 84f
71:               and          s1, a7, a2
72:               add          s10, s6, t1
                  or           s7, s2, s2
                  sltu         sp, s5, sp
                  slti         s9, a2, -1322
                  slti         t3, s11, 1957
                  srai         t0, s3, 13
                  slt          s11, t4, s9
79:               slti         s0, s6, 131
                  sra          s1, a2, s10
                  blt          t0, a1, 100f
                  sltu         t0, a6, s9
                  nop
84:               bltu         a6, a3, 89f
                  sll          s3, t6, s2
                  xor          a3, t4, tp
                  xor          t5, ra, s6
                  sltu         t0, s9, s8
89:               slt          a7, a5, s3
                  and          ra, a3, a5
                  sub          a5, s2, t1
                  xor          a3, s2, s1
                  sltiu        s7, tp, -1873
                  bne          a7, a2, 105f
                  slti         t4, a0, 1323
                  or           s0, s11, t1
                  xor          sp, a1, tp
                  srl          a6, a7, tp
                  nop
100:              add          a2, s7, a4
                  bgeu         t4, sp, 121f
                  ori          a7, s9, 1894
                  lui          s9, 868513
                  xori         a5, zero, -315
105:              bne          s5, a4, 106f
106:              sltiu        gp, a4, -1328
                  sub          s11, t4, ra
                  lui          t5, 726108
                  bgeu         zero, t1, 114f
                  beq          t2, s8, 115f
                  sltiu        tp, s8, 1876
                  and          ra, ra, a0
                  bgeu         t6, a6, 123f
114:              bgeu         s1, t3, 133f
115:              andi         a2, s3, -1400
                  slti         a0, s8, -313
                  sll          sp, s9, t0
                  nop
                  slli         s1, a7, 18
                  beq          t6, s3, 122f
121:              sltiu        a7, s10, 529
122:              andi         s2, ra, 712
123:              sub          s8, s3, sp
                  slti         gp, s8, 990
                  xori         a7, a4, -525
                  blt          ra, s3, 143f
                  beq          s9, s10, 143f
                  sll          s11, t3, tp
                  slli         s2, s4, 13
                  bltu         sp, s3, 145f
                  bltu         a6, zero, 136f
                  or           a0, t2, t5
133:              auipc        t2, 719347
                  srli         s1, sp, 20
                  xori         s1, t5, -663
136:              blt          s0, a0, 155f
                  lui          s0, 575007
                  sltu         zero, a1, s5
                  ori          a3, s3, 339
                  auipc        s2, 250810
                  xor          s8, t2, sp
                  ori          s8, s5, -1035
143:              srl          s3, t4, s2
                  auipc        t4, 721391
145:              andi         a1, zero, -1326
                  slli         tp, gp, 19
                  srl          t5, s5, a7
                  bge          a6, sp, 153f
                  sra          a1, t1, a5
                  and          s10, s11, ra
                  xor          a2, s4, t1
                  xori         s4, ra, 835
153:              bgeu         t4, s7, 158f
                  bge          t1, t0, 169f
155:              slti         tp, zero, 368
                  srl          s5, s11, t4
                  sltu         t0, s4, ra
158:              xor          s11, s5, zero
                  slt          a2, a1, t1
                  bge          sp, t0, 179f
                  nop
                  xor          t0, s2, s11
                  bltu         s3, s4, 168f
                  bge          a6, tp, 180f
                  ori          a7, s3, 1171
                  sra          t2, a3, t0
                  nop
168:              bne          a4, s7, 170f
169:              nop
170:              sra          ra, t4, a3
                  addi         s5, s3, -842
                  beq          s7, s2, 181f
                  sll          t2, s10, gp
                  addi         a0, a3, -230
                  sub          a7, a4, a7
                  sltiu        s10, a5, 570
                  sll          t2, sp, t5
                  bgeu         s4, sp, 195f
179:              lui          a2, 593005
180:              sltu         s11, t4, a5
181:              ori          a3, a7, -1099
                  srli         a3, a4, 3
                  beq          ra, s3, 188f
                  slti         zero, tp, -1506
                  xori         a5, a0, -639
                  or           a6, s0, s5
                  addi         gp, t3, -609
188:              slt          zero, sp, s10
                  blt          s9, t5, 208f
                  bgeu         tp, t5, 201f
                  xor          a2, t4, t3
                  auipc        t4, 878833
                  ori          t0, t6, -1568
                  sltu         s9, s8, s2
195:              bltu         a4, t0, 208f
                  bgeu         zero, zero, 201f
                  slli         a7, ra, 22
                  auipc        a1, 170450
                  srli         a7, a7, 7
                  and          s9, s11, a1
201:              addi         s3, t1, -632
                  andi         zero, t2, -627
                  slli         a0, t6, 23
                  xor          s2, t0, tp
                  or           s7, sp, s10
                  slli         s10, ra, 12
                  and          a6, s1, tp
208:              nop
                  auipc        t4, 179327
                  blt          tp, a3, 230f
                  sll          s8, s4, t6
                  beq          s6, zero, 226f
                  ori          s2, a0, 1098
                  bne          s5, s2, 233f
                  sltiu        s7, a4, 78
                  sra          s0, zero, sp
                  bne          s8, t5, 219f
                  srl          t4, s2, s3
219:              andi         s9, zero, -1922
                  sltu         s3, t2, t5
                  xor          zero, s8, s3
                  bge          s7, t2, 238f
                  bgeu         t1, gp, 242f
                  blt          s4, a6, 228f
                  lui          s10, 808132
226:              srli         s10, s4, 26
                  addi         s0, t1, -1572
228:              xori         t2, t5, 1973
                  slt          s5, s7, s7
230:              sll          t0, t4, s8
                  slt          a3, a0, gp
                  slli         a7, s9, 22
233:              beq          t2, s1, 248f
                  sub          ra, t3, t0
                  sltu         s0, a6, gp
                  srli         s5, s2, 27
                  beq          t0, gp, 248f
238:              bgeu         t3, a1, 248f
                  srl          sp, s0, sp
                  srai         gp, s5, 3
                  slt          t5, s3, t6
                  addi         t0, zero, 3 #init loop 0 counter
                  sltu         a5, a3, a0
                  auipc        s10, 472451
                  add          ra, tp, t5
                  auipc        s3, 994993
                  xori         gp, a1, 1879
                  sltiu        s3, a7, -118
                  slli         a7, t2, 25
                  slti         a3, a2, 404
                  ori          a7, tp, 271
                  slt          s2, t0, a4
                  srl          a1, gp, a2
                  addi         s0, zero, 16 #init loop 0 limit
                  sltiu        t3, s0, -726
sub_5_3_0_t:      xori         s11, t3, -1333
                  sltiu        s9, s7, -1365
                  srai         s1, s2, 20
                  sra          t3, s2, s10
                  ori          s4, a0, -388
                  andi         s10, a6, -2031
                  addi         t0, t0, 1 #update loop 0 counter
                  slti         s1, t5, -312
                  srl          a1, a6, s2
                  addi         a1, tp, -1216
                  beq          t0, s0, sub_5_3_0_t #branch for loop 0
                  slli         gp, tp, 19
242:              blt          s11, s10, 253f
                  bltu         t4, a0, 246f
                  sltu         s11, s8, gp
                  srai         s4, a3, 31
246:              addi         s0, s3, 1813
                  bge          s5, a3, 267f
248:              nop
                  andi         s11, t0, -966
                  bne          ra, t1, 251f
251:              slli         t0, a0, 21
                  and          s7, t4, s7
253:              blt          s6, a5, 263f
                  auipc        s3, 365058
                  slli         zero, t6, 2
                  auipc        s5, 249366
                  blt          a2, s8, 267f
                  slli         sp, s9, 2
                  slti         t2, a6, -94
                  sll          s4, a3, a1
                  sltu         gp, a3, t3
                  blt          s5, ra, 267f
263:              beq          t6, s11, 265f
                  nop
265:              or           a0, tp, t0
                  sub          s7, zero, tp
267:              srl          s5, sp, a5
                  auipc        s9, 921128
                  xori         s5, s7, 460
                  xor          s10, s8, s2
                  beq          s11, a6, 286f
                  bltu         a0, s11, 281f
                  andi         gp, tp, -485
                  addi         s1, a0, -174
                  sra          a6, t5, a3
                  xor          t3, t5, s4
                  blt          s5, tp, 293f
                  sll          ra, s3, a6
                  andi         a7, s6, 1211
                  xori         t4, s7, -275
281:              srli         a6, zero, 3
                  lui          s2, 162563
                  bne          s11, t3, 288f
                  lui          zero, 174557
                  sltiu        s9, t4, 1692
286:              sltu         s7, s1, a6
                  slt          a0, s0, t6
288:              add          zero, s8, tp
                  lui          ra, 499136
                  slli         s7, a6, 29
                  add          tp, a6, s9
                  slt          s11, tp, t3
293:              bgeu         s11, s0, 313f
                  sll          s11, s6, s0
                  xor          a5, tp, a5
                  sltu         t2, a6, s5
                  beq          s10, zero, 307f
                  lui          s6, 170027
                  xori         sp, t4, -1290
                  xor          s10, t5, s4
                  srli         t5, a7, 22
                  blt          t5, a4, 313f
                  xor          s7, a4, t1
                  auipc        a6, 537099
                  add          s6, t4, tp
                  and          a2, gp, sp
307:              srl          s5, a5, s11
                  lui          s1, 294952
                  andi         s10, s10, 971
                  slti         s7, s1, -607
                  srli         s3, ra, 13
                  srl          ra, s10, t6
313:              auipc        a0, 800947
                  beq          s4, a3, 333f
                  ori          s4, ra, 1544
                  addi         a2, s2, -1888
                  addi         t4, a2, 1771
                  addi         gp, s11, 1741
                  srai         s4, a3, 24
                  sub          s6, ra, a3
                  bgeu         tp, a4, 332f
                  sll          t2, s11, gp
                  blt          s8, s10, 328f
                  sltu         s4, s9, gp
                  auipc        t2, 636464
                  bltu         a4, a7, 345f
                  add          t4, a4, t1
328:              sll          s7, s0, s8
                  sltiu        s5, t4, -1173
                  sltiu        ra, a3, 736
                  sll          a5, s11, a5
332:              slti         t3, s3, -191
333:              bltu         t5, a4, 337f
                  and          s10, s9, s7
                  addi         t0, zero, 6 #init loop 1 counter
                  andi         gp, ra, 138
                  srai         a1, s5, 22
                  nop
                  srl          a0, s11, ra
                  addi         s5, zero, 16 #init loop 1 limit
                  slt          s8, a5, zero
                  or           gp, ra, s9
                  xor          tp, t3, s7
                  ori          s3, t0, -1873
                  slli         s2, t4, 6
                  sltiu        s10, s6, 1349
                  and          t3, s7, zero
sub_5_6_1_t:      sltiu        ra, t5, -1687
                  add          s8, s2, a2
                  slti         t5, a7, -902
                  addi         t0, t0, 10 #update loop 1 counter
                  sltu         ra, s1, zero
                  addi         a6, zero, 6 #init loop 0 counter
                  slli         s10, s2, 7
                  srli         s6, a6, 29
                  addi         s0, zero, 6 #init loop 0 limit
sub_5_6_0_t:      sltiu        sp, gp, -1143
                  nop
                  auipc        s3, 345725
                  addi         a6, a6, -3 #update loop 0 counter
                  srli         t3, s7, 1
                  bgeu         a6, s0, sub_5_6_0_t #branch for loop 0
                  sll          s1, sp, s7
                  sltu         s9, t6, gp
                  slti         s10, t3, -561
                  blt          t0, s5, sub_5_6_1_t #branch for loop 1
                  sra          s7, s2, s3
                  sub          s10, a2, a3
                  addi         s7, a0, -460
337:              bgeu         s11, t0, 342f
                  bltu         s3, s11, 349f
                  addi         t4, s2, -1226
                  and          a2, a0, a6
                  srli         a6, s4, 8
342:              xor          t2, s10, gp
                  ori          s10, s10, 1102
                  srl          t4, s0, a2
345:              bne          t0, zero, 358f
                  sra          s2, a0, s6
                  add          tp, a6, s6
                  blt          t0, a1, 364f
349:              sltiu        t3, s5, 1872
                  bltu         s5, a5, 365f
                  bge          s4, a7, 361f
                  blt          s1, gp, 372f
                  andi         s4, s7, -1751
                  xori         a0, a1, -1491
                  beq          s5, ra, 358f
                  lui          s5, 1037108
                  add          a6, s5, a6
358:              bge          s1, a5, 363f
                  srai         t5, s1, 22
                  xor          a1, a6, s10
361:              srai         s1, a3, 0
                  bltu         t0, a7, 364f
363:              slti         s2, s9, 666
364:              addi         a0, s0, -1075
365:              bne          t0, s6, 384f
                  slt          s10, zero, s3
                  ori          s11, s4, -1926
                  lui          a7, 765497
                  xori         a2, s8, -750
                  srai         s8, s1, 3
                  bltu         a4, s4, 388f
372:              bgeu         t5, a5, 373f
373:              srl          t0, sp, s7
                  srai         s0, a7, 17
                  or           a0, tp, s4
                  srai         zero, t6, 14
                  xor          t4, s2, s11
                  srli         a1, a4, 11
                  xori         s1, s5, 1286
                  bne          a4, t2, 399f
                  sltu         s1, s7, ra
                  sltiu        t4, a7, 1591
                  bltu         s2, a7, 393f
384:              srl          tp, s4, s3
                  bgeu         s6, zero, 399f
                  and          a7, zero, s7
                  add          a6, zero, s10
388:              slli         gp, a5, 11
                  auipc        s10, 47153
                  srai         a2, a7, 8
                  or           zero, gp, a0
                  bgeu         a6, s2, 397f
393:              blt          s3, s8, 412f
                  sra          s6, a7, s8
                  beq          t0, s9, 410f
                  ori          a6, a0, -817
397:              bge          a2, t1, 408f
                  srli         s3, ra, 31
399:              xori         t0, s7, 1284
                  bge          a6, a3, 417f
                  beq          a5, s9, 411f
                  xor          s0, s6, s3
                  beq          t4, s9, 417f
                  or           s9, s10, t1
                  or           s6, zero, s9
                  bne          ra, s2, 410f
                  blt          tp, a5, 412f
408:              srli         t0, s9, 4
                  srai         a3, ra, 4
410:              slt          s1, s3, s0
411:              bne          a5, t3, 422f
412:              blt          a6, s8, 425f
                  sltiu        t5, t4, 1856
                  slt          a2, s7, a1
                  add          s7, s7, t4
                  beq          s11, a1, 417f
417:              ori          s11, a3, 699
                  sub          a6, s10, s3
                  srl          s2, s8, sp
                  slt          s7, gp, s11
                  auipc        a1, 69990
422:              xori         t0, s10, -1691
                  sltiu        s5, s8, 139
                  sll          a6, t0, s3
425:              xori         tp, t2, 1550
                  or           zero, t2, sp
                  addi         s4, a4, 740
                  srli         sp, s7, 6
                  bltu         t0, s10, 444f
                  slli         s5, t3, 1
                  addi         s5, a4, 341
                  sltiu        a6, s1, 1558
                  addi         a6, a4, 421
                  sltu         a6, s0, gp
                  add          s3, s7, t0
                  slli         s4, a5, 1
                  ori          s4, t0, -1962
                  beq          s3, s5, 441f
                  slt          s5, t1, s7
                  slti         a3, t0, 587
441:              andi         s6, s2, -763
                  auipc        s0, 772791
                  bltu         a7, a2, 463f
444:              ori          gp, sp, 1914
                  slti         s10, s7, -1712
                  add          s11, s7, a3
                  slt          s1, t1, s2
                  bgeu         s0, ra, 457f
                  bge          s2, t2, 451f
                  auipc        t4, 853113
451:              srai         s0, a6, 18
                  bgeu         s0, s5, 454f
                  addi         s5, s8, -574
454:              lui          s8, 347825
                  sra          sp, ra, s7
                  bne          t3, a3, 466f
457:              or           t5, s11, a7
                  lui          a0, 327680
                  bge          s10, s4, 478f
                  addi         s8, zero, -1 #init loop 1 counter
                  addi         s1, zero, 15 #init loop 1 limit
sub_5_2_1_t:      sltu         s2, a3, s3
                  add          a1, a6, s6
                  addi         s8, s8, 2 #update loop 1 counter
                  addi         t2, zero, 9 #init loop 0 counter
                  addi         s5, zero, 7 #init loop 0 limit
                  lui          t3, 755923
sub_5_2_0_t:      slti         s2, gp, 1335
                  addi         t2, t2, -4 #update loop 0 counter
                  srl          a5, s1, t6
                  bgeu         t2, s5, sub_5_2_0_t #branch for loop 0
                  bne          s8, s1, sub_5_2_1_t #branch for loop 1
                  ori          s6, s3, -284
                  lui          ra, 5469
                  ori          s0, t4, -358
                  or           a5, a7, sp
463:              beq          t0, a6, 479f
                  srl          a1, gp, a4
                  bge          gp, s10, 470f
466:              bltu         a3, a1, 482f
                  slli         s8, a5, 20
                  ori          s8, s3, -1910
                  sub          sp, s6, ra
470:              bge          a2, s6, 475f
                  slt          t4, s7, t0
                  add          s9, s9, tp
                  srl          s1, sp, a3
                  bgeu         s0, a7, 493f
475:              or           a1, s11, tp
                  bltu         a4, s6, 481f
                  srai         s4, s7, 5
478:              bne          t4, a4, 497f
479:              bgeu         a3, s2, 490f
                  nop
481:              srl          a7, t2, s6
482:              bltu         s4, s2, 502f
                  beq          ra, s2, 493f
                  sltiu        gp, t4, -246
                  slti         ra, s8, 1038
                  and          s2, a6, s2
                  lui          s6, 701144
                  lui          a7, 153961
                  nop
490:              slt          s9, gp, a6
                  sll          s1, s10, s10
                  addi         s2, t4, 40
493:              bne          s4, s11, 498f
                  add          s6, zero, a5
                  sub          t5, gp, sp
                  sub          s9, s10, tp
497:              and          ra, zero, t2
498:              bgeu         a2, t5, 518f
                  sltu         t4, s8, s2
                  srl          s6, s6, a2
                  addi         tp, s9, -2046
502:              lui          a0, 660196
                  ori          a3, t3, 1481
                  blt          s4, a4, 509f
                  srl          t4, t5, a0
                  srl          s6, a1, tp
                  ori          gp, s9, 913
                  srai         t4, s11, 5
509:              sra          ra, a7, s11
                  sll          a7, s4, a0
                  sll          a0, a3, s3
                  slt          s1, a6, s10
                  bne          a7, gp, 524f
                  bgeu         t5, s9, 526f
                  bgeu         a1, s6, 526f
                  sltu         s5, gp, s9
                  add          s4, a2, t6
518:              slli         s6, t0, 7
                  bge          a4, gp, 523f
                  sltiu        sp, s2, 446
                  or           s2, a4, gp
                  ori          a7, s4, 558
523:              slli         s3, a6, 19
524:              auipc        tp, 821230
                  add          s1, t4, s10
526:              ori          t2, s4, 176
                  andi         tp, s0, -1375
                  lw           sp, 4(t1)
                  addi         t1, t1, 40
                  sll          s6, t0, sp
                  xori         t5, a2, 893
759:              addi x22, x2, 1
759:              jalr x22, x22, 0
sub_2:            addi         tp, t4, 2027
                  slt          t2, s8, a1
                  lui          t5, 676549
                  sltu         s0, tp, s2
                  addi         t1, t1, -12
                  slli         s5, t1, 20
                  srli         s8, gp, 30
                  sw           sp, 4(t1)
                  lui          a1, 528068
                  xor          s7, zero, a3
                  or           sp, s6, a7
                  sltu         a2, t3, t6
                  nop
                  or           a5, s6, s0
                  sltu         a2, a2, s4
                  lui          s10, 907600
                  slt          s5, s1, s2
sub_2_j6:         jal          sp, sub_3 #jump sub_2 -> sub_3
                  addi         a1, zero, -8 #init loop 0 counter
                  ori          s0, t0, 1046
                  xori         s8, s8, 1816
                  addi         s4, zero, -17 #init loop 0 limit
                  ori          t4, s1, -654
                  xor          t5, s8, ra
                  ori          a2, s6, 1692
                  srai         s9, a1, 20
sub_2_0_0_t:      slti         s5, a4, 917
                  auipc        a6, 281441
                  addi         a1, a1, -3 #update loop 0 counter
                  bne          a1, s4, sub_2_0_0_t #branch for loop 0
                  slli         a3, a0, 29
                  addi         s9, zero, 9 #init loop 1 counter
                  slti         a7, t1, 1246
                  xor          a3, s11, s9
                  slt          a7, s11, zero
                  slt          a1, t0, a2
                  addi         s0, zero, 9 #init loop 1 limit
                  sra          s2, s9, a0
                  slli         tp, a2, 7
                  sltiu        zero, s9, -1450
sub_2_1_1_t:      slt          a6, s6, a6
                  xor          zero, s1, s3
                  andi         s1, t6, 1230
                  slli         s10, a6, 30
                  addi         s9, s9, -6 #update loop 1 counter
                  addi         a2, zero, -9 #init loop 0 counter
                  addi         t3, zero, 10 #init loop 0 limit
                  and          s3, s7, t6
                  ori          s5, a6, -37
                  add          a3, a2, s3
sub_2_1_0_t:      sltiu        s2, s0, -1227
                  slti         a7, a0, -1123
                  nop
                  addi         a2, a2, 5 #update loop 0 counter
                  add          s4, a5, s7
                  srl          a5, a1, s9
                  addi         s4, t0, 362
                  slti         t2, s8, 1797
                  blt          a2, t3, sub_2_1_0_t #branch for loop 0
                  bgeu         s9, s0, sub_2_1_1_t #branch for loop 1
                  and          a3, a4, a3
                  addi         s10, zero, 8 #init loop 0 counter
                  srl          s8, s9, t3
                  sltiu        t0, s11, -935
                  addi         t3, zero, 18 #init loop 0 limit
                  ori          t4, s9, -462
sub_2_2_0_t:      xori         ra, s9, 915
                  sltu         a5, s7, t0
                  ori          a7, a6, 1902
                  addi         s10, s10, 10 #update loop 0 counter
                  bne          s10, t3, sub_2_2_0_t #branch for loop 0
                  sra          t5, s4, tp
                  addi         tp, zero, 7 #init loop 1 counter
                  or           a2, sp, sp
                  addi         ra, zero, 3 #init loop 1 limit
sub_2_3_1_t:      nop
                  sltu         t4, gp, t4
                  addi         tp, tp, -1 #update loop 1 counter
                  addi         a0, zero, -8 #init loop 0 counter
                  addi         a7, zero, 6 #init loop 0 limit
                  andi         sp, a5, 344
sub_2_3_0_t:      and          s5, s0, a7
                  sub          t3, s3, s0
                  addi         a0, a0, 5 #update loop 0 counter
                  nop
                  blt          a0, a7, sub_2_3_0_t #branch for loop 0
                  slli         s6, sp, 27
                  bne          tp, ra, sub_2_3_1_t #branch for loop 1
                  slli         s8, t6, 14
                  srli         t3, a0, 10
                  sra          s1, s0, s2
                  bge          s4, a0, 10f
                  nop
                  xor          s4, t0, s2
                  sub          s2, s4, t2
                  nop
                  slti         zero, s10, -256
                  xor          a3, a6, t5
                  srai         a2, zero, 23
10:               slti         s11, tp, 1003
                  ori          a6, s7, 1685
                  slli         sp, t2, 4
                  srli         t5, t2, 3
                  sub          a2, zero, s3
                  beq          s7, s5, 33f
                  srl          a0, s2, s11
                  blt          s7, a7, 19f
                  sll          a2, s11, s4
19:               srli         t2, t0, 15
                  addi         t4, tp, 519
                  sub          s9, t5, t4
                  addi         s0, a6, 1140
                  blt          t5, s2, 32f
                  nop
                  srai         s8, s7, 9
                  sub          s5, gp, s3
                  andi         a6, t1, 1298
                  bgeu         a3, sp, sub_2_j5 #branch to jump instr
                  nop
                  xor          s0, ra, s11
                  addi         gp, a7, -1845
                  xori         a2, s9, -1373
                  xori         t0, a0, 1775
                  slli         s7, a7, 0
sub_2_j5:         jal          sp, sub_4 #jump sub_2 -> sub_4
                  slti         tp, a0, -1184
                  and          ra, s7, a2
                  add          tp, tp, s7
                  srai         a6, t4, 17
                  sra          s6, a3, s6
                  nop
32:               sra          tp, t3, t4
33:               slt          s7, s7, a7
                  srl          s7, t1, s10
                  blt          s8, t5, 40f
                  andi         t5, s6, -1201
                  sra          s4, t6, a6
                  blt          s3, gp, 40f
                  blt          s0, s3, 44f
40:               ori          ra, s2, -1463
                  sra          s10, s9, a7
                  slt          s10, a3, s5
                  bltu         gp, a3, 52f
44:               sra          a3, s7, t5
                  addi         zero, s6, 1646
                  and          a0, a6, s7
                  sltu         s1, s9, a6
                  sub          s9, t5, s7
                  sub          s9, s3, a3
                  sltiu        s2, t2, -1961
                  sltu         t2, t6, a6
52:               and          gp, s5, s4
                  bgeu         s2, a2, 72f
                  sltiu        s1, t5, -1828
                  auipc        s9, 326099
                  xor          a3, a2, sp
                  sll          t4, s1, s0
                  srl          t2, s1, zero
                  bge          sp, s1, 70f
                  sub          a1, s4, s4
                  nop
                  xori         s1, s6, 1459
                  lui          s0, 201471
                  xor          s5, t1, t5
                  srai         a1, gp, 1
                  ori          t4, t1, 1533
                  xori         s6, t3, 912
                  sra          a7, s5, a4
                  add          t0, t5, gp
70:               bgeu         s10, s7, 84f
                  bltu         a3, s7, 90f
72:               add          s11, t5, a3
                  auipc        s11, 354769
                  slti         a1, s2, -324
                  beq          a2, a7, 92f
                  bne          a2, t5, 83f
                  sra          a6, t2, s1
                  and          ra, s5, a3
                  bltu         a4, s7, 86f
                  slli         a5, t3, 11
                  slti         t5, ra, -948
                  addi         ra, s0, -175
83:               sltu         zero, s2, a5
84:               bne          s10, t4, 85f
85:               beq          s10, sp, 99f
86:               sll          s3, zero, s1
                  blt          s8, t1, 107f
                  add          gp, s0, a6
                  sltiu        a7, t2, -1093
90:               bgeu         s2, s4, 110f
                  xor          s7, a4, t6
92:               addi         t0, a6, -1959
                  sltu         a7, tp, s4
                  and          s0, zero, gp
                  slt          ra, s5, a6
                  addi         s6, gp, 1786
                  add          a5, a6, a6
                  xori         a5, t2, -277
99:               and          s0, t1, a1
                  andi         t5, a3, -154
                  lui          ra, 880907
                  add          s3, a4, t0
                  and          s2, s10, t3
                  slli         s10, t6, 30
                  add          t2, t3, a1
                  blt          t5, t4, 119f
107:              beq          a2, tp, 119f
                  sub          s5, ra, s11
                  slli         s5, s10, 24
110:              nop
                  bgeu         a4, s0, 121f
                  slli         a0, s1, 25
                  srli         s5, a6, 22
                  slt          a5, ra, s0
                  blt          s7, s3, 127f
                  sra          s7, s10, s4
                  lui          s9, 640801
                  nop
119:              xor          t0, t1, s8
                  srai         a3, a2, 9
121:              bgeu         t2, sp, 131f
                  slti         s1, s3, 1262
                  xori         s4, s2, 208
                  srai         a6, s0, 31
                  sll          t3, t4, s8
                  xori         s3, t0, -1255
127:              add          t0, s0, a5
                  sub          t3, sp, t6
                  add          t2, zero, sp
                  lui          s3, 69185
131:              srli         sp, t0, 23
                  bne          ra, a3, 146f
                  addi         s5, t5, -974
                  sll          tp, s7, sp
                  sltiu        a3, a0, -695
                  addi         gp, t0, -871
                  xor          a6, a3, tp
                  sub          s3, a3, s0
                  xor          a2, s10, zero
                  ori          a6, a2, -535
                  slli         a3, a1, 16
                  sltiu        s0, gp, 1772
                  xor          a5, s9, t3
                  srli         zero, s0, 26
                  nop
146:              xori         s3, a7, 575
                  nop
                  sltu         tp, a1, s11
                  xor          t4, zero, tp
                  and          tp, s9, s5
                  xori         s0, a1, 800
                  bltu         gp, s4, 170f
                  bltu         a4, t2, 155f
                  xor          s9, s8, ra
155:              bgeu         t3, s1, 167f
                  beq          s2, s5, 170f
                  bne          gp, s5, 172f
                  blt          t2, a1, 160f
                  srai         ra, ra, 9
160:              ori          tp, sp, 1076
                  srai         a5, t5, 25
                  beq          a3, a0, 169f
                  sltu         a2, t6, t1
                  and          a6, a0, s9
                  sra          gp, a2, a4
                  slt          s1, a6, t5
167:              bltu         s8, s4, 181f
                  lui          s7, 711734
169:              bgeu         s11, a2, 181f
170:              sra          t0, a5, a0
                  beq          tp, s10, 173f
172:              ori          t5, sp, -762
173:              bge          a7, s3, 185f
                  sltiu        sp, a0, -79
                  sub          sp, zero, s10
                  sll          s10, s5, s2
                  xor          s0, s2, tp
                  xor          s4, a7, s0
                  blt          ra, t0, sub_2_j4 #branch to jump instr
                  srai         a5, s8, 20
                  auipc        s7, 310808
                  slli         t0, s5, 3
                  add          t4, a2, s0
                  slt          s2, t6, sp
                  slti         ra, s0, -1003
                  srli         t5, ra, 31
                  sll          s2, a3, a6
sub_2_j4:         jal          sp, sub_5 #jump sub_2 -> sub_5
                  andi         t2, t1, 1773
                  bgeu         s1, s7, 195f
                  bge          s1, a7, 181f
                  addi         t0, a4, -1834
181:              xori         ra, a6, 931
                  blt          a3, tp, 192f
                  sub          t2, a0, t6
                  srl          s10, a6, t2
185:              or           t0, t0, t1
                  bne          s10, s4, 191f
                  nop
                  sub          a0, s8, a3
                  bgeu         s11, s2, 198f
                  slti         gp, s10, 328
191:              bltu         a2, a2, 205f
192:              bgeu         s10, s7, 202f
                  lui          a6, 1703
                  beq          s3, s7, 213f
195:              srai         sp, a3, 17
                  addi         s11, s8, 1288
                  bgeu         a7, tp, 212f
198:              addi         s2, s11, -1633
                  or           s2, a7, s0
                  andi         s5, s1, 1862
                  add          a7, s10, t3
202:              nop
                  nop
                  xor          s1, s10, a5
205:              add          a5, t3, t6
                  sll          s1, s6, t0
                  nop
                  sltiu        t0, a3, -20
                  bgeu         s7, a0, 217f
                  addi         ra, t2, 316
                  andi         s10, s3, -1435
212:              slli         s2, a6, 19
213:              sll          s0, s7, s4
                  sltu         s3, s1, a5
                  sltu         s0, a5, s6
                  nop
217:              addi         s0, zero, 940
                  slt          s10, gp, a6
                  xor          a3, t3, a0
                  and          s1, t0, s6
                  xor          a7, s11, a5
                  lui          sp, 734847
                  sra          t4, gp, a5
                  srli         s10, s10, 18
                  xori         a0, ra, -1568
                  and          s2, t6, a3
                  blt          s11, s1, 228f
228:              sll          zero, s11, t3
                  nop
                  sll          a2, a4, s7
                  bgeu         ra, t4, 236f
                  bltu         gp, s2, 238f
                  bge          a2, a1, 238f
                  nop
                  nop
236:              slti         gp, t3, 391
                  sll          a0, tp, t5
238:              and          s8, t6, a5
                  slli         s1, s8, 20
                  slli         tp, a5, 14
                  lw           sp, 4(t1)
                  or           s7, a3, t2
                  sub          a1, s5, a2
                  nop
                  addi         t1, t1, 12
                  auipc        s7, 781785
358:              addi x17, x2, 1
358:              jalr x17, x17, 0
sub_1:            addi         t1, t1, -8
                  slti         s7, t6, 1202
                  slli         t5, a1, 9
                  sw           sp, 4(t1)
                  sltiu        a3, a7, 2035
                  sub          a6, s3, s3
                  or           a0, s4, t5
                  and          s1, s8, ra
                  srli         s4, a4, 27
                  srai         a3, a0, 22
                  addi         s11, zero, 7 #init loop 0 counter
                  srli         s4, ra, 17
                  srai         zero, a4, 8
                  addi         a0, zero, -5 #init loop 0 limit
                  sltiu        a2, s9, -176
sub_1_3_0_t:      nop
                  slli         s8, t1, 16
                  nop
                  lui          zero, 139552
                  slt          sp, a7, t0
                  addi         s3, a6, 1910
                  andi         s1, tp, -1865
                  auipc        s3, 489692
                  addi         s11, s11, -6 #update loop 0 counter
                  andi         gp, s10, -1784
                  auipc        gp, 480072
                  and          s7, a2, a6
                  or           t2, s6, a7
                  or           s0, a5, s1
                  auipc        s0, 778234
                  ori          s10, s1, 214
                  bge          s11, a0, sub_1_3_0_t #branch for loop 0
                  nop
                  addi         a5, zero, -1 #init loop 0 counter
                  ori          a2, t2, -1689
                  srai         s5, a5, 28
                  srli         s11, a3, 26
                  add          s0, tp, t4
                  addi         a7, zero, 5 #init loop 0 limit
                  xori         t4, a6, -911
sub_1_5_0_t:      sub          ra, t1, a3
                  addi         a5, a5, 1 #update loop 0 counter
                  sltu         s8, tp, t2
                  xori         s9, s7, 989
                  sltu         tp, t6, s6
                  sltiu        s9, s3, 830
                  srai         a0, s3, 20
                  beq          a5, a7, sub_1_5_0_t #branch for loop 0
                  srai         t3, s9, 9
                  addi         t4, zero, -7 #init loop 1 counter
                  srl          s4, ra, s4
                  addi         t5, zero, 7 #init loop 1 limit
sub_1_7_1_t:      andi         s2, s8, -443
                  xori         s2, s8, 1314
                  addi         t4, t4, 5 #update loop 1 counter
                  addi         t2, zero, 6 #init loop 0 counter
                  addi         t0, zero, 14 #init loop 0 limit
                  ori          a7, a4, 1986
sub_1_7_0_t:      xor          s2, t1, ra
                  addi         t2, t2, 1 #update loop 0 counter
                  addi         s7, t0, -36
                  or           s6, s1, a1
                  sll          ra, s1, a3
                  bltu         t2, t0, sub_1_7_0_t #branch for loop 0
                  bltu         t4, t5, sub_1_7_1_t #branch for loop 1
                  andi         s2, t4, 562
                  addi         s8, zero, 1 #init loop 1 counter
                  addi         s11, zero, -2 #init loop 1 limit
sub_1_6_1_t:      slt          a3, tp, tp
                  addi         s8, s8, -7 #update loop 1 counter
                  auipc        tp, 84257
                  addi         a7, zero, 6 #init loop 0 counter
                  addi         t2, zero, -18 #init loop 0 limit
sub_1_6_0_t:      slti         a1, t0, 1593
                  addi         a7, a7, -6 #update loop 0 counter
                  sra          t3, t3, a4
                  beq          a7, t2, sub_1_6_0_t #branch for loop 0
                  bge          s8, s11, sub_1_6_1_t #branch for loop 1
                  slti         s2, t4, 1234
                  addi         t2, zero, 1 #init loop 0 counter
                  sll          gp, sp, t4
                  sra          a2, t6, s4
                  addi         ra, zero, -15 #init loop 0 limit
                  slt          t5, ra, tp
                  slli         t0, a0, 30
                  xor          s4, t2, a6
                  slti         a5, s5, 535
                  nop
sub_1_2_0_t:      lui          a6, 486198
                  add          sp, zero, sp
                  xor          a0, t5, t0
                  lui          s4, 686463
                  addi         t2, t2, -8 #update loop 0 counter
                  sra          a2, s3, s10
                  slti         s3, t6, 1714
                  slti         tp, a5, 698
                  slt          sp, s9, a7
                  sub          s10, a7, a3
                  add          s8, a5, s8
                  bne          t2, ra, sub_1_2_0_t #branch for loop 0
                  add          s7, s3, a5
                  addi         gp, zero, 7 #init loop 1 counter
                  or           tp, a6, s7
                  sub          a3, t6, t2
                  add          s8, s1, sp
                  slti         zero, s10, 257
                  sub          s5, s8, s2
                  addi         s10, zero, 19 #init loop 1 limit
                  lui          s0, 942276
sub_1_10_1_t:     xori         a3, s1, -1604
                  or           s5, s4, s1
                  addi         gp, gp, 2 #update loop 1 counter
                  srai         tp, zero, 26
                  sra          a3, a2, a2
                  xori         t2, a5, 998
                  nop
                  addi         s9, zero, 6 #init loop 0 counter
                  srli         a0, s10, 14
                  addi         ra, zero, 11 #init loop 0 limit
sub_1_10_0_t:     xori         s4, ra, -991
                  srai         a7, t3, 10
                  addi         s9, s9, 2 #update loop 0 counter
                  xori         a7, a3, 765
                  slti         a0, s10, 1757
                  blt          s9, ra, sub_1_10_0_t #branch for loop 0
                  slli         t3, s5, 25
                  slt          t5, tp, t2
                  xori         s1, a0, 2036
                  bne          gp, s10, sub_1_10_1_t #branch for loop 1
                  and          a6, a0, zero
                  addi         a5, zero, -3 #init loop 0 counter
                  sll          a2, t3, t3
                  auipc        t3, 978359
                  addi         a6, zero, 17 #init loop 0 limit
sub_1_1_0_t:      slt          gp, sp, s1
                  and          t3, s5, s1
                  sra          t2, s9, a4
                  add          ra, a2, s6
                  addi         a5, a5, 7 #update loop 0 counter
                  sll          s6, s9, tp
                  bltu         a5, a6, sub_1_1_0_t #branch for loop 0
                  sra          zero, s7, a4
                  addi         a6, zero, -10 #init loop 0 counter
                  srli         t5, a4, 20
                  andi         sp, a5, 1358
                  ori          s6, s3, -1127
                  addi         t3, zero, -20 #init loop 0 limit
                  xor          t0, s11, t0
sub_1_4_0_t:      ori          zero, a7, -1337
                  addi         a6, a6, -5 #update loop 0 counter
                  xori         tp, s8, 515
                  and          t5, s7, sp
                  ori          zero, s4, 1841
                  sltiu        s7, a3, 1149
                  sra          a0, s4, s3
                  addi         t4, a7, -1109
                  xori         a0, a2, 132
                  beq          a6, t3, sub_1_4_0_t #branch for loop 0
                  srli         s9, s6, 0
                  beq          s4, t4, 11f
                  sra          s4, a7, s7
                  xor          a2, t2, ra
                  bltu         t0, tp, 13f
                  sub          s1, t0, a2
                  auipc        t0, 517762
                  slti         a6, sp, 1514
                  srl          ra, t6, s9
                  lui          zero, 901148
                  slli         zero, t5, 26
                  xor          t4, s6, s4
11:               bgeu         s7, tp, 22f
                  lui          t3, 958006
13:               slt          t4, a4, t0
                  lui          tp, 910675
                  addi         a6, a3, 1614
                  slt          zero, s6, s2
                  addi         a5, a5, 1848
                  bne          t0, zero, 27f
                  srai         a1, a2, 11
                  addi         a1, t1, -56
                  xori         a7, s8, 1491
22:               slt          tp, sp, s2
                  sltiu        tp, s0, 1076
                  xor          a7, a5, a3
                  bge          t4, t6, 33f
                  sll          t0, s4, a7
27:               slti         s6, a5, 1968
                  beq          s8, t3, 42f
                  sra          sp, s7, a3
                  addi         s9, a4, -1579
                  sub          s1, s7, s1
                  xori         s6, gp, 387
33:               slti         t0, s2, 368
                  bltu         a5, s2, 52f
                  bne          gp, a7, 49f
                  srl          gp, s8, s6
                  or           a1, a5, t5
                  slti         s9, s10, -1499
                  srli         s4, s11, 19
                  blt          s6, s7, 56f
                  or           s3, s11, tp
42:               auipc        gp, 599331
                  or           s7, t1, ra
                  bne          s7, s11, 55f
                  srai         s2, a6, 5
                  xori         s1, s11, 997
                  or           s2, t5, sp
                  bgeu         t1, a6, 58f
49:               srli         s11, a2, 28
                  or           s1, s6, s11
                  beq          ra, tp, 53f
52:               or           t0, a2, a5
53:               sub          s4, gp, a3
                  srai         a3, s6, 11
55:               add          t0, a7, a5
56:               bge          s6, gp, 71f
                  sltiu        a1, s3, -1508
58:               srli         sp, ra, 20
                  add          a3, s4, tp
                  srl          sp, a7, s1
                  add          t2, t6, tp
                  and          a2, s0, s0
                  la           gp, sub_3
                  sub          t2, a4, s1
                  addi         gp, gp, 316
                  slli         a2, t1, 6
                  lui          s2, 805239
                  xor          zero, a2, a7
                  sra          a3, a7, t3
                  add          s7, s7, a3
                  xor          sp, t2, a0
                  andi         a2, gp, 873
sub_1_j3:         jalr         sp, gp, -315 #jump sub_1 -> sub_3
                  lui          a5, 713601
                  bge          a6, s6, 67f
                  nop
                  bltu         s2, a5, 79f
                  or           zero, ra, t3
                  sub          tp, t1, tp
67:               bge          s7, a7, 77f
                  slli         s3, t2, 1
                  srai         s2, s2, 22
                  add          s2, a7, t4
71:               auipc        s4, 819214
                  auipc        a7, 176660
                  sltiu        t3, a7, 1066
                  and          s3, s3, a1
                  and          s9, s11, a5
                  sra          s3, t0, s9
77:               slt          tp, a4, s10
                  slti         a1, s6, -587
79:               srl          gp, a1, a1
                  blt          s0, t1, 97f
                  slti         t0, s8, -1858
                  lui          s1, 963250
                  xori         s10, ra, -1055
                  sll          s9, zero, s3
                  or           tp, s8, s8
                  and          a1, t5, zero
                  sub          a7, s4, s7
                  slti         zero, s5, -851
                  bgeu         t6, s8, 98f
                  srai         s10, a5, 16
                  auipc        s5, 360011
                  bltu         s4, t2, 98f
                  sltiu        s8, s4, 1519
                  slli         s10, t2, 24
                  lui          s5, 233572
                  nop
97:               bltu         a7, s8, 107f
98:               addi         s7, s4, -1694
                  slti         s11, t4, -1232
                  blt          t1, s7, 109f
                  beq          a3, a4, 113f
                  sra          t3, s2, t5
                  bltu         t6, s8, 106f
                  bne          t4, s1, 113f
                  add          s8, a0, t0
106:              bge          t4, a1, 120f
107:              bgeu         t1, a0, 118f
                  ori          s7, a0, 553
109:              xor          zero, a4, s8
                  sub          a6, a0, s11
                  bne          a3, ra, 129f
                  add          t3, s1, a4
113:              srai         s2, s7, 24
                  srai         s7, a4, 30
                  beq          s6, a6, 130f
                  bne          a6, s1, 129f
                  srli         a2, a3, 13
118:              sra          s5, a2, zero
                  bne          s7, a2, 138f
120:              sltiu        s9, s1, -921
                  and          t4, tp, s0
                  xor          s1, s11, s9
                  and          ra, tp, t0
                  srl          a2, t5, a3
                  add          a2, t3, a5
                  sltiu        a3, a0, -1278
                  addi         a2, t5, -1210
                  sltu         a2, t0, s10
129:              andi         a3, s10, -1424
130:              blt          s4, t6, 148f
                  add          a5, a6, s5
                  srl          a7, t4, a2
                  bgeu         gp, tp, 144f
                  beq          t6, t3, 143f
                  xor          t4, s4, zero
                  sltiu        tp, a3, 1704
                  nop
138:              addi         s9, s10, -1278
                  sltiu        s7, a3, 141
                  sll          t5, s11, s3
                  addi         s11, t1, -1368
                  bgeu         s2, a2, 152f
143:              andi         t0, a1, 2041
144:              and          s11, s3, ra
                  lui          a3, 759745
                  bne          t2, s8, 161f
                  bne          t4, a7, 161f
148:              slti         s9, s3, 1543
                  slt          s1, t3, s5
                  ori          s10, s7, -392
                  bltu         s6, t4, 160f
152:              beq          s4, s9, 167f
                  nop
                  and          t0, s7, s3
                  bge          s5, a6, 157f
                  or           s5, s6, s4
157:              ori          sp, tp, -1118
                  sltu         gp, gp, t6
                  and          s6, s0, t0
160:              bge          a0, s9, 171f
161:              bge          s3, a3, 175f
                  sra          sp, ra, s7
                  addi         t3, t0, 1041
                  slti         t0, t3, -499
                  and          s10, s10, s5
                  sra          zero, t5, t0
167:              slt          s2, s2, t4
                  xori         a3, s3, 1714
                  slt          a7, s8, t6
                  srli         a5, t0, 30
171:              bne          s8, s9, 181f
                  xor          a7, t4, s10
                  sll          s3, a6, a7
                  lui          t4, 629123
175:              ori          s2, a3, -21
                  srli         sp, sp, 24
                  or           s5, s3, s5
                  slti         s3, s2, -1747
                  slli         s11, s3, 13
                  addi         a1, a0, -25
181:              blt          a2, s2, 190f
                  auipc        s5, 689293
                  srl          s10, a4, t2
                  blt          t4, a4, 203f
                  xor          s0, t6, s2
                  addi         zero, a2, -1283
                  xori         a6, tp, -460
                  lui          s0, 437776
                  bltu         t1, zero, 204f
190:              andi         s8, s9, -1615
                  beq          a3, gp, 197f
                  or           s8, t1, tp
                  slli         s5, s9, 23
                  bge          t6, s0, 208f
                  xori         s1, t1, 1342
                  blt          s1, s3, 201f
197:              ori          s5, a0, -1070
                  beq          a4, s11, 201f
                  slti         t5, zero, 667
                  sltu         a0, t3, t3
201:              sltu         a5, a6, a1
                  sll          s6, s6, s8
203:              and          s10, a1, a1
204:              srai         t5, a3, 25
                  lui          t3, 415913
                  bne          t0, t1, 219f
                  andi         s9, s10, -600
208:              bne          t5, zero, 218f
                  xori         t3, a5, -1887
                  xor          s5, t2, s6
                  bne          tp, t4, 221f
                  andi         s1, a6, 975
                  lui          s1, 225224
                  srl          s0, s10, a6
                  ori          s7, t6, -837
                  xori         a6, s7, -1469
                  slt          a3, s1, gp
218:              srl          s5, s3, s5
219:              addi         t2, s7, 1863
                  sra          a5, t6, s10
221:              bgeu         s9, t6, 232f
                  bltu         t5, sp, 230f
                  srai         s9, gp, 15
                  blt          s1, gp, 236f
                  slt          t2, t6, tp
                  and          ra, t4, s8
                  sltiu        a2, s9, -572
                  sltu         s10, t0, s7
                  add          s5, a3, a7
230:              bltu         t1, s2, 241f
                  ori          a7, a1, 1742
232:              nop
                  xor          a6, s0, s11
                  ori          s8, s5, 1904
                  sltiu        a0, s2, 522
236:              bltu         sp, s8, 245f
                  and          t4, t1, a5
                  bne          s9, t3, 256f
                  beq          s7, s0, 256f
                  bne          a7, s1, 256f
241:              sll          a1, t1, gp
                  slli         s0, t1, 12
                  andi         a2, ra, -734
                  sltu         s1, s2, s7
245:              add          a1, gp, a5
                  sll          a2, s8, a5
                  nop
                  or           s4, a3, s11
                  sub          zero, s2, gp
                  slli         t3, t5, 18
                  addi         s7, zero, 1 #init loop 0 counter
                  srl          sp, s6, t4
                  sltu         sp, a0, a1
                  srli         a3, t5, 8
                  add          zero, a0, s4
                  xor          a3, sp, s2
                  addi         s5, zero, -3 #init loop 0 limit
sub_1_0_0_t:      and          ra, gp, s1
                  addi         s7, s7, -9 #update loop 0 counter
                  and          a7, gp, s8
                  auipc        zero, 874727
                  sltu         s11, s4, zero
                  addi         s0, a0, -2026
                  slli         s9, a3, 25
                  add          a3, a4, s9
                  sltiu        s8, s8, 1933
                  addi         s9, t0, -155
                  or           a1, s4, s8
                  andi         s2, t3, -1642
                  bge          s7, s5, sub_1_0_0_t #branch for loop 0
                  srai         s11, s3, 17
                  lui          s4, 528670
                  slli         t2, t6, 24
                  bge          gp, zero, 263f
                  bltu         a3, ra, 269f
                  sltiu        gp, s9, -23
256:              bgeu         s3, s10, 259f
                  srl          sp, a1, s10
                  bgeu         s11, s6, 274f
259:              sll          s10, a0, s9
                  lui          t4, 300081
                  ori          s3, a6, 1075
                  bltu         a4, t2, 264f
263:              ori          t4, a5, -1165
264:              srli         t3, s5, 22
                  bgeu         a4, ra, 280f
                  sltu         s4, s5, s0
                  srli         gp, s9, 8
                  or           ra, s5, s11
269:              add          t5, t0, t2
                  or           s8, zero, s4
                  bge          a5, s0, 289f
                  beq          s3, a4, 283f
                  addi         a2, s6, 901
274:              sltiu        a0, a3, 1713
                  nop
                  andi         s1, t2, 1953
                  bgeu         a0, t4, 285f
                  srl          zero, s9, gp
                  sll          s11, t0, s2
280:              bge          t5, s8, 290f
                  add          s4, s7, s7
                  srl          s0, t2, s6
283:              sra          s6, s6, s6
                  ori          s7, s4, -1767
285:              srai         t5, t5, 5
                  nop
                  bltu         a2, t1, 293f
                  and          tp, a1, s11
289:              nop
290:              slt          s11, gp, a2
                  or           s6, s4, a0
                  beq          a4, t3, 304f
293:              sra          s10, sp, s5
                  bltu         s10, t2, 311f
                  lui          s3, 108232
                  xor          a3, s7, sp
                  add          t3, s5, a2
                  sltu         s11, a0, t0
                  sll          s11, s1, t1
                  sra          s9, zero, a5
                  sub          s7, s11, a5
                  or           s5, a3, s9
                  slti         s7, a4, -1915
304:              or           s9, a6, a3
                  andi         s7, a2, -223
                  slti         t5, gp, 120
                  ori          s7, s2, 384
                  xori         s3, s11, -995
                  srli         s2, a2, 15
                  sra          a1, t5, s6
311:              sltu         s0, s4, s7
                  srli         s7, t1, 29
                  slti         s10, t1, -1257
                  and          a7, t1, s11
                  sra          t4, s3, t1
                  srl          zero, gp, t6
                  and          s0, t5, a4
                  and          s5, zero, s2
                  bge          s9, a5, 334f
                  sltu         s4, s2, t1
                  slti         a7, t5, -601
                  auipc        t3, 117781
                  ori          s10, t5, 1428
                  xori         a2, gp, 977
                  bne          s1, sp, 343f
                  xor          s8, a5, s3
                  srli         s9, s4, 22
                  slt          s7, t6, a7
                  addi         s8, s1, -922
                  bgeu         s2, t2, 335f
                  and          s0, a5, s4
                  slt          tp, a3, s8
                  sll          t5, a0, s7
334:              sltu         tp, a6, s2
335:              srl          a6, s5, t5
                  sltu         s7, t4, a3
                  bge          t1, s4, 346f
                  bltu         t2, s10, 351f
                  srl          a7, t5, tp
                  sra          a5, zero, s2
                  srli         t2, s11, 14
                  sltu         s0, s6, s6
343:              auipc        a6, 491551
                  beq          zero, t6, 358f
                  sltiu        s7, t2, -899
346:              lui          s8, 480300
                  lui          t4, 707815
                  sltu         t3, a5, s11
                  addi         t0, a6, 1867
                  xori         s3, s7, -221
351:              slt          s11, a0, s10
                  nop
                  srl          s10, s2, s9
                  srai         s2, ra, 21
                  xor          s2, gp, s3
                  add          t5, t0, s7
                  sll          t0, s5, a1
358:              sub          t5, zero, s2
                  sub          ra, s11, a3
                  addi         a1, t4, 641
                  nop
                  and          a5, t5, gp
                  or           a6, s5, s7
                  srai         s3, tp, 4
                  slti         a5, a7, 567
                  slli         s7, a2, 14
                  bltu         t1, s0, 381f
                  sltu         s9, a0, s1
                  slli         s6, a6, 27
                  xori         t3, s7, -228
                  sub          s10, s9, a6
                  auipc        t4, 560768
                  and          s4, gp, s2
                  xori         s8, a5, -425
                  bltu         a3, t1, 384f
                  xori         s7, t4, -1991
                  bne          s11, a7, 391f
                  srai         s10, s5, 30
                  or           s5, t1, s5
                  andi         gp, t4, 1341
381:              slti         s8, a4, -212
                  addi         t4, a7, 1874
                  and          s9, ra, zero
384:              slt          a1, a5, s4
                  srl          s5, t3, sp
                  slti         ra, t4, 885
                  srai         s5, sp, 8
                  bgeu         t5, s3, 399f
                  slli         t2, t3, 27
                  sll          a6, t3, s2
391:              slli         s8, s6, 6
                  srl          t0, a0, s10
                  slt          s6, a1, a2
                  auipc        ra, 171858
                  or           t5, a2, sp
                  sltu         s2, s11, a1
                  bge          ra, s8, 406f
                  beq          t4, sp, 409f
399:              slti         a7, a0, -1585
                  xori         s1, t3, -1204
                  srli         sp, t1, 4
                  beq          t5, s4, 411f
                  srl          s5, a5, t2
                  andi         s0, s6, -301
                  lui          a3, 783640
406:              auipc        a7, 312621
                  slli         a6, s3, 17
                  beq          t1, s5, 418f
409:              add          s0, zero, t6
                  slli         t5, a2, 31
411:              ori          tp, t3, 2021
                  lui          s10, 602665
                  bgeu         a1, a4, 432f
                  auipc        s1, 241734
                  blt          s4, a5, 426f
                  sll          tp, t0, t4
                  sltiu        a1, s3, 656
418:              bgeu         ra, a4, 428f
                  sub          s11, s7, t2
                  sra          ra, a2, s10
                  beq          gp, t6, 432f
                  sltu         sp, s9, a6
                  add          a5, t3, a2
                  bltu         s2, s10, 439f
                  bgeu         t5, a6, 441f
426:              sltiu        a1, t0, -1573
                  xor          a1, s5, t2
428:              bge          a0, a6, 443f
                  xori         ra, s9, 1975
                  srai         ra, t4, 14
                  beq          tp, s10, 436f
432:              slt          s1, s2, t4
                  bgeu         t2, zero, 451f
                  slli         s1, s2, 25
                  bge          a4, ra, 441f
436:              addi         s8, a1, -1388
                  slt          zero, s11, gp
                  slt          a2, zero, s0
439:              srai         tp, ra, 3
                  or           s11, zero, s0
441:              sltu         s1, t6, t3
                  addi         a0, zero, -9 #init loop 0 counter
                  sltiu        a6, t4, -194
                  sub          a7, a3, zero
                  srli         s3, a3, 21
                  xori         zero, s9, 932
                  sra          t0, s3, s4
                  srai         s6, a1, 31
                  srai         s0, t6, 14
                  sub          s2, s3, s9
                  addi         a1, zero, 10 #init loop 0 limit
                  and          s5, s6, t5
sub_1_8_0_t:      addi         t2, s2, -1410
                  slli         t2, s7, 5
                  srl          gp, s6, a5
                  xor          gp, s6, s5
                  sll          a5, s4, t5
                  nop
                  slli         s3, s10, 10
                  auipc        a3, 496265
                  slti         a7, t0, 216
                  lui          t3, 205679
                  and          t3, ra, a1
                  addi         a0, a0, 1 #update loop 0 counter
                  sub          a6, s0, gp
                  or           t2, a4, a5
                  xor          s7, t5, s9
                  blt          a0, a1, sub_1_8_0_t #branch for loop 0
                  slli         s8, s3, 0
                  sra          t4, s3, t2
443:              nop
                  ori          s7, tp, -1257
                  beq          ra, s5, 455f
                  srl          s3, a5, s9
                  slt          zero, t0, t5
                  add          a2, gp, a0
                  addi         t0, t3, 1636
                  sltiu        t0, s11, 335
451:              bne          a1, t4, 468f
                  slti         s9, sp, 181
                  sub          ra, s10, s6
                  lui          s6, 102249
455:              sra          gp, s11, t0
                  beq          a5, zero, 467f
                  srli         a0, s10, 6
                  slt          tp, a4, a5
                  blt          a2, a1, 472f
                  lui          s8, 257350
                  xor          s9, a1, s3
                  addi         a3, a5, 864
                  sra          t5, s5, s8
                  bne          t0, a3, 478f
                  bgeu         a2, s10, 474f
                  addi         t0, zero, 9 #init loop 0 counter
                  sub          s6, t6, s5
                  or           a5, a5, s5
                  xor          a0, t1, t2
                  andi         a5, s10, 1584
                  sll          s4, s2, s3
                  slt          a1, s4, s0
                  addi         s10, zero, 9 #init loop 0 limit
                  lui          s5, 899556
sub_1_9_0_t:      addi         s3, a6, 983
                  xori         s8, a6, -230
                  sub          t2, s3, a6
                  sltu         gp, s4, a3
                  nop
                  addi         t2, a0, -148
                  addi         t0, t0, -7 #update loop 0 counter
                  and          ra, s11, s9
                  ori          sp, gp, -1872
                  nop
                  auipc        s2, 240541
                  bgeu         t0, s10, sub_1_9_0_t #branch for loop 0
                  add          sp, s4, s4
                  and          s9, a1, s2
467:              nop
468:              xor          a7, a2, s8
                  lui          t3, 1046952
                  slti         a1, gp, -833
                  ori          tp, t3, -1001
472:              srli         s7, s6, 5
                  bne          s5, s6, 488f
474:              slt          t2, sp, s7
                  slli         s11, s8, 4
                  or           s1, s1, gp
                  sll          t4, s1, a2
478:              xor          t4, a3, a0
                  bltu         s0, t3, 490f
                  auipc        tp, 490618
                  xori         t3, s11, -1286
                  slt          gp, s5, sp
                  addi         a0, s4, 1090
                  bgeu         t1, s0, 493f
                  xori         a2, a2, 3
                  slli         s3, s8, 28
                  bne          t6, t2, 505f
488:              lui          s0, 716342
                  sra          a7, s9, s4
490:              sra          s0, s4, s5
                  bgeu         a7, t6, 510f
                  addi         s3, a7, -738
493:              xor          a2, s0, s11
                  sll          t2, zero, s1
                  bne          ra, t1, 509f
                  sltu         a3, s11, a7
                  beq          sp, t6, 500f
                  and          s10, s9, s0
                  addi         ra, s11, 282
500:              auipc        t0, 201118
                  xori         a3, sp, -434
                  srli         t0, tp, 14
                  nop
                  srli         s5, a7, 8
505:              srai         s7, s7, 17
                  blt          t3, t3, 515f
                  srli         a7, s4, 5
                  and          t3, gp, ra
509:              slti         s0, s4, 864
510:              addi         t4, a6, 1059
                  xor          s5, s4, t5
                  or           a7, a0, t4
                  ori          a1, s1, -1627
                  xor          t4, s2, a5
515:              bltu         zero, s10, 523f
                  slti         a3, tp, -862
                  andi         s5, t2, 526
                  sra          a3, tp, s6
                  slti         s7, a3, 1884
                  beq          s11, a3, 530f
                  sltiu        t0, a2, -1718
                  srai         s1, a5, 4
523:              xori         zero, a1, 849
                  ori          a5, a6, 1817
                  srai         a7, a4, 26
                  slt          t2, s7, s10
                  xori         t3, s8, -1975
                  bge          s6, s7, 539f
                  xori         ra, s9, -367
530:              lui          s2, 198075
                  blt          a1, s0, 533f
                  bge          t3, t2, 544f
533:              blt          t6, t2, 542f
                  bne          s6, t4, 544f
                  sltiu        a2, ra, 18
                  srai         a2, a3, 14
                  add          s5, s10, tp
                  bge          sp, s10, 548f
539:              slt          s6, s8, a5
                  slt          a3, s3, s10
                  bge          s8, s2, 555f
542:              add          sp, s0, s7
                  ori          s3, s9, -1389
544:              or           s9, t6, t6
                  bltu         s7, tp, 553f
                  xor          s11, t6, a2
                  ori          s1, t4, 862
548:              slli         gp, t2, 12
                  bne          tp, s11, 557f
                  nop
                  xor          a5, t1, a3
                  lui          a0, 898177
553:              beq          s10, s11, 557f
                  addi         s4, s9, 149
555:              blt          a2, a5, 557f
                  srl          a1, s0, a3
557:              xor          s1, s1, s2
                  xori         t4, t2, -1538
                  lw           sp, 4(t1)
                  add          a3, s6, t1
                  sltu         s3, t6, a6
                  sub          s8, s8, sp
                  sll          tp, a5, s0
                  auipc        s10, 68282
                  addi         t1, t1, 8
                  sra          s11, t4, ra
                  and          a6, s0, zero
                  sra          t4, t5, sp
812:              addi x9, x2, 1
812:              jalr x9, x9, 0
sub_3:            slti         t3, a2, 1815
                  addi         t1, t1, -20
                  sll          gp, gp, s5
                  addi         s11, s3, 1629
                  and          a1, s9, a0
                  sw           sp, 4(t1)
                  add          a2, a4, t4
                  xori         a6, s1, -955
                  srai         s5, a7, 8
                  andi         s1, a2, 1637
                  srl          t5, s1, a2
                  sll          a3, s5, s2
                  addi         t5, zero, -7 #init loop 1 counter
                  lui          a3, 572100
                  and          s4, s0, t5
                  srli         tp, ra, 5
                  ori          s8, a1, 780
                  srli         s1, t6, 19
                  addi         a7, zero, 2 #init loop 1 limit
                  nop
                  lui          tp, 424765
sub_3_3_1_t:      ori          s9, a7, -1549
                  srl          t4, t5, t3
                  addi         t5, t5, 9 #update loop 1 counter
                  or           t4, s4, a7
                  addi         s11, zero, 8 #init loop 0 counter
                  addi         tp, a0, 1553
                  sub          s5, s11, s1
                  sltu         a3, s10, a1
                  addi         a1, zero, 20 #init loop 0 limit
                  slt          s9, s8, t1
sub_3_3_0_t:      auipc        tp, 201993
                  addi         s11, s11, 6 #update loop 0 counter
                  srai         tp, sp, 24
                  or           s5, a6, ra
                  auipc        s2, 730013
                  beq          s11, a1, sub_3_3_0_t #branch for loop 0
                  and          s7, s4, t2
                  bltu         t5, a7, sub_3_3_1_t #branch for loop 1
                  andi         s7, s2, -1309
                  addi         s2, zero, 7 #init loop 1 counter
                  addi         gp, zero, 6 #init loop 1 limit
sub_3_2_1_t:      slt          s1, a3, t2
                  addi         s2, s2, -5 #update loop 1 counter
                  sltiu        s7, a2, 930
                  addi         sp, zero, 9 #init loop 0 counter
                  addi         t3, zero, 2 #init loop 0 limit
sub_3_2_0_t:      ori          a0, s7, 1893
                  sll          s3, t2, s3
                  addi         sp, sp, -7 #update loop 0 counter
                  beq          sp, t3, sub_3_2_0_t #branch for loop 0
                  and          zero, gp, s8
                  addi         s10, ra, 606
                  bgeu         s2, gp, sub_3_2_1_t #branch for loop 1
                  xori         t0, s5, -635
                  addi         a3, zero, 7 #init loop 0 counter
                  addi         t2, zero, 17 #init loop 0 limit
                  andi         s11, zero, -1849
sub_3_1_0_t:      slt          s4, s9, t0
                  addi         a3, a3, 10 #update loop 0 counter
                  bne          a3, t2, sub_3_1_0_t #branch for loop 0
                  and          s5, s0, t6
                  addi         s11, zero, 7 #init loop 0 counter
                  addi         a0, zero, 5 #init loop 0 limit
                  auipc        s10, 488864
                  srai         zero, a5, 25
sub_3_0_0_t:      lui          s6, 714301
                  slti         s0, t6, -1895
                  addi         s11, s11, -2 #update loop 0 counter
                  lui          sp, 160859
                  sltu         s1, s9, s11
                  or           a6, gp, s11
                  addi         a7, s8, -1773
                  lui          t5, 827008
                  bgeu         s11, a0, sub_3_0_0_t #branch for loop 0
                  sltiu        a6, s5, -1823
                  srai         s7, sp, 4
                  srl          s8, zero, s11
                  xor          s10, t0, a5
                  bge          t5, gp, 13f
                  and          zero, ra, a1
                  bgeu         s0, s8, 9f
                  add          a0, tp, sp
                  bge          t2, a0, 14f
                  sltiu        s0, a2, -890
9:                slli         a3, sp, 5
                  or           s5, a3, t6
                  slti         s8, t5, 1649
                  slti         s7, a2, 1899
13:               ori          a7, a5, -588
14:               sltiu        t2, s3, 1699
                  slli         t2, a0, 28
                  sra          zero, a0, zero
                  sll          s8, a6, a1
                  addi         t4, a3, 1572
                  bgeu         t1, t4, 28f
                  blt          t3, s9, 25f
                  sra          a0, s4, t0
                  auipc        s11, 483702
                  bltu         sp, a6, 42f
                  andi         a1, s7, 1218
25:               add          a3, t3, a1
                  bgeu         a3, t4, 31f
                  srai         s2, a6, 21
28:               or           t2, s5, tp
                  xor          s4, s10, s3
                  or           a2, sp, t2
31:               srai         s11, s2, 22
                  slti         s6, s11, -1146
                  srai         a0, tp, 4
                  sltu         sp, s1, s11
                  srai         s5, tp, 6
                  auipc        a2, 755377
                  and          a7, s8, s10
                  and          a3, a4, t4
                  bltu         s1, t4, 53f
                  xori         s8, sp, 1698
                  lui          a3, 182582
42:               sltu         s8, a4, s5
                  slt          s8, sp, s3
                  and          s9, t4, s10
                  lui          t3, 768288
                  nop
                  sra          s8, s6, s9
                  bge          s11, s1, 54f
                  sll          s11, a4, t6
                  or           s6, s7, s11
                  bge          s3, tp, 60f
                  bne          t2, t0, 63f
53:               sra          a2, t2, gp
54:               bge          a5, a6, 72f
                  and          sp, a1, tp
                  beq          a7, s3, 75f
                  ori          s9, t5, -180
                  xor          a6, t4, s5
                  bgeu         s4, t1, 76f
60:               sltiu        tp, s4, 945
                  sll          s11, t2, t6
                  addi         tp, zero, -10 #init loop 0 counter
                  sltu         s4, t0, gp
                  xori         a6, a2, -739
                  sltu         s1, a4, t6
                  slti         gp, t1, 1657
                  addi         ra, zero, -1 #init loop 0 limit
                  sra          gp, a3, s5
                  addi         s1, a6, 699
sub_3_4_0_t:      lui          gp, 322795
                  xor          s11, s7, a7
                  srli         gp, s3, 6
                  xor          a3, a0, s1
                  addi         tp, tp, 6 #update loop 0 counter
                  auipc        gp, 791705
                  sltiu        s2, s1, 1708
                  srai         a5, gp, 2
                  nop
                  blt          tp, ra, sub_3_4_0_t #branch for loop 0
                  sra          s11, gp, tp
                  xor          a2, s9, s11
63:               auipc        s10, 951131
                  blt          s8, a6, 66f
                  bltu         t4, a4, 73f
66:               nop
                  and          a7, s4, t4
                  beq          a3, t5, 80f
                  slt          s5, a3, a2
                  sltu         s4, a6, t4
                  sll          t0, s1, t6
72:               bge          tp, a1, 79f
73:               andi         t2, a3, -1901
                  slti         s2, s10, -1559
75:               addi         s6, t2, -1616
76:               auipc        a2, 684364
                  lui          t5, 786691
                  sltiu        a5, t3, 662
79:               slli         tp, t0, 4
80:               sltu         ra, s10, a1
                  xor          s11, a5, gp
                  sltiu        t2, s7, 1119
                  bge          s1, a5, 100f
                  srli         tp, a0, 6
                  sltiu        s6, s4, 760
                  sra          s8, t0, a2
                  slti         zero, s11, -732
                  sra          a6, t1, s4
                  slti         t3, a7, -263
                  addi         ra, a1, -1063
                  addi         s3, s10, -97
                  bge          s1, s9, 100f
                  bge          s6, s10, 103f
                  sub          s9, s6, t3
                  nop
                  sub          s10, s4, s1
                  nop
                  auipc        tp, 955092
                  xor          s8, t2, s0
100:              xori         s5, sp, 1293
                  bne          zero, t1, 104f
                  and          zero, t2, a3
103:              ori          t5, s6, 1303
104:              nop
                  xor          a2, s6, t1
                  beq          s5, s2, 116f
                  bltu         s11, a5, 112f
                  slli         t5, s0, 25
                  and          s4, s7, t1
                  xor          s9, tp, s1
                  andi         ra, a3, 1135
112:              slti         s7, s10, 416
                  srl          tp, ra, t4
                  andi         a6, a1, 310
                  slli         s10, t0, 26
116:              nop
                  sltu         ra, t2, a5
                  sltu         a1, s11, s4
                  srli         gp, t5, 1
                  sltu         a1, sp, a0
                  ori          t0, s10, 309
                  slti         s4, s6, -25
                  add          a0, s1, gp
                  and          s1, a3, a4
                  or           sp, gp, tp
                  xori         t0, a7, -1718
                  sra          s11, a5, t6
                  sltu         s5, s2, s0
                  sltiu        a5, t2, 78
                  blt          gp, a7, 139f
                  nop
                  beq          t6, t6, 145f
                  srai         tp, a4, 23
                  beq          t0, t3, 136f
                  xor          t5, s8, s0
136:              xori         t4, t3, -35
                  sub          a7, s10, a4
                  sll          gp, t2, t4
139:              sltu         ra, a1, t0
                  blt          s11, t1, 143f
                  sltu         a5, t3, s3
                  sltiu        s3, t1, 682
143:              and          s10, t2, s5
                  sltu         ra, s6, a4
145:              sll          s10, t4, t6
                  bge          s6, ra, 158f
                  sll          s3, sp, t1
                  slti         sp, t2, -52
                  srli         s2, s0, 0
                  sll          t2, t5, a5
                  beq          a4, zero, 153f
                  addi         a1, s4, 1474
153:              auipc        a2, 594118
                  nop
                  slt          t0, s7, zero
                  or           t2, a1, t0
                  slti         s7, s6, -1854
158:              xor          a0, t6, a6
                  sub          t3, s8, ra
                  srai         s1, s3, 9
                  bgeu         s3, s2, 179f
                  bge          t3, s11, 165f
                  auipc        a5, 252042
                  srai         zero, ra, 14
165:              beq          s9, s7, 184f
                  ori          s9, s10, 673
                  srli         zero, s7, 5
                  sub          s8, a2, a3
                  nop
                  slti         a5, s11, 421
                  bge          gp, t1, 184f
                  blt          a2, zero, 177f
                  nop
                  addi         s10, s11, 1123
                  or           t4, ra, s3
                  bne          t0, s2, 180f
177:              blt          t3, a3, 179f
                  sra          s5, s2, t6
179:              slt          s4, s6, t0
180:              sll          t0, s11, a1
                  sub          s9, gp, s11
                  slt          s10, s10, t0
                  addi         ra, s4, -1834
184:              nop
                  beq          s1, a0, 192f
                  slli         a7, s11, 30
                  beq          t4, a4, 195f
                  ori          s10, s3, 1975
                  bne          a0, t6, 195f
                  bltu         a4, a1, 197f
                  bge          t1, zero, 201f
192:              auipc        a7, 799910
                  or           s3, s8, s2
                  xor          a0, s1, a5
195:              bne          t4, s1, 204f
                  slt          s6, a4, s7
197:              beq          gp, zero, 207f
                  sll          t0, zero, t5
                  slli         ra, s10, 22
                  sltu         s3, tp, s6
201:              xor          s11, s4, a2
                  bltu         s1, s0, 210f
                  bgeu         s6, t2, 220f
204:              sll          a6, a1, s8
                  auipc        s10, 598808
                  add          t2, s9, tp
207:              xori         s0, t6, 1023
                  ori          s11, s8, -1008
                  sll          s6, sp, s1
210:              srl          s9, s10, t2
                  srl          t3, s5, a2
                  sub          s11, a5, s9
                  and          t2, t3, t3
                  slt          gp, zero, s2
                  xor          s9, a3, gp
                  addi         s5, sp, 1456
                  sll          s9, s8, a2
                  slti         s8, a0, -1950
                  lui          t0, 1020417
220:              and          s4, t1, s2
                  slti         s8, s7, -552
                  slt          s5, a7, a4
                  and          s10, s2, a3
                  add          s11, s2, a7
                  bltu         a7, t3, 236f
                  and          s2, s9, a5
                  nop
                  srl          s5, a0, t5
                  sll          t0, s4, s8
                  xor          a5, s2, t1
                  xor          s0, s5, t6
                  xori         t3, s0, -2047
                  xor          s4, sp, a1
                  bgeu         s8, a5, 253f
                  and          s3, a4, sp
236:              bgeu         a0, t2, 239f
                  bltu         s1, a4, 246f
                  xor          s11, a3, ra
239:              sll          s2, tp, s9
                  slti         a1, a4, -502
                  slt          s3, t5, zero
                  bge          s2, t5, 259f
                  slt          s3, s2, t5
                  sltu         a7, s7, a2
                  sll          t2, t3, a4
246:              andi         s9, ra, -715
                  andi         s10, t4, -1216
                  andi         s10, a0, 954
                  or           zero, t2, t1
                  or           s6, a1, s0
                  blt          s7, a4, 259f
                  bgeu         t1, t4, 259f
253:              xori         s3, a1, -573
                  slti         s5, s11, -135
                  addi         s10, ra, -401
                  ori          a5, t2, 1933
                  nop
                  sll          a3, ra, t6
259:              and          t2, tp, t0
                  ori          s0, t1, 939
                  lui          ra, 838106
                  slli         s0, sp, 22
                  lw           sp, 4(t1)
                  lui          s10, 594169
                  addi         t1, t1, 20
                  sub          s11, t0, a2
362:              addi x18, x2, 1
362:              jalr x18, x18, 0
sub_4:            blt          a4, t3, sub_4_stack_p
                  andi         t3, s5, 570
                  sub          a3, sp, s0
                  sub          zero, t2, tp
                  sltu         ra, s3, a6
sub_4_stack_p:    addi         t1, t1, -44
                  lui          gp, 309834
                  sw           sp, 4(t1)
                  sra          gp, a5, s2
                  srai         s11, t3, 8
                  ori          s11, s8, 468
                  addi         a1, s2, -205
                  addi         a0, zero, 6 #init loop 0 counter
                  srli         tp, s8, 27
                  ori          s11, t4, -230
                  srai         s11, a0, 18
                  addi         s2, zero, 6 #init loop 0 limit
                  or           ra, s11, a0
                  srl          a6, a7, a7
sub_4_0_0_t:      slt          t0, a4, s10
                  sra          ra, a5, t0
                  addi         a0, a0, -5 #update loop 0 counter
                  sll          tp, a2, tp
                  slti         s6, ra, -610
                  sltiu        a3, s4, -1310
                  xor          s10, s7, t6
                  and          t0, t3, a0
                  sltiu        ra, s10, 710
                  bgeu         a0, s2, sub_4_0_0_t #branch for loop 0
                  addi         gp, s4, 1368
                  addi         ra, zero, 8 #init loop 1 counter
                  slti         s6, s1, 962
                  srli         s3, t6, 12
                  srli         t0, s4, 31
                  addi         gp, zero, 14 #init loop 1 limit
                  nop
                  sub          s4, a0, a7
                  auipc        sp, 26255
                  slt          s7, s1, t2
sub_4_3_1_t:      nop
                  addi         ra, ra, 6 #update loop 1 counter
                  sra          a3, a3, s10
                  slli         s11, t2, 27
                  addi         a2, zero, 6 #init loop 0 counter
                  and          a0, t3, sp
                  addi         a5, zero, 16 #init loop 0 limit
                  ori          a3, s8, -685
                  sltu         s1, ra, t3
sub_4_3_0_t:      or           zero, t4, a3
                  xor          t4, ra, t4
                  sub          s8, s3, s4
                  addi         a2, a2, 9 #update loop 0 counter
                  srai         s5, s10, 15
                  blt          a2, a5, sub_4_3_0_t #branch for loop 0
                  sll          s8, s0, s7
                  srai         s7, t1, 13
                  bne          ra, gp, sub_4_3_1_t #branch for loop 1
                  xori         s11, s2, -1689
                  addi         gp, zero, -4 #init loop 0 counter
                  ori          s2, s9, 234
                  addi         s5, zero, 19 #init loop 0 limit
sub_4_1_0_t:      lui          a1, 530471
                  srai         s10, t5, 21
                  lui          a5, 849250
                  or           s10, s7, t6
                  sub          t3, gp, s11
                  addi         gp, gp, 5 #update loop 0 counter
                  sra          a3, zero, t2
                  auipc        a5, 658387
                  srai         s10, s0, 11
                  xori         s10, t5, -2000
                  sub          a6, a3, t3
                  slt          ra, s11, a3
                  addi         s3, a5, -1274
                  sub          zero, ra, t1
                  slli         t5, s9, 6
                  or           a0, s9, a4
                  blt          gp, s5, sub_4_1_0_t #branch for loop 0
                  ori          t0, t1, -597
                  addi         a6, zero, -3 #init loop 1 counter
                  sltiu        zero, a6, 493
                  srai         a1, s0, 7
                  sub          gp, a3, t3
                  addi         t4, zero, 14 #init loop 1 limit
                  sub          s8, s10, a5
sub_4_2_1_t:      auipc        a1, 363409
                  slt          s6, s1, t3
                  slt          s1, s7, a0
                  and          s1, t0, s6
                  addi         a6, a6, 8 #update loop 1 counter
                  slti         s3, s6, 1707
                  addi         ra, zero, -7 #init loop 0 counter
                  lui          t5, 24156
                  slli         s0, zero, 24
                  slti         a0, s1, -1724
                  addi         s11, zero, 15 #init loop 0 limit
sub_4_2_0_t:      xor          a3, t2, s10
                  addi         ra, ra, 2 #update loop 0 counter
                  addi         s8, gp, 1630
                  sub          a3, zero, a6
                  and          a7, s8, s3
                  bltu         ra, s11, sub_4_2_0_t #branch for loop 0
                  bltu         a6, t4, sub_4_2_1_t #branch for loop 1
                  slt          gp, s2, t6
                  and          s5, s3, a4
                  lui          s11, 275749
                  slt          s7, a3, sp
                  bne          a3, ra, 6f
                  sltu         gp, t0, t4
                  bge          s5, zero, 19f
6:                xor          sp, s11, zero
                  and          s8, a5, t6
                  lui          gp, 829011
                  slti         a3, t3, -441
                  lui          s8, 171175
                  or           t0, a0, tp
                  sltiu        sp, t0, -1880
                  bne          s1, a1, 19f
                  slli         t5, t1, 22
                  add          s4, s6, s2
                  ori          a5, t4, -484
                  xori         a1, t4, 997
                  beq          sp, a0, 23f
19:               srai         a6, ra, 26
                  auipc        s6, 436048
                  add          tp, s5, gp
                  nop
23:               xor          s4, s5, a2
                  addi         gp, t1, -932
                  sltiu        t2, t2, -1882
                  slt          s2, a4, s6
                  addi         tp, s5, 1832
                  blt          a4, gp, 32f
                  addi         a2, t3, 690
                  beq          a0, a1, 47f
                  sltiu        a6, s5, 171
32:               slti         s0, s7, -366
                  srai         a2, s8, 18
                  sltu         a7, gp, s11
                  ori          t0, a4, 1796
                  lui          a2, 1018648
                  sll          t2, a2, t0
                  andi         a7, t5, -1633
                  beq          ra, t3, 56f
                  slt          t0, s4, s5
                  lui          gp, 539030
                  lui          t4, 174914
                  bge          zero, t6, 49f
                  srl          sp, s6, tp
                  slti         a3, t2, 52
                  srl          s5, t6, s2
47:               blt          s8, t6, 59f
                  addi         t4, t6, -1988
49:               andi         gp, s7, -891
                  srl          zero, s10, t2
                  andi         s5, s6, -1731
                  srai         s1, sp, 4
                  slli         s11, s10, 9
                  sltu         s5, ra, sp
                  srli         s11, t2, 14
56:               srai         s8, a1, 16
                  auipc        zero, 883720
                  bltu         s8, s2, 66f
59:               andi         t5, s9, -1382
                  bge          a5, t6, 63f
                  srli         s8, a4, 7
                  bltu         s0, sp, 66f
63:               bgeu         t2, a7, 65f
                  auipc        ra, 605798
65:               sub          tp, s8, a7
66:               xori         s1, s5, -1497
                  sub          t4, s8, s8
                  and          a6, a5, a5
                  srai         s0, a0, 26
                  andi         s7, tp, -1145
                  srai         a3, a7, 23
                  blt          t1, a4, 83f
                  srli         s10, a6, 24
                  blt          s9, s0, 75f
75:               srl          t4, s0, t2
                  lui          s1, 900012
                  beq          s11, t0, 89f
                  sltiu        t0, a0, 1739
                  slti         s11, s4, -1447
                  sltu         t2, s4, a0
                  srl          t5, tp, t0
                  add          a6, a6, a6
83:               slt          a7, tp, t2
                  srai         a1, s9, 10
                  xori         a2, s4, 254
                  sltiu        a2, a1, 1833
                  sub          zero, a5, s10
                  slli         a7, s7, 29
89:               addi         zero, s1, -175
                  and          t4, ra, zero
                  and          s5, s11, a5
                  addi         gp, zero, 2012
                  auipc        a7, 1042521
                  beq          ra, a5, 113f
                  nop
                  srl          s6, zero, s6
                  add          gp, t1, s9
                  xori         a6, s6, -416
                  slt          t0, s8, s10
                  srl          s9, t6, ra
                  andi         s6, s11, 564
                  add          a6, s0, zero
                  sra          tp, sp, a2
                  sra          a2, zero, gp
                  sra          s9, s8, a0
                  bgeu         a2, sp, 121f
                  lui          ra, 311960
                  sltu         gp, gp, s5
                  bltu         t1, s3, 126f
                  srli         s5, s3, 10
                  lui          s8, 987554
                  srli         s11, s5, 17
113:              srli         ra, t1, 1
                  add          a0, s1, a5
                  sltu         s0, s10, a5
                  bltu         s11, s2, 124f
                  or           s0, s0, sp
                  add          a3, s3, a6
                  sra          ra, s11, gp
                  sltu         ra, t4, s6
121:              slli         a0, t5, 4
                  srli         t5, gp, 27
                  sra          t0, t4, sp
124:              srl          ra, t3, t0
                  beq          t4, a1, 129f
126:              sltu         s4, s7, s9
                  add          a1, a7, sp
                  sra          a1, s5, s4
129:              srli         tp, a1, 23
                  xori         a5, s1, -605
                  srl          s9, t1, s0
                  slli         a7, s4, 22
                  bge          s11, s9, 153f
                  xor          s2, s4, t0
                  and          tp, s3, ra
                  beq          s9, a0, 145f
                  srli         s11, a6, 13
                  sub          s8, a6, a1
                  blt          a2, t0, 153f
                  xor          t4, t1, a7
                  srl          t3, a0, a0
                  bgeu         s3, t2, 159f
                  nop
                  xor          ra, t6, zero
145:              slti         s2, t0, 795
                  nop
                  bne          s6, t4, 157f
                  sltu         s9, t4, s9
                  and          a2, t0, s2
                  xor          s4, t5, t4
                  bltu         t1, s10, 169f
                  bltu         ra, t1, 153f
153:              addi         a7, ra, -503
                  xori         a7, s6, -22
                  slt          t5, s7, s1
                  slt          t5, a0, s8
157:              beq          t4, t5, 161f
                  beq          a5, t6, 165f
159:              srl          a1, s2, a7
                  sub          a0, t6, a4
161:              auipc        s0, 220281
                  blt          t5, s10, 179f
                  addi         gp, s9, -553
                  xori         s4, a2, 696
165:              auipc        s1, 385455
                  beq          t6, a4, 173f
                  srli         s1, s10, 8
                  bne          s4, s4, 182f
169:              srl          a3, t2, sp
                  slli         s2, a5, 28
                  sltu         t2, a0, s0
                  and          a6, t6, s5
173:              addi         a6, s11, 1492
                  addi         t0, t3, -627
                  bltu         t4, t5, 178f
                  beq          s3, a2, 196f
                  ori          s1, zero, -13
178:              sltu         ra, a0, t0
179:              xori         a7, a3, -899
                  srli         s3, a3, 2
                  slli         sp, gp, 11
182:              sltiu        sp, s8, 1696
                  srli         s4, a6, 4
                  lui          s7, 416478
                  blt          t3, a5, 202f
                  slt          s9, sp, a6
                  ori          s6, t4, 849
                  addi         s7, t3, 1343
                  sll          s1, s7, s2
                  nop
                  nop
                  srli         t4, t1, 8
                  nop
                  srai         a6, s9, 16
                  nop
196:              sll          s1, s2, s11
                  bge          s0, gp, 216f
                  blt          s6, t4, 213f
                  sra          t5, s11, s7
                  bne          s9, t4, 201f
201:              srai         s3, s0, 6
202:              srli         a1, a0, 22
                  bne          zero, a0, 206f
                  xor          a2, t6, t2
                  bltu         gp, a1, 211f
206:              bltu         a0, s7, 214f
                  srai         s0, s5, 16
                  or           a2, t3, sp
                  nop
                  blt          gp, a5, 212f
211:              xor          a5, s0, a5
212:              or           a6, t3, s7
213:              or           a7, t6, s0
214:              bltu         a1, tp, 218f
                  sub          s1, a4, s10
216:              andi         a5, s6, -995
                  sltiu        s3, sp, 1840
218:              nop
                  beq          a4, zero, 224f
                  ori          s6, a7, -583
                  sra          s10, s3, s9
                  sub          s2, t0, a5
                  beq          gp, s10, 233f
224:              bgeu         t0, a0, 228f
                  lui          t0, 181438
                  sub          ra, sp, s7
                  xor          s9, s0, a4
228:              andi         a1, s7, 1015
                  xori         t3, s5, 1989
                  beq          t5, s8, 234f
                  xori         a5, a5, 1539
                  ori          s4, s1, 118
233:              sub          zero, t4, zero
234:              lui          t0, 740577
                  sltu         s7, t3, s5
                  lw           sp, 4(t1)
                  andi         a3, gp, 1504
                  lui          s3, 623212
                  auipc        s10, 910674
                  addi         t1, t1, 44
                  xor          s9, t4, s6
                  addi         s6, s9, -47
347:              addi x22, x2, 0
347:              jalr x22, x22, 0
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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  add x14, x6, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
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
                  add x14, x6, zero
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x29, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x29, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x29, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x29, x2, ecall_handler
                  li x2, 0x1
                  beq x29, x2, instr_fault_handler
                  li x2, 0x5
                  beq x29, x2, load_fault_handler
                  li x2, 0x7
                  beq x29, x2, store_fault_handler
                  li x2, 0xc
                  beq x29, x2, pt_fault_handler
                  li x2, 0xd
                  beq x29, x2, pt_fault_handler
                  li x2, 0xf
                  beq x29, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x6, x14, zero
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
                  add x6, x14, zero
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
                  add x6, x14, zero
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
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x6, x14, zero
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
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x6, x14, zero
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
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x6, x14, zero
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
