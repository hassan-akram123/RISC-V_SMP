.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 0
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
                  li x1, 0xf
                  li x2, 0x3910313a
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x6ac7e3db
                  li x7, 0xfed780b1
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x3
                  li x13, 0xa274b142
                  li x14, 0x868cd2ae
                  li x15, 0x80000000
                  li x16, 0x4
                  li x17, 0x0
                  li x18, 0xc
                  li x19, 0x9034d84b
                  li x21, 0x1
                  li x22, 0xfbd056a4
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0xc
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x194df44f
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x0
                  la x20, user_stack_end
main:             la           a4, sub_1
                  sltu         a6, a7, a1
                  addi         tp, sp, 105
                  xor          t6, s8, a1
                  slti         t6, s7, -1753
                  ori          t5, ra, 1242
                  addi         zero, a1, 1717
                  or           t5, s5, s4
                  addi         a4, a4, -876
                  sltiu        t3, ra, 1024
                  or           s0, ra, a3
main_j2:          jalr         a0, a4, 877 #jump main -> sub_1
                  addi         a1, zero, 7 #init loop 0 counter
                  sll          s0, t3, t6
                  slli         gp, a5, 16
                  sra          t0, s2, a0
                  ori          s5, s0, -1270
                  ori          a6, s5, -1510
                  slt          a0, s8, s9
                  addi         t5, zero, 16 #init loop 0 limit
                  srli         s9, t2, 3
                  slli         sp, a1, 0
                  slt          sp, t5, a6
main_0_0_t:       lui          t4, 965812
                  andi         sp, s7, -539
                  sra          a6, s7, gp
                  sub          s3, s1, a3
                  addi         a1, a1, 9 #update loop 0 counter
                  add          a0, s6, a0
                  slti         t6, t4, 1543
                  sltu         ra, tp, t2
                  and          a6, a4, t5
                  srai         s0, s4, 8
                  xori         s0, s2, 1686
                  slt          t1, t4, s3
                  sltu         s6, s5, ra
                  slli         sp, s0, 25
                  slti         s1, s9, 1391
                  auipc        s7, 453022
                  srli         s0, s7, 16
                  beq          a1, t5, main_0_0_t #branch for loop 0
                  srli         s6, a6, 21
                  addi         a5, zero, -7 #init loop 1 counter
                  addi         sp, zero, -8 #init loop 1 limit
main_1_1_t:       slt          a0, t2, ra
                  addi         a5, a5, -2 #update loop 1 counter
                  addi         t6, zero, 10 #init loop 0 counter
                  srli         tp, tp, 3
                  addi         s2, zero, 10 #init loop 0 limit
main_1_0_t:       xori         t3, s9, 242
                  addi         s9, s0, -299
                  addi         t6, t6, -9 #update loop 0 counter
                  bgeu         t6, s2, main_1_0_t #branch for loop 0
                  bge          a5, sp, main_1_1_t #branch for loop 1
                  srli         s1, gp, 23
                  andi         a6, s9, -1845
                  xori         t6, a2, 1935
                  sltu         ra, a7, t5
                  xori         a6, s9, 2014
                  auipc        s2, 858506
                  sub          s7, a2, s10
                  slti         s3, s3, -1470
                  sra          ra, ra, zero
                  slti         s1, s1, -1668
                  srai         a4, a7, 5
                  add          a3, t0, s0
                  blt          zero, zero, 22f
                  lui          a7, 471686
                  lui          sp, 935573
                  xor          a0, gp, s11
                  ori          ra, ra, -173
                  sra          t0, s0, s1
                  srai         a5, s4, 7
                  srl          tp, s2, gp
                  or           s1, s0, tp
                  addi         s3, s9, 525
                  addi         s7, a1, -199
22:               auipc        s0, 137700
                  xor          s11, s6, s8
                  xor          tp, s8, s4
                  bne          s9, s5, 42f
                  slti         a5, t6, 1989
                  sra          s1, s2, t0
                  and          s2, a7, sp
                  srli         s6, zero, 21
                  sltu         t2, a0, s1
                  bge          s2, s2, 51f
                  nop
                  xor          s3, s2, a5
                  xor          s1, s2, zero
                  ori          s9, s3, 1022
                  sub          s1, s3, tp
                  bge          a6, s3, 55f
                  bge          a6, t2, 51f
                  slli         s9, a3, 20
                  srl          a1, s3, s1
                  sltu         s6, t6, s1
42:               srl          sp, t5, s3
                  auipc        t5, 427197
                  addi         a4, ra, 1679
                  xori         a7, t1, -1320
                  bge          a1, a3, 63f
                  or           a5, s10, s11
                  ori          ra, a7, 483
                  sub          t3, a3, a1
                  addi         a7, a2, -1059
51:               blt          s6, s8, 52f
52:               bgeu         gp, sp, 63f
                  nop
                  sra          a1, s9, s5
55:               nop
                  sra          a4, t6, t2
                  bgeu         a6, t5, 75f
                  or           a3, t0, t4
                  beq          a0, t2, 62f
                  xori         tp, ra, -1689
                  auipc        s1, 990580
62:               bgeu         s2, s1, 64f
63:               beq          s11, t0, 66f
64:               sll          tp, zero, s6
                  blt          s9, s10, 69f
66:               bgeu         s2, gp, 67f
67:               bgeu         s0, a0, 81f
                  slt          tp, tp, s7
69:               sltiu        t5, s1, -1832
                  bgeu         s9, s10, 86f
                  beq          s7, a3, 86f
                  bgeu         gp, a4, 73f
73:               srl          a4, t0, a2
                  blt          gp, t0, 76f
75:               srai         tp, t2, 17
76:               or           t4, s1, t2
                  add          s7, a7, s2
                  blt          a5, a6, 90f
                  srli         sp, zero, 30
                  and          sp, a1, t2
81:               srli         ra, s3, 15
                  lui          t0, 485901
                  slti         s11, t2, 2029
                  sra          s6, a1, gp
                  bgeu         s7, a5, 92f
86:               xori         s0, s4, 1685
                  sll          s5, s5, t2
                  sltiu        s9, gp, -840
                  slt          a5, s7, a1
90:               and          s10, a7, a1
                  ori          s9, tp, -1555
92:               andi         t2, tp, -1593
                  slti         s5, a4, -1863
                  bge          zero, t4, 97f
                  srl          a4, s11, a6
                  sra          t4, s8, t5
97:               beq          s7, s2, 104f
                  bgeu         t3, a3, 99f
99:               xori         t0, s1, -565
                  la           s0, sub_1
                  sra          s5, t6, t5
                  add          tp, s0, a1
                  addi         s5, t6, 652
                  addi         s0, s0, -827
                  ori          s3, gp, 284
                  bne          t0, a5, main_j1 #branch to jump instr
                  auipc        s2, 222729
main_j1:          jalr         a0, s0, 827 #jump main -> sub_1
                  sltiu        s1, s5, 287
                  addi         t2, a0, -555
                  bgeu         a1, s3, 111f
                  slti         s2, t1, -279
104:              nop
                  srli         a0, s0, 2
                  sra          ra, s1, s0
                  bge          t1, a1, 110f
                  or           a4, t0, a3
                  andi         a6, t2, -1447
110:              auipc        ra, 443644
111:              lui          t6, 396266
                  slti         s11, a0, -351
                  bge          a0, t3, 118f
                  sub          t4, t6, a3
                  srl          tp, a4, a1
                  xor          t2, t3, s10
                  blt          a3, s9, 132f
118:              lui          a3, 349249
                  beq          a5, s8, 130f
                  ori          s7, a0, 85
                  auipc        t5, 572281
                  andi         t6, a0, 187
                  or           sp, s0, a5
                  auipc        t0, 317607
                  sltiu        a6, s0, -1061
                  add          a0, gp, s0
                  sra          a5, a1, a2
                  bne          s0, t4, 129f
129:              sll          s0, s9, s0
130:              bgeu         a7, t3, 131f
131:              slt          gp, t4, s7
132:              or           tp, a6, a0
                  la x24, test_done
                  jalr x0, x24, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         s4, s4, -60
                  sub          gp, s11, t6
                  xor          s9, a4, t4
                  slti         s10, t2, -1028
                  sw           a0, 4(s4)
                  slt          a5, t3, s4
                  ori          t6, s1, 487
                  srl          s3, tp, t1
                  sltu         t0, t6, s4
                  sra          a6, s1, sp
                  xor          s7, t5, a6
                  srl          a5, s9, t1
                  addi         t6, zero, 3 #init loop 0 counter
                  slt          a5, t4, a4
                  addi         s9, a0, -586
                  srli         s6, ra, 29
                  or           ra, s4, t6
                  andi         t2, ra, 1076
                  addi         a7, zero, 12 #init loop 0 limit
                  sltu         a6, a1, s5
                  sra          sp, a5, a0
sub_4_9_0_t:      slt          s0, t0, a6
                  srl          s6, s4, s9
                  srai         sp, gp, 27
                  lui          a6, 766254
                  sub          s0, s1, s0
                  addi         t6, t6, 9 #update loop 0 counter
                  nop
                  beq          t6, a7, sub_4_9_0_t #branch for loop 0
                  sub          s9, t6, s6
                  addi         t4, zero, 2 #init loop 1 counter
                  or           t1, s8, s7
                  addi         tp, zero, 1 #init loop 1 limit
                  srli         t6, s8, 14
sub_4_8_1_t:      xor          gp, zero, a6
                  andi         s6, zero, 738
                  sra          t2, a5, a4
                  and          s11, zero, a1
                  addi         t4, t4, -10 #update loop 1 counter
                  and          a7, gp, t4
                  addi         a3, zero, -10 #init loop 0 counter
                  and          a7, t6, gp
                  addi         s9, zero, 14 #init loop 0 limit
                  or           s11, zero, a2
sub_4_8_0_t:      add          s2, a5, t4
                  or           a5, s8, a1
                  addi         a3, a3, 8 #update loop 0 counter
                  auipc        a7, 1017927
                  beq          a3, s9, sub_4_8_0_t #branch for loop 0
                  sltu         t0, s11, ra
                  or           t1, s7, t1
                  sra          t6, s10, t4
                  bge          t4, tp, sub_4_8_1_t #branch for loop 1
                  xori         s6, s5, -673
                  addi         tp, zero, -8 #init loop 1 counter
                  slli         t3, s7, 27
                  slti         t2, t1, 1270
                  sltiu        a0, t6, 1701
                  sub          t0, t4, s3
                  slli         s11, s9, 20
                  addi         ra, zero, -19 #init loop 1 limit
sub_4_6_1_t:      xori         t4, s0, 1790
                  srai         a0, a5, 29
                  addi         tp, tp, -6 #update loop 1 counter
                  addi         a6, zero, 9 #init loop 0 counter
                  or           a3, a4, a5
                  sltiu        gp, t6, -1484
                  slt          s6, sp, s0
                  addi         t5, zero, 18 #init loop 0 limit
sub_4_6_0_t:      slt          a0, t0, s0
                  srai         a1, t5, 29
                  addi         a6, a6, 5 #update loop 0 counter
                  srli         s11, s5, 9
                  blt          a6, t5, sub_4_6_0_t #branch for loop 0
                  sra          t6, s1, a0
                  srai         s7, t1, 6
                  sra          s2, s4, s10
                  bge          tp, ra, sub_4_6_1_t #branch for loop 1
                  sra          t6, s11, s5
                  addi         s1, zero, -3 #init loop 1 counter
                  addi         t0, zero, -18 #init loop 1 limit
sub_4_10_1_t:     and          t3, a5, a6
                  addi         s1, s1, -5 #update loop 1 counter
                  addi         s9, zero, 8 #init loop 0 counter
                  addi         sp, zero, 4 #init loop 0 limit
sub_4_10_0_t:     nop
                  addi         s9, s9, -2 #update loop 0 counter
                  bgeu         s9, sp, sub_4_10_0_t #branch for loop 0
                  beq          s1, t0, sub_4_10_1_t #branch for loop 1
                  addi         s7, t6, -605
                  addi         s5, zero, 7 #init loop 0 counter
                  slli         s1, s6, 13
                  addi         a6, zero, 14 #init loop 0 limit
sub_4_7_0_t:      add          s3, t0, t1
                  addi         s5, s5, 7 #update loop 0 counter
                  andi         a4, a2, -209
                  and          s9, a4, s7
                  bne          s5, a6, sub_4_7_0_t #branch for loop 0
                  sub          tp, a5, sp
                  addi         a3, zero, 9 #init loop 1 counter
                  addi         t0, zero, 7 #init loop 1 limit
sub_4_4_1_t:      add          a6, t2, s11
                  addi         a3, a3, -5 #update loop 1 counter
                  addi         s6, zero, 5 #init loop 0 counter
                  addi         t6, zero, -7 #init loop 0 limit
sub_4_4_0_t:      ori          sp, a7, 1513
                  addi         s6, s6, -3 #update loop 0 counter
                  bne          s6, t6, sub_4_4_0_t #branch for loop 0
                  bgeu         a3, t0, sub_4_4_1_t #branch for loop 1
                  slli         ra, t5, 8
                  addi         s6, zero, 10 #init loop 1 counter
                  sltiu        t4, a3, -1579
                  xori         a1, s7, 1801
                  nop
                  ori          a7, ra, 897
                  addi         t1, zero, 18 #init loop 1 limit
sub_4_1_1_t:      sltu         s5, t1, s2
                  addi         s6, s6, 1 #update loop 1 counter
                  addi         s2, t2, 311
                  xori         sp, s8, 82
                  add          a6, zero, t3
                  addi         s7, zero, -3 #init loop 0 counter
                  addi         s9, zero, 17 #init loop 0 limit
                  srli         t5, a5, 1
sub_4_1_0_t:      xori         s5, s0, 408
                  addi         s7, s7, 10 #update loop 0 counter
                  addi         t3, s6, 479
                  slli         s3, a4, 15
                  bne          s7, s9, sub_4_1_0_t #branch for loop 0
                  sll          t6, gp, t4
                  or           a0, tp, a2
                  addi         s5, a7, -1818
                  add          a0, a1, a7
                  xor          a6, tp, t5
                  bne          s6, t1, sub_4_1_1_t #branch for loop 1
                  sltiu        t2, a4, -1444
                  addi         a0, zero, 8 #init loop 0 counter
                  nop
                  slli         a7, t2, 28
                  nop
                  addi         t0, zero, 6 #init loop 0 limit
                  sra          s11, a7, t5
                  slti         t5, tp, 695
sub_4_2_0_t:      andi         a6, s6, -619
                  add          t6, a1, t6
                  add          t4, s8, s6
                  addi         a0, a0, -10 #update loop 0 counter
                  bge          a0, t0, sub_4_2_0_t #branch for loop 0
                  and          t1, zero, t3
                  addi         a5, zero, -9 #init loop 0 counter
                  sltu         s3, s6, s11
                  sltiu        ra, s3, -116
                  srai         zero, s0, 19
                  addi         a3, zero, -17 #init loop 0 limit
                  sra          s2, s2, s11
                  ori          ra, s4, 54
                  add          t6, a7, a5
                  sll          s2, s5, tp
                  lui          t3, 235381
                  auipc        a1, 202820
                  slli         t0, s0, 4
                  slt          s9, s6, s3
sub_4_5_0_t:      xori         s3, s5, -586
                  and          a0, sp, a1
                  slli         s7, t4, 23
                  slli         s3, a1, 1
                  sltiu        zero, s5, 722
                  addi         a5, a5, -4 #update loop 0 counter
                  slli         a6, s4, 26
                  ori          a4, t6, -489
                  or           tp, t6, s1
                  srl          s5, t5, sp
                  bne          a5, a3, sub_4_5_0_t #branch for loop 0
                  sra          s1, gp, sp
                  ori          s11, a2, 247
                  auipc        a0, 975007
                  lui          t6, 788340
                  slli         s0, a1, 24
                  srai         s11, a6, 20
                  andi         tp, s2, -1487
                  xor          s5, t5, t4
                  or           a4, t6, s6
                  sltiu        ra, a3, -1267
                  beq          s10, t2, 29f
                  bgeu         sp, t4, 11f
11:               xori         a6, s11, -285
                  bgeu         s3, t4, 27f
                  andi         s7, s1, 704
                  auipc        s3, 648476
                  srai         zero, t2, 10
                  nop
                  beq          t3, s4, 19f
                  and          s5, gp, s6
19:               sltu         s10, s4, s2
                  bne          a6, s11, 21f
21:               add          s2, t4, s1
                  sltiu        a6, t3, 1331
                  slli         sp, a6, 3
                  slti         t3, s3, -137
                  addi         s10, a4, 1880
                  ori          t6, s4, -1406
27:               bne          sp, s5, 33f
                  bge          s9, a0, 33f
29:               andi         s11, sp, 1372
                  xori         s7, t2, -124
                  or           s0, a5, s2
                  nop
33:               andi         a0, ra, -1854
                  bge          t6, zero, 36f
                  and          s7, t4, s5
36:               bge          s6, s11, 53f
                  bge          t4, t6, 53f
                  ori          tp, a4, -407
                  sltu         a1, s0, a1
                  andi         s1, s6, 1598
                  slt          a6, a5, s3
                  or           sp, s2, s7
                  beq          t5, t2, 55f
                  bltu         zero, a3, 52f
                  ori          a7, t4, 2043
                  sll          zero, s2, a7
                  sltiu        gp, s9, -665
                  sll          s9, gp, sp
                  nop
                  bgeu         t1, t6, 59f
                  sltu         t4, tp, s9
52:               blt          s10, s6, 60f
53:               sltu         t2, t4, a0
                  andi         s9, t2, 692
55:               sra          t3, s8, s2
                  slli         sp, a5, 4
                  bgeu         s11, t5, 68f
                  bne          s8, s2, 70f
59:               sltu         a6, t3, a2
60:               and          s0, t0, s3
                  nop
                  beq          s7, t3, 70f
                  addi         tp, a2, 1811
                  nop
                  blt          a2, s11, 70f
                  addi         t4, t0, -1891
                  andi         ra, s6, -971
68:               bge          t2, t0, 80f
                  sll          t4, sp, t3
70:               beq          s10, a4, 89f
                  xor          s5, s6, s5
                  srli         gp, s3, 20
                  sltiu        t1, a0, -783
                  slli         a0, t2, 2
                  beq          a0, t4, 93f
                  slti         s3, s9, -1680
                  slt          t2, s3, a1
                  nop
                  slti         t6, s3, 625
80:               auipc        a5, 228721
                  sub          s0, a5, a3
                  nop
                  lui          a1, 942357
                  or           s1, s7, s7
                  sltiu        a5, t3, -90
                  sub          s9, zero, a4
                  sltu         t5, s6, a2
                  sub          t3, s0, s6
89:               bge          s1, a1, 109f
                  srai         ra, t5, 23
                  slt          a0, s0, t2
                  xor          gp, s0, t3
93:               bne          t3, a2, 113f
                  slli         s9, t6, 12
                  auipc        a6, 1043850
                  blt          a7, tp, 104f
                  and          t1, s5, a1
                  and          a1, s10, s2
                  sra          s3, t3, a4
                  slti         t5, s3, 233
                  add          s10, a3, s7
                  sra          s5, s10, t4
                  srai         tp, s7, 16
104:              blt          tp, s3, 119f
                  sra          t6, s9, zero
                  andi         t3, t3, -732
                  blt          s7, s6, 118f
                  slti         t1, s1, 1885
109:              addi         s0, a4, -142
                  slt          a7, tp, s6
                  nop
                  slti         t2, sp, -1938
113:              auipc        zero, 760973
                  lui          s3, 861917
                  or           a1, a0, t1
                  addi         s0, gp, -1913
                  lui          t6, 749389
118:              or           a0, t1, s9
119:              srli         a0, a4, 9
                  srai         s10, s7, 0
                  bltu         t6, tp, 127f
                  beq          t2, a1, 140f
                  bltu         t2, s1, 125f
                  andi         s2, t5, 1832
125:              xor          s11, tp, t5
                  sll          t2, a4, t0
127:              bgeu         a3, s1, 146f
                  srai         a1, a5, 24
                  auipc        a0, 951625
                  and          s7, s7, a5
                  add          s2, s0, s1
                  bne          s10, sp, 140f
                  nop
                  ori          s7, s4, -786
                  srai         a4, t1, 26
                  sltiu        t3, tp, 1220
                  nop
                  bge          s1, ra, 150f
                  srl          a6, t1, s10
140:              bltu         s6, a1, 151f
                  bgeu         sp, t2, 143f
                  add          s9, t6, a3
143:              addi         tp, zero, 1576
                  bge          a2, t1, 162f
                  andi         t1, t4, 429
146:              slti         a5, s1, 1446
                  sll          t3, a1, s3
                  beq          gp, t5, 150f
                  blt          sp, a5, 169f
150:              sltiu        t4, a1, 1593
151:              xori         t0, s2, -842
                  slli         gp, s3, 3
                  auipc        s7, 772219
                  srli         a3, a1, 9
                  nop
                  slti         zero, s10, 1519
                  blt          s5, s8, 169f
                  sra          t2, s1, s1
                  srai         s6, t2, 3
                  bne          zero, a4, 180f
                  bne          ra, a0, 167f
162:              bgeu         s11, s4, 167f
                  or           s7, tp, a0
                  or           t0, tp, s5
                  srl          a0, ra, s6
                  addi         a0, zero, -2 #init loop 0 counter
                  xor          a6, a2, a4
                  sltiu        s2, s5, -1109
                  xori         t0, t2, 1053
                  srli         t5, t4, 10
                  xor          s2, s8, s9
                  or           a5, t5, s4
                  srai         gp, t0, 2
                  addi         a1, zero, -2 #init loop 0 limit
                  or           s10, s0, s5
                  srl          t3, s5, s2
                  sub          s6, s0, t5
                  sra          s1, a1, a2
                  slt          t0, a5, s0
                  slt          tp, a4, tp
sub_4_0_0_t:      addi         t5, a2, 415
                  xor          s0, t3, sp
                  addi         a0, a0, -7 #update loop 0 counter
                  nop
                  sra          t1, t1, a1
                  xori         sp, s3, 330
                  addi         t3, s11, 779
                  srai         t0, t5, 10
                  sll          zero, t4, s4
                  sra          gp, s3, t3
                  srai         s11, a5, 10
                  bge          a0, a1, sub_4_0_0_t #branch for loop 0
                  or           t0, t6, a5
                  auipc        tp, 117792
167:              blt          a5, t6, 175f
                  andi         s10, s7, 257
169:              beq          t1, t5, 184f
                  and          a3, s4, t0
                  blt          a6, sp, 172f
172:              slli         s6, tp, 18
                  sra          t2, a3, s0
                  ori          a7, t5, 951
175:              auipc        a6, 885812
                  addi         ra, s1, -1248
                  bne          a7, a5, 179f
                  sub          a0, t0, t3
179:              add          a1, a0, s2
180:              bgeu         gp, s7, 196f
                  bge          s2, s9, 199f
                  sra          t4, t2, ra
                  ori          s5, s10, 679
184:              sltu         sp, a6, s6
                  xor          t1, s6, s6
                  add          s1, s2, t0
                  sub          t0, a7, a5
                  addi         gp, s1, -507
                  nop
                  slli         t6, t0, 25
                  xor          a0, a4, s4
                  lui          t4, 412611
                  sltiu        s7, s6, 1607
                  srli         t2, t1, 22
                  add          s2, ra, a6
196:              sll          zero, t2, t5
                  srli         a4, a2, 2
                  andi         a1, a4, 651
199:              slli         a3, s9, 27
                  sltiu        t4, a5, -480
                  slli         s10, s3, 21
                  bltu         t4, t3, 214f
                  addi         s7, s10, 422
                  andi         s3, a5, 832
                  bge          t3, a3, 211f
                  andi         zero, a2, 1005
                  and          a5, a4, gp
                  andi         a5, t0, 902
                  bltu         zero, s3, 224f
                  add          t1, a5, t0
211:              lui          a3, 603791
                  sll          tp, t3, a5
                  srl          ra, ra, s1
214:              sltiu        s1, t2, 1502
                  slli         s11, t0, 8
                  xori         s2, t3, -239
                  beq          t3, sp, 228f
                  bne          a4, ra, 237f
                  or           t4, a5, s6
                  sll          t4, zero, s8
                  add          t4, t6, s4
                  beq          s11, t0, 239f
                  sltu         gp, s3, a1
224:              sltu         s1, s4, t1
                  auipc        s11, 193878
                  srai         s3, t6, 0
                  sltiu        t3, s10, -1014
228:              addi         s0, t0, -1861
                  bgeu         sp, t6, 230f
230:              auipc        s9, 730001
                  addi         a6, zero, -10 #init loop 1 counter
                  addi         t4, zero, 8 #init loop 1 limit
sub_4_3_1_t:      xor          s5, s9, a7
                  addi         a6, a6, 3 #update loop 1 counter
                  addi         t2, zero, 10 #init loop 0 counter
                  addi         sp, zero, 10 #init loop 0 limit
sub_4_3_0_t:      sub          t3, t6, t6
                  addi         t2, t2, -9 #update loop 0 counter
                  bgeu         t2, sp, sub_4_3_0_t #branch for loop 0
                  bne          a6, t4, sub_4_3_1_t #branch for loop 1
                  or           zero, s11, s9
                  bgeu         s6, zero, 251f
                  sub          a4, a5, a3
                  bge          a4, a7, 252f
                  blt          a5, a1, 239f
                  slti         a6, zero, -2041
                  or           s11, a2, s2
237:              or           s11, a0, a4
                  srl          zero, s1, s0
239:              srli         t2, a0, 17
                  bge          a0, t4, 248f
                  bgeu         s6, t2, 250f
                  blt          s11, s8, 250f
                  xori         ra, s7, 1643
                  lui          a6, 44423
                  srli         s5, a6, 17
                  xor          t0, a0, t3
                  sra          s1, a3, a5
248:              and          t4, s11, ra
                  sltu         s5, a2, a0
250:              sub          a4, a2, a6
251:              add          s0, t1, sp
252:              add          t3, t6, a7
                  sub          zero, tp, s9
                  bne          t0, s8, 269f
                  sll          s11, s11, a0
                  andi         s6, s5, 1932
                  srli         a6, s10, 24
                  bne          t0, t3, 266f
                  srl          sp, s3, a4
                  beq          a6, t1, 261f
261:              nop
                  andi         t0, s0, -574
                  sltiu        a4, a6, -709
                  slt          a3, s8, tp
                  bgeu         tp, t5, 273f
266:              blt          a4, a0, 278f
                  and          s10, s7, s0
                  slt          sp, s1, a7
269:              slti         s6, a2, 1380
                  slt          sp, t0, a7
                  sltiu        s11, t1, 1198
                  slli         t6, t1, 12
273:              slt          tp, a7, tp
                  bltu         s1, s5, 285f
                  bne          zero, a2, 292f
                  or           s6, s8, a3
                  nop
278:              lui          t4, 860584
                  slli         t0, gp, 7
                  beq          zero, t6, 286f
                  or           a3, t1, tp
                  andi         t0, tp, -212
                  sub          s9, s2, a6
                  slt          a6, t0, s7
285:              slt          a7, t2, t0
286:              srai         ra, s6, 18
                  sub          t1, a6, a3
                  slli         zero, a6, 15
                  slli         a3, a6, 19
                  srai         gp, t1, 31
                  xor          zero, tp, gp
292:              slti         t3, ra, 1517
                  bgeu         t6, sp, 294f
294:              slti         t1, t5, 695
                  add          a1, s8, s8
                  add          s10, s3, a5
                  slli         a3, a2, 12
                  srai         t1, gp, 31
                  xor          t5, sp, s4
                  sub          t4, a4, t2
                  blt          s6, a5, 313f
                  beq          gp, zero, 310f
                  bltu         ra, sp, 311f
                  blt          tp, tp, 324f
                  sub          a3, s6, a5
                  beq          t1, t4, 308f
                  sll          a1, a4, a6
308:              xor          s6, t0, s3
                  slt          s2, s5, a5
310:              and          t6, a1, s0
311:              bltu         t5, a4, 313f
                  xor          s2, zero, a1
313:              slt          t4, t6, ra
                  and          s5, a2, a5
                  add          a6, s10, a0
                  beq          t3, t0, 321f
                  andi         s7, s9, -1941
                  bge          a6, a4, 338f
                  sltiu        a4, a1, -1846
                  srai         ra, ra, 0
321:              srai         t0, t2, 23
                  srl          t3, s3, t6
                  srl          zero, a2, zero
324:              bltu         a6, t4, 333f
                  srli         sp, t1, 3
                  bne          a0, t5, 332f
                  sub          s6, t4, a5
                  sub          a7, s11, s6
                  slti         t0, t0, -766
                  or           ra, t2, s0
                  bne          t4, s7, 350f
332:              srai         s2, s8, 27
333:              bltu         t3, s10, 348f
                  add          s10, s2, gp
                  beq          ra, gp, 340f
                  sub          tp, a0, a1
                  add          t6, s0, a5
338:              sltiu        s9, zero, -451
                  srl          t1, s4, zero
340:              bne          t6, s10, 359f
                  addi         a6, t2, -629
                  andi         sp, a2, -1357
                  bgeu         s7, s11, 345f
                  xori         a6, a1, 1124
345:              blt          t6, t2, 356f
                  lui          s7, 72552
                  sltu         a5, s0, a5
348:              blt          s0, s11, 368f
                  lui          a7, 1030596
350:              beq          t2, s0, 362f
                  addi         s10, s11, -1619
                  addi         a4, s11, 1142
                  nop
                  auipc        tp, 656469
                  srai         a0, s8, 24
356:              bgeu         s3, t4, 374f
                  sltu         a0, s7, gp
                  sll          tp, s5, s0
359:              slli         s11, a3, 26
                  slli         a7, s6, 2
                  sll          ra, s9, s2
362:              slli         t1, s1, 22
                  addi         a0, t4, -1798
                  slli         s0, s10, 6
                  or           t6, s0, s6
                  bltu         gp, tp, 382f
                  auipc        t2, 894453
368:              and          a6, a5, t0
                  nop
                  blt          t2, s7, 388f
                  xor          t2, t4, s3
                  blt          a6, t6, 388f
                  xori         t5, gp, 634
374:              bge          s10, s11, 382f
                  addi         t3, a3, -1015
                  sll          t1, zero, gp
                  bgeu         a5, s7, 396f
                  sra          a1, t0, a4
                  sra          s7, zero, t0
                  nop
                  slti         t0, a5, -1126
382:              auipc        ra, 1454
                  srai         s6, s2, 13
                  srli         sp, t4, 22
                  slt          s6, a2, t0
                  slli         t1, a2, 29
                  and          s10, a1, a3
388:              xor          s1, s3, t0
                  srli         a1, t3, 0
                  bge          a7, sp, 396f
                  sra          s5, t0, s10
                  bgeu         s5, s8, 411f
                  slli         s0, t6, 14
                  lui          t2, 639997
                  beq          s5, s10, 413f
396:              ori          gp, a0, 749
                  add          s6, sp, s0
                  add          a1, s4, s5
                  bne          t4, s10, 401f
                  blt          s2, t1, 402f
401:              slt          s11, gp, s5
402:              beq          a1, t3, 422f
                  nop
                  sra          s2, s9, a7
                  srl          s7, a3, a2
                  lui          a6, 356526
                  bltu         t1, a7, 419f
                  bne          sp, a5, 420f
                  slli         s2, a2, 30
                  slt          a3, t2, t1
411:              addi         t3, s6, -397
                  bgeu         t5, s5, 420f
413:              add          ra, a5, a3
                  nop
                  or           t3, sp, a0
                  ori          s6, s3, 907
                  slti         s1, s5, -982
                  sra          a0, t1, s7
419:              xor          a6, a6, s0
420:              bne          s2, s2, 431f
                  blt          s2, t5, 430f
422:              auipc        t5, 64691
                  lui          t5, 960898
                  slli         t6, ra, 15
                  srli         ra, s10, 3
                  beq          s4, t6, 427f
427:              srli         s11, s10, 30
                  and          t4, t6, a5
                  slt          tp, sp, a1
430:              lui          s10, 824901
431:              beq          s0, a0, 446f
                  sll          a7, a4, a2
                  xor          s1, a6, s7
                  or           ra, a6, s6
                  andi         s3, gp, 559
                  bgeu         sp, a5, 444f
                  srl          s2, t4, s1
                  andi         a6, t3, -1483
                  auipc        t2, 424907
                  lui          ra, 796540
                  srl          t1, a0, a6
                  auipc        gp, 924778
                  sub          a1, a2, s5
444:              and          s0, ra, gp
                  slti         a5, tp, 2020
446:              sltu         s9, t4, s11
                  or           t3, t0, s1
                  sub          s0, s9, s10
                  lui          zero, 226615
                  sra          s7, a4, sp
                  addi         t5, s3, -439
                  bgeu         t5, t5, 460f
                  lui          s6, 912396
                  xor          s3, s6, s10
                  sll          sp, a0, t0
                  bltu         ra, s5, 462f
                  addi         ra, a6, 1473
                  srl          s2, t3, s5
                  slli         s3, a3, 28
460:              sub          t3, s1, s7
                  and          s0, ra, t6
462:              and          a1, tp, zero
                  beq          t3, s6, 464f
464:              sll          s7, s11, t5
                  ori          s9, a7, -989
                  sra          t4, t2, t3
                  xor          s5, t4, t6
                  ori          t5, a4, 1852
                  or           t2, t6, s8
                  lui          s7, 729770
                  srli         a0, s9, 7
                  add          t3, a3, zero
                  nop
                  beq          s9, a0, 485f
                  srl          zero, s5, s5
                  sra          s5, a7, gp
                  bltu         ra, t1, 492f
                  sltiu        t1, t5, -1318
                  sltiu        gp, s2, 986
                  slti         t3, t1, 1408
                  ori          a6, a3, -455
                  sll          a3, s11, zero
                  xor          a4, s4, ra
                  add          a1, t2, s1
485:              sltiu        a7, t0, 25
                  ori          s9, s0, 1091
                  sll          gp, t5, s9
                  lui          s3, 415160
                  bltu         t6, a4, 509f
                  lui          s1, 563651
                  beq          ra, s11, 493f
492:              blt          s2, t6, 497f
493:              andi         s7, t5, 704
                  ori          a4, a3, 1650
                  bgeu         t5, s5, 507f
                  lui          s9, 178461
497:              lui          s2, 874730
                  auipc        s5, 738280
                  bne          t1, tp, 519f
                  srai         a6, t1, 22
                  nop
                  srai         gp, a5, 8
                  and          t0, t4, s6
                  ori          gp, a3, -1452
                  xori         a3, t0, -1603
                  add          s3, t0, ra
507:              slt          a6, a5, tp
                  ori          gp, a7, -701
509:              addi         s6, s8, -1363
                  sltu         s2, t3, s3
                  xori         t5, s10, 1257
                  auipc        s6, 78634
                  addi         s11, t3, -1865
                  bgeu         a4, s6, 519f
                  addi         s2, s3, 210
                  slti         a1, t4, -1756
                  xori         gp, s9, -59
                  nop
519:              slli         a7, t2, 18
                  blt          s6, a7, 538f
                  sll          t6, s11, gp
                  bltu         s10, a7, 539f
                  addi         s6, t3, -111
                  sltiu        tp, a0, 1203
                  sltiu        s1, t1, -1873
                  xor          t3, s0, t1
                  bge          t2, sp, 539f
                  sltiu        t4, t0, -1944
                  ori          ra, t5, -176
                  bgeu         a7, s5, 550f
                  lui          a4, 148488
                  srai         s7, tp, 7
                  sra          s5, s4, t0
                  srai         s10, tp, 26
                  srl          s5, a3, s5
                  add          t5, t6, tp
                  sub          a4, a3, s6
538:              slt          s1, s0, tp
539:              sra          zero, sp, s5
                  slli         a1, s4, 8
                  bltu         s1, a7, 556f
                  auipc        s5, 424002
                  nop
                  addi         s6, t2, 343
                  sub          s3, t1, t6
                  slli         a1, s3, 13
                  srl          sp, s6, s10
                  nop
                  sra          s5, s8, a1
550:              slti         a3, s0, -1417
                  xori         s10, a1, 940
                  ori          s11, a4, -1580
                  ori          s11, ra, -423
                  sra          s5, s3, t4
                  xor          gp, s4, s4
556:              sub          t4, s6, a2
                  or           s11, s9, t1
                  ori          s3, a0, -1669
                  addi         sp, s9, 1906
                  sltiu        s7, s1, 60
                  sub          t4, tp, t3
                  xori         t0, t0, 1810
                  srli         s0, t1, 16
                  bne          t3, a0, 581f
                  sltu         s6, t0, a2
                  srl          s10, a1, a6
                  slli         s7, ra, 15
                  bltu         s11, zero, 583f
                  sra          s7, a7, a7
                  sub          s1, zero, a5
                  xor          t2, t5, s3
                  and          s11, tp, a3
                  or           s0, a1, sp
                  lui          t5, 323075
                  srai         s0, t1, 23
                  srai         s10, s0, 18
                  slti         a1, s5, 409
                  nop
                  bltu         a5, a0, 581f
                  sltu         s10, a2, s4
581:              auipc        s3, 4006
                  xori         t3, t4, -600
583:              xori         t5, a5, -593
                  or           a3, t0, t5
                  bgeu         t5, s4, 598f
                  lui          t6, 522191
                  lui          zero, 18319
                  xori         a0, s11, -39
                  bge          t3, a6, 594f
                  slli         ra, a6, 17
                  blt          tp, tp, 598f
                  blt          a5, a4, 598f
                  blt          a5, ra, 594f
594:              and          ra, a1, s5
                  xor          s10, t5, s7
                  bne          t4, s6, 598f
                  sltiu        s1, a0, -248
598:              andi         t1, a3, 340
                  srl          t0, t4, s8
                  srli         s11, s4, 29
                  slli         gp, a0, 31
                  sra          ra, a4, a4
                  lw           a0, 4(s4)
                  addi         s4, s4, 60
                  sll          a6, t1, s4
819:              addi x14, x10, 0
819:              jalr x14, x14, 0
sub_5:            add          a3, t6, sp
                  andi         s3, s6, -1600
                  xor          s0, tp, a7
                  beq          s0, s5, sub_5_stack_p
                  sra          a5, s8, t2
                  lui          s9, 504266
sub_5_stack_p:    addi         s4, s4, -64
                  sltu         s10, a4, t2
                  nop
                  slt          t5, t0, s1
                  sw           a0, 4(s4)
                  auipc        t6, 79149
                  srl          gp, gp, s6
                  xor          a5, a2, a1
                  auipc        a4, 238481
                  sll          a5, a1, gp
                  auipc        t4, 711477
                  auipc        s1, 900833
                  sltiu        t2, s5, -275
                  ori          s5, t2, 0
                  bne          a1, gp, 21f
                  beq          a2, s8, 15f
                  xori         a0, s3, 1155
                  xori         tp, s7, 1275
                  beq          a1, s7, 28f
                  slti         s5, tp, -1341
                  nop
15:               andi         t0, a6, 117
                  sra          s1, t0, t5
                  add          s9, a4, s11
                  sra          s7, t2, sp
                  sub          t2, t1, s6
                  slti         zero, a7, 757
21:               bgeu         s0, t3, 28f
                  blt          a7, s5, 28f
                  beq          t4, a5, 28f
                  slt          s6, t3, s7
                  srai         t3, t4, 26
                  beq          t4, s3, 28f
                  add          a3, s7, a4
28:               and          s0, s10, a2
                  srl          zero, t5, a2
                  lw           a0, 4(s4)
                  addi         s4, s4, 64
                  srai         tp, s8, 17
                  auipc        s10, 468550
46:               addi x25, x10, 0
46:               jalr x25, x25, 0
sub_2:            bge          s1, t0, sub_2_stack_p
sub_2_stack_p:    addi         s4, s4, -64
                  sub          s6, s11, s7
                  lui          tp, 1033511
                  sw           a0, 4(s4)
                  add          s5, tp, gp
                  and          a1, s8, a2
                  sltu         s6, a6, t0
                  la           sp, sub_5
                  srl          tp, tp, s11
                  andi         ra, s6, 1897
                  srl          s7, t0, t5
                  srli         a4, s0, 9
                  addi         sp, sp, -877
                  srli         a7, s7, 31
                  ori          s3, a2, -1810
sub_2_j6:         jalr         a0, sp, 878 #jump sub_2 -> sub_5
                  and          a5, ra, s3
                  slti         a3, s4, -626
                  nop
                  xori         s10, a3, 1111
                  slt          s11, s3, s5
                  slli         zero, s5, 14
                  blt          s1, zero, sub_2_j7 #branch to jump instr
                  slti         t1, tp, -1109
                  slli         t1, t1, 26
sub_2_j7:         jal          a0, sub_4 #jump sub_2 -> sub_4
                  addi         a4, zero, 4 #init loop 0 counter
                  sra          s3, s10, ra
                  lui          s3, 654602
                  srai         s5, ra, 11
                  or           t5, ra, a5
                  ori          sp, s2, -1750
                  addi         s6, zero, 3 #init loop 0 limit
                  andi         tp, s11, -961
                  sra          s10, sp, s1
                  slli         a6, s1, 3
sub_2_6_0_t:      add          t1, s10, a4
                  addi         a4, a4, -1 #update loop 0 counter
                  slt          s1, t4, s7
                  nop
                  bgeu         a4, s6, sub_2_6_0_t #branch for loop 0
                  srli         s7, s7, 19
                  addi         t5, zero, 6 #init loop 1 counter
                  xori         gp, ra, 1018
                  addi         t4, zero, 5 #init loop 1 limit
sub_2_1_1_t:      sltiu        s2, s8, -1150
                  addi         t5, t5, -3 #update loop 1 counter
                  and          s5, t2, s1
                  addi         sp, zero, 6 #init loop 0 counter
                  ori          s9, tp, -884
                  addi         t0, s8, -1151
                  addi         s11, zero, -16 #init loop 0 limit
sub_2_1_0_t:      xor          t2, t2, a6
                  addi         tp, t5, -837
                  addi         sp, sp, -6 #update loop 0 counter
                  bge          sp, s11, sub_2_1_0_t #branch for loop 0
                  slti         s10, zero, 1768
                  add          s3, a3, a5
                  slli         a0, a3, 29
                  add          a3, a6, a5
                  bgeu         t5, t4, sub_2_1_1_t #branch for loop 1
                  nop
                  addi         t5, zero, -8 #init loop 1 counter
                  auipc        a0, 417786
                  add          a4, tp, s1
                  addi         a5, zero, -14 #init loop 1 limit
sub_2_5_1_t:      xori         a7, s5, -1037
                  srli         gp, t1, 25
                  addi         t5, t5, -6 #update loop 1 counter
                  and          tp, s9, gp
                  addi         s6, zero, -8 #init loop 0 counter
                  addi         s9, zero, -20 #init loop 0 limit
                  slti         t1, s10, 725
                  add          t4, s6, a2
sub_2_5_0_t:      slt          s11, a6, s5
                  addi         s6, s6, -4 #update loop 0 counter
                  nop
                  srai         s5, zero, 5
                  bne          s6, s9, sub_2_5_0_t #branch for loop 0
                  slli         a0, a7, 24
                  xori         a0, s7, 1532
                  sra          a6, ra, a1
                  and          ra, t0, ra
                  lui          t6, 1027692
                  bne          t5, a5, sub_2_5_1_t #branch for loop 1
                  auipc        a4, 344206
                  addi         t0, zero, -10 #init loop 1 counter
                  or           ra, tp, a5
                  addi         a1, zero, -20 #init loop 1 limit
sub_2_3_1_t:      sub          t4, tp, s8
                  xori         s11, a5, 1589
                  ori          a5, t0, -1183
                  addi         t0, t0, -10 #update loop 1 counter
                  addi         t6, zero, -10 #init loop 0 counter
                  addi         gp, zero, 5 #init loop 0 limit
                  or           a6, sp, s7
sub_2_3_0_t:      xori         a5, s10, -34
                  ori          t4, a1, 88
                  slt          s3, s7, sp
                  addi         t6, t6, 2 #update loop 0 counter
                  andi         a6, s9, -780
                  bltu         t6, gp, sub_2_3_0_t #branch for loop 0
                  srli         sp, a6, 22
                  or           sp, a1, a4
                  andi         s10, s7, 1167
                  bne          t0, a1, sub_2_3_1_t #branch for loop 1
                  or           s3, a7, ra
                  addi         s5, zero, 10 #init loop 0 counter
                  addi         a6, zero, 9 #init loop 0 limit
sub_2_2_0_t:      nop
                  srli         s0, s7, 9
                  lui          s10, 388170
                  srl          zero, s0, a1
                  lui          a7, 514517
                  srli         t1, s4, 27
                  nop
                  srai         t3, ra, 27
                  or           s0, zero, s0
                  sltu         t3, a6, t4
                  ori          zero, t4, 2005
                  srl          t1, a4, s1
                  slti         s1, t4, 297
                  addi         s5, s5, -8 #update loop 0 counter
                  sll          t5, t3, s2
                  bgeu         s5, a6, sub_2_2_0_t #branch for loop 0
                  srli         t4, tp, 17
                  addi         tp, zero, -2 #init loop 0 counter
                  ori          s7, s11, 709
                  andi         s5, gp, 1743
                  addi         s3, a7, -1303
                  lui          s5, 302190
                  srai         s3, s8, 28
                  addi         s9, t0, 1550
                  auipc        s10, 323960
                  srl          s5, t2, s9
                  xori         a0, t0, 795
                  sra          s0, ra, s10
                  addi         t3, zero, 9 #init loop 0 limit
                  add          a1, s3, t5
                  slti         s1, a5, 1966
                  srli         t4, a5, 8
sub_2_4_0_t:      xori         t1, s9, -1523
                  srl          s6, t3, s7
                  addi         tp, tp, 1 #update loop 0 counter
                  auipc        ra, 101418
                  lui          ra, 992836
                  sltiu        s9, t2, -1121
                  sltu         a1, gp, a4
                  andi         t6, s8, -1145
                  lui          s11, 492692
                  bltu         tp, t3, sub_2_4_0_t #branch for loop 0
                  ori          t2, a2, -1533
                  addi         t1, zero, -7 #init loop 0 counter
                  slt          s5, a5, a0
                  ori          t0, a4, 1976
                  or           s5, sp, s2
                  nop
                  sra          sp, s5, a4
                  and          s5, t5, s5
                  sltu         s0, a0, s10
                  xor          a4, sp, t2
                  sltu         s10, a4, s3
                  ori          tp, a4, 406
                  slli         zero, t0, 17
                  and          a5, tp, t5
                  ori          t4, t3, -1212
                  addi         s6, zero, -3 #init loop 0 limit
                  slti         t3, s3, 633
sub_2_8_0_t:      sltiu        sp, a7, 438
                  sll          s3, s4, s5
                  and          a0, a7, a4
                  slti         t6, s0, -1785
                  addi         a1, a2, -262
                  xor          s3, t2, a6
                  srli         a0, s8, 26
                  slli         sp, sp, 24
                  xor          t6, a7, s0
                  sra          a1, s5, t5
                  addi         t1, t1, 4 #update loop 0 counter
                  bne          t1, s6, sub_2_8_0_t #branch for loop 0
                  srai         s5, a3, 21
                  addi         s9, zero, -9 #init loop 0 counter
                  slli         t0, s3, 7
                  srli         s2, a0, 8
                  or           t4, t6, t5
                  and          t1, s10, t4
                  srai         gp, t1, 0
                  lui          gp, 269521
                  slti         s11, s10, -146
                  addi         s1, zero, 5 #init loop 0 limit
sub_2_0_0_t:      and          sp, t4, sp
                  slt          t0, t4, tp
                  xor          gp, s1, a3
                  sub          s5, a3, s9
                  srl          s7, t5, s4
                  xori         a1, s5, 7
                  srl          s6, sp, a7
                  addi         s9, s9, 7 #update loop 0 counter
                  nop
                  nop
                  auipc        s7, 117002
                  addi         a4, t6, 1550
                  srai         s0, tp, 19
                  and          s10, t4, a1
                  bne          s9, s1, sub_2_0_0_t #branch for loop 0
                  lui          a0, 152760
                  addi         t3, zero, 8 #init loop 0 counter
                  addi         t1, zero, 19 #init loop 0 limit
                  ori          s11, ra, -973
sub_2_7_0_t:      xor          s11, s6, s6
                  addi         t3, t3, 10 #update loop 0 counter
                  sra          s10, t1, zero
                  blt          t3, t1, sub_2_7_0_t #branch for loop 0
                  xori         s1, t0, -875
                  sltu         a6, a5, a1
                  bge          s1, t1, 17f
                  sra          a3, t1, t1
                  add          t0, s3, s7
                  add          sp, a2, s2
                  xor          t3, s10, tp
                  and          t4, s1, sp
                  slli         a1, s8, 16
                  xori         s3, s3, 297
                  and          a0, s1, sp
                  bgeu         s11, s3, 29f
                  and          ra, a4, t4
                  bne          a1, s4, 22f
                  sub          a7, a3, a5
                  nop
                  srli         s5, s11, 4
                  addi         tp, s8, 2025
17:               slt          s3, s3, zero
                  bltu         a5, a7, 29f
                  sltu         s0, t2, t0
                  slti         zero, s6, 74
                  blt          t1, t2, 26f
22:               nop
                  xor          s3, a3, t6
                  blt          s3, s10, 36f
                  sll          s1, t1, t0
26:               srli         t5, s8, 5
                  bne          s10, s1, 40f
                  sltiu        gp, s3, -332
29:               lui          gp, 378860
                  sub          t2, s0, t4
                  xori         s5, s5, -1595
                  slti         s6, s4, -999
                  sltiu        t0, a2, -603
                  or           t0, a7, s3
                  xor          s1, s3, a3
36:               beq          t6, s6, 37f
37:               bge          s4, s7, 57f
                  and          a0, t3, a2
                  ori          s7, t5, 1811
40:               slli         tp, s1, 5
                  xori         s6, zero, -117
                  slti         a6, a1, -1920
                  srli         s1, a4, 8
                  slt          a4, a0, t4
                  bgeu         a6, t6, 47f
                  xori         a3, gp, 1299
47:               sltu         s1, a0, a7
                  bge          s0, t3, 61f
                  srli         a1, t0, 20
                  lui          tp, 229914
                  and          ra, s11, s9
                  bne          a7, zero, 56f
                  or           a4, t1, t5
                  slt          s1, t5, a0
                  sra          a5, t2, ra
56:               blt          s5, t4, 72f
57:               srl          s2, t2, gp
                  xori         a7, t3, 1249
                  or           s6, s0, s5
                  srai         a4, a1, 30
61:               auipc        a1, 388902
                  slli         s10, t0, 11
                  slti         t0, a1, -1512
                  srl          zero, t1, s8
                  srl          a4, t0, sp
                  slli         zero, s5, 15
                  slt          zero, t4, t6
                  slti         tp, t6, 115
                  bge          s2, a4, 84f
                  srai         s1, t3, 12
                  slti         t3, s9, 545
72:               srl          a3, s2, s5
                  sll          s3, a6, t3
                  or           s7, a4, s6
                  slli         a1, t3, 12
                  srai         s3, tp, 25
                  srl          a7, s3, t6
                  bgeu         t4, t6, 95f
                  sra          s2, s8, s8
                  or           t0, t5, a5
                  srl          sp, a7, s6
                  lui          t3, 415096
                  auipc        sp, 58803
84:               slt          a0, a1, s11
                  srai         ra, t4, 23
                  or           s1, s5, a5
                  bgeu         t1, s10, 104f
                  sltiu        s2, s11, -830
                  sltu         a7, t1, t2
                  srli         gp, ra, 5
                  slti         t2, s7, 121
                  slti         t2, s2, 1425
                  sub          t0, ra, s8
                  and          s11, t0, t0
95:               sltiu        ra, a6, 639
                  bne          t5, s4, 116f
                  auipc        t6, 455706
                  xori         s0, a1, 1258
                  srai         t0, s7, 4
                  beq          s6, a6, 106f
                  xor          s10, s3, s7
                  addi         a5, tp, -1564
                  auipc        s5, 219216
104:              slt          s5, t6, gp
                  srai         a0, s5, 13
106:              bgeu         a0, a0, 126f
                  slt          a3, a0, t2
                  sub          s11, zero, t2
                  slti         s11, s2, 1491
                  srli         a7, t1, 29
                  or           a0, gp, s5
                  xor          t2, s1, t3
                  sltu         a1, s2, a7
                  slli         a4, a0, 12
sub_2_j5:         jal          a0, sub_3 #jump sub_2 -> sub_3
                  or           ra, tp, s11
                  bltu         t5, t4, 125f
                  sra          s7, t5, s11
                  xor          sp, s4, s0
                  xori         s6, s5, 482
                  auipc        a1, 134853
                  or           a3, s3, t0
                  nop
                  slt          s11, t5, ra
116:              xor          a4, t5, t5
                  ori          s3, a1, -296
                  sra          s0, s1, t1
                  add          a7, s4, a2
                  andi         t0, a0, -318
                  slli         zero, gp, 6
                  xori         t2, s10, 52
                  beq          s9, zero, 141f
                  add          ra, a2, sp
125:              xor          s2, a4, s10
126:              and          s11, s6, sp
                  xori         s2, t1, 1390
                  sltu         s9, s10, t6
                  addi         a0, t1, 1926
                  bge          s9, s10, 150f
                  srli         a5, a6, 29
                  add          s2, a3, s4
                  blt          s11, a2, 148f
                  andi         tp, s4, -1106
                  lui          s1, 850689
                  slti         a5, gp, -1840
                  bltu         a4, s8, 152f
                  addi         sp, t5, 106
                  xor          a6, a1, t0
                  sub          s7, zero, sp
141:              srl          s11, s1, s7
                  srl          s0, t4, a6
                  and          s5, a0, s11
                  slti         t0, gp, -357
                  blt          gp, s5, 162f
                  addi         a1, s0, -850
                  slti         a1, a2, -769
148:              sll          zero, s9, s0
                  sll          t0, a2, ra
150:              slt          ra, t0, s1
                  lui          s11, 427437
152:              xor          s10, s8, s2
                  andi         s3, s8, 1326
                  addi         t6, a0, -1002
                  nop
                  or           s1, a4, s11
                  sra          t2, s11, t1
                  nop
                  sll          t5, s9, a2
                  sltu         a6, s11, gp
                  andi         s1, t2, -1208
162:              xor          ra, a6, s0
                  addi         t1, a5, 1152
                  addi         gp, t0, -526
                  xor          sp, a1, a2
                  blt          s7, t3, 177f
                  slli         a6, s6, 30
                  slti         a0, s5, 928
                  andi         s11, a1, 325
                  bne          s7, s7, 183f
                  sra          a0, s6, ra
                  bltu         t0, s1, 174f
                  bge          gp, s1, 177f
174:              blt          gp, s11, 184f
                  sltu         a7, s2, gp
                  or           a4, t3, s3
177:              slti         a4, t1, 1557
                  and          s5, a0, t4
                  andi         s9, tp, 1941
                  bltu         a7, s6, 191f
                  lui          a5, 272902
                  ori          s6, s0, -43
183:              lui          s2, 1013139
184:              slti         s11, t5, 804
                  nop
                  add          t5, t4, t4
                  bltu         s7, t1, 207f
                  srl          s10, s4, a2
                  lui          s2, 787050
                  bne          a0, a0, 194f
191:              sra          t3, s2, a7
                  slt          a6, s4, ra
                  slli         s5, zero, 27
194:              srli         ra, a3, 26
                  auipc        s10, 76780
                  or           s10, gp, s1
                  add          a6, t1, a1
                  slli         a0, tp, 24
                  lui          s2, 59847
                  auipc        t5, 245050
                  slt          a7, a0, t1
                  bge          s9, s7, 222f
                  sub          s9, s0, ra
                  and          tp, t4, t3
                  sll          s0, a2, t1
                  blt          s0, a6, 218f
207:              and          s3, sp, t2
                  beq          s5, s7, 225f
                  nop
                  slli         t6, s2, 22
                  auipc        t3, 494024
                  nop
                  slli         zero, a3, 4
                  lui          s5, 461232
                  bltu         tp, sp, 230f
                  lui          t3, 897677
                  srai         ra, a0, 9
218:              and          a0, a6, a6
                  xori         t0, s8, 916
                  sltu         t5, a4, ra
                  auipc        gp, 119462
222:              slli         s3, s10, 22
                  sll          s1, t0, s9
                  bgeu         a3, s8, 242f
225:              auipc        s2, 988803
                  xori         t6, s10, -1326
                  srai         a4, zero, 1
                  sll          t6, s5, a0
                  sll          a5, sp, a4
230:              bne          gp, s2, 234f
                  sub          t2, t0, a0
                  sltu         t3, a4, s9
                  xori         t0, s3, -1694
234:              ori          t4, s1, 374
                  xor          a1, s9, s8
                  bgeu         s2, s5, 246f
                  nop
                  ori          a0, s9, -133
                  sltiu        s5, t4, -1454
                  beq          zero, s9, 256f
                  sltu         s0, a1, a3
242:              sra          a6, sp, t1
                  lui          a4, 946643
                  bge          s4, s4, 264f
                  slli         a4, a0, 1
246:              addi         tp, s10, -1607
                  srai         t4, s11, 25
                  blt          gp, a1, 261f
                  beq          t6, a4, 268f
                  bne          s6, t1, 265f
                  slli         s5, sp, 8
                  beq          zero, t4, 263f
                  bne          s0, t5, 268f
                  srli         zero, t5, 22
                  sra          t1, s2, s10
256:              ori          a0, sp, -132
                  slli         s11, a6, 7
                  srli         t6, s0, 3
                  xori         t3, s7, 800
                  beq          t3, a0, 261f
261:              bne          s0, s7, 278f
                  bge          s9, sp, 282f
263:              sra          t5, a2, a6
264:              beq          s0, a4, 266f
265:              bge          tp, s1, 267f
266:              sra          t1, s4, t3
267:              nop
268:              nop
                  blt          t6, a2, 275f
                  auipc        s6, 944690
                  and          tp, a3, t1
                  sra          a7, s10, a5
                  slt          a1, zero, a7
                  sub          gp, s6, tp
275:              addi         t5, s2, 1377
                  slti         s11, t5, -1575
                  bne          sp, s2, 294f
278:              sub          a6, zero, a0
                  bltu         ra, s2, 292f
                  srli         zero, a1, 8
                  andi         a6, zero, 228
282:              bne          zero, t4, 287f
                  beq          zero, a7, 296f
                  addi         sp, s8, 537
                  ori          zero, a2, -749
                  bgeu         s1, s1, 303f
287:              sll          a0, t0, s2
                  beq          s7, t3, 298f
                  lui          s10, 388333
                  beq          s4, t4, 306f
                  srli         t0, a4, 31
292:              beq          a2, s2, 312f
                  sra          a4, s3, t2
294:              sra          a7, a5, gp
                  slt          t0, zero, a3
296:              sll          a0, s2, s10
                  xori         zero, a5, -1843
298:              ori          a0, sp, 1130
                  xor          s6, s10, a1
                  xori         a4, zero, -1159
                  bge          s0, a1, 318f
                  xor          a7, s5, s5
303:              srl          s11, a1, s4
                  add          t4, s8, t4
                  sra          tp, s5, a5
306:              blt          a1, a7, 308f
                  blt          t3, s4, 327f
308:              srai         a6, s4, 17
                  blt          s5, s10, 329f
                  bltu         s7, t4, 311f
311:              slti         tp, tp, 489
312:              xori         a1, t4, -1841
                  xori         s9, a0, -2028
                  or           t6, t3, t6
                  ori          s5, s9, -1602
                  slli         s9, t1, 12
                  blt          a3, s1, 334f
318:              or           s11, s8, a5
                  add          sp, s10, s10
                  bltu         s1, a1, 331f
                  sltiu        t6, s4, -1171
                  slt          s5, a3, s6
                  bge          a6, s7, 340f
                  xor          a1, t0, a2
                  sll          ra, zero, s2
                  ori          s10, s5, -696
327:              sltiu        s11, t5, -1024
                  slti         a1, zero, -1078
329:              srli         s3, a4, 31
                  sub          a7, a4, s6
331:              auipc        a4, 110741
                  or           t1, s5, s3
                  xor          s7, sp, s6
334:              sltiu        t5, t0, 138
                  sll          s10, a2, s10
                  xori         a1, s5, 1859
                  and          t3, a6, sp
                  slti         sp, ra, -1576
                  xori         s10, t4, -1112
340:              add          gp, a5, zero
                  srli         ra, s4, 15
                  bgeu         s7, s7, 352f
                  xori         t6, s11, 412
                  and          s7, s0, a6
                  slli         s5, s7, 22
                  addi         s2, s3, -364
                  slti         a0, zero, -1717
                  srl          s5, s3, s8
                  sll          zero, a4, t6
                  andi         a6, t1, -769
                  srli         gp, sp, 17
352:              lui          a4, 306343
                  sub          s5, s10, a5
                  bge          t3, s5, 358f
                  addi         s6, s4, -1391
                  slti         a4, s4, -606
                  srli         t5, s5, 9
358:              slt          s10, a3, a6
                  xori         s7, zero, -1792
                  beq          s2, a6, 373f
                  srl          gp, s10, ra
                  sltu         t6, a6, s10
                  bge          t6, t5, 369f
                  srli         t1, s1, 16
                  auipc        a7, 666782
                  nop
                  srli         a4, tp, 0
                  lui          t3, 215542
369:              bgeu         a7, t1, 385f
                  blt          s8, a5, 381f
                  addi         t2, t1, -493
                  srl          t2, s11, s7
373:              beq          s8, s6, 388f
                  bne          s3, t1, 376f
                  add          zero, s8, s2
376:              xori         sp, s3, -821
                  blt          a7, a0, 396f
                  sra          s3, s3, s5
                  sltu         sp, zero, s11
                  slt          sp, t5, t2
381:              sll          t6, s7, s0
                  add          gp, s1, a4
                  add          s2, s8, s4
                  blt          t6, t0, 404f
385:              sll          a1, zero, a1
                  ori          t5, s10, -1517
                  bne          s9, s7, 402f
388:              xor          a3, a5, t5
                  sra          t3, t4, s4
                  slt          a7, a5, a3
                  add          t2, s6, s1
                  ori          t6, s5, -330
                  xori         gp, s5, -1514
                  xori         s7, s4, 330
                  srl          s1, sp, a4
396:              sra          t6, t2, a4
                  beq          t0, sp, 414f
                  nop
                  blt          t3, s7, 411f
                  sltiu        a0, s4, -1096
                  slti         a5, s4, -323
402:              slti         t2, a4, 1360
                  ori          a6, s8, -789
404:              sltu         a3, t4, a6
                  sra          sp, sp, t3
                  sra          s6, s6, s2
                  sll          s3, s9, s5
                  xor          a7, a6, a0
                  slli         t2, s5, 8
                  sltiu        sp, a7, 282
411:              slt          t6, t0, t2
                  bge          tp, t2, 427f
                  bltu         s10, s5, 429f
414:              lui          gp, 983087
                  xor          sp, a2, a2
                  addi         zero, a5, -1137
                  sll          a3, s4, a6
                  bltu         s9, t0, 436f
                  slt          a0, a1, s11
                  or           t5, s6, t6
                  sra          s1, a4, t0
                  srl          s2, sp, a0
                  ori          gp, s6, -708
                  bltu         s1, s1, 437f
                  auipc        t3, 340240
                  slli         s10, tp, 12
427:              add          s0, s9, t6
                  sltiu        s10, t2, -593
429:              xori         s11, s0, -787
                  blt          a3, tp, 443f
                  and          s9, a3, a2
                  sll          a5, s3, s5
                  and          s10, s11, sp
                  nop
                  sll          sp, s10, t3
436:              xori         s6, t6, 1906
437:              beq          s3, s3, 447f
                  sltu         s2, s9, ra
                  sltu         sp, s0, t6
                  srai         s5, s1, 7
                  bltu         t3, a7, 446f
                  srai         a0, s2, 15
443:              beq          s11, a6, 447f
                  bge          s5, a2, 461f
                  slt          t4, a6, t6
446:              or           ra, zero, a6
447:              or           t0, zero, a7
                  beq          a4, s1, 450f
                  sub          s11, s6, s1
450:              auipc        s5, 385541
                  sll          sp, t0, a3
                  beq          t1, a3, 462f
                  bltu         a2, s2, 455f
                  slti         t4, gp, -298
455:              add          s5, a7, t6
                  slli         s9, a7, 22
                  or           sp, gp, t2
                  bne          s10, s5, 464f
                  sub          t0, a7, t6
                  slti         ra, a6, -459
461:              bltu         t6, a6, 481f
462:              slt          s7, s5, s1
                  addi         a6, a1, 1977
464:              beq          t3, sp, 469f
                  sra          t6, gp, s10
                  srai         s9, a5, 31
                  srli         tp, zero, 24
                  sltiu        a3, s4, -1796
469:              srli         s2, t6, 18
                  xori         s6, s2, 1232
                  xor          s7, s8, ra
                  sltu         a4, tp, a6
                  nop
                  bgeu         s5, t2, 484f
                  or           gp, t3, s0
                  slti         s7, a7, 422
                  or           s9, a6, s2
                  slti         ra, a0, 1008
                  blt          gp, s5, 483f
                  sra          s6, s7, s5
481:              andi         t6, s5, 14
                  sltiu        a0, a7, 1582
483:              slt          t1, t2, s4
484:              beq          a0, s0, 493f
                  bltu         s8, s8, 493f
                  beq          s5, a1, 493f
                  ori          s9, a0, -250
                  bge          s6, s6, 493f
                  beq          t1, sp, 493f
                  bne          t2, s9, 493f
                  sll          t5, a4, t4
                  sltu         a0, a5, s2
493:              sra          ra, t0, ra
                  lw           a0, 4(s4)
                  add          zero, a6, s7
                  addi         s4, s4, 64
                  slli         a6, a2, 19
                  sub          ra, s9, s7
                  sltu         s2, tp, a5
724:              addi x11, x10, 0
724:              jalr x11, x11, 0
sub_3:            addi         s4, s4, -20
                  xori         s9, a4, 599
                  andi         s7, ra, -998
                  slli         s3, sp, 27
                  lui          s6, 37639
                  sw           a0, 4(s4)
                  and          t4, s11, a3
                  auipc        zero, 249805
                  add          a1, s3, a6
                  sll          tp, s8, s9
                  bltu         s8, s0, 21f
                  auipc        s2, 420070
                  sll          tp, sp, ra
                  bne          a2, t0, 25f
                  slli         s1, t4, 5
                  andi         a3, a7, 1841
                  srai         a1, s2, 9
                  lui          sp, 775081
                  bgeu         tp, t6, 12f
                  blt          s6, s2, 20f
12:               and          t4, s5, t6
                  sub          s10, t1, a2
                  bgeu         s11, t3, 15f
15:               bltu         t4, s9, 26f
                  slt          s10, t1, t2
                  bltu         t4, gp, 18f
18:               slli         t2, zero, 9
                  sltu         t6, s4, a0
20:               bge          gp, t6, 21f
21:               srai         t3, a4, 10
                  blt          tp, t3, 29f
                  slti         tp, s6, 1685
                  ori          t6, ra, -271
25:               ori          s11, s7, -1701
26:               slli         s5, s7, 9
                  beq          a2, a7, 38f
                  srai         t0, s4, 30
29:               xor          t1, a6, t4
                  bltu         s8, t2, 40f
                  or           a1, a6, t1
                  bne          a1, a7, 40f
                  add          s2, s5, gp
                  sltiu        a7, s8, 1338
                  sra          s9, a2, tp
                  sltiu        s1, a1, 707
                  ori          a4, s11, -1773
38:               slt          tp, tp, a3
                  ori          t4, a6, -658
40:               add          s6, s3, t1
                  lw           a0, 4(s4)
                  srli         t3, t6, 10
                  addi         s4, s4, 20
                  srli         zero, a0, 19
                  sub          sp, t2, s1
54:               addi x16, x10, 0
54:               jalr x16, x16, 0
sub_1:            slt          s1, s2, a6
                  lui          s10, 1007435
                  slli         t1, s5, 3
                  xori         t3, a3, -1614
                  nop
                  nop
                  slti         s11, s1, 771
                  addi         s4, s4, -8
                  sw           a0, 4(s4)
                  sra          sp, t0, s9
                  la           ra, sub_2
                  add          a6, tp, a5
                  addi         ra, ra, 552
                  xor          a7, t0, s1
                  addi         s3, tp, 1887
                  bne          a5, a1, sub_1_j4 #branch to jump instr
                  addi         sp, zero, -1457
                  or           t6, a6, tp
                  ori          a1, tp, 1676
sub_1_j4:         jalr         a0, ra, -551 #jump sub_1 -> sub_2
                  addi         t3, zero, -6 #init loop 1 counter
                  addi         a3, zero, 8 #init loop 1 limit
sub_1_3_1_t:      auipc        t5, 626597
                  addi         t3, t3, 2 #update loop 1 counter
                  addi         t2, zero, 9 #init loop 0 counter
                  addi         s6, zero, -2 #init loop 0 limit
sub_1_3_0_t:      sltiu        t5, t4, -1089
                  addi         t2, t2, -8 #update loop 0 counter
                  bge          t2, s6, sub_1_3_0_t #branch for loop 0
                  bne          t3, a3, sub_1_3_1_t #branch for loop 1
                  ori          t0, s11, -1393
                  addi         s6, zero, 6 #init loop 1 counter
                  and          s0, t1, t1
                  addi         a3, zero, 5 #init loop 1 limit
sub_1_12_1_t:     xori         zero, t4, 1441
                  sll          t6, a5, a7
                  xor          s10, s10, a4
                  addi         s6, s6, -4 #update loop 1 counter
                  addi         a1, zero, 10 #init loop 0 counter
                  xor          s2, s6, a4
                  addi         s5, zero, 14 #init loop 0 limit
sub_1_12_0_t:     andi         a7, s9, -1542
                  addi         a1, a1, 4 #update loop 0 counter
                  bne          a1, s5, sub_1_12_0_t #branch for loop 0
                  nop
                  nop
                  bgeu         s6, a3, sub_1_12_1_t #branch for loop 1
                  srli         a6, t2, 31
                  addi         s11, zero, 3 #init loop 1 counter
                  addi         s10, zero, 2 #init loop 1 limit
sub_1_1_1_t:      sub          tp, s2, a4
                  addi         s11, s11, -1 #update loop 1 counter
                  addi         s3, zero, -4 #init loop 0 counter
                  sub          s5, t0, s4
                  addi         s7, zero, 2 #init loop 0 limit
sub_1_1_0_t:      sltiu        a0, t2, -499
                  addi         s3, s3, 8 #update loop 0 counter
                  bltu         s3, s7, sub_1_1_0_t #branch for loop 0
                  bgeu         s11, s10, sub_1_1_1_t #branch for loop 1
                  lui          t4, 430626
                  addi         t4, zero, 9 #init loop 1 counter
                  addi         ra, zero, 9 #init loop 1 limit
sub_1_10_1_t:     ori          a4, a4, 950
                  addi         t4, t4, -8 #update loop 1 counter
                  addi         s3, zero, -3 #init loop 0 counter
                  addi         t5, zero, 7 #init loop 0 limit
sub_1_10_0_t:     xor          s6, t4, sp
                  addi         s3, s3, 3 #update loop 0 counter
                  blt          s3, t5, sub_1_10_0_t #branch for loop 0
                  bgeu         t4, ra, sub_1_10_1_t #branch for loop 1
                  slt          sp, s7, s3
                  addi         s10, zero, 6 #init loop 0 counter
                  add          t3, s8, a3
                  addi         a3, a1, -903
                  andi         t5, t3, -599
                  xori         t0, a0, -130
                  srl          s2, s3, s6
                  addi         s9, zero, 1 #init loop 0 limit
sub_1_8_0_t:      sltiu        s11, a5, 1635
                  add          zero, a5, s6
                  slli         t2, s7, 27
                  srl          a4, t3, t2
                  addi         s10, s10, -5 #update loop 0 counter
                  sll          a6, s10, s2
                  srai         tp, s4, 7
                  sub          gp, ra, s7
                  add          t5, s8, t3
                  sltu         t4, s10, a4
                  beq          s10, s9, sub_1_8_0_t #branch for loop 0
                  slti         gp, a4, -1909
                  addi         t6, zero, -2 #init loop 1 counter
                  xori         t0, t5, -997
                  sra          a0, t3, t3
                  addi         s3, zero, 3 #init loop 1 limit
                  sltu         t4, a0, a2
                  sltu         gp, t0, sp
                  sltiu        gp, a6, 1676
                  and          s0, a3, s2
                  xori         s0, ra, -892
sub_1_13_1_t:     addi         a5, s6, 84
                  addi         t6, t6, 5 #update loop 1 counter
                  slli         sp, t1, 1
                  addi         t2, zero, 8 #init loop 0 counter
                  sub          s1, s4, s7
                  addi         s7, zero, 2 #init loop 0 limit
                  slt          s9, t3, a5
sub_1_13_0_t:     nop
                  andi         a5, s1, 275
                  slli         a7, t1, 20
                  addi         t2, t2, -1 #update loop 0 counter
                  bgeu         t2, s7, sub_1_13_0_t #branch for loop 0
                  andi         a5, zero, -1977
                  sra          s1, gp, a5
                  add          a3, a6, sp
                  slti         a7, ra, -166
                  slt          sp, s4, t6
                  slt          s2, tp, s1
                  add          s0, t4, sp
                  srli         a5, a7, 13
                  or           s11, s3, a7
                  srai         a4, a3, 22
                  beq          t6, s3, sub_1_13_1_t #branch for loop 1
                  slti         t1, a1, -1630
                  addi         a5, zero, -6 #init loop 0 counter
                  xori         a4, gp, -1473
                  sra          s2, t5, a6
                  slli         t3, sp, 24
                  addi         a3, zero, -9 #init loop 0 limit
                  srl          a7, a0, s10
                  sra          s11, s10, a7
                  sra          a1, s6, s4
                  auipc        a6, 497867
                  srl          t0, s1, s2
                  slti         a1, s4, -926
                  addi         a6, a0, 995
sub_1_7_0_t:      nop
                  and          t2, sp, t1
                  sll          t4, t2, a7
                  addi         a5, a5, -9 #update loop 0 counter
                  sltiu        gp, a4, -1978
                  srl          t4, a3, a4
                  sltu         a4, s8, s7
                  xori         s3, t3, -42
                  addi         t1, a5, -854
                  slt          a6, s1, t6
                  nop
                  sra          s7, s7, s0
                  ori          s11, a6, -439
                  bge          a5, a3, sub_1_7_0_t #branch for loop 0
                  slti         t3, a2, 636
                  addi         s1, zero, 8 #init loop 0 counter
                  xor          t6, s1, a7
                  nop
                  srai         s0, s5, 27
                  sra          a1, a5, s4
                  lui          a7, 159290
                  slt          t5, t6, tp
                  or           gp, s10, a5
                  nop
                  sltu         a5, s5, t3
                  ori          t4, t5, 982
                  xor          t6, s6, a0
                  and          t6, s8, s1
                  ori          zero, a7, -4
                  slli         t4, a3, 22
                  addi         sp, zero, -3 #init loop 0 limit
                  ori          zero, s6, -567
                  sub          t2, t4, s11
sub_1_4_0_t:      sub          a4, s2, s11
                  sub          a1, t3, a4
                  addi         s1, s1, -1 #update loop 0 counter
                  sra          ra, a0, a2
                  sltu         s5, s11, t6
                  add          s10, s11, sp
                  slti         zero, s0, -1626
                  beq          s1, sp, sub_1_4_0_t #branch for loop 0
                  srl          a6, t3, t4
                  addi         s1, zero, -8 #init loop 0 counter
                  srli         t2, t6, 28
                  addi         gp, zero, -16 #init loop 0 limit
                  slti         t6, s11, 1431
                  and          t2, s8, a7
                  lui          ra, 940108
                  andi         a7, t6, -1217
sub_1_0_0_t:      or           tp, t3, t4
                  auipc        s5, 48375
                  or           a6, gp, s11
                  addi         s1, s1, -1 #update loop 0 counter
                  slti         t2, s2, -923
                  xor          t3, a0, t0
                  srli         s5, a0, 23
                  lui          a4, 853783
                  sltu         s7, t5, zero
                  xori         sp, tp, -854
                  ori          sp, s5, -1744
                  xori         s5, s1, -911
                  srai         a6, t3, 7
                  srai         s9, t2, 12
                  auipc        s10, 61863
                  xori         t4, tp, -1836
                  sltiu        t2, sp, -1271
                  bge          s1, gp, sub_1_0_0_t #branch for loop 0
                  or           a4, s5, a6
                  addi         a7, zero, 4 #init loop 0 counter
                  sltiu        s6, a5, 511
                  xor          t5, t2, a0
                  slti         s10, s7, 1105
                  srli         tp, t5, 0
                  srl          a4, a4, t6
                  sub          s9, s4, s0
                  addi         t3, zero, 3 #init loop 0 limit
                  xor          tp, s4, s7
sub_1_6_0_t:      or           t4, s5, s10
                  addi         a0, t0, 18
                  nop
                  sra          t1, t2, t0
                  nop
                  or           tp, s10, s1
                  lui          t1, 738701
                  srl          sp, a7, t2
                  and          s2, t6, a4
                  srai         t2, s9, 0
                  sltiu        t6, ra, -971
                  sltiu        t0, s8, 1881
                  addi         a7, a7, -1 #update loop 0 counter
                  nop
                  addi         a0, t5, 411
                  bgeu         a7, t3, sub_1_6_0_t #branch for loop 0
                  ori          s1, s9, -409
                  bge          zero, t0, 2f
                  slli         tp, s2, 9
2:                bltu         s3, sp, 4f
                  blt          t4, s10, 23f
4:                sltiu        s1, gp, -1781
                  sll          s11, s7, tp
                  ori          a7, t5, -1910
                  srli         s7, a0, 3
                  bne          a7, s4, 17f
                  sltiu        t5, s6, 667
                  xor          s0, a6, a4
                  addi         s10, s1, 777
                  xori         a6, s4, 1926
                  sub          s6, a5, a1
                  addi         s3, sp, 1896
                  auipc        s6, 8849
                  add          a4, t5, tp
17:               ori          s11, tp, 1175
                  sll          s7, s4, ra
                  bltu         t4, s3, 35f
                  nop
                  slti         a4, s9, -645
                  addi         tp, s6, 1564
23:               bne          s8, s5, 40f
                  or           s0, s8, a2
                  andi         s2, s2, 667
                  or           sp, tp, s9
                  addi         t2, s8, 1472
                  blt          tp, s10, 33f
                  addi         t0, a3, -1488
                  andi         s0, t1, -1359
                  srai         t1, s3, 19
                  ori          t2, s11, 1107
33:               sub          s2, a4, s1
                  slli         tp, t4, 23
35:               or           s7, s2, a7
                  sra          s2, a4, tp
                  andi         ra, s4, -1837
                  xori         t2, sp, 323
                  slli         s2, s7, 0
40:               slt          a0, a2, s9
                  or           sp, a7, a1
                  xori         s10, zero, 1700
                  sra          sp, ra, t6
                  slt          t3, ra, a2
                  slt          zero, t0, sp
                  xori         a5, t0, 347
                  sltiu        a7, t4, -1177
                  bne          s11, s4, 56f
                  sra          sp, s1, s2
                  addi         t1, s0, -191
                  or           a0, s3, t5
                  ori          t6, a0, -1457
                  xori         tp, a5, 1436
                  ori          a0, a2, 1259
                  nop
56:               and          t3, a3, s0
                  bltu         s10, s4, 63f
                  sltu         zero, a7, t3
                  srl          a5, t6, a7
                  beq          a1, t3, 77f
                  xor          s1, a2, a6
                  andi         tp, a1, 1975
63:               bgeu         a7, s4, 74f
                  xori         s1, a0, 684
                  bge          a4, t0, 68f
                  addi         sp, zero, -8 #init loop 0 counter
                  addi         a5, zero, 17 #init loop 0 limit
                  sra          a4, zero, t2
sub_1_2_0_t:      add          zero, zero, s1
                  nop
                  addi         sp, sp, 3 #update loop 0 counter
                  lui          t6, 584497
                  bltu         sp, a5, sub_1_2_0_t #branch for loop 0
                  sltu         a7, a7, s5
                  slt          s0, t2, zero
                  srli         a5, s0, 10
68:               bge          s9, a5, 77f
                  slt          s9, t6, a7
                  xor          tp, s9, s10
                  sltu         s9, t3, s0
                  sll          s1, a5, s10
                  or           s11, a3, zero
74:               addi         tp, a1, 1332
                  auipc        a3, 514299
                  and          s3, t5, s1
77:               srl          t3, a5, tp
                  ori          a6, a6, 614
                  bge          a0, sp, 89f
                  ori          a1, s9, 94
                  bltu         a2, a1, 83f
                  sub          s9, a1, zero
83:               srli         a0, s6, 13
                  srli         s6, a7, 24
                  bge          a7, s11, 103f
                  sll          s10, s10, s6
                  bge          s9, s1, 107f
                  blt          t3, a4, 96f
89:               bltu         t6, s8, 92f
                  srli         s2, s7, 17
                  bge          a6, a3, 100f
92:               sltiu        a0, s8, -366
                  xor          s3, a5, sp
                  and          t3, a3, s11
                  xor          ra, a0, a1
96:               slli         s3, t3, 13
                  srl          a1, s10, a5
                  srai         a0, a0, 29
                  sltu         s2, t6, a4
100:              slli         a7, s11, 1
                  sltiu        a6, a7, -1235
                  and          t4, t4, s7
103:              srl          t1, s1, a7
                  sltiu        t3, tp, 453
                  or           t6, s2, t4
                  and          gp, t0, gp
107:              or           s1, s7, a1
                  lui          t2, 781334
                  srli         s3, a1, 21
                  bge          s8, s10, 116f
                  andi         t6, a3, -1510
                  bne          a0, ra, 119f
                  bltu         a2, zero, 121f
                  or           t3, s9, a2
                  bgeu         a0, s6, 120f
116:              lui          s7, 548518
                  sra          gp, zero, zero
                  or           ra, t6, s10
119:              slti         s1, t2, -1282
120:              slti         t5, s10, -487
121:              srai         s3, a0, 25
                  andi         s7, a7, 938
                  srai         t5, ra, 1
                  or           a4, s5, t5
                  bgeu         gp, gp, 129f
                  or           s7, s0, s10
                  sub          ra, s3, s10
                  bne          ra, a4, 133f
129:              and          s9, t4, t6
                  nop
                  addi         t2, a6, 1061
                  xor          s9, s5, t5
133:              xori         a0, s7, -1715
                  bgeu         a7, a4, 138f
                  sltiu        s0, a2, 2
                  sltiu        gp, s11, -64
                  sll          t2, t4, s7
138:              sra          s0, t3, a2
                  andi         s11, gp, -1046
                  srl          t3, t3, s3
                  sltiu        a0, s1, -1943
                  or           a7, zero, a4
                  sltiu        s2, s8, -1931
                  sub          s9, s5, a3
                  sltiu        s0, a5, -396
                  xor          a7, t5, s11
                  nop
                  addi         t6, s9, 1655
                  slt          t2, t5, a3
                  andi         s11, t3, 179
                  sub          a3, a2, s11
                  beq          a0, a3, 153f
153:              slt          s5, a1, s11
                  bgeu         s1, t3, 155f
155:              sra          s1, tp, t6
                  beq          t5, t0, 158f
                  blt          sp, s3, 174f
158:              sltu         s2, tp, a6
                  andi         t0, t0, 712
                  addi         t3, s5, 598
                  or           s11, t0, t5
                  sra          t0, a3, a5
                  add          s10, gp, t2
                  bne          ra, s11, 184f
                  sll          s11, a6, s8
                  blt          sp, s10, 174f
                  xori         t5, s5, -34
                  bge          tp, a6, 176f
                  blt          s9, s9, 173f
                  slt          a0, s4, t6
                  ori          t4, a2, 1487
                  sub          s2, t5, s7
173:              slti         s10, s6, 1650
174:              slti         s1, s4, 568
                  slli         t2, t6, 11
176:              srl          s6, s0, s3
                  sll          a7, gp, a5
                  or           s1, gp, t1
                  sra          t1, s10, s5
                  srai         gp, s6, 11
                  auipc        s7, 404047
                  or           ra, a0, ra
                  add          a7, a4, a7
184:              andi         a5, s4, 1817
                  sltu         s1, s3, t3
                  srl          a0, a7, t5
                  xori         a0, a1, 1524
                  addi         a1, s2, -1630
                  ori          s5, a3, -480
                  slli         t3, s11, 4
                  or           zero, a7, t1
                  sll          tp, sp, gp
                  srli         a0, s2, 26
                  slti         t0, zero, -663
                  slli         a3, zero, 28
                  andi         a1, t2, -820
                  srai         a5, t2, 22
                  srai         s10, sp, 21
                  auipc        s10, 67393
                  beq          t2, s7, 209f
                  and          s11, t2, zero
                  nop
                  slli         sp, s2, 6
                  slli         sp, t5, 30
                  sra          gp, a5, a6
                  bgeu         a3, a3, 226f
                  lui          a3, 720218
                  andi         gp, s9, -66
209:              and          t1, t5, t2
                  srl          t3, s7, s7
                  bgeu         s2, t0, 212f
212:              bge          a5, s8, 215f
                  add          s5, t0, a7
                  bltu         t1, a0, 216f
215:              auipc        ra, 530718
216:              bgeu         s7, a3, 221f
                  srai         a3, a2, 12
                  xori         a1, zero, 828
                  sltiu        t6, a1, -1263
                  slli         t0, a3, 2
221:              beq          a3, t1, 222f
222:              slli         s10, t1, 30
                  nop
                  andi         t3, a2, -1817
                  beq          s10, gp, 233f
226:              andi         a0, s8, -455
                  bne          s7, s10, 234f
                  auipc        s0, 317185
                  bge          t3, sp, 245f
                  nop
                  sll          a7, t3, s1
                  addi         a0, s0, 1946
233:              ori          s7, s7, -792
234:              srai         t5, t3, 23
                  addi         t6, sp, 751
                  xori         s11, ra, -257
                  addi         a0, t1, -107
                  bgeu         s1, a5, 247f
                  xor          a5, t3, s7
                  srl          t5, tp, s10
                  or           s1, t6, t4
                  addi         s10, zero, 8 #init loop 0 counter
                  addi         t5, t6, -1483
                  or           s0, t4, a1
                  addi         s9, zero, 8 #init loop 0 limit
                  nop
                  xori         a0, s7, 862
sub_1_9_0_t:      sltu         zero, sp, a7
                  srli         gp, t2, 5
                  add          s3, a4, a2
                  addi         s10, s10, -6 #update loop 0 counter
                  addi         s6, gp, 1810
                  srl          s6, a0, s10
                  srl          ra, s4, s4
                  sltiu        gp, s7, -541
                  bgeu         s10, s9, sub_1_9_0_t #branch for loop 0
                  nop
                  bltu         a0, a5, 246f
                  sra          a0, zero, a0
                  and          s5, t3, a6
245:              slti         a6, s5, 868
246:              addi         s11, ra, -1414
247:              srli         t5, a2, 29
                  or           a1, t4, s2
                  and          t4, s7, a6
                  bltu         t4, s8, 252f
                  sltiu        t4, t3, -1034
252:              sltu         s3, s6, t0
                  srl          t1, a7, s3
                  auipc        ra, 805834
                  add          zero, s11, s8
                  slt          t6, a6, s4
                  sub          t1, s8, a4
                  auipc        gp, 91614
                  bltu         s0, s9, 277f
                  beq          a2, t4, 263f
                  sub          a3, tp, zero
                  slli         t2, a0, 3
263:              beq          a5, t4, 269f
                  bge          a6, a5, 275f
                  sltiu        a0, gp, -895
                  xori         zero, t3, -1344
                  sll          s1, t1, t1
                  sub          a7, t2, s10
                  slli         t4, ra, 14
                  nop
                  xor          s3, a0, t1
                  srl          a3, s6, t4
                  slti         gp, a2, -344
sub_1_j3:         jal          a0, sub_2 #jump sub_1 -> sub_2
                  sll          t2, t6, t3
                  srl          s3, t3, a1
                  add          s0, t2, s4
                  add          t0, a3, s2
269:              lui          a4, 843050
                  auipc        t4, 52505
                  srai         a0, t1, 1
                  andi         tp, gp, 1785
                  xor          s11, a6, t2
                  srl          a5, t5, s1
275:              srli         a6, a2, 17
                  xor          t0, s1, t6
277:              srai         t4, s4, 0
                  xor          t2, a7, s9
                  bne          zero, a3, 284f
                  srai         a4, a6, 21
                  add          gp, t0, t0
                  beq          t2, t1, 291f
                  or           s5, gp, t0
284:              sltu         tp, s2, t4
                  sltu         s6, s10, s8
                  blt          s7, a1, 291f
                  auipc        a5, 833630
                  bltu         a3, t2, 294f
                  beq          a0, t6, 291f
                  sll          a1, s1, s4
291:              or           zero, s7, a5
                  add          t3, s3, s0
                  auipc        tp, 841828
294:              sltiu        a0, s5, 1322
                  xor          s2, s10, t5
                  srli         zero, a6, 18
                  slli         s11, s9, 23
                  sra          a7, t3, t1
                  andi         s5, gp, 466
                  bne          t5, s9, 317f
                  add          s7, s0, sp
                  bne          a1, ra, 312f
                  xor          t2, s5, ra
                  nop
                  sltiu        s6, t6, -226
                  srl          t6, a6, s1
                  sltu         a0, a6, a1
                  slti         sp, s4, -1449
                  bge          s2, s8, 311f
                  nop
311:              ori          t6, sp, -450
312:              andi         s3, ra, 1379
                  slli         t3, a2, 25
                  srl          s6, s8, a2
                  beq          s6, ra, 317f
                  sltiu        t5, tp, 396
317:              nop
                  bne          a2, a4, 327f
                  sll          s2, tp, tp
                  srl          s1, a7, s3
                  bltu         t1, t0, 322f
322:              beq          a5, s9, 342f
                  ori          t6, s2, -1057
                  bge          s4, s8, 328f
                  andi         t3, ra, 1689
                  or           t5, s4, s10
327:              beq          a0, s10, 330f
328:              blt          tp, s9, 345f
                  andi         t1, s5, -1886
330:              xor          t1, a1, s11
                  andi         s9, s11, 1823
                  lui          s11, 823042
                  auipc        t5, 880338
                  xor          sp, s10, a6
                  bge          t6, s4, 339f
                  sub          s6, s10, t2
                  xori         a4, tp, 494
                  andi         s6, t2, 832
339:              bne          a1, t3, 347f
                  slli         a0, t0, 24
                  srli         s10, gp, 19
342:              slt          s9, tp, a7
                  slli         s1, s7, 1
                  lui          t5, 1046736
345:              bge          s0, a3, 353f
                  srai         ra, s0, 20
347:              slli         t4, sp, 26
                  srli         s2, tp, 13
                  add          a1, s4, s6
                  bgeu         a3, t2, 361f
                  slt          s7, s0, s8
                  srl          a4, s4, t4
353:              xori         a5, t5, 1240
                  bne          s9, tp, 371f
                  beq          s11, a4, 357f
                  xori         s11, a2, -922
357:              sltu         ra, t4, s0
                  slti         t5, t2, 1144
                  blt          s8, s5, 364f
                  xori         t5, a7, 350
361:              nop
                  srai         a4, a6, 5
                  bltu         gp, s3, 364f
364:              xori         s2, t6, 863
                  ori          t4, s8, 1954
                  sub          s5, s1, s1
                  and          s7, s8, s0
                  lui          ra, 239579
                  ori          t1, s10, 1082
                  xor          s5, t2, sp
371:              xori         a1, t3, 1642
                  lui          t0, 438777
                  xor          a6, gp, s7
                  xor          s2, s10, a6
                  slli         a7, ra, 13
                  sra          t6, s6, s5
                  auipc        s5, 788823
                  nop
                  sub          a3, a0, a7
                  sltiu        tp, s6, -272
                  slli         t2, a1, 10
                  srl          t5, t4, s3
                  ori          s10, s1, -13
                  sra          a5, a2, ra
                  srl          s7, a2, a0
                  nop
                  sra          tp, a5, s2
                  sra          ra, t6, s4
                  bgeu         zero, ra, 396f
                  ori          s6, a5, 1335
                  blt          s5, s10, 409f
                  ori          s3, tp, 977
                  or           t5, t4, t6
                  srli         a1, sp, 17
                  bne          t3, t2, 397f
396:              srl          s3, a3, a3
397:              srl          s10, gp, a4
                  bltu         s1, sp, 406f
                  lui          zero, 72606
                  bltu         tp, s6, 405f
                  srl          a5, t1, s10
                  bltu         a3, s1, 411f
                  beq          a6, t4, 406f
                  auipc        t0, 883461
405:              xor          t3, a7, ra
406:              bge          s11, t4, 422f
                  lui          a5, 539801
                  beq          t5, a0, 418f
409:              beq          s7, s2, 411f
                  addi         gp, zero, 7 #init loop 0 counter
                  auipc        t6, 226042
                  addi         s6, zero, 17 #init loop 0 limit
                  srl          tp, a5, s3
sub_1_5_0_t:      andi         zero, s11, -1853
                  slli         t0, s4, 29
                  addi         gp, gp, 5 #update loop 0 counter
                  sub          s9, s1, s11
                  xori         zero, t2, 662
                  srli         a0, s7, 0
                  beq          gp, s6, sub_1_5_0_t #branch for loop 0
                  slli         t0, s10, 10
                  addi         s11, t2, 977
411:              blt          t2, t1, 417f
                  srai         a6, a3, 19
                  and          t6, t5, tp
                  auipc        tp, 810490
                  srai         a4, s2, 30
                  slli         ra, s0, 29
417:              bgeu         s10, t3, 423f
418:              srai         t3, s6, 10
                  xori         s6, tp, 260
                  srai         s9, s2, 22
                  nop
422:              beq          s7, t5, 427f
423:              or           s9, sp, s1
                  sra          a3, a0, a2
                  auipc        t1, 583227
                  and          sp, a3, s6
427:              xor          s9, a6, t5
                  and          s9, s10, a6
                  srl          s9, s1, s5
                  xor          s11, a7, t1
                  ori          tp, a3, 1033
                  nop
                  and          t3, t6, s4
                  and          s2, gp, s0
                  addi         a6, a2, -490
                  and          t2, s2, sp
                  sltiu        zero, a6, -1920
                  and          t0, a3, zero
                  and          t1, t5, tp
                  sltiu        tp, sp, -1082
                  bne          s2, s5, 461f
                  beq          s5, s7, 451f
                  add          t1, a1, s5
                  srl          s6, t5, s1
                  xori         ra, zero, 1422
                  bge          t4, sp, 454f
                  slti         zero, s6, 856
                  slti         tp, s6, -1470
                  and          s7, a4, t5
                  bge          t5, s9, 468f
451:              srli         s6, gp, 1
                  and          s9, t6, ra
                  sltiu        s5, a0, 146
454:              sltu         a5, s7, t0
                  slt          a1, t0, s8
                  beq          gp, s10, 462f
                  or           a6, s4, t2
                  srai         s6, a7, 14
                  lui          t6, 909408
                  slli         s10, s3, 8
461:              blt          t6, ra, 470f
462:              addi         s6, tp, 1062
                  auipc        a6, 61785
                  addi         a5, zero, -2 #init loop 0 counter
                  xor          s5, t5, s5
                  andi         s5, s5, 1733
                  srai         t6, a3, 8
                  add          s7, ra, t1
                  srai         tp, s11, 24
                  addi         t3, zero, 18 #init loop 0 limit
                  sltiu        a0, t3, -1005
                  slli         s9, s10, 16
                  sub          s6, a5, s1
                  slt          s1, t1, t4
sub_1_11_0_t:     slti         a3, s1, -983
                  addi         a5, a5, 10 #update loop 0 counter
                  add          t0, s7, a7
                  addi         s5, tp, -1843
                  srli         t4, a4, 31
                  andi         a6, sp, 990
                  slt          zero, s2, s8
                  auipc        t2, 425432
                  beq          a5, t3, sub_1_11_0_t #branch for loop 0
                  addi         s11, s6, 718
                  bge          s1, s7, 465f
465:              srai         t0, a5, 18
                  nop
                  srl          s3, s10, t1
468:              andi         a4, t2, -578
                  srli         t5, a1, 0
470:              sra          gp, s4, s0
                  xori         t2, a1, -566
                  xor          a5, t1, t0
                  xor          s9, a6, s8
                  slli         tp, s2, 0
                  nop
                  and          gp, t4, ra
                  beq          a6, s3, 486f
                  bne          s6, a3, 483f
                  ori          tp, s0, 852
                  lui          gp, 629133
                  ori          a3, s7, -1251
                  srai         sp, a3, 23
483:              srai         sp, s11, 9
                  lui          s2, 320950
                  or           a3, a5, t4
486:              srl          s9, a1, s6
                  srai         tp, a0, 11
                  auipc        a7, 804265
                  sltu         a0, a4, t3
                  bltu         t4, s10, 494f
                  sra          s10, a0, s4
                  blt          a7, zero, 497f
                  blt          a1, a4, 503f
494:              sub          t1, sp, s0
                  srai         s9, a6, 8
                  blt          s0, t5, 505f
497:              slli         t6, a3, 0
                  srl          zero, a4, s8
                  auipc        a6, 385357
                  bltu         t1, a2, 502f
                  bltu         a4, t0, 506f
502:              srli         s6, s4, 12
503:              sltu         t6, s9, s5
                  beq          t6, t1, 521f
505:              sltu         a0, s7, a7
506:              xori         t1, s10, 29
                  slt          s7, a3, s7
                  bge          gp, a1, 510f
                  beq          t6, s3, 526f
510:              slt          s1, a1, gp
                  xori         a3, a7, 517
                  auipc        s5, 616010
                  auipc        s3, 919083
                  xor          s1, s8, s7
                  blt          t3, a5, 518f
                  addi         tp, s10, -704
                  srai         s2, a7, 26
518:              slli         t1, s5, 22
                  nop
                  slt          s7, a2, a3
521:              sub          s6, a1, t2
                  bgeu         tp, s11, 528f
                  sltu         a5, s10, t2
                  srai         a1, a2, 2
                  sra          t2, s2, a0
526:              auipc        a3, 696809
                  blt          s9, a1, 529f
528:              lui          s0, 1028134
529:              bge          t2, t3, 536f
                  slti         s7, s2, 1374
                  bltu         t5, a1, 551f
                  beq          t4, s5, 543f
                  srai         a6, s0, 24
                  bltu         s0, a6, 554f
                  sltiu        tp, ra, 1094
536:              srai         t3, a4, 13
                  sra          t3, a3, a1
                  sub          t5, a3, a5
                  sll          s10, s3, t1
                  bltu         ra, s2, 542f
                  bge          a7, s0, 549f
542:              sra          a3, a4, s4
543:              srai         a1, a6, 17
                  bgeu         s4, s4, 547f
                  xor          gp, a3, s10
                  bge          t0, a6, 547f
547:              xori         ra, a4, -1882
                  sltu         s3, a3, t2
549:              xori         a4, t5, -92
                  add          a0, s6, tp
551:              bne          s6, a2, 567f
                  auipc        t0, 352038
                  sltu         t6, s9, s1
554:              srl          t0, s1, sp
                  beq          a2, s7, 559f
                  slli         s11, s11, 7
                  slt          t6, s8, t5
                  addi         s5, gp, -1617
559:              slt          a7, t5, t0
                  auipc        a4, 219306
                  bgeu         s4, a1, 569f
                  sra          s3, t3, zero
                  slli         s5, a1, 18
                  bne          s10, ra, 581f
                  srl          zero, s0, s1
                  bgeu         s1, a0, 583f
567:              add          s6, tp, t1
                  addi         s11, sp, -1870
569:              sub          s1, a6, s3
                  lui          s7, 649753
                  bltu         s10, a3, 579f
                  sll          a6, a2, a0
                  bltu         t1, s10, 583f
                  bge          a6, s9, 577f
                  add          s3, a1, a4
                  add          t2, t5, zero
577:              slli         a3, s6, 1
                  bne          t5, t1, 583f
579:              xori         s7, t6, -1015
                  sltu         a3, t3, s3
581:              sltu         tp, s1, a3
                  addi         t1, s5, 1545
583:              slt          s0, s7, s8
                  lui          t1, 1032787
                  bne          t5, a5, 605f
                  slt          s9, tp, s1
                  bne          s6, t1, 589f
                  beq          a1, a3, 590f
589:              andi         a5, s2, -202
590:              add          a0, a2, a4
                  sltu         t4, a1, a4
                  sltiu        a5, zero, -1902
                  blt          a1, a7, 599f
                  beq          a2, t4, 603f
                  bne          s3, a1, 601f
                  or           s5, t4, ra
                  sll          t0, a2, s0
                  sub          s2, a4, a4
599:              srli         s0, gp, 16
                  slli         s10, t5, 4
601:              srl          s6, t2, a3
                  sra          s7, a2, a5
603:              andi         a7, a3, -1142
                  sub          s9, t1, a1
605:              or           a4, sp, s1
                  srai         s6, t2, 9
                  srli         sp, t2, 19
                  sub          a1, t6, t2
                  add          t4, t6, s11
                  srli         a3, s6, 30
                  and          a3, a1, t2
                  bltu         a7, s4, 613f
613:              bge          gp, tp, 621f
                  ori          sp, a7, -1301
                  or           s10, a1, a5
                  beq          t1, s4, 620f
                  auipc        a3, 170501
                  bgeu         tp, t0, 636f
                  bgeu         a2, a5, 623f
620:              auipc        s3, 354078
621:              sll          s5, t4, tp
                  slti         a6, a5, -2036
623:              sub          a7, s9, s10
                  ori          s0, a3, -682
                  xor          t2, s11, s7
                  sltu         s6, a5, t1
                  srl          t6, zero, t5
                  auipc        zero, 224506
                  lui          ra, 597241
                  andi         s2, a7, 615
                  slti         s5, a2, -43
                  srl          tp, a2, t4
                  srli         a4, s9, 27
                  blt          t5, a6, 636f
                  bne          a2, a1, 644f
636:              srli         zero, t4, 1
                  nop
                  blt          t6, s1, 643f
                  beq          tp, gp, 655f
                  srai         tp, tp, 25
                  auipc        s0, 258049
                  blt          s6, s7, 644f
643:              ori          t6, s5, -1893
644:              srl          t6, t0, s10
                  sra          sp, s4, a0
                  xori         t0, sp, 749
                  bne          a1, s1, 650f
                  andi         s10, a6, -1649
                  sltiu        s3, a4, -176
650:              bne          a5, s9, 651f
651:              sub          t1, gp, s11
                  xor          t1, t1, a0
                  blt          a6, ra, 660f
                  xor          s3, a4, a3
655:              beq          tp, s3, 664f
                  sub          t2, t2, sp
                  bltu         a4, a6, 677f
                  xor          s7, s4, gp
                  nop
660:              sll          t5, t4, s5
                  bgeu         gp, a3, 669f
                  slti         tp, a6, -1165
                  ori          t1, s10, -1988
664:              bne          s11, gp, 675f
                  addi         t0, s11, -1353
                  sll          s2, s6, t0
                  srai         s10, zero, 1
                  sub          a6, s7, tp
669:              addi         a3, t1, 1862
                  sltiu        s6, s3, 1010
                  xori         t3, t0, -1546
                  xor          s6, t1, a2
                  srai         gp, s6, 17
                  sra          t2, sp, s9
675:              sub          a3, a2, gp
                  xor          s7, s2, a1
677:              srl          gp, s5, sp
                  add          a5, a1, s8
                  addi         s5, s1, 744
                  sll          s0, s11, a3
                  bltu         t5, gp, 686f
                  sltu         a4, s7, t3
                  bgeu         zero, t1, 687f
                  bgeu         tp, t3, 688f
                  srai         ra, s3, 24
686:              sltiu        s0, s5, -1626
687:              sltiu        zero, t3, 743
688:              nop
                  slli         t6, ra, 8
                  andi         a5, a5, -1425
                  sltiu        tp, s7, -1997
                  sll          t4, s5, s8
                  or           s3, a1, tp
                  sltiu        s11, t1, 571
                  srli         s5, s4, 8
                  sll          s6, s3, a4
                  addi         t0, a6, 188
                  or           s3, t2, a7
                  sub          tp, t0, a2
                  xori         s5, s11, -753
                  sub          tp, a3, a7
                  and          a3, zero, s6
                  srli         a7, a7, 26
                  addi         a7, tp, -1264
                  sll          s0, s0, s0
                  lw           a0, 4(s4)
                  xori         ra, s3, -535
                  addi         s4, s4, 8
                  auipc        s6, 967221
                  or           s0, a1, a4
1008:             addi x21, x10, 1
1008:             jalr x21, x21, 0
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x12, x20, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x25, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x25, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x25, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x25, x14, ecall_handler
                  li x14, 0x1
                  beq x25, x14, instr_fault_handler
                  li x14, 0x5
                  beq x25, x14, load_fault_handler
                  li x14, 0x7
                  beq x25, x14, store_fault_handler
                  li x14, 0xc
                  beq x25, x14, pt_fault_handler
                  li x14, 0xd
                  beq x25, x14, pt_fault_handler
                  li x14, 0xf
                  beq x25, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

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
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x20, x12, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x12, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x12, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x20, x12, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x20, x12, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x20, x12, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
