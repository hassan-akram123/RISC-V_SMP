.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x7
                  li x3, 0x3
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0xb
                  li x9, 0x1
                  li x10, 0x9d236a82
                  li x11, 0xfd746416
                  li x12, 0xfc8aacd7
                  li x13, 0x80000000
                  li x14, 0x2
                  li x15, 0xf8cee37c
                  li x16, 0x80000000
                  li x17, 0x4
                  li x18, 0x1653e299
                  li x19, 0x80000000
                  li x20, 0x59375ecc
                  li x21, 0x80000000
                  li x22, 0xa
                  li x23, 0x6939ac7e
                  li x24, 0x80000000
                  li x25, 0x4
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0xb
                  li x30, 0x80000000
                  li x31, 0xe
                  la x29, user_stack_end
main:             addi         t1, zero, -9 #init loop 0 counter
                  sltu         t3, s2, sp
                  auipc        a6, 21911
                  addi         t2, zero, 5 #init loop 0 limit
main_0_0_t:       auipc        zero, 710867
                  addi         t1, t1, 8 #update loop 0 counter
                  bltu         t1, t2, main_0_0_t #branch for loop 0
                  srl          s0, a3, s7
                  bne          tp, ra, 5f
                  sltu         s10, t4, s2
                  xor          a0, t0, s5
                  addi         s7, t0, 34
                  srl          a0, sp, ra
5:                slli         a2, sp, 4
                  slli         t0, a5, 25
                  auipc        a1, 38505
                  auipc        t5, 1026185
                  bltu         s5, t0, 18f
                  sltiu        t5, ra, 211
                  sub          a2, a2, zero
                  xori         s3, s2, -365
                  xor          s10, a7, a4
                  bgeu         a2, a3, 26f
                  or           s9, t3, t3
                  blt          tp, s10, 20f
                  sltiu        s10, a7, 451
18:               bne          t3, s11, 38f
                  and          a4, a4, a0
20:               add          a4, s9, t4
                  bne          s0, t0, 33f
                  slli         s0, s11, 27
                  srl          a0, s5, zero
                  beq          t4, a6, 38f
                  sll          s11, t0, a0
26:               or           a0, a0, s0
                  sub          s11, t4, s4
                  slt          s0, s1, gp
                  auipc        gp, 531214
                  slti         t1, s6, 1134
                  add          s9, a5, s11
                  nop
33:               bgeu         s3, t6, 36f
                  sra          s11, a3, sp
                  bgeu         s1, s11, 49f
36:               slt          t1, a7, s5
                  bgeu         t6, s0, 47f
38:               slli         s9, t5, 23
                  add          s5, s10, a6
                  sltu         s6, s3, ra
                  bltu         t2, t3, 60f
                  sra          s7, tp, a5
                  srl          s9, t5, s7
                  srli         a7, s5, 5
                  sub          t1, sp, s7
                  nop
47:               sub          s6, a3, s7
                  sltu         t1, s9, ra
49:               slli         gp, a3, 0
                  srli         a1, a6, 22
                  sub          a5, a3, t3
                  or           s2, s9, s0
                  slti         a4, s3, 146
                  bgeu         s2, a3, 64f
                  add          s9, t4, s10
                  addi         t0, t1, 317
                  addi         t5, s6, -988
                  lui          sp, 220264
                  nop
60:               andi         s2, a2, 1272
                  bgeu         a5, s3, 76f
                  auipc        a7, 990149
                  nop
64:               srl          a2, t5, sp
                  srai         a7, t1, 5
                  or           zero, s4, a7
                  lui          s4, 699725
                  sub          a6, s11, gp
                  srai         s9, s1, 25
                  or           s5, a0, a6
                  srl          gp, tp, a7
                  andi         a4, a5, 633
                  beq          s9, sp, 75f
                  slt          s10, s1, a6
75:               bltu         t3, s0, 83f
76:               xor          a7, a6, sp
                  addi         s10, s0, 1017
                  slt          a6, s1, t1
                  srl          s7, s5, ra
                  xori         sp, tp, 353
                  la           s9, sub_1
                  slti         s10, s1, 1554
                  addi         s9, s9, -690
                  nop
                  sll          a1, t5, s3
                  srai         s0, s2, 11
                  srl          t2, ra, s5
                  bne          a4, a6, main_j1 #branch to jump instr
                  srli         t0, s6, 26
                  or           a4, s7, t3
main_j1:          jalr         ra, s9, 690 #jump main -> sub_1
                  bgeu         t2, a3, 85f
                  nop
83:               add          s11, s1, sp
                  sltiu        s11, tp, -180
85:               xor          sp, a2, s1
                  la x9, test_done
                  jalr x0, x9, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         t4, t4, -12
                  addi         s8, t0, -343
                  slli         t6, tp, 8
                  sll          gp, ra, s1
                  andi         t1, a7, 1783
                  auipc        a4, 394624
                  sw           ra, 4(t4)
                  srli         s7, s6, 11
                  sltiu        sp, s1, 1578
                  ori          s0, t1, 438
                  and          s5, a0, s1
                  beq          t2, s8, sub_1_j2 #branch to jump instr
                  srl          a4, s6, t4
                  slti         s4, zero, 1028
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  la           s10, sub_2
                  or           a4, tp, s9
                  addi         s10, s10, -870
                  bge          tp, s1, sub_1_j3 #branch to jump instr
                  sll          sp, t1, s5
                  ori          t1, a7, 246
                  slli         s5, t1, 21
                  srli         a6, s11, 16
sub_1_j3:         jalr         ra, s10, 871 #jump sub_1 -> sub_2
                  ori          s0, sp, 1941
                  sll          a3, s7, t3
                  bgeu         s5, t2, 6f
                  or           t3, s5, s0
                  sltiu        s5, sp, 1351
                  bne          s5, s0, 8f
6:                bne          s1, t1, 9f
                  sltiu        s5, a2, 92
8:                bltu         s5, t2, 9f
9:                lui          s6, 854767
                  lui          sp, 523618
                  lw           ra, 4(t4)
                  xori         zero, a5, -63
                  addi         t4, t4, 12
                  or           sp, a7, t2
39:               addi x28, x1, 1
39:               jalr x28, x28, 0
sub_5:            add          t1, t2, s6
                  ori          t6, s0, 1955
                  beq          tp, a6, sub_5_stack_p
                  srli         s0, t0, 6
                  or           a1, s3, s8
sub_5_stack_p:    addi         t4, t4, -8
                  sll          a2, s10, a5
                  slli         s6, s7, 19
                  sw           ra, 4(t4)
                  slti         a5, t0, 545
                  addi         a3, zero, 5 #init loop 0 counter
                  add          zero, zero, a1
                  slli         t1, t6, 5
                  and          t2, s9, a7
                  srai         s0, a2, 8
                  srl          sp, s1, t0
                  and          s0, sp, t6
                  auipc        s6, 75151
                  sltu         s2, t3, t6
                  addi         a5, zero, 11 #init loop 0 limit
                  andi         s7, t1, -1697
sub_5_3_0_t:      andi         t5, s3, -659
                  auipc        t1, 781794
                  or           t3, a3, s0
                  auipc        t0, 771592
                  addi         a3, a3, 1 #update loop 0 counter
                  andi         ra, s1, 2038
                  blt          a3, a5, sub_5_3_0_t #branch for loop 0
                  add          t3, s10, tp
                  addi         a7, zero, 8 #init loop 0 counter
                  auipc        t2, 395678
                  sll          t1, a0, s5
                  sltiu        s2, t0, 1770
                  addi         s11, zero, 8 #init loop 0 limit
                  sltiu        s9, a1, -2021
                  ori          zero, t3, 569
                  slti         t1, t5, 1308
                  ori          a6, s4, -1685
                  nop
                  sub          sp, s8, s2
                  srai         a6, a4, 4
sub_5_1_0_t:      slt          s4, a2, a2
                  sltu         t3, ra, s10
                  nop
                  addi         a7, a7, -5 #update loop 0 counter
                  sltu         t1, sp, s10
                  bgeu         a7, s11, sub_5_1_0_t #branch for loop 0
                  sra          t5, a0, gp
                  addi         a7, zero, 2 #init loop 0 counter
                  addi         t2, zero, 10 #init loop 0 limit
                  auipc        a0, 945503
                  andi         s5, t0, 1989
                  add          gp, a3, t5
sub_5_2_0_t:      xori         a6, zero, 1733
                  addi         a7, a7, 2 #update loop 0 counter
                  slli         s10, s10, 17
                  nop
                  beq          a7, t2, sub_5_2_0_t #branch for loop 0
                  slti         s10, s10, -986
                  srai         a3, t1, 2
                  srli         s3, a6, 29
                  xori         t6, s2, -779
                  bgeu         t6, t3, 15f
                  bgeu         t2, a6, 15f
                  add          a5, t5, s9
                  sra          s7, zero, s0
                  sra          a0, s6, s6
                  addi         t1, s11, 74
                  ori          s5, a2, -1246
                  beq          s1, t6, 15f
                  ori          s7, s3, 1072
                  ori          a6, sp, 1668
                  sub          t5, t5, t3
                  sltu         a5, s9, s4
15:               andi         a2, a4, -845
                  sltu         a4, t5, s6
                  blt          t1, tp, 24f
                  add          t3, s2, s9
                  sll          t6, a4, t6
                  add          s9, a1, a3
                  sll          s4, s5, s5
                  nop
                  nop
24:               bgeu         a5, a3, 37f
                  sll          s2, s7, a0
                  beq          s4, s11, 29f
                  bne          a0, s1, 28f
28:               addi         sp, s1, 1514
29:               sub          a4, a1, a3
                  srli         ra, tp, 16
                  auipc        s6, 504812
                  bne          s1, a6, 52f
                  bgeu         a7, t1, 50f
                  srli         sp, a2, 5
                  slli         s5, s6, 12
                  blt          s8, a3, 38f
37:               sra          s4, t3, a0
38:               blt          t1, zero, 40f
                  andi         s8, t5, 1722
40:               sltiu        s5, a6, 405
                  slti         a4, t6, 184
                  slli         s2, s3, 29
                  nop
                  auipc        s8, 937939
                  sll          a7, a2, s0
                  andi         s3, s7, -1874
                  addi         s11, s8, -974
                  bne          sp, t5, 60f
                  bgeu         s5, a0, 58f
50:               nop
                  slt          s6, zero, s9
52:               slti         ra, tp, -784
                  sra          a2, s8, a3
                  xori         s9, s3, -1989
                  lui          t0, 910095
                  or           a3, t5, ra
                  bne          t2, a1, 63f
58:               sll          a7, a5, a6
                  andi         t1, a3, -403
60:               bgeu         t1, a5, 75f
                  blt          s11, a0, 79f
                  srli         zero, t4, 13
63:               or           s3, a0, s7
                  sltu         t3, a2, a2
                  slt          a2, t6, s7
                  auipc        s2, 608815
                  andi         a6, s11, 433
                  nop
                  sll          gp, t0, s0
                  bgeu         ra, s8, 72f
                  xor          zero, a2, s11
72:               sltu         a3, s4, a7
                  slli         a0, a3, 14
                  bgeu         t1, a4, 93f
75:               srl          s10, gp, a2
                  beq          a4, t0, 93f
                  srli         a4, a5, 15
                  lui          a3, 48070
79:               srl          a0, a3, a1
                  xor          s4, a5, t5
                  addi         a0, a5, -1813
                  and          t1, a2, a7
                  lui          s8, 276821
                  bgeu         s8, s3, 97f
                  bltu         t0, a1, 105f
                  bgeu         s9, a6, 100f
                  sub          a4, t5, a2
                  slt          t3, t0, s9
                  blt          t3, gp, 96f
                  nop
                  sub          t2, t6, ra
                  add          t1, t3, a2
93:               slt          t0, s5, a0
                  sub          sp, t4, s2
                  sra          a0, a1, s4
96:               xor          t1, s9, a0
97:               bltu         a1, a7, 108f
                  slti         s0, s11, -1117
                  slli         sp, s6, 30
100:              beq          a0, s8, 116f
                  addi         s0, t6, -219
                  slli         gp, a5, 17
                  slti         s2, t5, 1655
                  xor          t6, s7, s7
105:              srl          s8, t2, s10
                  bge          s3, t1, 114f
                  lui          a0, 396694
108:              bgeu         a7, s6, 120f
                  auipc        t1, 1009338
                  srli         s7, a0, 30
                  addi         t6, s9, 948
                  bltu         a6, t5, 119f
                  bgeu         a3, t4, 122f
114:              nop
                  and          s5, s5, t6
116:              slli         s6, a0, 25
                  srli         ra, s9, 16
                  ori          s9, s8, -937
119:              slt          s7, t1, s6
120:              andi         s2, gp, 1133
                  lui          s2, 13459
122:              sltiu        sp, s7, 1416
                  xor          s11, s11, t2
                  bne          s9, a0, 138f
                  or           gp, gp, zero
                  ori          zero, s8, 1108
                  beq          t2, sp, 136f
                  xor          zero, a1, a6
                  sra          gp, t5, a0
                  addi         s11, a3, 609
                  slt          t6, a3, a7
                  sltiu        a4, t0, -1418
                  sll          t3, a2, s6
                  bgeu         tp, a3, 147f
                  bgeu         a7, t6, 153f
136:              slli         s10, a3, 30
                  add          s5, a5, t2
138:              ori          t3, s10, -1690
                  addi         t5, t3, -458
                  ori          t6, s5, -1629
                  slti         a3, a5, 675
                  sltiu        a4, tp, -132
                  slli         t1, s8, 29
                  slli         s9, s3, 27
                  add          t2, ra, a4
                  bne          a2, s3, 153f
147:              sltu         a3, a0, s9
                  srai         s10, ra, 31
                  bgeu         s8, s9, 168f
                  sll          a5, a0, t2
                  nop
                  srai         t1, s5, 4
153:              and          ra, s5, tp
                  bne          t2, tp, 171f
                  addi         t5, s4, 1633
                  xor          t0, t2, s8
                  bne          s6, s6, 169f
                  xor          a0, tp, gp
                  ori          a2, t0, 568
                  bgeu         t2, t6, 167f
                  srli         a2, s3, 16
                  add          s7, s4, s9
                  nop
                  auipc        gp, 755837
                  xor          gp, s4, t0
                  blt          a6, s5, 172f
167:              addi         s7, tp, 286
168:              lui          t3, 1035448
169:              sll          t2, gp, s11
                  beq          t6, s9, 186f
171:              addi         s10, a2, 1037
172:              add          t2, t0, zero
                  or           s10, s4, s3
                  andi         a7, t6, 2040
                  beq          a2, a1, 186f
                  nop
                  ori          a3, t1, 1813
                  srai         zero, t2, 29
                  nop
                  sub          a6, s8, t3
                  beq          t5, ra, 196f
                  andi         s9, s0, -124
                  srl          gp, zero, s7
                  addi         ra, a5, 1547
                  addi         t5, s5, -2009
186:              bgeu         a5, t3, 203f
                  add          s5, a4, a5
                  addi         a5, zero, 0 #init loop 0 counter
                  srai         a0, s6, 29
                  auipc        a6, 566847
                  srai         s6, t1, 12
                  xor          ra, a6, s8
                  xori         s2, s4, -490
                  xori         t6, t1, -214
                  lui          a1, 270990
                  nop
                  slti         s6, tp, 469
                  addi         s7, zero, 10 #init loop 0 limit
sub_5_4_0_t:      sltu         a1, t6, s10
                  xor          sp, t2, t3
                  lui          s4, 751276
                  nop
                  addi         a4, a5, 114
                  xor          s0, s7, ra
                  sltu         gp, s4, s7
                  addi         a5, a5, 10 #update loop 0 counter
                  sltiu        s8, gp, 140
                  andi         s10, a4, 137
                  beq          a5, s7, sub_5_4_0_t #branch for loop 0
                  slli         a1, s9, 22
                  or           s2, t4, a4
                  blt          s5, t3, 200f
                  add          a0, s3, s11
                  add          t2, s9, a6
                  addi         t2, a2, 593
                  srli         s7, s11, 14
                  bltu         zero, t6, 196f
                  bltu         a1, s6, 197f
196:              add          s3, t4, sp
197:              bgeu         tp, t0, 209f
                  bge          s0, s9, 203f
                  sltu         t6, s8, s2
200:              sub          ra, t3, t1
                  or           a4, s2, t5
                  srli         a7, sp, 14
203:              ori          t1, zero, 1949
                  slti         a6, s2, 1314
                  ori          s7, s1, 327
                  srai         s11, t5, 31
                  srai         ra, t6, 3
                  bge          gp, a3, 228f
209:              xori         a0, zero, 86
                  addi         t6, ra, -929
                  slti         zero, s7, -1042
                  srai         s3, a3, 0
                  slli         a0, s4, 28
                  sub          a4, s0, s4
                  andi         t1, s0, 1840
                  add          s2, s1, t0
                  auipc        zero, 821992
                  blt          tp, s9, 225f
                  bgeu         s7, s5, 222f
                  sra          s10, s3, a2
                  lui          s2, 14866
222:              bltu         t5, gp, 224f
                  auipc        t0, 49432
224:              add          zero, s4, t0
                  addi         s3, zero, -8 #init loop 1 counter
                  addi         sp, zero, -13 #init loop 1 limit
sub_5_0_1_t:      nop
                  sltiu        s7, a4, 1989
                  addi         s3, s3, -5 #update loop 1 counter
                  addi         a4, zero, 7 #init loop 0 counter
                  addi         a1, zero, 18 #init loop 0 limit
                  srl          ra, s10, s11
sub_5_0_0_t:      xor          ra, a2, a1
                  addi         a4, a4, 5 #update loop 0 counter
                  bltu         a4, a1, sub_5_0_0_t #branch for loop 0
                  beq          s3, sp, sub_5_0_1_t #branch for loop 1
                  slli         s2, s2, 1
225:              srli         a6, s5, 18
                  bge          t0, s6, 240f
                  bgeu         a6, s6, 236f
228:              ori          t6, zero, -537
                  bgeu         a3, gp, 242f
                  auipc        s2, 41985
                  bgeu         s8, s4, 245f
                  blt          sp, a0, 252f
                  bgeu         t2, t4, 245f
                  andi         t1, a7, -737
                  sub          a5, zero, s11
236:              xori         sp, a4, 613
                  nop
                  or           s0, s10, ra
                  nop
240:              bne          t4, s10, 248f
                  sra          s8, t3, s11
242:              ori          s3, t1, -491
                  slti         t3, a3, 843
                  xor          a4, a3, s6
245:              blt          t4, t2, 246f
246:              bne          a1, t0, 257f
                  slti         t6, s0, 582
248:              sll          gp, t2, a1
                  bne          t4, a0, 258f
                  auipc        ra, 56911
                  addi         t2, a5, -661
252:              bge          s4, s10, 264f
                  addi         s10, t1, -221
                  and          s7, s8, a7
                  srai         a7, a3, 1
                  sll          s11, sp, s0
257:              xor          zero, s4, a0
258:              addi         gp, s4, -1131
                  or           s5, s6, a6
                  sll          a0, a6, a1
                  or           a4, s9, t4
                  lui          a1, 15577
                  bltu         a4, a2, 264f
264:              or           t3, t4, a1
                  lw           ra, 4(t4)
                  sltu         s5, s9, s0
                  addi         t4, t4, 8
                  slli         t1, a4, 13
                  sub          zero, t2, t3
365:              addi x11, x1, 1
365:              jalr x11, x11, 0
sub_2:            auipc        a0, 447880
                  sub          s11, sp, a7
                  slli         a0, a4, 21
                  slti         a6, sp, 197
                  bne          t0, t6, sub_2_stack_p
                  srli         s0, a3, 5
sub_2_stack_p:    addi         t4, t4, -12
                  sw           ra, 4(t4)
                  ori          s10, a4, 490
                  srai         s0, a3, 30
                  sub          s8, t1, a2
                  andi         s10, t5, -341
                  slti         gp, a2, 1466
                  slti         t6, s7, 1572
                  srl          a5, t5, t4
                  srli         s9, a0, 30
sub_2_j4:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  xor          t2, a2, zero
                  srl          a0, s8, a5
                  auipc        t1, 953670
                  la           a5, sub_3
                  addi         a6, a1, 805
                  addi         s5, a5, 629
                  addi         a5, a5, -808
                  sra          t2, t6, t3
                  sltiu        s5, sp, -810
                  slli         s3, a3, 2
                  lui          s9, 367742
                  blt          t2, gp, sub_2_j5 #branch to jump instr
                  ori          a2, s0, 1994
sub_2_j5:         jalr         ra, a5, 809 #jump sub_2 -> sub_3
                  or           t6, t5, s7
                  la           a0, sub_3
                  or           t3, tp, a1
                  slt          s2, s8, s3
                  sub          s6, zero, t5
                  slt          t3, s8, s2
                  srl          s4, s9, s1
                  nop
                  srl          sp, s4, a0
                  addi         a0, a0, -982
                  andi         s0, t2, 1622
                  bge          a7, a1, sub_2_j6 #branch to jump instr
                  sra          s0, t2, t1
sub_2_j6:         jalr         ra, a0, 983 #jump sub_2 -> sub_3
                  addi         s8, zero, 5 #init loop 0 counter
                  or           a3, s3, sp
                  addi         s6, a5, -960
                  slli         a2, t1, 17
                  slt          a3, t1, s10
                  addi         ra, zero, 16 #init loop 0 limit
                  xori         t3, a1, 224
sub_2_0_0_t:      auipc        s9, 707443
                  sll          s0, s9, t3
                  addi         s3, s8, -1594
                  sra          t3, zero, s10
                  sltu         zero, t5, s3
                  srl          zero, t5, t5
                  addi         s8, s8, 4 #update loop 0 counter
                  sub          a1, s7, s0
                  add          a1, t5, a5
                  or           t6, a4, s6
                  sub          t5, a7, t1
                  sub          gp, s3, tp
                  slli         s11, s9, 21
                  bltu         s8, ra, sub_2_0_0_t #branch for loop 0
                  sll          t2, s3, s3
                  addi         t1, zero, -5 #init loop 0 counter
                  auipc        s11, 397278
                  andi         s0, t0, -760
                  addi         a6, zero, 9 #init loop 0 limit
                  and          a5, sp, t1
                  slt          s8, t3, s6
                  addi         sp, a6, -894
                  ori          s10, t3, -492
                  srai         s10, a4, 8
sub_2_6_0_t:      xor          sp, t1, t2
                  addi         t1, t1, 8 #update loop 0 counter
                  and          gp, tp, s6
                  srl          s11, tp, t2
                  or           a4, t2, s11
                  slti         s11, a1, -1373
                  bltu         t1, a6, sub_2_6_0_t #branch for loop 0
                  sra          s0, ra, t1
                  addi         s8, zero, 8 #init loop 1 counter
                  addi         t0, zero, 17 #init loop 1 limit
sub_2_4_1_t:      xor          t3, s8, s2
                  addi         s8, s8, 9 #update loop 1 counter
                  lui          a7, 230048
                  addi         gp, zero, 6 #init loop 0 counter
                  addi         t5, zero, 4 #init loop 0 limit
sub_2_4_0_t:      and          a1, a2, sp
                  addi         gp, gp, -1 #update loop 0 counter
                  ori          s10, s1, -975
                  bgeu         gp, t5, sub_2_4_0_t #branch for loop 0
                  bne          s8, t0, sub_2_4_1_t #branch for loop 1
                  add          t6, zero, a7
                  addi         t3, zero, -7 #init loop 0 counter
                  sub          a7, a6, t2
                  auipc        s8, 13548
                  addi         t5, zero, -4 #init loop 0 limit
sub_2_1_0_t:      lui          sp, 495875
                  srli         a0, a3, 1
                  addi         t3, t3, 7 #update loop 0 counter
                  sltu         sp, a0, t3
                  lui          gp, 225053
                  sra          gp, sp, t4
                  blt          t3, t5, sub_2_1_0_t #branch for loop 0
                  sra          a0, t1, s11
                  addi         a5, zero, 9 #init loop 1 counter
                  or           gp, s4, tp
                  xor          a6, s5, s10
                  addi         s3, zero, 8 #init loop 1 limit
                  ori          s4, s5, 621
sub_2_3_1_t:      xor          t5, t6, s9
                  sll          ra, zero, a1
                  addi         a5, a5, -2 #update loop 1 counter
                  addi         s10, zero, 3 #init loop 0 counter
                  srl          t1, s4, s8
                  addi         s8, zero, 3 #init loop 0 limit
                  sra          sp, s6, s2
sub_2_3_0_t:      sltu         a1, zero, a5
                  addi         s10, s10, -2 #update loop 0 counter
                  sltiu        a6, a7, -1067
                  nop
                  bgeu         s10, s8, sub_2_3_0_t #branch for loop 0
                  xor          t2, a3, s0
                  bgeu         a5, s3, sub_2_3_1_t #branch for loop 1
                  andi         t1, a7, -1116
                  addi         s2, zero, 10 #init loop 1 counter
                  auipc        gp, 879681
                  sub          s8, t3, a1
                  auipc        a3, 297858
                  addi         s11, zero, 9 #init loop 1 limit
sub_2_5_1_t:      and          sp, t3, a4
                  srai         s6, t1, 9
                  srai         s10, a0, 19
                  nop
                  nop
                  addi         s2, s2, -8 #update loop 1 counter
                  sltu         a3, s10, t1
                  addi         t3, zero, 9 #init loop 0 counter
                  sltiu        s9, t2, -940
                  ori          ra, a7, -300
                  srl          s10, a0, s0
                  sra          a3, s8, t5
                  andi         s4, s10, -723
                  sltu         s8, t1, s11
                  sra          s8, s9, t3
                  addi         a2, zero, 16 #init loop 0 limit
                  nop
                  slt          a0, a3, zero
                  sltiu        a4, t6, 152
sub_2_5_0_t:      addi         t1, t3, 2000
                  srl          a5, s8, s3
                  add          s7, a0, t5
                  addi         t3, t3, 7 #update loop 0 counter
                  andi         a0, tp, 1664
                  bne          t3, a2, sub_2_5_0_t #branch for loop 0
                  slti         t5, a5, 1844
                  xori         s0, a1, 1998
                  bgeu         s2, s11, sub_2_5_1_t #branch for loop 1
                  or           s4, s3, t5
                  addi         a1, zero, -5 #init loop 0 counter
                  add          t2, a4, a4
                  slt          s0, t0, a1
                  and          ra, s1, s7
                  lui          sp, 568100
                  xori         s5, s0, -1414
                  addi         t6, zero, -16 #init loop 0 limit
                  xor          a4, tp, a4
                  sub          ra, s0, t6
                  srli         s0, t0, 26
                  xori         zero, t4, -1985
                  sra          s10, s8, s0
sub_2_2_0_t:      sltiu        a7, s8, 363
                  addi         a1, a1, -10 #update loop 0 counter
                  bge          a1, t6, sub_2_2_0_t #branch for loop 0
                  srli         s10, gp, 21
                  ori          a0, s7, 1143
                  bge          s6, sp, 17f
                  lui          t1, 389692
                  bltu         t0, s11, 8f
                  beq          s10, t6, 5f
5:                bltu         s1, ra, 20f
                  add          t0, a3, t4
                  srli         a6, s9, 23
8:                ori          t0, a7, -452
                  addi         a0, a4, -214
                  sub          a0, ra, t5
                  slt          a2, t5, a6
                  auipc        s0, 55413
                  slti         ra, s7, 779
                  sltiu        t1, s4, -25
                  bltu         s11, t6, 33f
                  xori         s5, gp, -205
17:               xori         s10, a3, 1004
                  nop
                  bge          s5, zero, 23f
20:               lui          s8, 773708
                  slt          sp, a5, ra
                  lui          a3, 954648
23:               bge          a7, a2, 26f
                  add          s0, ra, s3
                  xori         s8, a0, 91
26:               beq          t4, a5, 41f
                  beq          s4, ra, 36f
                  xori         a7, a3, -1688
                  bgeu         s9, s4, 42f
                  sltiu        s6, a2, -1117
                  bge          s1, s9, 45f
                  xor          s6, t1, s0
33:               bltu         s9, s8, 37f
                  srl          t2, t5, a2
                  srai         s2, t2, 31
36:               ori          s7, a1, -1383
37:               xori         s4, s3, 1264
                  nop
                  srl          s4, s3, s4
                  bltu         sp, t0, 55f
41:               bge          s5, s0, 56f
42:               or           t1, a5, a7
                  addi         a1, s10, 324
                  or           a2, a6, s1
45:               sltiu        t1, t2, 543
                  andi         s3, gp, 201
                  sltiu        s8, s8, 530
                  add          s8, zero, s7
                  bltu         t1, t4, 64f
                  bltu         a5, sp, 69f
                  nop
                  lui          s0, 171400
                  bne          a7, sp, 54f
54:               lui          t0, 616202
55:               sltu         s11, s9, s1
56:               slti         s5, s7, -1266
                  srl          ra, s1, s5
                  andi         ra, s0, -1607
                  andi         s11, s10, 1130
                  bne          gp, zero, 64f
                  srai         t0, s7, 18
                  andi         t3, t0, 1395
                  bne          a3, s0, 72f
64:               bltu         s0, s11, 74f
                  srai         s3, s7, 10
                  srli         a1, s9, 7
                  xori         s11, a1, -1026
                  addi         zero, s0, 431
69:               srli         t1, a0, 4
                  bgeu         s10, a1, 76f
                  andi         zero, s1, -331
72:               sltu         a5, a1, t3
                  nop
74:               bne          zero, a1, 94f
                  srl          a5, s1, s1
76:               addi         a1, a6, -152
                  srl          a4, a7, s6
                  sltu         gp, s3, sp
                  bltu         a4, s11, 96f
                  srl          s7, a6, t1
                  beq          t1, s2, 93f
                  and          s9, a3, zero
                  nop
                  bgeu         a0, s4, 89f
                  and          s7, t0, a7
                  auipc        a0, 280978
                  srli         s9, s6, 14
                  sltiu        s9, s9, -504
89:               lui          s6, 854171
                  slti         t2, t5, -560
                  blt          a4, s4, 94f
                  addi         a6, zero, -898
93:               slti         t2, a6, -105
94:               nop
                  srli         t3, t4, 15
96:               andi         sp, s3, -1992
                  sltiu        s10, gp, 1993
                  addi         t6, s3, -335
                  blt          s4, t4, 107f
                  ori          a4, tp, 153
                  nop
                  sub          s5, s4, a3
                  xor          s7, t5, s6
                  slt          a6, a1, a5
                  bltu         a0, a3, 124f
                  bge          s9, s6, 110f
107:              sub          a7, t6, a2
                  sltu         a2, t4, t5
                  auipc        sp, 899646
110:              slt          t0, s7, s4
                  lui          gp, 763
                  srli         sp, gp, 10
                  auipc        t5, 704811
                  slti         a0, a7, 370
                  or           s2, t5, a0
                  bne          a2, t0, 136f
                  srl          s3, a4, ra
                  bltu         s7, a5, 121f
                  bgeu         s1, t1, 128f
                  srli         a3, a2, 15
121:              nop
                  addi         s6, a3, -1755
                  and          s2, s3, a6
124:              sub          s11, s7, s1
                  nop
                  bltu         s1, s0, 143f
                  beq          a7, a2, 142f
128:              blt          a2, t1, 132f
                  sub          s9, a6, t6
                  bltu         sp, a5, 131f
131:              nop
132:              bltu         s3, s11, 137f
                  beq          s1, ra, 137f
                  slli         a4, tp, 25
                  lui          a7, 396022
136:              xori         ra, t5, -1991
137:              blt          t0, s6, 152f
                  sub          a2, a4, a6
                  xor          s3, t5, a6
                  bgeu         s5, s5, 150f
                  slt          t1, s10, s3
142:              auipc        s4, 509529
143:              bne          a4, s11, 159f
                  addi         gp, s1, -142
                  andi         s5, s7, 978
                  add          a6, a2, zero
                  addi         t1, s7, 258
                  and          a5, t1, a2
                  bge          a1, sp, 154f
150:              auipc        a7, 115061
                  xori         zero, tp, -695
152:              sra          t5, s4, t0
                  beq          s10, t6, 154f
154:              sub          s10, s6, t0
                  bne          t6, s4, 164f
                  sub          s2, s6, s11
                  or           s7, a6, a3
                  sll          t6, t1, s7
159:              slli         a3, t6, 6
                  lui          t0, 502681
                  bgeu         t5, gp, 165f
                  srli         t1, t2, 15
                  lui          t5, 444980
164:              beq          a1, s3, 176f
165:              sltu         zero, s10, s11
                  addi         sp, a5, -826
                  slt          s8, a5, s0
                  sll          a4, t4, ra
                  and          s4, s6, t2
                  nop
                  blt          t6, a2, 186f
                  bne          s3, s7, 191f
                  sra          s11, tp, tp
                  sll          t3, a7, s7
                  xori         a6, s7, 1630
176:              bge          zero, s8, 196f
                  beq          tp, zero, 185f
                  bne          s1, a6, 182f
                  blt          s8, s4, 194f
                  sra          s2, s10, t6
                  xori         t6, s4, -23
182:              slt          s4, s4, a2
                  slt          s9, sp, t1
                  bne          t0, ra, 202f
185:              ori          s6, t6, -132
186:              or           s2, gp, a2
                  bne          zero, s3, 207f
                  bltu         s4, s0, 194f
                  srli         s0, t6, 29
                  ori          s9, ra, 1745
191:              or           s10, s11, s8
                  andi         s8, t0, -1039
                  auipc        a3, 325200
194:              add          s7, t6, gp
                  addi         s10, s11, -1645
196:              srai         zero, t4, 20
                  bltu         s9, s11, 211f
                  sra          s0, sp, s4
                  sltiu        a4, s9, -622
                  addi         a3, gp, 914
                  slt          s5, a6, s7
202:              slt          s3, s10, t6
                  blt          s4, s0, 206f
                  or           s11, s6, a5
                  andi         zero, gp, 411
206:              or           t1, a4, a0
207:              andi         t0, s6, 1732
                  blt          tp, s8, 223f
                  beq          s0, s11, 228f
                  add          s8, s3, a1
211:              andi         s8, s1, -1852
                  or           a7, a7, a1
                  slli         s8, a5, 16
                  bne          s4, t4, 227f
                  sltu         s10, a0, s2
                  bge          a4, s4, 217f
217:              xor          sp, tp, s5
                  bltu         s8, a4, 233f
                  ori          gp, a7, 307
                  add          a2, a1, ra
                  beq          ra, s11, 229f
                  or           s6, s7, t6
223:              nop
                  xor          a4, t1, s9
                  nop
                  ori          s3, s5, -1913
227:              nop
228:              slli         a3, t4, 0
229:              srl          gp, s4, s2
                  sra          s6, s4, a2
                  bltu         a6, sp, 250f
                  sra          s6, s8, t1
233:              xor          s2, t0, a2
                  addi         s6, zero, 1454
                  srai         a1, s9, 12
                  blt          a1, zero, 251f
                  addi         t1, s2, 1098
                  and          s6, a2, t2
                  nop
                  sltiu        s6, t6, -1930
                  slt          t3, t2, s7
                  srl          s4, tp, s10
                  bgeu         s11, s8, 247f
                  srl          s0, a5, sp
                  ori          a6, t1, -1223
                  lui          s2, 240141
247:              or           t2, s7, s2
                  sll          s0, a2, t3
                  or           a1, zero, s8
250:              sll          a6, s7, t4
251:              lui          s11, 108266
                  and          a0, t5, a4
                  and          s4, s8, t4
                  slt          a6, t4, a1
                  bltu         t3, s1, 271f
                  beq          s10, zero, 266f
                  sltiu        a3, a0, 120
                  xor          t5, s2, a6
                  sltiu        a6, s7, 408
                  or           s6, a7, s9
                  lui          t5, 78996
                  slt          a5, s1, s7
                  ori          s2, s9, 730
                  slli         s2, t5, 20
                  auipc        t3, 61812
266:              sll          s11, a5, s0
                  bne          s7, t3, 279f
                  bne          a7, s7, 271f
                  srai         ra, s7, 14
                  srl          s3, t5, s7
271:              andi         t2, s8, 1804
                  bne          a2, t2, 281f
                  sltiu        s10, s0, 1808
                  sll          a7, a3, s6
                  and          t1, a3, a0
                  srai         t2, t5, 1
                  sll          t1, t3, a6
                  add          s7, a4, s11
279:              auipc        s9, 91150
                  slli         s9, t6, 18
281:              add          s8, t1, s4
                  or           zero, a3, t1
                  srl          a7, gp, s6
                  sltu         s10, s11, ra
                  sltiu        s3, t1, -657
                  bgeu         s10, s0, 306f
                  sltiu        t0, a7, 1349
                  sub          sp, t6, s4
                  add          s2, s6, a6
                  xori         s0, s4, -483
                  ori          t3, ra, -847
                  and          s8, t5, s11
                  slli         a3, s3, 1
                  nop
                  xor          a0, t0, s1
                  slti         s9, a2, 231
                  or           zero, t5, sp
                  slti         s11, t6, 1274
                  bge          s11, s0, 302f
                  xor          a1, s9, a4
                  sll          s8, s3, s3
302:              slli         s0, a3, 21
                  sra          a3, s4, s3
                  sub          s10, a4, s0
                  srl          t2, t1, s6
306:              sltu         a4, t0, s6
                  beq          s11, s11, 311f
                  sltu         t1, t2, a4
                  sltu         s3, a6, t4
                  auipc        a7, 227877
311:              xor          s8, s3, a3
                  ori          gp, s1, 730
                  srai         s6, s2, 2
                  auipc        t1, 175690
                  sra          t1, t6, t0
                  lui          a3, 700848
                  bgeu         s2, s5, 323f
                  beq          t3, s8, 338f
                  srl          a3, a1, a0
                  bltu         s0, s7, 325f
                  xori         s4, a6, 66
                  or           s10, ra, s5
323:              and          s6, s11, s7
                  bne          s9, s4, 341f
325:              sll          t0, s1, a5
                  sll          ra, s1, a0
                  lui          t6, 384571
                  bge          a1, t0, 341f
                  sub          a2, t1, ra
                  srl          a2, a1, s0
                  auipc        a0, 308449
                  slli         t1, ra, 22
                  sltu         s10, t5, s2
                  lui          s7, 80192
                  bne          t2, ra, 344f
                  srli         a0, t6, 29
                  slt          s8, t5, t1
338:              slti         s8, a0, 822
                  srl          t1, a6, t3
                  sub          s9, t2, s6
341:              beq          a0, s6, 346f
                  bne          s0, s11, 357f
                  sra          a5, s11, a3
344:              xor          s5, s4, t1
                  beq          s11, s7, 346f
346:              bge          s1, t1, 365f
                  or           s10, gp, s7
                  bge          a2, t6, 363f
                  slli         s10, tp, 9
                  bne          gp, a7, 364f
                  sltiu        a3, a5, 1796
                  lui          s0, 903717
                  blt          a2, a0, 368f
                  xori         t1, a1, -1555
                  srai         s10, s8, 3
                  ori          t0, s1, 82
357:              sll          t3, s7, s11
                  lui          a1, 657873
                  andi         s11, zero, -852
                  sra          s11, s3, tp
                  bge          s3, s0, 365f
                  sub          s7, t5, a1
363:              slti         s3, t1, -1220
364:              add          s9, s0, zero
365:              ori          s5, a3, 365
                  sltiu        s3, zero, 1395
                  blt          t3, a7, 371f
368:              sltu         t5, t1, s6
                  auipc        s0, 541626
                  xor          a3, s3, t2
371:              slti         a5, s5, -364
                  bne          s7, a0, 383f
                  or           s9, t3, t3
                  blt          s2, s0, 383f
                  sll          a0, a5, s3
                  srli         t5, ra, 27
                  andi         s7, t0, 702
                  lui          a4, 738012
                  sll          s2, s11, a7
                  slt          s3, s0, t2
                  srl          sp, s2, s11
                  slli         gp, t4, 15
383:              ori          s8, t2, 843
                  lw           ra, 4(t4)
                  andi         t0, a6, -817
                  addi         t4, t4, 12
                  sltu         s5, t3, ra
                  nop
568:              addi x25, x1, 0
568:              jalr x25, x25, 0
sub_4:            bne          ra, s3, sub_4_stack_p
                  slt          gp, a6, s4
                  slli         t3, s3, 21
                  add          t2, s0, a4
                  slti         a4, a1, -1365
sub_4_stack_p:    addi         t4, t4, -36
                  sw           ra, 4(t4)
                  nop
                  addi         s0, zero, 5 #init loop 1 counter
                  addi         s6, s6, -1661
                  addi         s8, zero, 19 #init loop 1 limit
                  addi         a7, s6, 450
sub_4_2_1_t:      and          sp, s0, a1
                  lui          s11, 327695
                  addi         s0, s0, 7 #update loop 1 counter
                  addi         gp, zero, 8 #init loop 0 counter
                  add          t5, s7, s8
                  addi         s3, zero, 17 #init loop 0 limit
                  andi         a7, t4, 400
sub_4_2_0_t:      addi         t5, ra, 17
                  addi         gp, gp, 5 #update loop 0 counter
                  slt          s9, s7, s11
                  ori          t1, tp, 1066
                  bltu         gp, s3, sub_4_2_0_t #branch for loop 0
                  slti         a0, s5, 258
                  srai         a7, a6, 0
                  sltu         s6, s3, zero
                  beq          s0, s8, sub_4_2_1_t #branch for loop 1
                  sub          a1, a4, a4
                  addi         s3, zero, 5 #init loop 0 counter
                  add          a7, t3, a0
                  sltiu        a5, a1, -1229
                  xor          s7, a0, a1
                  sltu         s10, a4, a7
                  addi         a1, zero, 7 #init loop 0 limit
                  sltiu        gp, t6, 1979
                  sra          a5, gp, t5
sub_4_1_0_t:      xor          a4, t6, s5
                  nop
                  addi         s3, s3, 5 #update loop 0 counter
                  slti         s11, s10, 406
                  and          a2, t2, t3
                  lui          s2, 796041
                  andi         s10, s8, 2000
                  xor          zero, ra, a4
                  andi         a6, s0, 51
                  bltu         s3, a1, sub_4_1_0_t #branch for loop 0
                  srai         zero, s10, 15
                  addi         s4, zero, -1 #init loop 0 counter
                  auipc        a7, 201756
                  ori          s8, s1, -972
                  xori         t0, t0, 18
                  xori         a5, s8, 919
                  addi         a2, zero, 1 #init loop 0 limit
                  sra          t6, s8, s3
                  and          zero, t0, s4
                  slti         s7, tp, -1736
sub_4_4_0_t:      nop
                  xori         a4, t4, 1861
                  ori          a0, t2, -92
                  xori         s5, a4, 190
                  xori         gp, s1, 626
                  lui          s10, 268534
                  srai         t5, a4, 12
                  addi         sp, sp, 369
                  andi         s7, a0, -1381
                  addi         s4, s4, 5 #update loop 0 counter
                  nop
                  sub          s10, t3, t2
                  sub          s5, a2, t0
                  slt          t2, t4, s6
                  bltu         s4, a2, sub_4_4_0_t #branch for loop 0
                  srl          t3, t4, a5
                  addi         s5, zero, -7 #init loop 0 counter
                  auipc        zero, 211254
                  sltu         s3, sp, a4
                  or           s4, s8, a1
                  addi         s9, zero, -9 #init loop 0 limit
sub_4_3_0_t:      sub          s7, tp, s0
                  xor          s11, a1, t2
                  addi         s5, s5, -2 #update loop 0 counter
                  beq          s5, s9, sub_4_3_0_t #branch for loop 0
                  sltiu        zero, s6, -153
                  addi         t6, zero, 2 #init loop 0 counter
                  srli         s7, a3, 22
                  sltiu        a2, gp, 1610
                  and          t2, s4, t2
                  xor          t1, t1, a1
                  slli         s0, a1, 13
                  or           s6, t3, a2
                  srli         a5, s4, 21
                  addi         a7, zero, 2 #init loop 0 limit
sub_4_5_0_t:      auipc        s10, 1032810
                  srli         a1, gp, 23
                  add          s3, s11, zero
                  srai         t0, t4, 18
                  ori          a0, tp, -704
                  lui          s8, 1026471
                  nop
                  lui          a0, 164709
                  addi         t6, t6, -1 #update loop 0 counter
                  xor          s10, a2, a6
                  bgeu         t6, a7, sub_4_5_0_t #branch for loop 0
                  lui          a2, 868096
                  lui          a3, 450436
                  or           s9, s11, t2
                  srli         gp, zero, 26
                  and          s10, s0, s4
                  and          t0, s5, sp
                  srl          a4, a3, a0
                  sra          a4, a0, a7
                  auipc        s9, 39561
                  ori          s7, a1, -1881
                  ori          sp, s9, 85
                  add          s2, s3, gp
                  slt          a4, s5, t1
                  srl          t2, s4, s11
                  srli         s8, a6, 1
                  sra          sp, sp, a2
                  srli         zero, s10, 7
                  nop
                  srl          a3, s10, sp
                  srl          a6, t5, a3
                  add          t3, t4, s6
                  xor          s5, sp, s11
                  lui          ra, 626492
                  sra          gp, s8, sp
                  srli         a5, t3, 0
                  xor          a1, gp, a3
                  bgeu         s1, s1, 43f
                  xor          sp, a5, a4
                  bne          sp, gp, 42f
                  sll          t2, s6, t4
                  slli         a2, s9, 29
                  bgeu         t2, t6, 46f
                  sll          a6, sp, t3
                  lui          s3, 841982
                  sll          s0, s7, a7
                  srai         ra, s9, 18
                  srai         t5, a6, 9
                  or           a2, s0, a2
                  slli         a6, t0, 11
                  lui          s9, 582774
                  bgeu         t2, s3, 56f
                  sltu         s10, a7, ra
                  sll          a0, a2, s11
42:               xori         sp, s2, -1506
43:               blt          t3, s10, 55f
                  srl          t6, t6, t6
                  lui          a2, 259677
46:               xori         s5, t6, 356
                  beq          sp, t0, 49f
                  and          a0, s0, t6
49:               slli         s3, t6, 30
                  nop
                  slli         s4, ra, 24
                  add          t3, t3, zero
                  ori          a1, a1, -1076
                  sll          s6, ra, t1
55:               bne          s2, a0, 63f
56:               slt          s7, t3, a0
                  bgeu         s8, s1, 58f
58:               slt          sp, t0, a3
                  addi         a7, gp, -419
                  bgeu         tp, zero, 66f
                  and          t2, s1, tp
                  srai         s8, s10, 17
63:               sub          zero, a6, s6
                  addi         s2, s4, 1875
                  slti         t2, t5, 1270
66:               and          a6, t3, s7
                  sub          zero, a7, t5
                  ori          s0, t4, -715
                  auipc        t1, 342058
                  slti         s5, t1, 1629
                  bne          s5, s2, 75f
                  add          a3, tp, s4
                  sll          gp, a1, t4
                  or           a7, a2, t3
75:               xori         s4, a3, -813
                  bne          t6, s1, 93f
                  bne          s7, a1, 80f
                  srl          t1, t1, zero
                  sra          s3, t4, a3
80:               bge          s3, s3, 96f
                  bge          s7, gp, 94f
                  slli         a3, sp, 30
                  beq          a7, a0, 101f
                  or           a0, s1, s11
                  xori         t1, s8, 1486
                  add          s3, s6, s7
                  addi         s9, s7, -898
                  beq          s4, s3, 89f
89:               and          a4, a1, a6
                  srli         a5, zero, 28
                  ori          a1, a0, 0
                  sub          sp, gp, a3
93:               sltu         gp, s3, gp
94:               lui          s0, 546675
                  blt          tp, s9, 115f
96:               lui          s2, 71835
                  blt          t6, ra, 98f
98:               sra          ra, zero, t3
                  slti         ra, s0, -459
                  sltu         s2, s0, a2
101:              bge          t4, a5, 117f
                  srai         sp, t5, 6
                  add          t6, a4, t0
                  lui          s5, 928164
                  sltiu        s5, t3, -1723
                  sltiu        a2, a2, 1692
                  and          gp, a6, s4
                  slt          a1, t1, zero
                  srai         t6, t0, 31
                  slli         t1, t6, 7
                  lui          s2, 713374
                  slli         a6, s4, 12
                  and          s8, a7, s10
                  sub          gp, s11, s10
115:              beq          s0, t3, 125f
                  xori         s10, s5, -2032
117:              bne          t3, a0, 127f
                  sltu         s5, t4, s2
                  lui          a1, 710410
                  sub          a6, a6, s11
                  beq          t2, a5, 127f
                  blt          t2, s4, 125f
                  add          s9, s9, t5
                  bltu         t3, s1, 143f
125:              srli         s6, a1, 6
                  slt          sp, a3, s3
127:              or           s5, tp, s0
                  sll          t2, a1, t6
                  andi         s0, a5, -529
                  bne          a3, t6, 136f
                  bltu         s5, t0, 136f
                  lui          t6, 506952
                  srli         a0, a4, 26
                  bge          t2, s4, 135f
135:              or           a5, t2, a2
136:              sra          gp, a0, s0
                  slti         s2, tp, 462
                  ori          t2, s2, 354
                  lui          s7, 865242
                  beq          a3, t5, 156f
                  auipc        s3, 70211
                  or           s11, s2, t2
143:              srli         s6, t1, 19
                  srli         s6, s7, 21
                  addi         s10, a4, -1028
                  sra          s3, t4, t5
                  srai         s5, t5, 6
                  lui          ra, 802861
                  sra          a2, t4, a0
                  bltu         s0, gp, 152f
                  xor          a2, ra, s2
152:              add          s2, a6, t6
                  and          s9, a0, sp
                  bge          t1, zero, 158f
                  beq          s6, t3, 168f
156:              bltu         t5, tp, 160f
                  sll          a6, a0, a3
158:              andi         s11, s7, -1606
                  slt          sp, a6, s1
160:              xor          sp, gp, s6
                  xori         a2, t1, -1604
                  xori         t1, t2, -1521
                  slli         a0, s3, 12
                  sltiu        a1, a7, -1218
                  bgeu         t2, gp, 171f
                  srli         s2, s4, 10
                  bge          s8, a1, 185f
168:              blt          a3, a1, 170f
                  xor          ra, t0, s6
170:              bgeu         s9, a6, 187f
171:              or           a7, tp, a4
                  srli         s9, gp, 5
                  slt          a7, s0, s11
                  and          a0, a0, a3
                  blt          zero, s4, 176f
176:              or           a5, t4, s7
                  and          a1, s3, a2
                  srli         s3, s6, 21
                  sltiu        t6, s2, -1561
                  andi         a4, s1, -681
                  lui          sp, 972545
                  srl          t3, t1, t2
                  bltu         tp, t2, 184f
184:              bgeu         tp, a4, 201f
185:              and          s5, s3, a6
                  andi         t1, a0, -109
187:              andi         a7, t3, -1901
                  bltu         s5, s11, 207f
                  bne          ra, a6, 197f
                  srl          sp, s5, t2
                  addi         s9, zero, -4 #init loop 1 counter
                  sltu         gp, a7, s6
                  lui          a5, 74285
                  srl          a4, s0, s2
                  nop
                  auipc        sp, 595595
                  srl          s7, s9, s5
                  and          a3, s10, t6
                  addi         a0, zero, 6 #init loop 1 limit
                  srai         s4, t1, 25
                  ori          t6, t0, -311
sub_4_0_1_t:      sltu         t1, t6, s5
                  addi         s9, s9, 2 #update loop 1 counter
                  addi         t3, zero, -1 #init loop 0 counter
                  slti         ra, t5, 1645
                  addi         a6, zero, 19 #init loop 0 limit
sub_4_0_0_t:      andi         t6, s10, -672
                  lui          zero, 550573
                  slti         a7, tp, 1956
                  addi         t3, t3, 6 #update loop 0 counter
                  addi         a2, a3, 1139
                  addi         s0, s11, 1318
                  blt          t3, a6, sub_4_0_0_t #branch for loop 0
                  xori         t2, a6, 1579
                  sltiu        s2, gp, -473
                  bltu         s9, a0, sub_4_0_1_t #branch for loop 1
                  andi         s0, t5, 271
                  sltu         a6, t6, s9
                  sltu         s0, a2, s0
                  bltu         a2, t5, 196f
                  srl          s7, t1, sp
                  sll          sp, s8, t4
196:              auipc        a7, 850598
197:              sra          t3, a0, a6
                  auipc        s11, 185073
                  add          a6, tp, sp
                  slti         t6, t5, -1468
201:              auipc        t5, 366250
                  or           a5, s6, s7
                  ori          t3, ra, -1390
                  slti         s2, s0, -446
                  nop
                  bltu         t0, t2, 222f
207:              blt          s10, gp, 219f
                  sra          s10, s0, a2
                  andi         s9, a3, 1910
                  srli         s10, zero, 2
                  xor          s3, s4, t3
                  or           s4, tp, a6
                  sub          s6, t3, s11
                  bgeu         a6, s4, 215f
215:              srl          zero, a2, s2
                  bge          s4, t4, 236f
                  srl          a5, a7, s10
                  slli         a4, sp, 10
219:              addi         zero, a3, -1104
                  auipc        t5, 825815
                  and          s6, t3, s9
222:              lui          a1, 372577
                  slti         t5, s4, -1795
                  lui          s4, 489062
                  bltu         a1, s3, 231f
                  lui          s8, 936281
                  bge          t3, a5, 233f
                  lui          a2, 132847
                  beq          tp, t0, 234f
                  slli         a1, a2, 2
231:              bne          s4, a4, 241f
                  slt          a0, s2, a0
233:              xor          t1, tp, s2
234:              bltu         s8, s0, 250f
                  nop
236:              beq          s9, a1, 239f
                  or           s8, t6, t4
                  sra          ra, ra, a1
239:              bne          gp, s4, 243f
                  slli         t3, t2, 12
241:              lui          a6, 713354
                  nop
243:              xori         a2, s2, -484
                  sll          s2, a3, a6
                  auipc        t6, 354647
                  slt          s4, sp, s10
                  slli         gp, t5, 2
                  sll          t6, ra, t2
                  beq          gp, a4, 250f
250:              add          s10, s0, ra
                  beq          ra, a2, 267f
                  addi         t2, a3, 1379
                  andi         zero, a3, -1504
                  nop
                  ori          ra, a7, -74
                  sra          s3, t2, t0
                  sltiu        s6, s0, -1743
                  lui          a4, 719007
                  slli         sp, s10, 29
                  bne          zero, t0, 275f
                  sll          sp, a0, a3
                  bgeu         s6, s8, 280f
                  srl          gp, a2, t3
                  beq          ra, s11, 274f
                  srl          s6, a4, s10
                  srai         s4, s2, 3
267:              bge          a4, s3, 269f
                  xor          t6, t0, t6
269:              sltiu        s0, tp, 208
                  xor          t3, t4, zero
                  sltiu        t3, s9, -1544
                  andi         t1, s5, -564
                  srli         a5, s5, 11
274:              add          a2, t6, s11
275:              sra          zero, tp, a2
                  slli         s9, s0, 8
                  and          s0, sp, s8
                  sll          s5, a3, ra
                  sub          zero, t5, t3
280:              andi         s3, s8, -879
                  slt          s7, s6, a0
                  bne          s4, s4, 298f
                  slti         a1, s10, 1161
                  sra          s5, s1, tp
                  add          a1, s6, a6
                  srli         a2, s8, 22
                  xor          gp, gp, s6
                  nop
                  slli         s3, s11, 31
                  or           s7, s5, s10
                  srl          a7, t4, gp
                  sra          s7, s7, t1
                  srai         a3, s7, 21
                  xor          s3, a2, s3
                  bge          s4, s5, 297f
                  srl          s5, s6, s4
297:              or           t2, s10, s7
298:              srli         s8, t1, 24
                  srai         t2, s6, 11
                  bge          s5, s8, 317f
                  and          ra, s9, a6
                  srai         s10, s9, 24
                  bne          s2, s8, 315f
                  andi         ra, sp, -2033
                  xor          s3, s7, s4
                  nop
                  bltu         a5, t0, 317f
                  sra          t3, s9, t6
                  slli         a6, zero, 28
                  sub          t6, a4, zero
                  sll          sp, a6, gp
                  slt          gp, a2, ra
                  slti         a0, gp, 990
                  bgeu         a2, gp, 329f
315:              xor          sp, s9, t2
                  and          s5, t4, a7
317:              sltu         a3, t5, s5
                  srl          ra, s7, s4
                  sub          s6, t4, zero
                  and          s3, sp, s5
                  or           ra, sp, s5
                  slti         a1, s9, 784
                  bltu         a4, t2, 324f
324:              addi         s6, t4, -1052
                  srl          t3, tp, a3
                  slt          a5, a3, s0
                  srli         a3, gp, 26
                  bne          s10, t1, 330f
329:              lui          s7, 569969
330:              blt          a4, t2, 341f
                  slti         s6, t4, 1537
                  bne          s0, a0, 341f
                  slli         s7, s0, 23
                  slti         a1, t0, 829
                  auipc        a1, 276557
                  andi         zero, a3, 1974
                  or           t6, a2, s9
                  auipc        t0, 576727
                  srai         s0, s10, 7
                  slli         s6, a5, 17
341:              srli         t2, s4, 12
                  lw           ra, 4(t4)
                  slt          s2, sp, a6
                  or           sp, s1, s11
                  addi         t4, t4, 36
                  or           a0, s11, tp
                  xori         t2, s2, 974
479:              addi x24, x1, 1
479:              jalr x24, x24, 0
sub_3:            bgeu         s2, sp, sub_3_stack_p
                  and          s9, t4, gp
                  sltiu        s5, s6, 1597
sub_3_stack_p:    addi         t4, t4, -12
                  nop
                  xori         s5, tp, 1723
                  sw           ra, 4(t4)
                  auipc        a4, 549624
                  lui          a4, 27025
                  or           a3, a1, t2
                  xor          t3, t3, a7
                  addi         a1, zero, -2 #init loop 0 counter
                  ori          t6, tp, -971
                  addi         gp, a7, 414
                  auipc        s9, 760228
                  lui          a0, 1002360
                  addi         ra, zero, 19 #init loop 0 limit
                  nop
                  sltu         s9, a7, s4
                  sltiu        s3, t2, -1284
                  addi         t0, t3, 560
                  sub          a5, tp, s4
                  xor          a6, sp, a7
                  srai         s6, sp, 27
                  or           s6, s10, s10
sub_3_13_0_t:     andi         s4, s2, 1000
                  xor          sp, t3, s10
                  xori         s8, s7, -660
                  addi         a1, a1, 7 #update loop 0 counter
                  nop
                  blt          a1, ra, sub_3_13_0_t #branch for loop 0
                  sltiu        s2, s1, 192
                  addi         s6, zero, -1 #init loop 1 counter
                  lui          t5, 820749
                  and          s4, s10, t3
                  xori         a7, a0, 727
                  add          t1, a3, s3
                  addi         a6, zero, -7 #init loop 1 limit
                  slt          a7, zero, a4
                  nop
                  add          s0, a6, t2
                  addi         a5, a0, -1834
                  slt          a7, t0, s3
sub_3_7_1_t:      and          s5, s2, s10
                  addi         s6, s6, -9 #update loop 1 counter
                  addi         t3, zero, 10 #init loop 0 counter
                  sltu         s3, t0, a5
                  addi         a3, zero, 6 #init loop 0 limit
sub_3_7_0_t:      slti         s0, gp, -680
                  xor          t6, a6, s9
                  sltu         s11, a5, t3
                  addi         t3, t3, -5 #update loop 0 counter
                  srl          s9, a6, t4
                  lui          s4, 401136
                  slt          a1, a2, s9
                  add          sp, t5, ra
                  bgeu         t3, a3, sub_3_7_0_t #branch for loop 0
                  add          s10, s8, zero
                  andi         s10, a5, 92
                  bge          s6, a6, sub_3_7_1_t #branch for loop 1
                  auipc        s3, 648802
                  addi         t2, zero, 6 #init loop 1 counter
                  addi         s10, zero, 16 #init loop 1 limit
                  slti         s9, a0, 306
sub_3_0_1_t:      andi         a7, gp, -1290
                  slli         t5, s5, 18
                  xor          ra, s11, s1
                  addi         s3, a1, -1464
                  sltu         s11, t2, tp
                  sra          a1, s7, a6
                  addi         s8, a5, -276
                  addi         t2, t2, 8 #update loop 1 counter
                  add          a6, s10, t2
                  srai         a4, a1, 23
                  xori         s4, s9, -1285
                  sll          s3, t1, a1
                  nop
                  addi         a2, zero, -1 #init loop 0 counter
                  addi         s0, zero, 16 #init loop 0 limit
                  slli         t5, s8, 29
                  ori          s6, a5, 1820
                  add          t3, s2, t3
                  sltiu        a6, s4, 1039
sub_3_0_0_t:      nop
                  addi         a2, a2, 3 #update loop 0 counter
                  sra          t1, s7, gp
                  bltu         a2, s0, sub_3_0_0_t #branch for loop 0
                  srli         t6, tp, 25
                  srai         s4, t4, 5
                  and          t6, s3, a7
                  andi         a1, t4, -574
                  blt          t2, s10, sub_3_0_1_t #branch for loop 1
                  srli         t3, s2, 18
                  addi         s7, zero, -10 #init loop 0 counter
                  add          s0, ra, s6
                  auipc        ra, 561206
                  xor          s0, s11, s2
                  sltiu        a5, tp, 324
                  addi         sp, zero, -19 #init loop 0 limit
                  ori          t2, s4, 93
                  sltu         s10, s9, s9
                  or           zero, s8, s6
                  sltiu        s5, s1, -1055
                  srai         ra, sp, 12
                  srl          s8, a5, zero
                  sll          s0, s7, t1
                  xori         s0, ra, -868
sub_3_6_0_t:      add          a6, s3, s3
                  lui          s3, 30000
                  srl          zero, s10, t0
                  addi         s7, s7, -3 #update loop 0 counter
                  slti         a7, gp, -1514
                  sltu         a4, a4, t6
                  sra          a0, s2, a0
                  and          a4, a7, s3
                  sltiu        s4, sp, -1733
                  srl          s8, s5, t3
                  xor          s6, a7, s11
                  bge          s7, sp, sub_3_6_0_t #branch for loop 0
                  srli         s3, t4, 24
                  addi         a6, zero, 9 #init loop 1 counter
                  srli         t1, s0, 0
                  addi         s7, zero, 18 #init loop 1 limit
                  slli         zero, s6, 30
sub_3_11_1_t:     auipc        s9, 348652
                  addi         a6, a6, 3 #update loop 1 counter
                  addi         a4, zero, 10 #init loop 0 counter
                  sltiu        a5, s10, 122
                  addi         s4, zero, 6 #init loop 0 limit
sub_3_11_0_t:     nop
                  andi         gp, t0, 701
                  addi         t0, s11, 81
                  addi         a4, a4, -1 #update loop 0 counter
                  slt          a2, zero, a7
                  bgeu         a4, s4, sub_3_11_0_t #branch for loop 0
                  sub          t2, t1, gp
                  xor          s8, s0, t1
                  addi         s8, ra, -147
                  xori         s2, t5, 1732
                  blt          a6, s7, sub_3_11_1_t #branch for loop 1
                  sll          zero, s4, sp
                  addi         t5, zero, 8 #init loop 1 counter
                  addi         s0, t3, 1920
                  addi         ra, zero, -20 #init loop 1 limit
                  sll          t6, s9, s8
sub_3_10_1_t:     ori          a6, a7, 457
                  srli         s9, t4, 17
                  ori          a4, t5, -486
                  and          sp, s9, s0
                  addi         t5, t5, -9 #update loop 1 counter
                  sll          a3, s5, t4
                  or           t1, gp, t6
                  or           t6, gp, t6
                  addi         s11, zero, -3 #init loop 0 counter
                  auipc        sp, 748590
                  nop
                  addi         s4, zero, -9 #init loop 0 limit
                  srai         s7, a0, 26
sub_3_10_0_t:     slt          a1, ra, a1
                  and          s8, t1, t0
                  addi         s11, s11, -6 #update loop 0 counter
                  and          a5, a0, tp
                  and          a6, t3, s4
                  lui          s10, 220117
                  bne          s11, s4, sub_3_10_0_t #branch for loop 0
                  or           a6, s4, gp
                  bge          t5, ra, sub_3_10_1_t #branch for loop 1
                  slt          sp, t5, s10
                  addi         s7, zero, 6 #init loop 0 counter
                  srai         a5, ra, 31
                  lui          t6, 658882
                  add          s3, s6, t4
                  andi         a6, a7, -1249
                  sltu         a0, s5, s7
                  nop
                  addi         gp, zero, 15 #init loop 0 limit
                  ori          zero, t2, 2027
                  andi         s6, a2, 1869
                  slli         s3, s7, 18
sub_3_15_0_t:     slti         t6, s5, 1831
                  sltu         t1, s8, t4
                  xori         s8, s9, -1038
                  sltiu        a2, s2, -718
                  sub          sp, s7, gp
                  xori         a0, s1, 716
                  srl          s6, s4, t2
                  lui          s8, 847973
                  addi         s7, s7, 2 #update loop 0 counter
                  andi         a7, s10, 180
                  sll          a1, a6, s4
                  slli         a1, t2, 31
                  nop
                  bltu         s7, gp, sub_3_15_0_t #branch for loop 0
                  srl          t2, s9, s10
                  addi         a6, zero, -5 #init loop 1 counter
                  addi         s3, zero, -9 #init loop 1 limit
                  sra          t0, s9, s10
sub_3_12_1_t:     slti         t2, t0, 373
                  addi         a6, a6, -4 #update loop 1 counter
                  addi         a2, zero, -6 #init loop 0 counter
                  add          s5, sp, t1
                  sltu         t6, s9, s7
                  addi         s10, zero, -14 #init loop 0 limit
sub_3_12_0_t:     lui          s0, 891857
                  and          s6, s5, s4
                  addi         a2, a2, -8 #update loop 0 counter
                  bne          a2, s10, sub_3_12_0_t #branch for loop 0
                  beq          a6, s3, sub_3_12_1_t #branch for loop 1
                  xor          t5, zero, s6
                  addi         t0, zero, 10 #init loop 0 counter
                  and          ra, s7, gp
                  slt          a5, s7, t0
                  addi         s0, zero, 6 #init loop 0 limit
                  sra          a6, a1, a4
                  andi         a5, a3, -414
sub_3_8_0_t:      nop
                  or           sp, t0, a1
                  addi         t0, t0, -5 #update loop 0 counter
                  or           a4, s9, s0
                  xor          s2, s1, s6
                  auipc        sp, 596884
                  auipc        a5, 167822
                  bgeu         t0, s0, sub_3_8_0_t #branch for loop 0
                  slti         s2, a3, 642
                  addi         sp, zero, 5 #init loop 0 counter
                  slli         a1, t3, 13
                  auipc        t0, 353150
                  xori         gp, a7, 932
                  and          a2, tp, a6
                  sll          a5, s10, s1
                  sltu         t1, t4, ra
                  nop
                  lui          s5, 585989
                  or           a3, t0, gp
                  srl          a5, t6, t2
                  addi         s6, zero, 15 #init loop 0 limit
                  sll          a0, a7, tp
                  srai         a0, s11, 14
sub_3_17_0_t:     and          a6, t5, s4
                  srai         s9, gp, 14
                  or           a2, s2, a2
                  and          t2, t6, zero
                  addi         sp, sp, 8 #update loop 0 counter
                  srl          zero, ra, a5
                  addi         a0, a4, -1946
                  bltu         sp, s6, sub_3_17_0_t #branch for loop 0
                  srli         a7, a2, 10
                  addi         s11, zero, 7 #init loop 1 counter
                  addi         t1, zero, 13 #init loop 1 limit
sub_3_5_1_t:      sltiu        ra, s6, 775
                  addi         s11, s11, 2 #update loop 1 counter
                  addi         a7, zero, 10 #init loop 0 counter
                  addi         s5, zero, 10 #init loop 0 limit
sub_3_5_0_t:      xor          s3, a2, t0
                  addi         a7, a7, -9 #update loop 0 counter
                  bgeu         a7, s5, sub_3_5_0_t #branch for loop 0
                  blt          s11, t1, sub_3_5_1_t #branch for loop 1
                  xori         sp, a1, 48
                  addi         t3, zero, 1 #init loop 1 counter
                  add          t0, a3, a7
                  xori         s5, tp, -962
                  addi         s0, zero, -12 #init loop 1 limit
sub_3_14_1_t:     xori         t1, s2, -1761
                  sltu         s9, a2, s9
                  addi         t3, t3, -4 #update loop 1 counter
                  or           t0, tp, t2
                  addi         a0, zero, 9 #init loop 0 counter
                  addi         t2, zero, 7 #init loop 0 limit
                  add          a2, s1, a4
sub_3_14_0_t:     auipc        s6, 446316
                  addi         a0, a0, -1 #update loop 0 counter
                  bgeu         a0, t2, sub_3_14_0_t #branch for loop 0
                  srli         a1, s5, 21
                  xori         s9, a4, -153
                  bge          t3, s0, sub_3_14_1_t #branch for loop 1
                  slt          t1, t1, a4
                  addi         a6, zero, -9 #init loop 0 counter
                  sra          t2, t0, s9
                  addi         s10, zero, 9 #init loop 0 limit
sub_3_16_0_t:     xor          t0, t2, t4
                  xori         t1, a0, -1581
                  addi         a6, a6, 2 #update loop 0 counter
                  bne          a6, s10, sub_3_16_0_t #branch for loop 0
                  auipc        t3, 12069
                  addi         s9, zero, 5 #init loop 1 counter
                  slli         t3, a4, 12
                  addi         t1, zero, 4 #init loop 1 limit
                  srl          ra, a2, a5
                  or           s3, zero, s5
                  addi         s7, s0, 1392
                  sltiu        s5, a4, 918
                  nop
                  add          s8, a7, s2
                  sltu         a3, gp, sp
sub_3_1_1_t:      and          s2, a3, s0
                  addi         s9, s9, -3 #update loop 1 counter
                  addi         t6, zero, 9 #init loop 0 counter
                  srli         a6, ra, 2
                  or           s3, a7, a1
                  addi         sp, zero, -3 #init loop 0 limit
sub_3_1_0_t:      nop
                  auipc        t3, 129863
                  addi         t6, t6, -10 #update loop 0 counter
                  andi         s7, t2, 1545
                  bge          t6, sp, sub_3_1_0_t #branch for loop 0
                  bgeu         s9, t1, sub_3_1_1_t #branch for loop 1
                  ori          t0, s4, 1320
                  addi         a0, zero, 2 #init loop 0 counter
                  sltu         t3, sp, tp
                  xor          a6, t4, sp
                  ori          sp, s1, 270
                  sra          s8, s6, zero
                  addi         gp, zero, 3 #init loop 0 limit
sub_3_9_0_t:      auipc        s10, 857785
                  addi         a0, a0, 3 #update loop 0 counter
                  add          t0, s2, a2
                  sltiu        s4, t4, -866
                  sltu         t0, a5, a3
                  srl          s4, a3, t6
                  add          a4, ra, t3
                  srai         a3, s3, 29
                  addi         a6, a2, 1225
                  slli         t3, tp, 13
                  blt          a0, gp, sub_3_9_0_t #branch for loop 0
                  andi         t2, t5, 1981
                  addi         ra, zero, 0 #init loop 0 counter
                  and          s3, a6, s8
                  addi         s11, zero, 18 #init loop 0 limit
sub_3_2_0_t:      add          s3, s2, zero
                  sub          a3, t4, a2
                  addi         ra, ra, 9 #update loop 0 counter
                  blt          ra, s11, sub_3_2_0_t #branch for loop 0
                  and          a4, t5, s3
                  addi         a7, zero, -8 #init loop 0 counter
                  and          s6, a3, zero
                  srl          gp, t2, a6
                  xori         t0, s9, 858
                  srai         t1, s6, 30
                  lui          a5, 110128
                  or           t0, s1, s1
                  srli         s7, s3, 16
                  slti         s0, t0, 1214
                  srli         ra, t4, 11
                  auipc        s2, 1022239
                  srl          t5, zero, t1
                  addi         s11, zero, -16 #init loop 0 limit
                  srl          a0, a0, a2
sub_3_3_0_t:      sltu         a6, s2, s6
                  auipc        a4, 369571
                  ori          a6, s9, -1916
                  srli         s4, s6, 14
                  xori         s8, t3, 1311
                  andi         s4, t0, 1370
                  sltiu        t5, a3, 373
                  addi         a7, a7, -8 #update loop 0 counter
                  add          t1, a0, a2
                  srl          s8, a3, a3
                  add          sp, a2, s11
                  xor          a5, t1, t0
                  slt          s4, ra, t4
                  slli         s7, a6, 23
                  beq          a7, s11, sub_3_3_0_t #branch for loop 0
                  lui          a5, 801902
                  addi         a7, zero, 8 #init loop 1 counter
                  addi         a6, zero, 10 #init loop 1 limit
sub_3_4_1_t:      or           zero, s3, s3
                  addi         a7, a7, 10 #update loop 1 counter
                  xor          a5, a4, a6
                  ori          a0, s1, -1818
                  addi         t1, zero, 8 #init loop 0 counter
                  sra          s0, s2, a0
                  sub          s7, a6, s3
                  addi         s5, zero, -12 #init loop 0 limit
sub_3_4_0_t:      xori         s2, gp, 736
                  addi         t1, t1, -2 #update loop 0 counter
                  bge          t1, s5, sub_3_4_0_t #branch for loop 0
                  ori          a1, s7, -1240
                  blt          a7, a6, sub_3_4_1_t #branch for loop 1
                  or           sp, s11, t3
                  addi         t1, a2, 843
                  sra          ra, s7, s4
                  and          s6, s11, s6
                  lui          a6, 910965
                  andi         a7, a6, 349
                  ori          s8, t2, 71
                  blt          a4, a0, 25f
                  xor          s7, s2, a6
                  andi         a1, a4, 568
                  slti         a1, s11, -420
                  slli         zero, t6, 17
                  xor          s0, a3, a6
                  sub          s2, s5, a6
                  bne          zero, a6, 27f
                  slli         a5, s10, 31
                  bltu         t4, t3, 31f
                  sll          a5, a2, a3
                  or           s2, tp, s8
                  sra          s4, s8, t6
                  addi         t2, tp, 424
                  add          s7, s4, t6
                  auipc        s6, 269839
                  bgeu         s2, t5, 32f
                  sll          s6, t1, s6
                  bne          s8, a4, 39f
25:               srli         t3, s1, 25
                  srai         s8, t0, 31
27:               nop
                  add          a7, t1, a6
                  sub          a6, a0, s5
                  bne          t6, s9, 34f
31:               ori          s5, a4, 1379
32:               xori         a5, a5, -172
                  blt          zero, a7, 51f
34:               sub          s4, t1, a7
                  sll          s5, sp, t4
                  slt          a5, s8, a1
                  and          zero, a2, t1
                  lui          a4, 944326
39:               sra          s11, ra, ra
                  slli         gp, t1, 21
                  bne          s0, t1, 55f
                  sltu         s8, s2, s5
                  slti         a0, sp, -1956
                  sltiu        s7, a2, -2000
                  bne          a5, s10, 53f
                  sub          s5, gp, s7
                  sltu         t6, a2, s4
                  bgeu         s7, sp, 65f
                  bge          t4, t0, 61f
                  srli         zero, s6, 0
51:               sra          s11, s9, s11
                  srli         a3, a4, 19
53:               or           sp, s11, t1
                  auipc        s0, 140795
55:               slli         s9, ra, 17
                  beq          a1, t5, 67f
                  nop
                  ori          s0, s10, -618
                  andi         t5, t4, 1600
                  nop
61:               bgeu         ra, s7, 65f
                  add          s4, s5, s1
                  bgeu         s7, s10, 69f
                  sll          a1, s5, sp
65:               addi         a6, a1, -968
                  sll          s11, s11, s10
67:               srli         a3, a3, 26
                  bne          t5, a2, 88f
69:               bge          a0, t1, 83f
                  sra          a1, ra, zero
                  beq          s8, t0, 79f
                  lui          s7, 81641
                  sub          s5, s2, s10
                  ori          t2, a1, -1349
                  blt          t2, t2, 89f
                  and          a3, a5, a1
                  bge          s8, a1, 91f
                  bgeu         sp, a4, 94f
79:               add          t0, t2, t3
                  beq          t2, ra, 88f
                  beq          a1, t5, 92f
                  sltiu        s8, s0, 1989
83:               or           a4, t2, sp
                  ori          a6, a0, 1099
                  sltiu        a4, s2, -1351
                  addi         t5, s10, 1596
                  and          zero, a6, s7
88:               srai         t0, ra, 10
89:               xor          s10, zero, s11
                  addi         a4, s0, 1308
91:               sltu         t2, a3, a0
92:               sub          a6, s10, s8
                  bltu         t1, s1, 101f
94:               nop
                  and          t1, a0, t5
                  slli         a1, a7, 15
                  beq          t2, gp, 117f
                  xor          sp, a0, s7
                  andi         a6, s3, -546
                  auipc        a5, 536006
101:              srai         t1, t5, 4
                  nop
                  bne          s10, gp, 117f
                  andi         a5, t1, 368
                  add          t5, s0, a4
                  lui          s7, 85852
                  andi         s6, s3, -710
                  bne          t6, a6, 112f
                  slli         t6, t2, 19
                  beq          sp, a1, 130f
                  slli         a0, t6, 24
112:              ori          a6, tp, 1668
                  slti         s4, s7, -1068
                  srli         t3, zero, 8
                  srl          a3, s10, s2
                  nop
117:              ori          s8, s11, 1022
                  ori          s3, s5, -712
                  beq          s7, a5, 137f
                  xor          a0, a6, s10
                  and          s10, s1, s5
                  bne          t6, s1, 134f
                  sltiu        a4, zero, 31
                  slti         a6, s8, -1440
                  slt          s2, s9, t2
                  slti         s10, t2, 1564
                  bge          s11, a2, 131f
                  blt          s4, ra, 136f
                  srai         s10, s0, 5
130:              blt          tp, s6, 136f
131:              blt          a3, sp, 143f
                  srli         t5, a1, 3
                  slti         a1, s0, 1449
134:              ori          a0, a5, 1101
                  sltu         gp, t2, t2
136:              beq          t3, t6, 150f
137:              sub          s6, s0, s1
                  slti         s5, t4, -129
                  lui          s0, 419413
                  blt          t6, s1, 160f
                  andi         t1, a7, 394
                  and          s6, t6, a1
143:              addi         t5, t5, -1621
                  auipc        t6, 513121
                  bltu         t0, s9, 159f
                  sltu         a5, s3, sp
                  srai         s4, s1, 9
                  addi         sp, a1, 82
                  srli         a4, s0, 31
150:              andi         s11, gp, 806
                  auipc        s4, 988567
                  addi         gp, s2, -876
                  andi         s5, zero, 174
                  xori         s8, s10, 1132
                  beq          s11, sp, 159f
                  sub          s10, s4, s0
                  auipc        t6, 873460
                  blt          s7, ra, 162f
159:              bge          ra, t4, 173f
160:              xor          s2, t3, s2
                  xor          t1, s10, s2
162:              srai         a3, s10, 27
                  sub          s6, sp, a2
                  bge          s10, t2, 178f
                  andi         a6, a7, -1446
                  add          s4, t2, t2
                  auipc        a5, 901448
                  andi         t0, tp, -488
                  or           s2, t4, a7
                  slti         s3, t1, 1953
                  nop
                  sub          a0, t2, ra
173:              nop
                  nop
                  slt          t3, s0, t6
                  slli         s8, s11, 2
                  or           t5, t0, s7
178:              sub          a6, s5, s0
                  slli         a0, t2, 18
                  and          s9, s5, s7
                  sra          zero, s10, tp
                  sll          s3, a7, a3
                  beq          sp, zero, 187f
                  andi         a5, s2, -1014
                  andi         t3, a6, 956
                  ori          t6, a2, 750
187:              xori         s4, s10, 1989
                  slti         a0, a4, 1996
                  auipc        s10, 182538
                  xor          s0, ra, s4
                  blt          a2, gp, 203f
                  slt          s9, t6, a4
                  srl          a7, t0, a5
                  bge          zero, t3, 205f
                  andi         a6, s7, -122
                  add          s0, ra, s7
                  srl          a4, s3, s7
                  and          t3, s2, s1
                  xor          t1, t5, t0
                  sll          s4, t4, s0
                  slt          t0, s8, ra
                  sll          a5, zero, t2
203:              sll          s3, s2, zero
                  bne          s0, s5, 220f
205:              sll          t1, a1, s2
                  and          s9, s8, t5
                  slt          a0, t2, t6
                  bgeu         a2, s4, 219f
                  and          t1, tp, s5
                  srai         s6, s4, 6
                  sub          ra, gp, a7
                  srl          gp, s11, a2
                  beq          s0, s2, 233f
                  srli         s7, t1, 26
                  slti         a0, s0, 1062
                  andi         t3, s8, -901
                  sub          s9, a5, s8
                  bltu         s8, sp, 222f
219:              srli         a6, s9, 6
220:              sll          s9, gp, s3
                  srl          sp, s4, s2
222:              or           s9, s5, a1
                  srl          t2, a6, s2
                  blt          s8, s2, 238f
                  andi         s6, t0, 1348
                  bge          zero, s9, 236f
                  blt          t2, tp, 242f
                  srli         t3, s4, 5
                  bltu         a0, s9, 247f
                  beq          t4, a5, 246f
                  sltiu        s2, a4, 1318
                  bge          a4, t4, 251f
233:              xori         s4, a0, 1365
                  add          s6, t0, a2
                  add          gp, a0, a4
236:              beq          a2, a3, 244f
                  bltu         s11, tp, 254f
238:              srl          a6, a3, sp
                  bltu         a2, t2, 247f
                  slt          t2, tp, s10
                  bne          a7, t1, 255f
242:              xor          s8, s10, s2
                  beq          gp, s10, 261f
244:              andi         t2, s10, 1676
                  xori         a5, s2, 1316
246:              bge          a5, t3, 254f
247:              slli         s3, tp, 22
                  bgeu         s3, s0, 268f
                  bltu         a5, t5, 257f
                  slti         s10, a6, -1303
251:              slti         gp, a0, 1994
                  sll          s4, a6, s10
                  addi         sp, s11, 888
254:              add          s0, a6, s3
255:              lui          s7, 212673
                  bne          t2, t5, 273f
257:              slti         a3, t6, -487
                  sltiu        s10, s0, -428
                  and          s6, a2, a5
                  srai         t0, s1, 22
261:              srai         s4, t1, 14
                  srai         ra, a7, 8
                  ori          a3, s2, 534
                  sll          gp, zero, s8
                  slt          a5, t3, s9
                  slti         s9, s1, 314
                  bgeu         t6, sp, 278f
268:              sll          t0, ra, s5
                  srli         s3, s5, 12
                  sltu         s7, a6, a3
                  addi         t5, a3, -850
                  slli         s9, a6, 28
                  slt          a5, s11, t1
                  sra          a6, gp, s8
                  la           s10, sub_5
                  addi         s10, s10, -297
                  slt          a0, s1, s7
                  srai         sp, s4, 21
                  srai         t1, ra, 15
sub_3_j7:         jalr         ra, s10, 297 #jump sub_3 -> sub_5
                  blt          s11, t6, 278f
                  sub          gp, t2, s7
                  bge          t3, ra, 276f
273:              slli         t0, s1, 0
                  slt          s0, t1, t2
                  beq          t6, s1, 294f
276:              bgeu         gp, t5, 280f
                  xori         a6, s0, 87
278:              blt          s3, t2, 292f
                  slti         s5, s5, -1087
280:              and          t3, t6, a0
                  xori         a2, t2, -1504
                  auipc        s5, 884223
                  auipc        a1, 942730
                  auipc        a4, 27980
                  sra          a6, s0, zero
                  ori          s7, sp, 1610
                  sub          s5, s3, sp
                  slt          t3, s8, s0
                  blt          s5, sp, 303f
                  bltu         s10, s1, 302f
                  or           a4, t6, s5
292:              sra          sp, a5, t0
                  auipc        t2, 631764
294:              or           s4, s9, tp
                  srl          sp, s7, s1
                  blt          ra, t4, 310f
                  blt          s9, t6, 313f
                  sub          a2, s1, a7
                  and          ra, t0, a6
                  bltu         zero, s0, 311f
                  bltu         t2, t1, 305f
302:              srai         s6, s3, 17
303:              sub          t5, s5, a4
                  addi         t1, zero, 1049
305:              sll          sp, a5, s10
                  sltiu        a6, a4, -1377
                  add          a3, s2, a4
                  addi         gp, ra, 162
                  xor          a2, t3, s3
310:              bgeu         s10, zero, 318f
311:              xor          s6, ra, t5
                  and          s8, a7, zero
313:              bne          a1, a3, 327f
                  andi         t6, a6, -1292
                  sll          zero, a7, s10
                  auipc        s10, 491557
                  auipc        a3, 58578
318:              blt          t4, s5, 338f
                  srl          a0, sp, s11
                  xor          s2, zero, t4
                  sub          t1, ra, s0
                  or           a0, a3, a0
                  slti         s2, s9, 674
                  blt          s2, a7, 328f
                  add          s0, t1, tp
                  nop
327:              xor          a0, s2, a1
328:              bltu         a7, zero, 348f
                  srl          s6, s10, s11
                  andi         gp, a0, -435
                  ori          s6, zero, 1892
                  sltiu        a7, t1, -1025
                  ori          a5, s11, 76
                  sltu         s7, zero, t4
                  slli         t1, s5, 22
                  slli         a7, t1, 10
                  sub          a1, t4, s7
338:              bne          t6, s5, 352f
                  nop
                  auipc        zero, 644419
                  slli         s2, a3, 11
                  addi         t1, a4, -110
                  srl          sp, s0, s7
                  sltiu        ra, s0, 1004
                  bge          t1, s4, 361f
                  sll          a7, s7, s11
                  addi         s6, a4, 480
348:              srl          a7, s10, s1
                  auipc        t1, 203009
                  xori         a3, a4, -1346
                  ori          s0, s9, -1118
352:              sra          s3, a1, s9
                  add          t6, s3, a7
                  sra          a6, a2, t6
                  beq          s4, t6, 370f
                  auipc        t2, 746679
                  auipc        a0, 588276
                  and          s11, s9, t2
                  sltu         t5, sp, s0
                  sra          s5, s10, t3
361:              and          a6, gp, s5
                  xori         t2, a4, 870
                  and          s0, a4, s3
                  srli         s9, ra, 27
                  bltu         s6, a0, 377f
                  srl          s6, s3, gp
                  srai         ra, t4, 24
                  sltu         s8, s9, s8
                  srli         s2, s11, 23
370:              xori         t3, t5, 1628
                  bltu         s5, s9, 381f
                  sll          t5, sp, t2
                  bge          t4, a3, 387f
                  slli         zero, s9, 7
                  xori         s6, s0, -917
                  lui          a0, 518190
377:              add          s2, s3, s0
                  andi         sp, t0, -983
                  or           s8, tp, a2
                  srl          s4, s0, s7
381:              slti         s5, s3, 667
                  bne          a3, zero, 390f
                  lui          a6, 998020
                  bltu         t5, t5, 390f
                  slli         t3, tp, 19
                  sra          s5, s2, sp
387:              blt          s10, a0, 405f
                  srl          a0, zero, t5
                  add          s10, s10, zero
390:              srli         s10, s2, 1
                  add          s3, s1, t4
                  xor          t3, s9, a7
                  xor          a1, t4, s11
                  nop
                  slli         s0, sp, 8
                  lui          a6, 913976
                  lui          ra, 180615
                  sra          s0, s2, s6
                  auipc        sp, 140763
                  blt          a0, t3, 418f
                  bne          t1, a3, 421f
                  srl          s0, s11, t5
                  bgeu         t6, s7, 414f
                  sra          t5, s6, s3
405:              srai         s7, zero, 23
                  bltu         a1, a2, 425f
                  sra          t2, a5, a5
                  nop
                  srl          a7, ra, a3
                  slli         s11, a4, 30
                  andi         a6, a1, -45
                  beq          tp, s7, 426f
                  slti         zero, s5, -1542
414:              sra          s11, ra, s2
                  blt          tp, sp, 423f
                  and          a5, s3, s9
                  ori          s9, s10, -88
418:              blt          t4, t1, 434f
                  ori          s9, sp, -1030
                  beq          a3, zero, 424f
421:              andi         s2, a7, 951
                  srli         sp, a6, 30
423:              bgeu         s2, t0, 443f
424:              srl          s10, a1, tp
425:              slli         s8, t1, 25
426:              sltiu        zero, a1, 1962
                  blt          s8, t1, 443f
                  bge          s0, t5, 446f
                  ori          s2, zero, -536
                  bne          a3, t6, 444f
                  bge          s7, ra, 439f
                  xori         s0, s7, 384
                  sll          s5, s4, zero
434:              lui          zero, 153066
                  xori         s6, t3, -1163
                  srli         s9, a3, 24
                  ori          ra, t3, -905
                  srli         t0, t6, 8
439:              srl          a7, t1, s0
                  sra          s7, s9, s6
                  slli         s5, tp, 6
                  bgeu         t1, s7, 448f
443:              bge          a2, s8, 463f
444:              auipc        a6, 97885
                  slt          gp, a2, s3
446:              bltu         s10, t2, 450f
                  beq          t6, gp, 457f
448:              blt          t6, t3, 452f
                  andi         t1, a3, 257
450:              blt          s11, a7, 462f
                  srai         s2, s6, 26
452:              slt          s3, s8, t6
                  lui          s2, 920774
                  andi         sp, t0, 886
                  add          s5, a0, ra
                  sltu         s4, s0, gp
457:              blt          t6, a3, 475f
                  xori         a6, t1, 115
                  sll          a7, t2, gp
                  ori          s10, t6, 1810
                  blt          a6, s7, 475f
462:              and          a0, a0, t4
463:              sltiu        zero, s4, 370
                  sll          s3, s11, tp
                  addi         s8, s8, 415
                  srl          sp, a4, a2
                  nop
                  beq          s7, s3, 485f
                  and          ra, zero, t0
                  slti         a4, t5, 1814
                  slli         t5, t0, 15
                  blt          s7, t1, 486f
                  xori         t0, s6, 2002
                  add          s5, t5, s11
475:              bne          t3, s3, 483f
                  sub          t5, s3, s9
                  add          a4, t2, t2
                  slt          a5, s11, a7
                  bgeu         a5, t1, 487f
                  sub          a3, sp, a1
                  bne          s9, tp, 496f
                  slli         t1, a2, 2
483:              bge          s3, gp, 503f
                  slti         s11, s10, -321
485:              bgeu         s4, a5, 497f
486:              sra          s9, a2, ra
487:              blt          zero, zero, 501f
                  slti         t1, s5, 1090
                  bge          s10, a0, 493f
                  nop
                  srli         t3, s8, 20
                  slli         a0, s11, 23
493:              sll          t6, a0, gp
                  blt          s3, t5, 508f
                  andi         a4, gp, 1912
496:              blt          s1, tp, 507f
497:              bgeu         tp, a0, 514f
                  andi         ra, gp, -1196
                  srl          a6, a7, s8
                  srl          a0, a6, a5
501:              andi         gp, a5, 1566
                  srai         s6, s7, 14
503:              andi         zero, s0, 170
                  lui          s8, 561876
                  sll          s11, t5, t6
                  slli         a0, gp, 6
507:              and          s8, a4, s0
508:              sltu         a2, s11, s7
                  bge          s8, s4, 521f
                  srli         s10, t1, 15
                  blt          sp, t3, 531f
                  srl          t6, t2, s1
                  sll          t2, a6, tp
514:              srli         s10, s7, 28
                  sub          t1, a6, a1
                  xori         a1, a5, -909
                  sll          a6, zero, s6
                  srli         s11, s11, 8
                  auipc        a4, 747947
                  ori          t5, s11, 82
521:              srai         s0, gp, 2
                  srli         a6, a6, 5
                  sll          s5, t2, a1
                  xori         s6, s4, 1268
                  beq          zero, t1, 544f
                  addi         zero, a0, -1261
                  bge          s0, a1, 531f
                  and          t0, s2, a3
                  bne          a3, a5, 543f
                  slti         t5, t1, 1814
531:              slti         a3, ra, 403
                  srai         zero, s5, 0
                  bne          a1, a4, 544f
                  srl          s10, s2, t1
                  addi         s8, s8, 568
                  srli         a0, t4, 10
                  srl          a3, t1, s0
                  auipc        s9, 449537
                  add          a2, t1, tp
                  bge          s2, t3, 548f
                  slt          s2, sp, a7
                  srai         ra, s2, 30
543:              sll          s10, a1, sp
544:              slt          a3, s5, a7
                  blt          s1, s6, 549f
                  blt          zero, a2, 561f
                  sltu         s3, s11, s1
548:              andi         t1, s5, -1322
549:              lui          a2, 529115
                  srl          s9, a0, s1
                  slli         a3, s2, 22
                  slli         s3, zero, 21
                  sltu         s4, s6, tp
                  bgeu         tp, a2, 560f
                  srl          a2, ra, a0
                  xor          s6, s9, sp
                  sra          t2, gp, s9
                  blt          t2, gp, 572f
                  lui          t1, 763050
560:              nop
561:              lui          sp, 568257
                  add          a3, s0, ra
                  sll          t6, a3, s6
                  nop
                  andi         s2, s8, -1269
                  sltu         zero, zero, t4
                  ori          a6, s2, 1571
                  srl          s0, a2, t0
                  sub          t6, a5, s7
                  and          a2, s4, t1
                  bltu         t6, s0, 585f
572:              bgeu         t5, s7, 588f
                  sub          t1, t1, ra
                  srli         s4, t2, 0
                  bne          a0, ra, 583f
                  and          a6, s5, t4
                  auipc        a7, 826609
                  srl          a4, s11, a2
                  andi         a3, s4, 1889
                  sll          sp, ra, s1
                  bge          s0, a2, 601f
                  beq          s7, s9, 598f
583:              add          s0, s7, s9
                  beq          a3, a7, 604f
585:              srl          s4, t1, s5
                  or           s2, s2, t1
                  beq          sp, s1, 591f
588:              sltiu        s9, t1, 764
                  or           s0, s0, a3
                  bne          tp, s4, 604f
591:              sub          a4, a0, zero
                  bltu         a5, s7, 600f
                  srai         s5, a7, 11
                  bltu         gp, t6, 608f
                  lui          a1, 1010435
                  add          gp, s2, t4
                  andi         t6, a3, -977
598:              sra          sp, s7, t0
                  beq          a2, a2, 609f
600:              sub          s5, t6, gp
601:              bge          s11, s3, 609f
                  auipc        t1, 838822
                  srl          s4, s11, s0
604:              srai         s6, s1, 23
                  srli         t6, a3, 29
                  add          t0, s4, t3
                  slli         a0, zero, 30
608:              add          s0, a0, t1
609:              slt          t3, s2, t5
                  lui          s11, 157457
                  andi         a3, s9, -774
                  xori         a6, a5, 876
                  xor          s5, s3, ra
                  bltu         s9, t1, 618f
                  ori          t0, a0, -1087
                  sra          a1, t3, s2
                  or           a0, a5, s2
618:              bltu         t1, a3, 636f
                  slli         a4, s9, 1
                  sra          t2, t0, s4
                  add          zero, tp, s10
                  nop
                  ori          t2, t0, 591
                  slli         zero, a6, 5
                  sra          s5, s8, s4
                  blt          a7, s3, 638f
                  or           s2, t2, s4
                  bge          gp, t6, 639f
                  bne          sp, a6, 643f
                  andi         t2, a1, -1373
                  slti         t1, s2, -1761
                  sll          t3, s9, a0
                  auipc        sp, 800138
                  srai         s3, s6, 16
                  blt          t2, s0, 653f
636:              or           t2, a0, s4
                  sub          a1, s1, sp
638:              lui          s4, 43454
639:              slli         s10, s9, 24
                  addi         a4, tp, -179
                  sub          t6, t5, s6
                  bgeu         a1, t3, 662f
643:              sra          s7, zero, tp
                  beq          s5, sp, 652f
                  add          s6, a0, tp
                  bne          s10, s8, 664f
                  bgeu         sp, t0, 661f
                  auipc        s0, 396785
                  lui          s9, 985075
                  bgeu         a2, gp, 664f
                  bge          a1, s0, 659f
652:              and          a5, zero, tp
653:              addi         gp, a3, -460
                  andi         s9, s1, 1339
                  sltu         t3, t5, t5
                  blt          gp, s10, 667f
                  sll          zero, t0, t0
                  sub          a0, a3, t1
659:              sub          t0, sp, sp
                  bltu         a2, s4, 668f
661:              bne          s7, t1, 665f
662:              srli         sp, a5, 23
                  add          s11, s5, s1
664:              xori         sp, s5, -1165
665:              slt          a7, t4, t2
                  slti         s8, a4, 1121
667:              xori         sp, t1, 1625
668:              srli         t6, zero, 8
                  lui          t0, 176987
                  bgeu         a5, s0, 687f
                  xori         t3, t2, 1123
                  srai         ra, sp, 20
                  slti         t0, ra, 1483
                  addi         s5, s2, 380
                  srli         s10, s6, 9
                  addi         s10, tp, 1092
                  bltu         t2, a6, 681f
                  beq          s4, t6, 690f
                  slli         s2, t2, 20
                  bltu         t0, t3, 694f
681:              and          a0, t4, s11
                  nop
                  xor          a2, s9, a7
                  beq          s10, s11, 694f
                  xor          s7, t1, t4
                  slti         a5, t1, -1559
687:              auipc        a2, 869793
                  andi         s10, t2, -1900
                  xori         a1, s0, -836
690:              xor          s9, a2, t4
                  sub          s6, a7, s0
                  srl          s8, t1, a1
                  sll          a1, gp, a6
694:              bgeu         s0, t1, 698f
                  and          t2, t4, t0
                  sltiu        s9, t4, 1074
                  xori         s9, s9, -1364
698:              srl          a4, a3, a2
                  or           s4, gp, s1
                  slti         ra, sp, -1501
                  slli         a1, s7, 4
                  bge          a6, s5, 710f
                  slt          a1, a7, t5
                  xori         a3, t3, 1058
                  addi         s2, s9, 1218
                  xor          a3, s0, sp
                  add          s9, t4, tp
                  bgeu         a1, t5, 714f
                  sub          t3, s4, t5
710:              slti         s8, ra, -1599
                  and          a6, s7, a6
                  sltiu        a5, t5, 1194
                  slt          s0, t6, t0
714:              srai         a5, a7, 4
                  sub          sp, a1, t1
                  and          gp, a5, a4
                  sub          zero, a3, a3
                  bne          s0, s10, 734f
                  or           s4, s6, s8
                  beq          a6, s2, 735f
                  slt          a1, zero, s6
                  bgeu         t4, s3, 736f
                  and          s10, t2, t0
                  sra          t6, s9, ra
                  bgeu         t3, ra, 739f
                  slli         t5, s5, 2
                  bltu         a6, s4, 738f
                  andi         s9, zero, -783
                  bge          zero, s8, 733f
                  ori          a5, a0, -18
                  srai         s10, a4, 12
                  and          s9, s4, s6
733:              xor          a3, t6, gp
734:              sltiu        a0, ra, -1403
735:              sltu         sp, sp, s10
736:              ori          s9, a5, 1936
                  sltu         s11, t3, s3
738:              bltu         a7, t2, 754f
739:              xori         s0, sp, -81
                  nop
                  slli         a0, a5, 8
                  auipc        s7, 945483
                  srai         a2, s4, 12
                  slti         ra, s0, -892
                  or           s11, t1, a3
                  andi         t6, s6, 698
                  slli         zero, gp, 21
                  ori          a5, a4, 1567
                  xor          a4, t3, s0
                  bgeu         a0, s11, 762f
                  beq          gp, a2, 769f
                  srai         s5, gp, 5
                  lui          s5, 894637
754:              auipc        t1, 707428
                  blt          s2, t0, 775f
                  bne          s1, a6, 775f
                  slli         s3, t5, 0
                  sll          a2, t3, a4
                  slli         a1, a2, 10
                  bltu         t6, sp, 780f
                  srai         a7, a5, 13
762:              bgeu         zero, a7, 776f
                  slt          ra, s1, a2
                  srai         sp, s4, 23
                  add          t2, s7, s5
                  and          t1, a3, t1
                  slt          s0, s7, zero
                  sltiu        t6, s2, 1139
769:              add          a4, a1, t3
                  beq          t0, zero, 778f
                  bne          a6, t1, 775f
                  slli         zero, t5, 8
                  slli         t2, gp, 7
                  addi         s4, a5, 401
775:              slli         a4, s4, 8
776:              or           s7, a3, a2
                  auipc        s6, 522793
778:              blt          s3, a0, 792f
                  bge          gp, a6, 799f
780:              xori         a7, a5, -819
                  andi         gp, a1, 909
                  slt          s8, a4, t2
                  bltu         s8, a0, 800f
                  bne          t5, ra, 795f
                  andi         zero, a2, 1826
                  slli         a2, t5, 11
                  sltu         a3, s3, a4
                  sra          sp, s8, a4
                  slli         s10, s6, 23
                  sub          s2, s10, a6
                  blt          a4, t0, 805f
792:              auipc        zero, 559074
                  nop
                  bne          tp, s5, 814f
795:              ori          s4, t0, 160
                  bltu         tp, s1, 810f
                  bltu         a2, s9, 811f
                  ori          t2, s0, 1561
799:              lui          s6, 195544
800:              andi         s7, s4, 343
                  xori         a7, a7, 1842
                  srli         s2, s4, 12
                  bgeu         t5, s7, 822f
                  or           sp, t1, a1
805:              addi         s11, tp, -506
                  bge          sp, s6, 820f
                  bgeu         a6, gp, 825f
                  sub          a0, s1, a0
                  slli         a4, a0, 5
810:              srl          a2, a5, a2
811:              srli         s3, a2, 13
                  bgeu         s4, t2, 818f
                  add          a3, s1, s7
814:              bltu         s0, t6, 829f
                  sltiu        a5, s6, 1436
                  sll          a6, a4, t5
                  blt          a5, s11, 837f
818:              blt          a7, s9, 829f
                  srl          sp, a0, t0
820:              auipc        t5, 315333
                  add          a4, a3, t1
822:              srl          sp, t0, t1
                  auipc        s4, 736043
                  slli         s10, a7, 24
825:              add          s5, a6, ra
                  blt          a3, t2, 834f
                  sltu         s10, s4, s3
                  sltu         t0, t3, tp
829:              and          sp, s10, s5
                  sub          sp, t6, s2
                  bgeu         sp, t6, 835f
                  sub          s0, s11, a2
                  sll          s5, t4, t4
834:              blt          s10, s5, 842f
835:              blt          s7, t2, 839f
                  sltu         s9, a0, t6
837:              blt          s6, s1, 853f
                  sra          t3, t1, ra
839:              slti         t0, a0, -171
                  lui          ra, 105193
                  slt          s9, sp, a5
842:              srl          s9, tp, t4
                  auipc        s0, 1008081
                  slt          s9, s6, a1
                  srli         t0, s8, 21
                  auipc        t0, 376325
                  xor          a0, t1, s7
                  blt          t6, a2, 860f
                  sra          a6, tp, t5
                  nop
                  bge          a7, s7, 861f
                  sra          ra, sp, zero
853:              bgeu         s10, a3, 871f
                  sra          s4, a2, s8
                  blt          t6, a1, 863f
                  bge          a6, s8, 870f
                  sll          a3, a7, a6
                  ori          s5, a6, -1060
                  bltu         a2, t4, 875f
860:              or           sp, t0, t0
861:              srl          sp, a6, a5
                  bltu         t2, s8, 866f
863:              lui          a0, 1041448
                  lui          s2, 306300
                  add          a5, a7, s8
866:              auipc        s0, 159029
                  ori          s2, a2, -581
                  sub          s9, s5, a3
                  sltu         s4, s3, t0
870:              sub          t3, gp, ra
871:              xori         t0, a7, 1880
                  beq          t3, s11, 884f
                  slt          t0, t4, tp
                  sltu         a5, t5, s4
875:              or           t5, a6, s10
                  sltiu        ra, s7, -1022
                  slti         s10, tp, 983
                  lui          a6, 921744
                  bltu         zero, a1, 885f
                  ori          s10, a1, -314
                  andi         gp, t1, -862
                  and          s3, a0, s1
                  sra          s11, s1, s7
884:              bltu         a2, t3, 898f
885:              bltu         s11, a2, 893f
                  addi         sp, t2, -776
                  srl          s4, s2, t0
                  slti         s7, s1, -665
                  ori          s7, t5, -1608
                  slti         zero, t1, 796
                  sra          s6, s8, s8
                  auipc        a1, 989347
893:              xori         a1, t4, -220
                  lui          t6, 539383
                  sltiu        a4, t3, 1465
                  sltu         a1, s9, sp
                  ori          ra, s5, 1691
898:              beq          s1, s10, 911f
                  bgeu         gp, zero, 911f
                  bne          ra, s0, 911f
                  add          s7, s5, s11
                  srli         t5, a3, 29
                  addi         a0, s0, -1337
                  sltiu        a2, s1, 2000
                  sll          t5, s3, t4
                  srli         t0, s1, 28
                  beq          a2, a2, 911f
                  and          t1, a0, s5
                  sra          s10, s6, zero
                  bne          t6, a4, 911f
911:              srai         s3, t6, 19
                  sub          s5, s7, t4
                  srai         s11, s11, 16
                  lw           ra, 4(t4)
                  sltu         zero, s11, zero
                  addi         s5, gp, 769
                  addi         t4, t4, 12
                  srl          a4, s4, a5
                  or           t6, t5, a4
1310:             addi x17, x1, 0
1310:             jalr x17, x17, 0
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
.word 0x9b29aeb0, 0x93bcd1d5, 0x4477ba20, 0x923dbfd9, 0x9d10c93a, 0xddb39876, 0x45386e8b, 0xc227fc8c
.word 0x24af605c, 0xa160c532, 0x617abfef, 0x4f912903, 0x484cd65b, 0xb52bac52, 0x88c6b3f6, 0x05016448
.word 0x5afa4b77, 0x38f33a1c, 0xff8f2821, 0x21f486bc, 0x6702b2fe, 0xa1fab0a3, 0xec742a76, 0x50bb4870
.word 0x61309e83, 0x569bd73c, 0x5c24ec50, 0xef63d97e, 0x7c53e06f, 0xe3ba4152, 0x07878a9b, 0xf66109f0
.word 0x69fc6c54, 0x0060cd5c, 0xc63261bb, 0x0e1be7cb, 0xaedc0d4b, 0xf875714a, 0xc09fe385, 0xa83d4a61
.word 0x3a42e30a, 0xd877b92a, 0xf0f18500, 0xebc1d45e, 0x35a296fb, 0x9c0d41c1, 0x453e9515, 0xf2e28170
.word 0x114842f2, 0xe68dbe22, 0xf2f5d285, 0x551633dd, 0x8c774e86, 0xa54618f3, 0x9aef094d, 0x4c260fbe
.word 0x3d2c686c, 0xc3164d8f, 0x332416ca, 0x7a67f969, 0x60b82381, 0x67fe9697, 0xbdec7336, 0x3a46e477
.word 0x285fcb14, 0x23d43e42, 0x4a728255, 0x43f70691, 0x3bed2cb5, 0x7cf30699, 0xa5a4482d, 0x4bb37435
.word 0x88dec1d9, 0xeded9668, 0xd7c715da, 0x5d1b9eef, 0x9977e43d, 0x75834a3f, 0xa0cb4e98, 0x8f8c4ced
.word 0xbfd79515, 0xa2df10ed, 0x3b0255c4, 0xc3f748eb, 0xd5934b2c, 0xe1016028, 0x9cd22ae3, 0xa3dd29da
.word 0x3ad801b3, 0x13d3b0cc, 0x55b882b8, 0x9e319039, 0xe923f78d, 0x3d1369b5, 0x0c974761, 0xdffaf0ec
.word 0x3c583572, 0xf8875c4e, 0xf0197cd5, 0x0b81c300, 0x5ea21724, 0x8a72eac8, 0x2c3a1a77, 0xae84bf66
.word 0x83a0e9d5, 0x9b7d2198, 0x3c0b3161, 0xc125175c, 0x029c8422, 0x8884df33, 0x85c9c149, 0x6474ad42
.word 0xb415cfa3, 0x8353e5a7, 0xb30b9fa3, 0xbea93945, 0x9a0d0531, 0x793429ba, 0xefde1e44, 0x76086ab7
.word 0x0960c78b, 0x8df15654, 0x88ebc550, 0x0bc1e2a1, 0x3804225f, 0x59ef3b67, 0x3aa41b69, 0x013c38f1
.word 0x0136dfb2, 0xebe202dc, 0x2d771f02, 0xce6b5e5c, 0x17eba375, 0xd271f714, 0x63f4ef4a, 0xba8f716d
.word 0xa444ec2c, 0xc330221b, 0x36316feb, 0x3815408c, 0xc19946d6, 0x6eec6564, 0xfac2cb7f, 0x892dd0bc
.word 0xcac7f740, 0xe2f17085, 0x1d63aa77, 0xfc2bad3a, 0x1c605676, 0x9ee389bf, 0x064e3238, 0x31653e9b
.word 0x2fefaf7a, 0xe9f7136b, 0x10b17537, 0xb38ddf27, 0xb4fd3893, 0xe159559b, 0x3a87f013, 0x64781be5
.word 0x85e953b4, 0x506487e4, 0x98897910, 0xbb8bc382, 0x5e4d6294, 0xbd321b03, 0x602375d6, 0xde591702
.word 0x84251509, 0x93e295ba, 0x40c09e8f, 0x13e0fe87, 0x7bce5b19, 0x1cd894f6, 0x417537a6, 0x294a6c2c
.word 0x484f043e, 0xdf7aefcc, 0x8e5a3445, 0x429f3519, 0xa333b941, 0x7b697dd0, 0xc6b52e31, 0x6e617269
.word 0x42106a23, 0x6b9685e3, 0x9e15f5b7, 0x42e5335e, 0x7534b221, 0x6c407381, 0xaa1f1b06, 0x8eedc8d6
.word 0x0191c449, 0x3c116036, 0x1a987719, 0x4dad0db0, 0x25edc3c1, 0x1ca4d51e, 0xc1c534ff, 0xf297060c
.word 0x39eb1797, 0x0d6841eb, 0x369f378e, 0x67f4f649, 0x60ba4dfe, 0x91555c0a, 0xaec678be, 0xaaf863f5
.word 0xc508b970, 0xd64ff7ad, 0x38e1f747, 0x158bd969, 0xddc10379, 0x23a49d2e, 0xda30cbb5, 0xb9e586ad
.word 0xc090eec6, 0xdfd3601c, 0x30c2bf07, 0x7dab0db2, 0x8acfc4eb, 0xec6fed32, 0xd48c4226, 0xeb58cd0c
.word 0x7aa658eb, 0xd4ae68cf, 0x7386a240, 0xd251368f, 0x16be01c0, 0x557f20dd, 0x1884e78a, 0x5771f4f5
.word 0x4aa6d35a, 0x7738f825, 0x177e2b1d, 0x6b291bbe, 0xe3764626, 0x46988fdf, 0x6c184635, 0x34bb7531
.word 0x0ed8e2c9, 0xd7781f8e, 0xe10b1898, 0x3d10f097, 0x2bdbb00f, 0x144c4a2e, 0xc6ee5485, 0xfc2fe362
.word 0x4aa110a0, 0x6a802dc4, 0x92aebf84, 0xc8ab96b3, 0x56d96a99, 0x53ca19cc, 0xf43eae02, 0x7b57b73c
.word 0x4f434ebd, 0x296343dc, 0xcbe03fa3, 0x26ffbfd2, 0x41483a89, 0x67bf113d, 0x87407069, 0x87c9a8c0
.word 0x930bce11, 0xd81c1b66, 0x1eba15c1, 0x346d7ca4, 0x3234aee1, 0x88459b81, 0xd11da8e3, 0xc5f8e2ca
.word 0x7a4f088e, 0x74c83d86, 0x85a1acd0, 0xebaff59f, 0x0a2592df, 0x3004933f, 0xc05fd39a, 0xc49e3a5d
.word 0x627dd20d, 0x3a4769ee, 0x69cfc713, 0x2cbe5579, 0xf2bff219, 0x087aad20, 0x83f9f226, 0x87dad8ce
.word 0xad1fb3a7, 0x4509e576, 0x10953a8d, 0x56bf86d4, 0x0c1245b0, 0x7a615736, 0x3544ada0, 0xf13ca7ed
.word 0x9fb46dcc, 0x21d9b84e, 0x8672e9f1, 0x75ca67f2, 0x19fae436, 0xd8735cca, 0x28b3f0ef, 0x95f9f1dc
.word 0xd21eee2f, 0xf4095b33, 0xfb78d7e8, 0xe117ac09, 0xd6a1a29e, 0x01889e19, 0x70d75163, 0xf4b3a4f6
.word 0x44c3475e, 0x9c642f4c, 0xd0d3cae4, 0x4eaffdbf, 0x11e3da1d, 0x6504a04c, 0x0b8aa4b8, 0xfabe9466
.word 0xced1b075, 0x09541ab1, 0x3cecf549, 0xe50f34d9, 0x9f38c354, 0x4ef08a76, 0x7f164972, 0xf7f195af
.word 0x491cb95b, 0x6b5db311, 0xdb4447fc, 0x333177ab, 0xfd3374e2, 0xedfffe7b, 0xfecd4826, 0x1246d51c
.word 0x164bb1de, 0xef1ae3b7, 0x4fcb5fbd, 0x0d14b6af, 0xe61397c9, 0xd40160aa, 0x3655a411, 0x858f59fc
.word 0xde1458a2, 0xf8f5c82f, 0x4dc5d416, 0x42ffc6e8, 0x5e1552d1, 0x0d614bbd, 0x827a68de, 0xd0867d6d
.word 0x4d5950eb, 0x28ba57a6, 0x870004a4, 0x0db65860, 0x565399f1, 0x28d7d3c9, 0x22a22cee, 0xf9f0f74c
.word 0x97f41993, 0xe62eb4d2, 0x50af9b9f, 0xb5b032ee, 0x4c0ad2cc, 0xf1fa6787, 0x35e03e3a, 0x75d303e5
.word 0xaee3360d, 0x09298597, 0x874ec96e, 0x83273f92, 0x40e24c70, 0x06cbfcc3, 0xde46e381, 0x2085bae6
.word 0x10fd7d92, 0x4b2568c6, 0xa5884ccc, 0xb6b270e7, 0xa7d478db, 0xef8ed5a9, 0xc756d397, 0x7a656bc2
.word 0x07def972, 0x315f723b, 0x52338b8f, 0x6f0422ff, 0xed8204cd, 0x2e5258c4, 0x281e686c, 0x5c83d19c
.word 0x9f164d1f, 0xe2adb1a7, 0xd1279f86, 0xc6f915ed, 0x6da4d911, 0x0353f40d, 0x649270e9, 0xe5d17d46
.word 0xcce1b3ab, 0xb26fbb71, 0xaa004402, 0x8610ee53, 0x694d0160, 0xc879fbd9, 0x53c5c3f9, 0xf9466cca
.word 0xeb87c545, 0x0a387f72, 0x726ea253, 0x1fa7f78f, 0xf192bafc, 0xd4c7a30b, 0x7483dda4, 0x9213d29d
.word 0xdea285c0, 0x1c8441bc, 0x41c653f0, 0x4e0cbd50, 0xac066c79, 0x0d5ea826, 0x328870a5, 0x6c9b89aa
.word 0xd1f407d7, 0x8a93d5cc, 0x6d0b348c, 0x19455bd5, 0x0d38fc3a, 0x85eefb4a, 0x4e9d54cf, 0xd8cae339
.word 0x132a3b2a, 0x9d0c2fdf, 0x4fee1086, 0xfa443ae6, 0x7a6a3709, 0xc39c8344, 0xaf1302ae, 0x716250ca
.word 0xfe448f9d, 0x1990982b, 0xcc70cc34, 0xe45daa43, 0x3ac6f724, 0x51405128, 0xd1d61ec9, 0xef8ee202
.word 0x6a8993f2, 0xace41a3f, 0x97419114, 0xcacd12b3, 0x67f65a19, 0x594b5ebd, 0x5e4132cb, 0x0ba29852
.word 0x7ebc2718, 0xea5ba1a2, 0x020a9212, 0x872d5c56, 0x35be16e7, 0xa6933699, 0xbf9b7042, 0x3e7a74a1
.word 0x548bf70f, 0x67fa98e8, 0x9e5c033b, 0x15a3f365, 0x5c25a5e8, 0xe78dbcee, 0xb2daaec8, 0x3684fadd
.word 0x89c97f48, 0xdb940999, 0xe42c531d, 0x4231780c, 0xdd8c62b5, 0xd9ffb65a, 0xf60cd155, 0x693405a3
.word 0xa1b44762, 0x7b3c3c72, 0x4c5bf5b3, 0xabea753f, 0xb012083d, 0xb39990dd, 0x169c0458, 0xa035347d
.word 0xe2a06d2d, 0x6f037c6c, 0x970391c9, 0x8b654b08, 0x567b3d7e, 0xa443ea52, 0x2b489f92, 0xb4d43eff
.word 0x8b9104f8, 0x1f14f6d8, 0x1e476a07, 0x51a94e76
.section .region_1,"aw",@progbits;
region_1:
.word 0xe960bd5b, 0xb9f6003a, 0xe4c71708, 0xab8124d5, 0x101e10ce, 0x5b5f53d8, 0x2d415d08, 0x1292f304
.word 0x9316615c, 0x113e2297, 0x49836c51, 0x10b2b9a0, 0xdc1c7125, 0xe5d92f97, 0xd0552cca, 0x6edc0af6
.word 0xa5cc0fd2, 0xc38e87e8, 0x090f6e4a, 0x355a95d3, 0x0e1fb147, 0x9a212e6a, 0xe8aec672, 0xb225834a
.word 0xc6fbfb0f, 0x986b5d6c, 0xf8116e44, 0xeb2e8e42, 0xa69cd30b, 0xdfe9f427, 0x5f72166a, 0xfa39673a
.word 0xee45a401, 0x5f58f0d5, 0xd472bce7, 0x4dfdee22, 0x3529f4dd, 0x56b20bbc, 0xac5d14ba, 0xbf63b1fe
.word 0xdeea0f2b, 0x103c25a0, 0xdbf987d2, 0x52e3458c, 0x6cd1d83d, 0x10ca6d9e, 0xf41ad409, 0xad461771
.word 0x715baf92, 0x56375b5f, 0xeffbf4e7, 0xb8064d41, 0x89f57bcc, 0x91cc612d, 0xf2571f46, 0xbb69a6f6
.word 0x2279b4c3, 0x7ba24d88, 0x5919fa61, 0x7ceb0032, 0xf425a679, 0xff4a7e81, 0x293d5f6b, 0x0594d5b1
.word 0x2dd70a30, 0x28bb1c10, 0x3bf897d9, 0xa6001a4c, 0x95862bce, 0xc766d62f, 0x772a25a9, 0xf7ab43cd
.word 0x275c231d, 0xf22cdeb6, 0x713bc880, 0x6b370b9b, 0xb76b0abe, 0x26c3785c, 0x04a1dc2c, 0xd813ede2
.word 0x6d3a730f, 0x2684afac, 0x20b0ce16, 0x9bf852f4, 0x79aed7a0, 0x212a1782, 0xe2b42eff, 0xec4cb814
.word 0xbd1f54b1, 0xb61b85ea, 0x6ccf72b2, 0x9a3236e1, 0x7e18a14c, 0xd94226c1, 0x82c2f615, 0xf1cd9081
.word 0x8647e289, 0xe897c62a, 0x231734a7, 0xc40ccc58, 0x21fe08ee, 0x80361109, 0x72112ccb, 0x121cd3ee
.word 0x08cf33d5, 0x9c125d55, 0x52379ce9, 0x4a0f75f8, 0x2b6023cb, 0xae67f29d, 0x442da0cc, 0x7855f0d6
.word 0x3f996219, 0x70f5b1e6, 0xa32cbfd7, 0xa9383f65, 0xff00cf08, 0x9657ec8f, 0xf63886ec, 0x2c26fc38
.word 0xa1f8664a, 0x90859037, 0x37394998, 0x02f5ae4d, 0xe05c36e6, 0x0d325654, 0x4f1132db, 0x39fe881d
.word 0x5573bc2d, 0x4f1621b5, 0xfef63645, 0x07a6481b, 0x56865dcc, 0x5c122b5f, 0x95038c8b, 0x8cd751de
.word 0x5460196a, 0x94c4c723, 0xea9eacf2, 0xf04a9fcf, 0x7ecc9d7d, 0x2ead769f, 0x8e6c9f3c, 0x1594ee01
.word 0x976699e9, 0xe7114770, 0x298db23a, 0x9e311f52, 0xdb7d10a1, 0xed9ce589, 0xd110ac21, 0xb80f7214
.word 0x2c4e6e7b, 0x7343eb60, 0x520827d8, 0xefae0fb3, 0xf768fb0f, 0xe3f005e3, 0x06cdb543, 0xdf618f32
.word 0x8111aacf, 0x7f79b128, 0x5b0e5e38, 0xfb5b7491, 0x493a71a0, 0xac85dc92, 0x4c0352ba, 0x4d9b81fb
.word 0xbd0054b1, 0xa3d58906, 0x6750ff8f, 0x74fadc43, 0x8fc2fc8f, 0xd5b37397, 0x371b61af, 0xce93651b
.word 0xca566811, 0xa484bc63, 0x8ad33b8d, 0x70c1034f, 0x3ad55a96, 0xbe76135c, 0x8f7194ac, 0x7ad989d8
.word 0xbbb90d60, 0x31d20b7f, 0x7432dd41, 0xff73707b, 0x18c4fbe3, 0x0e4f4559, 0x1235f532, 0x430b5ea7
.word 0x8297d373, 0xe47e82a1, 0x95aedc84, 0x596e3a87, 0xeb7d4f46, 0x69e290c9, 0x8e92564f, 0xf9d5d0c4
.word 0x9d1255b9, 0x9f115991, 0xadbf709f, 0xb0636bdd, 0xd9132072, 0x88487009, 0x130e8040, 0xd42eec47
.word 0xe16c6c56, 0x55336f9b, 0xf6209531, 0x645335a9, 0xdae9ffde, 0x6b798e3a, 0xc9115861, 0xb7f15e9b
.word 0x7eec8f7a, 0xc41d343d, 0xea5530a9, 0x74b17248, 0x95ba626c, 0x0ee19172, 0x53cbb368, 0x56e158a0
.word 0x1d426629, 0x060686bb, 0xd935a8de, 0x786d61f5, 0x390c9081, 0xe35497b7, 0xf9f36c56, 0xb7552116
.word 0x7c06da13, 0xfd304913, 0xf68522c5, 0xada57512, 0x9324d536, 0x8537177f, 0xc3986d92, 0xb46a4a85
.word 0x57b028d3, 0x3046c073, 0x9224aadf, 0x352862c7, 0xbfbe0d81, 0x799dcd67, 0x3c43f7a5, 0xcdd22e46
.word 0xa13524a3, 0xacb45a2f, 0xa84eda60, 0x9f32aaa9, 0xe532c034, 0x8c653608, 0x61132445, 0x88e1228b
.word 0x7b984346, 0x43e9d0d7, 0x76a20d32, 0x10054274, 0x4e10868e, 0xdec99ce1, 0xa278e45f, 0xa8cc24cb
.word 0x02e4f4f5, 0xd49f2457, 0xc66b8a7b, 0xaa2ee1fc, 0xfcd2bc9b, 0xcbf29b68, 0x8b0e0162, 0x79550636
.word 0xb048639a, 0xd930dd95, 0x9d3343b4, 0x3ba22d59, 0xed0dc26d, 0xf10a3418, 0x366248cf, 0x2e7be27b
.word 0x4f2327d1, 0x1928eae9, 0xbf77952d, 0x0f74908d, 0xd72dfaa5, 0x0ccaf9db, 0x0a493a0a, 0xa55646f0
.word 0x72e9e800, 0xe23227d3, 0xce7b62ce, 0x8f6ebd2d, 0xc6e6141c, 0xce9691d5, 0x72dd7f4c, 0x095e340a
.word 0x50dfa7fe, 0x6120c287, 0xe05966cc, 0x3d18ba6b, 0x7fede1c2, 0xec9fc20e, 0x09aad65f, 0x30621fc6
.word 0xd5691612, 0xca21e83d, 0x774ca944, 0xc00cd9bc, 0x0e976e7e, 0xbad8f5b9, 0x028c2be6, 0x6e786731
.word 0x4624335b, 0xb433f5bb, 0x737f132e, 0xd0a92ba3, 0xe061a131, 0xefd6f66c, 0xa3a80934, 0x187ebce3
.word 0x4bfb2157, 0xe05fcc12, 0x2ff3de3d, 0x31345c98, 0x7cdb4c26, 0x1a079dfa, 0xfec50697, 0x6e876959
.word 0xe32a78e1, 0x2fb36037, 0xb3cf16c8, 0x1f9e7797, 0x15e98898, 0x2507992d, 0xc8cd9c7f, 0xdd48141d
.word 0x565a3d48, 0x155f21ac, 0x8f8101b0, 0xaae256cb, 0x6ec0c41c, 0xc1192180, 0xb2a107e5, 0x3882d745
.word 0x92dcd296, 0x328bbb1f, 0x4a049aff, 0x5c1feb20, 0x2687f911, 0x04c72f31, 0x37c5354c, 0xa220a212
.word 0x0b6c672a, 0xa40c8eb0, 0xf022beee, 0xe56b237b, 0xd9f0933f, 0x5792e7b0, 0xf3cbda49, 0x47a619d2
.word 0x448b3eec, 0x8afe0c89, 0xc708c02d, 0xcba2e1f4, 0xa2f9a607, 0x18c84483, 0x8afcb308, 0xe68198ea
.word 0x68e4e74a, 0xdc2f395d, 0x3b987ee8, 0xddccaf8b, 0xe5ba31f0, 0x8d0b6723, 0x1562e87e, 0x1d533c57
.word 0x868becba, 0xf61238a3, 0xfbffe514, 0x7a13de66, 0x7c29b067, 0x28d1613c, 0xaa20af1a, 0xef9c9e62
.word 0x361118aa, 0xc8ee6e53, 0x5c78c247, 0xa28739d1, 0x60fa0256, 0x23f746d7, 0x626e96d5, 0x047f7ac9
.word 0x4bbbfdb0, 0x4b7515f7, 0xe586ba77, 0x8dc1799f, 0x2b2575c1, 0x316994ba, 0xcc21a5bb, 0xa0213f5f
.word 0xa94c65b0, 0x7e0d6468, 0x59f4af32, 0xc81cad10, 0xfce75785, 0x1cf8674b, 0xd314a2af, 0xb53aabfc
.word 0x8925e5fa, 0xc20505c8, 0xf65ba62c, 0xaa2c2a8d, 0xe816faff, 0x21f5238c, 0x3c27802f, 0x90a42037
.word 0xf908ae7a, 0x83a836f5, 0x46871f3f, 0x88c85c03, 0xf1eb45a3, 0x43ea7020, 0xdccdee57, 0x013cfb5a
.word 0x4d23f185, 0xb8d5f844, 0x69025e99, 0xd9259c22, 0x775c2524, 0x638f29f2, 0xc529fdc2, 0x3c2e4a47
.word 0x824e3ad8, 0xad04c956, 0xde10e31c, 0x5b50b5d3, 0x856f60fa, 0x4cba5e14, 0x61007f07, 0x7d46e080
.word 0x864acae2, 0x989c89d8, 0xc1d0f9e8, 0x9d76900e, 0x0fc88c5f, 0xe400e2f5, 0x7c7c6a7c, 0xb30596f9
.word 0x80b843c3, 0x79881878, 0x7daee82e, 0x344c73ee, 0x45a6ec47, 0x36908757, 0xf28be10c, 0xb83c5c4a
.word 0x761783c2, 0x5c9fd52d, 0x9ee096b4, 0x7d28bc60, 0x3550511b, 0xd7754f8e, 0x6d06b59c, 0x659df9db
.word 0x89af26ef, 0x5598ea95, 0xeeb2177c, 0xe35ebca7, 0x4d6120a3, 0x41a99a9c, 0x1a9de5ec, 0x85e197e2
.word 0xc1cd8229, 0x3b3b4043, 0xbc650aad, 0xe407b515, 0x0932a2c8, 0x989e00b4, 0xae0dbe09, 0x4c7ee97b
.word 0x82de2415, 0x4ca0c189, 0x62ab84f1, 0x89e6eee3, 0xc225c3c6, 0x155f2296, 0x1dff834a, 0x3e3f857f
.word 0x0281759e, 0xa6400342, 0xe0d8027c, 0x446b3eca, 0xf756fd34, 0x0bdea728, 0xb6f46afa, 0x5c2d6dd6
.word 0x1dad0c34, 0x57dc519e, 0x59621e2f, 0xffd7b4b7
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x20, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x20, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x20, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x20, x28, ecall_handler
                  li x28, 0x1
                  beq x20, x28, instr_fault_handler
                  li x28, 0x5
                  beq x20, x28, load_fault_handler
                  li x28, 0x7
                  beq x20, x28, store_fault_handler
                  li x28, 0xc
                  beq x20, x28, pt_fault_handler
                  li x28, 0xd
                  beq x20, x28, pt_fault_handler
                  li x28, 0xf
                  beq x20, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
