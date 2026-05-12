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
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 0
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  mret
init:             
                  li x0, 0x3
                  li x1, 0x6
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x8
                  li x7, 0x8
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0xfdb28607
                  li x11, 0xfdf4741e
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0xb85e07b1
                  li x15, 0xf36e9d99
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0xf17a788f
                  li x19, 0x7
                  li x20, 0xfaf49c6e
                  li x21, 0xbc7847aa
                  li x22, 0xfb4b0e7d
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x449fc769
                  li x27, 0x0
                  li x28, 0x3abaf08
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xf7359dea
                  la x6, user_stack_end
main:             xor          s11, s7, a1
                  sltiu        s1, t2, -1737
                  slli         a3, s3, 22
                  nop
                  auipc        s3, 640319
                  add          a3, a3, a5
                  lui          t6, 625170
                  lui          s11, 212475
                  xori         t2, s4, 787
                  la           s10, sub_1
                  addi         s10, s10, 49
                  srli         a3, zero, 19
main_j2:          jalr         tp, s10, -49 #jump main -> sub_1
                  addi         s9, zero, -2 #init loop 1 counter
                  auipc        s2, 361690
                  addi         s11, zero, 9 #init loop 1 limit
                  addi         s0, zero, -1940
                  sltiu        s0, zero, -1033
main_0_1_t:       sltiu        s1, s3, 605
                  sub          t3, t6, a2
                  srai         t4, t4, 19
                  addi         s9, s9, 4 #update loop 1 counter
                  auipc        t3, 481110
                  or           a0, s5, s8
                  srai         a7, t2, 5
                  addi         a6, zero, 4 #init loop 0 counter
                  addi         t2, zero, 4 #init loop 0 limit
                  sltu         s1, sp, t2
                  lui          ra, 103001
                  xor          zero, t2, s2
main_0_0_t:       xori         t3, a2, -13
                  xori         a3, a5, 1582
                  addi         a6, a6, -3 #update loop 0 counter
                  bgeu         a6, t2, main_0_0_t #branch for loop 0
                  sll          sp, a3, s7
                  srli         s10, s5, 20
                  bltu         s9, s11, main_0_1_t #branch for loop 1
                  ori          a1, t5, 1499
                  ori          s10, s2, 274
                  slli         t0, a2, 12
                  srl          ra, t2, s6
                  bgeu         a6, s1, 6f
                  add          zero, s4, t2
                  slli         s5, s2, 6
6:                xori         s6, a7, -1478
                  srli         a7, s6, 21
                  sub          s9, s7, sp
                  srli         s1, gp, 13
                  la           s11, sub_1
                  sltiu        s4, a5, -1365
                  addi         s11, s11, -20
                  auipc        s1, 595254
                  and          a3, s6, a1
main_j1:          jalr         tp, s11, 21 #jump main -> sub_1
                  bge          t2, a4, 10f
                  lui          t0, 521651
                  beq          a3, gp, 10f
10:               slli         s8, ra, 9
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            lui          s6, 932508
                  andi         t3, a7, 435
                  sub          ra, t5, t2
                  bgeu         sp, t0, sub_4_stack_p
                  slti         t5, a7, 1500
sub_4_stack_p:    addi         t1, t1, -16
                  or           a3, s5, s2
                  sw           tp, 4(t1)
                  xor          t0, s3, gp
                  sltu         t2, s3, s7
                  addi         s1, zero, 10 #init loop 1 counter
                  addi         s8, zero, 10 #init loop 1 limit
                  xori         t5, s7, 661
sub_4_1_1_t:      add          a4, s2, t0
                  addi         s1, s1, -9 #update loop 1 counter
                  addi         a3, zero, 7 #init loop 0 counter
                  addi         t3, zero, 0 #init loop 0 limit
                  nop
sub_4_1_0_t:      slt          s2, s0, tp
                  sll          a6, zero, s0
                  srli         tp, t2, 2
                  addi         a3, a3, -7 #update loop 0 counter
                  sub          zero, a1, s3
                  slti         s0, gp, 1775
                  beq          a3, t3, sub_4_1_0_t #branch for loop 0
                  srai         a1, t1, 29
                  srli         zero, t3, 19
                  bgeu         s1, s8, sub_4_1_1_t #branch for loop 1
                  addi         gp, s6, 526
                  addi         a7, zero, -6 #init loop 0 counter
                  and          s6, s4, gp
                  addi         s8, zero, -1 #init loop 0 limit
                  slli         zero, s5, 18
sub_4_2_0_t:      add          a0, s5, s11
                  addi         a7, a7, 5 #update loop 0 counter
                  sltu         s11, s11, s0
                  sltu         tp, ra, a6
                  ori          t3, a0, 1089
                  xor          s6, s3, s3
                  andi         zero, t5, 519
                  lui          tp, 784643
                  sltu         t0, s3, t0
                  beq          a7, s8, sub_4_2_0_t #branch for loop 0
                  sll          s6, tp, s8
                  addi         t6, zero, 2 #init loop 1 counter
                  addi         s1, zero, -4 #init loop 1 limit
sub_4_0_1_t:      xori         ra, t1, -94
                  addi         t6, t6, -9 #update loop 1 counter
                  addi         t2, zero, 2 #init loop 0 counter
                  addi         t3, zero, -7 #init loop 0 limit
sub_4_0_0_t:      sub          a3, s2, t6
                  addi         t2, t2, -9 #update loop 0 counter
                  bne          t2, t3, sub_4_0_0_t #branch for loop 0
                  bge          t6, s1, sub_4_0_1_t #branch for loop 1
                  srl          tp, a0, a3
                  bge          a7, a7, 10f
                  slti         a2, s0, -899
                  add          s0, s6, a1
                  slti         t4, a6, -338
                  sra          ra, s8, t5
                  srli         t4, s4, 13
                  sltiu        a2, s0, -1166
                  and          s3, s11, a7
                  or           s2, zero, tp
                  andi         tp, ra, -1294
10:               sltu         tp, gp, s3
                  xor          t5, s9, gp
                  sltu         s6, t2, zero
                  auipc        t6, 695203
                  addi         s0, zero, 1342
                  xor          s8, s5, sp
                  andi         s11, s3, -1533
                  sra          s2, a7, zero
                  andi         s4, s1, 1792
                  lui          s3, 706762
                  ori          s9, sp, -1316
                  lui          s3, 363682
                  srl          t5, a4, s10
                  sltu         a6, s2, t6
                  bgeu         a4, s0, 27f
                  xori         s6, gp, 1611
                  and          ra, a5, a1
27:               bne          s9, a3, 29f
                  add          t2, ra, s9
29:               blt          a7, s2, 47f
                  blt          s10, tp, 47f
                  bgeu         tp, a4, 48f
                  sltiu        t0, a1, 1941
                  nop
                  and          a1, t2, s9
                  ori          a3, t5, 1743
                  slti         s1, s11, -1980
                  xor          tp, a1, t0
                  auipc        s8, 261292
                  beq          t3, t3, 45f
                  lui          t2, 759002
                  srl          s10, a1, s0
                  sltiu        a0, a1, 520
                  nop
                  ori          a4, ra, -152
45:               lui          s6, 128202
                  xor          t2, zero, t4
47:               or           a0, s2, a0
48:               lui          t3, 452524
                  sltu         s1, t4, s8
                  srai         t5, a6, 12
                  ori          a7, a0, 282
                  srl          t6, t6, s11
                  bne          ra, a1, 70f
                  srli         s8, sp, 22
                  bge          s5, a0, 74f
                  bge          s2, s3, 72f
                  bltu         a5, ra, 59f
                  beq          s9, a7, 66f
59:               addi         s11, t5, 177
                  sll          a0, s10, a5
                  xor          t4, t1, a0
                  sll          t2, s4, s9
                  sll          s5, a2, s9
                  sltiu        a4, a4, -1757
                  bge          a7, s9, 67f
66:               xor          t4, s1, a2
67:               slt          a1, s5, sp
                  slli         zero, s5, 10
                  srai         s9, t1, 13
70:               blt          a5, a5, 86f
                  sra          s11, s0, s9
72:               and          s3, ra, s1
                  bne          a2, s0, 85f
74:               slli         a0, s6, 23
                  beq          s3, a1, 80f
                  or           t4, s0, s8
                  xor          a1, s11, a5
                  srai         s0, s7, 3
                  auipc        s1, 204995
80:               xor          t2, t4, a6
                  nop
                  blt          s9, s10, 86f
                  srai         t2, a7, 26
                  sll          zero, s11, s5
85:               add          zero, a1, s6
86:               srl          sp, gp, ra
                  sra          gp, s1, t6
                  bne          gp, a6, 100f
                  sub          s3, s1, s0
                  sltu         t6, s6, t2
                  ori          s10, s9, -1600
                  ori          tp, s1, -593
                  bne          ra, t4, 103f
                  xori         t3, a1, 2034
                  sra          s10, ra, t3
                  xori         a4, s9, 1222
                  sll          s11, s11, t5
                  bgeu         t0, a4, 104f
                  add          t3, a3, a2
100:              slli         t0, a5, 13
                  srai         a4, s5, 4
                  nop
103:              slli         t4, tp, 8
104:              srli         a3, tp, 16
                  bge          a6, t3, 116f
                  and          s0, a6, a1
                  nop
                  slli         s9, s8, 21
                  slt          t2, s9, t0
                  srai         s0, s4, 15
                  ori          s9, t6, -562
                  bne          tp, s5, 116f
                  slli         s4, a1, 10
                  addi         t5, s4, -1487
                  bge          s2, s9, 116f
116:              srl          t0, s4, a1
                  xor          ra, t0, s2
                  beq          t5, s10, 123f
                  srl          t6, t1, a4
                  slt          t5, s1, a4
                  nop
                  bgeu         a2, s4, 124f
123:              beq          s10, t6, 134f
124:              srai         gp, s0, 12
                  sltu         zero, t4, s9
                  bgeu         t5, s1, 128f
                  lui          t0, 1012580
128:              xor          zero, t0, t5
                  sltu         s9, s1, s4
                  nop
                  nop
                  slti         gp, t5, 1172
                  nop
134:              auipc        s3, 301990
                  slt          a7, t2, s7
                  sll          t3, s5, ra
                  or           t2, s11, s8
                  sra          sp, t0, s1
                  srli         ra, t6, 0
                  sltu         s5, a6, zero
                  xor          s0, a5, t2
                  ori          s3, s4, -128
                  sll          tp, a5, a6
                  srl          a0, t0, ra
sub_4_j8:         jal          tp, sub_5 #jump sub_4 -> sub_5
                  sltu         gp, t0, s8
                  bge          a5, s2, 145f
                  ori          a2, s6, 1097
                  and          s5, zero, s4
                  srl          s2, a5, sp
                  sll          s5, t6, s3
                  beq          a2, s8, 147f
145:              addi         s2, t6, 1013
                  bne          s2, s6, 156f
147:              auipc        ra, 319287
                  or           s8, s1, s6
                  lui          sp, 175953
                  sub          s0, t1, t4
                  addi         s4, s0, 258
                  xor          t5, s0, a2
                  or           s11, ra, a7
                  sltu         s11, s4, t0
                  nop
156:              srai         s4, tp, 9
                  slt          s1, s4, t5
                  bgeu         s4, t5, 160f
                  auipc        s8, 462028
160:              bgeu         s1, t2, 170f
                  sra          tp, s2, t4
                  sub          gp, tp, a2
                  auipc        s11, 374343
                  sra          s0, s2, a6
                  andi         t4, s6, 1998
                  xor          t0, s10, t0
                  andi         gp, t5, -1536
                  blt          t4, s5, 178f
                  slt          gp, t6, a5
170:              beq          tp, s4, 188f
                  sra          a1, t5, t5
                  sub          s10, a1, s7
                  bge          ra, t4, 175f
                  sub          a4, t1, a7
175:              lui          sp, 322382
                  and          a2, s10, s8
                  beq          a1, t0, 188f
178:              xor          s6, t0, s10
                  xori         a4, a0, -1057
                  sub          s3, a2, gp
                  srli         s11, s1, 13
                  srai         s10, s0, 15
                  srl          a1, s7, s1
                  xori         s1, a1, -578
                  or           s10, s3, sp
                  beq          a3, a6, 188f
                  xori         s5, a7, 2028
188:              addi         a1, s9, 1459
                  sll          s10, a7, s7
                  lw           tp, 4(t1)
                  lui          zero, 156608
                  addi         t1, t1, 16
                  xori         a4, a7, 846
                  xori         gp, s8, -278
                  slti         a1, zero, 63
                  lui          sp, 18735
260:              addi x8, x4, 0
260:              jalr x8, x8, 0
sub_5:            slli         a0, t0, 12
                  beq          t1, s10, sub_5_stack_p
sub_5_stack_p:    addi         t1, t1, -24
                  xori         a4, a2, 1992
                  sw           tp, 4(t1)
                  lui          s2, 409487
                  andi         gp, a5, 1437
                  addi         sp, zero, 9 #init loop 1 counter
                  xor          s4, s11, a5
                  auipc        a1, 360124
                  sub          zero, t6, a6
                  addi         s10, zero, 9 #init loop 1 limit
                  ori          a7, a2, -1362
                  srl          a6, s3, s1
sub_5_2_1_t:      xor          s3, t0, a6
                  srli         a2, s2, 31
                  sltiu        zero, t1, -1572
                  sll          ra, s11, s9
                  sll          t4, a6, ra
                  sll          s0, s2, a7
                  addi         sp, sp, -8 #update loop 1 counter
                  addi         s5, zero, 3 #init loop 0 counter
                  sll          a2, s11, sp
                  sltu         a4, s8, tp
                  add          t3, s3, s9
                  srli         a6, s10, 20
                  srli         s0, s0, 23
                  lui          tp, 646575
                  addi         t2, zero, 12 #init loop 0 limit
sub_5_2_0_t:      sltiu        a7, t4, 841
                  add          s11, s10, a0
                  srli         t5, t6, 8
                  addi         s5, s5, 9 #update loop 0 counter
                  sltiu        s4, t2, -943
                  bne          s5, t2, sub_5_2_0_t #branch for loop 0
                  slti         a2, s1, 1695
                  bgeu         sp, s10, sub_5_2_1_t #branch for loop 1
                  andi         s2, a1, -409
                  addi         s2, zero, 10 #init loop 1 counter
                  or           t5, s0, ra
                  sltu         a0, s2, s11
                  auipc        gp, 567950
                  sltu         s1, t4, ra
                  addi         s9, zero, -14 #init loop 1 limit
                  nop
sub_5_3_1_t:      auipc        a7, 377090
                  srai         t2, gp, 0
                  addi         s2, s2, -8 #update loop 1 counter
                  addi         s11, zero, 9 #init loop 0 counter
                  sltu         s10, s8, tp
                  addi         a4, zero, 5 #init loop 0 limit
                  ori          a6, t1, -799
                  slti         t3, s10, -1756
                  or           t0, t4, s2
sub_5_3_0_t:      or           s1, s11, zero
                  auipc        a1, 239946
                  addi         s11, s11, -2 #update loop 0 counter
                  sltu         s5, t1, s9
                  slti         t5, s9, 633
                  bgeu         s11, a4, sub_5_3_0_t #branch for loop 0
                  bne          s2, s9, sub_5_3_1_t #branch for loop 1
                  and          s1, s3, t3
                  addi         s6, zero, -10 #init loop 0 counter
                  andi         s11, a3, 733
                  sltu         a0, s1, t6
                  addi         s5, zero, 12 #init loop 0 limit
                  srl          s2, a7, a0
sub_5_4_0_t:      xor          s10, t2, tp
                  andi         t0, sp, -612
                  srai         s10, gp, 28
                  slti         s10, t1, -1764
                  lui          sp, 886842
                  andi         t5, s9, 1516
                  sub          s0, t1, t1
                  sltiu        ra, a5, 1230
                  slli         t3, a2, 1
                  xori         s8, s9, 1868
                  lui          t0, 197839
                  lui          s8, 91961
                  auipc        s4, 66681
                  addi         s6, s6, 3 #update loop 0 counter
                  nop
                  sll          t4, a7, t4
                  and          t4, s2, a0
                  srai         a3, t1, 28
                  sub          a7, t1, s1
                  or           ra, s0, gp
                  bltu         s6, s5, sub_5_4_0_t #branch for loop 0
                  srl          a4, a3, t4
                  addi         s11, zero, -7 #init loop 0 counter
                  sub          a1, s9, s1
                  addi         s8, zero, -14 #init loop 0 limit
                  addi         s3, a3, 1644
                  srl          t0, zero, s8
sub_5_0_0_t:      and          s10, s10, a1
                  addi         s11, s11, -7 #update loop 0 counter
                  sll          t5, s9, t6
                  sub          sp, s1, s5
                  beq          s11, s8, sub_5_0_0_t #branch for loop 0
                  lui          s3, 483672
                  addi         a1, zero, 7 #init loop 1 counter
                  sub          s3, a7, s11
                  andi         t3, a4, 848
                  addi         s1, zero, 9 #init loop 1 limit
                  nop
sub_5_1_1_t:      slt          a0, zero, a5
                  ori          a2, sp, 1984
                  addi         a1, a1, 1 #update loop 1 counter
                  srai         a0, s5, 20
                  srl          t3, a3, s7
                  or           s2, t5, s7
                  addi         t2, zero, -8 #init loop 0 counter
                  addi         a3, zero, -19 #init loop 0 limit
                  lui          a0, 582103
                  ori          sp, a4, 784
sub_5_1_0_t:      or           sp, s3, s0
                  sub          ra, s3, s9
                  sub          s10, t5, t6
                  sltu         tp, t4, a6
                  addi         t2, t2, -1 #update loop 0 counter
                  bne          t2, a3, sub_5_1_0_t #branch for loop 0
                  xor          s11, s8, a3
                  andi         s5, s3, 611
                  ori          zero, a3, 1612
                  andi         a7, s7, 837
                  slt          a7, s9, gp
                  srl          s2, s6, sp
                  bne          a1, s1, sub_5_1_1_t #branch for loop 1
                  and          s2, a2, t1
                  blt          s8, t4, 2f
                  bgeu         a3, t4, 5f
2:                bne          t1, s8, 4f
                  lui          s4, 228041
4:                xor          s4, s0, ra
5:                sltiu        s10, s2, 1155
                  sub          a4, a3, a5
                  xori         s4, a6, 518
                  xor          s2, t1, t0
                  bgeu         t2, sp, 21f
                  add          a6, t2, a7
                  slti         s9, s6, -972
                  bge          tp, s11, 25f
                  addi         tp, t1, 1624
                  slti         a0, s9, -307
                  or           s5, t1, a5
                  lui          a2, 695994
                  add          t3, s7, a0
                  andi         t6, s1, 851
                  bne          a7, s1, 23f
                  addi         s9, t1, -1512
21:               beq          tp, a3, 39f
                  slti         s9, a6, -1557
23:               xor          s8, a1, tp
                  sll          ra, s0, s10
25:               bge          t6, sp, 45f
                  and          a7, sp, t5
                  sll          t2, s7, tp
                  auipc        a0, 100157
                  nop
                  srli         t2, tp, 6
                  beq          s4, t4, 42f
                  and          a0, gp, zero
                  srai         s0, t1, 14
                  xor          s1, a7, s4
                  ori          zero, s6, -1790
                  add          s6, t5, a5
                  andi         s6, zero, 1808
                  sra          t0, a1, s2
39:               sub          s11, tp, t0
                  xori         zero, a3, 1172
                  xori         tp, t5, 1506
42:               xor          t2, s0, gp
                  xori         tp, a5, -1921
                  sltu         tp, s1, s5
45:               and          a0, a5, t0
                  slli         s3, s4, 0
                  nop
                  bge          t3, t2, 58f
                  slt          s9, zero, sp
                  slli         s4, a2, 26
                  slti         a0, a1, 1803
                  sltiu        zero, s6, 988
                  lui          t6, 304251
                  addi         s9, zero, -1942
                  or           t3, s1, s8
                  bne          s7, s10, 76f
                  bltu         a7, a6, 68f
58:               srai         a3, s6, 19
                  bltu         s9, t3, 60f
60:               xori         ra, ra, -1882
                  bgeu         t5, a0, 70f
                  sra          ra, a7, s5
                  srai         a3, t6, 1
                  xori         s8, s6, 948
                  sll          t5, s10, s8
                  sltu         a2, s10, s7
                  sltiu        t6, s1, -326
68:               xori         a0, t5, 570
                  ori          t5, t5, 940
70:               or           a0, s5, a5
                  bge          a1, t3, 73f
                  sltu         s0, a6, t5
73:               lui          a2, 421011
                  slt          s3, a5, a6
                  sltiu        a7, t5, 831
76:               ori          a6, s4, 49
                  lui          sp, 45168
                  sltu         t5, a3, s4
                  addi         gp, s5, 1360
                  ori          s5, s11, -1761
                  sll          s9, s5, s1
                  ori          ra, sp, 993
                  sra          t3, tp, s3
                  slli         s6, s1, 4
                  sll          a2, s6, s7
                  blt          t2, t0, 91f
                  sll          zero, t5, a0
                  srli         gp, t3, 0
                  nop
                  nop
91:               ori          s5, a7, 388
                  srli         ra, s0, 22
                  sltiu        s11, s6, -228
                  add          a0, t4, s5
                  bltu         a5, sp, 102f
                  sltu         zero, s8, s11
                  srl          t0, t6, s5
                  blt          s0, s7, 111f
                  srli         s1, s10, 24
                  auipc        s5, 362689
                  ori          a4, gp, 2038
102:              xor          s1, s1, a5
                  xor          s11, t5, t0
                  add          t6, s2, s10
                  sll          s1, s5, t4
                  sltiu        a3, a5, -736
                  add          a4, s1, s10
                  sll          s10, s2, t5
                  addi         a7, s2, 1876
                  sltiu        s2, a5, 780
111:              add          s11, s9, gp
                  or           tp, ra, s4
                  slt          s4, s2, a0
                  slti         a3, s8, -1430
                  srli         t4, s5, 9
                  srai         s10, t0, 6
                  bge          ra, a7, 134f
                  andi         s11, a1, 1288
                  ori          zero, a7, 1082
                  xor          s1, a0, a7
                  beq          tp, s9, 123f
                  bltu         a5, t5, 134f
123:              slli         s4, t6, 12
                  bgeu         t0, a7, 131f
                  sll          a3, s0, s8
                  nop
                  sll          ra, s8, zero
                  slt          s5, s8, a1
                  sltu         a3, s8, t6
                  addi         t2, a6, 117
131:              sub          ra, s7, t4
                  ori          s4, s4, 865
                  add          s2, t4, s4
134:              srai         a6, s7, 13
                  slt          sp, t4, s5
                  slli         a4, t4, 14
                  bgeu         gp, t6, 157f
                  sll          s3, t1, s9
                  nop
                  sra          t3, a1, s9
                  add          s5, t4, s2
                  slli         a3, zero, 23
                  slli         sp, s1, 21
                  beq          s1, s10, 160f
                  xor          s5, ra, t0
                  sltu         s4, t6, s0
                  add          s5, s11, s10
                  srai         s2, s0, 20
                  nop
                  srl          a4, s9, s2
                  sll          s0, t3, a3
                  blt          gp, t5, 159f
                  addi         s9, a6, 1124
                  bltu         a6, s6, 156f
                  slt          t0, t6, s0
156:              ori          ra, s7, -1850
157:              sltu         ra, t5, s11
                  beq          s5, s6, 174f
159:              beq          a7, a1, 175f
160:              sltu         s11, gp, s7
                  bltu         s2, ra, 164f
                  sltu         a2, a3, s8
                  and          s6, a4, s3
164:              srl          a2, s4, a1
                  sub          a6, s5, a3
                  lui          a1, 340990
                  bltu         s7, s5, 181f
                  auipc        a6, 202348
                  beq          s10, s2, 182f
                  srai         s3, t5, 11
                  xori         s5, ra, -992
                  nop
                  auipc        t5, 793825
174:              ori          gp, t6, 877
175:              blt          a5, s2, 191f
                  bltu         zero, s2, 187f
                  bge          t5, s3, 188f
                  slt          sp, s8, s7
                  beq          s8, s8, 197f
                  auipc        a2, 1033535
181:              bge          ra, a5, 183f
182:              or           s1, s2, a7
183:              xori         tp, s1, 1391
                  xori         s11, t0, -1906
                  sra          s4, t2, s1
                  sll          s4, t3, sp
187:              sub          s9, s0, t6
188:              bgeu         s10, s6, 192f
                  sll          t4, gp, s10
                  sll          t2, gp, s3
191:              xori         gp, s10, -260
192:              sltiu        a4, sp, -1522
                  andi         a4, s11, -370
                  slti         s6, s10, -1263
                  sub          s2, zero, a1
                  sltiu        s9, s1, -1843
197:              auipc        s3, 691950
                  sltiu        a1, s6, -863
                  srai         t2, a4, 27
                  srli         a3, a7, 15
                  addi         s10, a7, -1880
                  sll          s0, s0, s11
                  andi         s3, s9, -1246
                  beq          s6, s10, 213f
                  ori          gp, tp, -1619
                  slli         s3, a4, 9
                  sra          a1, s0, t1
                  or           s3, a3, s11
                  srl          a2, a5, a3
                  slti         s2, a4, -315
                  sltiu        s4, s2, -1042
                  srl          t5, s6, t2
213:              or           s9, s11, t0
                  and          s4, s4, t6
                  nop
                  bgeu         sp, t1, 236f
                  nop
                  sltiu        t3, a6, -252
                  srl          t3, a7, s1
                  xori         s2, ra, 1737
                  slli         a1, a3, 1
                  sltiu        a6, a5, 1766
                  sub          a3, t4, s6
                  bne          s4, s5, 229f
                  auipc        a6, 708352
                  ori          s2, s6, 1576
                  or           s11, s9, s8
                  xori         a3, a2, 1307
229:              bgeu         t4, t4, 239f
                  or           a2, t2, a2
                  beq          s0, t4, 238f
                  lui          s5, 348240
                  andi         s8, s0, -1220
                  auipc        gp, 715235
                  or           zero, s8, s10
236:              sra          t2, t5, a5
                  beq          s0, s10, 251f
238:              srai         a7, s0, 10
239:              slt          s0, a5, a7
                  bne          s8, zero, 257f
                  or           s1, s8, t2
                  bltu         s4, tp, 254f
                  or           tp, tp, ra
                  or           s4, s6, ra
                  sltiu        s2, t5, -528
                  bne          t6, s5, 262f
                  blt          a7, s8, 267f
                  add          t3, s10, t5
                  sltu         a7, t6, a6
                  bltu         s8, s6, 252f
251:              sltiu        a0, tp, 777
252:              sra          tp, a3, a3
                  bltu         gp, s7, 260f
254:              sltiu        s3, a4, -998
                  slti         s5, t4, 286
                  slti         s3, s8, -895
257:              xor          a0, a4, s6
                  xor          s8, a2, ra
                  beq          s8, ra, 272f
260:              add          t4, a3, s1
                  bgeu         t1, a4, 277f
262:              add          a4, tp, s4
                  and          s9, t6, a3
                  add          tp, a7, t0
                  sll          s0, s4, s7
                  slt          t2, t1, a7
267:              slli         t4, s0, 1
                  blt          t3, a1, 272f
                  sra          a3, a4, a7
                  slti         s1, s9, 1118
                  srli         s6, s11, 26
272:              srl          s3, s6, t1
                  andi         gp, s3, 107
                  or           sp, a2, a3
                  sub          sp, s4, t6
                  srl          t0, t3, s0
277:              ori          a7, a3, -1351
                  add          s0, s5, a1
                  add          s9, s8, t1
                  add          t3, t1, a4
                  bge          a1, a5, 283f
                  slti         zero, s10, 1408
283:              srl          s6, s0, a6
                  srl          t4, s2, t4
                  andi         a3, a0, -543
                  slli         a7, s1, 16
                  sub          zero, ra, a5
                  srl          t2, s10, s2
                  sltiu        s8, t0, -237
                  addi         t5, a5, 1399
                  sltiu        t0, s0, -313
                  slt          a4, s2, a2
                  slti         gp, a0, -167
                  and          a3, gp, ra
                  slt          a2, s3, t5
                  srli         s0, s1, 1
                  srli         a1, s1, 24
                  srli         sp, a5, 28
                  lw           tp, 4(t1)
                  sltu         a4, a3, t3
                  addi         t1, t1, 24
                  nop
                  andi         s1, zero, -1451
                  srli         s5, a3, 13
                  xori         t3, a4, 1552
                  addi         s1, s4, -562
                  or           a1, ra, s1
437:              addi x30, x4, 1
437:              jalr x30, x30, 0
sub_2:            sltu         s1, s10, t3
                  addi         a0, a2, -1743
                  bgeu         t0, a0, sub_2_stack_p
                  slli         t6, a6, 14
sub_2_stack_p:    addi         t1, t1, -20
                  srl          s1, s11, a6
                  sll          a6, t4, t4
                  srl          a3, t5, s3
                  sw           tp, 4(t1)
                  or           s3, s1, a0
                  sll          t6, tp, t3
                  srli         a0, s2, 27
                  sub          s9, t3, a7
                  srli         s9, a1, 13
                  add          zero, tp, t4
                  bge          s6, t0, sub_2_j5 #branch to jump instr
                  or           a4, a3, s4
                  sll          a2, a2, a3
                  xor          t2, gp, t2
                  nop
sub_2_j5:         jal          tp, sub_4 #jump sub_2 -> sub_4
                  sra          s3, s11, s3
                  la           a6, sub_3
                  or           s8, s3, s7
                  slli         tp, t5, 10
                  slli         t0, s3, 5
                  addi         a6, a6, 664
                  bge          s1, s1, sub_2_j7 #branch to jump instr
                  add          zero, t5, a3
                  or           a3, gp, a6
                  nop
                  addi         s3, a6, -92
sub_2_j7:         jalr         tp, a6, -663 #jump sub_2 -> sub_3
                  addi         a1, zero, -4 #init loop 0 counter
                  slti         s8, t4, 939
                  addi         s6, zero, -14 #init loop 0 limit
                  auipc        tp, 172598
sub_2_0_0_t:      or           a6, ra, s11
                  xor          a4, s3, tp
                  sra          t5, a4, s1
                  xor          t2, s4, a0
                  sll          s3, t1, t6
                  addi         a1, a1, -10 #update loop 0 counter
                  xori         a0, a1, 368
                  srl          sp, s4, t2
                  auipc        s11, 529798
                  andi         t0, s1, 306
                  beq          a1, s6, sub_2_0_0_t #branch for loop 0
                  srai         s5, s7, 15
                  addi         t2, zero, -6 #init loop 1 counter
                  ori          s2, tp, 1402
                  addi         gp, zero, 15 #init loop 1 limit
                  xori         a7, a4, -371
                  xor          a0, s4, s10
                  and          a6, t1, ra
                  sltiu        s2, s6, 1581
                  sra          t3, s8, a2
                  add          s0, gp, t2
sub_2_1_1_t:      xori         a2, t4, 593
                  sll          a3, t5, ra
                  addi         s2, s3, 1986
                  andi         t5, s7, -1705
                  addi         t2, t2, 7 #update loop 1 counter
                  xori         a4, t0, 663
                  sltiu        s3, gp, -304
                  add          a3, s0, t0
                  srl          t4, t6, t6
                  addi         t0, zero, -3 #init loop 0 counter
                  xori         t6, zero, -1092
                  addi         s4, zero, 12 #init loop 0 limit
                  srai         t5, a3, 17
                  auipc        s0, 767572
                  auipc        s9, 812633
                  xori         a6, s7, 94
                  sra          sp, a0, s0
sub_2_1_0_t:      xori         s9, s7, 198
                  addi         t0, t0, 5 #update loop 0 counter
                  sltiu        zero, s4, 1962
                  bne          t0, s4, sub_2_1_0_t #branch for loop 0
                  xori         s6, t5, -482
                  and          s11, s8, s0
                  xori         t6, t6, 762
                  bltu         t2, gp, sub_2_1_1_t #branch for loop 1
                  sltiu        s9, t2, -1052
                  sltu         s6, s1, t3
                  slt          a1, a2, s7
                  xori         a7, t5, 1891
                  srl          s9, ra, s4
                  andi         s8, t5, 450
                  beq          a4, s11, 15f
                  bgeu         a4, a2, 23f
                  slt          a7, s10, s8
                  xor          t3, gp, s4
                  ori          tp, s3, -731
                  blt          s5, a6, 25f
                  slt          a1, a6, s2
                  slt          sp, gp, s10
                  or           gp, ra, sp
                  srl          t6, t3, t4
15:               slli         t4, s2, 31
                  bge          a7, t3, 23f
                  and          s10, s8, t3
                  xor          t6, s3, s9
                  bne          s3, s3, 23f
                  and          s1, s2, s6
                  auipc        s6, 546571
                  slt          s10, s8, gp
23:               slti         zero, t0, -955
                  sltiu        sp, s6, 556
25:               slt          sp, a4, a2
                  bgeu         a0, s6, 40f
                  sra          ra, a1, a7
                  slt          tp, a1, a2
                  ori          s10, t4, -866
                  srli         s5, sp, 28
                  bltu         s8, s7, 34f
                  sub          a0, a3, a5
                  xori         s2, gp, -947
34:               bne          a5, s3, 36f
                  bltu         a0, s2, 37f
36:               slt          a1, s9, t5
37:               sub          a4, t5, s11
                  xori         zero, s2, -244
                  andi         ra, ra, -73
40:               slt          s2, a3, s5
                  andi         s6, s5, 1752
                  bgeu         a1, s5, 58f
                  srl          a2, a0, t0
                  ori          a2, s10, -818
                  blt          a1, t2, 47f
                  nop
47:               beq          s5, s10, 52f
                  bne          a5, t4, 65f
                  sll          a0, tp, t5
                  or           s5, a7, a4
                  lui          s4, 1018454
52:               sll          t3, a5, s7
                  lui          t4, 856139
                  addi         a3, s7, 1471
                  beq          a4, s0, 64f
                  slt          s11, s10, s2
                  sll          zero, s3, a4
58:               add          s3, a4, s11
                  addi         t4, t4, -106
                  lui          a1, 482962
                  bgeu         t3, a2, 62f
62:               xori         s8, a6, -686
                  slt          a3, s1, zero
64:               slti         gp, s6, -365
65:               nop
                  sll          s2, tp, s4
                  sub          a6, s1, s2
                  xor          ra, s7, a5
                  sll          a1, sp, a3
                  sll          a1, a1, s8
                  nop
                  srli         s2, s1, 26
                  auipc        t0, 615170
                  ori          a1, s0, 1515
                  slt          s6, ra, t0
                  bne          s0, s1, 93f
                  slli         t0, gp, 19
                  slli         zero, a0, 7
                  beq          tp, a3, 80f
80:               or           t0, s3, ra
                  bne          t2, s11, 98f
                  bgeu         tp, s3, 97f
                  xori         tp, s10, 256
                  la           t5, sub_4
                  slli         s0, t1, 6
                  slt          s5, s9, s3
                  auipc        s11, 902075
                  addi         t5, t5, -690
                  slt          s1, zero, t1
                  addi         a1, s9, 1006
                  andi         s8, s4, 440
                  sltiu        t3, t6, -1011
sub_2_j6:         jalr         tp, t5, 691 #jump sub_2 -> sub_4
                  and          gp, s9, a0
                  slti         a7, a5, -1436
                  add          s3, t2, a6
                  blt          s8, s9, 88f
88:               and          t5, t4, a7
                  nop
                  nop
                  bge          t1, s5, 105f
                  slt          t4, t5, a3
93:               slt          s1, t1, s2
                  xori         a3, s8, -262
                  xori         t6, s2, 715
                  or           s8, t4, s5
97:               ori          gp, t2, -1269
98:               xori         zero, s6, 1300
                  sra          t6, t5, zero
                  add          a0, t0, t6
                  xor          s5, a7, tp
                  sub          s6, a5, a4
                  bne          a0, s3, 105f
                  sltu         a6, ra, t4
105:              xori         s10, s11, 591
                  sll          gp, a2, sp
                  srai         s6, s10, 10
                  or           a2, s10, s9
                  or           s5, s9, t1
                  or           t5, t2, tp
                  lui          s10, 202601
                  or           a2, t4, s11
                  slli         s11, s1, 26
                  sltu         s8, t5, sp
                  andi         s6, t5, 579
                  lw           tp, 4(t1)
                  andi         t3, s5, -1793
                  addi         t1, t1, 20
                  srl          s2, s10, a1
                  slli         t5, s1, 20
                  auipc        s9, 1014557
216:              addi x7, x4, 0
216:              jalr x7, x7, 0
sub_3:            srai         t5, t3, 29
                  ori          s10, ra, -1062
                  xor          zero, s6, zero
                  lui          t2, 563381
                  xori         s3, s1, -277
                  addi         t1, t1, -16
                  sw           tp, 4(t1)
                  srli         ra, s4, 12
                  andi         s2, s1, 859
                  addi         t3, zero, 3 #init loop 0 counter
                  slt          tp, s0, t3
                  ori          sp, s8, 1798
                  sra          s10, a1, s6
                  nop
                  auipc        s11, 956744
                  srai         gp, s0, 4
                  xori         s5, t1, 126
                  slti         t0, a7, 1330
                  slt          t5, a3, s4
                  slt          s1, s9, s2
                  sll          a6, s1, s7
                  slti         gp, sp, -95
                  addi         t2, zero, 3 #init loop 0 limit
sub_3_6_0_t:      sltiu        a0, tp, 373
                  ori          s5, s10, -1958
                  sub          s10, a1, a4
                  srai         a2, tp, 18
                  sub          t6, a0, s8
                  sra          a2, zero, s9
                  addi         t3, t3, -2 #update loop 0 counter
                  srl          s0, a6, s10
                  srai         a6, s6, 6
                  lui          s9, 837783
                  sltiu        sp, t1, 810
                  srai         zero, t2, 20
                  srl          a1, tp, t0
                  sll          a0, s3, tp
                  bgeu         t3, t2, sub_3_6_0_t #branch for loop 0
                  xor          s2, s1, gp
                  addi         a7, zero, -6 #init loop 1 counter
                  ori          sp, t2, -1477
                  addi         s8, zero, 18 #init loop 1 limit
                  sll          s6, s3, sp
sub_3_17_1_t:     xor          t4, gp, t2
                  addi         a7, a7, 10 #update loop 1 counter
                  slt          t6, a6, s8
                  addi         s0, zero, 4 #init loop 0 counter
                  and          s4, s2, s2
                  srl          a6, zero, a4
                  srl          t6, s8, s7
                  addi         t0, zero, 11 #init loop 0 limit
sub_3_17_0_t:     sltu         s3, a7, ra
                  slt          a3, s9, t5
                  slti         tp, t4, 1654
                  addi         s0, s0, 3 #update loop 0 counter
                  slli         zero, sp, 23
                  sll          t5, s9, a3
                  blt          s0, t0, sub_3_17_0_t #branch for loop 0
                  bltu         a7, s8, sub_3_17_1_t #branch for loop 1
                  add          t6, zero, t6
                  addi         ra, zero, 10 #init loop 1 counter
                  srli         t0, a7, 8
                  xori         gp, a5, 630
                  addi         s4, zero, 10 #init loop 1 limit
                  sll          a1, s4, s5
                  slli         a0, a0, 29
                  auipc        s0, 916033
sub_3_11_1_t:     sltu         s10, s4, a7
                  srl          t4, t3, a5
                  addi         ra, ra, -6 #update loop 1 counter
                  sub          s11, s9, s6
                  addi         s8, zero, 4 #init loop 0 counter
                  sll          a2, a6, a0
                  addi         t3, zero, 8 #init loop 0 limit
                  nop
sub_3_11_0_t:     xor          t6, a5, a6
                  addi         s8, s8, 2 #update loop 0 counter
                  slli         s3, s9, 8
                  bne          s8, t3, sub_3_11_0_t #branch for loop 0
                  bgeu         ra, s4, sub_3_11_1_t #branch for loop 1
                  sltu         a4, a1, gp
                  addi         t2, zero, 2 #init loop 0 counter
                  nop
                  addi         s0, zero, -9 #init loop 0 limit
                  slti         a6, t2, 262
                  srl          s9, s9, ra
sub_3_14_0_t:     add          s10, s9, s10
                  addi         t2, t2, -9 #update loop 0 counter
                  nop
                  bge          t2, s0, sub_3_14_0_t #branch for loop 0
                  sra          a1, s9, t5
                  addi         s2, zero, 7 #init loop 0 counter
                  xor          s5, a1, tp
                  ori          s9, t6, 161
                  or           tp, t2, tp
                  slti         gp, gp, 548
                  sra          sp, a4, s5
                  addi         t2, zero, 11 #init loop 0 limit
                  xori         s5, s11, -1584
                  sra          t6, a2, ra
                  ori          t5, s8, -728
                  srli         a3, a4, 13
                  slt          a4, a1, ra
sub_3_4_0_t:      slti         t5, t3, -4
                  auipc        s8, 31957
                  srli         a4, s0, 6
                  sltiu        t6, s5, -1031
                  srl          t4, t5, ra
                  srli         s4, s4, 1
                  addi         s2, s2, 4 #update loop 0 counter
                  sra          t0, s9, s0
                  add          a6, s4, s2
                  sll          a3, s8, t6
                  bltu         s2, t2, sub_3_4_0_t #branch for loop 0
                  sll          a2, a7, s6
                  addi         a4, zero, -4 #init loop 1 counter
                  lui          s2, 859023
                  srli         a1, t5, 14
                  addi         tp, zero, -8 #init loop 1 limit
                  srl          t0, a4, s10
                  or           a0, gp, a7
                  slt          a0, t6, t1
                  ori          s2, t3, 838
sub_3_1_1_t:      slti         s9, ra, -247
                  ori          s0, s9, 580
                  andi         t3, t5, 313
                  addi         a4, a4, -2 #update loop 1 counter
                  andi         t0, a4, 5
                  addi         a2, zero, 2 #init loop 0 counter
                  addi         ra, zero, -3 #init loop 0 limit
                  xori         s11, s1, 756
sub_3_1_0_t:      and          a0, a0, t4
                  addi         a2, a2, -5 #update loop 0 counter
                  lui          s6, 277353
                  beq          a2, ra, sub_3_1_0_t #branch for loop 0
                  or           sp, t0, a3
                  and          s9, t4, a4
                  beq          a4, tp, sub_3_1_1_t #branch for loop 1
                  sub          a1, t4, s11
                  addi         a4, zero, 7 #init loop 1 counter
                  addi         s0, zero, -14 #init loop 1 limit
                  nop
sub_3_7_1_t:      ori          ra, t0, -1187
                  addi         a4, a4, -2 #update loop 1 counter
                  slli         ra, t5, 15
                  addi         a7, zero, 5 #init loop 0 counter
                  sltiu        t5, s10, -240
                  addi         s1, zero, 5 #init loop 0 limit
sub_3_7_0_t:      slt          tp, s8, s10
                  addi         a7, a7, -4 #update loop 0 counter
                  srai         tp, t0, 9
                  bgeu         a7, s1, sub_3_7_0_t #branch for loop 0
                  or           s8, t5, t0
                  bge          a4, s0, sub_3_7_1_t #branch for loop 1
                  and          a3, t4, a1
                  addi         a1, zero, 1 #init loop 0 counter
                  xori         t3, a1, 1784
                  sltiu        s11, t3, -1408
                  ori          t0, a4, 2024
                  slti         gp, t2, 1227
                  addi         s5, zero, 17 #init loop 0 limit
                  lui          zero, 793343
                  slli         s4, s11, 24
sub_3_9_0_t:      slt          a0, s3, a5
                  ori          t2, a1, 235
                  srli         s0, a2, 28
                  srai         a7, a6, 30
                  nop
                  srli         t6, a4, 19
                  srai         tp, s10, 19
                  and          s9, s2, t6
                  srai         t2, t0, 13
                  add          t5, s9, s4
                  addi         a1, a1, 8 #update loop 0 counter
                  sll          a0, s11, a7
                  xor          ra, t5, a3
                  bne          a1, s5, sub_3_9_0_t #branch for loop 0
                  sltu         s8, a2, sp
                  addi         s11, zero, -8 #init loop 0 counter
                  addi         s0, zero, -16 #init loop 0 limit
                  srl          gp, t1, s8
                  add          a0, t0, s7
sub_3_23_0_t:     slt          t6, s10, a2
                  addi         s11, s11, -8 #update loop 0 counter
                  beq          s11, s0, sub_3_23_0_t #branch for loop 0
                  srli         a4, sp, 13
                  addi         s2, zero, -1 #init loop 1 counter
                  addi         s8, t3, -533
                  slt          tp, t6, a7
                  sub          a4, a5, t0
                  or           a4, a0, s9
                  addi         t4, zero, -13 #init loop 1 limit
                  and          sp, s6, a7
                  slti         sp, t4, 1875
                  addi         a4, a7, -1279
                  sub          a2, a0, sp
                  sltiu        s5, s7, -387
sub_3_21_1_t:     xori         s1, s0, 829
                  sll          s1, t3, t1
                  addi         s2, s2, -2 #update loop 1 counter
                  addi         a1, zero, 10 #init loop 0 counter
                  lui          gp, 73792
                  sub          s5, s3, t2
                  addi         t6, ra, 30
                  addi         s9, zero, 15 #init loop 0 limit
sub_3_21_0_t:     auipc        s1, 661543
                  nop
                  addi         a1, a1, 5 #update loop 0 counter
                  sltiu        t3, tp, -1550
                  blt          a1, s9, sub_3_21_0_t #branch for loop 0
                  auipc        a2, 120899
                  lui          a6, 606720
                  xor          zero, s3, tp
                  beq          s2, t4, sub_3_21_1_t #branch for loop 1
                  auipc        t3, 825011
                  addi         s5, zero, 0 #init loop 1 counter
                  add          a1, tp, s7
                  sltiu        ra, s4, 1972
                  xor          t3, t2, t2
                  addi         t2, zero, 11 #init loop 1 limit
sub_3_2_1_t:      add          s3, t3, sp
                  sltiu        a0, s9, 518
                  addi         s5, s5, 4 #update loop 1 counter
                  auipc        gp, 953859
                  addi         sp, zero, 4 #init loop 0 counter
                  sltu         a3, t4, s5
                  addi         a4, zero, -20 #init loop 0 limit
sub_3_2_0_t:      auipc        t4, 540887
                  addi         sp, sp, -5 #update loop 0 counter
                  and          s1, s0, s6
                  bge          sp, a4, sub_3_2_0_t #branch for loop 0
                  blt          s5, t2, sub_3_2_1_t #branch for loop 1
                  auipc        zero, 327148
                  addi         t6, zero, -3 #init loop 1 counter
                  addi         sp, zero, 18 #init loop 1 limit
sub_3_8_1_t:      auipc        a3, 231774
                  addi         t6, t6, 7 #update loop 1 counter
                  addi         s6, zero, 9 #init loop 0 counter
                  addi         a7, zero, 15 #init loop 0 limit
                  srl          t3, a7, t0
sub_3_8_0_t:      andi         a4, s9, 460
                  slti         s9, s3, -1772
                  addi         s6, s6, 6 #update loop 0 counter
                  beq          s6, a7, sub_3_8_0_t #branch for loop 0
                  blt          t6, sp, sub_3_8_1_t #branch for loop 1
                  nop
                  addi         gp, zero, 3 #init loop 1 counter
                  xori         a2, s0, 2028
                  addi         t5, zero, 13 #init loop 1 limit
                  srl          a2, sp, s9
sub_3_19_1_t:     or           s1, zero, s11
                  srai         t3, gp, 13
                  addi         gp, gp, 10 #update loop 1 counter
                  srai         t0, s2, 24
                  addi         t6, zero, 2 #init loop 0 counter
                  or           sp, a6, t0
                  addi         s4, zero, -11 #init loop 0 limit
                  sub          a1, sp, zero
sub_3_19_0_t:     slti         s9, s10, -161
                  addi         t6, t6, -7 #update loop 0 counter
                  add          s6, a1, ra
                  bge          t6, s4, sub_3_19_0_t #branch for loop 0
                  nop
                  srli         t4, gp, 17
                  beq          gp, t5, sub_3_19_1_t #branch for loop 1
                  slt          a0, gp, tp
                  addi         a4, zero, -2 #init loop 1 counter
                  sra          t0, t5, s6
                  xor          t6, s6, s3
                  addi         t3, zero, -17 #init loop 1 limit
sub_3_5_1_t:      or           s4, s6, t5
                  addi         a4, a4, -9 #update loop 1 counter
                  sll          a7, s10, t6
                  addi         s0, zero, -6 #init loop 0 counter
                  add          a2, gp, s6
                  addi         s10, zero, -6 #init loop 0 limit
sub_3_5_0_t:      lui          a7, 428079
                  addi         s0, s0, -1 #update loop 0 counter
                  xori         zero, gp, 1983
                  bge          s0, s10, sub_3_5_0_t #branch for loop 0
                  bge          a4, t3, sub_3_5_1_t #branch for loop 1
                  slti         a1, a2, 18
                  addi         gp, zero, -1 #init loop 1 counter
                  srl          t2, s11, s0
                  srai         t6, sp, 25
                  addi         t4, zero, 20 #init loop 1 limit
                  sub          s9, a1, gp
sub_3_12_1_t:     sltiu        s11, gp, 393
                  addi         a1, s7, 552
                  sll          s8, t3, t0
                  or           t3, s6, t3
                  addi         gp, gp, 7 #update loop 1 counter
                  addi         s1, zero, -10 #init loop 0 counter
                  slli         a2, s9, 29
                  addi         tp, zero, -19 #init loop 0 limit
                  add          a0, gp, s1
sub_3_12_0_t:     and          a4, s5, a7
                  addi         s1, s1, -9 #update loop 0 counter
                  bne          s1, tp, sub_3_12_0_t #branch for loop 0
                  auipc        ra, 426052
                  bne          gp, t4, sub_3_12_1_t #branch for loop 1
                  xori         s5, s6, -414
                  addi         t3, zero, 6 #init loop 0 counter
                  and          s8, a2, s3
                  addi         s6, zero, 14 #init loop 0 limit
                  xori         sp, a3, 1698
sub_3_13_0_t:     xor          s5, t2, t6
                  sra          t4, ra, t4
                  slt          t0, t3, a5
                  auipc        ra, 965672
                  sub          t0, s2, a5
                  addi         t3, t3, 8 #update loop 0 counter
                  srai         s9, a3, 6
                  lui          sp, 412606
                  bne          t3, s6, sub_3_13_0_t #branch for loop 0
                  lui          zero, 204247
                  addi         a1, zero, 3 #init loop 0 counter
                  or           s10, s9, s4
                  auipc        a3, 855480
                  addi         t5, zero, 3 #init loop 0 limit
                  sltiu        s6, s3, 409
                  slti         ra, s5, 893
                  ori          ra, a1, -1491
sub_3_24_0_t:     add          t2, s2, s6
                  addi         a1, a1, -2 #update loop 0 counter
                  xor          s6, t1, a1
                  andi         t6, s1, -137
                  srai         s4, a2, 22
                  add          s10, s8, s7
                  and          gp, s11, a6
                  sub          t3, tp, t1
                  add          s3, t4, s9
                  xori         zero, s7, -662
                  or           s9, s7, sp
                  and          s10, a0, s7
                  sra          tp, s9, a6
                  sltu         s8, s7, t4
                  slt          s0, s7, s6
                  xori         s4, s5, -1314
                  andi         a7, s1, 617
                  and          t3, sp, a4
                  bgeu         a1, t5, sub_3_24_0_t #branch for loop 0
                  nop
                  addi         s10, zero, 9 #init loop 0 counter
                  nop
                  slt          a6, s1, t4
                  addi         a2, zero, -18 #init loop 0 limit
sub_3_20_0_t:     slt          s2, s4, a7
                  xor          s6, zero, s2
                  addi         s10, s10, -9 #update loop 0 counter
                  bge          s10, a2, sub_3_20_0_t #branch for loop 0
                  sub          a3, s11, t2
                  addi         s4, zero, 8 #init loop 0 counter
                  ori          s10, t2, -378
                  srli         s3, t6, 30
                  addi         gp, zero, 8 #init loop 0 limit
sub_3_15_0_t:     sub          s3, s3, t0
                  sub          tp, s8, s7
                  addi         s4, s4, -6 #update loop 0 counter
                  sll          sp, s8, a0
                  bgeu         s4, gp, sub_3_15_0_t #branch for loop 0
                  add          a0, s5, t1
                  srai         gp, s11, 16
                  addi         t6, s1, -649
                  sub          a7, a1, zero
                  srl          a6, a3, s2
                  slli         s6, a1, 30
                  sra          s10, a3, t0
                  ori          a1, t0, 718
                  slti         t5, s4, 447
                  bltu         gp, s11, 27f
                  sll          a4, t0, sp
                  bltu         s0, t5, 21f
                  bne          t1, t6, 23f
                  or           tp, s3, s5
                  sub          gp, a3, s11
                  and          a4, a5, zero
                  or           a1, s6, t1
                  nop
                  slli         a0, t1, 4
                  slli         ra, t0, 15
                  srli         sp, t4, 25
                  sra          t2, s2, s7
21:               nop
                  xor          ra, a7, ra
23:               slt          t5, a7, zero
                  sll          tp, t1, s8
                  auipc        t3, 625014
                  addi         a2, t4, -578
27:               sltu         s4, t5, s3
                  bge          s8, a7, 43f
                  srl          a0, a2, s4
                  nop
                  addi         s11, a1, -1475
                  srl          t3, a6, t2
                  bgeu         a6, s9, 44f
                  sra          t2, s4, ra
                  srai         sp, t4, 23
                  blt          a6, s7, 55f
                  srl          tp, t0, t6
                  and          a6, s6, ra
                  sll          zero, a6, s9
                  slt          t4, t0, s6
                  sll          t4, a2, t5
                  sltiu        t4, t5, 779
43:               bgeu         s9, s7, 54f
44:               ori          a1, s11, 2026
                  sra          a7, s2, a3
                  sll          a7, a5, a0
                  slti         ra, s0, -403
                  bgeu         s7, s7, 60f
                  xor          s4, a4, s5
                  xori         t6, s11, 784
                  sub          a1, s7, t3
                  auipc        zero, 266135
                  srli         t5, a7, 25
54:               srli         s9, t5, 21
55:               sll          tp, t6, a2
                  bge          a6, s1, 60f
                  srl          a3, tp, s4
                  sltu         ra, a3, s9
                  or           a1, s11, sp
60:               bgeu         s5, a7, 80f
                  sltu         t2, t1, s7
                  and          sp, s6, t1
                  sra          gp, s1, zero
                  xor          s5, a2, s6
                  sra          s0, s0, s3
                  srli         a7, a7, 13
                  nop
                  sltu         s5, a1, a3
                  sub          s8, t6, s0
                  ori          a1, t2, 977
                  auipc        s4, 343697
                  srli         a2, t4, 7
                  addi         s3, tp, -103
                  andi         s4, a4, -2012
                  and          t3, s1, t5
                  blt          s6, s9, 94f
                  sll          a3, zero, s4
                  bne          a7, a7, 97f
                  blt          t4, tp, 95f
80:               bltu         s7, t4, 99f
                  sltu         t2, s8, a1
                  srli         s10, s10, 24
                  srl          t2, t1, s8
                  sub          s11, s6, a2
                  beq          a6, s0, 104f
                  add          a0, ra, a0
                  sltiu        s9, s3, 743
                  addi         s3, a1, -23
                  bgeu         s7, s10, 102f
                  bne          s10, a0, 102f
                  srl          a7, s6, ra
                  srai         t4, s7, 2
                  srli         s3, t0, 18
94:               xor          s8, s4, a4
95:               and          a0, s1, t1
                  srai         s2, s11, 1
97:               sltiu        t3, t0, 616
                  ori          tp, s7, 44
99:               srli         a4, s11, 22
                  bge          s11, s11, 115f
                  xori         a4, t6, -1584
102:              andi         t4, t3, -881
                  bltu         t6, t0, 121f
104:              srli         t4, s3, 9
                  andi         s6, a5, -1514
                  sll          s6, a6, t6
                  xor          s9, a2, s2
                  sltiu        s1, s8, 1223
                  add          s9, t6, s11
                  auipc        s2, 543099
                  srai         t5, zero, 18
                  xor          s5, s5, sp
                  sltu         t6, s7, s8
                  sltu         zero, a2, a7
115:              bltu         a2, t6, 126f
                  sll          a4, a0, s10
                  xori         t5, t4, 766
                  bgeu         s3, gp, 127f
                  beq          s10, a1, 121f
                  xori         s11, t0, 1047
121:              srl          a2, t1, s8
                  lui          s1, 535931
                  ori          a3, t4, 1046
                  xor          a4, t2, a2
                  add          t5, t5, a6
126:              srl          zero, t0, t2
127:              sra          ra, a3, a5
                  srl          sp, s7, s10
                  and          s2, s11, s2
                  addi         s2, s0, 11
                  bne          s2, s5, 132f
132:              addi         gp, s1, -1343
                  or           t2, s5, a6
                  ori          s11, s8, 1169
                  or           s10, s2, s9
                  addi         a7, zero, 10 #init loop 0 counter
                  auipc        s1, 322973
                  addi         s3, zero, 17 #init loop 0 limit
                  auipc        a6, 531247
                  sub          tp, a1, s10
                  add          a2, t6, t1
                  ori          s10, s0, 1483
                  sltiu        gp, a7, 369
sub_3_3_0_t:      slti         s9, s6, -942
                  slt          gp, t3, a0
                  add          a2, s6, s11
                  sltiu        t3, a5, 166
                  addi         a7, a7, 10 #update loop 0 counter
                  srl          zero, t4, t4
                  slt          s6, a7, t5
                  slti         t3, s0, -449
                  auipc        t4, 411904
                  sll          zero, s4, s8
                  sra          s10, tp, a1
                  sltiu        s6, a1, 1334
                  srai         ra, t6, 4
                  bltu         a7, s3, sub_3_3_0_t #branch for loop 0
                  srli         t3, t4, 6
                  bge          s6, a5, 147f
                  slti         a3, s5, -1671
                  add          a3, s11, a5
                  srai         ra, a1, 6
                  bge          s2, s7, 145f
                  bltu         s3, t1, 161f
                  andi         t5, s11, 1092
                  ori          s8, a0, 869
                  srl          t2, s2, a1
145:              xori         s6, s6, -74
                  nop
147:              srl          s1, a1, t6
                  xor          t4, s4, a2
                  slli         s5, t1, 6
                  bgeu         a4, tp, 157f
                  bgeu         s1, t4, 159f
                  blt          t5, a7, 164f
                  sltu         t5, sp, t1
                  addi         a7, ra, -1846
                  bgeu         zero, ra, 169f
                  ori          t2, s0, -357
157:              blt          a0, a6, 169f
                  auipc        s3, 441033
159:              lui          sp, 433806
                  sub          t6, a2, a2
161:              srli         t3, ra, 0
                  bne          s9, a0, 180f
                  ori          tp, s9, -1591
164:              blt          a3, s8, 175f
                  and          t2, s4, ra
                  slti         s0, a7, 847
                  xor          s0, s7, t1
                  beq          a2, sp, 187f
169:              addi         t3, t1, 338
                  sll          zero, gp, t4
                  sltu         s10, a4, a5
                  bltu         t6, a3, 192f
                  or           s2, a3, t1
                  ori          s0, t3, -658
175:              sra          a6, t1, s11
                  auipc        a4, 380092
                  srai         s8, s10, 0
                  auipc        a1, 410279
                  addi         s4, a6, -1287
180:              lui          t0, 519394
                  lui          t0, 514744
                  lui          t6, 493338
                  xori         sp, s8, -1572
                  bne          a1, s7, 203f
                  slti         tp, a5, 1653
                  sub          t2, tp, t3
187:              add          ra, a5, t0
                  bge          t5, gp, 200f
                  auipc        s3, 386328
                  addi         s9, zero, 4 #init loop 0 counter
                  srl          a3, s3, a1
                  xori         a4, s2, 58
                  sltiu        t5, a1, -349
                  andi         s4, a0, -2032
                  srai         s5, s3, 11
                  slt          s2, ra, zero
                  lui          t0, 962345
                  sub          s0, s2, s0
                  nop
                  sltu         a7, a2, t0
                  srai         s0, t3, 18
                  lui          a1, 388064
                  ori          tp, a4, 954
                  sltiu        a4, s2, 2045
                  addi         t3, zero, -5 #init loop 0 limit
sub_3_16_0_t:     or           t5, t0, a0
                  slti         ra, a3, 116
                  addi         s9, s9, -5 #update loop 0 counter
                  srl          s0, s5, t6
                  xori         s1, a0, 945
                  add          a7, s3, t4
                  bge          s9, t3, sub_3_16_0_t #branch for loop 0
                  slt          a3, t5, a7
                  xor          s9, s3, s2
                  auipc        s2, 482250
192:              ori          t0, ra, 1229
                  srai         s1, s1, 18
                  xor          gp, s9, s4
                  srl          s5, s11, s1
                  beq          a5, a3, 198f
                  auipc        a0, 233953
198:              auipc        sp, 409254
                  slti         t2, a1, -1288
200:              and          s2, ra, ra
                  sltiu        s9, s2, 661
                  andi         s1, sp, 716
203:              and          t6, tp, gp
                  nop
                  bne          a3, a1, 219f
                  blt          a1, s3, 210f
                  slt          tp, s0, s8
                  slli         a4, a4, 10
                  nop
210:              sltiu        t5, s3, -2015
                  bltu         s0, s9, 231f
                  addi         s0, s8, 1911
                  sll          ra, s0, a0
                  xor          t5, a6, a2
                  slt          s4, s2, s9
                  srli         s6, t3, 19
                  beq          a0, gp, 218f
218:              lui          s8, 706776
219:              xor          s10, s9, a4
                  bgeu         s0, s4, 232f
                  or           s1, a5, ra
                  nop
                  srli         a0, s4, 12
                  andi         zero, t6, 343
                  bltu         s9, a4, 236f
                  srai         t2, a6, 24
                  sltiu        a0, t3, -1207
                  bgeu         s8, t3, 243f
                  nop
                  slli         a2, s6, 7
231:              xor          a3, zero, a0
232:              slt          t4, s2, s7
                  nop
                  nop
                  xori         s0, a2, -1816
236:              bltu         a3, s3, 248f
                  srli         gp, s8, 20
                  slli         s11, t6, 11
                  andi         t2, ra, 1198
                  bltu         a3, s6, 259f
                  bge          a0, tp, 252f
                  slti         t0, gp, 1726
243:              sltu         a2, s4, a0
                  nop
                  bge          s4, s0, 250f
                  and          a4, s6, s7
                  xor          s9, t4, a7
248:              sltu         t3, s4, tp
                  slti         gp, tp, -1210
250:              sltu         s3, t2, t1
                  srl          s0, a0, a1
252:              srai         s5, s8, 25
                  beq          ra, s2, 264f
                  ori          s2, s10, -1701
                  beq          a6, a2, 264f
                  bge          a1, s5, 275f
                  nop
                  sra          a1, a1, ra
259:              or           a0, s7, s7
                  blt          s3, a3, 278f
                  slti         t5, zero, -1950
                  sra          ra, s6, a1
                  xor          sp, t5, tp
264:              add          a6, s10, t1
                  slli         a7, s7, 18
                  srai         s6, t3, 12
                  bgeu         ra, s4, 274f
                  slti         sp, t4, 1420
                  blt          s2, a2, 288f
                  xori         s2, a2, 734
                  bge          s0, t6, 282f
                  slti         a1, s4, 1948
                  nop
274:              slli         s3, s9, 6
275:              bge          t6, a0, 288f
                  srl          tp, s9, s3
                  sll          s11, s6, a3
278:              bltu         a0, a1, 286f
                  nop
                  and          s11, s3, a5
                  auipc        s6, 860242
282:              or           a3, a3, s7
                  beq          t6, s1, 299f
                  srli         a0, tp, 31
                  sra          s5, t0, a7
286:              slli         s9, gp, 4
                  blt          s11, sp, 302f
288:              bge          a5, s4, 300f
                  bne          a7, t4, 302f
                  bge          s5, sp, 309f
                  beq          s7, s6, 302f
                  addi         t0, zero, -10 #init loop 1 counter
                  srai         a6, s4, 16
                  addi         a0, zero, -1 #init loop 1 limit
                  addi         t4, s3, -1375
                  xor          gp, t0, t4
                  ori          sp, t3, -722
sub_3_22_1_t:     slti         a6, a0, 1214
                  sub          t4, gp, t5
                  addi         t0, t0, 3 #update loop 1 counter
                  addi         s6, zero, 8 #init loop 0 counter
                  slli         sp, a0, 10
                  addi         t2, zero, 11 #init loop 0 limit
sub_3_22_0_t:     nop
                  auipc        s10, 707441
                  xori         a6, a6, -1875
                  addi         s6, s6, 5 #update loop 0 counter
                  xor          s3, a1, zero
                  srl          s1, s5, s11
                  andi         tp, a5, -1372
                  sltu         t5, t1, a6
                  bltu         s6, t2, sub_3_22_0_t #branch for loop 0
                  xori         t6, gp, 1920
                  xori         a2, a5, -483
                  or           s1, t3, gp
                  slti         t4, t1, 1127
                  blt          t0, a0, sub_3_22_1_t #branch for loop 1
                  sll          t4, t6, a2
                  bgeu         ra, a2, 307f
                  nop
                  bge          s2, a1, 306f
                  sll          ra, s7, s5
                  auipc        gp, 148118
                  andi         tp, s7, 821
                  sll          t6, sp, zero
299:              auipc        tp, 220258
300:              auipc        s5, 743793
                  slt          zero, tp, s4
302:              ori          s11, s1, -953
                  sub          a2, s0, s9
                  addi         t4, zero, -2 #init loop 0 counter
                  srl          s10, s1, s3
                  sra          a6, t3, ra
                  or           s4, a5, s5
                  xor          s2, s11, s2
                  slti         s9, s2, 1864
                  add          s6, s10, a0
                  sra          s10, t0, s6
                  ori          a1, s3, -840
                  addi         s10, s3, -1668
                  add          zero, s8, a5
                  and          tp, a0, t6
                  addi         s11, zero, -20 #init loop 0 limit
                  sra          a2, t3, s4
sub_3_0_0_t:      and          t5, s5, s2
                  sltiu        s6, zero, -1481
                  addi         t4, t4, -1 #update loop 0 counter
                  srl          s0, a2, tp
                  add          t2, tp, a3
                  srai         s4, a6, 1
                  sub          t0, s7, a3
                  slti         a7, t2, 1467
                  lui          a1, 973162
                  slti         s6, t1, -1061
                  bne          t4, s11, sub_3_0_0_t #branch for loop 0
                  andi         tp, gp, 672
                  srai         a0, s10, 10
                  bltu         t3, t5, 319f
306:              or           s8, a2, s6
307:              ori          t4, s2, -690
                  sltiu        zero, t2, 1021
309:              sll          t6, a2, s11
                  srl          a4, zero, s11
                  xori         t5, s7, 176
                  sll          a4, s4, t6
                  srli         t4, ra, 5
                  beq          ra, ra, 316f
                  lui          s0, 549812
316:              xor          s0, s10, s2
                  bgeu         s6, zero, 328f
                  or           t2, tp, t0
319:              sra          s4, a1, a3
                  slt          s9, sp, a4
                  blt          s4, zero, 336f
                  nop
                  bgeu         t5, a0, 335f
                  bge          gp, a7, 328f
                  bgeu         t1, t1, 336f
                  andi         sp, s11, 355
                  bltu         a4, s11, 334f
328:              srl          zero, a7, a7
                  and          a4, s10, a5
                  srai         s8, s9, 18
                  beq          s6, s11, 351f
                  bltu         zero, s10, 348f
                  srai         tp, t5, 7
334:              bltu         a5, a3, 353f
335:              addi         a0, s5, 1808
336:              bltu         s2, t5, 347f
                  slti         t2, sp, -236
                  sll          t5, s10, t2
                  slli         a1, t3, 11
                  sltu         s11, a7, gp
                  or           a4, s5, t2
                  beq          s1, s9, 361f
                  auipc        a2, 212967
                  slli         a6, s1, 3
                  xori         s5, t5, -1355
                  sltu         a0, t1, s6
347:              beq          a0, s9, 352f
348:              auipc        s9, 303306
                  andi         t3, a0, -705
                  auipc        a1, 214693
351:              lui          tp, 103224
352:              bltu         a6, s11, 370f
353:              sra          s5, s2, a0
                  addi         s5, a4, 75
                  ori          s6, s3, -643
                  sub          s9, s11, ra
                  bltu         a3, s10, 376f
                  xor          s2, a1, t3
                  sub          a0, a7, a6
                  bgeu         sp, s1, 361f
361:              addi         t2, gp, 997
                  srl          ra, zero, s9
                  or           t4, t5, a7
                  auipc        t2, 643257
                  sltu         s3, a4, t3
                  andi         a1, t0, 27
                  sltu         ra, s10, s11
                  slt          t0, s8, t6
                  sltiu        t3, s3, 132
370:              nop
                  and          gp, a5, t6
                  sltiu        a0, t6, 1304
                  xor          s11, s1, a3
                  slt          a1, s0, a1
                  srl          s5, a2, t6
376:              xori         a3, a7, -2035
                  bgeu         s11, a3, 396f
                  sra          gp, s4, ra
                  sltiu        sp, a2, 1628
                  or           a7, a1, s0
                  sll          s6, s10, s9
                  xori         s4, s5, 136
                  andi         t4, t3, 13
                  xor          a6, s9, t2
                  slt          a3, a3, zero
                  addi         a6, s0, -447
                  sll          s3, t2, s7
                  andi         a2, a1, -197
                  srl          t4, t6, a1
                  ori          a3, t0, 1295
                  slt          t0, s0, s7
                  and          t6, sp, t6
                  auipc        s6, 428613
                  sub          tp, a4, t0
                  addi         t2, a0, 1996
396:              blt          a7, a1, 408f
                  blt          s1, a6, 417f
                  sltiu        zero, sp, -1710
                  add          s1, t0, s5
                  sra          a1, a1, a2
                  srl          t2, a4, zero
                  blt          s8, t2, 411f
                  srai         s2, s0, 12
                  bltu         s0, s2, 412f
                  bgeu         s8, a7, 416f
                  srli         s6, s3, 21
                  sltu         t3, t0, a1
408:              bgeu         tp, s6, 426f
                  auipc        t2, 886040
                  sltiu        a7, s2, -1486
411:              beq          tp, a2, 415f
412:              bne          a0, ra, 423f
                  sub          a7, a2, t5
                  lui          ra, 496203
415:              xori         s10, a5, 849
416:              sltu         t2, s9, s0
417:              or           s5, t1, s10
                  slti         s11, a7, -1624
                  sub          t2, ra, a4
                  srai         a0, gp, 0
                  srai         zero, a5, 29
                  lui          t5, 132114
423:              lui          t6, 995872
                  blt          s1, s6, 429f
                  bltu         t0, s4, 445f
426:              sltu         s1, a1, t3
                  or           t4, a5, a5
                  sltu         t2, s11, a7
429:              slli         s1, a2, 0
                  bgeu         a0, s6, 441f
                  slli         t2, t1, 27
                  slt          zero, s5, t4
                  or           t4, s0, ra
                  bgeu         a6, a5, 435f
435:              slli         s11, s6, 8
                  sra          tp, s2, s11
                  slli         s5, a7, 7
                  bge          s8, ra, 454f
                  ori          zero, gp, 1928
                  slli         s6, s0, 10
441:              lui          t3, 440747
                  srli         a3, a1, 26
                  or           t3, s11, s7
                  addi         tp, zero, 9 #init loop 0 counter
                  andi         t5, t5, -775
                  addi         s9, zero, 9 #init loop 0 limit
                  sltiu        t3, t6, 903
                  nop
                  sltu         a2, s7, t4
sub_3_10_0_t:     xori         t6, s5, 310
                  srli         zero, s6, 13
                  addi         tp, tp, -8 #update loop 0 counter
                  slt          s6, a5, a7
                  srai         t3, s3, 22
                  sll          a4, ra, s0
                  bgeu         tp, s9, sub_3_10_0_t #branch for loop 0
                  sltu         a0, gp, s1
                  sub          a3, s8, s2
445:              slt          s5, a2, s3
                  bge          sp, s8, 465f
                  lui          s6, 399559
                  sll          a0, s1, s1
                  sub          s8, gp, s11
                  addi         s5, zero, 6 #init loop 0 counter
                  sll          zero, s0, a3
                  slli         tp, s3, 1
                  addi         t4, zero, 8 #init loop 0 limit
                  xori         sp, t5, 1112
sub_3_18_0_t:     slti         a2, t5, -354
                  ori          sp, s7, -1310
                  addi         s5, s5, 2 #update loop 0 counter
                  sub          zero, t1, s11
                  sltu         tp, t5, s1
                  add          s1, a2, t2
                  srl          a6, t3, a6
                  bne          s5, t4, sub_3_18_0_t #branch for loop 0
                  srl          s8, t3, a5
                  sub          s6, s3, t5
                  sll          t5, a2, a4
                  addi         a6, a7, -689
                  beq          t5, tp, 467f
454:              and          t2, a6, s1
                  bne          t4, a2, 470f
                  addi         a3, t0, 1060
                  beq          t6, a2, 476f
                  nop
                  bne          s1, s10, 477f
                  and          a7, a0, t1
                  slt          t2, s5, t1
                  or           s6, s4, t6
                  or           a0, a6, ra
                  and          a0, a4, s3
465:              srai         ra, s7, 30
                  or           tp, s5, s0
467:              slt          a2, a3, s4
                  nop
                  sub          t3, zero, t2
470:              srai         t6, zero, 25
                  sub          gp, a0, s8
                  slti         zero, t6, -357
                  andi         gp, ra, 62
                  xori         s2, t0, -1421
                  sll          zero, t2, t6
476:              bgeu         s0, a1, 489f
477:              srl          gp, t3, tp
                  slli         a0, t5, 25
                  slti         a4, s10, -407
                  slt          gp, s5, t0
                  srli         s1, a3, 29
                  andi         t4, a0, -561
                  lui          s6, 884550
                  srl          t5, t1, s10
                  slti         s1, zero, 1232
                  slt          s9, a0, s4
                  addi         t0, s2, 1322
                  sra          a1, s10, a7
489:              xori         a1, a0, -25
                  sll          a6, t4, gp
                  beq          s3, s3, 499f
                  srai         tp, s5, 6
                  ori          s1, s4, -1536
                  xor          ra, t2, t4
                  and          s0, t2, a7
                  sra          t0, t1, s0
                  sra          a4, s11, zero
                  sltiu        s10, t2, 1831
499:              and          s8, a5, s9
                  xori         a1, a6, -1015
                  bltu         t1, t5, 513f
                  slti         s4, s7, 1797
                  slt          t5, s2, sp
                  bne          s9, t4, 516f
                  sltu         t0, s3, s10
                  addi         a0, a5, 528
                  addi         a1, s3, 1924
                  add          s2, a7, s2
                  sra          s10, s1, ra
                  sra          a6, tp, s11
                  sub          zero, t4, a5
                  srai         s10, s8, 13
513:              srl          a2, s5, s1
                  lui          t2, 1210
                  slt          gp, s10, s2
516:              bltu         t3, s6, 528f
                  lui          a7, 14591
                  bne          s8, t6, 527f
                  sltu         s5, s8, t4
                  beq          s11, s6, 531f
                  andi         s4, tp, -837
                  lui          s3, 70921
                  bne          s8, a0, 542f
                  sub          t5, t2, t6
                  sra          gp, s2, gp
                  xori         t6, s7, -1009
527:              blt          a6, s8, 542f
528:              auipc        s1, 646520
                  slti         a0, s7, 889
                  ori          s0, t0, -617
531:              srai         s9, s10, 15
                  sltiu        zero, ra, 866
                  nop
                  sltiu        s6, s6, -946
                  xor          ra, a2, s4
                  bltu         a6, s8, 547f
                  bge          t1, a6, 556f
                  nop
                  xori         s11, s3, 1034
                  slt          s4, s9, s6
                  sra          a7, s5, t2
542:              and          s9, s7, s8
                  srl          ra, s5, s4
                  sub          t6, s6, t5
                  sra          a6, a3, s8
                  andi         s1, s10, 1298
547:              bge          s1, s11, 554f
                  sub          t5, a2, t4
                  srl          gp, s2, sp
                  xori         s9, tp, -1214
                  auipc        s0, 455420
                  nop
                  and          a0, s0, s10
554:              bne          s3, a5, 566f
                  or           a0, t0, a0
556:              add          a4, zero, zero
                  auipc        s5, 351020
                  ori          t2, t1, -324
                  sltiu        a1, s0, -976
                  and          a4, t1, a3
                  sub          a6, sp, sp
                  ori          t6, s11, -1891
                  andi         s9, s9, 1746
                  srl          s11, a2, t3
                  sub          zero, a1, s3
566:              sltiu        t0, sp, -1937
                  sltu         t2, s8, a2
                  bgeu         a0, s7, 570f
                  slti         a1, a2, -927
570:              lui          s10, 835989
                  slli         s4, zero, 22
                  slti         s9, s1, -1337
                  bgeu         t1, a0, 584f
                  auipc        s0, 651527
                  auipc        t6, 955026
                  bne          s2, a7, 595f
                  srl          a7, t3, s5
                  andi         t4, s4, -575
                  slt          s11, a6, s10
                  sll          sp, a0, a2
                  sltu         a0, s5, s5
                  auipc        a6, 160861
                  lui          tp, 673201
584:              andi         a3, t3, -1434
                  slli         a2, a3, 6
                  sltu         a7, ra, t5
                  auipc        s9, 328292
                  sub          s6, s8, a2
                  and          a6, t3, t4
                  xori         s8, s6, 1760
                  sub          s10, a7, a3
                  srli         sp, a3, 22
                  sltiu        t5, s3, -1577
                  srai         a7, s10, 10
595:              slli         a4, gp, 0
                  nop
                  ori          a1, a6, -515
                  nop
                  andi         t0, zero, 1608
                  sub          t3, t2, ra
                  sll          ra, t1, s8
                  addi         s10, s1, 216
                  addi         t4, tp, 78
                  srl          s3, a4, a0
                  and          s4, s5, a2
                  sub          a6, a6, a1
                  srli         a4, s2, 11
                  slti         s6, t1, -1442
                  ori          t4, s1, -1272
                  sub          tp, s9, s0
                  xori         a1, s7, -1926
                  ori          t2, t5, -771
                  xori         a7, t4, -1215
                  nop
                  srai         t5, s11, 8
                  and          s2, t4, s9
                  bne          s7, t6, 637f
                  nop
                  ori          t6, sp, -1599
                  auipc        s8, 846396
                  sll          s0, t5, a6
                  blt          s8, t2, 640f
                  and          a6, s8, gp
                  auipc        s9, 183003
                  beq          s8, s10, 644f
                  sltiu        s4, a1, -1069
                  addi         s1, s6, -1089
                  bne          s6, zero, 648f
                  sub          a6, a7, s7
                  bge          tp, t6, 649f
                  beq          gp, t2, 642f
                  srai         a1, a0, 3
                  add          s9, t5, s10
                  sltiu        sp, zero, -1738
                  srai         s4, t3, 5
                  slti         a7, s7, -1242
637:              sltu         s10, a3, ra
                  beq          a7, s9, 653f
                  xori         a4, a0, -1355
640:              sltu         s2, s0, a5
                  sra          a1, s10, zero
642:              beq          t5, t4, 649f
                  slti         s11, sp, -2033
644:              sub          t2, a4, t1
                  beq          a2, a3, 653f
                  blt          tp, t1, 665f
                  add          t2, s1, sp
648:              lui          s4, 754408
649:              bgeu         gp, t6, 661f
                  bltu         s3, zero, 669f
                  slli         zero, t5, 11
                  slt          t4, sp, a2
653:              srai         s5, a3, 20
                  sltu         a3, s1, t0
                  srai         a1, s3, 11
                  xor          a3, s5, zero
                  slti         s0, a7, 1078
                  add          a2, a4, t0
                  sltiu        a7, s3, 1950
                  beq          s4, s7, 679f
661:              sra          s6, s11, tp
                  slti         a2, a7, 832
                  addi         s0, s5, 1566
                  bgeu         t4, t2, 675f
665:              bgeu         s10, t0, 678f
                  or           s3, s6, a5
                  slti         t0, t6, 1650
                  blt          s8, t4, 682f
669:              bgeu         s6, t0, 681f
                  addi         sp, t4, 472
                  and          s5, sp, a6
                  ori          s3, t2, -861
                  andi         s6, s4, -1341
                  sra          s6, a3, s0
675:              sltu         s8, a4, t5
                  sra          s2, a1, t1
                  srl          s10, zero, s2
678:              addi         a7, s4, -1541
679:              bge          a1, t2, 690f
                  bne          s8, t3, 696f
681:              slt          t6, s11, t1
682:              bgeu         tp, t1, 683f
683:              bge          ra, t6, 685f
                  bgeu         s5, s9, 696f
685:              srl          t4, t4, s5
                  srai         a3, s11, 29
                  addi         s0, sp, -107
                  sll          a2, a6, t6
                  srl          s2, a2, a6
690:              sra          zero, t5, ra
                  srl          a4, s4, a2
                  slti         gp, s1, -101
                  blt          t0, s7, 704f
                  sltiu        sp, t6, 1780
                  xor          a4, t6, s5
696:              slt          gp, t1, t0
                  slt          t6, ra, s0
                  bltu         zero, t4, 716f
                  nop
                  srli         t0, s6, 19
                  bltu         s1, s0, 713f
                  andi         sp, s7, 1145
                  slti         a7, gp, 1950
704:              lui          s1, 147370
                  auipc        a0, 469716
                  srai         a7, t4, 19
                  beq          gp, sp, 722f
                  ori          tp, s10, 1696
                  slli         s5, s4, 28
                  or           a3, a0, zero
                  lui          a3, 38070
                  srai         s4, a6, 8
713:              bne          t4, t4, 724f
                  add          t5, t6, sp
                  andi         s8, a1, 1865
716:              bne          a5, t6, 725f
                  srai         gp, ra, 21
                  sltiu        s4, t5, -1744
                  bltu         tp, t3, 724f
                  addi         s1, a7, -1536
                  sub          a4, s4, s3
722:              xori         t2, zero, -1481
                  sltu         s6, t3, a7
724:              and          s4, s4, gp
725:              srl          s4, a1, t2
                  nop
                  slti         s6, t2, -1382
                  sltiu        sp, t1, 1190
                  add          s10, s9, s9
                  andi         s9, tp, 1973
                  or           s8, t5, a1
                  sltiu        s6, t4, -71
                  beq          zero, s6, 751f
                  and          s5, t2, s1
                  srl          ra, a4, s10
                  sub          s2, t5, a1
                  blt          s11, t5, 757f
                  sub          s3, t1, sp
                  bge          t3, a4, 743f
                  add          a1, s0, s8
                  nop
                  slti         t6, t5, 768
743:              xori         gp, s10, -572
                  or           s8, t0, t1
                  beq          t5, gp, 765f
                  sll          t2, a7, t3
                  bgeu         t1, s5, 762f
                  bgeu         ra, a4, 760f
                  bne          s4, a5, 753f
                  sltu         s6, s11, zero
751:              beq          s6, a6, 758f
                  addi         a2, t1, -236
753:              blt          ra, s6, 765f
                  slt          s3, a3, sp
                  bltu         s6, t1, 774f
                  and          t6, a2, s3
757:              addi         t4, s1, 1834
758:              add          t6, t1, a7
                  bltu         t6, t1, 767f
760:              xori         a1, a4, 1425
                  sll          s4, s10, a2
762:              slti         t0, s7, -1991
                  bltu         a4, sp, 772f
                  slt          s9, s8, s8
765:              sltu         s10, gp, s1
                  slti         s8, tp, 362
767:              bltu         s11, t4, 781f
                  sub          s6, a6, t2
                  and          s1, a0, s4
                  blt          sp, tp, 782f
                  sltu         s3, s1, s2
772:              blt          t0, s5, 788f
                  nop
774:              beq          a0, t2, 787f
                  or           sp, t5, zero
                  sll          s6, t1, s0
                  sll          a2, a6, a7
                  addi         t6, s10, -1730
                  or           s6, s11, a7
                  bgeu         s0, t1, 798f
781:              slt          t3, t6, a7
782:              ori          tp, a4, 1950
                  slt          a1, s4, t6
                  add          t2, s7, gp
                  sub          s1, s4, t2
                  andi         s10, a7, -95
787:              addi         a1, ra, -551
788:              auipc        tp, 432220
                  and          s4, t6, s5
                  sub          t4, s11, a5
                  blt          s6, s3, 792f
792:              slt          a3, sp, s3
                  beq          s10, s11, 804f
                  srai         s0, gp, 10
                  and          a4, tp, a3
                  bgeu         s1, a1, 816f
                  beq          a5, s4, 808f
798:              blt          t2, s5, 813f
                  sub          ra, a5, t6
                  slt          s10, s1, zero
                  beq          zero, a2, 803f
                  blt          a5, a3, 807f
803:              bne          t6, s2, 822f
804:              slti         sp, a6, -374
                  bne          a2, t4, 817f
                  slli         t3, t6, 3
807:              slli         zero, s10, 5
808:              blt          t1, t1, 819f
                  bge          s6, a7, 820f
                  bgeu         s10, s9, 821f
                  slti         t5, s5, -47
                  sll          sp, s1, a0
813:              addi         a1, s7, -1858
                  or           t0, s0, a5
                  sra          a6, t0, ra
816:              ori          s3, s11, 687
817:              bltu         a5, s5, 835f
                  srli         a7, s10, 16
819:              srli         s2, zero, 5
820:              srai         t2, s5, 10
821:              blt          a2, s2, 840f
822:              slli         gp, a3, 21
                  ori          t3, t6, 380
                  sub          s0, t4, s11
                  sltiu        a7, a6, -1776
                  slli         zero, s11, 11
                  and          a6, s8, sp
                  andi         a1, tp, 624
                  nop
                  sltiu        s0, t4, 584
                  slti         zero, t6, -12
                  xor          t3, s5, s6
                  addi         tp, s7, 1468
                  blt          t5, s7, 853f
835:              nop
                  bne          s6, t1, 855f
                  srl          s4, a0, t6
                  sub          s8, s9, a0
                  slli         sp, s8, 26
840:              beq          a4, a5, 851f
                  or           s3, gp, s0
                  srai         a6, a3, 16
                  addi         t5, a1, -433
                  slli         a1, gp, 8
                  auipc        a7, 721089
                  bne          s4, s5, 865f
                  andi         s1, a1, -610
                  sltu         a0, t0, t5
                  andi         s8, t5, 649
                  or           t6, a6, s0
851:              xori         tp, s1, 1283
                  bge          t0, sp, 863f
853:              sll          t6, t3, a1
                  add          s9, t3, a1
855:              bge          s7, s11, 857f
                  bgeu         t6, t4, 868f
857:              sra          gp, t4, t1
                  andi         s5, t0, 1647
                  or           t0, a3, s2
                  slli         t6, t0, 11
                  bge          t0, s10, 872f
                  sll          a2, a2, a4
863:              blt          tp, t5, 875f
                  sltu         s10, s4, s7
865:              andi         tp, t4, 611
                  bltu         a2, s8, 870f
                  bne          s6, a2, 885f
868:              auipc        gp, 764106
                  bltu         s8, gp, 888f
870:              lui          s3, 224684
                  sub          t2, s9, s2
872:              bge          s3, t0, 887f
                  nop
                  beq          s1, s9, 883f
875:              sub          t4, a2, t6
                  beq          t5, a6, 890f
                  slt          t5, s8, a3
                  slti         s2, s8, 545
                  add          a7, s2, t0
                  sra          a6, t3, a3
                  xor          a1, t1, s5
                  auipc        sp, 494736
883:              sltiu        t0, s10, -1585
                  sltu         t6, t3, a7
885:              and          t6, a7, s0
                  nop
887:              and          s1, s11, s4
888:              beq          s9, s1, 906f
                  sub          a6, a7, a4
890:              bne          s0, a6, 905f
                  andi         t5, a0, -860
                  sltu         t4, a4, s0
                  srl          s4, s5, t1
                  auipc        sp, 327989
                  ori          s0, s0, 1263
                  sltiu        a4, s1, -464
                  sll          s10, a6, s3
                  slti         t4, t5, 475
                  ori          a3, a5, -1753
                  sub          zero, a5, s11
                  or           s1, gp, s9
                  srli         s2, s4, 21
                  sub          a3, s8, s7
                  ori          s11, a3, -7
905:              andi         s10, s5, 1000
906:              bne          t5, a7, 917f
                  xor          a6, tp, s5
                  sll          a4, tp, t2
                  bge          a3, t3, 921f
                  xori         a4, a7, 602
                  nop
                  nop
                  srl          s4, s0, a7
                  add          t0, a6, a2
                  add          a1, s2, sp
                  and          s2, ra, gp
917:              srli         a3, s3, 0
                  addi         t6, t4, 1013
                  sll          a6, tp, t1
                  sll          s11, t5, tp
921:              slt          s3, s11, zero
                  bge          a0, t6, 935f
                  bne          s2, a0, 943f
                  sltiu        t0, a0, -1279
                  or           s10, s10, s0
                  slli         s4, s5, 13
                  slti         a7, a4, -1854
                  bne          tp, a3, 936f
                  or           a1, gp, t0
                  beq          t2, sp, 937f
                  sltu         gp, s3, s10
                  sltu         gp, s1, s5
                  auipc        t5, 75878
                  slli         a3, sp, 24
935:              slti         s6, t6, -1817
936:              ori          a7, s7, 342
937:              sll          s5, gp, a7
                  lui          s11, 756033
                  add          t0, s6, a2
                  sll          s9, a6, s11
                  sltu         s2, t0, t3
                  bltu         t6, t3, 954f
943:              xor          ra, a5, s6
                  srl          a7, s0, s3
                  or           a7, tp, a3
                  bgeu         tp, ra, 965f
                  bltu         s6, tp, 952f
                  slt          s6, a1, tp
                  xori         t6, zero, 1524
                  ori          gp, a2, 1266
                  add          s1, s7, tp
952:              sub          s10, ra, a2
                  addi         s6, a4, -503
954:              lui          s4, 396354
                  srai         s0, ra, 2
                  sub          t2, t1, sp
                  auipc        s1, 805049
                  blt          a1, zero, 959f
959:              bgeu         a7, s1, 979f
                  slt          zero, s2, a7
                  xor          sp, s4, t4
                  blt          t6, a2, 981f
                  sltu         s11, ra, s0
                  ori          t2, t1, -891
965:              andi         a6, t0, -210
                  andi         t0, a6, 151
                  ori          tp, a7, 1778
                  bgeu         t4, a5, 984f
                  slti         ra, tp, 1484
                  sra          s6, t1, s8
                  sub          s2, a0, tp
                  srai         t4, s6, 16
                  andi         s6, a3, 1484
                  sll          s8, t4, a5
                  auipc        a7, 462753
                  sub          a4, sp, s10
                  sltiu        t4, ra, -1228
                  and          gp, zero, a7
979:              slli         sp, a5, 21
                  add          s0, t0, t0
981:              sll          t2, a0, sp
                  add          sp, tp, s11
                  add          s10, a3, t4
984:              nop
                  bltu         a7, t2, 1004f
                  sra          s4, sp, zero
                  sub          s2, a2, s1
                  bltu         s4, t3, 999f
                  ori          s3, a5, 649
                  sub          s8, t6, ra
                  sub          s10, a7, t0
                  bgeu         t0, s6, 1004f
                  lui          gp, 303043
                  sltiu        a4, s5, 171
                  or           a7, a0, zero
                  sub          s6, s7, t6
                  andi         a0, a2, 132
                  slli         zero, tp, 1
999:              beq          a7, a4, 1000f
1000:             blt          s9, s7, 1019f
                  bge          s1, t1, 1013f
                  sltiu        zero, t3, -1926
                  srai         s6, s10, 14
1004:             slti         a2, s7, 901
                  addi         s6, t2, 1067
                  beq          sp, t6, 1014f
                  add          s1, s6, gp
                  sll          s11, a5, tp
                  and          s9, s4, s10
                  srl          s8, a0, s6
                  bltu         s7, t2, 1026f
                  beq          a6, t0, 1031f
1013:             or           sp, ra, a7
1014:             srl          a7, t3, ra
                  addi         zero, t5, 975
                  xor          a1, s11, t2
                  or           a7, s6, s0
                  sltu         a1, s5, t6
1019:             blt          a4, a1, 1038f
                  or           s8, s4, ra
                  sll          a6, t1, t5
                  sltu         zero, a0, s2
                  addi         s10, gp, 8
                  auipc        s11, 737309
                  and          gp, s7, a2
1026:             srai         t6, s6, 6
                  bltu         s4, s1, 1029f
                  addi         zero, s0, 897
1029:             slti         s6, t1, 93
                  blt          a5, gp, 1041f
1031:             or           a6, a7, a1
                  and          s6, a7, a5
                  add          s4, s6, t1
                  nop
                  sll          zero, t1, s1
                  ori          t0, a1, -1991
                  blt          s8, a5, 1046f
1038:             sub          s3, zero, ra
                  sub          a6, s3, ra
                  blt          s3, t4, 1058f
1041:             sra          zero, s3, a5
                  bgeu         zero, s6, 1053f
                  blt          s7, s10, 1054f
                  sltu         s0, a1, s0
                  sll          t0, a0, a5
1046:             and          t3, a6, a7
                  addi         t6, gp, -1765
                  ori          t6, s1, -1795
                  bge          s7, t6, 1064f
                  bne          s2, a4, 1064f
                  nop
                  sltu         a7, t2, gp
1053:             slli         a3, gp, 9
1054:             srai         a7, s10, 8
                  sll          s4, a2, sp
                  slt          a0, t3, sp
                  bne          t5, zero, 1076f
1058:             or           tp, t3, a3
                  sub          s11, s11, s11
                  sub          a3, s1, a4
                  srl          sp, a7, t1
                  andi         t6, s1, -1547
                  xor          a2, a7, t0
1064:             xori         a6, a0, 1330
                  and          s0, zero, s10
                  or           t5, a6, t3
                  andi         s2, tp, 876
                  xor          s1, s10, a7
                  or           s8, a1, s7
                  add          t0, s4, t5
                  srl          t3, a4, s8
                  srl          t2, s4, t3
                  srai         tp, a2, 12
                  and          a3, tp, t4
                  lui          a7, 599478
1076:             slti         a2, gp, 827
                  srli         s10, t5, 28
                  lui          t0, 236176
                  nop
                  bne          t5, a0, 1100f
                  srai         s10, s2, 21
                  blt          t5, tp, 1100f
                  bgeu         tp, t2, 1103f
                  nop
                  bne          t0, zero, 1096f
                  xor          s8, s2, s7
                  sltu         tp, s6, ra
                  bne          t1, a4, 1092f
                  ori          s9, t0, -1590
                  sub          s2, t4, t2
                  xor          a3, a7, s1
1092:             nop
                  auipc        gp, 805435
                  blt          a1, s5, 1106f
                  lui          s2, 286704
1096:             slti         a2, gp, -1010
                  bgeu         s9, s4, 1104f
                  srl          s1, t3, zero
                  lui          a4, 736751
1100:             slli         a6, t1, 13
                  sra          s4, s6, t0
                  blt          t1, s8, 1113f
1103:             ori          t3, s10, -271
1104:             slti         a3, s0, 1551
                  srl          t0, a2, t5
1106:             xor          a7, gp, s9
                  xori         tp, s3, -1158
                  add          s10, s6, t6
                  sltiu        s8, s0, -103
                  srai         a6, a2, 22
                  andi         s6, t3, 823
                  xori         s8, t4, 296
1113:             srl          t6, s2, s2
                  slti         tp, t4, 335
                  slti         s2, s3, -150
                  srai         sp, t2, 4
                  sra          s5, a4, a3
                  add          s1, a1, a4
                  sltu         t6, a1, s2
                  beq          zero, s8, 1139f
                  sra          s8, s0, s11
                  bne          t2, s2, 1127f
                  sub          t6, a6, a2
                  beq          s6, a1, 1140f
                  srli         s5, tp, 5
                  sll          t6, s5, s3
1127:             add          t6, a7, t6
                  slli         t5, sp, 7
                  slti         s6, a6, 412
                  bltu         s11, t4, 1143f
                  and          s11, a1, s6
                  blt          t6, s2, 1144f
                  addi         s4, t1, 1279
                  andi         s0, s4, 1510
                  blt          s9, a7, 1146f
                  beq          s7, a4, 1147f
                  or           s3, a5, s10
                  slti         s8, s7, 1206
1139:             and          s5, zero, t6
1140:             bgeu         ra, s7, 1159f
                  andi         zero, a1, -1096
                  add          t5, a4, a5
1143:             nop
1144:             lui          a6, 854903
                  auipc        s0, 1021180
1146:             sra          a7, s8, t4
1147:             xori         t4, s2, 629
                  lui          a7, 910794
                  add          s0, s3, a6
                  or           s5, t6, a6
                  ori          t4, t1, 125
                  add          gp, s8, s6
                  sltu         s1, tp, ra
                  srli         s4, t0, 13
                  and          a7, t0, s0
                  sra          zero, zero, a2
                  sll          a7, tp, s6
                  sltiu        s4, sp, 1754
1159:             nop
                  srl          s0, a7, t3
                  bltu         t2, a5, 1181f
                  sltu         a0, s4, ra
                  sltiu        s1, s9, 266
                  or           a3, s4, ra
                  bgeu         tp, s6, 1170f
                  bltu         t2, sp, 1168f
                  sll          s5, a2, t1
1168:             auipc        t6, 677597
                  slt          a0, t5, t4
1170:             andi         s4, a6, -1408
                  and          t3, gp, t6
                  srl          t3, a4, s10
                  slti         t0, a2, -1728
                  bgeu         a5, s0, 1175f
1175:             bgeu         s1, gp, 1186f
                  xor          a0, zero, s7
                  xor          s4, ra, s0
                  beq          s4, s11, 1194f
                  sltiu        a0, a5, 1641
                  bge          t4, s1, 1187f
1181:             xori         s10, s10, -1744
                  srli         t4, t3, 31
                  and          s1, t3, s2
                  slti         s11, t1, -1445
                  slli         a4, s9, 16
1186:             andi         s1, a3, 116
1187:             sra          s1, s3, ra
                  ori          t0, gp, -1873
                  xor          t4, t6, s9
                  blt          gp, t6, 1198f
                  addi         gp, gp, 210
                  sltiu        s11, gp, -322
                  bge          t0, gp, 1205f
1194:             srai         zero, a1, 11
                  add          gp, a3, a6
                  bne          s2, a4, 1215f
                  ori          a7, t4, 715
1198:             add          gp, s1, a0
                  srl          sp, t6, a5
                  blt          s9, a7, 1213f
                  beq          s7, sp, 1221f
                  auipc        a2, 400464
                  sltu         s4, s11, sp
                  xor          s3, s6, a0
1205:             beq          t6, a3, 1220f
                  srl          s8, a4, s2
                  and          tp, s9, a2
                  lui          s8, 800641
                  bge          t3, a0, 1224f
                  srli         t2, s0, 17
                  sltu         s11, t2, t1
                  srai         sp, zero, 3
1213:             slt          t5, s8, a6
                  blt          s8, a5, 1226f
1215:             srai         s0, s2, 7
                  xori         a1, sp, -116
                  sra          a6, s2, s8
                  srli         a7, a5, 16
                  addi         t6, t6, -500
1220:             bne          s11, s11, 1231f
1221:             sra          t4, gp, zero
                  sltu         s10, t5, s7
                  bne          s5, a4, 1242f
1224:             sltu         s11, a3, a1
                  bge          s6, s0, 1237f
1226:             blt          a7, a4, 1245f
                  bge          s2, a4, 1241f
                  bne          s5, s9, 1247f
                  addi         s1, s4, -1370
                  auipc        s9, 813126
1231:             srai         a3, a4, 27
                  slt          a1, s9, gp
                  or           s4, s3, a3
                  blt          a0, s2, 1238f
                  xori         t2, a7, -391
                  auipc        a1, 658316
1237:             srai         s5, gp, 25
1238:             lui          s9, 949038
                  sll          a0, s4, a2
                  xori         s8, zero, 24
1241:             srli         s5, s11, 1
1242:             xori         gp, t6, 628
                  sltu         s0, a0, s9
                  bgeu         zero, s5, 1256f
1245:             xor          s1, a3, t1
                  xor          tp, gp, sp
1247:             sltiu        s2, s2, 1812
                  nop
                  slt          gp, t6, s0
                  add          a1, s1, t6
                  sub          s1, zero, s6
                  slt          s2, a6, s7
                  beq          t0, s1, 1262f
                  lui          t2, 488320
                  xori         tp, t0, 1958
1256:             sltu         s0, a2, s9
                  bltu         tp, a0, 1271f
                  andi         t4, s9, -2048
                  nop
                  bne          a1, t6, 1271f
                  xor          s9, a4, a6
1262:             auipc        t4, 340078
                  add          sp, zero, a0
                  sra          s10, a1, s3
                  lui          sp, 993948
                  sltiu        a4, a3, -925
                  srli         s3, s0, 28
                  beq          sp, a1, 1271f
                  srli         s11, a5, 15
                  lui          s8, 187692
1271:             auipc        a4, 921240
                  srli         t2, s9, 29
                  srli         a3, t4, 19
                  ori          t0, a7, -217
                  ori          s4, a6, 1
                  lw           tp, 4(t1)
                  addi         t1, t1, 16
                  sltiu        zero, a4, -897
1769:             addi x1, x4, 0
1769:             jalr x1, x1, 0
sub_1:            sltiu        s11, a5, 1947
                  addi         t1, t1, -16
                  srl          s6, s8, s9
                  sltu         t5, t0, t5
                  andi         sp, s5, -1189
                  srai         a4, t4, 10
                  sw           tp, 4(t1)
                  add          a7, t3, a2
                  lui          t3, 419913
                  addi         t2, s3, -431
                  sub          t0, a4, t1
                  xor          t0, t2, a3
                  slt          s4, s1, s2
                  bne          s10, s1, sub_1_j3 #branch to jump instr
                  srli         t6, s7, 3
                  slti         s3, s0, 223
                  sltu         s10, s8, s0
                  auipc        t5, 119960
                  sub          s4, s9, t1
sub_1_j3:         jal          tp, sub_2 #jump sub_1 -> sub_2
                  sltu         s6, t3, t6
                  addi         t0, a6, -598
                  la           s2, sub_2
                  addi         s9, a0, 673
                  addi         s2, s2, 447
                  slti         zero, s7, 1681
                  bge          tp, a5, sub_1_j4 #branch to jump instr
                  add          s0, sp, zero
sub_1_j4:         jalr         tp, s2, -446 #jump sub_1 -> sub_2
                  addi         a6, zero, 8 #init loop 0 counter
                  add          sp, t0, t6
                  srai         a3, t2, 20
                  slt          sp, s9, t0
                  or           t6, t6, sp
                  ori          tp, sp, 215
                  sub          s9, s9, s2
                  addi         s11, zero, 10 #init loop 0 limit
                  nop
sub_1_0_0_t:      sltiu        a0, s2, 932
                  sll          t3, ra, s1
                  addi         a6, a6, 4 #update loop 0 counter
                  and          s0, s8, a2
                  xori         s8, a2, -1056
                  sll          t5, s0, t0
                  addi         a1, a6, -1767
                  addi         t0, gp, 705
                  xor          s4, s7, zero
                  slti         s3, t3, 617
                  slti         s1, a2, -12
                  ori          t0, s1, 2005
                  srli         s0, t1, 26
                  and          t3, s2, gp
                  slti         ra, a6, 510
                  bltu         a6, s11, sub_1_0_0_t #branch for loop 0
                  andi         s3, tp, 1639
                  addi         s0, zero, 7 #init loop 1 counter
                  addi         ra, zero, 7 #init loop 1 limit
sub_1_1_1_t:      slti         s1, t6, 277
                  addi         s2, s9, 1402
                  addi         s0, s0, -6 #update loop 1 counter
                  addi         a1, zero, 8 #init loop 0 counter
                  addi         t4, zero, 8 #init loop 0 limit
                  andi         tp, t6, 1317
                  lui          s1, 895607
sub_1_1_0_t:      sub          s6, ra, ra
                  sltu         t6, a4, s2
                  addi         a1, a1, -2 #update loop 0 counter
                  nop
                  bgeu         a1, t4, sub_1_1_0_t #branch for loop 0
                  bgeu         s0, ra, sub_1_1_1_t #branch for loop 1
                  sra          t2, s11, gp
                  lui          s10, 162063
                  or           zero, t6, s3
                  or           t6, zero, sp
                  xori         a1, sp, 166
                  sltiu        ra, a4, -2009
                  srai         a6, a6, 1
                  slti         a1, s3, -1937
                  addi         s0, s10, -90
                  srai         t6, t0, 17
                  andi         a0, s6, -193
                  add          a0, a2, ra
                  lui          t3, 943592
                  andi         t3, s7, -1185
                  or           tp, a3, ra
                  xori         sp, s8, 666
                  slt          t2, t0, a3
                  beq          a4, s1, 26f
                  sltu         a3, s6, t4
                  srai         gp, t6, 15
                  slti         s4, a2, -1447
                  bge          sp, s1, 31f
                  sub          s0, s0, a2
                  srl          t4, tp, t5
                  beq          s8, s3, 37f
                  srl          s0, a4, s10
                  add          a3, s7, a2
26:               sub          s11, t4, t6
                  xor          t4, s10, t0
                  bltu         t0, s7, 42f
                  sltu         a2, s8, ra
                  srl          zero, t6, gp
31:               srl          a3, s5, s3
                  andi         s2, a2, -79
                  add          s9, a7, t4
                  lui          s10, 737862
                  sra          a2, s0, t1
                  sra          a7, s10, a0
37:               srl          a7, t5, a1
                  bgeu         s7, t4, 54f
                  ori          gp, sp, 1204
                  ori          s6, tp, 1406
                  srl          s6, t3, a0
42:               addi         ra, a7, -269
                  bgeu         s8, a7, 45f
                  srli         a3, t4, 20
45:               srli         a7, sp, 7
                  srli         s0, t1, 3
                  beq          t4, s7, 62f
                  bgeu         a2, s10, 68f
                  bge          tp, s6, 55f
                  srai         s1, ra, 1
                  and          s11, t2, t0
                  srli         s4, t2, 11
                  nop
54:               and          gp, ra, a5
55:               auipc        zero, 869533
                  andi         s9, a4, -1644
                  sub          gp, s1, t6
                  sra          s5, s2, t1
                  xor          t6, s4, s0
                  bltu         t5, a7, 62f
                  sra          a6, t4, s6
62:               ori          a6, s11, 542
                  blt          t3, s5, 71f
                  lui          s10, 365790
                  srli         s6, a5, 27
                  and          s1, s0, tp
                  bge          s1, a7, 72f
68:               andi         a1, a0, 615
                  slt          t5, s6, s7
                  blt          ra, tp, 77f
71:               xori         gp, a2, -1931
72:               bge          s5, a3, 75f
                  bgeu         t0, t1, 85f
                  bgeu         s7, s2, 80f
75:               nop
                  bgeu         sp, a1, 89f
77:               srai         s10, t0, 22
                  srli         t5, sp, 27
                  andi         t2, a3, -379
80:               sub          sp, t1, a7
                  xori         s1, a7, 829
                  srli         t2, t1, 26
                  bgeu         a2, a2, 90f
                  lui          s2, 690967
85:               sll          s8, a4, s8
                  sltu         s8, s3, a6
                  sub          zero, a5, a3
                  sll          s0, tp, ra
89:               sub          a6, a1, t0
90:               lui          s9, 609309
                  srli         tp, s5, 5
                  ori          zero, s1, 982
                  ori          gp, s11, 1893
                  slti         s11, a6, -1964
                  blt          s6, a5, 110f
                  sub          s4, s0, s8
                  andi         a7, s2, 1150
                  bgeu         a7, a5, 112f
                  lui          gp, 1022866
                  addi         ra, t3, -78
                  sub          a4, sp, a3
                  sll          t0, t1, a3
                  blt          a6, a6, 113f
                  bge          a1, s4, 113f
                  srai         t5, t1, 16
                  auipc        t5, 925958
                  lui          t2, 261737
                  bltu         ra, s5, 110f
                  sra          s1, a3, t2
110:              srl          s4, t0, s3
                  lui          a6, 214089
112:              bltu         s7, gp, 113f
113:              slt          tp, s9, a1
                  lw           tp, 4(t1)
                  slt          s0, t2, s11
                  sub          a3, t2, t1
                  xor          a7, a1, a6
                  lui          t4, 141719
                  andi         t6, s11, 591
                  addi         t1, t1, 16
                  slli         s10, a5, 2
193:              addi x12, x4, 0
193:              jalr x12, x12, 0
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
.word 0x94c96248, 0x79f20a55, 0x4fd92b11, 0x1865ec6b, 0xaa4d01b4, 0x13f10e3e, 0x16cb2262, 0x8a72f7e3
.word 0x7684c06e, 0x11cbae3c, 0x52754166, 0x7be15a58, 0x5fdd7d18, 0x515ceba7, 0xbd05b85d, 0xb9f8fe60
.word 0xae4bf91c, 0x97d0f3ca, 0x3d01b19b, 0xc67f6dd5, 0x175e5110, 0xe869a0d4, 0x7c07451d, 0x41647bb3
.word 0x2563dcf2, 0x852cab34, 0xaf1d58d6, 0x01536d6e, 0x05b77d9d, 0x9c3e650e, 0xd2e71c9c, 0xd54061c5
.word 0x515c5408, 0x7e6a1667, 0xedd6c83d, 0x429d3cb3, 0xbc4746a8, 0xae8763b0, 0x804b12f9, 0x37463a63
.word 0x09007df2, 0xe6b91287, 0x75a362dc, 0xf13e3d3d, 0xeddbcc19, 0x5a1b3798, 0x8a22c048, 0xd2e79d63
.word 0xcdf5352a, 0xf7f201a4, 0x52c7c457, 0x733d8a6f, 0xec1fdf14, 0x3829951d, 0x89a41300, 0x143902a2
.word 0x23b4c953, 0xa84f8f9c, 0x5c02793b, 0x905ec71b, 0x69f04476, 0xd9287408, 0xe13dc0f4, 0x0dcd5dbe
.word 0xa80f53c6, 0x8379f43e, 0xb3c03a4f, 0x441feae1, 0xcf3a6388, 0x8d77a507, 0x98253d4e, 0x31099653
.word 0xc58876c3, 0x6ad73460, 0x0459c8b0, 0x45abc3fd, 0x0804d58c, 0x878563b6, 0xd7d62632, 0xb3f73089
.word 0xec8dd26d, 0xc3969fdd, 0x83f753f7, 0x0fca3a38, 0xc07b0879, 0xf7b032b5, 0x96f440cb, 0x011cfd76
.word 0x59154c8c, 0x118b4a7d, 0x880e9502, 0x532c1387, 0xcd4b3ebb, 0x28e9151a, 0xde21972b, 0x2f3ee52a
.word 0xedfaada6, 0x6394c87d, 0xd0a31371, 0xc447abd5, 0x4bafc787, 0x6447e769, 0xfc17a5e3, 0x5c8edfb2
.word 0xf1989e53, 0x13764c51, 0xb4762ffd, 0x4c05e672, 0x5221556c, 0x3b030f45, 0x6da8507b, 0xf9019007
.word 0x44c77fa9, 0x49146a21, 0xd5885e5f, 0x5bfa1413, 0x619375d8, 0x433eae97, 0xd267ca1a, 0xd86fb4d0
.word 0xe8381985, 0xf0c5b345, 0x9758537e, 0x1908772b, 0xfaaef30f, 0x0595c54b, 0xe51fa4de, 0x8d593dd9
.word 0x757b1c5d, 0xc996a123, 0x740867f0, 0xfa121a31, 0x26273c34, 0x8a4b0251, 0xdd57374d, 0x6a077c73
.word 0x22228656, 0x2380f769, 0xd1edd606, 0x189b9346, 0xbaaefd58, 0x515f83c0, 0xb3f2a4d8, 0x014a2a25
.word 0xe4dd1bda, 0x1de2a85f, 0x104054e9, 0xd281c570, 0x9c6e8a11, 0xec6555e1, 0xdf071b26, 0xdacd3995
.word 0xc9595f0a, 0x76dde6e3, 0xaa51b0a7, 0x1f8552c3, 0xa8237935, 0xc9468967, 0x5322a858, 0x715b94b5
.word 0x009635ee, 0x183c2254, 0x1c0fbd9d, 0x1f620ff0, 0x4fbfb124, 0xf118e398, 0x88f94da8, 0x3013058d
.word 0x483d6a85, 0xd5a5f155, 0x9178cac9, 0x05c41d35, 0x7fd88e0b, 0xbefa7608, 0x7b08c19c, 0x88f81ea3
.word 0x03c31cdc, 0x6154bf86, 0x5f54b43d, 0x2cbdfde9, 0x47d49105, 0x22f11735, 0xbfccd455, 0x1fe5ebe5
.word 0xd9e523e1, 0x62b7e892, 0x150ad40e, 0x8edc160a, 0x596923e5, 0x715a1500, 0xb5cd41a0, 0x6b674e5c
.word 0x1804d868, 0xcc2a6d50, 0xf4a578fa, 0xea5c39ca, 0xe939321f, 0xf4c2c9c5, 0x8665eacb, 0x6bfde342
.word 0x474078c7, 0x498417f6, 0x3277272c, 0xca860f64, 0xdb2614bd, 0x15ebe2d3, 0x3574eb56, 0x5248ac7e
.word 0x3158c437, 0x0f9ef516, 0xeb6dad83, 0xef6894de, 0xf7c3b342, 0x42274961, 0x18b48123, 0x7bd37c95
.word 0x04cc85d8, 0x34b76302, 0x25d1001d, 0x4a9fcd4e, 0x5d29717d, 0x5bb9e475, 0x13256bb2, 0x445bb421
.word 0x7c6c156a, 0xdd69a53a, 0x6c10d61d, 0xfae707c8, 0x2a8e0a51, 0x6709cf9d, 0xce9459dc, 0x138cb513
.word 0x47395844, 0xf2882d58, 0x37f40436, 0x5b9c74d8, 0x91dd81d3, 0x3cd8f2af, 0x231e52b6, 0x1e68e1f9
.word 0x1cbc9517, 0x9a35fac7, 0xbe5aff3d, 0xdec3259d, 0x4e55c86e, 0xe8b92af9, 0x345f1040, 0x5bc99670
.word 0xc5862561, 0xfc65199a, 0x3dec4c70, 0xb4e4ae53, 0xcfe2abd8, 0x09d99d19, 0x21b2f354, 0x3fda29af
.word 0x213639cc, 0x3bb09d01, 0x645777ba, 0x317c117f, 0x39575ed5, 0x1894b828, 0x46503d95, 0x66b802b7
.word 0xc4eb50e7, 0x76ff2e99, 0xa5b89a15, 0x93fd7f1c, 0xd20cb029, 0x11f03f72, 0x87809805, 0x76759012
.word 0x9ad8b822, 0xf8c31f8d, 0x1bf0a1c9, 0x14c18a5e, 0xc2f4ba03, 0x7ea96c6f, 0x0caa0b9d, 0xc07b71dd
.word 0xf7db1370, 0x1f270dfd, 0xfae5aba2, 0xe8f5de0d, 0xccb13293, 0x9c238576, 0xe2cdbea2, 0x7c00ad22
.word 0x1f6836da, 0x0c76c348, 0x3ef18002, 0xaf2b8760, 0xc3329a1e, 0x0fe5ee5f, 0x96204527, 0xe83711e1
.word 0x3e902d8e, 0x97ec6664, 0xa87fefe7, 0x98c8fb7e, 0x32fe6cba, 0x403b6ddb, 0x36366c9c, 0x582c0b39
.word 0xafa2d65f, 0x38edbba3, 0xf83550ac, 0x56f09fa4, 0xbc019ca2, 0xf7b1312c, 0xc9939678, 0x5816fe91
.word 0xd9eb3573, 0xd371985d, 0x69689fba, 0x443b3b6c, 0xd256a860, 0x41add605, 0x606d1c77, 0xe23b78e8
.word 0x05646b9b, 0x713b3a2e, 0x9143dfe7, 0x1cd49918, 0xe68e0926, 0x38097c40, 0x8fe42e49, 0xe67ad200
.word 0x0d37abe4, 0x84fc53c2, 0x4cf3218c, 0x9a2dd4c3, 0x0f0b929b, 0x35a6bd76, 0x814f1a5e, 0x45f5f3fe
.word 0xe3da1030, 0x0d8b73e8, 0x0e4c4f58, 0x52473a77, 0x574d447e, 0x894c5265, 0x43b38154, 0xb2284a3d
.word 0x769c0f1b, 0x20b9720e, 0x5a43de3d, 0x115f0f0c, 0x19320d5c, 0x77f77063, 0x73536f27, 0x98f3d7ef
.word 0x6a8ef427, 0x891037ed, 0xc411604d, 0xe86be291, 0x43ea0db2, 0x28b2807a, 0x02108bc6, 0x023fa535
.word 0x51175ffc, 0xdb409d22, 0x562108ff, 0x95d86aa3, 0x93a03043, 0x342043cc, 0x55571be4, 0x01541339
.word 0x25601041, 0x8b219ed5, 0xd1f7727b, 0x17139eab, 0x5d8aadb6, 0x8f2137da, 0xfefa2b12, 0x59c9fccd
.word 0xafc24c37, 0xa7c52346, 0x58e029ac, 0x568b4246, 0x09e039c0, 0xd1405399, 0x577bb451, 0x5a5dd997
.word 0xdcec12cc, 0x303466d8, 0x817b1998, 0x83209b68, 0xb0419767, 0x195f5a5b, 0x1207556e, 0x5441209c
.word 0x09ff6edd, 0x27418842, 0x2b389079, 0xdbb0f2d9, 0x79a32b88, 0x34153ddc, 0x0c4ba881, 0x624bccbe
.word 0xbd228af1, 0x07d07b46, 0xc2d00b74, 0x26a50dff, 0x7b8ce948, 0xbdaf97a7, 0xe10d21a9, 0x77a36d83
.word 0x2f2e7f6d, 0x2ba7a8e8, 0x17f0e205, 0xe8037377, 0x26256a27, 0x1e16ccc4, 0xe8bb32f1, 0x5158c75c
.word 0xbd81cdc1, 0xe0847b86, 0x102f5c7f, 0x2e2803ce, 0xbc79f103, 0xb1c153f4, 0xb40eb202, 0xb2f9b0e6
.word 0x46851bbb, 0xf1003bf2, 0x24268a5e, 0x59edebd8, 0x321519c8, 0x728d52c6, 0x15041a00, 0x2ad10958
.word 0x0fb35141, 0x042ebe22, 0xad2b7b35, 0x7ada5a31, 0xd90a66d3, 0x8c7e076d, 0xbfafe3b2, 0x63d0a92c
.word 0x3ce462be, 0x28976940, 0x450b226b, 0x0679ac76, 0x83370278, 0xdeb38700, 0xe89268b1, 0xfa0dd0f0
.word 0x4ca9d331, 0x40bc9b88, 0x3cd2e1f5, 0x336ad6bd, 0xf56815f3, 0xe57d3769, 0x7ec03247, 0x0f047d7d
.word 0x0eebf0ae, 0x74c58346, 0x5a75a8c2, 0x2a52c5bc, 0x830d0a67, 0x00eeb9bb, 0x6d22252a, 0x85401490
.word 0xa3995a3c, 0xf93dc24e, 0xdd0ad025, 0x72e4da27, 0x17353f09, 0xf2f2b4ef, 0x143cc57b, 0x1c62a689
.word 0xaec9aea5, 0xe584a4ce, 0xdabc970b, 0xa3f220ac, 0x8f73a268, 0x60b36fa9, 0x6c0279b5, 0x75420db3
.word 0xf8005727, 0xc1f21936, 0x88a227bc, 0xa2fd5ee8, 0x760a416b, 0x8527b715, 0xc6e4e224, 0xd889ec3b
.word 0x8bb3c811, 0x9aaecc77, 0xfc5c23e1, 0x768c5cd2, 0x23b3ab44, 0xde5aedb9, 0xf946d0dc, 0x701111f7
.word 0x2ed4168a, 0x9a0935ce, 0x41956cfc, 0x60a37229
.section .region_1,"aw",@progbits;
region_1:
.word 0x8eb5efe1, 0xf373a07b, 0x2e983360, 0x1cce7b4d, 0x4115eea0, 0x076efab2, 0x9eca804e, 0xc13bb214
.word 0xcb449175, 0x0aa93ef0, 0x35f2209e, 0x06df5048, 0x6e88a2a9, 0x69e55647, 0x22065b87, 0x0a17199a
.word 0x27153b4d, 0x62acbff4, 0x290086af, 0x407bf7c0, 0xb24a0424, 0xe7268913, 0x0cb698d3, 0x12994e45
.word 0x49902d57, 0xa4678d24, 0x736bbf4e, 0x46fe89e9, 0xc5dcf422, 0x40541eda, 0xca160c13, 0x363ce20d
.word 0xb5ee59ad, 0x57c63129, 0x2385ef46, 0x80609376, 0xf3e8cf0c, 0x9cfee5c0, 0x02ac2d57, 0x33097d61
.word 0x708382fa, 0x4031faa9, 0x46559ea4, 0xb6c2ae76, 0x9289548d, 0xb5802808, 0x80dc9f52, 0xec23ee05
.word 0x06a98421, 0xdb4643e8, 0x1d44e2e2, 0xd8e5c055, 0x1254b66b, 0xaa72947f, 0xe7c0d896, 0x6b7a0171
.word 0x3dd05ceb, 0x2e6e99d4, 0xacecf5d1, 0xa4238489, 0x1203930d, 0xc1104fdd, 0xe35f92fa, 0x742ec2c3
.word 0x801157d0, 0xd61dcb22, 0x7e0e218a, 0xbce934d7, 0x9fb79412, 0xda9d167d, 0x7393ca22, 0x78242744
.word 0x87338640, 0x015e4c81, 0xc019be2f, 0x12a57fc9, 0x70f7c9a3, 0xcc0fcaf5, 0x67649615, 0x65921241
.word 0x98d72d17, 0x8e685866, 0x6723e747, 0xbd96cf38, 0x730b3588, 0xff786527, 0xfdc3d15b, 0xbf6289c6
.word 0xdcf47671, 0xfcb622ce, 0x152a1a15, 0x07926bbb, 0x0d92ca8f, 0x5a7e4c2a, 0x4d5ccb3f, 0x4c7d7168
.word 0x4a111739, 0xdc27c365, 0xbdc47466, 0x69790263, 0x46ae43f1, 0x3dfe0900, 0x28190d08, 0x8716709a
.word 0xf44645af, 0x52644953, 0x7b4f4b2b, 0xec7cc9e7, 0x421ffe76, 0x0cbf2e94, 0xca5f8c48, 0x558f31af
.word 0xdbd9273d, 0xe275e7df, 0xa88daab6, 0x53c2f68f, 0x1c217dc7, 0xb817163a, 0xeecbc44f, 0x71b21427
.word 0x858bc41d, 0x7424ac5f, 0x3589ebc5, 0x739391e7, 0xe7612c51, 0x537c9e7e, 0x714efe17, 0xfd3c0a0c
.word 0x26514d4a, 0xb4fd0b40, 0xd7738321, 0x488e6a9a, 0xc47848e0, 0xa71a053c, 0x63bb0f12, 0xccfc5a01
.word 0x61633844, 0x349ad77b, 0x4c78c789, 0x156a13dd, 0x4f204df9, 0x17cc7f98, 0xc2bea994, 0x7f18eba5
.word 0xe6b3f431, 0x56df57d5, 0x52dc6884, 0xf0a8fca1, 0x4cf2507e, 0xc2fa9f93, 0x3bf6c0ea, 0xa4b6a92a
.word 0x3f13f9a5, 0xdcda0d81, 0xbf055f8f, 0x7e101d70, 0x0b75c2e9, 0xf29c3dee, 0x1ba1f58e, 0xa884dffc
.word 0x949e42e4, 0x44dba2f6, 0x73115aeb, 0x67414e8d, 0x480fb8d7, 0xbb8d94ee, 0xb822430f, 0x237784e3
.word 0xa5a40b6d, 0x92d9ff20, 0xa8e95706, 0x027863e1, 0xdd13b11c, 0xa3728c35, 0xbb767b6c, 0x9dc92681
.word 0xfc35162c, 0x661775f2, 0xcbb25647, 0x7dffe514, 0x99733795, 0x6c8ebd38, 0xfcfbddeb, 0x0ed28f6d
.word 0x4ba22aa0, 0x592ebdab, 0xbc08d57a, 0x5c13d1e9, 0xf2e6f97f, 0x7bc84795, 0xc6c24945, 0xbd3e456c
.word 0x98eafdb2, 0x206c9c14, 0xc4a26899, 0x13606407, 0x77b6769b, 0x0605e659, 0x691974d6, 0xd81931ce
.word 0xc5b38684, 0x1c128bc4, 0x69edb19c, 0xfd4e5910, 0x7091e3ed, 0x62c5f04c, 0xbbf9c48e, 0x3f11352b
.word 0xbf8883f4, 0xab04d6ab, 0x489ec5e7, 0xc93c6ea1, 0x5a4fde4f, 0xe8c912f0, 0xfc9e9ada, 0x143bdb6b
.word 0x7ec8e248, 0x157b88f3, 0xf8ebb008, 0x71637d86, 0xe0738c00, 0x8be82d43, 0x536d5e14, 0x484a90e6
.word 0x98caffae, 0xfd89f4c6, 0x93a4c65c, 0x8f293b28, 0x69f56f68, 0xf78c5f45, 0xf5c17043, 0xfd44488c
.word 0x7c4fec31, 0x221a7ee5, 0x08b2bf86, 0x5e66ad32, 0x62088c5e, 0x88fa27f9, 0x02649926, 0x0af74a90
.word 0x18d3da88, 0xa0f41b69, 0xb9adf170, 0x79d08b0d, 0x04c0e039, 0x072c5c15, 0xbf876bd7, 0x0e239830
.word 0x6bcb82cc, 0xd57ce826, 0x8ef7fca2, 0x20882330, 0x0c63b925, 0xcc27d474, 0x60334e6c, 0x4dd2c761
.word 0x26c84b55, 0x1da71686, 0x41b07aad, 0x59b13b8b, 0x01fd2c4d, 0xd5381673, 0xb356ec1a, 0x21c76750
.word 0x57ed2255, 0xfe3542dd, 0x9ac01d13, 0x9b778e48, 0xca6226a6, 0x3b0c4159, 0x6ad3740f, 0x9ca7af15
.word 0x50d0ec39, 0x6c28df67, 0x9cbad3e0, 0x2d3ea013, 0xa43a81a7, 0x352ace79, 0xba50644d, 0x2832aaf7
.word 0xa242b0b7, 0x06bdacbb, 0x82e9c919, 0x7a40b671, 0x72ea523d, 0xd9ce123b, 0xaaf8d93a, 0xbc1f837f
.word 0xcc1977f3, 0x869ce064, 0x0e2a441d, 0x85a72f17, 0x59f16a34, 0x5aa7f033, 0xb0729501, 0xd28585c4
.word 0x6c55c308, 0xd9d8907b, 0xf4585a13, 0xa7ab4abe, 0xa9714adf, 0x98a28c71, 0xcf1dfc18, 0xee3258af
.word 0x339c098b, 0x082ae069, 0x20c8bdc0, 0x807c1412, 0x039e1eef, 0xcb42c6cd, 0xe256fe2c, 0x218bc086
.word 0xf0d52a1b, 0x22d9969e, 0xd5bb7d24, 0x31117246, 0xa4d643bf, 0x68aafb51, 0x9b13fdec, 0x47e9bbcd
.word 0xeb4cac87, 0xb6039942, 0xf7bc2fa8, 0x5aa1814c, 0x5e698725, 0x07ecb05c, 0x5ef5732a, 0xa696f3b5
.word 0x33a320ab, 0xf352ed54, 0x191aa665, 0x20440096, 0x6f67cfef, 0x4c240fe7, 0xb8de9ea8, 0xfb34bd7e
.word 0xca5c4336, 0x169a91e0, 0x27c57c13, 0x9cd30674, 0x8a7c8d0a, 0xaba4865e, 0xac1428d0, 0x92b887ec
.word 0x6132a57e, 0xb61a079d, 0xd1977e1f, 0x4d9d04ac, 0x580961a3, 0xd43c3a21, 0x67f9eb68, 0xbfdd7f25
.word 0x6b38564c, 0xaa4417ec, 0x09d45aae, 0x0adb4bd2, 0xafa01f9e, 0xe58819d0, 0x5022182b, 0x21ba0cfd
.word 0x65141ec4, 0x8bb62a8f, 0xfc5eb146, 0x53e149ab, 0x00f11973, 0x803314b1, 0x2a091894, 0x26a22961
.word 0xd8d1871e, 0x17518ace, 0x63d7919e, 0xc1a1c4cd, 0xb815f472, 0x0a8f9957, 0x781f18a5, 0x85d6d888
.word 0xe6a79322, 0x9f9ed924, 0xcdbe6ae1, 0x9175236d, 0x9704b8ff, 0xcb8a4129, 0x596ba4a0, 0x12f9bd54
.word 0xeea718d8, 0xd694c335, 0x7bbba83f, 0xc405071e, 0xfd7f6287, 0x413b0e12, 0xa99a2053, 0xfab375c8
.word 0x92a9195b, 0xb5d680f2, 0xa6450b09, 0x4e1e500f, 0x1a6735db, 0xe0438e2f, 0xbc5fd753, 0xe4a8f442
.word 0x44c5bb72, 0xcf8f55f6, 0xb4ea3966, 0x8bdea091, 0xab000320, 0x3a95d365, 0xd1520a68, 0xaefc45c6
.word 0x2357372e, 0x79ddae61, 0xb34a5f7e, 0x44d0af01, 0x51c299f7, 0xbe8667d0, 0x22aebc97, 0x0c356d99
.word 0x4da77d4a, 0xcfe7648c, 0x2089ac02, 0xffbce2eb, 0xfc162fe6, 0xeeccac40, 0x0d3de6cc, 0x21c9bca1
.word 0x41db706d, 0x900aa229, 0x129862be, 0xac81a761, 0x8826be60, 0xa4388bd0, 0x344b7688, 0x827b9cb5
.word 0x90893ae6, 0xae3d0d68, 0xc23d51aa, 0x5af350a1, 0x1bf09a83, 0xbcf533f4, 0x7dfebeef, 0xc226521f
.word 0xb7104b00, 0x4d76f2d1, 0xd3530ab2, 0x9aca5a3a, 0x6475a9ee, 0x8eb39206, 0xbf849a51, 0x4ad60475
.word 0xe3bb905c, 0x5b301775, 0x7054f38a, 0x272ea451, 0x80b0f7b3, 0x670c5c59, 0xfce0b8ef, 0x2699e0e4
.word 0xb1113cf0, 0x576d9339, 0xd1c29572, 0x86c814f2, 0xe7bd933a, 0xa720e40a, 0xf5b4a008, 0x594ba49e
.word 0x61ad8faf, 0x81e012b6, 0x70f7638a, 0x5c4733bc, 0x39e5aaf6, 0xdf89447b, 0x75342b4b, 0x4e3c3ed5
.word 0xdea45316, 0xb0810a73, 0x5eb3a9bb, 0xee7fad71, 0x66a27eb8, 0x41b492ba, 0xbd4ba404, 0x6ec20913
.word 0xc529a419, 0x7c303a9e, 0xd6ed03f2, 0x7829b511, 0xa1c4d3b8, 0x367bf17a, 0xf0213b73, 0x57ffd291
.word 0x5b6debea, 0xebd6e94e, 0x9412c241, 0xb9188c8a, 0x4f39f7d6, 0x252cfe42, 0x1b1b9491, 0xcc7c6133
.word 0xaa6eea6b, 0xda42bb6a, 0x1d2ccbfd, 0xb8ffc3d4
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
                  add x23, x6, zero
                  csrr x28, 0x300 # MSTATUS
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 31
                  bne x28, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x28, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x28, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x28, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x28, x13, ecall_handler
                  li x13, 0x1
                  beq x28, x13, instr_fault_handler
                  li x13, 0x5
                  beq x28, x13, load_fault_handler
                  li x13, 0x7
                  beq x28, x13, store_fault_handler
                  li x13, 0xc
                  beq x28, x13, pt_fault_handler
                  li x13, 0xd
                  beq x28, x13, pt_fault_handler
                  li x13, 0xf
                  beq x28, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x6, x23, zero
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
                  add x6, x23, zero
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
                  add x6, x23, zero
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
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x6, x23, zero
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
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x6, x23, zero
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
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x6, x23, zero
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
