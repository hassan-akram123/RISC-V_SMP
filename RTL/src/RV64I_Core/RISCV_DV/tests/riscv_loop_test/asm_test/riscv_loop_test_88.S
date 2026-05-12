.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x11, h0_start
jalr x0, x11, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0xf
                  li x3, 0xfdf2a9ef
                  li x4, 0x80000000
                  li x5, 0x7e5968d8
                  li x6, 0x80000000
                  li x7, 0x5db24fbe
                  li x8, 0xfae78485
                  li x9, 0x65a1f04f
                  li x10, 0x80000000
                  li x11, 0xf898089d
                  li x12, 0xf6fee5c5
                  li x14, 0x2aa40086
                  li x16, 0xfe58bff6
                  li x17, 0xfab79432
                  li x18, 0xf734350b
                  li x19, 0x0
                  li x20, 0xfcd29e86
                  li x21, 0x0
                  li x22, 0xb2dd6eff
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0xfa9a2c83
                  li x27, 0x80000000
                  li x28, 0xd
                  li x29, 0x6
                  li x30, 0x8
                  li x31, 0x4
                  la x15, user_stack_end
main:             addi         t3, zero, 4 #init loop 0 counter
                  srl          a7, t4, s8
                  srli         s9, t1, 13
                  add          gp, s1, t3
                  srli         a0, s10, 11
                  ori          tp, a7, -1673
                  sra          a2, t6, t3
                  srl          sp, sp, gp
                  slt          a0, a3, a4
                  lui          s1, 952412
                  sll          s11, a7, a2
                  addi         s8, zero, -4 #init loop 0 limit
                  sltu         ra, s1, tp
                  add          s2, t2, s0
main_1_0_t:       slt          t4, s3, s8
                  slti         t0, s11, 897
                  addi         t3, t3, -8 #update loop 0 counter
                  slt          zero, a3, t2
                  sub          t1, t5, t5
                  srl          s3, t5, t3
                  sll          t1, s5, s6
                  and          s11, a0, s3
                  lui          s6, 900392
                  slli         a4, a5, 19
                  bge          t3, s8, main_1_0_t #branch for loop 0
                  slli         a6, t6, 17
                  addi         a7, zero, -4 #init loop 1 counter
                  srli         s0, a1, 30
                  addi         s4, zero, -10 #init loop 1 limit
                  slli         zero, t5, 26
                  auipc        tp, 432348
                  slli         t0, t4, 17
main_2_1_t:       nop
                  xor          a2, s0, a4
                  slli         sp, s3, 4
                  srl          gp, s10, s0
                  addi         a7, a7, -3 #update loop 1 counter
                  slt          a0, t2, s7
                  addi         ra, zero, 10 #init loop 0 counter
                  and          t6, a5, s11
                  addi         s11, zero, 4 #init loop 0 limit
main_2_0_t:       and          s8, s6, t2
                  or           t0, a6, s3
                  addi         ra, ra, -3 #update loop 0 counter
                  beq          ra, s11, main_2_0_t #branch for loop 0
                  srli         s0, t1, 8
                  andi         a2, s9, 254
                  srli         s10, a1, 29
                  beq          a7, s4, main_2_1_t #branch for loop 1
                  slt          a2, s2, ra
                  addi         t6, zero, 9 #init loop 1 counter
                  or           t3, a0, s2
                  slti         a6, t1, 710
                  or           t4, s0, a5
                  sltu         t4, ra, t3
                  slli         t2, tp, 17
                  addi         a4, zero, 9 #init loop 1 limit
                  slt          a6, a1, t2
main_0_1_t:       addi         s0, t3, 1745
                  srai         t5, a0, 14
                  addi         t6, t6, -5 #update loop 1 counter
                  addi         ra, zero, -3 #init loop 0 counter
                  and          zero, a6, t3
                  addi         s2, s5, -856
                  or           a2, zero, s1
                  addi         s1, t2, 367
                  addi         t0, zero, 11 #init loop 0 limit
                  sltu         s1, zero, s2
                  lui          a2, 415408
                  or           a7, s10, t6
main_0_0_t:       sub          s11, gp, zero
                  sra          s6, s3, a3
                  srli         s9, s6, 27
                  addi         ra, ra, 7 #update loop 0 counter
                  sra          s10, s10, s3
                  bne          ra, t0, main_0_0_t #branch for loop 0
                  lui          s2, 247964
                  srli         a7, sp, 14
                  andi         s7, s7, -267
                  slti         a7, gp, 1869
                  slt          gp, a1, a5
                  bgeu         t6, a4, main_0_1_t #branch for loop 1
                  ori          t2, a4, 882
                  addi         a2, zero, 10 #init loop 1 counter
                  addi         t1, zero, 10 #init loop 1 limit
main_3_1_t:       or           s11, s9, a1
                  and          s2, s5, s3
                  addi         a2, a2, -9 #update loop 1 counter
                  addi         s5, zero, 4 #init loop 0 counter
                  srli         gp, s4, 15
                  addi         s9, zero, 12 #init loop 0 limit
main_3_0_t:       sltiu        s10, s3, -364
                  addi         s5, s5, 8 #update loop 0 counter
                  bne          s5, s9, main_3_0_t #branch for loop 0
                  bgeu         a2, t1, main_3_1_t #branch for loop 1
                  or           a0, t2, zero
                  xori         s11, t2, -468
                  beq          a7, s0, 10f
                  xori         t5, s9, 1193
                  add          s0, t2, t3
                  slti         t3, s0, -989
                  slli         s1, s3, 14
                  sltu         t2, t2, s6
                  srai         zero, s0, 27
                  sltiu        s1, s10, -1939
                  sra          s9, t5, a4
10:               andi         s9, gp, 293
                  sll          t6, s9, t4
                  slt          s6, s10, a0
                  ori          a6, s5, -1381
                  auipc        s7, 761801
                  auipc        s5, 394404
                  add          s11, s11, tp
                  xori         s4, t1, 478
                  beq          a6, a1, 19f
19:               lui          t0, 423342
                  bltu         sp, t1, 26f
                  or           s3, ra, t1
                  slti         s3, s0, -1927
                  bne          t3, a7, 24f
24:               xori         s2, t2, -1115
                  sltiu        t4, s10, 740
26:               nop
                  beq          a2, tp, 36f
                  xori         s9, s4, -1854
                  auipc        s11, 647776
                  andi         s11, a5, -866
                  andi         t3, s4, -1429
                  and          a7, s0, s11
                  la           s1, sub_1
                  sltu         tp, a2, s0
                  addi         s1, s1, -996
                  auipc        s3, 983681
                  sltiu        s11, a4, -657
                  auipc        s6, 666772
main_j2:          jalr         ra, s1, 996 #jump main -> sub_1
                  srli         a4, s3, 29
                  add          s4, a2, a0
                  bltu         t2, s2, 37f
                  auipc        s6, 477513
                  srai         s8, sp, 3
                  xor          s4, s2, s8
36:               bltu         zero, s2, 37f
37:               bge          s10, s4, 45f
                  sltiu        a6, t4, -1937
                  bge          s11, t2, 48f
                  sub          s7, a2, a4
                  sub          s7, a5, t3
                  lui          a6, 732486
                  xori         a2, t3, 702
                  sll          tp, t2, a3
45:               bgeu         s6, t2, 48f
                  blt          t5, s7, 63f
                  sll          t4, gp, ra
48:               add          t1, ra, t6
                  bltu         s9, t0, 67f
                  blt          s5, a0, 64f
                  bne          a6, ra, 56f
                  slti         s4, s11, -288
                  sll          a6, a5, sp
                  nop
                  sub          t5, tp, s7
56:               sltu         s0, a5, ra
                  and          a2, s8, zero
                  sltiu        s6, t6, -656
                  bge          s4, tp, 60f
60:               ori          s0, t0, 629
                  or           t0, s9, s7
                  sll          a4, s7, s3
63:               blt          zero, t1, 64f
64:               bne          a1, ra, 78f
                  add          t1, s10, ra
                  sub          t2, tp, s6
67:               srl          t6, s4, a2
                  lui          s11, 879006
                  slt          sp, t0, ra
                  andi         gp, s2, -377
                  lui          s0, 924483
                  bgeu         s0, sp, 75f
                  slli         tp, s4, 10
                  bltu         s3, a1, 87f
75:               slti         s7, t2, -1888
                  slti         a7, t3, 1101
                  sra          s6, gp, s4
78:               blt          t5, sp, 85f
                  xori         s3, a4, -1403
                  bge          s3, zero, 86f
                  slli         gp, ra, 15
                  slt          t2, ra, a3
                  beq          a1, s1, 95f
                  sub          a4, s6, s7
85:               blt          t5, t5, 86f
86:               beq          a7, s4, 104f
87:               bltu         t2, tp, 104f
                  slli         s2, t1, 24
                  blt          a1, a7, 106f
                  beq          s11, a1, 104f
                  sltiu        t1, s6, -1625
                  sub          t4, s11, s11
                  bltu         s1, t4, 105f
                  nop
95:               slt          s5, t3, s10
                  sltu         s9, s3, t5
                  andi         t2, t5, -2007
                  sltu         t5, a6, s9
                  slti         s7, s3, -932
                  sll          s10, t4, s0
                  xor          sp, zero, t3
                  and          tp, t0, gp
                  slti         t0, a7, 1984
104:              blt          a3, a3, 120f
105:              srl          t3, a1, s7
                  la           s4, sub_2
                  srl          ra, t3, a5
                  addi         a0, t1, -274
                  sra          sp, a1, tp
                  srl          a0, a3, a4
                  srl          gp, s7, s2
                  addi         s4, s4, -82
                  xori         a6, t4, -1511
                  xori         s5, t2, 1505
main_j1:          jalr         ra, s4, 83 #jump main -> sub_2
106:              sub          t4, t2, a5
                  andi         ra, tp, 361
                  srli         t1, s7, 17
                  bltu         t1, sp, 129f
                  and          a6, t4, t1
                  xori         s6, t0, -638
                  lui          a2, 408424
                  lui          gp, 413262
                  bgeu         zero, a1, 132f
                  add          s2, ra, t0
                  and          s11, s9, ra
                  slli         s4, a3, 5
                  slt          a6, t1, tp
                  slli         s10, s10, 8
120:              blt          t2, a0, 121f
121:              srl          t0, t4, a6
                  addi         t4, s0, -902
                  blt          zero, s9, 132f
                  bltu         a2, a7, 136f
                  bgeu         tp, t4, 139f
                  bgeu         s3, a4, 134f
                  xori         t0, s1, -439
                  ori          a2, s2, 1382
129:              srai         gp, t2, 28
                  add          s6, a2, t2
                  bltu         s6, t4, 136f
132:              sltiu        a4, s7, -772
                  and          t1, t6, s8
134:              slti         s9, a1, -2014
                  bge          s0, s8, 152f
136:              add          tp, s9, s3
                  blt          s2, s10, 138f
138:              slti         s2, a6, -298
139:              nop
                  bltu         a6, s1, 149f
                  andi         s10, sp, -898
                  beq          s2, gp, 143f
143:              bne          t3, s10, 163f
                  slti         t5, gp, -601
                  beq          a6, a1, 146f
146:              andi         sp, s2, 1054
                  ori          zero, ra, -838
                  bltu         a0, a0, 155f
149:              addi         s11, zero, -1741
                  and          t3, s6, a4
                  addi         t2, s6, -1272
152:              xori         ra, s0, -2022
                  bgeu         t1, s1, 156f
                  slti         gp, s7, -1276
155:              nop
156:              slti         t0, tp, 1210
                  srai         s11, t3, 10
                  bne          gp, a2, 164f
                  auipc        a4, 1011995
                  addi         t4, sp, 1359
                  nop
                  bge          sp, s5, 163f
163:              beq          t3, tp, 168f
164:              add          t3, a3, zero
                  xori         s2, s3, 1411
                  bne          a0, a4, 182f
                  xor          t4, sp, a1
168:              addi         a4, t5, -1223
                  nop
                  xori         s9, s1, -1270
                  bgeu         a2, a7, 188f
                  xor          t5, a5, s11
                  andi         s2, t5, 947
                  sll          s8, s5, t6
                  sra          s2, s11, s0
                  srai         s2, s5, 22
                  srli         s1, s6, 4
                  srli         a6, a6, 9
                  slti         sp, a3, 584
                  srai         sp, a7, 10
                  blt          s3, s0, 182f
182:              andi         s0, s5, -1127
                  and          s5, tp, s3
                  slt          s1, a1, t2
                  slt          a2, s11, s4
                  sltiu        s6, s9, -1237
                  and          zero, t4, a5
188:              bltu         t1, t1, 197f
                  slti         s10, s7, 361
                  xor          s2, a0, s4
                  srl          sp, t5, gp
                  xor          s6, t3, s11
                  ori          t2, s6, 67
                  nop
                  bltu         sp, a1, 208f
                  srai         s4, sp, 12
197:              sll          gp, t5, t0
                  bgeu         a2, s7, 210f
                  sltiu        t3, s7, -1150
                  slt          t6, s6, zero
                  srai         t4, t0, 26
                  bltu         gp, sp, 219f
                  sub          s11, t5, s9
                  xor          s5, t2, t1
                  nop
                  bltu         gp, s6, 220f
                  add          t2, t1, s6
208:              bltu         a6, t5, 222f
                  nop
210:              addi         s11, s5, -79
                  and          t4, a7, s7
                  slli         gp, s10, 26
                  lui          s6, 544535
                  add          s7, a1, a6
                  nop
                  bltu         a5, s7, 222f
                  add          zero, s8, a0
                  slt          t0, s9, s5
219:              bgeu         s3, a0, 234f
220:              auipc        gp, 1042738
                  xor          t0, s1, a7
222:              lui          a7, 937200
                  srai         s5, gp, 26
                  xori         s0, sp, 52
                  bltu         sp, s11, 228f
                  beq          tp, a2, 229f
                  bne          gp, s9, 234f
228:              addi         s5, s6, -1982
229:              sltiu        s2, s1, -1378
                  nop
                  auipc        a0, 948119
                  sll          a2, t0, s5
                  bge          s6, a3, 234f
234:              ori          s7, t6, -898
                  la x11, test_done
                  jalr x0, x11, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            nop
                  slti         a6, t5, 1862
                  bgeu         a4, s9, sub_1_stack_p
                  auipc        s6, 593123
sub_1_stack_p:    addi         a5, a5, -20
                  sw           ra, 4(a5)
                  xori         s4, s6, 624
                  add          s11, a2, s6
                  and          zero, s6, s5
                  add          t6, s5, a3
                  sltu         s1, a0, ra
                  ori          s5, a7, -1758
sub_1_j3:         jal          ra, sub_4 #jump sub_1 -> sub_4
                  slli         t4, s2, 2
                  slli         t4, s2, 4
                  slli         a2, ra, 17
                  xor          t5, s8, t4
                  lui          s9, 1015144
                  sll          s8, t5, s6
                  bgeu         a7, ra, 10f
                  xori         t6, t5, 861
                  bgeu         t4, a0, 10f
                  nop
10:               slli         t0, s0, 10
                  auipc        zero, 206729
                  lui          s6, 783559
                  slt          tp, ra, t6
                  slti         s0, s9, -1676
                  lw           ra, 4(a5)
                  addi         a5, a5, 20
                  addi         s9, t1, 82
                  xor          t3, s8, zero
32:               addi x25, x1, 1
32:               jalr x25, x25, 0
sub_3:            sub          t6, a1, tp
                  add          s4, t1, s4
                  slt          sp, a5, t2
                  lui          s1, 920213
                  bgeu         s9, s11, sub_3_stack_p
sub_3_stack_p:    addi         a5, a5, -48
                  sra          t0, s3, t4
                  auipc        t2, 845181
                  nop
                  sw           ra, 4(a5)
                  srai         t4, s9, 12
                  addi         a7, zero, 3 #init loop 0 counter
                  lui          tp, 873451
                  add          t0, s4, t2
                  slli         ra, s1, 3
                  addi         a2, t3, -1079
                  sll          s1, t0, tp
                  ori          t2, a7, -2026
                  srl          s8, a1, a0
                  sub          zero, s11, a7
                  ori          zero, a3, 378
                  sub          s1, a0, t5
                  and          s11, t6, a3
                  addi         a0, zero, 15 #init loop 0 limit
sub_3_1_0_t:      sub          s6, s3, s2
                  xor          s8, a0, s9
                  addi         a7, a7, 4 #update loop 0 counter
                  beq          a7, a0, sub_3_1_0_t #branch for loop 0
                  add          t2, t5, a2
                  addi         s5, zero, 7 #init loop 1 counter
                  srai         zero, t2, 20
                  sll          a6, a6, t0
                  xor          a2, s11, t0
                  slt          gp, a5, s3
                  add          t6, zero, a2
                  xor          a4, s9, a7
                  sltu         tp, s6, s1
                  addi         sp, zero, 2 #init loop 1 limit
sub_3_0_1_t:      andi         s0, s4, -1094
                  nop
                  addi         s5, s5, -10 #update loop 1 counter
                  addi         t1, zero, -5 #init loop 0 counter
                  andi         s9, a4, -1520
                  addi         s3, zero, -14 #init loop 0 limit
                  lui          a2, 120823
                  xori         t6, gp, 203
                  sll          t3, s0, tp
                  sra          a6, t5, s6
                  srli         t4, t6, 25
                  sll          a2, s11, t6
                  slt          s10, t0, s5
                  slt          t6, s3, tp
sub_3_0_0_t:      add          s8, a4, s6
                  addi         t1, t1, -3 #update loop 0 counter
                  xor          gp, t5, s6
                  sltiu        s9, s1, 525
                  sltiu        zero, s11, 1593
                  xor          t6, t4, s8
                  addi         s6, s2, -1690
                  beq          t1, s3, sub_3_0_0_t #branch for loop 0
                  auipc        a0, 292156
                  bge          s5, sp, sub_3_0_1_t #branch for loop 1
                  srai         s4, s5, 2
                  sra          ra, a2, t5
                  bltu         s0, t6, 9f
                  bgeu         s2, t3, 13f
                  srli         s4, t6, 11
                  bge          s10, t5, 23f
                  xor          t0, s10, a4
                  andi         gp, t5, 8
                  srl          s0, t6, t2
                  srl          sp, a3, a6
9:                sltu         s2, s10, s1
                  beq          t5, a7, 21f
                  auipc        s2, 59421
                  slt          s0, s9, t5
13:               and          t4, gp, a6
                  bne          t0, s6, 15f
15:               bgeu         t6, t0, 34f
                  bgeu         gp, s7, 31f
                  bltu         a0, sp, 33f
                  bltu         zero, a0, 27f
                  xori         a4, t1, -1526
                  srli         t4, t6, 5
21:               or           s9, a5, s7
                  beq          ra, s5, 23f
23:               xor          a6, s10, s2
                  xor          a7, s4, a5
                  sub          a6, ra, t5
                  auipc        s1, 309485
27:               slti         s9, s9, 1718
                  srli         a0, s6, 27
                  sra          gp, s6, a3
                  sltiu        s2, s6, 1575
31:               bltu         s8, s7, 42f
                  sll          s4, s2, s5
33:               xori         s8, ra, 833
34:               sll          s2, a3, s0
                  bne          s7, a5, 54f
                  auipc        s1, 421007
                  and          ra, s10, s11
                  lui          s6, 238676
                  beq          t0, a3, 51f
                  auipc        sp, 69052
                  nop
42:               srai         t4, s0, 13
                  slti         s8, s10, -66
                  srl          a4, a2, t5
                  sltu         s1, t2, s6
                  srai         t3, a2, 30
                  sub          t6, s10, a6
                  sub          t1, s7, sp
                  beq          s11, s3, 68f
                  bne          t0, t4, 65f
51:               srl          s10, a5, sp
                  beq          s6, s6, 56f
                  bgeu         s11, a1, 65f
54:               sll          s9, s8, t5
                  sub          a0, s10, s5
56:               auipc        s1, 388288
                  bgeu         a3, zero, 65f
                  bge          gp, a0, 68f
                  bne          s8, tp, 78f
                  sltu         s6, s5, t0
                  addi         t4, t4, -465
                  sltiu        s8, gp, -1580
                  slli         a0, s11, 1
                  and          a6, a4, t6
65:               slli         ra, a5, 1
                  auipc        gp, 821645
                  andi         t1, a5, -1806
68:               bltu         s1, a5, 75f
                  lui          gp, 834054
                  xor          s3, ra, s9
                  slt          s9, a0, a5
                  andi         s1, a3, -2008
                  bne          ra, s7, 79f
                  slt          s8, s9, s4
75:               sltiu        a6, s10, -463
                  sub          t1, t6, a1
                  xor          s1, s11, a5
78:               slt          s3, a7, s6
79:               nop
                  andi         t2, a4, 1197
                  slli         s9, s5, 30
                  add          s2, t2, s7
                  ori          s3, t5, -1545
                  andi         t0, s3, 1312
                  and          a7, t3, a0
                  andi         s7, t1, -404
                  or           t4, s10, s4
                  srl          t4, t2, a2
                  addi         t5, s11, -1677
                  xor          a7, a2, s7
                  ori          gp, ra, -1212
                  xori         zero, sp, 1509
                  sll          t6, s11, t2
                  sra          s0, t5, a7
                  bltu         t5, t2, 107f
                  blt          t5, a6, 109f
                  bne          t2, a3, 99f
                  xori         t0, a5, -32
99:               andi         gp, s4, -266
                  addi         s3, a1, 1711
                  xori         t1, sp, -175
                  beq          t4, t6, 118f
                  sra          s11, gp, s0
                  blt          a5, sp, 105f
105:              blt          s2, sp, 108f
                  sll          s1, a0, s3
107:              slli         s11, a4, 13
108:              bne          s10, gp, 111f
109:              srai         tp, s1, 8
                  sub          s5, s8, s3
111:              beq          s11, a5, 125f
                  srli         a2, zero, 15
                  xori         s3, t2, -1992
                  beq          s3, s0, 116f
                  or           a2, a3, s3
116:              xori         t0, t1, -1570
                  slli         s3, s0, 5
118:              add          s8, a2, a2
                  sub          t2, gp, a5
                  sub          sp, t0, s4
                  slli         a4, a3, 26
                  bne          s8, tp, 129f
                  and          s11, s1, t6
                  lui          t3, 707654
125:              beq          zero, t4, 126f
126:              bltu         t1, s6, 129f
                  auipc        a7, 443555
                  sll          a4, t4, gp
129:              or           s7, a7, s2
                  and          t6, gp, s1
                  nop
                  sub          a6, t3, s2
                  lw           ra, 4(a5)
                  lui          t3, 491395
                  addi         a5, a5, 48
                  sll          s0, a5, sp
                  lui          t0, 585074
                  slt          t2, s11, s4
                  slti         sp, t1, -1628
203:              addi x29, x1, 1
203:              jalr x29, x29, 0
sub_2:            beq          t0, s4, sub_2_stack_p
                  andi         a4, s11, 290
                  sub          t6, s5, s3
sub_2_stack_p:    addi         a5, a5, -20
                  sw           ra, 4(a5)
                  xori         zero, s3, -491
                  slli         zero, t6, 13
                  and          s7, t6, s10
                  sra          a2, s11, s3
                  sltu         tp, s5, s4
                  bgeu         t1, s8, sub_2_j4 #branch to jump instr
                  xor          a2, a7, zero
                  xor          s7, s11, a6
sub_2_j4:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  addi         s5, s10, 1481
                  sltiu        sp, t3, 1731
                  la           t5, sub_3
                  addi         t5, t5, 457
                  sll          t4, tp, t0
                  addi         s0, a5, -1858
                  blt          s2, zero, sub_2_j5 #branch to jump instr
                  ori          sp, a5, 1103
                  andi         t4, t1, -876
sub_2_j5:         jalr         ra, t5, -457 #jump sub_2 -> sub_3
                  addi         t4, zero, -5 #init loop 1 counter
                  andi         t0, a0, -1534
                  slli         s10, t1, 7
                  sltiu        gp, s6, 1685
                  sub          t3, s9, tp
                  sll          s3, s10, a5
                  srl          s2, a0, s4
                  slli         s2, ra, 12
                  sltiu        t0, a0, 1784
                  and          s6, a5, a7
                  sltu         t0, s10, a4
                  addi         s5, zero, -5 #init loop 1 limit
                  xor          zero, s2, s6
sub_2_0_1_t:      sub          a7, a5, a0
                  srli         t1, t4, 15
                  auipc        a4, 414536
                  nop
                  addi         t4, t4, -4 #update loop 1 counter
                  addi         s7, zero, 8 #init loop 0 counter
                  addi         a4, a4, -1530
                  addi         s11, zero, 8 #init loop 0 limit
sub_2_0_0_t:      slti         s1, a6, 1817
                  addi         s7, s7, -4 #update loop 0 counter
                  sltu         t1, s3, t5
                  or           s1, a7, gp
                  andi         tp, s5, -158
                  bgeu         s7, s11, sub_2_0_0_t #branch for loop 0
                  slt          a7, gp, s2
                  slli         t5, s9, 22
                  bge          t4, s5, sub_2_0_1_t #branch for loop 1
                  ori          a6, a3, -82
                  addi         tp, zero, 3 #init loop 1 counter
                  addi         t0, zero, 15 #init loop 1 limit
sub_2_1_1_t:      and          gp, s2, s0
                  addi         tp, tp, 6 #update loop 1 counter
                  srli         s3, s0, 2
                  addi         t4, zero, 8 #init loop 0 counter
                  addi         t6, zero, 13 #init loop 0 limit
sub_2_1_0_t:      auipc        s7, 962869
                  addi         t4, t4, 3 #update loop 0 counter
                  bltu         t4, t6, sub_2_1_0_t #branch for loop 0
                  blt          tp, t0, sub_2_1_1_t #branch for loop 1
                  nop
                  addi         t1, zero, -4 #init loop 0 counter
                  lui          a2, 639610
                  sra          s1, a2, t3
                  addi         s0, zero, -16 #init loop 0 limit
                  slli         s5, s7, 22
                  and          t2, a1, s11
                  slti         s8, gp, 1890
                  and          s2, t2, t2
                  sub          zero, zero, t2
                  sub          a2, s9, a7
                  or           sp, s7, t0
sub_2_2_0_t:      slt          zero, s6, a5
                  srli         t4, t5, 23
                  auipc        gp, 540778
                  addi         t1, t1, -2 #update loop 0 counter
                  sra          s9, s1, s11
                  beq          t1, s0, sub_2_2_0_t #branch for loop 0
                  slli         s4, t4, 2
                  lui          zero, 91294
                  auipc        a7, 136378
                  auipc        t5, 296049
                  slt          s5, s4, s10
                  srai         zero, a2, 16
                  srl          t2, a7, a7
                  slt          s0, sp, s10
                  slt          a0, tp, s2
                  sll          zero, ra, s1
                  lui          t5, 808325
                  blt          a1, a5, 23f
                  slt          a2, gp, gp
                  bltu         tp, sp, 19f
                  bne          s1, s2, 22f
                  srli         a7, s5, 21
                  xori         s5, a0, 735
                  bgeu         t2, tp, 35f
                  srai         s5, s0, 26
                  xori         a7, t2, 103
19:               xor          ra, s9, t1
                  auipc        tp, 676711
                  or           zero, s7, a4
22:               slt          t3, a5, t0
23:               or           ra, t0, t0
                  ori          t3, a0, 1241
                  srli         a2, s5, 25
                  sll          tp, t4, a4
                  sra          t5, a4, s9
                  sra          s6, s4, a4
                  slli         gp, s0, 2
                  bgeu         zero, a0, 36f
                  bgeu         a2, sp, 41f
                  bge          s9, s4, 40f
                  srai         a7, t1, 17
                  xor          t6, s11, s0
35:               bne          s9, zero, 48f
36:               sra          t1, s7, s5
                  sub          s6, sp, s0
                  sra          s0, ra, s11
                  sub          t1, t1, s0
40:               sltiu        ra, s8, 778
41:               andi         t3, a7, 1502
                  ori          t6, ra, -162
                  add          a6, t5, t6
                  sltu         a7, s11, s2
                  lui          s5, 933371
                  sltu         a7, s0, a2
                  auipc        s4, 163434
48:               lui          a7, 921019
                  sltu         s4, ra, a2
                  sltiu        a4, s6, 1824
                  or           t5, t6, a5
                  beq          s1, zero, 71f
                  srli         a7, s10, 17
                  bge          s11, a7, 70f
                  nop
                  addi         a2, a4, 874
                  bgeu         s11, sp, 62f
                  bge          a1, a1, 60f
                  lui          s8, 160945
60:               srli         t1, s2, 31
                  bgeu         s5, t0, 65f
62:               lui          sp, 299504
                  sltu         ra, a5, t5
                  bgeu         s10, a3, 73f
65:               ori          s0, a0, 403
                  sltiu        s11, zero, 1486
                  andi         t3, s2, -1218
                  srl          s10, a5, s8
                  auipc        gp, 786932
70:               bne          s11, s9, 78f
71:               and          s0, t6, s3
                  blt          t2, t5, 79f
73:               beq          s3, a2, 93f
                  sltiu        s3, s1, -682
                  add          s0, a6, gp
                  andi         s0, t5, -10
                  bge          t4, ra, 96f
78:               ori          gp, t3, 1703
79:               sltu         a6, s9, t4
                  bge          sp, s3, 100f
                  bne          gp, a3, 99f
                  sltu         zero, t2, t3
                  slt          a4, sp, s4
                  bne          s2, sp, 103f
                  sra          s10, a1, a3
                  nop
                  addi         t3, s5, 856
                  sltiu        ra, a5, 1048
                  addi         s7, t2, -221
                  srli         a7, s2, 18
                  slt          s4, s1, s3
                  sltiu        ra, t5, -1221
93:               sll          a2, s5, tp
                  xori         a2, tp, 1237
                  sltu         s2, t1, t0
96:               addi         ra, ra, -1105
                  beq          a4, t0, 112f
                  slti         s9, t6, -245
99:               and          ra, gp, s0
100:              add          s9, s9, s1
                  bge          zero, sp, 111f
                  sub          s3, s7, s11
103:              slli         s2, s2, 21
                  srai         s8, s10, 29
                  sub          s9, s9, a1
                  slti         t6, ra, -729
                  xori         s8, s5, -1945
                  slti         s10, a6, 463
                  ori          s0, s10, 926
                  bgeu         t3, a6, 128f
111:              blt          s7, a7, 114f
112:              lui          zero, 595582
                  slti         t3, zero, 1815
114:              slli         t3, s0, 17
                  slt          s11, t2, s10
                  sltu         t0, a6, t5
                  auipc        a0, 920671
                  srl          s2, s4, a7
                  or           a6, t6, a3
                  addi         zero, a0, 1977
                  sra          s6, s11, a0
                  add          t1, t2, s5
                  or           s9, s1, t5
                  lui          t2, 45228
                  addi         t0, s5, -1329
                  srai         t3, a4, 19
                  ori          a4, a5, -1119
128:              auipc        t5, 813264
                  srl          s8, a7, s10
                  xor          s3, zero, s10
                  srl          s9, s7, t6
                  auipc        t2, 815227
                  ori          s1, s2, -666
                  slli         sp, ra, 27
                  bltu         t6, ra, 137f
                  slt          gp, t4, a7
137:              ori          s6, s11, -312
                  addi         s6, tp, -117
                  nop
                  and          t4, s2, a3
                  slli         tp, s3, 12
                  xori         s7, s0, -1505
                  sll          s3, s2, s11
                  bltu         t0, a0, 148f
                  nop
                  or           t4, t2, s1
                  slt          a2, s2, a0
148:              and          s4, t6, tp
                  bge          t6, a2, 155f
                  xor          s2, t3, s10
                  xori         zero, s4, -1149
                  and          s2, s1, s4
                  srl          a7, a3, s7
                  bltu         s0, t4, 158f
155:              bgeu         t0, s3, 166f
                  blt          tp, a0, 160f
                  xori         t0, s6, -674
158:              or           t3, t0, t2
                  andi         s11, ra, 1926
160:              beq          s8, zero, 179f
                  addi         t6, ra, 62
                  slli         s1, a1, 4
                  sll          a7, s3, s3
                  bltu         s5, s0, 179f
                  slli         s7, t6, 23
166:              xor          t6, a2, a6
                  and          t3, t5, s9
                  slti         t0, t4, -292
                  bltu         a6, s10, 176f
                  andi         s7, t5, 1237
                  sra          tp, a7, a2
                  sub          t3, zero, s8
                  xor          s8, t2, s10
                  xor          s3, s4, ra
                  slt          a2, s6, t4
176:              sll          t4, gp, s10
                  addi         a2, a0, -1514
                  or           t1, t0, a3
179:              xori         s4, a3, -1959
                  sra          zero, s5, s1
                  xor          a4, t6, t5
                  xori         a4, s5, -444
                  ori          s1, s5, -737
                  sub          t6, ra, s9
                  ori          tp, a3, 1144
                  lw           ra, 4(a5)
                  auipc        s11, 342754
                  addi         a5, a5, 20
                  sll          s9, s2, t0
275:              addi x23, x1, 0
275:              jalr x23, x23, 0
sub_5:            bne          s2, t1, sub_5_stack_p
                  or           s3, gp, a7
                  sub          tp, a0, s9
sub_5_stack_p:    addi         a5, a5, -32
                  xor          s5, s4, t6
                  sw           ra, 4(a5)
                  add          gp, s6, t3
                  addi         s9, zero, -9 #init loop 1 counter
                  sub          t3, s9, t1
                  andi         s6, zero, -960
                  slli         s1, a3, 10
                  or           t0, s5, a7
                  and          tp, a2, s2
                  addi         s5, zero, -19 #init loop 1 limit
                  sll          tp, zero, t3
                  nop
sub_5_4_1_t:      addi         zero, zero, -1307
                  addi         s9, s9, -10 #update loop 1 counter
                  and          t5, a1, s2
                  slli         a6, s7, 9
                  srai         t4, zero, 17
                  addi         s3, zero, -5 #init loop 0 counter
                  lui          a4, 292817
                  add          s1, s7, s6
                  addi         a0, zero, -9 #init loop 0 limit
                  sll          t0, s1, s6
                  srl          s10, s3, gp
                  slt          s6, a0, gp
                  xori         s7, a5, -339
sub_5_4_0_t:      sltiu        t2, s1, -420
                  and          t2, a6, s11
                  lui          s11, 765292
                  or           t1, gp, s11
                  auipc        s8, 389944
                  addi         s3, s3, -5 #update loop 0 counter
                  andi         s1, t2, -236
                  bge          s3, a0, sub_5_4_0_t #branch for loop 0
                  slti         a2, a5, -872
                  add          s0, a0, s8
                  lui          s4, 545055
                  bne          s9, s5, sub_5_4_1_t #branch for loop 1
                  srli         s8, gp, 5
                  addi         s1, zero, 9 #init loop 1 counter
                  addi         a4, zero, 8 #init loop 1 limit
                  xor          s5, s5, t3
sub_5_7_1_t:      and          s11, s5, tp
                  addi         s1, s1, -6 #update loop 1 counter
                  addi         t4, zero, 7 #init loop 0 counter
                  slli         a7, s9, 18
                  addi         t3, zero, 19 #init loop 0 limit
sub_5_7_0_t:      ori          sp, s7, -669
                  addi         s3, a0, 321
                  addi         t4, t4, 7 #update loop 0 counter
                  ori          a6, a7, -1885
                  bltu         t4, t3, sub_5_7_0_t #branch for loop 0
                  bgeu         s1, a4, sub_5_7_1_t #branch for loop 1
                  slli         gp, s6, 24
                  addi         s8, zero, -8 #init loop 0 counter
                  nop
                  slti         t1, t0, -1269
                  addi         a0, zero, -19 #init loop 0 limit
                  slti         a2, a6, 1052
                  sltiu        s7, tp, 649
sub_5_9_0_t:      andi         s2, ra, 145
                  ori          tp, a6, 1704
                  addi         s8, s8, -10 #update loop 0 counter
                  xori         gp, s0, 506
                  auipc        s1, 979390
                  lui          t5, 62202
                  srai         s0, ra, 11
                  nop
                  add          t2, sp, a7
                  nop
                  sll          gp, s5, s6
                  srai         s5, a0, 20
                  srl          a7, ra, sp
                  srli         t6, zero, 28
                  bge          s8, a0, sub_5_9_0_t #branch for loop 0
                  sra          a2, t0, zero
                  addi         s9, zero, -1 #init loop 1 counter
                  srl          s11, sp, tp
                  andi         s0, a5, 1905
                  addi         s1, zero, -4 #init loop 1 limit
                  srai         s4, t1, 17
                  sub          a2, sp, s9
sub_5_0_1_t:      auipc        s7, 170800
                  slti         s11, s0, -686
                  addi         s9, s9, -8 #update loop 1 counter
                  xor          s3, a5, t0
                  addi         s6, zero, 8 #init loop 0 counter
                  addi         a7, zero, 14 #init loop 0 limit
                  slli         s7, a4, 1
                  srli         t0, a3, 8
sub_5_0_0_t:      and          s2, t6, ra
                  addi         s6, s6, 2 #update loop 0 counter
                  bltu         s6, a7, sub_5_0_0_t #branch for loop 0
                  or           t2, s5, tp
                  xor          s0, s6, tp
                  bge          s9, s1, sub_5_0_1_t #branch for loop 1
                  sll          t4, s10, t3
                  addi         ra, zero, -8 #init loop 0 counter
                  xori         a2, a0, 1007
                  srl          a0, s7, s8
                  addi         t5, zero, -20 #init loop 0 limit
                  slt          s6, s10, a4
sub_5_1_0_t:      andi         s6, t5, 97
                  and          s0, s0, a5
                  sll          tp, s11, s11
                  nop
                  srai         s9, t1, 6
                  addi         s9, a7, -856
                  addi         ra, ra, -2 #update loop 0 counter
                  add          s5, t4, a1
                  slti         zero, s7, -891
                  add          s5, a6, s1
                  beq          ra, t5, sub_5_1_0_t #branch for loop 0
                  xor          s9, a0, t0
                  addi         s2, zero, -9 #init loop 1 counter
                  addi         a0, zero, -17 #init loop 1 limit
sub_5_6_1_t:      sltu         s3, s5, gp
                  addi         s2, s2, -8 #update loop 1 counter
                  addi         a4, zero, -1 #init loop 0 counter
                  slt          zero, a3, ra
                  addi         a6, zero, 9 #init loop 0 limit
sub_5_6_0_t:      sub          s1, t5, s1
                  nop
                  addi         a4, a4, 8 #update loop 0 counter
                  blt          a4, a6, sub_5_6_0_t #branch for loop 0
                  beq          s2, a0, sub_5_6_1_t #branch for loop 1
                  andi         t0, a4, 1652
                  addi         t0, zero, -2 #init loop 0 counter
                  addi         s9, zero, 18 #init loop 0 limit
                  ori          sp, sp, -261
sub_5_8_0_t:      sltiu        zero, a0, 451
                  addi         t0, t0, 10 #update loop 0 counter
                  sll          s3, s5, a7
                  addi         t1, a5, 537
                  or           s5, t3, s4
                  andi         t2, zero, -1933
                  bltu         t0, s9, sub_5_8_0_t #branch for loop 0
                  ori          t6, gp, 2003
                  addi         s2, zero, 10 #init loop 1 counter
                  and          s11, a0, tp
                  nop
                  addi         s4, zero, 10 #init loop 1 limit
                  sltiu        s3, t5, 635
                  auipc        t2, 454781
sub_5_2_1_t:      andi         sp, a7, -1546
                  and          t0, s9, a0
                  addi         s2, s2, -9 #update loop 1 counter
                  or           sp, t1, t3
                  addi         s10, zero, 5 #init loop 0 counter
                  addi         a0, zero, 18 #init loop 0 limit
                  xor          s1, s4, t2
                  xor          ra, t3, s1
sub_5_2_0_t:      xor          s11, sp, t6
                  xor          s7, sp, t3
                  addi         s10, s10, 3 #update loop 0 counter
                  and          ra, s8, a1
                  auipc        sp, 265822
                  blt          s10, a0, sub_5_2_0_t #branch for loop 0
                  and          a2, a4, s0
                  bgeu         s2, s4, sub_5_2_1_t #branch for loop 1
                  sll          tp, tp, sp
                  addi         s11, zero, -10 #init loop 0 counter
                  or           gp, s2, s3
                  lui          a0, 234327
                  addi         t3, zero, -17 #init loop 0 limit
                  srai         gp, t1, 23
                  ori          t4, sp, -1857
                  auipc        s9, 644225
sub_5_5_0_t:      auipc        t6, 171250
                  addi         s11, s11, -7 #update loop 0 counter
                  lui          a0, 948165
                  and          t0, t6, ra
                  sub          t1, t4, t0
                  slt          gp, s10, a0
                  ori          t2, a6, -1927
                  bne          s11, t3, sub_5_5_0_t #branch for loop 0
                  sll          s10, s2, gp
                  slt          t4, s6, s6
                  xor          s5, a4, a3
                  srai         t4, a1, 22
                  xor          t5, t1, t5
                  sll          ra, a6, s6
                  sra          t4, t1, a7
                  blt          s9, t6, 8f
                  blt          s6, tp, 22f
8:                auipc        a2, 748566
                  srai         s5, s3, 17
                  xor          a2, gp, a7
                  bgeu         s4, a6, 31f
                  and          a7, a4, s5
                  slti         tp, s4, -1469
                  bne          t6, t2, 20f
                  bltu         s1, s3, 21f
                  addi         s6, t6, -1218
                  srl          s4, s3, t1
                  nop
                  srl          zero, s8, s5
20:               srli         a4, t4, 11
21:               srai         a4, t4, 26
22:               sub          s7, ra, t1
                  sra          s2, s10, s5
                  auipc        s0, 196921
                  sltu         t4, s9, t6
                  add          zero, t5, s10
                  slli         a7, a5, 28
                  andi         tp, t3, -913
                  xori         s4, s10, 1902
                  blt          s6, s10, 37f
31:               addi         ra, s10, 1855
                  xor          t5, s3, a3
                  srl          a4, sp, s3
                  bgeu         t6, s9, 47f
                  lui          t6, 54304
                  srl          t0, s9, s7
37:               sra          s2, a0, a2
                  sub          t4, a4, a2
                  add          s7, t2, s4
                  sltiu        s7, tp, -71
                  slli         a2, t3, 0
                  bne          tp, t2, 46f
                  auipc        a7, 213239
                  add          t1, tp, t2
                  srli         s9, tp, 1
46:               xori         s3, a7, -731
47:               ori          s4, s4, -1013
                  or           tp, t0, s5
                  bltu         s3, tp, 51f
                  blt          s8, s2, 52f
51:               blt          t0, a4, 55f
52:               and          t0, s1, a7
                  auipc        s5, 677925
                  slt          a2, ra, a4
55:               srli         s9, t4, 18
                  sltu         t6, t1, a6
                  beq          a7, t0, 59f
                  sra          s10, t6, a0
59:               slti         a4, a6, -1433
                  addi         s4, tp, -1549
                  nop
                  blt          a0, a7, 78f
                  slli         t1, a1, 14
                  add          a4, t5, a1
                  sltu         a7, gp, s9
                  slli         t1, t5, 30
                  blt          s2, s9, 78f
                  bge          s2, tp, 74f
                  sra          tp, t2, a0
                  bltu         tp, tp, 84f
                  bne          s8, a4, 86f
                  sltiu        gp, t0, -277
                  and          a6, a7, s0
74:               srl          ra, ra, t1
                  slli         s4, s11, 25
                  bge          a0, gp, 85f
                  sll          ra, s2, t2
78:               nop
                  bge          s7, ra, 96f
                  slti         s9, a3, 1833
                  xori         s10, t5, -516
                  addi         s8, t0, 1371
                  ori          t4, s8, 614
84:               blt          t3, ra, 102f
85:               sub          s3, s6, s1
86:               srl          a4, s11, s3
                  beq          s0, a0, 101f
                  andi         t5, a3, 986
                  sll          ra, sp, s2
                  bgeu         a0, t2, 100f
                  bltu         sp, gp, 97f
                  srl          a7, sp, s10
                  sub          t6, gp, s10
                  addi         s1, t6, -215
                  blt          a2, a4, 100f
96:               add          s0, a1, s11
97:               lui          s5, 293196
                  srai         t6, t2, 31
                  auipc        s3, 150196
100:              bge          a1, s3, 116f
101:              nop
102:              addi         s4, t5, -302
                  or           t0, a6, a1
                  bne          s11, t4, 117f
                  auipc        t4, 1029609
                  andi         t0, zero, -514
                  srl          a2, t2, t5
                  andi         t3, t0, -171
                  sll          s5, sp, t6
                  sltiu        t3, a2, -718
                  xor          sp, s10, t3
                  addi         s7, zero, -9 #init loop 1 counter
                  sra          s8, t3, s6
                  or           s4, t1, s6
                  nop
                  addi         t0, sp, -1187
                  lui          t6, 939411
                  addi         gp, zero, -19 #init loop 1 limit
                  andi         s11, s6, -148
sub_5_10_1_t:     sub          t3, a2, a7
                  addi         s7, s7, -5 #update loop 1 counter
                  addi         s1, zero, 10 #init loop 0 counter
                  xori         ra, gp, 2032
                  addi         a4, zero, 9 #init loop 0 limit
sub_5_10_0_t:     ori          s0, t2, 465
                  addi         s1, s1, -2 #update loop 0 counter
                  andi         a2, t0, -1555
                  bgeu         s1, a4, sub_5_10_0_t #branch for loop 0
                  add          zero, a7, a5
                  ori          t2, s1, 1871
                  or           s0, t3, s5
                  bge          s7, gp, sub_5_10_1_t #branch for loop 1
                  andi         t0, t3, -1233
                  or           gp, s6, a0
                  bltu         t1, a1, 127f
                  sra          a6, a0, s11
                  blt          gp, ra, 132f
116:              bltu         zero, s5, 119f
117:              lui          s11, 434458
                  slti         s10, t4, 1916
119:              srl          a0, t3, a7
                  xor          sp, s8, s7
                  beq          a3, s7, 124f
                  beq          a2, t3, 125f
                  bne          a5, a2, 141f
124:              bltu         t2, s7, 138f
125:              beq          t0, a0, 145f
                  andi         t5, a5, -1631
127:              sltu         a7, t3, t6
                  bgeu         t6, tp, 131f
                  slti         t1, a4, 1566
                  add          s10, s6, t2
131:              xori         t4, s5, 1863
132:              srai         s6, s0, 9
                  sra          s9, s7, a7
                  xori         a7, s2, -775
                  bltu         t5, s7, 149f
                  and          sp, s5, s6
                  sra          s7, t6, s1
138:              sra          t0, a7, ra
                  sub          a0, t1, t2
                  nop
141:              bge          t4, s2, 156f
                  blt          s8, t3, 146f
                  sll          ra, s9, s7
                  add          s7, s9, t5
145:              srl          a0, ra, a2
146:              sll          gp, sp, a5
                  beq          ra, t2, 153f
                  or           zero, a5, a1
149:              bgeu         s8, s7, 160f
                  bge          s8, s11, 167f
                  sub          a7, a6, a7
                  addi         s7, s10, -269
153:              bge          s9, a7, 155f
                  andi         ra, tp, -186
155:              and          s0, a5, s3
156:              srai         t6, s3, 21
                  sra          t5, t4, a6
                  sra          ra, s10, t1
                  srli         s0, zero, 27
160:              bltu         t1, zero, 174f
                  blt          sp, t6, 177f
                  srl          gp, a2, s7
                  blt          ra, s5, 165f
                  bgeu         a5, s6, 170f
165:              auipc        sp, 408511
                  bltu         a7, t4, 176f
167:              beq          s1, a0, 173f
                  sltu         a4, a7, a1
                  and          s0, t3, gp
170:              sub          s6, s5, a0
                  nop
                  sltiu        t3, a3, -883
173:              or           s3, s6, s9
174:              slt          s8, a1, s4
                  sub          t3, a4, a0
176:              slli         a6, a0, 27
177:              xor          a4, s11, t1
                  bge          t6, s10, 193f
                  auipc        s6, 335818
                  slti         t1, a2, 1360
                  bltu         a2, t6, 197f
                  slt          a2, sp, a5
                  slli         zero, s8, 24
                  bgeu         gp, t3, 193f
                  nop
                  sub          s6, t0, t4
                  slt          a7, s2, s1
                  auipc        t3, 386037
                  xori         t2, t6, 927
                  sltu         a2, zero, a1
                  srli         sp, a6, 22
                  bne          a1, a5, 197f
193:              addi         a4, s9, -1325
                  xor          s2, a4, t3
                  blt          t6, s10, 202f
                  addi         gp, t2, -462
197:              srl          ra, sp, s11
                  slt          s8, t6, a4
                  slt          s4, s5, a0
                  sltu         s9, s3, t5
                  ori          t3, gp, -585
202:              sub          s4, a2, t5
                  beq          t0, a4, 220f
                  lui          s0, 587692
                  lui          s10, 656465
                  lui          sp, 705238
                  bne          s2, t3, 209f
                  sll          t0, s2, t4
209:              ori          t5, s9, 1990
                  sltiu        t5, sp, -933
                  lui          gp, 313434
                  srli         t1, t0, 30
                  srl          s1, a5, tp
                  sltiu        gp, t2, -955
                  sltu         s11, a5, zero
                  xor          a0, a1, t4
                  srl          s8, a5, a2
                  sltu         a7, s6, a6
                  bltu         a5, sp, 232f
220:              slti         t2, s3, 1612
                  nop
                  bge          zero, t3, 224f
                  bge          zero, a3, 236f
224:              bne          s0, s6, 228f
                  bne          s10, s9, 231f
                  sra          s5, s2, s10
                  slti         sp, a7, 515
228:              ori          t5, s8, 2034
                  add          s6, s4, s1
                  or           s10, s2, s10
231:              slli         s0, s3, 18
232:              add          s2, tp, t3
                  xor          gp, t0, s3
                  or           t2, s2, tp
                  slt          tp, ra, t0
236:              xori         a6, a3, -1210
                  xor          s3, s6, s1
                  bgeu         s7, s10, 253f
                  srli         t3, t3, 26
                  sltiu        s0, t6, 205
                  add          s3, s0, s1
                  blt          s11, s8, 255f
                  sltu         a0, t3, s6
                  bge          a0, t4, 246f
                  bgeu         zero, a0, 261f
246:              blt          s4, sp, 253f
                  andi         s8, t4, -1689
                  or           gp, s2, s6
                  andi         t1, a3, 1280
                  and          s10, t4, zero
                  or           s3, s0, a6
                  sub          t6, s7, a4
253:              sltu         s8, s11, t3
                  sltu         a2, t1, a7
255:              bltu         s3, s2, 261f
                  srli         s7, a7, 27
                  beq          t3, tp, 266f
                  srl          s7, gp, s0
                  slli         zero, s4, 12
                  add          s8, t0, t4
261:              auipc        s8, 679099
                  add          t6, gp, a7
                  slti         s3, s6, 755
                  or           s9, s7, s0
                  sra          a7, t2, s4
266:              sra          a7, s2, t5
                  srai         s5, a1, 24
                  auipc        zero, 809364
                  slli         s8, t0, 31
                  bgeu         a5, t1, 284f
                  nop
                  sltiu        zero, a3, 927
                  auipc        ra, 606039
                  sub          s2, a3, s1
                  auipc        s7, 189875
                  srai         s4, s7, 15
                  sltiu        zero, a1, 1716
                  slti         sp, t5, -1701
                  addi         t4, s10, 1670
                  sra          s10, s5, s4
                  beq          t5, tp, 298f
                  andi         s3, s3, 1380
                  blt          a7, t5, 289f
284:              sll          s4, t3, a1
                  beq          t4, s11, 299f
                  bgeu         a4, a6, 297f
                  or           t4, s5, sp
                  nop
289:              xori         a0, t6, -1610
                  bne          a4, a7, 292f
                  and          zero, s11, a6
292:              sra          a7, t0, a6
                  addi         s6, zero, 87
                  sltiu        t5, s10, -461
                  slli         s8, ra, 21
                  auipc        s0, 774945
297:              blt          s3, t1, 299f
298:              slt          a0, t3, ra
299:              and          s11, s7, a3
                  slti         gp, s1, -924
                  addi         a6, a5, -1116
                  xori         tp, s4, -610
                  sltu         s5, a2, a0
                  blt          s0, s11, 320f
                  ori          s2, s10, -726
                  sltu         s1, s4, s7
                  sll          t5, a7, sp
                  slti         s0, a4, 1241
                  slli         t3, a4, 18
                  slti         gp, gp, -458
                  or           t6, a3, ra
                  addi         s10, s8, -1358
                  slt          ra, a7, t3
                  bltu         a2, a6, 328f
                  bne          ra, s0, 321f
                  slli         t6, a7, 2
                  bne          tp, sp, 337f
                  bne          s0, a6, 323f
                  ori          sp, a5, 971
320:              beq          s5, s5, 330f
321:              slt          s4, gp, t1
                  beq          s11, s0, 325f
323:              addi         s10, t0, -511
                  bge          t6, s1, 328f
325:              slli         a4, zero, 20
                  andi         a6, t5, -1765
                  sltu         s1, s7, t4
328:              srl          s4, s0, s8
                  and          s8, t6, s1
330:              blt          s2, a0, 336f
                  sra          s2, t4, t5
                  slt          a4, a5, t5
                  add          t2, s7, t3
                  bgeu         gp, a4, 352f
                  and          a7, gp, a6
336:              slti         s11, sp, 1985
337:              srli         t1, s0, 6
                  srai         s9, s3, 4
                  srai         s5, a7, 18
                  sll          s9, s0, t0
                  sll          a4, gp, s9
                  bne          s8, s6, 344f
                  sltu         s3, tp, s9
344:              srli         zero, s9, 2
                  auipc        t4, 342878
                  bltu         ra, a6, 359f
                  srli         gp, a6, 23
                  slli         a6, gp, 31
                  slti         s6, sp, 798
                  srli         s0, s4, 16
                  sltiu        sp, t6, -1131
352:              srli         t3, zero, 24
                  bltu         gp, tp, 370f
                  slli         t0, a1, 12
                  srl          gp, tp, a5
                  blt          s2, t4, 360f
                  beq          a0, s2, 372f
                  bgeu         s5, s3, 361f
359:              lui          s4, 121415
360:              and          s8, s0, s8
361:              srai         zero, s2, 3
                  xori         s0, s11, 178
                  auipc        sp, 539755
                  auipc        s9, 581802
                  blt          t5, a4, 371f
                  slli         a6, s1, 1
                  sub          t5, t2, t2
                  srli         a2, gp, 15
                  lui          s9, 87123
370:              beq          a1, gp, 374f
371:              sra          t0, s4, s6
372:              slt          s1, t4, s1
                  slt          t5, s8, a1
374:              sra          a6, t4, zero
                  beq          a7, s3, 390f
                  bge          s7, t0, 379f
                  slli         a2, a7, 8
                  xor          t0, a6, s11
379:              sra          a7, s2, s9
                  srl          s2, s2, s10
                  or           s0, a1, a1
                  bge          t5, s9, 396f
                  nop
                  andi         t0, zero, 1127
                  srai         s2, s5, 10
                  bltu         s10, a4, 392f
                  srai         t4, s1, 3
                  xor          a0, gp, s0
                  add          a6, t5, gp
390:              blt          t2, t3, 407f
                  slt          t2, zero, a6
392:              srl          a0, s8, a4
                  auipc        t5, 505394
                  ori          t2, a6, 521
                  bgeu         tp, s8, 413f
396:              sra          s5, s0, s0
                  beq          s8, a6, 399f
                  slt          s10, a5, s6
399:              srai         sp, t1, 21
                  nop
                  lui          a7, 251605
                  bgeu         a2, a0, 411f
                  sll          s4, s4, s3
                  bge          zero, s6, 418f
                  or           s4, t0, t0
                  addi         s7, a6, 392
407:              sra          s9, s6, t6
                  sltu         s10, a0, s8
                  sltiu        s8, a5, -1913
                  slli         s4, a6, 30
411:              add          s10, s1, t0
                  bltu         sp, t1, 425f
413:              sltiu        a4, s7, -1974
                  andi         s5, s1, 1703
                  slli         a0, tp, 24
                  srai         s4, s0, 29
                  auipc        t2, 614099
418:              sltu         s11, s11, t3
                  nop
                  bge          a2, s11, 436f
                  srl          s11, t2, zero
                  or           gp, s2, zero
                  addi         t1, t2, 1532
                  srai         zero, t1, 8
425:              slli         s0, t2, 3
                  srli         s5, t3, 22
                  nop
                  sltiu        s8, s1, -1975
                  srli         zero, a7, 28
                  sub          zero, t3, a0
                  blt          t0, tp, 444f
                  slli         s0, t1, 2
                  andi         s1, a3, 1456
                  or           ra, sp, a3
                  nop
436:              and          s6, s5, s11
                  sltiu        a7, s2, -96
                  ori          s1, gp, -1278
                  ori          t4, tp, 554
                  slli         s6, s5, 7
                  slti         ra, sp, 276
                  bge          s2, t2, 449f
                  auipc        s10, 273342
444:              bltu         t2, a3, 454f
                  slt          ra, s7, s9
                  srl          t0, s5, s11
                  addi         s10, s5, 10
                  bne          t2, t1, 454f
449:              slt          s0, s7, s10
                  slli         t1, ra, 30
                  add          a7, t1, gp
                  andi         t3, gp, 704
                  bgeu         a2, s1, 456f
454:              sltiu        s6, a0, 25
                  add          s8, a2, t2
456:              slti         s8, s5, -286
                  slti         s8, t0, -1006
                  add          s11, a6, s5
                  or           a4, s1, a2
                  bltu         s6, s4, 462f
                  sltu         s10, a7, t4
462:              ori          ra, a7, -325
                  xor          s9, s7, t3
                  or           s6, t0, s2
                  xori         s2, s11, 807
                  sra          sp, t0, s9
                  addi         t0, zero, -10 #init loop 1 counter
                  ori          s2, t1, -120
                  srai         t2, s10, 6
                  lui          zero, 870118
                  ori          a0, tp, -859
                  sub          a2, a1, s11
                  addi         s10, zero, -16 #init loop 1 limit
                  slt          sp, a5, t1
sub_5_3_1_t:      sltu         gp, s2, t3
                  addi         a0, a1, 1465
                  addi         t0, t0, -10 #update loop 1 counter
                  addi         s0, zero, 9 #init loop 0 counter
                  addi         t3, zero, 19 #init loop 0 limit
                  xori         a2, s9, -172
                  lui          tp, 455383
sub_5_3_0_t:      sltiu        a4, ra, 596
                  sll          s2, s8, tp
                  sltu         a6, s10, a3
                  sra          a4, s5, s9
                  srl          tp, t4, t4
                  or           zero, s1, s2
                  add          s7, tp, tp
                  slti         sp, a4, -1258
                  lui          s2, 126551
                  slti         a2, s0, 899
                  addi         s0, s0, 10 #update loop 0 counter
                  xor          s4, a7, a4
                  auipc        tp, 966645
                  slli         s9, gp, 18
                  bne          s0, t3, sub_5_3_0_t #branch for loop 0
                  xori         t1, s5, 281
                  auipc        sp, 216189
                  auipc        tp, 875243
                  bge          t0, s10, sub_5_3_1_t #branch for loop 1
                  srli         ra, tp, 26
                  srl          a0, t0, a5
                  blt          a7, s6, 470f
                  bltu         s0, t0, 471f
470:              sub          a2, s4, a4
471:              or           s9, t5, sp
                  sra          t3, s11, t6
                  auipc        s4, 778332
                  xori         sp, t0, 1226
                  lui          s3, 368222
                  auipc        t4, 911348
                  srl          sp, ra, s1
                  srai         a4, t1, 24
                  addi         t6, t2, -1830
                  andi         a7, s3, -259
                  auipc        s2, 284928
                  ori          tp, a4, 968
                  auipc        t0, 2468
                  bltu         a5, s1, 489f
                  bgeu         t5, sp, 502f
                  slti         s8, sp, 903
                  slt          s2, sp, s11
                  bgeu         t6, a3, 508f
489:              or           t0, t5, s8
                  xori         a4, t1, -67
                  slli         s1, ra, 29
                  srl          gp, a2, t6
                  lui          s5, 113291
                  andi         s6, a3, 967
                  sll          s0, s0, s7
                  and          s0, tp, s4
                  blt          t4, a4, 513f
                  slt          s8, gp, s11
                  bne          a2, gp, 514f
                  slt          s10, s11, zero
                  auipc        gp, 251358
502:              beq          ra, t3, 508f
                  addi         s11, a5, -53
                  srli         a2, a5, 30
                  bltu         a6, a6, 509f
                  slli         t0, t1, 27
                  auipc        ra, 57781
508:              bgeu         s3, a5, 519f
509:              addi         s9, a1, -597
                  xori         sp, s9, 868
                  xori         t3, s8, 1540
                  or           s9, a2, a0
513:              bge          s9, s11, 527f
514:              or           s8, s3, s9
                  blt          sp, t0, 517f
                  bge          a3, s3, 523f
517:              sll          t2, s10, t6
                  ori          s3, s0, 1912
519:              lui          ra, 444034
                  sltu         a7, t1, s0
                  blt          t5, t6, 527f
                  bgeu         s8, a5, 536f
523:              add          tp, a2, a6
                  and          a2, s2, s5
                  blt          a5, t4, 541f
                  add          a6, a4, t6
527:              auipc        s5, 638732
                  srl          s11, t3, s10
                  auipc        t1, 436578
                  sltiu        gp, gp, 1797
                  xori         a2, gp, 335
                  srli         t5, s6, 18
                  sltiu        zero, s4, -2000
                  lui          s4, 161229
                  slli         s5, a0, 1
536:              bgeu         s10, a4, 547f
                  slt          a6, s1, a2
                  slti         s3, sp, -679
                  nop
                  nop
541:              sll          t1, a0, s2
                  addi         ra, a7, -799
                  sub          t1, s5, a3
                  sra          a6, a2, a0
                  addi         t5, gp, 961
                  bge          a1, a5, 551f
547:              sltu         a2, ra, s8
                  or           gp, a3, a7
                  sltu         t6, zero, t6
                  slli         a6, s3, 21
551:              lui          s4, 269245
                  auipc        s7, 562502
                  slli         a2, a6, 2
                  bltu         s9, a5, 567f
                  sltiu        s11, s2, 1659
                  andi         t4, s6, 2036
                  bge          zero, t0, 563f
                  srl          t2, a7, s7
                  bne          zero, t4, 572f
                  sub          s7, gp, sp
                  bgeu         s1, t3, 576f
                  ori          sp, s10, 1774
563:              srl          gp, gp, s7
                  sub          t4, s1, a3
                  sltu         s6, s4, zero
                  beq          a0, s7, 575f
567:              ori          ra, s2, 136
                  bne          s8, t2, 582f
                  or           t2, a0, a7
                  or           s3, s4, s10
                  ori          t6, a1, 1060
572:              srl          t6, sp, a1
                  srai         t5, s9, 14
                  and          s2, s11, s11
575:              srai         s7, s7, 5
576:              xor          s7, s11, s2
                  nop
                  bltu         gp, s9, 582f
                  bne          tp, s2, 581f
                  lui          t4, 183361
581:              slli         t3, a7, 23
582:              ori          s4, t3, 123
                  add          s6, a3, ra
                  beq          t5, s2, 586f
                  and          a2, a4, s2
586:              ori          a4, s6, 1734
                  xori         a7, sp, -1992
                  xori         t4, ra, 1168
                  addi         a0, s4, 208
                  lw           ra, 4(a5)
                  addi         a5, a5, 32
                  and          s1, a0, s6
                  slti         s6, a5, -1354
                  andi         a2, s3, -1656
                  xor          s7, s4, ra
                  slt          a6, a7, gp
                  lui          t3, 156138
835:              addi x5, x1, 0
835:              jalr x5, x5, 0
sub_4:            nop
                  srai         sp, s7, 24
                  nop
                  addi         a5, a5, -32
                  sw           ra, 4(a5)
                  srai         a6, t4, 9
                  addi         s6, zero, -1 #init loop 1 counter
                  addi         s0, zero, 3 #init loop 1 limit
sub_4_15_1_t:     or           sp, s8, s0
                  addi         s6, s6, 4 #update loop 1 counter
                  addi         s3, zero, -6 #init loop 0 counter
                  ori          gp, s5, 1335
                  addi         t6, zero, -11 #init loop 0 limit
sub_4_15_0_t:     nop
                  addi         s3, s3, -9 #update loop 0 counter
                  bge          s3, t6, sub_4_15_0_t #branch for loop 0
                  bne          s6, s0, sub_4_15_1_t #branch for loop 1
                  slli         zero, s2, 5
                  addi         s1, zero, -10 #init loop 0 counter
                  andi         s7, a7, 1448
                  xori         a7, s6, -1363
                  xori         s0, s4, -1272
                  addi         t3, t3, -1520
                  sub          t5, a4, s5
                  srl          s6, a2, a1
                  slti         s10, s2, -1128
                  sltu         sp, t4, a2
                  nop
                  sltiu        s4, ra, 181
                  sltiu        tp, a3, -84
                  xori         s8, s4, 952
                  srli         t5, s1, 15
                  sll          s4, s2, s4
                  auipc        s3, 336528
                  xori         zero, a2, -1258
                  addi         a6, zero, 4 #init loop 0 limit
                  andi         s9, a5, 252
                  lui          s11, 146718
sub_4_3_0_t:      sltiu        s6, a6, -145
                  srli         t3, a3, 6
                  sltu         s4, s1, s7
                  addi         s1, s1, 7 #update loop 0 counter
                  beq          s1, a6, sub_4_3_0_t #branch for loop 0
                  srai         s2, zero, 4
                  addi         s3, zero, 10 #init loop 1 counter
                  addi         a4, zero, 6 #init loop 1 limit
sub_4_7_1_t:      lui          tp, 47414
                  add          s0, a4, sp
                  addi         s3, s3, -4 #update loop 1 counter
                  andi         s11, t4, 956
                  ori          zero, s5, 1569
                  slt          s6, t3, a7
                  addi         ra, zero, -3 #init loop 0 counter
                  andi         sp, t4, 1009
                  or           t1, a3, a3
                  srl          t0, t1, gp
                  sltiu        s5, tp, -1722
                  addi         s10, zero, -12 #init loop 0 limit
                  auipc        a6, 758834
                  andi         s11, s7, -593
                  sra          zero, s3, s6
sub_4_7_0_t:      and          s6, s5, t6
                  slti         t4, a5, -90
                  addi         ra, ra, -9 #update loop 0 counter
                  sltiu        t1, t2, 977
                  addi         t0, s3, 817
                  beq          ra, s10, sub_4_7_0_t #branch for loop 0
                  slt          t4, a5, t0
                  addi         t3, zero, 318
                  sll          t4, s3, s3
                  lui          s11, 796210
                  or           s1, s9, s2
                  xor          s5, t0, s9
                  bgeu         s3, a4, sub_4_7_1_t #branch for loop 1
                  sub          sp, s8, s8
                  addi         t6, zero, 4 #init loop 0 counter
                  and          s0, t4, s3
                  sltiu        zero, s0, -1964
                  slti         a6, gp, -1259
                  sub          s3, s4, a6
                  xor          s2, a4, t3
                  addi         t5, zero, 4 #init loop 0 limit
                  lui          zero, 480399
                  srl          ra, tp, t3
                  lui          a0, 982904
                  xori         t4, s9, -340
                  lui          ra, 558341
                  andi         t0, s11, 192
sub_4_1_0_t:      slti         a0, s5, -1335
                  addi         t6, t6, -3 #update loop 0 counter
                  srai         s0, sp, 25
                  and          a0, a0, ra
                  add          s6, t0, t5
                  or           s4, a2, s10
                  bgeu         t6, t5, sub_4_1_0_t #branch for loop 0
                  add          s5, a5, s8
                  addi         a7, zero, 1 #init loop 0 counter
                  sltiu        s8, t4, -835
                  sltiu        s8, gp, 124
                  addi         t6, zero, 16 #init loop 0 limit
                  or           s0, s4, t5
                  sll          zero, a6, tp
                  nop
sub_4_12_0_t:     nop
                  lui          s2, 82665
                  lui          a4, 257782
                  andi         t3, ra, -1224
                  auipc        a6, 211682
                  sltu         s10, s7, s2
                  addi         a7, a7, 9 #update loop 0 counter
                  ori          t2, s3, 1103
                  srl          a2, a2, sp
                  bltu         a7, t6, sub_4_12_0_t #branch for loop 0
                  auipc        s3, 782852
                  addi         s7, zero, 6 #init loop 1 counter
                  addi         s6, zero, 16 #init loop 1 limit
                  slti         t4, a4, -356
                  xor          s2, s8, s11
sub_4_8_1_t:      lui          s0, 198065
                  slli         sp, s3, 27
                  addi         s7, s7, 5 #update loop 1 counter
                  addi         t3, zero, 2 #init loop 0 counter
                  sub          t5, s1, s1
                  addi         t0, zero, 2 #init loop 0 limit
sub_4_8_0_t:      slti         t4, a6, -1174
                  or           tp, s8, s8
                  addi         t3, t3, -1 #update loop 0 counter
                  srli         s2, gp, 28
                  bgeu         t3, t0, sub_4_8_0_t #branch for loop 0
                  lui          t4, 254651
                  sll          t6, a0, s2
                  slt          t4, a1, t0
                  blt          s7, s6, sub_4_8_1_t #branch for loop 1
                  sra          a6, s11, s9
                  addi         a7, zero, 2 #init loop 0 counter
                  addi         t0, zero, -5 #init loop 0 limit
sub_4_9_0_t:      addi         tp, a6, 1843
                  srai         gp, s1, 20
                  addi         a7, a7, -7 #update loop 0 counter
                  srl          zero, a2, t3
                  nop
                  bge          a7, t0, sub_4_9_0_t #branch for loop 0
                  nop
                  addi         t5, zero, 8 #init loop 0 counter
                  andi         t1, t1, 1700
                  srli         s7, s2, 6
                  addi         s6, zero, 9 #init loop 0 limit
                  lui          sp, 498669
                  srai         a0, s3, 26
                  addi         s4, s2, 744
                  addi         t2, t3, 278
sub_4_11_0_t:     nop
                  slt          s5, s0, s9
                  addi         t5, t5, 8 #update loop 0 counter
                  blt          t5, s6, sub_4_11_0_t #branch for loop 0
                  sub          s3, s7, t4
                  addi         s10, zero, -1 #init loop 1 counter
                  lui          a7, 121383
                  srl          a0, s10, t3
                  addi         t4, zero, 19 #init loop 1 limit
                  sltu         s3, zero, a4
                  xor          t0, a0, t4
sub_4_16_1_t:     slti         s11, ra, 393
                  sltu         s9, s10, a3
                  sltiu        s4, sp, 389
                  sub          t2, a0, t1
                  addi         s10, s10, 9 #update loop 1 counter
                  ori          a2, t3, -1745
                  addi         t1, zero, -8 #init loop 0 counter
                  slt          ra, a4, a3
                  xori         a0, s11, -386
                  or           tp, s0, a0
                  addi         s7, zero, -14 #init loop 0 limit
                  sltiu        a6, t4, -1543
                  srl          s2, a6, t2
                  or           s9, a4, zero
sub_4_16_0_t:     auipc        s9, 612916
                  slt          ra, a3, a5
                  addi         t1, t1, -7 #update loop 0 counter
                  xor          t5, s11, tp
                  slti         s1, sp, 1400
                  slli         s5, a2, 0
                  and          a4, s8, s11
                  bge          t1, s7, sub_4_16_0_t #branch for loop 0
                  ori          t0, s3, 135
                  blt          s10, t4, sub_4_16_1_t #branch for loop 1
                  srl          ra, t1, s10
                  addi         s2, zero, 9 #init loop 0 counter
                  slti         s9, s1, -1368
                  addi         s10, zero, 9 #init loop 0 limit
                  sra          s8, s3, s2
sub_4_4_0_t:      or           t1, gp, a3
                  slli         s5, sp, 2
                  addi         s2, s2, -7 #update loop 0 counter
                  or           tp, tp, a7
                  bgeu         s2, s10, sub_4_4_0_t #branch for loop 0
                  sub          sp, s11, s8
                  addi         sp, zero, 2 #init loop 1 counter
                  lui          a2, 481293
                  addi         s0, zero, -3 #init loop 1 limit
                  srl          s8, a6, ra
                  sra          s11, s8, s6
                  sra          t1, a6, t5
                  sll          t5, s2, t3
sub_4_6_1_t:      addi         gp, gp, 1437
                  addi         a7, s8, -2038
                  sll          s9, a5, s5
                  and          tp, s9, t6
                  srai         s4, a3, 15
                  auipc        a2, 606560
                  and          s1, ra, s5
                  slli         s4, a0, 23
                  addi         sp, sp, -7 #update loop 1 counter
                  ori          s10, s0, -10
                  addi         s7, zero, 2 #init loop 0 counter
                  sltu         t0, s1, a7
                  addi         s3, zero, 16 #init loop 0 limit
sub_4_6_0_t:      or           zero, gp, s5
                  ori          t5, s7, -1100
                  addi         a6, s0, 1157
                  sltiu        s6, a4, -392
                  or           s1, s8, a5
                  srai         a6, s11, 30
                  addi         s7, s7, 4 #update loop 0 counter
                  sltiu        t6, s0, 585
                  sltu         s11, sp, t0
                  bltu         s7, s3, sub_4_6_0_t #branch for loop 0
                  bge          sp, s0, sub_4_6_1_t #branch for loop 1
                  lui          t0, 686602
                  addi         s11, zero, 0 #init loop 0 counter
                  xori         s4, sp, 144
                  srli         gp, t3, 31
                  sra          a2, s9, a5
                  addi         sp, zero, 15 #init loop 0 limit
                  xor          a7, zero, a3
                  sub          s5, a6, t5
sub_4_10_0_t:     auipc        t1, 171787
                  addi         s11, s11, 7 #update loop 0 counter
                  srli         s5, tp, 14
                  sltiu        t2, a4, -244
                  srli         s5, t2, 27
                  ori          t2, s6, -987
                  andi         a4, s6, 1825
                  blt          s11, sp, sub_4_10_0_t #branch for loop 0
                  sra          t5, gp, a3
                  addi         a2, zero, -1 #init loop 1 counter
                  auipc        t3, 302463
                  sll          t0, s3, s6
                  addi         t5, zero, -10 #init loop 1 limit
sub_4_2_1_t:      and          a4, sp, zero
                  auipc        t2, 290159
                  addi         a2, a2, -9 #update loop 1 counter
                  sra          t2, s4, a3
                  addi         s2, zero, 1 #init loop 0 counter
                  addi         ra, zero, 5 #init loop 0 limit
                  andi         a0, t0, 1955
sub_4_2_0_t:      xori         gp, s0, 298
                  addi         s2, s2, 9 #update loop 0 counter
                  sltu         t2, s7, s2
                  bltu         s2, ra, sub_4_2_0_t #branch for loop 0
                  srai         t4, t4, 11
                  and          s5, s8, t2
                  bne          a2, t5, sub_4_2_1_t #branch for loop 1
                  xor          t3, t3, a2
                  addi         t1, zero, -5 #init loop 1 counter
                  sltu         s10, s3, s6
                  andi         t0, s0, 1841
                  addi         a0, zero, -13 #init loop 1 limit
                  sll          t0, a6, s8
                  slti         s0, s4, 778
                  slt          t4, t1, gp
                  slt          s6, t2, s10
sub_4_5_1_t:      and          a7, s11, t6
                  srli         t6, s9, 1
                  addi         t1, t1, -8 #update loop 1 counter
                  andi         ra, a6, -334
                  sltu         a4, ra, t1
                  slli         a7, t2, 11
                  andi         t3, ra, -948
                  addi         sp, zero, -5 #init loop 0 counter
                  addi         s7, t0, -1474
                  srai         t0, sp, 31
                  and          s1, t1, s2
                  addi         gp, zero, -18 #init loop 0 limit
                  and          s10, s6, t0
sub_4_5_0_t:      slti         zero, s3, 2003
                  and          s4, a0, t3
                  srl          s3, t2, s3
                  addi         sp, sp, -9 #update loop 0 counter
                  sub          s2, s8, t4
                  bge          sp, gp, sub_4_5_0_t #branch for loop 0
                  add          s6, s10, a7
                  sltu         s7, s10, a0
                  add          zero, zero, s0
                  srl          s6, a6, s9
                  beq          t1, a0, sub_4_5_1_t #branch for loop 1
                  addi         s6, a4, -1714
                  addi         tp, zero, 8 #init loop 1 counter
                  addi         s0, zero, 18 #init loop 1 limit
sub_4_0_1_t:      xori         sp, t1, 214
                  addi         tp, tp, 10 #update loop 1 counter
                  nop
                  addi         s9, zero, 5 #init loop 0 counter
                  addi         a6, zero, 4 #init loop 0 limit
sub_4_0_0_t:      ori          ra, a7, 589
                  srai         sp, s3, 28
                  addi         s9, s9, -2 #update loop 0 counter
                  bgeu         s9, a6, sub_4_0_0_t #branch for loop 0
                  bne          tp, s0, sub_4_0_1_t #branch for loop 1
                  or           s8, t6, a3
                  xori         gp, s3, -886
                  sltu         zero, s0, tp
                  bne          s10, s7, 5f
                  andi         s7, t2, 1074
                  bne          s6, sp, 12f
5:                or           tp, a5, ra
                  and          s7, s0, a2
                  blt          t6, t4, 17f
                  auipc        a6, 906405
                  andi         s6, a3, -1627
                  srai         a4, zero, 10
                  nop
12:               xor          s7, t4, t6
                  srai         s10, s2, 1
                  or           t5, s9, a2
                  auipc        s1, 908789
                  nop
17:               andi         s6, s2, -1701
                  bge          a7, s9, 27f
                  beq          a7, s6, 29f
                  bge          t1, t2, 35f
                  xori         s0, s6, -1611
                  addi         a7, sp, -29
                  add          t6, a7, sp
                  nop
                  sub          t5, s1, t4
                  add          t0, a2, s6
27:               addi         a6, a5, -1539
                  sltu         tp, s6, sp
29:               sub          s4, s1, sp
                  blt          a4, s10, 35f
                  bltu         t4, s7, 51f
                  bge          a3, a7, 35f
                  xori         s6, t4, -1243
                  sll          t6, t3, t1
35:               slti         s11, s9, -1101
                  bge          t1, ra, 40f
                  sll          s7, s10, a2
                  bne          t2, t3, 45f
                  xori         a2, a7, 1830
40:               auipc        t0, 318899
                  add          a6, tp, t5
                  slti         a6, t3, 1599
                  bge          s7, a5, 56f
                  and          a4, s9, a2
45:               sltiu        s9, s4, 952
                  addi         a6, a0, 888
                  slti         a7, a4, -1858
                  sll          t1, s6, s6
                  srli         t4, s11, 30
                  srai         tp, a4, 23
51:               andi         s8, a1, 216
                  beq          s10, t6, 64f
                  addi         ra, t6, 938
                  add          s1, s10, a0
                  andi         sp, sp, 52
56:               sltiu        s2, t4, -852
                  bne          s11, sp, 74f
                  sltu         s6, s1, a3
                  lui          s2, 848045
                  sltiu        s11, s1, 588
                  bne          s7, s9, 73f
                  bltu         s1, t3, 65f
                  or           a4, s9, s3
64:               lui          t4, 226488
65:               beq          t3, sp, 67f
                  addi         s1, zero, 6 #init loop 0 counter
                  auipc        tp, 855626
                  slt          sp, s11, t4
                  and          s3, a7, a7
                  slt          s9, s10, t3
                  sra          ra, t1, s11
                  andi         ra, s6, -905
                  sll          a0, s0, s4
                  nop
                  sll          s5, a7, s10
                  lui          t0, 512217
                  lui          s9, 149648
                  addi         a6, zero, 10 #init loop 0 limit
                  lui          a4, 56762
sub_4_14_0_t:     or           a4, a0, a5
                  slli         t4, t6, 29
                  sub          t5, tp, a7
                  sltu         s0, tp, t1
                  xori         s11, gp, 2000
                  or           t6, s5, t0
                  addi         s1, s1, 2 #update loop 0 counter
                  sra          t0, s9, s1
                  auipc        s8, 361997
                  blt          s1, a6, sub_4_14_0_t #branch for loop 0
                  sltu         a0, s1, t0
                  bge          t6, t6, 77f
67:               bne          s10, s9, 74f
                  bne          s7, s7, 79f
                  or           t2, s8, a5
                  slti         t6, t0, -654
                  add          t4, s7, s6
                  blt          s5, a2, 88f
73:               auipc        s0, 962127
74:               xori         t6, s7, -1415
                  sll          s6, sp, a6
                  sub          s1, sp, s1
77:               slti         t2, t6, 1145
                  slt          t5, s4, t4
79:               sll          a7, t3, s5
                  bgeu         sp, s1, 100f
                  xor          a4, a2, a7
                  sltu         a0, s4, s1
                  xori         s9, s6, -37
                  sltiu        s4, s10, -577
                  bgeu         sp, t3, 97f
                  andi         s11, s11, 955
                  slti         t5, t2, 486
88:               sra          zero, s8, s5
                  sltiu        s5, ra, 94
                  srl          s5, t6, ra
                  srl          t5, t2, s2
                  sltiu        s2, a1, 136
                  sra          t6, gp, a7
                  srai         ra, s0, 19
                  slti         t0, s9, -698
                  slli         s5, s2, 9
97:               bgeu         a2, ra, 102f
                  bltu         s1, a1, 103f
                  slti         s2, a4, -909
100:              srli         s6, t0, 4
                  srl          t3, a4, ra
102:              addi         s5, t1, 1123
103:              bgeu         a6, a6, 111f
                  andi         s6, s2, 398
                  srl          s0, s0, t3
                  sub          s3, s4, t2
                  srli         a7, s7, 7
                  bne          zero, s4, 113f
                  lui          t3, 653253
                  and          sp, s4, a6
111:              sltu         zero, a0, a4
                  bltu         a5, a5, 130f
113:              add          t4, a1, a6
                  nop
                  andi         zero, s7, 820
                  bltu         gp, a7, 125f
                  bltu         s4, s6, 129f
                  sll          s9, s5, s11
                  srai         t4, t0, 2
                  bltu         s7, a2, 129f
                  xor          s2, s11, s3
                  blt          t3, a5, 142f
                  sra          s4, s10, s6
                  xor          t3, s5, s0
125:              and          s2, a4, t0
                  or           s8, t6, t5
                  sltu         a7, t6, s6
                  ori          t0, s2, 782
129:              add          s8, t2, s3
130:              or           ra, s3, s1
                  xori         sp, a2, 376
                  sll          t0, a0, gp
                  xori         s5, gp, -1636
                  xori         t2, s4, 116
                  bne          s1, s3, 138f
                  srai         ra, s4, 3
                  addi         s2, a6, 1488
138:              sra          s2, t1, a3
                  xor          t3, s9, a4
                  bltu         t4, t6, 156f
                  bgeu         a7, s3, 152f
142:              add          gp, s1, a6
                  slti         s1, s6, -458
                  slli         ra, a5, 3
                  xori         a7, a6, -641
                  srli         tp, sp, 4
                  and          s4, s9, t1
                  xor          s9, a3, sp
                  addi         a6, t1, -268
                  srli         s11, s7, 7
                  addi         tp, s3, 1321
152:              sltiu        ra, sp, -1453
                  bge          s10, s0, 170f
                  bge          a4, gp, 156f
                  slt          t3, a0, s6
156:              slt          ra, t1, t3
                  ori          a6, s3, 1918
                  blt          t0, t1, 163f
                  addi         ra, s0, -1773
                  bne          a7, s0, 175f
                  beq          t1, gp, 166f
                  bne          a2, tp, 174f
163:              sub          s5, ra, t3
                  beq          t2, a0, 175f
                  lui          gp, 936828
166:              ori          s8, s3, -257
                  ori          ra, sp, 1983
                  and          tp, s1, t3
                  srl          s2, a1, a6
170:              lui          s0, 388112
                  sll          s8, t4, a2
                  sltiu        s0, t4, -1455
                  sub          s9, sp, t2
174:              nop
175:              srai         ra, ra, 4
                  add          s7, sp, a2
                  srai         s10, t3, 28
                  blt          sp, a2, 188f
                  beq          t6, s2, 184f
                  and          a2, t4, s3
                  slt          s4, a2, s7
                  nop
                  sra          t4, s7, a6
184:              xori         a7, t6, 981
                  xor          t3, t6, s11
                  bne          a5, ra, 193f
                  xori         s5, s9, 1944
188:              bltu         t3, s2, 198f
                  bne          s6, s9, 196f
                  sltiu        s5, zero, 553
                  sub          a2, s8, s2
                  bltu         s5, ra, 205f
193:              bne          s8, a4, 198f
                  bgeu         s9, s11, 203f
                  slt          s10, s0, s2
196:              bgeu         a7, s9, 208f
                  or           s7, t0, a5
198:              xor          gp, sp, a1
                  srl          s5, sp, s4
                  bge          s10, a4, 203f
                  srai         s5, a4, 31
                  bge          s10, a3, 210f
203:              bltu         t6, gp, 211f
                  bne          t6, t2, 216f
205:              sra          s9, a6, s0
                  or           tp, s3, s8
                  srli         s10, a2, 0
208:              bltu         s9, zero, 212f
                  slli         s6, t6, 7
210:              or           s0, s5, a2
211:              slt          s4, a1, ra
212:              sra          s3, t2, s9
                  auipc        t5, 563740
                  xor          t0, t1, a7
                  slt          sp, s0, t2
216:              xori         ra, t1, -1841
                  and          sp, s9, s8
                  blt          t5, s0, 221f
                  auipc        t4, 255420
                  blt          a7, a1, 238f
221:              bge          a3, ra, 233f
                  slti         t4, gp, -1914
                  slli         tp, s6, 5
                  blt          s0, s10, 244f
                  blt          s10, s2, 235f
                  ori          a2, s1, 743
                  sltu         t3, s9, a0
                  auipc        t3, 899319
                  or           s3, a0, a1
                  sra          s1, t0, s4
                  sra          s2, a6, t3
                  beq          s11, t1, 245f
233:              blt          a0, s8, 250f
                  sra          t5, t2, s0
235:              sltiu        t0, s4, -940
                  srl          t3, s9, s3
                  slli         s1, ra, 23
238:              slti         a4, t1, 1892
                  bgeu         a4, a2, 243f
                  add          a2, a1, s4
                  slli         a2, s7, 2
                  sub          t2, zero, s4
243:              srl          t5, t5, t3
244:              or           a4, sp, s6
245:              beq          sp, a4, 265f
                  sra          s10, a5, t4
                  srai         s5, sp, 9
                  xor          t6, sp, t1
                  andi         t2, a7, -1909
250:              auipc        t6, 912221
                  slt          s9, s10, t2
                  add          s0, a0, s5
                  bne          a5, t0, 260f
                  xor          gp, gp, s9
                  lui          s10, 534522
                  slli         zero, s9, 6
                  bne          s0, sp, 272f
                  srai         tp, sp, 18
                  blt          s3, s3, 264f
260:              slli         gp, a4, 6
                  andi         s2, s2, 1416
                  add          t5, t1, a0
                  srli         s4, a4, 30
264:              srl          s0, t2, t3
265:              ori          a6, zero, -1482
                  slti         a4, a0, -1696
                  sltu         s10, t3, t3
                  bgeu         t4, s7, 273f
                  bne          a0, a4, 274f
                  andi         s11, s11, -1516
                  beq          a6, ra, 282f
272:              bge          t2, t5, 284f
273:              srli         s6, s1, 7
274:              or           t2, t4, a2
                  bge          t2, a4, 284f
                  lui          ra, 756826
                  slli         gp, s11, 6
                  auipc        a0, 444719
                  blt          t5, sp, 290f
                  srai         t2, s6, 6
                  bge          t1, t5, 291f
282:              slt          s10, s3, gp
                  slti         s6, s6, 1431
284:              xori         t3, s3, 812
                  beq          s11, t4, 294f
                  andi         zero, s2, 287
                  srli         s1, sp, 3
                  sltu         t5, s0, s7
                  bltu         gp, a5, 292f
290:              and          sp, sp, s4
291:              bge          s7, a1, 303f
292:              slt          t0, gp, s9
                  nop
294:              andi         a0, s5, -1644
                  sltiu        s4, t0, -1869
                  andi         s9, a0, -488
                  or           a4, s7, a2
                  auipc        a0, 894348
                  addi         s1, s4, -441
                  xor          t4, t4, gp
                  nop
                  sll          s5, t5, s9
303:              and          s10, zero, a7
                  slt          s3, s4, a4
                  nop
                  srli         t2, s0, 7
                  beq          t4, s1, 319f
                  ori          s10, a1, -1089
                  or           t1, a1, s6
                  srai         s2, a0, 9
                  add          a2, s1, s5
                  and          s2, t5, s7
                  add          a6, a4, gp
                  bge          s3, t5, 317f
                  addi         s11, a1, 995
                  add          t1, t1, s7
317:              xor          s11, s10, t1
                  srai         s0, a5, 1
319:              srli         zero, s9, 31
                  auipc        t5, 561309
                  xor          s5, s9, s4
                  bge          t1, gp, 327f
                  bne          sp, a0, 339f
                  addi         t2, t2, 877
                  ori          s8, t2, 1987
                  nop
327:              beq          a3, t3, 329f
                  sltiu        zero, s10, 287
329:              auipc        s10, 419732
                  srli         a0, a4, 8
                  bne          a2, s6, 338f
                  slli         s3, s8, 23
                  bgeu         a0, s4, 341f
                  xor          s10, a5, s2
                  slli         t6, s3, 9
                  ori          zero, a3, -422
                  nop
338:              bge          a4, s0, 358f
339:              slti         s2, a7, 1254
                  bltu         s1, zero, 348f
341:              blt          a4, t5, 344f
                  bgeu         t0, t0, 360f
                  srli         t1, t3, 17
344:              auipc        t2, 287247
                  sll          t0, a1, a6
                  xor          t1, a3, gp
                  slli         tp, t1, 29
348:              slti         a0, gp, -1517
                  sub          a0, s0, ra
                  auipc        s0, 97615
                  sra          tp, s2, a7
                  add          zero, s2, a1
                  slt          s2, a0, s0
                  andi         s1, a1, -363
                  sltiu        gp, s4, 93
                  nop
                  slli         a4, s10, 7
358:              slli         a6, t4, 28
                  sra          s5, a4, a7
360:              and          tp, a2, a6
                  srai         t4, a4, 18
                  bge          a7, s7, 374f
                  add          t6, s7, s7
                  beq          gp, s5, 375f
                  auipc        s0, 960719
                  ori          t2, s1, -1507
                  slli         t5, t1, 17
                  srai         sp, sp, 17
                  bgeu         s0, s6, 372f
                  bne          t2, s8, 382f
                  srl          s9, a5, s9
372:              bge          t2, s6, 381f
                  sra          gp, tp, a5
374:              sll          s11, a4, sp
375:              sub          s10, a0, t3
                  or           s3, s0, t3
                  bne          a4, a2, 390f
                  xor          s7, sp, gp
                  sra          a4, gp, a3
                  slt          s3, sp, s0
381:              sltu         t0, a1, a1
382:              auipc        s8, 29986
                  addi         t1, t5, -996
                  srli         a0, s2, 16
                  lui          t1, 943874
                  slt          a6, t6, zero
                  slti         s6, s10, -945
                  add          s10, tp, a1
                  addi         a7, sp, 1702
390:              slli         s10, a2, 28
                  bge          a2, tp, 398f
                  addi         t0, s9, 874
                  sll          t4, s6, a1
                  nop
                  auipc        t5, 790339
                  sltiu        sp, t2, 739
                  sub          a6, s3, t2
398:              addi         a7, s8, 1051
                  slli         s9, t5, 18
                  xori         zero, s6, 1426
                  slli         s8, zero, 29
                  slli         a0, s3, 29
                  sll          s0, a4, a4
                  lui          t4, 513074
                  slti         t2, t0, 1020
                  bltu         zero, s3, 411f
                  srl          a6, s7, t2
                  or           tp, a1, s8
                  auipc        t6, 611786
                  srl          s8, s7, s0
411:              bgeu         ra, s6, 416f
                  srai         zero, s4, 12
                  addi         s6, ra, 1203
                  and          s5, sp, a2
                  or           t6, t4, t1
416:              srli         zero, a0, 3
                  bgeu         t0, sp, 433f
                  sltiu        a0, s8, 371
                  sra          t4, t5, zero
                  sll          t4, s11, a4
                  slt          s7, s3, a0
                  addi         s4, s1, 1949
                  beq          a0, s2, 426f
                  sra          a4, s0, a5
                  srai         t0, s3, 0
426:              add          zero, s4, s3
                  sltiu        t5, s0, -39
                  sltiu        a0, sp, 1165
                  andi         ra, t0, 1172
                  sra          zero, t6, a7
                  addi         a6, a7, 202
                  slti         t5, t3, -1738
433:              srai         s11, s11, 20
                  slli         a6, t1, 10
                  andi         a4, s5, 1995
                  bge          s9, t3, 444f
                  sltiu        s11, a7, -1950
                  srai         s10, a7, 22
                  auipc        s9, 777145
                  beq          gp, s7, 450f
                  sub          gp, t6, a1
                  auipc        s2, 241460
                  blt          s3, t2, 452f
444:              bgeu         ra, a0, 451f
                  beq          s0, a0, 449f
                  and          t6, ra, s4
                  andi         s8, a7, 621
                  slt          s10, zero, a6
449:              sra          t2, t2, t6
450:              bne          a2, s2, 462f
451:              beq          s7, t6, 456f
452:              xori         zero, a3, -940
                  srl          t1, t2, a0
                  srai         t0, a7, 1
                  slti         t1, a2, -2034
456:              addi         s5, t0, -1870
                  or           t0, a1, s3
                  andi         s8, t4, 520
                  and          gp, tp, a7
                  addi         t6, t6, -930
                  srli         t4, a5, 25
462:              slti         t2, s6, 1485
                  add          t4, a5, ra
                  bgeu         s10, s2, 469f
                  blt          t0, zero, 468f
                  sub          gp, a3, t6
                  srli         t5, s4, 7
468:              srli         s0, a1, 17
469:              bge          s7, a7, 484f
                  xori         ra, a7, -44
                  ori          s11, ra, -1355
                  addi         s8, t4, 146
                  sub          t2, t0, a3
                  srl          s1, ra, s6
                  blt          a1, a3, 486f
                  beq          gp, gp, 478f
                  or           t3, t5, s10
478:              slli         s0, s5, 4
                  srli         s6, s9, 22
                  blt          t3, s9, 492f
                  sltiu        s6, t5, -761
                  addi         s10, zero, 7 #init loop 1 counter
                  addi         a7, zero, 13 #init loop 1 limit
                  srai         t2, t4, 20
sub_4_13_1_t:     or           a2, gp, s10
                  addi         s10, s10, 6 #update loop 1 counter
                  addi         s5, zero, 10 #init loop 0 counter
                  lui          s9, 232476
                  addi         s6, zero, 13 #init loop 0 limit
sub_4_13_0_t:     or           t1, a3, s10
                  add          tp, s1, tp
                  addi         s5, s5, 9 #update loop 0 counter
                  bltu         s5, s6, sub_4_13_0_t #branch for loop 0
                  beq          s10, a7, sub_4_13_1_t #branch for loop 1
                  lui          t0, 971516
                  or           s4, s8, t2
                  or           t6, s10, s7
484:              slt          t3, t3, a2
                  srl          s5, ra, t1
486:              xori         s6, s8, 1034
                  and          s10, a2, s6
                  add          t5, a1, t4
                  auipc        ra, 981732
                  slti         t5, t6, -1142
                  bge          t3, tp, 499f
492:              xor          t4, a2, a7
                  bgeu         t2, a5, 503f
                  beq          t0, sp, 514f
                  bltu         zero, a2, 512f
                  beq          s1, a5, 516f
                  nop
                  slti         t0, s5, 1420
499:              addi         t0, a0, -1915
                  ori          t3, s8, 105
                  andi         a6, s2, 93
                  xori         a7, s0, 727
503:              bgeu         s5, a2, 515f
                  auipc        s1, 769377
                  slli         t4, t0, 8
                  sltiu        s4, t6, 630
                  add          a0, s5, s2
                  ori          a7, a4, 390
                  bge          t4, a1, 527f
                  xor          t1, gp, t3
                  bgeu         zero, s6, 518f
512:              sltu         ra, a4, gp
                  srai         t5, s1, 24
514:              lui          t0, 359974
515:              slti         s0, a0, -26
516:              auipc        gp, 301897
                  slti         t5, t1, -1054
518:              slti         a6, s0, 911
                  nop
                  slt          s11, s3, t6
                  and          a2, s11, s2
                  lui          sp, 565277
                  beq          s10, s10, 531f
                  sub          s1, a5, a5
                  andi         s11, a2, 1891
                  beq          s5, s7, 533f
527:              blt          tp, s5, 545f
                  xori         sp, s10, 684
                  lui          gp, 1018934
                  srl          s5, s4, t6
531:              srli         sp, s11, 21
                  bltu         a5, s4, 552f
533:              and          s6, a4, a5
                  slt          s0, s4, tp
                  sltu         ra, t6, s7
                  sltu         a6, a4, a5
                  andi         s4, gp, -29
                  xori         t2, s2, 1302
                  bge          s6, tp, 544f
                  sra          s4, a7, s1
                  slti         a7, s10, 2027
                  lui          s5, 240244
                  sra          s8, s1, s9
544:              slt          a6, t1, s6
545:              blt          s4, a7, 547f
                  slt          t1, a4, t5
547:              sra          a2, s2, a5
                  slti         s8, a0, 924
                  bgeu         s11, s5, 565f
                  bge          ra, s1, 559f
                  auipc        t6, 540633
552:              slli         s7, s0, 29
                  bltu         t4, a4, 556f
                  sltu         t2, a3, s6
                  srli         s5, a7, 6
556:              xor          s10, tp, a7
                  xori         s4, s3, 64
                  and          t6, s0, ra
559:              nop
                  xori         t1, zero, 1266
                  addi         t5, s5, 566
                  blt          s7, a1, 572f
                  srai         ra, sp, 6
                  bne          tp, ra, 567f
565:              xori         a7, a1, -524
                  srai         sp, s6, 13
567:              slti         t5, zero, -1844
                  andi         s10, t0, -311
                  xor          t3, t4, gp
                  sub          gp, a4, s2
                  xor          ra, s7, t2
572:              bgeu         s6, t4, 584f
                  sltu         gp, tp, a7
                  andi         s1, zero, 427
                  srl          s10, s7, s11
                  beq          t3, s9, 585f
                  and          s2, s11, t2
                  bltu         t6, s7, 583f
                  xor          zero, t5, t6
                  sltiu        t5, t1, -1874
                  slt          t1, a1, s10
                  xori         t5, s5, -1203
583:              andi         s2, a6, -1254
584:              and          t0, s7, a5
585:              srai         tp, s4, 11
                  bge          s7, sp, 598f
                  add          s7, a4, s1
                  sub          t4, zero, a5
                  sub          s9, s1, s10
                  sra          a4, ra, zero
                  slli         a7, s3, 21
                  sll          ra, a6, a4
                  bgeu         t0, a5, 596f
                  bltu         gp, t3, 602f
                  slt          a7, t4, sp
596:              srai         s3, t3, 23
                  srai         s9, s1, 5
598:              nop
                  slti         a7, s6, 1719
                  and          s0, s9, a0
                  sltu         s5, s11, zero
602:              sll          s8, t4, t1
                  slli         s3, a1, 1
                  bgeu         s7, s1, 615f
                  add          s8, t0, t4
                  or           t0, a1, a3
                  bge          s5, s2, 620f
                  add          s11, a1, s8
                  srai         s3, a2, 20
                  andi         t4, s0, 928
                  andi         a7, gp, -759
                  sub          s7, a6, a2
                  xori         s11, gp, -798
                  and          s10, s3, s7
615:              bltu         sp, t1, 619f
                  and          a2, a7, a4
                  and          s11, s9, a6
                  bgeu         s4, a4, 628f
619:              slt          t6, t5, s8
620:              srli         a7, t6, 6
                  addi         ra, s7, 1589
                  slti         s7, a4, -2019
                  bne          t1, s7, 628f
                  bne          tp, a1, 636f
                  slt          s4, t6, a7
                  slt          sp, s9, tp
                  addi         a0, s8, -1360
628:              xor          s11, t3, s4
                  blt          a1, t1, 634f
                  auipc        s11, 205012
                  sra          s5, a0, zero
                  beq          s3, s4, 649f
                  srli         t1, t5, 5
634:              nop
                  slti         s0, s5, -1326
636:              auipc        zero, 581304
                  beq          s4, gp, 652f
                  bne          s8, s8, 658f
                  sltiu        s8, s0, 270
                  andi         s8, a0, 943
                  auipc        t2, 956627
                  srli         tp, s2, 3
                  nop
                  srl          t2, t0, a2
                  sltu         a4, a2, ra
                  sll          tp, a1, t3
                  bne          a6, s8, 658f
                  xor          t2, t1, gp
649:              addi         s7, sp, -1336
                  xori         s11, ra, -316
                  sra          t0, s8, tp
652:              srai         s3, a3, 31
                  andi         sp, s7, 1456
                  auipc        t5, 879328
                  addi         t6, s5, 1861
                  bgeu         s9, a1, 668f
                  or           t6, s2, sp
658:              sltiu        s8, gp, -1535
                  sll          ra, a4, s1
                  slti         t6, a2, -137
                  slt          gp, t1, s10
                  xori         t2, s11, 2037
                  andi         s2, a1, -610
                  xori         t2, ra, -1161
                  sra          gp, a3, sp
                  ori          t3, s7, -427
                  blt          s9, a5, 680f
668:              ori          tp, a3, -1105
                  xori         gp, ra, 116
                  add          sp, s10, s5
                  sltiu        a7, s8, -252
                  slli         t1, tp, 23
                  bge          a2, sp, 678f
                  nop
                  beq          a5, a6, 680f
                  slt          t0, s8, a6
                  xori         ra, t6, 1446
678:              srli         s2, a1, 7
                  andi         t5, a3, -638
680:              srli         t2, s0, 4
                  srl          a6, s3, t5
                  sra          a0, a4, s3
                  xori         s1, a4, -1707
                  sltu         s9, s10, t6
                  addi         s1, s0, -1472
                  slt          s6, s10, a6
                  lui          t3, 289825
                  sll          s6, a1, a3
                  addi         a2, t4, -635
                  sra          a4, s1, t5
                  bge          a6, t4, 702f
                  bgeu         s0, s3, 710f
                  slt          s5, s6, t5
                  sll          s11, a6, tp
                  ori          s3, a2, 1669
                  sub          s11, s8, t3
                  slt          zero, t1, t3
                  bne          a4, a6, 705f
                  srai         s7, t5, 21
                  addi         t0, t4, 1484
                  andi         a7, s6, 226
702:              bgeu         t5, t3, 707f
                  sll          t6, sp, t1
                  slt          ra, s5, s3
705:              auipc        t4, 560646
                  srai         s11, s8, 0
707:              slt          s8, t6, gp
                  beq          s4, s10, 715f
                  sltiu        a7, t3, -1597
710:              bltu         t0, a7, 718f
                  blt          sp, tp, 723f
                  andi         a6, a6, -903
                  sltiu        zero, s8, 243
                  srl          t1, a0, a5
715:              srai         s11, a1, 11
                  or           t1, a0, t6
                  bgeu         s9, a6, 729f
718:              auipc        a2, 632589
                  addi         tp, a0, 17
                  sll          zero, a4, t2
                  and          a6, s5, s9
                  srl          s7, s4, s6
723:              and          t3, a5, t3
                  srl          s3, s4, a6
                  srl          sp, s3, sp
                  srl          zero, s11, t4
                  bge          s4, s4, 747f
                  auipc        s6, 133404
729:              auipc        a7, 861577
                  bne          t5, t4, 742f
                  and          t5, t1, s3
                  srli         t6, t4, 9
                  slli         s10, s4, 13
                  slli         ra, tp, 2
                  sltiu        tp, a7, 1567
                  bltu         s11, s7, 739f
                  and          s0, t2, a2
                  sra          s4, s11, t1
739:              xori         a4, a0, -1533
                  bge          s3, a5, 743f
                  sra          sp, a6, t6
742:              xori         s7, a3, 198
743:              sltiu        ra, s7, 1744
                  addi         s4, a1, -250
                  sub          t6, t4, t6
                  sra          s6, t1, a0
747:              srli         s9, a1, 31
                  xor          s11, zero, t3
                  bge          s5, s1, 757f
                  lui          s5, 960509
                  auipc        tp, 744948
                  xori         s9, s7, -1161
                  sub          s2, gp, zero
                  bge          t0, a2, 757f
                  blt          a5, tp, 765f
                  srai         s8, t6, 18
757:              ori          s8, a7, 1871
                  srli         t2, s2, 11
                  xor          t4, t5, t6
                  beq          s5, a5, 770f
                  srli         sp, gp, 25
                  sltu         t6, s2, a4
                  add          s8, s1, tp
                  or           t5, s2, a1
765:              bltu         zero, sp, 781f
                  addi         s7, sp, 471
                  ori          s7, a7, 1492
                  beq          s0, a6, 770f
                  addi         s4, s10, 939
770:              bge          a1, t1, 782f
                  or           t3, s11, s9
                  sltiu        s5, s9, 271
                  or           tp, t2, s4
                  auipc        a0, 722784
                  bltu         a5, s2, 792f
                  blt          s7, a2, 781f
                  sll          gp, t4, a2
                  bne          a0, s10, 787f
                  sltu         s5, s0, s8
                  ori          s0, s7, 449
781:              xori         s10, t6, 1529
782:              nop
                  srl          t4, s7, zero
                  bgeu         a4, s6, 793f
                  ori          s2, s5, -743
                  slt          t1, s3, s9
787:              sra          s0, a4, t1
                  addi         s0, sp, -112
                  sltu         s10, a0, s9
                  sub          gp, a0, a2
                  srl          s11, t6, ra
792:              sll          t5, sp, a0
793:              srai         a7, sp, 15
                  sra          s5, tp, t0
                  bltu         s8, s1, 799f
                  or           t4, gp, s3
                  ori          ra, t4, 986
                  andi         t5, s3, -450
799:              blt          s4, t1, 819f
                  slt          s5, s0, a6
                  or           a4, a2, zero
                  slti         t5, s8, 1910
                  slt          t6, s7, zero
                  xor          t0, s3, s2
                  add          zero, a6, s1
                  srai         a6, a1, 8
                  slt          gp, s5, t1
                  sll          s1, s8, s3
                  add          s11, s0, s1
                  sra          t5, s8, tp
                  sltiu        a4, t0, -1848
                  bltu         s5, t0, 827f
                  nop
                  andi         sp, ra, -886
                  srai         a6, a5, 8
                  ori          gp, a1, 527
                  slti         s0, t3, -1235
                  addi         sp, s8, 84
819:              srai         a0, tp, 7
                  sub          s10, a3, a7
                  srl          s3, tp, s9
                  srl          a7, gp, a4
                  sltu         s8, t4, s8
                  beq          s6, t4, 835f
                  slti         a2, a0, 1572
                  lui          a6, 322687
827:              and          a7, s6, t2
                  srli         t3, s0, 3
                  sll          a2, t3, a7
                  slt          t0, a4, s9
                  andi         s7, a2, 1689
                  nop
                  sub          s2, s2, t1
                  sra          s0, a1, a7
835:              bge          s0, a2, 838f
                  lui          ra, 385013
                  and          a2, tp, t6
838:              slti         sp, s0, 257
                  and          gp, s2, s9
                  or           t1, s5, zero
                  slt          s10, tp, t5
                  lui          s7, 758343
                  nop
                  sltiu        t5, a4, -1807
                  srl          gp, s7, t3
                  add          s2, a1, s2
                  bltu         a2, s3, 856f
                  bltu         s11, a3, 856f
                  srl          t4, a2, s7
                  bgeu         s1, a2, 856f
                  xori         a0, s10, 940
                  srl          s11, a1, s10
                  slli         s11, a2, 8
                  sll          gp, t1, tp
                  bltu         s8, a1, 856f
856:              sll          s2, s5, s9
                  xori         a6, a1, 2017
                  sub          t6, s10, s2
                  lw           ra, 4(a5)
                  slti         t2, s7, -1075
                  sltiu        a0, s2, -532
                  addi         a5, a5, 32
                  slt          a2, ra, s2
                  addi         a4, sp, -989
1214:             addi x12, x1, 0
1214:             jalr x12, x12, 0
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
.word 0xce918067, 0xb1044cc8, 0x039b1138, 0xacdac832, 0xea9ea731, 0x9b19ccfb, 0x4129fa55, 0xd4c96472
.word 0x97edc92c, 0x38f3631a, 0x256e544f, 0x3c12e81c, 0xae07db63, 0x6d87b61a, 0x03df15b3, 0x7620ec9f
.word 0xde9b7081, 0x6816a30e, 0x6a5417d5, 0x0e657c02, 0x6556ee83, 0x54293d51, 0x9627f05d, 0xcf9332b7
.word 0x7a333ebb, 0x605642bc, 0x37450b6a, 0x75437bd3, 0xcd3297a7, 0x8a3f9f50, 0xd0b2d2c6, 0x98b97c74
.word 0x5541d6e2, 0xd616bf2f, 0x10f67e9d, 0x70902755, 0xfae0a353, 0x62fba358, 0x565022a3, 0x6feb573f
.word 0xa56f5129, 0xf1172895, 0x3f37c2c6, 0xab0420f6, 0xa7e77eb8, 0x719daa6a, 0x88ff4104, 0x1bb4f429
.word 0xa07255d1, 0xb64bf0f8, 0x41841374, 0xbe96ec58, 0x3623423e, 0xaa9be65b, 0xe2f10470, 0x9f0b9b36
.word 0xb2f2c4bb, 0xe6c69717, 0xa938b0e2, 0xfe0a072e, 0x89469fc2, 0xc8fb936a, 0x0d10909e, 0x0624e5d0
.word 0x6e1e0c02, 0xaf1fd10c, 0x4638a827, 0x3c10f53a, 0xba925101, 0x682b6468, 0x09250251, 0x123dd196
.word 0xdc305935, 0xbb03cc36, 0x270eb894, 0xe5ab5e15, 0x1fe0f3ba, 0xe5baf765, 0x4aca4a78, 0xd512765a
.word 0x00d74ec2, 0x52da7950, 0xe742bb5b, 0xab5019ee, 0x56373c3b, 0xefc3597f, 0x34a0fe78, 0x94178f44
.word 0xa870e162, 0x6fb7a2de, 0x03a1acfa, 0x8a7a2789, 0x98b6375b, 0x87fc83b8, 0x58f1ffb1, 0x6d8f52c2
.word 0xf0ea40a2, 0x678ae776, 0x3ff7dd18, 0x916189e2, 0x35f008a0, 0xd8cda824, 0xfbee6b98, 0x22ebefd4
.word 0x8cc75dd6, 0x626fd0df, 0xdc6d8c11, 0x47ae8a21, 0x7411b9f0, 0xa7c749d7, 0xcbac8257, 0xa08f9d76
.word 0xe2f87557, 0xe6409f62, 0x1a93fcf7, 0x61edc24e, 0x503be7b7, 0x76c25c55, 0xd3e547ff, 0x7f9cdebc
.word 0x6b38773c, 0x9bd4de7a, 0x23a0ef26, 0x9d1610b3, 0xcafc268e, 0x9930a0ca, 0xc2307c75, 0x75c21ac7
.word 0xc67989fb, 0x1389c128, 0x03929f0b, 0x765a4b4d, 0x35ff3974, 0x19baf2b9, 0xd98b8745, 0xe634bf78
.word 0xf24d5afc, 0xe5f39154, 0x5df7c4d2, 0x91d6c21d, 0x4da11fbc, 0x8b1e6a52, 0x63119cf9, 0x23fbfede
.word 0x368993d7, 0xc6bb5605, 0xf5a15b12, 0xe055903f, 0x3a9255d2, 0x7154642e, 0x28ddbc34, 0x3a726341
.word 0xd4d9b4ab, 0x75581e2a, 0x678e01e1, 0x1490d051, 0xfcaf5b94, 0x8a0e1286, 0x01c1ea46, 0xad80f3ee
.word 0x3e30519a, 0x86b812b7, 0xf10a712e, 0x15f39248, 0x059cef41, 0xf69c31fd, 0xcc15a43c, 0xa1fa0088
.word 0xea309ef6, 0x2e0e8b15, 0x08698c6e, 0xc8834061, 0x5cacaeb9, 0x31333fe7, 0xa3f72711, 0xb0753220
.word 0x497d5a64, 0xc6619689, 0x3e7f3bb0, 0x001220ad, 0x9defd2a1, 0x7e209a63, 0x12e54515, 0xe218e8bf
.word 0x6a3d0c51, 0xf54dc2ca, 0xd3d60c8b, 0xe083baf5, 0x4cb35f28, 0x5a55f685, 0x42915856, 0x15f97969
.word 0x86587b77, 0xa90968d5, 0xb1f8d6eb, 0xe2f29d0a, 0x0b29b204, 0x82c34d7c, 0x6d74c57f, 0x674359f9
.word 0xf8538c7f, 0xe380a12c, 0x23d99047, 0xe0074f2d, 0x1a8d8f77, 0x54a1e1ea, 0x2d887f3e, 0x73134f82
.word 0xd8852e3d, 0xad20f8bd, 0x9f8b4c66, 0x93220b57, 0xeeee0499, 0xc28e5bb4, 0xdf78dd06, 0x74061802
.word 0xc62da0ab, 0xe88edd47, 0xbd8c10dd, 0x36617b83, 0x52f7cceb, 0x06d545ac, 0x6847db58, 0x6e88e2ab
.word 0x7763d12f, 0x55be4f64, 0x0fe57176, 0x161eca31, 0x5f988e03, 0xe71ee8dd, 0x5667a5f5, 0xa399342e
.word 0xa60b7000, 0x33763e8c, 0x9899aa7d, 0x6e7e3760, 0x5d4e8cb7, 0xd709a8d7, 0x6f4d3fa0, 0x0f252da4
.word 0x172c65fe, 0x3d1b9516, 0xdfa1cf3f, 0x98bc2e04, 0x87f4b7af, 0xfb353ccb, 0xa6a1811d, 0xc78e65b3
.word 0xcbbce766, 0xf287d717, 0xd718a06b, 0xe924eb6b, 0xd063ad50, 0x3eb7346a, 0x53dedba2, 0xe06849c1
.word 0x5392a10e, 0x182b9757, 0xbdda51c0, 0xca38464f, 0x088f54f6, 0x1220713c, 0x9fc8a3c8, 0xc67168a7
.word 0xf70945bf, 0x362ae789, 0x1bc5862e, 0xd261c30a, 0xf509c11d, 0xae897bc6, 0x3d86dc82, 0x6f49af3d
.word 0x1c382223, 0xfa7ce587, 0x95492591, 0xd3f9ea93, 0x798561b0, 0xa58f7cce, 0x80b6f1ca, 0x9c8e39e4
.word 0x9b226616, 0x37afcee0, 0xe1dbcc12, 0x589bd70b, 0x0a75d4ff, 0x604c224c, 0xc7fb1892, 0x7d2d7eb8
.word 0xf3020aac, 0xb398a1b9, 0x8bcf3851, 0xfd63853c, 0xa832e2ed, 0x031d0bbf, 0xe39aef3c, 0x8e31ab5a
.word 0x53a99680, 0xd089486d, 0x1cc0e7d0, 0x494f53ad, 0x9831edb1, 0xd2a9838e, 0xae03a1d1, 0x8789fe54
.word 0x10bc46ed, 0x6e2e50d0, 0x723f1b29, 0x9cb842a3, 0xeb8eb74f, 0xa6f80cc2, 0x4ef3e63f, 0xfe8cb61d
.word 0x3bdf1a86, 0x5a409809, 0xb35dffa7, 0xe5f588cb, 0x1e1175bb, 0x17e6cd84, 0xf24591e1, 0x14276752
.word 0xfabd8607, 0xbba862a2, 0x4d232f65, 0xfba1472f, 0xe1cc47fa, 0x9e0c0a71, 0x5fc3aeb4, 0x2d630842
.word 0x2002fbab, 0x1548b01a, 0x8a36111a, 0x37a9a5cb, 0xfdf6460e, 0xa0394870, 0x5b4f3605, 0x58a3e138
.word 0x6c4109f5, 0xc36bc09b, 0xffe7362a, 0x370257af, 0xfba1b39e, 0xe120a34b, 0x9c549b95, 0x2d2b07c0
.word 0x403692a6, 0x32cdde82, 0x1e6d659b, 0x48712a3a, 0x24ea0428, 0xff780afd, 0x812bc170, 0xc2923133
.word 0xe33ae6d4, 0x0ff1e4db, 0x584ff82a, 0xe5d26f87, 0xd83634b9, 0x869b969b, 0x3a9179a7, 0x4ee0468d
.word 0x0325339d, 0x0ede04ab, 0x402cadb7, 0xed5636ee, 0xeed440c3, 0x3f46439f, 0xe7eb831e, 0x76d8ba20
.word 0x8d747221, 0x8754a56f, 0x81cc7099, 0x0ea9b723, 0x4393b191, 0x82a0ce8d, 0x6fcbc4b9, 0x6fa9a61c
.word 0x95109f72, 0xc9145ff4, 0x9dab1a1c, 0xf104581f, 0xd13f29fd, 0xada69ae1, 0x5762aa1b, 0x9b4bb1bb
.word 0x4ab731a2, 0x6461f84b, 0x4c87dca0, 0x0d480ec5, 0x018cc52d, 0x7b4d9f72, 0x0f0d1f56, 0xb408b61a
.word 0xe9cfbbae, 0x9e41b8ea, 0x0e037a97, 0x37912060, 0x91497418, 0x9948b5e5, 0xc72cbccf, 0x12f7e3f0
.word 0x7d121e2a, 0x99fdff19, 0xf8668be6, 0x08909a1b, 0x78a419fe, 0xf7d8ffd6, 0xaf43a881, 0x39bc5db0
.word 0x0c4a26f7, 0x54068539, 0x11bfcbb1, 0x9347a772, 0x3b2403a1, 0x837b2ce8, 0xe4cefe4d, 0xa05d7c63
.word 0x37a4b97b, 0x90ece887, 0x52792af1, 0xe430909f, 0x9a050bcd, 0x27ac055b, 0x0b79faeb, 0x294a6f1a
.word 0xf0745c9f, 0xdde91c93, 0x67a9a7be, 0x2399dcc0, 0xce580860, 0xc5e5cd2c, 0x25c64b60, 0x19236f40
.word 0xebb8ebdf, 0x06e0bab9, 0x8407b34c, 0x4fc29f4c, 0x85dfc926, 0xfee573fc, 0x0dfa3041, 0xa15d1560
.word 0x77e83e7c, 0x68e60044, 0x88c11eeb, 0x4e095282, 0xc12292cb, 0x8f49f48e, 0xf0462f86, 0xf004c24e
.word 0x18a8e7d5, 0x0f373feb, 0x93b3b9ce, 0x7ebd3a4c, 0xd6f944b6, 0x151b4366, 0x1c6b5ffa, 0x199b79c7
.word 0x798d1919, 0xd82c52b3, 0x02aaaf6a, 0xc234759f, 0xd3a4ccd2, 0x81aebf51, 0x2de0c401, 0x16e69285
.word 0x8c90d512, 0xe07a7a52, 0x658aed09, 0x732c6c4c, 0x4ab96129, 0xadcd4a4c, 0xbff88586, 0xd08d5025
.word 0xfc0b5fa8, 0xa8029330, 0x707f1ff4, 0x842eec95, 0xca132aa4, 0x7ca95860, 0xee077164, 0x9f18f260
.word 0x62ffc8af, 0x03d93864, 0xc2d5ab61, 0xb60b828d, 0x7c85699e, 0xc9584db2, 0x3ff1ff34, 0x63d5d202
.word 0xbb3affed, 0xd07f2fc3, 0xe48f7c71, 0xfe1893a4, 0xecd79a3d, 0x7ecb3af2, 0x622d5f84, 0x8550b14c
.word 0xd0bfcfae, 0xed00ed28, 0xfa8c8c37, 0x438f8aa7
.section .region_1,"aw",@progbits;
region_1:
.word 0xfad211f0, 0x0e13f7d5, 0xd3800465, 0x16ad75f9, 0x7954dc5f, 0x89dc58a7, 0x69d67ca4, 0x29c1f971
.word 0x5cfab0ce, 0x5fd04df7, 0x4d9d1f3d, 0x487bce2d, 0x6b2c48c2, 0xc7ab86dc, 0x2229d155, 0x6dc8b351
.word 0x7e8354a5, 0x2ec72bf7, 0x7a09d181, 0xf3d5425b, 0x75063510, 0xae2aca20, 0x54e5e154, 0xa0df64e3
.word 0x3d24e195, 0xc793cc54, 0x4e2d18e4, 0xaec7f8b5, 0x9f75a621, 0x5f28db5b, 0x9d24d034, 0x5af66b78
.word 0x178e5841, 0x914d662d, 0x3179bed7, 0x6c4b6306, 0x21f9cd74, 0x8ab80f04, 0x321e5332, 0x53f5fa3e
.word 0x92efa1eb, 0xfe811ebb, 0xfa538cb0, 0x8e67673d, 0xb80c59d5, 0x239fe66e, 0x857fdc04, 0x153b561b
.word 0xc2f3d939, 0xc6631d6e, 0xa799ee38, 0xac8d2328, 0xcf0c4f03, 0x842a66c1, 0x4206a76f, 0x419594f1
.word 0xa632c1d6, 0x30d376fb, 0x93897a0d, 0x41d4124b, 0x155211b8, 0x1d69da02, 0x2262b2a1, 0x15943ceb
.word 0xc33feaeb, 0xf9dbe26f, 0x5e9fda2a, 0x075e1127, 0xa64afb23, 0x43590cd9, 0x60b63538, 0x6d4b7187
.word 0x317d303d, 0x66a7db1b, 0xa10ec5f6, 0xba91ecc7, 0x6b23b242, 0x81663dad, 0x8e72f103, 0x8fdb280d
.word 0x491ac29b, 0x779e9de2, 0x664b8e9d, 0x8afd435e, 0x6b4acb03, 0x08102469, 0xe7b723c7, 0x067f16ca
.word 0x0bcde32a, 0x54ed5c84, 0x41b510bb, 0x9bf33bfd, 0x5178c890, 0xd36b857f, 0x79c0c8d0, 0x9a762e91
.word 0xf0dc63e1, 0x3d76cb4c, 0x8d4b4c99, 0x5bd62afa, 0x9aabe756, 0x63a8fa14, 0x54316726, 0x3fb57b6d
.word 0x9014dfb2, 0x38c32937, 0x33e4a147, 0x373664bb, 0xb563120a, 0xe7e50505, 0xd57673b7, 0xbf3c8bdd
.word 0x82601e80, 0x44396744, 0x32bab5db, 0xb40c0b1c, 0xbe519083, 0x4dcf9c32, 0xd42a24c6, 0x5ccb744a
.word 0x35100c3f, 0xa19961e1, 0xf54099bb, 0x1c884f19, 0x0fbb7ecc, 0x072480a1, 0x729edfce, 0xd180ea04
.word 0x3407ec46, 0xd45bec2a, 0x94349a8d, 0xfa54a469, 0xc5eb6346, 0x876a7279, 0xab9bcd90, 0xb737d590
.word 0x535cab67, 0x25d2a7f4, 0x82975544, 0xb4cd387a, 0x0647545f, 0x8a01f835, 0xfda2aa1f, 0xe9dadbc5
.word 0x0cc243ef, 0xa015c572, 0x13ec3225, 0xc6aba5e0, 0xbe680f3a, 0xdcd71965, 0x4472c0eb, 0x4f84af15
.word 0x9c59fb47, 0x9b64e630, 0x65594eed, 0x614a15f8, 0x06571960, 0x45f1a5df, 0x7a3edc97, 0x0e5d78ab
.word 0xcf259cf0, 0x9f6775e1, 0x372ccda8, 0x7eb94396, 0xec8eded8, 0x75c8ef99, 0x748bbb69, 0xe8f554d3
.word 0x6534fa19, 0xde88d757, 0x8abea8ca, 0xbcf5049b, 0xeb8844ec, 0x750a79a9, 0x70352426, 0x69c715f3
.word 0xfa843632, 0x92d51c21, 0x28e6a096, 0x5a87f4a8, 0x3312bd04, 0xb447fcd5, 0x64240ba1, 0x1be3ac41
.word 0x09b2b172, 0xadfa9a6b, 0x16797221, 0xcdde2e2b, 0x5ed5e3b7, 0xeca3b5ab, 0x13e55b96, 0x3ffd8ee0
.word 0xbd5f8b03, 0xcb37bfbb, 0x899ae8c6, 0xb1849e79, 0xd0847e36, 0x37aef02f, 0x3a884a20, 0x78513e74
.word 0x0573a991, 0x6e27e955, 0xb3a09195, 0x5c2bc05f, 0xfb1e9d64, 0x70cf89ab, 0x773abafe, 0x6ae25cd6
.word 0xb697a654, 0xedb4517c, 0xfd30185d, 0xd360ac2b, 0x2d2cadcc, 0xa5f0d48a, 0xa0b10052, 0xda762848
.word 0xb86d6a9f, 0x43eeab30, 0xa1ebb9ec, 0xc50394c7, 0x4f0bffeb, 0x6b85385e, 0x42eee436, 0x30ee3248
.word 0x0e9d65c4, 0xffc4edc5, 0x9baf68c7, 0xd8668052, 0x886f3f69, 0x2ea60990, 0x726ea676, 0x770096d8
.word 0xae7efbcd, 0xde532dd1, 0xcd7ed93c, 0xe2bab3e4, 0x8af5b10b, 0x669fdfda, 0xc1f16bd9, 0x13b5c796
.word 0x5321ea77, 0xd026e4ac, 0x9ce6fc24, 0xf41da2bb, 0x6e5de08a, 0xaee19aa7, 0x8c8edd93, 0x60dd622c
.word 0x26a4de74, 0x8e3cc226, 0x814e5b39, 0x40954fe4, 0x523f2106, 0x2fd619ef, 0xd449d3f0, 0xc82cd697
.word 0x469df9ab, 0xfd8325cc, 0x675a1ed2, 0xadfdaa97, 0x72e96792, 0xc1252b4d, 0x924c742c, 0x55075296
.word 0xdbb203c6, 0xdf7b54fd, 0xdac813aa, 0xec5dda4e, 0xf8ded87b, 0xd82339ce, 0x7a56935b, 0xfee8c7e9
.word 0x4d23a5ab, 0x13944f63, 0x69f8d2f1, 0xa9ce74ff, 0x4926e14d, 0xb4f34023, 0x0d9f1441, 0x53053e9f
.word 0x2cc8f942, 0xdce53873, 0x951e4a1b, 0x1e7a9502, 0x015dd0f6, 0x515c50ee, 0xda3b1ba5, 0x6a7f0bc6
.word 0xfaf96b16, 0x44ad6e6b, 0x8e513a1f, 0x2c0fd606, 0x781f0dfd, 0xe49edb5f, 0x4a7e9dbe, 0x2cc9885d
.word 0x06354f78, 0xa3b51cb4, 0x51f9d83c, 0x41347e7c, 0x2b44965b, 0x424c2aec, 0x8b7d2943, 0x7b8846ba
.word 0x901e6900, 0x32f7b795, 0xb9928683, 0x24562477, 0xd6dcd5e1, 0xb2fa2bdd, 0x809b6cf6, 0xec398410
.word 0x131556aa, 0x52dfc119, 0xbb6f4a5b, 0xb4cfade5, 0xb4e9c957, 0x7fb2dc04, 0x45ae321d, 0x7668f30a
.word 0x3fa63f8e, 0xb1a53cbb, 0xf3d4f7e0, 0x8bf9b557, 0x40cc875e, 0x20f3e453, 0x38c68815, 0x9efb7c97
.word 0xc743e030, 0x34f93889, 0x39825cc1, 0x24680a8b, 0x494207e9, 0xc4bb570f, 0xe325e9ef, 0x9bf0fb67
.word 0x3aa47c05, 0x4a952880, 0xd5430be1, 0xe12fa039, 0xef104e03, 0x61d54e6d, 0x9b42aff5, 0x05c6fa36
.word 0x67c49dca, 0x9edb1e86, 0xf905e9d4, 0x1f91d39b, 0xa32c9ee8, 0x7dc72758, 0x118255a7, 0x7102f002
.word 0x40c567d4, 0x1c9e74c5, 0xfd9f48e9, 0x8f594b7c, 0x6534ac35, 0xd0c4aff5, 0xe14206fc, 0xeb6c7a26
.word 0xea652773, 0xe7a0dd1f, 0xcb4e666c, 0xbea0d5af, 0x5f6e7342, 0xa6e1efb8, 0x461972d3, 0x9ccdabb3
.word 0x80bd7c8a, 0x769b3902, 0xd42c122a, 0xa238d868, 0xe996e45f, 0xf2b89f20, 0x2bcceb91, 0x462dcf2b
.word 0x4142db2b, 0xb5519ccb, 0x652814b1, 0x6871eadd, 0x19ae8a6a, 0x863f105e, 0x0fd2760b, 0x4faaeea0
.word 0xa82998d6, 0xde8d5a8e, 0xde1c87fc, 0xdd86f2d8, 0x3bcc49bb, 0xdf2d987d, 0x9996ce20, 0xf830b04d
.word 0x2a17c6f7, 0xd61d4caa, 0x368e9cd5, 0x196f8cfa, 0xa3335640, 0x1c5e552d, 0x90266437, 0x918226d3
.word 0x8b5ab3cf, 0x22d2e8ef, 0xf2c2fb49, 0x254fe104, 0x1e7be35d, 0x3432128b, 0x5ea2f2b5, 0x42436ede
.word 0x196812d7, 0xcf95f270, 0xddd4f5c0, 0xdb56d06d, 0x4a8990eb, 0x9b719bd1, 0x68ccb567, 0xe9c6010e
.word 0x92e743e8, 0xca734642, 0xb3113b73, 0x5f52c196, 0x8363de98, 0x12fcf34f, 0x0b500140, 0xa3ebb389
.word 0xa2e59d8a, 0x2ff018f5, 0xaa3d39b6, 0x5b434b35, 0xb3eb003f, 0xb91e8f14, 0xc9cef039, 0x7a0fd9be
.word 0x83214301, 0x728a06c9, 0x2315588e, 0xc06f0a01, 0x5d84a696, 0x85d9f234, 0xf3152f2f, 0xf4488b06
.word 0x14718f04, 0xcaca38dd, 0x3012d3fa, 0x75930a0d, 0x56a6ea00, 0x5a0b9ed7, 0x44e5861a, 0x260bb093
.word 0x6c2518ce, 0xdd08d747, 0x44bdaf70, 0x1c79b2e0, 0x67776121, 0x676fad00, 0xc12b5100, 0x2afb77fb
.word 0x9c65d475, 0xdcdbccaa, 0x82cf94e7, 0x429ff872, 0x69ec6426, 0xc026e44a, 0xdfc590cd, 0x27f6c9ed
.word 0xb696a693, 0x441749e9, 0x28198df0, 0x33c4fdcb, 0x52e0e6f4, 0xd7bea5b1, 0x5aa5e527, 0x0c199b14
.word 0x020cdcb3, 0x5f0ea7fd, 0x01fac83b, 0xd7d8b1bf, 0x85c6cc79, 0x7a738702, 0x50937baf, 0xdc0a4725
.word 0xa694c2c7, 0x2ba7ca5c, 0x090ffbef, 0x86f79ce5, 0xdee9a0a6, 0x41307962, 0x37bd8a60, 0x29e6c52e
.word 0x177fb7d5, 0x096feabb, 0x1a59dcdc, 0x65ab2904, 0xad6981ba, 0xdda803d1, 0x6c8cd0ad, 0x489b6d1d
.word 0xb81b5b6c, 0x45565a21, 0xd0b109aa, 0x782ccfef
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_2:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_3:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_4:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_5:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_6:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_7:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_8:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_9:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_10:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_11:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_12:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_13:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_14:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_15:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x13, x15, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x25, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x25, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x25, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x25, x10, ecall_handler
                  li x10, 0x1
                  beq x25, x10, instr_fault_handler
                  li x10, 0x5
                  beq x25, x10, load_fault_handler
                  li x10, 0x7
                  beq x25, x10, store_fault_handler
                  li x10, 0xc
                  beq x25, x10, pt_fault_handler
                  li x10, 0xd
                  beq x25, x10, pt_fault_handler
                  li x10, 0xf
                  beq x25, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x11, test_done
                  jalr x1, x11, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x11, write_tohost
                  jalr x0, x11, 0

instr_fault_handler:
                  add x15, x13, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x13, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x13, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x15, x13, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x15, x13, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x15, x13, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
