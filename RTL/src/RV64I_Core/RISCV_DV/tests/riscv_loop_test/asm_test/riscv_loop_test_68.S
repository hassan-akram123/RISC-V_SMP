.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 1
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x1
                  li x2, 0xf161499c
                  li x3, 0x601c7750
                  li x4, 0x6
                  li x5, 0x6
                  li x6, 0x80000000
                  li x7, 0x91dc35ca
                  li x8, 0xfe26d45b
                  li x9, 0x8
                  li x10, 0x9
                  li x11, 0x517a2690
                  li x12, 0xe
                  li x13, 0x5e29ce11
                  li x14, 0x0
                  li x15, 0x1
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0xfc217551
                  li x21, 0x0
                  li x22, 0x0
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x9debc6cc
                  li x28, 0x6
                  li x29, 0xfee58a12
                  li x31, 0xb
                  la x30, user_stack_end
main:             la           a2, sub_1
                  srai         zero, t5, 9
                  addi         a2, a2, 411
                  or           zero, ra, s2
                  slli         zero, s8, 0
                  sra          s6, t4, sp
                  slt          t3, a3, t4
                  bge          a1, a7, main_j3 #branch to jump instr
                  nop
                  slli         t6, t4, 28
                  slti         s2, t3, 796
                  lui          gp, 211909
                  slli         s0, a6, 24
main_j3:          jalr         s3, a2, -410 #jump main -> sub_1
                  addi         s10, zero, 10 #init loop 1 counter
                  srl          s1, t2, s9
                  xori         a1, a0, -1272
                  addi         sp, zero, 10 #init loop 1 limit
                  add          ra, s0, a4
                  and          s1, gp, zero
main_4_1_t:       lui          a6, 870501
                  slt          a6, zero, a5
                  addi         s10, s10, -9 #update loop 1 counter
                  slti         ra, t1, 895
                  andi         a3, a5, 555
                  addi         a2, zero, 10 #init loop 0 counter
                  slli         s9, a2, 7
                  addi         t6, s0, -3
                  slt          a7, s4, gp
                  addi         a4, zero, 18 #init loop 0 limit
                  and          s2, a3, a4
                  and          t6, s7, s0
main_4_0_t:       sub          a5, gp, s7
                  slti         t6, s3, -1234
                  ori          s0, a4, 166
                  auipc        s11, 687513
                  add          a3, s7, s2
                  addi         a2, a2, 5 #update loop 0 counter
                  sll          s2, t1, gp
                  auipc        a3, 128490
                  slli         a1, sp, 27
                  slt          s6, s8, s9
                  blt          a2, a4, main_4_0_t #branch for loop 0
                  auipc        s6, 118034
                  add          t3, s7, s2
                  bgeu         s10, sp, main_4_1_t #branch for loop 1
                  xori         t4, a3, 1663
                  addi         t1, zero, -9 #init loop 1 counter
                  sra          t0, a2, ra
                  addi         s1, zero, 19 #init loop 1 limit
                  srli         gp, t2, 18
main_5_1_t:       or           t6, s8, s6
                  slt          sp, s1, s8
                  addi         t1, t1, 9 #update loop 1 counter
                  addi         a2, zero, 5 #init loop 0 counter
                  sltu         t3, a1, a7
                  add          zero, zero, t0
                  addi         a6, zero, -10 #init loop 0 limit
main_5_0_t:       xori         s5, s9, -2017
                  ori          ra, s9, -1792
                  addi         a2, a2, -5 #update loop 0 counter
                  beq          a2, a6, main_5_0_t #branch for loop 0
                  slt          s6, a6, t6
                  sra          gp, a1, t1
                  sltiu        tp, s2, 1299
                  sll          zero, a7, t6
                  addi         a4, s9, 1160
                  blt          t1, s1, main_5_1_t #branch for loop 1
                  add          s10, a3, t1
                  addi         s3, zero, 10 #init loop 0 counter
                  sltu         s1, s8, s1
                  slt          s1, s6, s4
                  sltu         t4, t4, gp
                  addi         t6, zero, 10 #init loop 0 limit
main_7_0_t:       auipc        a7, 983164
                  sll          s11, ra, a1
                  sltiu        a3, s2, -1028
                  andi         s8, s7, 735
                  nop
                  addi         s3, s3, -8 #update loop 0 counter
                  sll          s1, t0, a2
                  lui          t0, 648511
                  bgeu         s3, t6, main_7_0_t #branch for loop 0
                  slt          s5, t3, s3
                  addi         s3, zero, 2 #init loop 1 counter
                  addi         a6, zero, 12 #init loop 1 limit
main_9_1_t:       xor          s0, t6, t0
                  addi         s3, s3, 3 #update loop 1 counter
                  addi         a5, zero, 8 #init loop 0 counter
                  addi         gp, zero, 11 #init loop 0 limit
main_9_0_t:       addi         t0, zero, 1818
                  addi         a5, a5, 10 #update loop 0 counter
                  bltu         a5, gp, main_9_0_t #branch for loop 0
                  blt          s3, a6, main_9_1_t #branch for loop 1
                  or           tp, s10, a6
                  addi         a7, zero, 6 #init loop 0 counter
                  srli         s5, s9, 1
                  srl          a2, s3, s7
                  xori         s5, t6, 492
                  lui          t1, 897991
                  addi         a3, zero, 16 #init loop 0 limit
                  srli         a5, a4, 0
                  sra          s11, s8, zero
                  xor          a4, a6, ra
                  srl          s1, a6, s6
main_0_0_t:       sub          t3, a7, t3
                  srai         t1, a4, 27
                  addi         s4, a1, -497
                  lui          a5, 516495
                  and          s4, a3, t4
                  sra          gp, a1, a1
                  xor          a6, s5, s1
                  andi         s2, s1, 62
                  ori          a5, s0, -1104
                  slli         s11, t6, 1
                  xor          a2, t4, a4
                  addi         a7, a7, 5 #update loop 0 counter
                  sub          t3, t5, s9
                  addi         s0, zero, -291
                  xori         s4, t4, 145
                  or           gp, s10, t2
                  bltu         a7, a3, main_0_0_t #branch for loop 0
                  slt          sp, a4, t0
                  addi         t6, zero, 3 #init loop 1 counter
                  addi         sp, s1, -1371
                  addi         a2, zero, -10 #init loop 1 limit
                  xor          s1, s4, s10
main_2_1_t:       xori         a6, a7, -597
                  sub          t0, a1, a6
                  addi         t6, t6, -3 #update loop 1 counter
                  addi         a4, zero, 6 #init loop 0 counter
                  auipc        ra, 46130
                  addi         s9, zero, -10 #init loop 0 limit
                  slt          zero, s1, s1
main_2_0_t:       and          s2, tp, tp
                  addi         sp, ra, -429
                  addi         a4, a4, -1 #update loop 0 counter
                  bge          a4, s9, main_2_0_t #branch for loop 0
                  bge          t6, a2, main_2_1_t #branch for loop 1
                  slli         s4, t4, 20
                  addi         t1, zero, 5 #init loop 1 counter
                  xor          s11, s4, s11
                  auipc        t0, 522599
                  sltu         s5, t6, tp
                  xor          s2, s10, t3
                  nop
                  addi         t4, zero, -5 #init loop 1 limit
                  and          a6, t0, s8
                  xori         s4, s0, -578
main_3_1_t:       sltu         s3, s2, s10
                  auipc        a4, 244248
                  addi         s6, a3, 1541
                  addi         t1, t1, -10 #update loop 1 counter
                  andi         s4, a6, -574
                  or           a7, a5, a1
                  andi         a3, zero, 1752
                  addi         s10, zero, -2 #init loop 0 counter
                  slti         s11, s1, 46
                  addi         a5, zero, 16 #init loop 0 limit
main_3_0_t:       and          t0, s0, t2
                  addi         s10, s10, 9 #update loop 0 counter
                  lui          s9, 603550
                  beq          s10, a5, main_3_0_t #branch for loop 0
                  slt          s4, s10, s0
                  andi         ra, t1, 1155
                  or           t6, tp, tp
                  beq          t1, t4, main_3_1_t #branch for loop 1
                  add          t0, t3, t5
                  addi         tp, zero, 10 #init loop 1 counter
                  addi         a0, zero, -20 #init loop 1 limit
main_6_1_t:       lui          a1, 758732
                  and          t6, t2, s6
                  addi         tp, tp, -3 #update loop 1 counter
                  xor          t6, s8, s6
                  addi         s11, zero, -7 #init loop 0 counter
                  addi         s2, zero, 20 #init loop 0 limit
main_6_0_t:       add          t4, s3, s5
                  sltiu        t0, s3, 1765
                  addi         s11, s11, 9 #update loop 0 counter
                  bne          s11, s2, main_6_0_t #branch for loop 0
                  sub          s0, t5, t6
                  or           sp, a7, a0
                  beq          tp, a0, main_6_1_t #branch for loop 1
                  nop
                  addi         a4, zero, 9 #init loop 1 counter
                  slt          s1, s2, s3
                  slti         gp, t3, 579
                  addi         t3, zero, 9 #init loop 1 limit
                  xori         zero, sp, 1814
main_8_1_t:       and          s1, s3, t2
                  and          a7, zero, gp
                  addi         a4, a4, -8 #update loop 1 counter
                  sub          s0, s2, s7
                  addi         s10, zero, 4 #init loop 0 counter
                  nop
                  addi         s5, zero, 15 #init loop 0 limit
                  addi         gp, s1, 1379
main_8_0_t:       or           t1, s10, s9
                  xor          sp, s11, t1
                  addi         s10, s10, 10 #update loop 0 counter
                  bltu         s10, s5, main_8_0_t #branch for loop 0
                  srl          s11, t4, s0
                  bgeu         a4, t3, main_8_1_t #branch for loop 1
                  lui          sp, 450782
                  sll          sp, a4, t6
                  or           ra, a3, s1
                  slti         t0, t3, -1704
                  bge          a2, t4, 10f
                  sll          s5, a5, a0
                  srli         a4, s9, 24
                  srai         zero, t5, 19
                  srai         ra, s9, 19
                  sra          s8, ra, t4
                  bgeu         a3, t6, 14f
10:               sltu         zero, s5, s5
                  bne          s4, a0, 14f
                  sra          s1, s5, zero
                  srai         s4, t0, 1
14:               bne          t0, a3, 18f
                  or           s5, s3, zero
                  lui          a0, 84030
                  sltiu        s0, s11, -917
18:               lui          s5, 953741
                  auipc        s3, 501859
                  beq          t5, a5, 35f
                  beq          t6, ra, 32f
                  andi         t1, s8, 764
                  lui          a3, 796877
                  sltiu        t4, zero, 833
                  bltu         s1, t3, 27f
                  xor          gp, a6, s6
27:               and          t0, s10, s4
                  slli         s6, a1, 31
                  nop
                  or           t6, t3, a1
                  sll          s3, s9, gp
32:               bne          a5, tp, 52f
                  ori          t6, gp, 968
                  sra          a6, tp, sp
35:               auipc        s0, 654153
                  sll          s2, s1, a5
                  ori          s2, t1, -59
                  sltu         t3, t5, zero
                  sll          t4, s5, t5
                  sltiu        a2, s4, 851
                  xor          s8, t0, t3
                  add          s6, t4, a4
                  lui          a6, 530790
                  sra          a5, sp, sp
                  srli         a3, a6, 18
                  addi         s9, s4, 529
                  sltiu        t0, a1, 878
                  andi         s1, a2, 663
                  bge          t5, t5, 63f
                  bgeu         s0, t6, 55f
                  xor          a5, s9, t5
52:               srl          s0, s8, t5
                  xori         s1, s4, -51
                  andi         t6, s11, 912
55:               auipc        s8, 810526
                  sra          a2, a3, zero
                  or           ra, tp, a3
                  and          gp, a2, s6
                  sub          a7, s6, s3
                  srl          s10, t1, s6
                  srai         ra, tp, 31
                  sltiu        t3, s5, -1579
63:               bne          zero, t4, 70f
                  auipc        s9, 757641
                  slt          t3, s9, a0
                  slt          a6, t2, s5
                  slt          s5, gp, s5
                  xor          a6, s0, ra
                  and          t1, s0, t6
70:               or           s1, a6, s1
                  sltiu        t3, s0, 1110
                  slt          tp, a7, a7
                  slt          a5, ra, s2
                  xori         ra, s6, -1741
                  auipc        t6, 781436
                  xori         a3, s5, -1189
                  sltiu        s4, s7, -726
                  srli         t6, t4, 9
                  sll          a5, t6, t4
                  slt          zero, t4, t4
                  sltu         a6, t5, s10
                  srai         s4, s6, 12
                  nop
                  bne          s2, zero, 95f
                  bne          a5, tp, 104f
                  bge          s2, a3, 103f
                  bltu         t1, a2, 105f
                  blt          s5, t0, 89f
89:               ori          s3, t3, -1761
                  slti         t4, s3, -1478
                  or           ra, s7, a0
                  xori         s4, a5, -1006
                  add          s5, zero, sp
                  slti         s5, a3, 1355
95:               slli         s9, a6, 20
                  addi         sp, s9, 295
                  slti         zero, s0, -375
                  or           s5, a1, a4
                  sll          t0, a3, a4
                  slt          s3, a2, ra
                  sra          a7, a7, s10
                  srai         tp, t5, 17
103:              srl          s6, a4, a6
104:              lui          t3, 206013
105:              and          a1, a1, t6
                  sub          sp, t2, a7
                  slti         a6, s0, -602
                  slt          a0, t1, t2
                  or           t0, t0, s6
                  sll          a6, a0, s0
                  or           s10, s8, t6
                  sub          a0, s9, s5
                  or           s1, sp, a2
                  blt          s2, gp, 132f
                  sub          zero, gp, ra
                  lui          sp, 878647
                  or           s10, tp, a1
                  sra          a3, s10, s11
                  slti         s0, s4, 600
                  auipc        s1, 338593
                  xor          sp, sp, t2
                  sll          s4, t0, t5
                  bge          s1, tp, 128f
                  ori          s0, t6, 276
                  xori         s4, s11, -933
                  ori          a5, ra, -1233
                  beq          a7, s6, 134f
128:              xori         zero, t5, -71
                  slti         a6, a4, 869
                  auipc        a7, 60464
                  slti         zero, ra, 658
132:              slt          t3, a5, t6
                  auipc        zero, 548424
134:              srli         t0, zero, 11
                  addi         s1, zero, 1088
                  bge          s5, a4, 150f
                  or           tp, s4, tp
                  add          a7, s4, sp
                  sub          t0, t1, s9
                  auipc        s11, 837893
                  beq          s7, s6, 156f
                  slti         s1, t1, 879
                  slti         a6, a7, 222
                  srli         s6, s11, 11
                  xor          t4, a6, ra
                  sltiu        t0, ra, 1459
                  bne          s2, a1, 154f
                  bltu         s5, t5, 168f
                  blt          t1, t0, 164f
150:              auipc        s8, 241481
                  xor          t0, s11, a2
                  srli         t1, gp, 7
                  nop
154:              bge          ra, tp, 170f
                  sub          a1, tp, t3
156:              ori          zero, s3, -1906
                  sltiu        t6, t4, -471
                  slt          tp, t4, t6
                  bge          s11, s8, 161f
                  bltu         t1, a3, 161f
161:              xori         a0, s11, 441
                  andi         a6, a3, 942
                  sll          a5, tp, s6
164:              srl          a4, tp, s11
                  add          s9, t3, t2
                  sll          t4, s11, s10
                  ori          s6, s0, 1200
168:              bge          t6, s6, 184f
                  blt          s10, t3, 183f
170:              bne          t2, s8, 185f
                  and          tp, s6, s2
                  srli         s9, s9, 16
                  bgeu         t1, a2, 180f
                  lui          s10, 614757
                  auipc        a3, 361994
                  xor          s6, t0, tp
                  beq          t5, s4, 184f
                  bgeu         s7, s7, 197f
                  slti         s6, s7, 1663
180:              and          a1, a1, tp
                  and          t0, a0, a5
                  bge          a6, s0, 184f
183:              slt          s8, t2, ra
184:              srli         t3, s6, 12
185:              bne          a2, a5, 196f
                  and          a5, s9, s4
                  add          t4, a5, s4
                  srai         a6, t0, 21
                  or           t1, a2, s9
                  sltu         zero, sp, a6
                  sub          a1, s11, s9
                  srl          s4, a7, s6
                  bge          s3, a0, 213f
                  or           s6, s1, s9
                  xori         a3, s0, 606
196:              auipc        s6, 233073
197:              srl          s1, t0, gp
                  add          s8, a4, s8
                  blt          s1, a2, 213f
                  bge          s9, s0, 220f
                  add          s5, s6, a7
                  lui          s0, 329521
                  beq          s0, a1, 204f
204:              sltiu        ra, s4, 790
                  sll          tp, t6, t3
                  nop
                  addi         s9, a7, 281
                  srai         s9, s8, 12
                  slt          tp, a5, zero
                  or           s2, s6, t6
                  auipc        a5, 182383
                  add          a1, s1, t0
213:              bne          sp, t5, 228f
                  slli         a2, s5, 21
                  beq          a6, a5, 217f
                  slli         s5, a2, 26
217:              bge          a2, ra, 224f
                  srai         a4, tp, 30
                  or           tp, s8, a0
220:              ori          t0, a5, -1500
                  add          a2, a4, s1
                  sltu         sp, t2, zero
                  slli         sp, t3, 22
224:              sll          s11, a4, gp
                  srl          s8, s4, a6
                  beq          t0, tp, 243f
                  auipc        a4, 156395
228:              bgeu         s11, s10, 233f
                  slti         t0, t6, 68
                  or           a7, tp, ra
                  beq          a1, a3, 247f
                  and          s4, t4, s6
233:              ori          a0, s0, 871
                  blt          zero, s8, 249f
                  xori         sp, s0, -952
                  srli         s6, t0, 8
                  sub          a0, s7, tp
                  add          s3, zero, a5
                  sll          s0, t4, a5
                  slt          a6, gp, s5
                  slli         s9, a4, 12
                  sll          s6, t0, t4
243:              and          s4, s7, t1
                  addi         a6, t2, -541
                  lui          t3, 759288
                  sub          a5, zero, t6
247:              srli         gp, s6, 6
                  xori         s8, t5, 643
249:              sub          t1, s1, t3
                  ori          s11, a7, 602
                  sra          s1, a6, s2
                  auipc        s4, 880856
                  beq          a6, s0, 269f
                  ori          a3, ra, 1716
                  bgeu         t2, s4, 270f
                  bgeu         sp, a5, 270f
                  addi         t1, s7, -1679
                  or           t4, gp, t3
                  addi         s3, zero, -1273
                  nop
                  add          a2, a4, t5
                  bgeu         s1, ra, 280f
                  add          gp, a3, s6
                  sll          a6, t5, a2
                  add          t4, gp, s11
                  srli         a1, a4, 14
                  slli         s5, s9, 17
                  bltu         a6, s2, 273f
269:              beq          s1, t4, 284f
270:              sltiu        zero, s5, -1801
                  ori          a1, a3, 1443
                  auipc        s9, 695564
273:              slli         tp, s2, 23
                  srl          tp, a3, s4
                  slti         s6, a7, -1744
                  bgeu         s1, s9, 279f
                  bltu         a0, tp, 284f
                  slti         s2, a0, 2
279:              sll          s9, gp, gp
280:              nop
                  lui          gp, 423317
                  lui          s2, 664700
                  beq          ra, t5, 287f
284:              sra          tp, t3, t4
                  auipc        tp, 457488
                  slli         a6, t4, 21
287:              nop
                  bne          s3, s5, 293f
                  addi         tp, s2, 661
                  slti         s11, s9, -1455
                  and          a2, s3, a1
                  bge          s9, a2, 303f
293:              andi         gp, a3, -857
                  lui          t1, 43639
                  srai         a0, s3, 5
                  or           a0, t2, s9
                  bltu         zero, t1, 311f
                  lui          s0, 662042
                  sltiu        t4, t5, -288
                  nop
                  nop
                  sll          ra, t6, t4
303:              slt          a0, sp, gp
                  add          s10, s8, tp
                  slt          tp, s10, t4
                  addi         t3, ra, 1109
                  and          t1, s7, s10
                  auipc        s0, 730133
                  addi         s8, t3, 770
                  bgeu         a2, ra, 328f
311:              slli         a3, t3, 1
                  blt          s1, a4, 313f
313:              andi         s4, ra, 1148
                  auipc        t6, 186282
                  xor          a6, s0, a2
                  addi         gp, s10, 1835
                  ori          zero, s2, 180
                  sltu         a3, t4, s4
                  bge          s9, a3, 326f
                  ori          a7, s3, -1937
                  add          s0, a1, ra
                  addi         s4, s7, 208
                  srai         a1, t2, 23
                  add          sp, a4, t0
                  nop
326:              blt          s3, a5, 328f
                  addi         a2, s2, 1186
328:              slti         s1, t2, -1898
                  bgeu         a7, s9, 345f
                  bltu         s10, s11, 350f
                  slti         t0, a3, 853
                  xor          t6, s10, s8
                  lui          s2, 227758
                  bgeu         s8, s7, 336f
                  or           t0, s5, a4
336:              sub          s0, t0, s4
                  addi         s6, a4, -1113
                  bgeu         a0, s9, 349f
                  slli         a2, s6, 22
                  beq          s5, a7, 345f
                  slti         s6, s1, -1481
                  auipc        s2, 80517
                  xor          t3, sp, s3
                  slli         tp, s5, 31
345:              ori          a4, a3, 602
                  slli         zero, s6, 8
                  or           s10, t5, s1
                  slli         s8, ra, 30
                  sub          s5, a3, tp
                  andi         a3, s8, 303
                  sltiu        s8, zero, 1538
                  and          s6, s8, t1
                  la           s10, sub_3
                  slli         a6, a3, 30
                  srl          a5, gp, s3
                  addi         s10, s10, 459
                  sub          a2, s3, s1
                  ori          a2, s2, -1569
                  lui          s2, 562936
main_j1:          jalr         s3, s10, -459 #jump main -> sub_3
                  lui          t3, 714705
349:              xor          a6, sp, a3
350:              lui          s10, 922284
                  or           a1, a0, zero
                  srai         s10, s7, 8
                  sra          a3, a6, a7
                  srai         gp, t1, 17
                  bne          s1, s8, 359f
                  addi         s10, a2, 506
                  bge          gp, s7, 364f
                  beq          s4, ra, 376f
359:              lui          sp, 726932
                  lui          s8, 349590
                  bge          a5, a7, 372f
                  xori         s8, s9, 1950
                  beq          a2, t5, 381f
364:              sub          a2, s0, t3
                  xor          s8, a3, sp
                  andi         sp, t5, 2047
                  slli         t0, t1, 1
                  blt          s3, a3, 387f
                  bge          s11, t2, 385f
                  addi         s3, t2, 1721
                  xor          t4, a5, s11
372:              or           t4, a6, s6
                  auipc        s4, 861173
                  auipc        t0, 980204
                  addi         tp, s9, -583
376:              sll          s3, s8, s9
                  beq          s5, s3, 384f
                  blt          s4, s4, 398f
                  srli         t6, s8, 23
                  addi         a5, zero, 10 #init loop 1 counter
                  add          zero, t2, s1
                  or           tp, s4, t4
                  addi         t6, zero, 7 #init loop 1 limit
main_1_1_t:       xori         a0, a2, 2023
                  ori          t4, s2, -902
                  addi         a5, a5, -4 #update loop 1 counter
                  addi         a7, zero, 7 #init loop 0 counter
                  ori          s5, s0, -1078
                  addi         s6, zero, 5 #init loop 0 limit
                  slti         sp, t4, -830
main_1_0_t:       slti         s1, s1, 1942
                  auipc        s10, 673268
                  addi         a7, a7, -1 #update loop 0 counter
                  beq          a7, s6, main_1_0_t #branch for loop 0
                  slt          s2, s0, a3
                  bgeu         a5, t6, main_1_1_t #branch for loop 1
                  and          s1, a2, a4
                  or           s10, a5, s10
                  ori          s8, s0, 603
                  auipc        s2, 7434
                  la           s10, sub_2
                  auipc        ra, 724236
                  nop
                  addi         s10, s10, 47
                  nop
                  andi         s8, a2, -837
                  srai         a2, s6, 18
                  bltu         s6, a6, main_j2 #branch to jump instr
                  srl          a4, s4, gp
main_j2:          jalr         s3, s10, -47 #jump main -> sub_2
381:              slti         a5, gp, -1601
                  andi         tp, a2, -1922
                  sltiu        t6, s9, -1546
384:              xor          s1, t0, a7
385:              sltu         s1, a4, s9
                  sll          t1, s6, t1
387:              add          zero, a7, t3
                  blt          a6, a0, 405f
                  ori          a6, s9, -353
                  sltu         s9, tp, s11
                  slt          t3, a3, t2
                  xor          s0, tp, t0
                  slt          s8, t4, a6
                  bltu         t6, t1, 409f
                  bne          t0, t3, 400f
                  ori          a7, t6, -1369
                  beq          s9, a0, 404f
398:              sll          a5, s1, a4
                  beq          t3, t1, 414f
400:              slt          s3, t4, sp
                  bne          a2, a5, 402f
402:              addi         s1, t2, -299
                  beq          ra, t4, 404f
404:              srl          t3, a1, s0
405:              auipc        s1, 63683
                  addi         sp, s1, 56
                  slli         s11, s8, 4
                  blt          a1, zero, 411f
409:              and          s3, s10, t0
                  sub          ra, a0, t6
411:              slli         a0, t4, 9
                  slt          s2, a5, a4
                  xor          s9, t1, sp
414:              auipc        s4, 16580
                  nop
                  lui          s6, 256895
                  add          a3, t4, s4
                  andi         a1, s4, -1509
                  nop
                  xor          t0, sp, a7
                  sra          s4, gp, a5
                  nop
                  addi         a4, s11, -553
                  slli         s5, s7, 11
                  blt          t4, t4, 440f
                  addi         a7, a0, -868
                  sub          t4, s0, zero
                  sll          a5, sp, ra
                  ori          s3, t0, -1136
                  auipc        s4, 818480
                  or           a5, s6, a3
                  srli         a6, s8, 21
                  or           a4, ra, t5
                  add          a3, s11, a2
                  andi         t0, t5, -1111
                  andi         s11, gp, -394
                  nop
                  srai         s2, s10, 14
                  sra          a6, a0, s2
440:              blt          s11, a5, 445f
                  add          t6, a6, s0
                  and          a7, s6, sp
                  xori         t3, t1, -846
                  andi         a2, t6, 1463
445:              and          a2, tp, s6
                  sltu         s0, sp, s2
                  srli         s0, t3, 22
                  slt          t4, a3, a3
                  srai         a2, t0, 28
                  slt          t3, s11, s8
                  and          a5, ra, t3
                  bge          a4, ra, 467f
                  slt          a3, a3, tp
                  srai         s10, s6, 21
                  nop
                  ori          ra, a2, -936
                  auipc        s0, 930843
                  sub          zero, s9, tp
                  bge          a1, gp, 473f
                  slli         t4, t0, 12
                  andi         gp, s4, 1515
                  slli         t6, ra, 22
                  la           s5, sub_2
                  slli         s9, s7, 13
                  ori          a3, t3, 133
                  sltu         t1, s0, t6
                  nop
                  addi         s5, s5, 978
                  sub          t3, a4, tp
                  srai         s1, a1, 10
main_j4:          jalr         s3, s5, -978 #jump main -> sub_2
                  srli         s8, s6, 15
                  ori          s11, t2, -1132
                  bge          a4, s10, 476f
                  slti         a4, s3, 110
                  beq          a1, a2, 478f
                  slt          s0, t4, s0
                  xori         a4, s8, -55
467:              and          s8, s8, s9
                  add          t4, zero, s9
                  sltu         tp, t1, s6
                  beq          a7, s1, 484f
                  bltu         ra, sp, 478f
                  add          a6, s7, t1
473:              or           t0, a6, s5
                  nop
                  slt          s10, sp, a4
476:              addi         t0, gp, 1409
                  add          ra, a7, t6
478:              addi         s3, s5, -422
                  sltiu        s0, t2, 1266
                  auipc        sp, 325187
                  srli         a5, tp, 20
                  bgeu         ra, t5, 498f
                  lui          s8, 440129
484:              beq          s4, t0, 495f
                  andi         a1, s2, 84
                  bgeu         t0, zero, 499f
                  addi         a1, s8, 290
                  bge          sp, a2, 489f
489:              auipc        s0, 83886
                  srli         s11, t0, 20
                  lui          s4, 620960
                  slli         s8, s10, 21
                  srai         zero, a7, 16
                  sub          t4, t0, s1
495:              nop
                  addi         tp, s4, -1593
                  lui          a4, 510718
498:              sra          t3, t4, a2
499:              addi         s1, a1, 1599
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            addi         t5, t5, -12
                  srl          a5, a0, s1
                  sw           s3, 4(t5)
                  or           a6, tp, t5
                  add          gp, s0, s8
                  addi         t4, zero, 8 #init loop 1 counter
                  slt          ra, s11, s10
                  or           s11, t4, a7
                  addi         a0, zero, 5 #init loop 1 limit
                  ori          a3, t2, -1765
                  and          t0, s9, ra
                  add          t1, a1, s1
sub_3_6_1_t:      sltu         gp, s5, s0
                  srl          s10, t5, t1
                  addi         tp, s11, -1859
                  sll          s1, t0, s11
                  slti         a4, zero, 2009
                  srl          t3, t2, tp
                  andi         s9, a0, 471
                  addi         t4, t4, -3 #update loop 1 counter
                  lui          a1, 461824
                  lui          t0, 498476
                  addi         sp, zero, -3 #init loop 0 counter
                  srli         a5, a1, 26
                  srl          s10, s11, ra
                  sltiu        t0, a0, 1658
                  addi         s5, zero, 12 #init loop 0 limit
sub_3_6_0_t:      and          a3, t2, gp
                  srai         a1, s7, 27
                  sra          a3, a7, t4
                  addi         sp, sp, 9 #update loop 0 counter
                  bltu         sp, s5, sub_3_6_0_t #branch for loop 0
                  bgeu         t4, a0, sub_3_6_1_t #branch for loop 1
                  srai         a7, ra, 13
                  addi         s0, zero, -2 #init loop 0 counter
                  slli         a6, sp, 13
                  addi         a1, zero, -10 #init loop 0 limit
sub_3_12_0_t:     slt          ra, s1, s5
                  addi         s0, s0, -5 #update loop 0 counter
                  bge          s0, a1, sub_3_12_0_t #branch for loop 0
                  srai         a2, a7, 9
                  addi         s0, zero, 8 #init loop 1 counter
                  sra          ra, t1, gp
                  sub          gp, s3, s4
                  slli         a1, t6, 5
                  lui          gp, 1015948
                  slt          s11, zero, t3
                  sra          a2, tp, s7
                  addi         s9, zero, 7 #init loop 1 limit
                  sra          ra, a0, ra
sub_3_1_1_t:      lui          s8, 1014593
                  sltu         s2, s1, a0
                  addi         s0, s0, -6 #update loop 1 counter
                  addi         a4, zero, 8 #init loop 0 counter
                  nop
                  addi         s10, zero, -10 #init loop 0 limit
                  auipc        s2, 1015459
                  add          a7, a0, t1
                  srli         a5, s10, 30
                  ori          tp, s1, 1174
sub_3_1_0_t:      slt          a2, t5, s1
                  xori         tp, s8, 1312
                  slti         a0, a5, 1174
                  addi         a4, a4, -6 #update loop 0 counter
                  addi         s3, a1, -4
                  or           a3, ra, t4
                  or           a5, t6, t3
                  beq          a4, s10, sub_3_1_0_t #branch for loop 0
                  slti         gp, s0, 652
                  and          a2, a5, s2
                  bgeu         s0, s9, sub_3_1_1_t #branch for loop 1
                  sra          a6, a6, t5
                  addi         s8, zero, 10 #init loop 1 counter
                  add          s2, a4, s7
                  addi         t4, s10, -305
                  lui          t6, 763299
                  addi         gp, zero, 10 #init loop 1 limit
                  xor          s0, s11, t2
                  lui          a1, 820766
sub_3_9_1_t:      or           t1, sp, ra
                  sub          t3, a1, a5
                  auipc        s9, 962513
                  auipc        s0, 322622
                  addi         s8, s8, -8 #update loop 1 counter
                  or           a3, ra, t3
                  sltiu        a4, s6, -1722
                  addi         sp, zero, 6 #init loop 0 counter
                  addi         s10, zero, 6 #init loop 0 limit
                  andi         s5, s3, 1289
                  and          s3, t1, ra
sub_3_9_0_t:      or           t6, a4, s0
                  srai         s9, t0, 27
                  addi         sp, sp, -3 #update loop 0 counter
                  add          s1, s4, s6
                  bgeu         sp, s10, sub_3_9_0_t #branch for loop 0
                  nop
                  bgeu         s8, gp, sub_3_9_1_t #branch for loop 1
                  lui          s2, 535087
                  addi         s2, zero, 7 #init loop 1 counter
                  addi         a5, zero, 5 #init loop 1 limit
sub_3_7_1_t:      xor          a1, s10, gp
                  slt          gp, s1, s3
                  addi         s2, s2, -4 #update loop 1 counter
                  addi         sp, zero, 10 #init loop 0 counter
                  andi         gp, a5, 1269
                  addi         s6, zero, 18 #init loop 0 limit
                  sra          ra, s2, a0
sub_3_7_0_t:      slti         s4, s0, -604
                  nop
                  xori         s3, s4, 1803
                  addi         sp, sp, 4 #update loop 0 counter
                  xori         s3, t4, -1390
                  slti         s9, t2, 1695
                  nop
                  andi         tp, s10, -142
                  sltiu        t1, t0, 1152
                  auipc        s0, 114922
                  sltu         a0, s11, a6
                  bltu         sp, s6, sub_3_7_0_t #branch for loop 0
                  or           s0, s7, t1
                  sltu         gp, s5, a5
                  xori         s4, s1, 1482
                  sll          a3, s4, s0
                  or           a6, s2, a1
                  bgeu         s2, a5, sub_3_7_1_t #branch for loop 1
                  slt          a0, s2, a5
                  addi         t3, zero, 0 #init loop 0 counter
                  slt          s1, a5, t2
                  srai         t1, t5, 26
                  slti         zero, t3, -1821
                  auipc        a6, 554347
                  ori          a2, a7, -492
                  srli         t0, a0, 20
                  lui          s8, 386362
                  addi         tp, zero, 16 #init loop 0 limit
                  auipc        s5, 524226
                  xor          t1, s10, a6
                  slli         s6, s1, 12
sub_3_13_0_t:     sltu         s9, s9, a4
                  slti         a0, s8, 885
                  and          a6, s3, a5
                  or           a1, t1, sp
                  ori          t4, a7, 2039
                  addi         t3, t3, 8 #update loop 0 counter
                  sra          t0, t0, s7
                  slli         sp, s2, 6
                  or           sp, zero, s4
                  bltu         t3, tp, sub_3_13_0_t #branch for loop 0
                  and          s2, t4, a6
                  addi         tp, zero, 10 #init loop 0 counter
                  addi         s10, zero, 0 #init loop 0 limit
sub_3_10_0_t:     sub          t3, a4, s3
                  addi         tp, tp, -5 #update loop 0 counter
                  beq          tp, s10, sub_3_10_0_t #branch for loop 0
                  addi         sp, s11, 756
                  addi         a1, zero, -7 #init loop 0 counter
                  xor          s1, s8, t0
                  sub          a6, tp, a3
                  addi         a7, s5, 248
                  addi         s10, zero, -3 #init loop 0 limit
                  srl          s0, t0, s11
sub_3_5_0_t:      slt          t6, a7, s5
                  or           tp, s4, s2
                  slti         s8, s1, -1300
                  addi         a1, a1, 8 #update loop 0 counter
                  blt          a1, s10, sub_3_5_0_t #branch for loop 0
                  slli         s0, s2, 20
                  addi         s9, zero, -8 #init loop 0 counter
                  srai         s8, a3, 4
                  auipc        gp, 1023353
                  xori         tp, a3, 1912
                  or           s3, a0, s0
                  slti         s2, a7, 1846
                  andi         a1, a6, -772
                  or           s11, a5, a7
                  addi         sp, zero, -18 #init loop 0 limit
sub_3_4_0_t:      andi         gp, s8, 2005
                  slli         zero, s0, 0
                  nop
                  lui          s6, 646382
                  sll          s2, s8, sp
                  slli         s4, a0, 26
                  addi         s9, s9, -1 #update loop 0 counter
                  xor          t0, t6, ra
                  addi         a3, a1, -1428
                  slli         t1, t3, 24
                  andi         tp, a1, 147
                  ori          t6, a7, -1827
                  srl          s3, a5, t0
                  addi         a0, s4, -1108
                  bge          s9, sp, sub_3_4_0_t #branch for loop 0
                  nop
                  addi         a4, zero, -4 #init loop 1 counter
                  andi         s10, s10, 279
                  slti         s3, s2, -1785
                  addi         t6, zero, 13 #init loop 1 limit
                  or           s3, t3, t5
sub_3_0_1_t:      lui          gp, 579419
                  srai         s10, a7, 25
                  add          t0, s10, t5
                  addi         a4, a4, 4 #update loop 1 counter
                  xor          a2, s10, s5
                  xor          s10, tp, t1
                  addi         t4, zero, 9 #init loop 0 counter
                  addi         s8, s10, -728
                  addi         s6, zero, 18 #init loop 0 limit
sub_3_0_0_t:      andi         a1, a3, 167
                  addi         t4, t4, 5 #update loop 0 counter
                  addi         s4, a1, 1762
                  ori          s1, s7, 297
                  bltu         t4, s6, sub_3_0_0_t #branch for loop 0
                  bltu         a4, t6, sub_3_0_1_t #branch for loop 1
                  slti         zero, t3, -533
                  addi         a0, zero, 1 #init loop 1 counter
                  sltu         t0, a3, s6
                  addi         t4, zero, 10 #init loop 1 limit
sub_3_3_1_t:      sltu         a6, gp, zero
                  srai         s2, a3, 10
                  addi         a0, a0, 3 #update loop 1 counter
                  slt          a7, s1, zero
                  addi         a4, zero, -10 #init loop 0 counter
                  sub          zero, t4, t6
                  addi         ra, zero, -20 #init loop 0 limit
                  slti         s6, sp, 1379
sub_3_3_0_t:      nop
                  ori          tp, t1, 447
                  or           s2, zero, a5
                  addi         a4, a4, -10 #update loop 0 counter
                  slli         s0, s0, 11
                  andi         s5, s7, 51
                  beq          a4, ra, sub_3_3_0_t #branch for loop 0
                  slt          a2, s2, tp
                  srli         s2, a0, 3
                  bne          a0, t4, sub_3_3_1_t #branch for loop 1
                  slt          s4, a2, t2
                  auipc        ra, 911700
                  add          s3, a2, s0
                  sra          s5, s2, a1
                  or           s6, s9, zero
                  bge          a4, ra, 21f
                  slt          gp, sp, a4
                  addi         a4, t0, -653
                  slli         a2, s5, 16
                  bltu         a2, zero, 22f
                  and          tp, t0, s0
                  auipc        tp, 721722
                  auipc        s8, 800868
                  addi         a7, t0, -1326
                  addi         sp, s8, -1751
                  xori         s9, t6, -1256
                  add          s5, s1, gp
                  slli         gp, s5, 7
                  slt          s6, a2, t6
                  xor          t1, s3, t2
                  bltu         s5, ra, 36f
                  bltu         s0, a0, 30f
21:               sra          s2, a4, a2
22:               ori          s6, ra, -1182
                  beq          tp, s0, 42f
                  andi         a7, t1, -890
                  auipc        ra, 113078
                  lui          sp, 584118
                  and          s5, s10, s5
                  andi         a5, a2, 1649
                  sll          t3, s11, s3
30:               andi         s3, s8, 1878
                  xori         a2, t4, -1719
                  auipc        gp, 167458
                  or           s0, a1, t2
                  sub          t4, t1, s9
                  slt          a1, a4, s11
36:               sub          s5, s4, s5
                  add          s5, a0, a5
                  slti         s2, s0, -271
                  bgeu         s6, a0, 52f
                  sub          a5, a3, s5
                  srl          a7, a6, t5
42:               srl          s9, s6, tp
                  slli         s3, t0, 2
                  sll          t4, s6, a0
                  bne          s6, s3, 59f
                  sltu         t0, sp, a1
                  andi         a2, a6, 551
                  blt          s8, t3, 61f
                  slt          s6, a3, s3
                  or           s10, gp, a4
                  add          a2, t0, s5
52:               ori          ra, s10, -1492
                  xori         s1, t5, -539
                  andi         zero, t6, 442
                  ori          t3, ra, 1788
                  srli         a0, s9, 8
                  xor          s9, ra, t4
                  slt          t3, a7, tp
59:               auipc        a6, 424203
                  addi         sp, s6, 1750
61:               sltiu        sp, tp, -1815
                  slt          t4, s11, s9
                  auipc        ra, 322641
                  andi         s9, a1, -1613
                  and          s3, s11, s2
                  andi         ra, a4, -419
                  beq          t1, a3, 80f
                  xor          zero, gp, s8
                  bltu         s6, a5, 77f
                  xori         s9, zero, 1914
                  sltu         a1, zero, a5
                  addi         ra, zero, 1098
                  andi         s3, s2, -357
                  beq          a3, a2, 77f
                  nop
                  or           s9, t1, a3
77:               xori         a1, a3, -682
                  bne          a7, gp, 98f
                  xori         s11, a5, -1807
80:               bne          s2, gp, 89f
                  sll          sp, a2, s4
                  and          gp, gp, a0
                  and          s11, s7, a1
                  beq          s4, s0, 91f
                  nop
                  sub          s5, a3, s5
                  bne          t1, s3, 88f
88:               slt          sp, s11, s2
89:               or           ra, tp, s10
                  addi         s8, s5, 831
91:               bltu         s9, s6, 97f
                  xori         s10, a4, 455
                  beq          t1, s4, 108f
                  sub          s6, tp, t0
                  sra          t1, a1, a1
                  sltiu        a1, ra, -1484
97:               ori          s8, t6, 1034
98:               or           ra, s6, ra
                  add          s3, t4, t6
                  bltu         s5, s9, 118f
                  xori         s10, a6, -1639
                  srl          t6, s3, t0
                  lui          s6, 571220
                  bltu         a4, ra, 119f
                  beq          s11, s3, 120f
                  bgeu         a5, t1, 115f
                  lui          sp, 858344
108:              addi         s9, tp, -1956
                  bltu         tp, s4, 116f
                  sltiu        a6, s9, -1759
                  bltu         t6, gp, 128f
                  addi         t0, s4, -1897
                  andi         t6, s8, 1182
                  srli         s5, s8, 3
115:              bgeu         s2, a4, 128f
116:              bne          a0, s9, 131f
                  nop
118:              lui          a5, 939112
119:              bgeu         a1, ra, 138f
120:              sra          s3, a1, s0
                  sub          s1, s1, t2
                  auipc        zero, 185485
                  bltu         s8, s10, 129f
                  sltu         s4, s0, zero
                  xor          s2, s10, s10
                  beq          s6, a2, 144f
                  andi         sp, gp, 1256
128:              bltu         t6, s9, 133f
129:              beq          s2, s10, 143f
                  addi         t4, s9, -1493
131:              sra          t1, a2, t4
                  sltu         s11, s0, s0
133:              srai         t6, t4, 24
                  beq          a4, a5, 153f
                  sra          ra, t1, t6
                  bge          s11, t4, 153f
                  bge          t4, t3, 156f
138:              sub          a3, t1, t6
                  bltu         s0, s10, 154f
                  and          t3, s1, a7
                  sltiu        sp, s9, -211
                  xor          a4, s7, tp
143:              lui          tp, 93218
144:              sub          s0, t2, t3
                  sub          s2, t5, tp
                  srai         a6, s5, 16
                  nop
                  sra          t1, a1, s4
                  lui          s0, 985634
                  sra          s5, s0, s1
                  sra          a1, a6, t0
                  slli         zero, sp, 11
153:              sll          a6, tp, s9
154:              srli         s9, zero, 8
                  beq          s5, s2, 169f
156:              andi         a7, s6, 867
                  xor          s11, a2, s11
                  sltu         s11, a5, s4
                  blt          a6, s9, 167f
                  auipc        s4, 1006509
                  sll          a7, a5, a0
                  ori          sp, s10, -708
                  lui          a3, 1030210
                  srai         s9, t5, 11
                  slt          s11, s10, s10
                  bge          a7, s3, 173f
167:              or           gp, s8, t5
                  xor          s10, a7, gp
169:              srli         s10, t5, 19
                  srli         t4, s9, 6
                  sra          a6, s0, s3
                  blt          a5, t3, 177f
173:              bge          s4, a6, 186f
                  add          a5, a5, a0
                  lui          a0, 104006
                  sltu         t6, s11, gp
177:              beq          gp, s9, 187f
                  srli         a3, s9, 8
                  auipc        s1, 5257
                  beq          s1, s0, 194f
                  and          t0, s1, s1
                  xori         a2, sp, -441
                  bltu         s4, tp, 198f
                  sll          a4, t5, a4
                  sltiu        ra, tp, 1915
186:              addi         s8, s6, 774
187:              and          a2, t0, a1
                  beq          a4, s9, 197f
                  sub          ra, a0, tp
                  ori          s3, a3, 486
                  srli         s9, a6, 8
                  slt          t0, a2, a5
                  auipc        ra, 418971
194:              slti         a3, t0, 1458
                  or           a3, t3, s5
                  srl          a5, s8, gp
197:              srli         tp, s8, 30
198:              add          s5, s0, t3
                  or           tp, a5, t4
                  srl          s8, a2, s7
                  sltiu        s11, s6, 1146
                  ori          t6, a5, 2017
                  srai         ra, gp, 31
                  bgeu         t5, a7, 224f
                  lui          s1, 856876
                  xori         s10, ra, -777
                  bltu         t5, t3, 213f
                  andi         s9, a5, 365
                  srl          s10, a7, s9
                  xor          tp, a2, s11
                  addi         zero, s5, 1178
                  xori         a1, a6, 1157
213:              and          a5, s11, a5
                  sub          s10, a0, s7
                  bge          t6, s0, 233f
                  bltu         s10, s6, 233f
                  sub          ra, a0, s4
                  srli         s5, tp, 20
                  sll          a2, s0, s0
                  ori          tp, s2, -1100
                  slti         gp, ra, -1293
                  sltu         t1, s3, t5
                  sub          s2, zero, t2
224:              or           a5, t3, a5
                  sll          s0, a0, s5
                  sub          s8, s2, s5
                  srai         a6, s2, 5
                  sll          s4, s5, t6
                  xori         t6, s11, 1642
                  srli         zero, t1, 5
                  sltiu        s10, t5, -257
                  and          t4, a4, s5
233:              nop
                  and          s2, a7, s4
                  sub          a7, t4, a7
                  sll          t4, s9, a4
                  sltu         s6, t2, s11
                  slt          a4, a0, gp
                  xori         s9, s9, -134
                  sltiu        s10, t0, -854
                  srl          t4, s3, s6
                  bge          t2, a4, 255f
                  srli         ra, s9, 5
                  srli         a0, a5, 31
                  xori         s1, t3, -1688
                  blt          s7, s4, 259f
                  andi         s4, s0, -1030
                  bgeu         t1, s8, 263f
                  bgeu         s8, a0, 264f
                  and          a7, gp, s5
                  bltu         t3, gp, 264f
                  lui          s11, 86357
                  add          s11, s0, a0
                  xor          s3, a0, s0
255:              auipc        a5, 485866
                  bne          sp, sp, 273f
                  sltiu        sp, a4, 180
                  auipc        zero, 347008
259:              sll          t3, s1, s6
                  bgeu         s0, s4, 263f
                  or           s2, a0, t2
                  auipc        a6, 154838
263:              or           s4, a1, t6
264:              bltu         t3, a2, 273f
                  sub          sp, t3, s9
                  or           s10, s5, s10
                  lui          t1, 63963
                  bltu         s9, t5, sub_3_j6 #branch to jump instr
                  xor          zero, a0, t1
                  slli         t6, t4, 18
                  xori         s0, a4, 1119
                  sltu         gp, t6, t0
                  lui          s3, 682524
sub_3_j6:         jal          s3, sub_4 #jump sub_3 -> sub_4
                  and          s10, s4, s3
                  lui          t1, 951454
                  bgeu         t2, s11, 281f
                  sra          ra, t3, t6
                  slt          s5, a4, ra
                  slt          s10, a5, s1
                  blt          a0, s2, 277f
                  blt          s3, s8, 273f
273:              sub          s11, zero, zero
                  slt          t4, s6, tp
                  bgeu         s6, s6, 282f
                  ori          s4, s5, -1233
277:              bne          t2, s9, 295f
                  andi         s6, a4, 1071
                  and          s3, zero, t4
                  bge          t5, t0, 294f
281:              slli         a5, a7, 10
282:              bltu         s3, t2, 291f
                  slti         gp, s4, 1963
                  nop
                  slt          a4, s3, t6
                  sltu         s5, ra, t2
                  slti         a4, a2, 384
                  bltu         a0, zero, 307f
                  ori          a1, gp, 513
                  sra          s5, s2, s1
291:              ori          a7, ra, -1892
                  bne          s2, t1, 297f
                  sub          s5, a5, a4
294:              nop
295:              auipc        ra, 457334
                  xor          zero, s0, s9
297:              bge          s8, t1, 315f
                  sub          t6, zero, a6
                  srl          s3, a7, a5
                  slli         t6, tp, 12
                  beq          s5, tp, 310f
                  beq          zero, s2, 309f
                  auipc        ra, 74424
                  srli         t4, s9, 21
                  nop
                  sra          t3, t4, s11
307:              sll          s0, a6, a5
                  srl          ra, t5, t1
309:              auipc        s10, 102143
310:              sltiu        a5, s5, 1743
                  sltu         a1, a5, t4
                  andi         a0, a6, -1332
                  sltu         a3, t5, a0
                  andi         t1, t6, -1435
315:              lui          a7, 34019
                  bltu         a6, s8, 329f
                  sub          t1, s0, t4
                  xor          t4, t0, s10
                  srli         t1, s3, 11
                  beq          t3, t5, 337f
                  nop
                  addi         a2, zero, -2 #init loop 0 counter
                  addi         s2, s3, -275
                  addi         a0, zero, -20 #init loop 0 limit
                  xor          s8, a0, t5
sub_3_8_0_t:      auipc        s11, 728948
                  srl          s11, t6, t4
                  or           a1, t0, a3
                  addi         a2, a2, -6 #update loop 0 counter
                  sltu         s9, sp, s11
                  srli         gp, t6, 20
                  sll          a5, s8, ra
                  bne          a2, a0, sub_3_8_0_t #branch for loop 0
                  auipc        zero, 763198
                  bne          t1, tp, 335f
                  bne          s1, s11, 336f
                  srli         t4, t4, 27
                  auipc        s9, 185498
                  lui          s10, 892741
                  bge          t4, s1, 340f
                  beq          t2, s0, 343f
329:              slli         ra, a5, 3
                  addi         a7, a0, 1541
                  andi         s11, zero, -47
                  and          s6, a7, s6
                  add          a5, a3, t1
                  nop
335:              or           a0, zero, a2
336:              nop
337:              auipc        a7, 573434
                  srai         s4, tp, 16
                  bge          a1, s6, 354f
340:              and          a4, gp, t2
                  slti         sp, t4, -525
                  srai         s5, a5, 16
343:              sll          t1, gp, s5
                  sll          a5, s6, s1
                  slti         s5, a1, 1811
                  xori         s9, s3, 1988
                  srai         a6, t3, 7
                  blt          t5, sp, 354f
                  bge          t5, s6, 364f
                  sll          s2, t3, t4
                  bgeu         a0, s8, 357f
                  sra          a4, s7, t4
                  lui          gp, 9511
354:              bne          s9, t6, 357f
                  slt          sp, s9, s1
                  srai         a5, ra, 29
357:              sltiu        t4, a0, -712
                  blt          t3, t2, 375f
                  bgeu         s6, s3, 373f
                  sll          a0, t2, a5
                  or           a7, t1, s11
                  sub          t6, a5, sp
                  nop
364:              slti         s9, a6, 1326
                  lui          a0, 540025
                  sltu         s3, a2, s3
                  or           s6, gp, t4
                  addi         t6, gp, 1593
                  sll          t6, tp, t2
                  sltu         tp, a2, s0
                  or           t0, t2, a3
                  nop
373:              sub          t1, sp, s7
                  slti         s9, s0, 23
375:              sub          s5, t0, t5
                  addi         a4, a4, -671
                  sltiu        tp, s8, -762
                  sub          t0, gp, s11
                  blt          tp, a2, 394f
                  xori         s4, t3, 1760
                  sltu         a1, a4, sp
                  addi         a3, s11, 1502
                  beq          t1, t2, 393f
                  srl          t6, t0, gp
                  ori          s4, zero, -940
                  bne          a2, s7, 405f
                  srai         a6, a5, 2
                  addi         s5, t1, -340
                  slt          s5, a2, s10
                  sltu         s0, a0, a6
                  bltu         a5, s11, 399f
                  add          a2, s3, s7
393:              or           s11, a2, s8
394:              sltiu        t6, zero, -694
                  lui          s4, 223118
                  bltu         s9, t0, 414f
                  slt          t3, a6, gp
                  nop
399:              or           s3, s9, sp
                  sub          s6, t6, s9
                  bge          s4, t1, 421f
                  srl          t6, t6, s11
                  lui          zero, 617481
                  lui          s11, 710541
405:              andi         a3, sp, 1832
                  slti         s2, s1, 1310
                  srai         zero, s6, 0
                  xor          s6, s9, a3
                  lui          ra, 87637
                  bgeu         a5, s1, 427f
                  blt          t4, s10, 418f
                  ori          t4, s2, 334
                  bltu         s10, t0, 414f
414:              andi         s2, s7, 1989
                  blt          s5, a7, 429f
                  sub          s6, s11, ra
                  slli         a2, s0, 14
418:              lui          gp, 757456
                  srli         s2, t3, 25
                  bltu         s2, s6, 423f
421:              sra          a2, a2, s0
                  bge          t5, s9, 427f
423:              lui          t1, 676370
                  bgeu         a3, a1, 432f
                  lui          s9, 111117
                  nop
427:              bltu         s0, a5, 434f
                  or           s9, a3, a1
429:              bgeu         zero, s0, 444f
                  sltiu        s4, t5, -1653
                  sltiu        t0, t6, 574
432:              srai         a1, s0, 29
                  sltiu        a0, s2, -120
434:              bltu         t5, s8, 447f
                  blt          s0, a2, 450f
                  sub          s4, s4, ra
                  bgeu         sp, s1, 456f
                  addi         a7, s10, 1871
                  addi         a2, zero, 8 #init loop 0 counter
                  addi         t6, zero, 20 #init loop 0 limit
sub_3_11_0_t:     sltu         s5, t3, t5
                  sll          s2, a5, a5
                  xori         tp, gp, 411
                  slt          a5, ra, s0
                  xori         s8, s9, -832
                  slt          t3, s9, s8
                  addi         a2, a2, 6 #update loop 0 counter
                  sltu         a7, ra, s2
                  srli         ra, s6, 3
                  bne          a2, t6, sub_3_11_0_t #branch for loop 0
                  xor          s10, t1, t4
                  sltiu        a2, s6, -535
                  slti         t0, t2, -360
                  srl          s1, s4, a3
                  slti         a1, s11, -932
                  add          t0, s8, zero
444:              sltu         t6, a6, a5
                  addi         a2, t6, 889
                  bgeu         s0, s3, 452f
447:              nop
                  xor          t3, t4, a4
                  sll          t3, s4, t0
450:              xori         s1, t4, -1138
                  sub          s11, sp, s5
452:              slti         t3, t6, 990
                  andi         ra, t3, -1920
                  srl          t1, a5, t1
                  sltu         s3, a0, s11
456:              xor          tp, t2, a3
                  addi         t6, s2, -2000
                  slli         s5, a6, 29
                  slli         a5, t3, 25
                  sub          gp, s4, a0
                  bge          a6, s6, 478f
                  addi         ra, zero, -1299
                  beq          a1, s2, 480f
                  andi         t4, s5, -1480
                  auipc        gp, 913704
                  bltu         s9, s1, 475f
                  auipc        a7, 126041
                  slti         gp, a1, -473
                  lui          a6, 602714
                  bne          a3, a3, 485f
                  nop
                  srli         a5, a1, 19
                  auipc        tp, 341042
                  add          a3, a4, ra
475:              sra          t1, a5, a1
                  sltiu        s11, sp, -1413
                  slti         s1, t1, 573
478:              bgeu         sp, s8, 487f
                  ori          t0, s8, -1146
480:              slli         sp, s9, 4
                  lui          s6, 300498
                  xor          tp, s6, t4
                  auipc        a4, 303325
                  and          s1, s0, tp
485:              or           s0, t2, a1
                  srli         s3, t4, 30
487:              sra          ra, a6, a6
                  add          a7, s4, t1
                  bgeu         s3, sp, 504f
                  slt          a0, a1, s5
                  slli         gp, a6, 27
                  add          t3, a4, a0
                  sra          s2, sp, a0
                  sra          a4, t1, s11
                  lui          zero, 158427
                  sltu         s3, s0, ra
                  bgeu         s6, t2, 511f
                  sll          a6, s3, a6
                  blt          a3, t6, 513f
                  lui          s9, 1011802
                  andi         a2, s6, -1809
                  slti         s11, s6, -1636
                  slt          s5, s10, t0
504:              nop
                  lui          tp, 364338
                  xor          sp, t4, sp
                  or           s11, a0, t6
                  bgeu         a2, s3, 521f
                  srli         s6, sp, 21
                  andi         t3, ra, -2004
511:              sltu         a4, t6, s2
                  sltiu        s5, t3, -531
513:              srli         a6, t4, 21
                  xor          a4, t5, t5
                  srli         s8, a2, 28
                  add          zero, t4, tp
                  blt          a7, ra, 530f
                  lui          t6, 368762
                  sltiu        a0, t2, -1489
                  nop
521:              bltu         s11, t2, 534f
                  srai         a3, tp, 25
                  sltiu        s3, s10, 1330
                  addi         sp, t0, 1345
                  sra          t0, a2, gp
                  bgeu         sp, s1, 540f
                  srl          t4, a5, zero
                  slli         a5, a1, 16
                  slli         a4, a4, 29
530:              ori          a6, s11, 987
                  srai         s9, a1, 29
                  xori         s11, t4, 5
                  nop
534:              ori          t1, a6, 1531
                  slti         t3, t5, -525
                  bge          s9, t1, 546f
                  xor          s1, s2, s11
                  and          t3, a3, a7
                  andi         s4, s11, 1020
540:              ori          ra, s4, -362
                  bgeu         a4, s1, 559f
                  srai         s9, s4, 23
                  slti         sp, sp, 1259
                  sra          sp, s5, a2
                  nop
546:              lui          s5, 306216
                  sra          a5, s10, s9
                  srl          t3, s1, s6
                  lui          a3, 812824
                  bne          s7, zero, 556f
                  xor          gp, s2, s7
                  blt          t4, t2, 572f
                  sltiu        a1, t5, -140
                  xori         s8, a4, -1667
                  and          t0, a2, s10
556:              and          s6, a7, t2
                  sra          zero, t1, a4
                  ori          t6, s8, 1818
559:              slti         s11, a2, 1828
                  sra          a6, s8, a3
                  addi         a7, zero, -4 #init loop 1 counter
                  or           a2, tp, a2
                  slti         a3, s6, 895
                  addi         s2, zero, 19 #init loop 1 limit
                  add          zero, a7, s4
                  srl          s1, a0, a1
                  xor          t1, a4, t5
                  srl          s4, s2, t3
                  and          a0, a4, s1
                  or           s4, gp, s2
sub_3_2_1_t:      nop
                  addi         a7, a7, 4 #update loop 1 counter
                  slt          a1, tp, gp
                  addi         s10, zero, 8 #init loop 0 counter
                  and          a6, s6, a0
                  addi         a4, zero, 8 #init loop 0 limit
sub_3_2_0_t:      sltu         a6, t0, s9
                  nop
                  addi         s10, s10, -7 #update loop 0 counter
                  addi         t4, t1, 482
                  bgeu         s10, a4, sub_3_2_0_t #branch for loop 0
                  auipc        tp, 898704
                  sub          tp, s3, a2
                  xori         a6, s3, 1148
                  blt          a7, s2, sub_3_2_1_t #branch for loop 1
                  and          a3, t1, t5
                  xor          t3, s9, t2
                  xori         s5, a4, 763
                  slti         a7, s10, -898
                  or           a1, t5, t0
                  bne          s4, s6, 584f
                  srl          t1, s9, s3
                  srai         s8, s4, 24
                  andi         s6, zero, 890
                  srai         zero, t6, 12
                  srai         t4, sp, 3
                  sll          t1, s3, a0
572:              bgeu         s11, t6, 589f
                  bgeu         s4, tp, 591f
                  xor          s5, sp, s1
                  sltu         sp, a3, s8
                  sltu         a5, a7, a1
                  sll          a5, s9, t3
                  or           s5, t4, a4
                  lui          s0, 115621
                  bltu         a5, a2, 587f
                  or           s5, t1, t3
                  bne          s7, tp, 583f
583:              slli         s5, sp, 28
584:              sub          s3, s3, s3
                  addi         s4, a7, -1717
                  sll          a4, a3, s10
587:              bgeu         t3, a1, 605f
                  srli         a7, gp, 21
589:              bne          s10, a1, 598f
                  bltu         a2, ra, 597f
591:              nop
                  xori         t1, s10, 1061
                  auipc        s2, 850380
                  sra          a2, t3, s1
                  ori          a6, t5, 1502
                  nop
597:              andi         s3, s8, -1561
598:              sub          s4, s9, s2
                  srli         gp, t1, 22
                  auipc        ra, 443287
                  sltu         a0, zero, s1
                  lui          t0, 1036215
                  bltu         gp, zero, 606f
                  slti         s3, s9, 920
605:              bltu         a6, s11, 622f
606:              and          tp, s4, s5
                  nop
                  addi         s1, zero, -46
                  srl          s10, ra, s2
                  srli         a1, s11, 3
                  sub          tp, s8, zero
                  sll          a2, t2, a3
                  sra          ra, tp, t3
                  lui          s5, 869203
                  add          t3, zero, ra
                  blt          gp, s5, 629f
                  bne          s7, a0, 637f
                  sll          s3, s1, s4
                  or           t3, ra, s2
                  slti         zero, a7, 87
                  xor          t1, s3, t0
622:              nop
                  lui          t1, 647300
                  bltu         zero, a1, 631f
                  srl          tp, a4, t6
                  bltu         t5, t0, 639f
                  sltu         ra, t6, a0
                  andi         t1, a4, 590
629:              add          s5, s2, a1
                  sll          a0, s10, a2
631:              sub          s10, t3, zero
                  sra          s8, s8, s6
                  slt          s0, s8, a5
                  auipc        t0, 521238
                  sltu         a5, a5, s11
                  bltu         a7, s9, 653f
637:              bge          t4, a2, 647f
                  add          a6, a4, s0
639:              andi         a7, a3, -469
                  bltu         s9, t1, 654f
                  andi         s8, s5, -1573
                  sltu         a5, zero, s10
                  sltiu        s3, a0, -745
                  sltu         a1, t0, t1
                  ori          t6, s11, 1414
                  slli         a1, a7, 20
647:              bgeu         a4, a5, 665f
                  slti         s0, s0, 718
                  srli         a0, t4, 28
                  bgeu         a1, ra, 664f
                  sltiu        t4, s7, -1824
                  andi         s1, a4, 626
653:              xori         t3, s11, -1162
654:              lui          s4, 519757
                  srai         s8, a6, 24
                  ori          t4, s6, 1090
                  sltiu        a4, a6, -1078
                  or           t0, t6, zero
                  sub          s6, sp, t5
                  addi         s8, s0, -851
                  sll          s0, t3, t2
                  xor          a1, a1, s7
                  srl          s5, a2, s5
664:              or           a3, a5, t0
665:              bltu         a2, t3, 671f
                  slli         a7, s1, 14
                  bne          zero, gp, 682f
                  bge          s8, a1, 682f
                  slli         ra, t4, 3
                  ori          ra, s5, 1930
671:              xori         t3, t6, 1304
                  bne          a4, ra, 685f
                  sub          a5, t6, t1
                  xori         s8, a2, 941
                  bltu         s6, t4, 676f
676:              xori         tp, zero, -365
                  ori          s10, sp, 1718
                  lui          gp, 1011879
                  or           s11, t4, t4
                  lui          s5, 612368
                  lui          t4, 953437
682:              bgeu         s11, a4, 687f
                  sll          s2, s6, t6
                  srai         s2, tp, 22
685:              auipc        sp, 913675
                  blt          t1, t6, 701f
687:              sra          s2, t1, zero
                  srl          s0, s10, s1
                  or           s5, s9, s5
                  ori          s0, s1, 1550
                  beq          s9, s11, 706f
                  addi         a3, zero, 956
                  and          s1, tp, a7
                  xor          s6, a6, t3
                  addi         s9, s8, -265
                  slli         a4, s5, 3
                  and          a7, tp, ra
                  sltu         s4, s7, s8
                  addi         s8, tp, 669
                  addi         zero, t1, 1273
701:              beq          a3, tp, 710f
                  blt          a0, a7, 721f
                  ori          s1, a3, 336
                  or           t0, ra, s7
                  sltu         s4, s6, t5
706:              bne          t4, sp, 712f
                  slti         a7, zero, -914
                  srli         t4, gp, 1
                  bgeu         s8, t2, 717f
710:              xori         a3, s4, 1613
                  ori          ra, t2, -1730
712:              xori         s8, gp, -601
                  sltu         s4, s8, t0
                  nop
                  nop
                  bne          a1, tp, 731f
717:              sltiu        a3, t5, -76
                  add          s3, a3, t5
                  addi         a5, a3, 1894
                  xori         a6, s4, -1168
721:              bge          s11, t0, 740f
                  srli         s5, a0, 30
                  addi         tp, ra, -1629
                  bltu         s11, a7, 741f
                  bltu         a1, t0, 738f
                  lui          a1, 368871
                  sra          a1, t6, t4
                  addi         s5, t6, 634
                  beq          s5, s0, 744f
                  slti         gp, tp, 991
731:              sll          ra, s5, t6
                  bne          ra, a2, 739f
                  sltiu        a2, s11, 1415
                  bltu         a4, a7, 748f
                  sra          a4, s3, a5
                  beq          a6, s11, 748f
                  lui          a5, 418563
738:              sltu         t6, s9, s7
739:              bne          ra, tp, 742f
740:              bne          t6, gp, 741f
741:              add          ra, ra, s2
742:              add          s1, tp, s6
                  blt          a3, a7, 748f
744:              sra          a3, a0, gp
                  beq          t5, s5, 748f
                  ori          a5, s9, 1602
                  sra          s9, t2, s5
748:              or           a7, s9, s7
                  lw           s3, 4(t5)
                  addi         t5, t5, 12
                  sltiu        a2, s11, -755
                  srai         t4, s1, 3
                  xori         a1, zero, -904
1051:             addi x10, x19, 1
1051:             jalr x10, x10, 0
sub_5:            beq          t2, s11, sub_5_stack_p
                  sll          s11, s5, s5
                  slti         t3, s11, -208
sub_5_stack_p:    addi         t5, t5, -60
                  xor          s11, s2, a6
                  lui          t0, 391767
                  slt          s2, s9, a0
                  srl          a1, t3, s5
                  sw           s3, 4(t5)
                  auipc        t3, 403801
                  add          gp, a7, s0
                  or           a6, s0, a1
                  ori          s5, t0, -3
                  or           s5, a4, t6
                  sll          a5, ra, s4
                  sltiu        a2, t2, 639
                  lui          a3, 199235
                  sub          s11, zero, s7
                  sub          s8, s3, a5
                  sltu         a3, t6, s4
                  sltiu        gp, a7, -587
                  xor          s2, s7, s4
                  beq          s9, s11, 12f
12:               or           s5, t0, s1
                  lw           s3, 4(t5)
                  addi         t5, t5, 60
                  xor          t1, t3, s5
                  sltu         gp, t1, a3
                  sltu         s5, gp, s7
29:               addi x12, x19, 0
29:               jalr x12, x12, 0
sub_2:            sll          a6, a7, tp
                  addi         t5, t5, -20
                  sltu         a1, a7, t3
                  sw           s3, 4(t5)
                  srli         s1, s1, 1
                  xor          sp, s4, t6
                  srl          t4, s11, s9
                  lui          s10, 989741
                  sub          s5, s5, zero
                  sub          zero, a3, gp
                  srl          gp, a2, sp
                  addi         s0, zero, -9 #init loop 1 counter
                  addi         s8, zero, 9 #init loop 1 limit
                  sltiu        t3, s9, -1161
                  srli         a1, t1, 12
sub_2_3_1_t:      sltiu        s4, t5, 741
                  andi         zero, t0, -920
                  addi         s0, s0, 6 #update loop 1 counter
                  nop
                  addi         a0, zero, 4 #init loop 0 counter
                  sub          s10, a1, s6
                  add          ra, t3, a2
                  xori         a7, s8, -213
                  addi         s9, zero, 14 #init loop 0 limit
                  sltiu        s1, s1, 152
                  andi         a6, s9, -1227
                  slt          s2, s4, s5
                  or           s1, s1, t2
                  sltu         t6, a5, a5
sub_2_3_0_t:      xori         ra, sp, 1702
                  andi         a3, t2, -1722
                  addi         a0, a0, 2 #update loop 0 counter
                  blt          a0, s9, sub_2_3_0_t #branch for loop 0
                  sll          ra, t5, s5
                  addi         t3, s9, -843
                  add          a7, s5, s10
                  bne          s0, s8, sub_2_3_1_t #branch for loop 1
                  add          t1, gp, sp
                  addi         a7, zero, 1 #init loop 0 counter
                  addi         a4, zero, 15 #init loop 0 limit
sub_2_5_0_t:      andi         s6, zero, 1051
                  sltiu        a5, a5, -476
                  addi         a7, a7, 1 #update loop 0 counter
                  bne          a7, a4, sub_2_5_0_t #branch for loop 0
                  or           s0, a5, t0
                  addi         s2, zero, 8 #init loop 1 counter
                  srl          s3, a4, zero
                  sltu         a7, s1, a1
                  addi         s1, zero, 12 #init loop 1 limit
sub_2_0_1_t:      slti         tp, a1, -2019
                  andi         tp, t1, 323
                  addi         s2, s2, 4 #update loop 1 counter
                  addi         t0, zero, 3 #init loop 0 counter
                  sub          s3, a6, s8
                  nop
                  addi         t1, zero, 6 #init loop 0 limit
                  sltu         s0, t3, s5
sub_2_0_0_t:      and          a1, s7, t5
                  srli         s6, a0, 20
                  sll          ra, t3, s10
                  xor          gp, s8, t1
                  slli         a5, a0, 5
                  addi         t0, t0, 5 #update loop 0 counter
                  or           s4, a2, t2
                  addi         t4, s10, 1953
                  blt          t0, t1, sub_2_0_0_t #branch for loop 0
                  sub          a6, s4, a1
                  bltu         s2, s1, sub_2_0_1_t #branch for loop 1
                  nop
                  addi         s3, zero, 10 #init loop 1 counter
                  addi         gp, zero, 19 #init loop 1 limit
sub_2_2_1_t:      andi         a1, s11, -59
                  addi         s3, s3, 3 #update loop 1 counter
                  xor          s6, s5, t6
                  addi         t6, zero, 9 #init loop 0 counter
                  addi         a4, zero, -18 #init loop 0 limit
                  srl          s6, t0, s7
sub_2_2_0_t:      lui          s2, 988036
                  andi         t0, t2, 1794
                  addi         t6, t6, -9 #update loop 0 counter
                  bne          t6, a4, sub_2_2_0_t #branch for loop 0
                  srli         a7, s5, 25
                  bne          s3, gp, sub_2_2_1_t #branch for loop 1
                  add          s5, t6, s3
                  addi         a1, zero, 4 #init loop 0 counter
                  slt          gp, zero, a0
                  sltu         t0, a7, a4
                  ori          a7, sp, 1942
                  xor          s9, a1, a2
                  addi         a0, zero, -12 #init loop 0 limit
                  ori          s10, a0, -1814
sub_2_6_0_t:      xori         a5, a5, 1555
                  addi         a1, a1, -5 #update loop 0 counter
                  srl          a2, t5, s8
                  slli         s8, s11, 14
                  bge          a1, a0, sub_2_6_0_t #branch for loop 0
                  srai         t4, t6, 3
                  addi         t3, zero, -2 #init loop 0 counter
                  addi         ra, zero, -9 #init loop 0 limit
                  sra          s3, s2, gp
sub_2_1_0_t:      sub          gp, a5, s10
                  auipc        a6, 114159
                  addi         t3, t3, -7 #update loop 0 counter
                  sltu         s5, ra, s8
                  beq          t3, ra, sub_2_1_0_t #branch for loop 0
                  sltiu        a5, gp, -270
                  srl          t4, s1, t5
                  beq          s10, t0, 20f
                  xori         t6, a4, -946
                  blt          s1, t4, 20f
                  and          t0, gp, s8
                  blt          s4, s6, 6f
6:                srli         t3, s6, 12
                  nop
                  blt          t3, tp, 26f
                  auipc        s3, 337574
                  addi         ra, s8, -1490
                  sltu         gp, s10, t5
                  or           s8, tp, s5
                  sltu         s8, a4, a4
                  bge          s6, gp, 34f
                  sub          a0, tp, a1
                  sltiu        s11, a7, -742
                  slli         s2, a0, 20
                  ori          s9, sp, 280
                  and          a6, t0, s3
20:               lui          t6, 301366
                  ori          a6, t0, 888
                  bne          t0, t2, 27f
                  sltu         a4, t2, ra
                  bgeu         s4, s11, 25f
25:               xor          s6, t6, s10
26:               slti         ra, a3, -996
27:               srai         gp, t5, 1
                  ori          a0, t6, 1939
                  bgeu         t5, a3, 44f
                  nop
                  bge          s10, a3, 38f
                  auipc        t1, 419091
                  blt          t5, s4, 40f
34:               sltiu        s5, sp, 440
                  nop
                  slt          s9, t0, a7
                  srli         s5, s2, 4
38:               slt          s10, s7, a5
                  bge          s11, a4, 50f
40:               addi         t0, sp, -1456
                  ori          s0, sp, 612
                  ori          a7, gp, -1306
                  ori          a5, zero, 815
44:               sll          s4, s2, s6
                  sra          tp, a5, s2
                  sub          s3, t4, t5
                  and          s11, t6, s7
                  add          a0, s6, t5
                  lui          s2, 584912
50:               add          a1, ra, a1
                  lui          t6, 988476
                  slti         a6, t3, 99
                  and          tp, a0, a1
                  blt          a1, a5, 64f
                  ori          s0, s10, 1743
                  bne          a6, t3, 60f
                  add          t4, t2, t2
                  ori          a4, a6, 397
                  bne          tp, s10, 64f
60:               sra          t4, a7, t0
                  lui          s8, 353923
                  auipc        a3, 208538
                  ori          tp, a6, -60
64:               add          s4, s10, a0
                  sra          s0, s4, tp
                  xori         s2, sp, 1765
                  ori          s0, a2, 541
                  addi         s5, zero, 2 #init loop 1 counter
                  sltiu        ra, s11, -1361
                  addi         t1, zero, -15 #init loop 1 limit
                  nop
sub_2_4_1_t:      ori          a1, a4, 802
                  sub          a3, a6, tp
                  addi         s5, s5, -5 #update loop 1 counter
                  addi         t0, zero, 8 #init loop 0 counter
                  sra          a7, s3, s11
                  srai         a6, a2, 26
                  srai         t3, s2, 26
                  addi         a2, zero, 3 #init loop 0 limit
                  srli         zero, a4, 9
                  ori          t3, s7, -371
                  slti         a1, a0, 632
                  andi         a4, a5, -1607
sub_2_4_0_t:      ori          s10, a1, 1990
                  xor          gp, ra, t0
                  ori          tp, s3, 56
                  or           s1, t6, tp
                  addi         t0, t0, -1 #update loop 0 counter
                  bgeu         t0, a2, sub_2_4_0_t #branch for loop 0
                  addi         s0, s3, -1195
                  slt          ra, t4, tp
                  lui          s11, 75915
                  sub          ra, a1, s9
                  srli         sp, s11, 3
                  auipc        s3, 859944
                  bge          s5, t1, sub_2_4_1_t #branch for loop 1
                  addi         s9, s4, 64
                  lui          ra, 439898
                  bge          s11, s8, 82f
                  srl          sp, tp, a5
                  nop
                  add          t1, s10, s9
                  slli         a7, s10, 6
                  sltiu        a4, a3, 791
                  and          s10, a3, a5
                  or           a4, t1, ra
                  sub          gp, s9, t2
                  beq          t6, s10, 89f
                  srl          a1, s6, a6
                  beq          s7, a0, 88f
                  or           t0, t0, gp
82:               slti         a1, a7, -599
                  sra          s11, s3, s5
                  sltu         t0, s0, t6
                  auipc        t6, 329017
                  srl          a6, sp, ra
                  or           s8, t0, s10
88:               xori         t1, s2, 1239
89:               slti         t3, a5, 1993
                  andi         s4, a0, 1747
                  and          s10, a4, t3
                  sll          tp, sp, t2
                  sll          a6, s9, t6
                  ori          a2, t1, -1090
                  and          a4, s10, s5
                  ori          s10, s4, 975
                  lui          s9, 1038272
                  srl          s9, zero, s2
                  addi         s1, a5, 355
                  sub          a1, tp, t5
                  ori          a1, a3, -1663
                  sub          a6, s8, gp
                  bgeu         ra, s11, 117f
                  andi         t0, tp, -2020
                  ori          a0, a2, -1153
                  sub          s6, s11, s0
                  sll          t3, s8, s6
                  xori         a2, a7, -1396
                  or           t0, a4, a5
                  srli         a0, a4, 27
                  beq          a4, tp, 127f
                  sltu         s0, t4, t6
                  ori          s3, s10, -1355
                  bgeu         ra, tp, 121f
                  add          s11, gp, sp
                  bgeu         s4, gp, 129f
117:              srai         s2, s0, 7
                  srli         s4, a1, 28
                  sll          zero, s10, s6
                  slti         t3, s0, 1005
121:              ori          a3, a4, -941
                  ori          sp, tp, 1874
                  or           s2, t1, s1
                  bne          t4, s11, 141f
                  sltu         zero, a0, t1
                  srli         s4, s2, 23
127:              beq          sp, s11, 132f
                  bltu         a7, s6, 137f
129:              and          s5, s8, t1
                  blt          t5, s5, 136f
                  bne          a2, a1, 150f
132:              xori         a4, s8, -1859
                  sltiu        s8, tp, -665
                  srl          s1, a6, s3
                  xor          t4, ra, s11
136:              slli         a1, a1, 0
137:              add          ra, tp, s4
                  slti         s8, t3, 1398
                  slt          gp, s1, t4
                  sra          a7, t3, t0
141:              sll          a7, s3, gp
                  andi         a7, t1, -1643
                  add          s11, a4, s6
                  add          s6, t3, sp
                  xor          a1, tp, a1
                  sll          t4, s9, a1
                  blt          a0, a3, 149f
                  add          t4, s9, s4
149:              xor          a1, gp, t1
150:              nop
                  sra          t6, gp, gp
                  bge          a0, s7, 165f
                  or           s4, a1, s4
                  andi         s0, a2, 1666
                  sll          ra, t5, a0
                  add          t4, a4, tp
                  srli         a6, t2, 15
                  and          t6, a0, a0
                  andi         s9, t4, 82
                  xor          s10, t2, s3
                  addi         ra, a0, -256
                  nop
                  xori         t0, t5, -1783
                  bltu         t4, sp, 169f
165:              srl          a5, t2, t5
                  xori         s6, zero, 1740
                  xor          a7, t1, s9
                  bge          a0, t6, 187f
169:              add          a3, s4, s6
                  sll          s6, tp, s7
                  sra          s5, s6, t2
                  andi         t4, tp, 207
                  sltiu        zero, s3, -1272
                  and          sp, a4, s11
                  sltiu        ra, s6, 953
                  lui          a3, 903623
                  srl          t3, a5, a7
                  beq          s10, s8, 182f
                  nop
                  auipc        a7, 1034349
                  xori         s3, s7, 676
182:              slli         t1, s5, 9
                  ori          zero, t1, -1699
                  and          a5, ra, t2
                  slt          a1, a2, sp
                  sll          a7, a6, t6
187:              lui          gp, 544599
                  srli         ra, tp, 26
                  slt          s1, t5, s9
                  sub          t1, a0, t2
                  beq          s11, a4, 202f
                  bgeu         t1, s3, 203f
                  sll          s6, a0, zero
                  nop
                  and          tp, t5, t0
                  sub          a3, t4, t5
                  sll          t1, t1, s4
                  sltiu        s2, a6, 1579
                  andi         a2, s10, -551
                  beq          s2, s11, 219f
                  bgeu         a3, t0, 203f
202:              sltiu        a3, s4, 514
203:              slti         s3, s2, -911
                  xori         s4, a2, -785
                  sltiu        s10, sp, -1631
                  beq          t2, a6, 223f
                  add          a6, a7, t4
                  sra          s1, s1, t4
                  xor          t3, s5, t1
                  addi         tp, a4, -710
                  xori         s5, a5, 593
                  andi         a5, a3, -514
                  ori          t1, s3, -1632
                  andi         a7, a3, -841
                  lui          t3, 542729
                  sltu         t1, s11, s8
                  sll          t0, s6, tp
                  blt          a6, a5, 237f
219:              xori         t6, a7, -624
                  xori         a2, s5, 1687
                  nop
                  sltu         s4, t4, zero
223:              bge          s10, s3, 238f
                  sll          a4, s1, s11
                  andi         gp, a2, -1020
                  or           ra, s11, t2
                  sll          s0, s0, t6
                  sll          s0, t4, ra
                  addi         tp, t5, 951
                  sll          a1, zero, s8
                  sltiu        a1, t2, 1106
                  add          s6, s6, s9
                  xor          s3, s11, s11
                  nop
                  sub          gp, s4, t0
                  srai         a3, t2, 4
237:              or           t6, t5, s2
238:              slli         s2, s11, 12
                  bge          t5, t1, 248f
                  lui          a7, 730747
                  auipc        zero, 69671
                  or           s11, t0, zero
                  andi         t1, s6, -896
                  bge          s5, zero, 254f
                  ori          sp, a6, -313
                  bgeu         a1, s10, 264f
                  and          t1, t0, t2
248:              sltu         s3, a3, s9
                  xori         a5, a6, -1437
                  bgeu         gp, tp, 264f
                  srai         a0, sp, 27
                  ori          s4, s11, -1197
                  srl          a1, t1, a1
254:              xor          t1, t1, s8
                  srli         s10, s2, 5
                  blt          s1, t0, 269f
                  addi         s2, s6, -462
                  bge          s2, a0, 265f
                  srli         a2, gp, 21
                  addi         a2, s5, -1387
                  lui          t3, 39220
                  or           s8, sp, t4
                  lui          s10, 674729
264:              slli         a2, a5, 0
265:              ori          s6, a4, 731
                  bgeu         s4, t3, 283f
                  blt          t4, s2, 280f
                  sra          tp, tp, tp
269:              slti         tp, tp, 744
                  srai         s8, gp, 14
                  sltu         tp, a3, t6
                  auipc        sp, 319411
                  blt          s10, a5, 274f
274:              bge          s5, t4, 279f
                  lui          s0, 17195
                  beq          s11, s3, 292f
                  andi         a2, s0, -1576
                  srl          t1, s5, s5
279:              sltu         t6, t0, ra
280:              add          a7, s11, s10
                  slt          a4, s0, t6
                  blt          zero, a0, 290f
283:              blt          sp, s5, 289f
                  bne          s4, s2, 289f
                  addi         a2, s4, -1880
                  ori          s2, s11, 1620
                  xori         a4, gp, 587
                  bne          a1, s2, 301f
289:              xori         s3, s9, 1179
290:              sll          t1, t3, s0
                  sra          s0, a5, s11
292:              slli         a0, s3, 24
                  bltu         t1, ra, 294f
294:              xor          t4, a5, s7
                  blt          sp, a0, 314f
                  xor          a2, s11, s2
                  xori         s2, t1, -1666
                  bge          s2, a5, 303f
                  sub          s10, a2, t1
                  and          t4, s5, s6
301:              sra          gp, s11, a4
                  slt          sp, t2, s6
303:              xori         t6, s3, -163
                  sub          a6, s2, sp
                  srli         a3, s6, 11
                  sltiu        s4, s8, -1652
                  slti         tp, s2, -1902
                  sra          s9, s9, gp
                  slti         a5, ra, -981
                  bne          s4, a4, 317f
                  xor          a0, s3, a2
                  andi         t3, s1, 1484
                  sub          zero, s2, t4
314:              bgeu         s2, a6, 321f
                  lui          a1, 792467
                  sra          a4, s8, a7
317:              sltiu        t3, t4, -154
                  andi         s1, s0, -1853
                  slt          s1, t3, s2
                  slti         a1, zero, 1531
321:              andi         s11, a7, -1403
                  xori         sp, s11, -1538
                  addi         t0, s5, -329
                  nop
                  addi         t6, s8, 1987
                  srl          t3, s8, t4
                  nop
                  sra          a6, a7, t2
                  blt          s6, tp, 334f
                  srai         s6, tp, 2
                  blt          gp, t4, 351f
                  sub          t1, s3, t4
                  slti         gp, a3, -677
334:              bgeu         a2, t4, 352f
                  srai         t6, t2, 12
                  ori          a3, s8, -625
                  bgeu         tp, t4, 356f
                  nop
                  beq          tp, s1, 349f
                  andi         s9, s9, 1539
                  add          ra, a2, t5
                  and          t1, a2, s10
                  bge          t6, a6, 356f
                  bgeu         a1, t6, 350f
                  bgeu         a2, a2, 350f
                  auipc        a7, 769105
                  blt          t1, s9, 363f
                  srai         s2, s10, 8
349:              xori         t6, t1, 171
350:              bge          sp, t5, 365f
351:              add          a6, t1, t1
352:              bgeu         ra, s5, 367f
                  beq          t1, s1, 354f
354:              bne          a6, a4, 362f
                  srli         t0, a2, 12
356:              bge          a2, s4, 363f
                  bge          a0, s10, 362f
                  andi         s1, s5, -1003
                  sltiu        s6, tp, -1120
                  auipc        a2, 87820
                  bge          s3, a6, 366f
362:              xori         a2, s6, -13
363:              srai         s8, s7, 4
                  xor          s2, tp, s0
365:              bltu         s10, s9, 367f
366:              xor          s8, s3, t2
367:              and          s2, a7, sp
                  lw           s3, 4(t5)
                  slli         s1, t4, 8
                  nop
                  sltiu        s10, s8, 964
                  srli         t0, t2, 7
                  addi         t5, t5, 20
                  slti         s4, t1, 209
511:              addi x13, x19, 1
511:              jalr x13, x13, 0
sub_1:            srli         s0, s7, 15
                  ori          zero, s7, 1701
                  addi         t5, t5, -8
                  ori          s8, s1, 465
                  sw           s3, 4(t5)
                  sub          s9, zero, a2
                  sra          a1, a7, s11
                  xori         a7, a7, -786
                  nop
                  la           s9, sub_5
                  sltu         s8, t4, t3
                  addi         s9, s9, -883
                  bgeu         s0, s11, sub_1_j5 #branch to jump instr
                  sltu         s6, a2, t6
sub_1_j5:         jalr         s3, s9, 883 #jump sub_1 -> sub_5
                  srli         sp, s4, 13
                  srl          a6, s2, a1
                  slti         s1, s11, 2043
                  srl          s10, s2, s8
                  bltu         t4, s8, 8f
                  beq          t2, a6, 8f
                  sltiu        s1, t6, 1198
                  auipc        sp, 971247
8:                xor          t6, s9, a6
                  lw           s3, 4(t5)
                  addi         t5, t5, 8
                  xor          a0, s10, sp
                  or           s11, s1, ra
                  sub          a2, a6, a1
                  sltiu        s0, s7, 1122
                  slti         zero, sp, 896
                  andi         s2, s0, 1648
                  xori         a5, a5, -527
33:               addi x9, x19, 1
33:               jalr x9, x9, 0
sub_4:            bgeu         a5, s7, sub_4_stack_p
sub_4_stack_p:    addi         t5, t5, -32
                  xor          s10, a0, s9
                  andi         a4, ra, 1429
                  and          a5, gp, s7
                  slt          s1, a3, a4
                  slt          a5, sp, tp
                  sub          a5, tp, s5
                  sub          sp, tp, t0
                  xor          s8, s0, s5
                  sw           s3, 4(t5)
                  sub          a4, gp, t1
                  addi         s0, zero, -1 #init loop 1 counter
                  add          s10, a2, a4
                  addi         s1, zero, -9 #init loop 1 limit
                  or           tp, t0, ra
sub_4_5_1_t:      xori         t1, s7, -178
                  add          t3, gp, t5
                  addi         s0, s0, -1 #update loop 1 counter
                  addi         a0, zero, 6 #init loop 0 counter
                  addi         s4, zero, 18 #init loop 0 limit
                  auipc        s3, 459153
sub_4_5_0_t:      slt          s5, t1, s10
                  sltu         t0, s3, s8
                  addi         a0, a0, 4 #update loop 0 counter
                  sll          a2, s6, s5
                  sltiu        s10, t0, 1075
                  xor          a6, a2, s0
                  srli         t4, a4, 20
                  srai         t6, s1, 24
                  beq          a0, s4, sub_4_5_0_t #branch for loop 0
                  sll          t4, s0, s11
                  addi         s6, t1, 1241
                  sub          ra, a5, s11
                  bge          s0, s1, sub_4_5_1_t #branch for loop 1
                  add          s10, s3, tp
                  addi         t6, zero, -4 #init loop 0 counter
                  sltu         a6, s2, t4
                  srai         s11, sp, 9
                  addi         sp, zero, 14 #init loop 0 limit
                  nop
                  slt          a3, a7, tp
                  sub          s11, ra, a6
                  slli         a1, t5, 11
sub_4_0_0_t:      slti         a0, a7, 453
                  xor          s0, a6, a0
                  xor          a5, a5, a2
                  sub          s1, t4, sp
                  and          gp, a5, t6
                  srl          a4, s10, s3
                  addi         t6, t6, 6 #update loop 0 counter
                  sra          t0, t6, a7
                  xor          a4, t0, s2
                  sltiu        tp, sp, -2040
                  slt          ra, s4, s6
                  or           t4, t3, gp
                  xor          s5, a4, a0
                  srai         s4, a1, 14
                  ori          s0, t0, 481
                  bne          t6, sp, sub_4_0_0_t #branch for loop 0
                  add          t4, zero, tp
                  addi         s11, zero, -5 #init loop 1 counter
                  addi         s8, zero, -19 #init loop 1 limit
sub_4_2_1_t:      auipc        a4, 951472
                  addi         s11, s11, -7 #update loop 1 counter
                  srl          s4, s6, t1
                  addi         sp, zero, -6 #init loop 0 counter
                  addi         s5, zero, -17 #init loop 0 limit
                  srai         s2, a1, 26
sub_4_2_0_t:      or           a3, a3, s10
                  addi         sp, sp, -1 #update loop 0 counter
                  bne          sp, s5, sub_4_2_0_t #branch for loop 0
                  sltiu        s10, t3, 1105
                  sra          a3, s3, a4
                  andi         a3, sp, -381
                  sltiu        s3, s7, 149
                  bge          s11, s8, sub_4_2_1_t #branch for loop 1
                  slt          a6, t2, a2
                  addi         t1, zero, -3 #init loop 0 counter
                  addi         s11, zero, -15 #init loop 0 limit
sub_4_6_0_t:      addi         s2, s0, -152
                  addi         t1, t1, -2 #update loop 0 counter
                  bge          t1, s11, sub_4_6_0_t #branch for loop 0
                  addi         s9, a3, 539
                  addi         s1, zero, 10 #init loop 1 counter
                  auipc        s8, 27026
                  addi         s11, zero, 0 #init loop 1 limit
sub_4_1_1_t:      and          a2, sp, s1
                  srli         t1, s0, 12
                  lui          s8, 468811
                  addi         s1, s1, -2 #update loop 1 counter
                  auipc        a4, 435256
                  addi         s5, zero, 3 #init loop 0 counter
                  addi         t0, zero, 12 #init loop 0 limit
                  add          ra, t3, s4
                  lui          a2, 169410
sub_4_1_0_t:      auipc        s4, 821497
                  addi         s5, s5, 1 #update loop 0 counter
                  sub          t1, t2, s0
                  bltu         s5, t0, sub_4_1_0_t #branch for loop 0
                  beq          s1, s11, sub_4_1_1_t #branch for loop 1
                  slti         t1, ra, -980
                  addi         tp, zero, -1 #init loop 1 counter
                  slli         s6, a1, 19
                  sra          ra, zero, s11
                  sra          s8, s11, s5
                  sltiu        s5, zero, 1052
                  sll          s0, gp, s2
                  addi         a6, zero, 4 #init loop 1 limit
sub_4_4_1_t:      sltu         s0, s4, a5
                  or           s2, zero, zero
                  xori         a3, s1, 1373
                  lui          s9, 1042355
                  sll          t6, a1, sp
                  xor          s6, s1, s5
                  addi         tp, tp, 1 #update loop 1 counter
                  ori          a2, s0, -329
                  addi         t0, zero, -3 #init loop 0 counter
                  nop
                  addi         a0, zero, -13 #init loop 0 limit
                  xori         s3, a1, 1844
sub_4_4_0_t:      or           t1, gp, s7
                  addi         t0, t0, -10 #update loop 0 counter
                  andi         a5, s11, -237
                  slli         s1, t4, 4
                  beq          t0, a0, sub_4_4_0_t #branch for loop 0
                  sra          a5, tp, s4
                  or           gp, ra, s11
                  srli         s2, s7, 13
                  and          a4, a7, a6
                  sub          gp, s3, a5
                  addi         sp, a4, 1506
                  nop
                  slti         a3, a5, 1827
                  blt          tp, a6, sub_4_4_1_t #branch for loop 1
                  nop
                  addi         a4, zero, -8 #init loop 0 counter
                  slt          s0, s2, s0
                  addi         t6, zero, -17 #init loop 0 limit
                  xor          s9, s3, zero
                  srli         tp, a5, 9
                  sltu         s0, s9, t5
                  nop
                  lui          s4, 796369
                  srli         t4, s1, 1
                  or           s1, t6, t2
                  and          gp, t1, a5
sub_4_3_0_t:      ori          tp, s9, -941
                  slli         a5, s1, 5
                  addi         a4, a4, -3 #update loop 0 counter
                  slli         a2, s9, 29
                  slti         t0, t3, 244
                  srli         s6, s0, 17
                  bne          a4, t6, sub_4_3_0_t #branch for loop 0
                  sll          a0, a1, t2
                  ori          a3, sp, -842
                  addi         t6, s9, 734
                  bne          s1, t0, 8f
                  andi         sp, s8, 453
                  beq          s4, s1, 9f
                  sll          t1, s7, tp
                  bgeu         s4, a2, 11f
                  slti         s4, s11, 1850
8:                bgeu         a3, t2, 15f
9:                sltiu        s5, t0, 879
                  sltu         t1, s7, s7
11:               srli         s10, s7, 31
                  xori         t0, s5, -295
                  slti         s10, a2, 872
                  and          ra, a4, s4
15:               sll          s6, s0, s2
                  addi         a3, s8, -190
                  slli         s11, a1, 20
                  bge          t5, a3, 29f
                  andi         s11, tp, -1808
                  ori          a2, t0, 1207
                  sra          s5, a7, a2
                  srai         a5, a2, 24
                  srl          a5, s1, s6
                  bne          t5, t1, 32f
                  or           s1, s6, s11
                  beq          t1, tp, 31f
                  nop
                  srai         ra, t4, 27
29:               nop
                  slli         s11, t0, 27
31:               sltiu        a7, s3, -546
32:               srai         t6, a2, 11
                  bgeu         t6, s1, 36f
                  bltu         sp, s5, 52f
                  srli         t6, s11, 21
36:               slt          t6, s11, a2
                  or           s0, t6, s9
                  bge          gp, a3, 44f
                  slti         sp, a6, 316
                  srai         ra, s6, 9
                  andi         s10, t4, -382
                  sll          gp, a5, t2
                  sltu         s2, s4, a1
44:               slli         tp, a7, 6
                  srai         s2, s1, 25
                  xori         a1, t3, -693
                  sltu         a3, t2, t1
                  bge          s11, t6, 68f
                  blt          s3, zero, 53f
                  bge          gp, t4, 59f
                  and          s8, s6, t0
52:               bgeu         t2, s8, 56f
53:               add          s2, t2, t4
                  sltu         t0, s0, a2
                  bge          a1, a2, 58f
56:               bge          s8, s9, 62f
                  srli         s2, s1, 7
58:               slli         s4, s5, 17
59:               bltu         t0, a3, 65f
                  sltu         s1, ra, a1
                  sra          s9, a0, a7
62:               auipc        t4, 115494
                  auipc        a7, 779352
                  and          s0, s0, s11
65:               slli         s3, s9, 17
                  andi         t6, a6, 1683
                  sll          a6, s4, s2
68:               srai         a6, t0, 12
                  nop
                  slt          a3, a2, ra
                  beq          t2, tp, 84f
                  bgeu         t0, a2, 86f
                  nop
                  sltu         s10, a7, s9
                  blt          s4, a3, 76f
76:               srai         t0, t5, 18
                  xor          s5, a7, a0
                  slti         a0, a0, -1009
                  addi         a0, a0, -1877
                  add          t0, a6, sp
                  sltu         a2, a2, gp
                  bne          s7, a0, 101f
                  srai         tp, tp, 27
84:               beq          s0, s2, 96f
                  or           a1, a1, a1
86:               bge          gp, a7, 97f
                  auipc        t6, 861875
                  srl          ra, t4, s10
                  slti         a3, s8, 662
                  srl          a4, a4, a0
                  xor          zero, s7, a1
                  or           zero, s11, a7
                  sra          a3, gp, s10
                  blt          s0, s8, 111f
                  bne          s8, a4, 107f
96:               xori         s2, a4, -1106
97:               srai         sp, a6, 5
                  bltu         s0, s6, 99f
99:               srl          t3, s6, sp
                  ori          a6, a5, -1972
101:              sll          s5, s1, a0
                  ori          a2, a5, 646
                  sra          ra, t5, t3
                  xori         s6, a1, 883
                  xori         t4, a3, 1859
                  bltu         gp, ra, 114f
107:              blt          a5, s0, 112f
                  sll          s2, tp, a3
                  nop
                  and          t0, gp, s1
111:              ori          t3, s10, -384
112:              beq          zero, a2, 128f
                  sltu         s2, t0, s2
114:              srli         a2, zero, 29
                  addi         sp, t0, -2015
                  and          s9, s9, a7
                  add          s4, s3, a2
                  addi         s4, s3, -1840
                  slti         s6, t3, 1866
                  xor          s8, a4, t4
                  slli         s8, s4, 12
                  ori          a7, zero, -951
                  srli         s11, s10, 8
                  bgeu         s7, zero, 139f
                  sra          a2, s11, t1
                  slti         a3, t0, -1478
                  blt          tp, s6, 131f
128:              xori         s5, gp, 569
                  xori         a4, t5, -1228
                  auipc        t3, 1004071
131:              srai         ra, s1, 21
                  bltu         t3, tp, 147f
                  xori         s8, t3, -530
                  or           a7, s2, s11
                  bgeu         s6, a7, 154f
                  beq          s0, s7, 145f
                  srl          a2, s11, a3
                  bltu         zero, t1, 151f
139:              ori          s1, s3, -125
                  srli         t1, t4, 21
                  add          t4, sp, a6
                  beq          s11, s3, 150f
                  ori          s6, s7, -1787
                  slti         t4, s10, -549
145:              slti         tp, s8, 721
                  bge          s0, sp, 150f
147:              sltu         a6, s0, s4
                  bge          s11, a2, 159f
                  srli         tp, a1, 3
150:              sltiu        a2, a7, -1215
151:              nop
                  slli         s6, s8, 5
                  blt          s8, s5, 156f
154:              bltu         s3, s0, 162f
                  or           a6, t1, s9
156:              sra          s3, a6, t0
                  sltiu        a3, s3, -1960
                  ori          s3, t1, 1628
159:              srli         s1, t1, 14
                  srl          sp, s7, gp
                  sltiu        sp, s7, -56
162:              nop
                  xor          a6, s0, s1
                  slli         a3, a5, 24
                  ori          zero, s2, 848
                  xori         ra, s11, 1178
                  andi         a2, s2, -1826
                  srl          sp, a5, tp
                  sltu         s2, s10, a1
                  xor          a4, t2, s8
                  sub          s9, t1, s11
                  add          zero, sp, t1
                  srai         s10, a4, 1
                  xor          t1, ra, s0
                  bltu         s4, ra, 193f
                  xori         t1, ra, -1467
                  bne          a2, t3, 188f
                  srl          s1, t6, a7
                  slli         a2, t1, 29
                  add          t3, s3, t2
                  addi         a6, s7, 392
                  sltu         a0, s3, a0
                  sra          zero, a0, t2
                  slti         t3, a5, -1374
                  auipc        s0, 636614
                  xor          sp, sp, s7
                  beq          s1, t5, 188f
188:              ori          s1, a2, 113
                  sub          a4, s1, a2
                  add          zero, t6, s4
                  sra          s2, t5, s7
                  srl          t4, gp, s3
193:              and          zero, t4, t5
                  blt          ra, a2, 200f
                  srai         a6, gp, 11
                  srli         gp, ra, 6
                  sll          a6, s0, s11
                  bne          t2, s4, 210f
                  blt          a6, t0, 202f
200:              andi         t3, a7, -1046
                  andi         t6, t1, 1022
202:              blt          zero, s11, 207f
                  sra          t1, a3, t2
                  sub          t1, a6, s2
                  sra          ra, t1, a7
                  slli         a6, s11, 29
207:              bgeu         a6, s3, 212f
                  srl          s8, a4, gp
                  sltiu        a0, t5, -1908
210:              sll          a4, t3, a6
                  ori          s4, a3, 864
212:              sltiu        s2, a0, 1821
                  xori         sp, s4, -1581
                  and          a5, tp, t2
                  sub          a5, s4, a4
                  xor          s6, zero, s10
                  bgeu         s6, a5, 237f
                  auipc        a2, 412711
                  lui          s2, 746230
                  srl          t1, a2, s9
                  slt          s2, s9, s11
                  srai         s5, s6, 6
                  add          t1, t6, s6
                  blt          t3, s3, 240f
                  add          s6, s0, t5
                  slti         s4, a4, -1290
                  beq          s7, a2, 234f
                  ori          t6, s8, 225
                  sra          t1, a3, t1
                  sub          s8, gp, a7
                  xori         a6, a2, 1217
                  sltiu        gp, s3, -646
                  bgeu         t1, a6, 234f
234:              sll          s4, t1, t0
                  addi         s0, s6, -1739
                  slti         a5, s2, -1286
237:              and          ra, s0, a6
                  nop
                  addi         s4, s10, -1895
240:              nop
                  add          s2, t4, zero
                  sub          sp, a4, a1
                  sltiu        ra, s7, 980
                  addi         a0, t6, 1176
                  xori         a7, t1, 1390
                  slli         t0, s8, 16
                  or           a6, s5, t6
                  slti         s8, ra, 946
                  slli         a1, s11, 21
                  addi         a1, t4, 1530
                  srli         s1, s1, 24
                  bgeu         a6, s3, 257f
                  srli         s6, t2, 22
                  ori          s11, s1, 1410
                  auipc        zero, 361150
                  andi         s8, tp, -465
257:              auipc        a2, 597312
                  sltu         tp, s11, a6
                  sltu         t1, gp, a2
                  and          a7, s7, s7
                  ori          a3, s1, -1115
                  blt          s1, t2, 268f
                  xori         zero, t2, 1367
                  bne          s6, t4, 270f
                  lui          s4, 979538
                  sltiu        s1, s5, -237
                  slli         s4, s6, 0
268:              xor          tp, a1, s0
                  bge          ra, zero, 274f
270:              bltu         tp, s5, 287f
                  and          a6, t5, s11
                  bgeu         s0, tp, 286f
                  sltiu        ra, a7, 1799
274:              ori          s3, s1, -591
                  nop
                  xori         s4, s7, -1768
                  nop
                  addi         ra, s8, 1066
                  srl          t0, s5, t6
                  xor          s4, a7, t0
                  blt          gp, a3, 293f
                  addi         s11, t6, -364
                  and          a6, tp, t2
                  srl          t4, a0, t2
                  nop
286:              xori         t4, a6, 1629
287:              slli         s4, a4, 20
                  bne          zero, t0, 294f
                  xor          a1, zero, a0
                  bgeu         t6, s7, 293f
                  sltu         a5, t6, s6
                  andi         a7, sp, 1890
293:              andi         t1, zero, -1535
294:              beq          s5, s10, 298f
                  xor          s1, s11, s11
                  blt          gp, s0, 302f
                  bltu         a2, s11, 306f
298:              slti         a1, s8, -554
                  xor          tp, tp, a3
                  lui          t1, 135677
                  andi         zero, zero, 1993
302:              xor          t3, a7, t3
                  slli         tp, a0, 28
                  bge          a0, s11, 316f
                  auipc        s5, 486183
306:              andi         a0, a3, -1033
                  srli         s3, a0, 12
                  slti         t6, ra, -2014
                  blt          t4, s2, 325f
                  bne          t5, s10, 317f
                  and          tp, t3, s9
                  ori          s11, a5, -1713
                  beq          s11, sp, 328f
                  srli         tp, gp, 21
                  sra          zero, s5, t6
316:              andi         a3, t0, -964
317:              bgeu         sp, s7, 325f
                  auipc        a0, 838853
                  sltu         a7, tp, t0
                  nop
                  slli         a6, a3, 21
                  ori          sp, t6, 403
                  sll          s6, a5, a4
                  and          a0, a1, a7
325:              or           s8, tp, a1
                  add          s0, a2, t5
                  auipc        s5, 465828
328:              sltiu        a0, s9, -1346
                  sra          a5, a0, s11
                  slti         t4, a6, -597
                  slti         gp, a0, -49
                  blt          a6, s4, 351f
                  sra          a4, a3, a4
                  slti         zero, t0, 779
                  lui          s3, 608633
                  and          tp, s10, s3
                  ori          a6, zero, 397
                  srai         a2, a3, 21
                  xor          s5, a6, a6
                  or           a3, zero, t6
                  bgeu         s9, s3, 352f
                  lui          a1, 601789
                  addi         s9, a3, -310
                  lui          s0, 1047235
                  srai         a2, s9, 26
                  slt          s10, t1, ra
                  xori         t3, a5, 1840
                  and          s6, t4, s9
                  beq          ra, gp, 357f
                  slli         s8, t5, 26
351:              slt          s11, sp, t3
352:              xor          a6, t5, s4
                  bne          a6, a2, 356f
                  ori          s8, s1, 309
                  bgeu         s2, s0, 357f
356:              add          s9, tp, s3
357:              add          s8, s0, tp
                  slli         s10, a3, 30
                  sra          s10, s9, s0
                  sll          gp, t4, sp
                  slti         s1, s7, 154
                  or           s10, t1, sp
                  lw           s3, 4(t5)
                  or           t1, t4, a6
                  srai         a0, a3, 24
                  addi         t5, t5, 32
                  andi         a5, a2, 1858
                  srli         s4, t0, 27
524:              addi x2, x19, 1
524:              jalr x2, x2, 0
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_2:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_3:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_4:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_5:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_6:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_7:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_8:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_9:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_10:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_11:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_12:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_13:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_14:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_15:
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
                  add x23, x30, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x23, x30, zero
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x10, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x10, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x10, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x10, x21, ecall_handler
                  li x21, 0x1
                  beq x10, x21, instr_fault_handler
                  li x21, 0x5
                  beq x10, x21, load_fault_handler
                  li x21, 0x7
                  beq x10, x21, store_fault_handler
                  li x21, 0xc
                  beq x10, x21, pt_fault_handler
                  li x21, 0xd
                  beq x10, x21, pt_fault_handler
                  li x21, 0xf
                  beq x10, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x30, x23, zero
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
                  add x30, x23, zero
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
                  add x30, x23, zero
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
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x30, x23, zero
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
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x30, x23, zero
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
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x30, x23, zero
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
