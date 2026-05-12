.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x24, kernel_stack_end

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
                  li x0, 0xcbcfdce0
                  li x1, 0x49dae986
                  li x2, 0x3fe16580
                  li x3, 0x80000000
                  li x4, 0x4
                  li x5, 0xb9686712
                  li x6, 0x6ad30866
                  li x7, 0x80000000
                  li x8, 0xd9e6e74f
                  li x9, 0x80000000
                  li x10, 0x3573071e
                  li x11, 0x87dc2e19
                  li x12, 0xa3ac5ccd
                  li x13, 0xf587df33
                  li x14, 0xdd4591e5
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0xf4034240
                  li x18, 0x80000000
                  li x19, 0x0
                  li x21, 0x36545f29
                  li x22, 0x0
                  li x23, 0xfa3aef9f
                  li x25, 0xcacbb13d
                  li x26, 0xf98dbe90
                  li x27, 0xfd180bc4
                  li x28, 0x96c07c35
                  li x29, 0xf78126cf
                  li x30, 0xf655dd38
                  li x31, 0x35b55d23
                  la x20, user_stack_end
main:             and          s0, s1, tp
                  la           ra, sub_1
                  xor          a4, t4, s8
                  sltu         t0, s1, s9
                  addi         ra, ra, -881
                  or           s3, ra, s3
                  bne          s10, s10, main_j2 #branch to jump instr
                  addi         tp, s2, -423
                  srai         zero, t0, 8
                  auipc        a5, 968304
main_j2:          jalr         a3, ra, 882 #jump main -> sub_1
                  slti         ra, s5, -1427
                  la           s0, sub_1
                  addi         s0, s0, -288
                  srai         gp, a6, 5
                  xori         t3, s10, 1116
                  sub          a0, a4, a5
                  sra          sp, tp, a0
                  xor          s1, a7, s11
                  addi         tp, t6, -1153
                  and          a7, a3, s5
                  xori         s9, ra, -182
main_j3:          jalr         a3, s0, 289 #jump main -> sub_1
                  addi         t5, zero, 8 #init loop 0 counter
                  srli         a3, a2, 18
                  srli         ra, s5, 23
                  addi         s9, zero, 13 #init loop 0 limit
                  sll          a6, s10, s7
main_1_0_t:       xori         sp, s8, 8
                  slt          sp, s1, t0
                  andi         s5, gp, -261
                  add          s6, a4, a5
                  addi         t5, t5, 5 #update loop 0 counter
                  addi         a4, a2, -779
                  auipc        a4, 966211
                  sltu         s7, s11, tp
                  srl          t6, t6, s9
                  add          a1, s1, s11
                  and          a1, s9, ra
                  auipc        t0, 546333
                  srli         a1, s4, 17
                  sltiu        s1, t2, 1134
                  slti         sp, a4, -1820
                  slti         s6, s11, -1434
                  lui          a2, 961073
                  beq          t5, s9, main_1_0_t #branch for loop 0
                  xori         a2, s9, -1842
                  addi         t2, zero, 10 #init loop 1 counter
                  addi         a3, zero, 12 #init loop 1 limit
                  sltu         sp, a5, s10
main_0_1_t:       sub          a4, s9, gp
                  addi         t2, t2, 1 #update loop 1 counter
                  sub          t1, s2, s8
                  addi         s0, zero, 9 #init loop 0 counter
                  addi         a7, zero, -9 #init loop 0 limit
                  slli         a6, gp, 11
main_0_0_t:       sltiu        a6, s4, -498
                  addi         s0, s0, -3 #update loop 0 counter
                  ori          a6, s8, 472
                  bne          s0, a7, main_0_0_t #branch for loop 0
                  blt          t2, a3, main_0_1_t #branch for loop 1
                  sub          a4, t0, s9
                  sub          s10, s6, s2
                  sra          s11, s3, s3
                  andi         s3, s0, -1551
                  bltu         t0, t4, 11f
                  bgeu         gp, t3, 11f
                  sra          t3, tp, zero
                  nop
                  xor          a0, s8, a0
                  sra          s5, a2, a3
                  blt          ra, s6, 13f
                  sll          s5, s1, s8
11:               slt          a1, s9, t6
                  bge          s10, t0, 22f
13:               srai         sp, a3, 31
                  sltiu        a3, t1, -983
                  and          a6, s0, t6
                  slti         a6, s9, -1967
                  bgeu         s3, a0, 18f
18:               xori         s6, tp, -1315
                  xor          s5, a6, s6
                  addi         t6, a7, 415
                  sltiu        s0, s2, -939
22:               sub          t6, s9, t5
                  and          t1, a7, a2
                  blt          ra, a7, 26f
                  ori          t3, s2, -1648
26:               sltiu        ra, s6, -556
                  srli         s1, a2, 29
                  and          s11, s5, s5
                  sub          sp, a2, t2
                  srli         ra, s3, 26
                  sll          s2, t4, ra
                  sltiu        s5, s10, -542
                  srai         zero, a6, 13
                  sra          tp, s7, s10
                  nop
                  nop
                  sra          t2, a5, a6
                  ori          t6, a5, -401
                  or           t3, s1, s11
                  andi         t2, a4, 1760
                  sltiu        a0, s5, 771
                  sll          a2, gp, s7
                  srai         t1, s7, 12
                  slt          s11, a1, s6
                  srl          t0, sp, a4
                  lui          tp, 459127
                  nop
                  ori          gp, t5, -1583
                  beq          s0, gp, 62f
                  srli         s10, s7, 6
                  or           a0, tp, s5
                  sltu         t3, a0, s1
                  auipc        s6, 142077
                  ori          a1, a5, -1548
                  sll          s9, tp, t5
                  bge          s8, a5, 68f
                  sltiu        a6, t1, 8
                  bltu         a6, s11, 76f
                  srai         t6, s6, 11
                  sub          s3, s8, a6
                  and          zero, gp, t3
62:               srl          a4, ra, a0
                  bltu         a4, s2, 76f
                  slt          gp, s5, s4
                  sra          a5, t1, s0
                  or           tp, tp, tp
                  beq          sp, t5, 71f
68:               sll          tp, t0, a5
                  sll          s11, s6, tp
                  xori         tp, a1, -379
71:               and          ra, a7, t4
                  auipc        a0, 451093
                  blt          s6, sp, 79f
                  auipc        ra, 514005
                  bge          s9, t4, 85f
76:               slti         tp, a4, -1397
                  addi         s6, zero, -1436
                  bge          tp, a4, 90f
79:               ori          t6, a2, 1141
                  srl          t6, s0, s11
                  sltiu        t6, a1, -741
                  xor          t2, t6, s0
                  ori          t1, t1, -1169
                  sra          t1, s9, tp
85:               andi         zero, s8, 1016
                  slti         tp, t4, -1130
                  srl          t5, s2, t4
                  add          sp, s3, gp
                  addi         t6, a7, 357
90:               srl          s9, s5, s8
                  bge          s6, t4, 109f
                  srai         a6, ra, 26
                  sub          a4, gp, s3
                  andi         a7, gp, -1674
                  xori         t0, ra, -912
                  sll          a0, t3, a2
                  add          s3, tp, s8
                  auipc        s2, 395075
                  slli         t5, a2, 15
                  nop
                  la           ra, sub_2
                  ori          a0, s10, 924
                  nop
                  addi         ra, ra, -681
                  slti         a2, s0, -421
                  sltiu        s10, s6, -1161
main_j1:          jalr         a3, ra, 681 #jump main -> sub_2
                  and          s6, t6, a5
                  ori          a4, t0, 1007
                  or           s5, s7, sp
                  or           s9, s4, s1
                  nop
                  sra          t2, t0, s0
                  or           t6, s9, s7
                  xori         a7, a3, 523
                  andi         s0, ra, 1253
                  xori         a2, s6, -1320
                  srli         a5, a3, 11
                  bltu         zero, a7, 115f
109:              addi         a0, s6, 474
                  srli         t1, a5, 10
                  sltu         s7, t0, s1
                  slti         a7, t5, 607
                  srai         s3, t0, 13
                  or           a5, sp, s6
115:              xori         t2, a1, -1326
                  bgeu         s2, t4, 132f
                  sra          t6, s5, t0
                  blt          t2, s3, 134f
                  beq          a0, tp, 136f
                  sub          a6, a6, a4
                  srli         sp, s7, 13
                  beq          s8, t1, 131f
                  xori         zero, s0, 339
                  slt          a0, zero, t3
                  bgeu         s4, zero, 140f
                  bltu         s2, s6, 139f
                  srl          zero, a6, a7
                  slti         zero, a5, -990
                  ori          t6, s0, 336
                  andi         a0, s1, 1496
131:              andi         t5, a2, -216
132:              lui          a2, 295747
                  andi         s2, s2, 427
134:              bltu         s7, a3, 139f
                  sra          tp, s7, t4
136:              ori          s6, a1, 400
                  add          t5, a2, a2
                  auipc        gp, 178545
139:              or           t5, t3, t1
140:              add          s9, gp, s8
                  ori          t1, t1, 109
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            xor          a6, a0, s1
                  blt          t0, s7, sub_1_stack_p
                  slti         a0, s4, 340
sub_1_stack_p:    addi         s4, s4, -12
                  sw           a3, 4(s4)
                  srai         t5, zero, 30
                  andi         a7, a6, -1659
                  or           zero, a5, s11
                  xori         a2, zero, -152
                  sub          t1, a7, gp
                  and          s9, s9, a6
                  andi         a5, t1, 1417
                  lui          t0, 262643
                  sub          a2, t2, tp
                  srl          gp, s9, tp
                  lui          s1, 553867
                  bltu         t5, a4, sub_1_j4 #branch to jump instr
                  and          a6, s0, s0
sub_1_j4:         jal          a3, sub_3 #jump sub_1 -> sub_3
                  bgeu         sp, a6, 6f
                  sll          s2, a0, tp
                  xor          a7, s3, a5
                  srl          a6, ra, s2
                  sltu         zero, t0, s7
                  andi         t1, gp, -4
6:                andi         t6, s11, 1256
                  sll          s2, sp, zero
                  sltiu        sp, a1, 398
                  srli         s7, s6, 2
                  slli         a6, a0, 26
                  beq          s7, s11, 12f
12:               srai         t3, sp, 5
                  lw           a3, 4(s4)
                  sll          t2, s11, s3
                  or           s9, t4, t0
                  add          tp, s1, s2
                  addi         s4, s4, 12
                  srai         s11, gp, 1
                  lui          s0, 283300
39:               addi x19, x13, 1
39:               jalr x19, x19, 0
sub_3:            addi         s4, s4, -64
                  srli         tp, ra, 7
                  sw           a3, 4(s4)
                  sra          t6, s0, a2
                  slt          s1, s3, a6
                  sll          a1, t0, s7
                  xori         sp, a1, -1033
                  la           gp, sub_5
                  andi         s2, a0, -872
                  xor          ra, t4, s1
                  ori          a0, s4, -1236
                  addi         gp, gp, -362
                  xori         s11, s6, -1293
                  slti         s11, s2, -149
                  sub          a2, t0, a7
                  lui          s3, 774982
                  beq          s3, gp, sub_3_j6 #branch to jump instr
                  add          s9, a6, t0
sub_3_j6:         jalr         a3, gp, 362 #jump sub_3 -> sub_5
                  la           t5, sub_5
                  addi         sp, s4, 1462
                  ori          t2, t6, 1118
                  slt          s9, t4, s0
                  slti         gp, s5, 156
                  sll          s1, s1, a5
                  andi         t6, t5, 929
                  addi         t5, t5, 337
                  xori         t3, a2, -648
                  blt          t3, t1, sub_3_j7 #branch to jump instr
                  add          tp, a7, gp
                  slti         zero, a2, 1299
sub_3_j7:         jalr         a3, t5, -336 #jump sub_3 -> sub_5
                  addi         s11, zero, -6 #init loop 0 counter
                  slti         a7, tp, 361
                  add          a6, zero, t2
                  or           s9, zero, a4
                  andi         t2, t1, -438
                  xor          s3, tp, a7
                  slli         a7, a4, 22
                  addi         sp, zero, -17 #init loop 0 limit
                  slti         t3, t6, 1940
                  srl          s3, gp, s8
sub_3_0_0_t:      xori         s6, s11, 1058
                  srli         a6, t2, 13
                  add          s1, a4, t4
                  add          zero, s10, sp
                  sub          s1, s2, tp
                  slti         t1, t0, 1606
                  addi         s11, s11, -7 #update loop 0 counter
                  sll          zero, t1, t5
                  slt          t2, s8, s5
                  slt          a3, s4, a0
                  srli         a1, s4, 18
                  bge          s11, sp, sub_3_0_0_t #branch for loop 0
                  or           tp, tp, a6
                  and          a6, a5, s2
                  ori          a3, a0, -1645
                  or           a5, t0, tp
                  xor          a6, s0, s1
                  srli         a2, s2, 18
                  or           a4, s11, s3
                  lui          a4, 322697
                  lui          s3, 723102
                  slli         t0, t6, 16
                  bltu         a3, s6, 15f
                  xor          s3, a5, a4
                  slt          s7, s1, s9
                  add          a7, a0, s9
                  or           s0, t2, a3
                  xor          s7, gp, s4
15:               srl          a0, sp, t6
                  blt          s9, gp, 26f
                  bne          s8, s0, 25f
                  bne          ra, s6, 25f
                  or           s9, a7, a1
                  srl          s9, t3, s9
                  andi         a2, s3, 91
                  lui          zero, 76656
                  blt          t4, a7, 32f
                  lui          t6, 581314
25:               bge          s7, t1, 38f
26:               bge          a1, t0, 45f
                  addi         s1, s8, 1386
                  add          a2, a3, s10
                  or           s11, t0, a7
                  andi         a4, s2, 595
                  add          a3, t5, a6
32:               srl          t0, s7, s7
                  sub          t5, t4, s2
                  bltu         t2, tp, 37f
                  sra          gp, s3, a5
                  bltu         gp, tp, 45f
37:               xor          a7, a6, tp
38:               sub          a4, s7, t5
                  xori         s7, t6, -201
                  sll          s11, s1, t0
                  sltiu        a6, s0, -603
                  bge          s6, a7, 61f
                  srl          a6, a0, t6
                  xor          s6, s0, t6
45:               sub          s10, s1, s3
                  beq          t1, s2, 48f
                  bgeu         zero, gp, 66f
48:               srli         zero, t0, 17
                  sra          a3, t0, t6
                  bltu         a1, a0, 52f
                  slt          t3, s11, sp
52:               slli         t2, t6, 1
                  bne          a2, tp, 73f
                  bge          s9, a3, 57f
                  xori         a6, s0, -1697
                  slli         zero, s11, 0
57:               xori         s7, sp, 1453
                  andi         t0, s8, 736
                  addi         s9, sp, -1968
                  sll          s1, a1, s9
61:               srl          a0, a6, s7
                  srli         sp, a7, 8
                  andi         gp, sp, 885
                  auipc        s3, 422386
                  lui          s9, 798484
66:               blt          s10, t5, 75f
                  andi         ra, t2, -1568
                  auipc        s6, 47723
                  bgeu         s11, ra, 70f
70:               or           s1, s2, a5
                  bne          s11, s4, 75f
                  slli         ra, t0, 16
73:               ori          a5, a4, -336
                  add          s1, a5, a3
75:               auipc        zero, 1016320
                  auipc        s3, 479756
                  slti         s6, a2, 321
                  slti         t5, ra, -1252
                  lw           a3, 4(s4)
                  addi         s4, s4, 64
                  sll          a5, t0, t4
                  ori          a6, gp, 1844
                  slli         gp, a4, 9
                  ori          t3, s11, -790
                  srli         s2, ra, 17
                  nop
                  addi         a0, ra, -1117
143:              addi x2, x13, 0
143:              jalr x2, x2, 0
sub_2:            bne          a3, a0, sub_2_stack_p
sub_2_stack_p:    addi         s4, s4, -48
                  sra          a1, s5, s0
                  sw           a3, 4(s4)
                  srli         a5, a3, 18
                  or           t0, a7, t3
                  addi         t2, zero, 1 #init loop 1 counter
                  xori         a6, s2, -1359
                  xori         gp, s4, 1362
                  auipc        s5, 201915
                  nop
                  sub          a0, t0, a6
                  xor          tp, s4, t6
                  sltu         a2, t2, s3
                  addi         a5, zero, -8 #init loop 1 limit
sub_2_1_1_t:      slti         gp, s11, -1878
                  sll          ra, a0, s5
                  addi         t2, t2, -1 #update loop 1 counter
                  srai         a4, gp, 17
                  and          s6, t6, a6
                  addi         s1, zero, 10 #init loop 0 counter
                  addi         a7, zero, 9 #init loop 0 limit
sub_2_1_0_t:      sub          sp, s2, a4
                  srl          t0, tp, s10
                  slt          s6, s7, a1
                  addi         s1, s1, -7 #update loop 0 counter
                  bgeu         s1, a7, sub_2_1_0_t #branch for loop 0
                  lui          a6, 188856
                  xori         s2, a1, 1603
                  bge          t2, a5, sub_2_1_1_t #branch for loop 1
                  srli         s10, t5, 18
                  addi         t5, zero, -2 #init loop 0 counter
                  sub          a3, s4, s3
                  addi         t1, zero, 12 #init loop 0 limit
                  srl          s6, t2, s2
                  sll          ra, t6, a7
sub_2_6_0_t:      slt          s5, a7, s10
                  addi         t5, t5, 9 #update loop 0 counter
                  blt          t5, t1, sub_2_6_0_t #branch for loop 0
                  auipc        a6, 617029
                  addi         s3, zero, 5 #init loop 0 counter
                  nop
                  sub          zero, s4, s2
                  ori          s6, ra, -1376
                  sll          t2, s1, s0
                  sra          s11, s5, s9
                  xori         s5, gp, 1767
                  srli         a1, s2, 21
                  sll          s5, s8, a7
                  sra          gp, t0, s11
                  srli         t0, s11, 12
                  and          t6, tp, a4
                  nop
                  auipc        ra, 525960
                  xori         s9, a3, 334
                  xori         t2, t3, -1664
                  addi         a7, zero, -10 #init loop 0 limit
sub_2_9_0_t:      nop
                  slt          a2, a3, s3
                  slt          zero, tp, tp
                  addi         s3, s3, -3 #update loop 0 counter
                  auipc        s9, 726193
                  and          s2, a2, s7
                  addi         t1, s1, 833
                  srli         gp, a1, 24
                  beq          s3, a7, sub_2_9_0_t #branch for loop 0
                  srai         ra, sp, 15
                  addi         t0, zero, 6 #init loop 0 counter
                  and          ra, s6, zero
                  srai         sp, a6, 16
                  addi         s2, zero, -13 #init loop 0 limit
                  slt          ra, s5, sp
sub_2_8_0_t:      andi         zero, s9, -989
                  ori          s11, t4, -169
                  addi         t0, t0, -1 #update loop 0 counter
                  beq          t0, s2, sub_2_8_0_t #branch for loop 0
                  sltu         ra, a4, sp
                  addi         a1, zero, -9 #init loop 0 counter
                  addi         t0, t5, 1237
                  ori          s1, s5, 1144
                  slti         a5, s5, -1719
                  sltu         gp, t0, a0
                  sltu         a5, s6, s5
                  lui          s9, 649368
                  addi         a5, a2, 1590
                  auipc        s11, 850497
                  sub          s2, t0, a7
                  sltu         a3, t0, s6
                  sltu         s6, zero, t5
                  addi         s9, t5, -1246
                  addi         t2, zero, -18 #init loop 0 limit
                  sltiu        ra, t3, 287
                  slt          s7, t6, a0
sub_2_0_0_t:      add          t3, s0, zero
                  addi         a1, a1, -3 #update loop 0 counter
                  add          ra, zero, gp
                  sll          s9, zero, t3
                  sub          s11, ra, s9
                  bne          a1, t2, sub_2_0_0_t #branch for loop 0
                  sub          a4, s3, a6
                  addi         s0, zero, 3 #init loop 0 counter
                  sll          s10, s2, t1
                  srai         a5, t0, 30
                  nop
                  slt          a0, a3, a5
                  sltu         t0, s8, t3
                  sra          s6, t4, s6
                  srli         s5, t0, 23
                  slt          a7, s4, a1
                  ori          s10, t0, -365
                  xori         sp, s1, 652
                  addi         gp, gp, -1382
                  slti         s9, t5, -533
                  srli         a4, s10, 31
                  andi         s7, a6, -200
                  slti         s10, t0, -1526
                  addi         s3, zero, 4 #init loop 0 limit
sub_2_7_0_t:      andi         t6, t3, -1369
                  or           sp, a1, s9
                  srai         t3, gp, 22
                  addi         s0, s0, 4 #update loop 0 counter
                  sub          s7, zero, ra
                  srai         s6, t4, 6
                  srli         a4, t2, 4
                  xor          tp, a1, tp
                  slti         a1, s8, -914
                  or           sp, t1, s5
                  slti         s7, sp, -1652
                  bltu         s0, s3, sub_2_7_0_t #branch for loop 0
                  slti         a1, s11, 1179
                  addi         t0, zero, -6 #init loop 1 counter
                  addi         s3, zero, -1 #init loop 1 limit
                  sra          s9, s6, t3
                  xori         s9, t2, 570
                  slti         a5, a2, 842
                  add          s10, s10, s1
                  slt          t2, gp, s0
sub_2_5_1_t:      sub          s2, a3, gp
                  sltu         t5, a5, a4
                  nop
                  addi         t0, t0, 6 #update loop 1 counter
                  addi         gp, t2, -300
                  addi         a1, zero, 2 #init loop 0 counter
                  nop
                  ori          a0, t3, 382
                  addi         s5, zero, 18 #init loop 0 limit
                  srl          t1, t2, s1
sub_2_5_0_t:      nop
                  addi         a1, a1, 3 #update loop 0 counter
                  sltu         s6, a7, s1
                  sra          t6, s1, t0
                  bltu         a1, s5, sub_2_5_0_t #branch for loop 0
                  nop
                  or           s2, s6, s7
                  ori          t5, t0, -42
                  sltu         a3, t5, a7
                  blt          t0, s3, sub_2_5_1_t #branch for loop 1
                  sra          s11, s0, tp
                  addi         s11, zero, -7 #init loop 0 counter
                  addi         a5, ra, -444
                  addi         a0, zero, -13 #init loop 0 limit
                  andi         a4, a6, 1132
sub_2_4_0_t:      add          a4, a1, s3
                  srli         s6, t0, 5
                  nop
                  nop
                  lui          s10, 811380
                  sll          s0, gp, a3
                  xori         sp, t4, 1369
                  lui          sp, 953668
                  addi         s11, s11, -3 #update loop 0 counter
                  ori          t0, t3, -366
                  xori         a5, s1, -1235
                  xor          t0, s10, s8
                  slli         t6, s9, 8
                  srl          s3, a4, s5
                  lui          s7, 247129
                  auipc        sp, 770555
                  bge          s11, a0, sub_2_4_0_t #branch for loop 0
                  sltu         s6, t5, s8
                  lui          s10, 293661
                  lui          s6, 805480
                  sltiu        a3, a6, 458
                  blt          t6, s7, 16f
                  slli         s11, a1, 10
                  addi         s0, s8, 1704
                  andi         a6, s8, 236
                  nop
                  lui          s1, 23713
                  srl          a5, a5, a0
                  ori          a3, s4, 1492
                  sltiu        sp, s6, -873
                  blt          s8, s11, 28f
                  srli         s11, a7, 0
                  and          a5, t1, s1
                  bltu         s9, t0, 34f
16:               xor          s10, s1, a2
                  sub          s5, t5, a2
                  ori          t2, sp, -1242
                  sltu         sp, tp, a5
                  andi         gp, s10, 1940
                  auipc        zero, 634332
                  sltiu        a3, tp, -495
                  srl          t5, zero, a7
                  ori          a6, a1, -1118
                  bge          s10, s6, 30f
                  or           s10, a7, s9
                  nop
28:               sll          t6, tp, s1
                  sra          s6, s6, a5
30:               srli         tp, a2, 6
                  sra          s3, t2, t3
                  srl          a0, t6, s10
                  sra          s6, s11, t6
34:               srl          s11, tp, s1
                  lui          zero, 663383
                  addi         gp, t4, -1155
                  andi         a7, a3, 347
                  ori          s5, a4, 275
                  bgeu         t4, gp, 53f
                  blt          a2, s1, 51f
                  slli         a2, s0, 25
                  ori          t5, zero, -1979
                  andi         a0, a2, 1770
                  blt          a3, s2, 63f
                  bne          sp, s6, 61f
                  sltu         s1, a7, gp
                  xori         a6, zero, 1515
                  andi         s1, s5, 103
                  addi         s0, sp, -1838
                  addi         s7, a0, -1066
51:               srl          s7, t4, s9
                  srai         t3, t2, 19
53:               nop
                  sltu         t3, a5, a7
                  sltiu        a0, a6, 1814
                  add          t6, zero, sp
                  beq          s11, a0, 71f
                  bne          s5, t5, 71f
                  sll          a7, s10, ra
                  srl          s10, a1, s6
61:               srai         ra, a5, 0
                  auipc        s5, 433055
63:               sub          a0, gp, a1
                  add          a6, s10, s7
                  sub          a2, t6, a6
                  slt          gp, t2, s7
                  nop
                  sll          a4, a2, a7
                  slli         a1, s3, 30
                  blt          t1, s8, 76f
71:               bltu         t1, s5, 90f
                  or           t3, a2, a0
                  bgeu         a3, s2, 88f
                  bltu         zero, t4, 78f
                  addi         s9, t2, -1142
76:               bge          t0, zero, 95f
                  or           zero, ra, s6
78:               addi         s6, t3, 301
                  add          ra, s7, s5
                  bltu         t6, a1, 81f
81:               blt          s3, s1, 93f
                  sra          tp, a5, s3
                  ori          a3, s10, -885
                  bge          s2, s8, 91f
                  addi         t2, tp, 1022
                  auipc        s3, 911838
                  slli         s6, zero, 7
88:               sltiu        a6, s1, -1917
                  bne          a0, a3, 109f
90:               beq          sp, s6, 99f
91:               sltiu        gp, s10, 1661
                  blt          t2, s10, 106f
93:               srai         s9, s8, 4
                  auipc        s3, 510929
95:               srai         t3, s8, 24
                  bltu         t1, sp, 113f
                  or           s9, s10, a2
                  and          a5, a0, t1
99:               slti         a1, tp, 340
                  bne          s5, a3, 106f
                  xori         a0, t4, -902
                  sltu         zero, t0, s3
                  bltu         a3, tp, 104f
104:              sltiu        t2, gp, -39
                  sll          t0, a0, t3
106:              add          s0, s7, t3
                  sltu         a3, t0, a7
                  ori          a7, sp, 807
109:              bge          a5, a3, 117f
                  srl          a0, a4, t3
                  bne          t1, zero, 112f
112:              sra          a2, s3, a6
113:              sltu         s10, s2, a2
                  beq          t1, t0, 123f
                  andi         zero, a5, -1911
                  sltiu        s11, s6, -670
117:              sra          a2, a1, s8
                  xor          s3, s9, ra
                  slli         s1, t6, 26
                  sra          tp, t5, tp
                  slt          a5, t1, a7
                  sll          a5, s3, s2
123:              nop
                  bgeu         zero, s0, 140f
                  sll          a0, a2, s7
                  addi         s5, zero, -8 #init loop 0 counter
                  addi         gp, zero, 7 #init loop 0 limit
                  srai         a3, a0, 11
                  sra          t6, t3, s10
sub_2_3_0_t:      andi         t6, s10, -929
                  addi         s5, s5, 9 #update loop 0 counter
                  blt          s5, gp, sub_2_3_0_t #branch for loop 0
                  or           a2, a5, a7
                  auipc        a5, 789897
                  srai         t3, s2, 24
                  sra          s11, s9, s3
                  ori          tp, s8, -1699
                  slti         t1, t5, 1600
                  srl          s0, a5, a7
                  sll          t5, a0, s6
                  blt          s2, a1, 148f
                  bne          t2, t1, 154f
                  addi         t1, t6, -257
                  sll          a3, t3, s7
                  auipc        s2, 461214
                  add          s9, s6, t3
                  bltu         s6, s9, 154f
140:              srl          s1, a2, s3
                  addi         t3, a0, 1820
                  slt          s3, a3, tp
                  sll          a3, a3, t0
                  sll          a2, s10, s6
                  add          a4, s1, ra
                  sltiu        a1, s0, 927
                  sltu         t1, a5, s0
148:              nop
                  sltiu        s6, s11, 270
                  bne          gp, t1, 163f
                  add          t1, s7, a0
                  or           t5, s0, s6
                  slt          s6, tp, t5
154:              andi         s9, gp, -1810
                  nop
                  xor          t5, s8, a5
                  andi         s0, a4, 301
                  xori         a7, s6, 107
                  xor          s1, t0, t6
                  andi         a0, a0, 1008
                  srl          t6, ra, t6
                  sll          s1, a4, s7
163:              bltu         s11, tp, 164f
164:              bge          zero, tp, 183f
                  sra          t5, ra, a3
                  bne          a6, s5, 172f
                  xor          a0, a1, gp
                  slti         ra, s4, -1965
                  ori          s5, t5, -603
                  srli         s3, sp, 27
                  srli         a6, s10, 30
172:              sltu         tp, a3, a6
                  lui          s10, 1048530
                  bgeu         t5, s10, 188f
                  blt          a5, t1, 183f
                  bgeu         tp, t0, 183f
                  xori         s5, tp, -1471
                  auipc        a5, 904392
                  beq          t5, s1, 193f
                  sra          s5, t6, s3
                  slt          t5, s6, s10
                  bgeu         t6, s7, 183f
183:              sltu         a4, t6, s0
                  slti         s3, s9, 858
                  sltu         s6, s6, a0
                  ori          a2, s4, 1526
                  slti         tp, s1, 1391
188:              slli         a4, a4, 1
                  bgeu         s0, t2, 200f
                  blt          s5, zero, 206f
                  add          s11, a2, a4
                  slt          t5, s10, t5
193:              sltu         a6, t5, a1
                  sltu         gp, t1, t5
                  slli         t3, s4, 29
                  srai         s2, a7, 26
                  nop
                  blt          s0, ra, 214f
                  slti         t1, a0, -5
200:              sub          t5, s1, s8
                  sra          t6, a0, s9
                  bltu         t0, s9, 206f
                  bne          t0, s7, 219f
                  andi         s7, sp, -138
                  sub          t2, a7, t5
206:              and          a7, t3, t0
                  slt          t5, ra, sp
                  nop
                  and          gp, s10, s4
                  slli         s0, s8, 23
                  slli         t3, a1, 19
                  bne          s8, s9, 213f
213:              slli         a6, a7, 17
214:              slli         s2, a5, 14
                  sltiu        s9, t5, -866
                  xori         s1, s8, 242
                  srl          ra, t5, s3
                  srai         s3, a0, 18
219:              addi         a0, s4, 452
                  addi         a6, zero, 6 #init loop 0 counter
                  sra          t1, a3, s1
                  addi         t3, zero, 5 #init loop 0 limit
                  srl          tp, t0, s4
                  sub          s1, s7, s9
sub_2_2_0_t:      xori         a2, s10, -1132
                  ori          a3, ra, 1931
                  slli         s3, t3, 17
                  slli         s11, s9, 2
                  addi         a6, a6, -1 #update loop 0 counter
                  xori         t0, t3, 1635
                  auipc        s2, 151544
                  slli         s10, s5, 22
                  add          t1, a0, s10
                  sltu         a5, gp, s11
                  or           s2, a5, ra
                  sub          t2, s2, tp
                  ori          t1, a4, 1147
                  and          a4, s3, s10
                  slli         t5, a3, 4
                  sra          s11, a1, t1
                  xor          s10, s5, tp
                  sra          gp, t5, s3
                  sltiu        s1, a1, -855
                  auipc        t1, 193238
                  sra          tp, a1, a6
                  andi         s9, a6, 352
                  slti         t1, a5, 922
                  bge          a6, t3, sub_2_2_0_t #branch for loop 0
                  srl          a5, s9, s3
                  bne          a5, t0, 229f
                  bge          tp, a3, 235f
                  lui          a5, 393658
                  slli         zero, a0, 18
                  blt          s11, s11, 236f
                  add          t5, s4, t2
                  ori          s6, a6, 505
                  srl          a4, s3, s2
                  srl          a7, t6, ra
229:              add          tp, t5, s3
                  bgeu         t0, s1, 250f
                  nop
                  sra          t6, s11, s9
                  add          s1, s3, zero
                  ori          gp, s11, 2047
235:              slti         t3, s6, 54
236:              xor          a0, t1, a3
                  srl          t1, zero, s1
                  slli         t5, ra, 5
                  bne          s3, tp, 259f
                  sub          a2, s6, s9
                  blt          sp, ra, 246f
                  sltu         s5, s2, sp
                  sltu         zero, s0, s11
                  xor          sp, s6, s5
                  sub          a3, ra, s2
246:              slli         gp, zero, 0
                  blt          s11, a6, 266f
                  blt          t5, sp, 261f
                  andi         tp, s3, -1542
250:              and          t5, tp, t1
                  sra          a7, s0, s8
                  and          s0, zero, t0
                  sll          s2, a3, s4
                  xor          s6, s2, t5
                  bgeu         s2, s7, 261f
                  bne          a6, s7, 275f
                  sra          a3, t3, t0
                  xor          gp, a3, t3
259:              bge          a6, a1, 278f
                  add          s11, s9, t2
261:              sra          s5, s7, a2
                  srai         t2, gp, 30
                  slli         s1, t0, 31
                  xori         a3, s3, -1245
                  ori          gp, s8, 655
266:              add          a1, s0, a7
                  bltu         s5, t0, 276f
                  auipc        t1, 122608
                  slt          s6, s11, a2
                  xori         tp, a2, 187
                  andi         s1, sp, -1423
                  bge          a0, s9, 287f
                  auipc        s0, 356170
                  sltu         s6, t6, s11
275:              bne          a5, s10, 292f
276:              lui          s11, 18724
                  bltu         a6, sp, 296f
278:              sll          s10, ra, s0
                  xori         t3, s1, -902
                  srli         s2, t3, 3
                  slli         s3, tp, 24
                  sub          t1, s5, t6
                  add          a5, t2, s11
                  nop
                  slli         s5, s7, 7
                  srai         t1, sp, 29
287:              auipc        ra, 1022524
                  sll          s3, gp, s2
                  auipc        zero, 655627
                  bge          ra, t6, 298f
                  sll          s6, a7, s7
292:              slli         s2, s5, 30
                  sra          zero, t3, tp
                  bge          sp, t3, 310f
                  and          a7, a7, s10
296:              srai         s3, t0, 14
                  bgeu         t1, t1, 310f
298:              sltiu        s9, a6, 530
                  sltiu        a4, s3, -1282
                  beq          gp, a0, 305f
                  srl          s10, a0, s11
                  sltu         s3, t0, a0
                  ori          a6, s7, -1317
                  bge          gp, a2, 308f
305:              or           ra, t4, t3
                  xor          s0, s11, tp
                  sltu         t2, a0, t5
308:              nop
                  sra          t3, a6, t0
310:              nop
                  sltiu        s2, t3, 1063
                  xor          a2, t4, tp
                  lui          tp, 887607
                  nop
                  sub          s0, a4, t3
                  bne          a3, s7, 330f
                  bgeu         a6, a5, 323f
                  andi         a7, a6, 213
                  bne          a4, zero, 328f
                  beq          a2, t3, 339f
                  srl          t5, ra, a3
                  beq          s1, ra, 323f
323:              lui          t6, 56207
                  srli         a4, t0, 20
                  bltu         s5, t1, 326f
326:              sltiu        t0, s4, -1596
                  sltiu        t6, a3, -1994
328:              srli         a4, s6, 29
                  auipc        t3, 165682
330:              auipc        sp, 716190
                  srai         s11, s10, 13
                  blt          a3, a0, 348f
                  add          s6, a6, t0
                  bne          sp, t0, 350f
                  auipc        sp, 797896
                  slt          t6, tp, a1
                  andi         s0, a3, -754
                  srl          gp, s10, t2
339:              slti         s2, t5, 1544
                  bne          s7, a6, 349f
                  blt          tp, a6, 361f
                  blt          s6, s4, 354f
                  srli         s7, s9, 30
                  xor          a7, t1, s0
                  slt          t1, s10, t6
                  xori         s10, a6, 204
                  bgeu         s2, s3, 361f
348:              or           a6, t1, zero
349:              xor          s7, zero, t1
350:              slt          a7, a1, a2
                  srai         a0, t1, 30
                  nop
                  slt          t0, t5, t5
354:              or           t5, t5, a5
                  slti         a1, a2, -1932
                  sra          t5, a5, s8
                  bgeu         s2, s2, 372f
                  slt          a4, t0, a3
                  andi         ra, zero, 477
                  sltu         s11, ra, t0
361:              srai         s0, ra, 13
                  bltu         t6, s11, 363f
363:              and          zero, s4, a0
                  or           a3, t0, zero
                  sll          t1, s11, t4
                  or           a4, a2, gp
                  slli         t0, a5, 9
                  nop
                  srai         t0, s0, 8
                  add          zero, t3, t5
                  sll          s6, s3, s5
372:              slti         s10, a4, 1925
                  sltu         a4, ra, s10
                  bgeu         t6, ra, 388f
                  andi         zero, a4, 2018
                  andi         s3, s8, -1015
                  xor          t0, s9, a5
                  add          t1, a7, t3
                  sltu         ra, s4, a2
                  ori          s1, a3, -642
                  andi         s6, a0, -25
                  slli         a6, t3, 22
                  sltiu        a6, s2, 955
                  srl          s1, t3, a0
                  slt          t0, s5, gp
                  auipc        a0, 378811
                  slti         a1, t5, -1296
388:              srl          s1, s0, zero
                  bgeu         sp, t0, 402f
                  slt          s2, s3, a3
                  nop
                  lui          a2, 783436
                  ori          a7, t2, 1765
                  blt          a1, tp, 414f
                  auipc        a7, 733002
                  sltu         s7, s2, s8
                  sra          t5, s9, a0
                  bgeu         s4, s7, 409f
                  xori         a6, s4, -1615
                  add          t6, a6, t6
                  sltiu        a6, sp, -1080
402:              bne          a5, s7, 417f
                  slli         t0, sp, 0
                  slli         s3, t6, 3
                  ori          a6, s7, -2011
                  addi         s0, s9, 1962
                  bgeu         t4, s7, 414f
                  blt          ra, t4, 427f
409:              sub          a0, t5, a5
                  lui          ra, 538725
                  andi         t3, s5, 550
                  sra          a3, t3, s11
                  ori          s7, a1, 1629
414:              and          a2, s11, t1
                  sltu         a2, s2, s4
                  bgeu         a3, a3, 435f
417:              sra          a5, a2, sp
                  xori         a2, t0, -43
                  slt          t6, s11, s11
                  slt          s5, t0, s4
                  sra          a3, t6, s0
                  and          a2, s3, a3
                  xori         t6, t6, 377
                  nop
                  blt          t1, t2, 431f
                  srl          s10, t0, s7
427:              srai         a4, t3, 30
                  slli         s5, s8, 22
                  bne          t0, s1, 446f
                  beq          s10, t0, 436f
431:              add          s5, a1, t4
                  srli         a5, a0, 17
                  andi         s11, s9, -1840
                  bge          gp, a7, 440f
435:              sra          a5, tp, t0
436:              srai         s6, s11, 2
                  blt          a7, s11, 456f
                  bge          t6, a2, 457f
                  slt          a5, s10, s10
440:              slt          t1, a7, a2
                  lui          s9, 846317
                  blt          t5, zero, 457f
                  sltu         sp, t4, s5
                  addi         s5, s2, -183
                  blt          s1, t6, 461f
446:              blt          a4, s0, 450f
                  srl          a4, a1, t3
                  slti         t3, t4, -303
                  sll          tp, a1, ra
450:              ori          a7, s2, -958
                  lui          s6, 856615
                  nop
                  blt          s8, t5, 454f
454:              sub          gp, s8, t3
                  add          t5, a0, a3
456:              srli         sp, a7, 15
457:              ori          a4, a2, 298
                  and          t5, s10, s10
                  addi         a5, s4, 1897
                  auipc        s5, 38812
461:              bltu         s5, a5, 481f
                  sltu         a3, s3, tp
                  nop
                  bltu         a2, t6, 480f
                  slt          a0, sp, s11
                  srl          s11, a3, s2
                  sltiu        s2, a3, -1963
                  or           t6, s5, t3
                  slli         s5, a1, 0
                  srl          s3, s9, t6
                  blt          a0, s7, 484f
                  add          a2, s10, a3
                  srli         s7, s7, 15
                  lui          sp, 291648
                  sll          t0, s0, s4
                  xor          t0, tp, t3
                  la           t2, sub_4
                  lui          a4, 404819
                  addi         t2, t2, -980
                  slt          t5, a2, t5
sub_2_j5:         jalr         a3, t2, 981 #jump sub_2 -> sub_4
                  bgeu         s6, zero, 483f
                  blt          sp, a0, 494f
                  bne          s2, ra, 492f
                  blt          a6, s2, 489f
                  sltiu        sp, s0, -1193
                  addi         t5, a3, 1486
480:              addi         t5, s6, 1334
481:              srai         sp, s2, 3
                  bge          a3, s8, 483f
483:              ori          s1, tp, 1497
484:              lui          s2, 858065
                  beq          s5, s0, 496f
                  sra          s3, s7, s9
                  and          a4, s3, t1
                  srai         t1, s4, 9
489:              srai         s5, a5, 13
                  srli         t1, s0, 30
                  bne          s1, s5, 496f
492:              bge          t1, s0, 506f
                  and          s2, zero, a3
494:              srl          a6, zero, s3
                  slt          s11, a4, t4
496:              sll          ra, ra, a4
                  slt          s11, gp, s7
                  sltiu        t2, t1, -1278
                  andi         a2, a0, -528
                  sub          a5, t3, ra
                  sra          t5, tp, s3
                  srli         a3, s1, 7
                  slt          s5, t5, gp
                  blt          a0, s2, 524f
                  auipc        a0, 900037
506:              srl          a7, s11, s9
                  add          ra, a4, a2
                  srai         gp, s6, 18
                  bge          zero, a4, 526f
                  sltu         t5, t5, s3
                  addi         s3, a0, -926
                  bge          gp, sp, 531f
                  andi         zero, ra, 807
                  slt          zero, tp, a3
                  and          s9, t3, t4
                  blt          s10, s3, 524f
                  auipc        s7, 825921
                  srli         s0, s3, 26
                  bne          a4, a6, 532f
                  bne          t4, s2, 521f
521:              beq          s4, s5, 536f
                  slt          t2, a1, zero
                  andi         s5, a7, 1288
524:              bne          a2, t4, 538f
                  bltu         s6, t2, 534f
526:              sll          s11, s9, t2
                  addi         t2, t5, -1734
                  xori         a0, s6, -1118
                  sltu         tp, t1, s10
                  and          t6, sp, a5
531:              bne          t3, gp, 540f
532:              sltu         a2, s6, a3
                  sll          gp, a0, sp
534:              andi         s6, t4, 1479
                  and          s10, t6, s0
536:              add          zero, s2, a7
                  blt          a0, sp, 540f
538:              and          a5, gp, sp
                  andi         zero, s8, 160
540:              slt          a1, a5, s8
                  slli         s7, s11, 26
                  nop
                  and          gp, a2, a1
                  lui          a1, 420397
                  lw           a3, 4(s4)
                  sub          s5, s7, s11
                  addi         s4, s4, 48
                  nop
775:              addi x23, x13, 0
775:              jalr x23, x23, 0
sub_4:            sra          ra, s1, s8
                  slti         s5, s3, 1348
                  addi         s4, s4, -28
                  slt          s11, sp, t5
                  slti         t6, s3, 944
                  sw           a3, 4(s4)
                  and          t2, gp, s8
                  sll          tp, a5, s2
                  lui          t2, 373726
                  xor          zero, s2, zero
                  srli         t5, a0, 19
                  addi         s5, zero, -6 #init loop 1 counter
                  andi         zero, t4, 561
                  add          s1, s3, a5
                  slli         s1, s3, 15
                  sra          s1, t1, a1
                  lui          a1, 212202
                  addi         a3, zero, 12 #init loop 1 limit
                  or           s2, s1, ra
                  slli         t2, t1, 25
                  sltu         gp, s10, s11
                  sltu         sp, tp, t5
                  and          a2, s10, a7
sub_4_10_1_t:     xor          t0, t3, s6
                  slti         zero, a5, -728
                  addi         s5, s5, 8 #update loop 1 counter
                  addi         ra, zero, -5 #init loop 0 counter
                  add          t3, t4, a3
                  addi         s3, zero, 5 #init loop 0 limit
                  srai         a7, gp, 8
                  srai         s2, a3, 18
                  slt          s6, t5, zero
sub_4_10_0_t:     sltiu        tp, ra, -332
                  addi         ra, ra, 10 #update loop 0 counter
                  sra          sp, s5, t2
                  slli         a2, s10, 11
                  bne          ra, s3, sub_4_10_0_t #branch for loop 0
                  sltu         t2, s10, a6
                  blt          s5, a3, sub_4_10_1_t #branch for loop 1
                  ori          tp, tp, 999
                  addi         t3, zero, 3 #init loop 0 counter
                  lui          t6, 1021762
                  add          a1, t1, a3
                  sll          gp, s8, s2
                  slt          t5, s4, a6
                  auipc        t1, 36265
                  sltu         a7, a0, s5
                  xori         a0, s0, 949
                  addi         s2, zero, -10 #init loop 0 limit
                  slti         a6, s11, 703
                  nop
                  slt          tp, s1, s10
                  add          a2, t1, t5
                  add          ra, t1, s8
                  xori         sp, s3, -467
sub_4_6_0_t:      add          a3, zero, s9
                  xori         s5, a2, -684
                  srai         t2, t4, 7
                  srli         sp, t1, 30
                  addi         t3, t3, -9 #update loop 0 counter
                  xor          t5, s3, s8
                  xor          s3, s6, t0
                  sub          s3, t1, t5
                  sra          s5, t1, a3
                  srli         sp, t5, 14
                  sll          gp, s0, s11
                  andi         s5, s11, -558
                  bge          t3, s2, sub_4_6_0_t #branch for loop 0
                  sub          a4, s9, gp
                  addi         sp, zero, 3 #init loop 0 counter
                  addi         s5, zero, 7 #init loop 0 limit
sub_4_21_0_t:     add          s3, zero, s0
                  addi         sp, sp, 7 #update loop 0 counter
                  blt          sp, s5, sub_4_21_0_t #branch for loop 0
                  andi         a6, t5, 1597
                  addi         s11, zero, 10 #init loop 0 counter
                  slti         a7, tp, 1689
                  and          gp, a4, t4
                  and          s3, t1, t5
                  addi         zero, t4, 409
                  sub          s5, a3, t4
                  lui          a3, 79906
                  addi         t1, zero, 10 #init loop 0 limit
                  xor          tp, sp, t4
                  xori         a3, a6, -25
                  or           gp, a5, sp
sub_4_19_0_t:     addi         s6, ra, 1924
                  nop
                  sltu         s9, s9, s0
                  slti         a4, s3, -370
                  nop
                  add          a4, a4, s8
                  slti         s3, t2, 132
                  addi         s11, s11, -9 #update loop 0 counter
                  xor          gp, a2, s6
                  lui          s9, 536153
                  addi         s5, a7, -112
                  add          a1, s7, t5
                  srl          s2, s10, a1
                  slli         ra, s2, 30
                  slti         a1, a7, 1585
                  bgeu         s11, t1, sub_4_19_0_t #branch for loop 0
                  auipc        a2, 1038910
                  addi         a3, zero, -10 #init loop 0 counter
                  xori         ra, t2, 239
                  addi         t6, zero, -19 #init loop 0 limit
                  sub          s3, t0, t3
sub_4_11_0_t:     sltiu        t0, t0, -1877
                  addi         a3, a3, -3 #update loop 0 counter
                  ori          tp, gp, 810
                  beq          a3, t6, sub_4_11_0_t #branch for loop 0
                  xor          a5, s2, s10
                  addi         t3, zero, 7 #init loop 0 counter
                  xori         s5, ra, 1097
                  add          t0, t3, s10
                  add          ra, tp, sp
                  add          s9, sp, s9
                  sltiu        s10, t1, -1228
                  addi         s7, zero, 5 #init loop 0 limit
                  add          s2, t2, tp
                  sltiu        s11, sp, -769
                  srli         s1, s7, 6
sub_4_14_0_t:     sltiu        a4, a0, 475
                  add          s10, s2, t3
                  lui          s9, 357055
                  slti         t1, zero, 1450
                  sll          s1, t6, s9
                  addi         t3, t3, -2 #update loop 0 counter
                  bgeu         t3, s7, sub_4_14_0_t #branch for loop 0
                  srl          a2, s5, t2
                  addi         s5, zero, 3 #init loop 1 counter
                  addi         a7, zero, -16 #init loop 1 limit
                  sltiu        s3, s0, -539
sub_4_0_1_t:      add          zero, s9, t2
                  xori         zero, gp, -1734
                  addi         s5, s5, -8 #update loop 1 counter
                  addi         ra, zero, -2 #init loop 0 counter
                  addi         s6, zero, 16 #init loop 0 limit
sub_4_0_0_t:      xori         a5, s7, 1825
                  sltiu        tp, a4, 1632
                  sltiu        a6, t1, -66
                  addi         ra, ra, 4 #update loop 0 counter
                  bltu         ra, s6, sub_4_0_0_t #branch for loop 0
                  bge          s5, a7, sub_4_0_1_t #branch for loop 1
                  slt          a2, s0, t6
                  addi         t6, zero, 5 #init loop 0 counter
                  sra          s1, s10, s10
                  addi         sp, zero, 10 #init loop 0 limit
                  slti         gp, sp, -67
                  slli         a4, a0, 16
sub_4_12_0_t:     or           s0, zero, t6
                  sll          a3, t5, s7
                  addi         t6, t6, 5 #update loop 0 counter
                  or           t5, s11, a5
                  and          s5, s11, a6
                  slti         t1, t1, 108
                  auipc        gp, 43826
                  sub          t2, t1, t4
                  lui          s9, 252203
                  ori          zero, t2, -1601
                  addi         t1, s10, -2023
                  srl          s9, s4, a5
                  sltu         t5, a5, s11
                  blt          t6, sp, sub_4_12_0_t #branch for loop 0
                  srl          a3, a1, a3
                  addi         s10, zero, -6 #init loop 0 counter
                  xori         a4, s3, 1708
                  lui          gp, 530417
                  sltu         a1, a5, t2
                  or           gp, gp, a7
                  srli         a1, t2, 13
                  sltiu        s7, s10, 1246
                  srli         t1, s10, 14
                  slli         s2, t1, 22
                  sltiu        s5, a7, -1667
                  nop
                  slti         s9, s10, 403
                  srai         s2, s9, 29
                  sltiu        t0, zero, 286
                  addi         a6, zero, -12 #init loop 0 limit
                  srl          s1, t3, a6
                  sltu         a0, s1, a0
                  slli         t3, t3, 19
sub_4_18_0_t:     sltu         a3, s7, s4
                  sll          a5, s2, a6
                  addi         s10, s10, -6 #update loop 0 counter
                  xor          ra, s6, s1
                  auipc        t2, 181973
                  addi         s5, t0, 937
                  xor          gp, a5, t0
                  ori          sp, a0, -968
                  slt          a4, t2, a6
                  xori         t1, s2, -380
                  beq          s10, a6, sub_4_18_0_t #branch for loop 0
                  sll          s5, s1, a0
                  addi         t0, zero, -6 #init loop 0 counter
                  addi         s3, zero, -14 #init loop 0 limit
                  sll          tp, t3, zero
                  srai         a6, s6, 12
                  sltiu        a6, a3, 790
                  slt          a1, t6, zero
sub_4_3_0_t:      ori          tp, s3, -1685
                  lui          t1, 773308
                  slli         s6, s10, 11
                  addi         t0, t0, -8 #update loop 0 counter
                  and          t6, a2, s0
                  slli         t1, a3, 22
                  slti         a0, gp, 815
                  xori         t5, gp, 29
                  srl          t5, s2, a6
                  xori         t1, t0, -1221
                  beq          t0, s3, sub_4_3_0_t #branch for loop 0
                  auipc        t3, 23343
                  addi         s10, zero, 1 #init loop 0 counter
                  addi         s2, a6, -739
                  slti         t6, a6, 913
                  addi         t1, zero, -19 #init loop 0 limit
sub_4_4_0_t:      ori          t2, a4, -1759
                  lui          t5, 41118
                  sll          s5, a5, s10
                  sra          s0, a6, s2
                  srl          a0, ra, ra
                  addi         s10, s10, -1 #update loop 0 counter
                  ori          a7, s7, 110
                  srai         t6, gp, 8
                  slti         t6, t2, 1416
                  srai         t6, s0, 25
                  auipc        a5, 834767
                  bge          s10, t1, sub_4_4_0_t #branch for loop 0
                  ori          a7, t3, 1547
                  addi         s9, zero, 3 #init loop 0 counter
                  and          zero, s10, s6
                  auipc        s5, 847012
                  auipc        s3, 690713
                  sltu         s0, zero, sp
                  addi         ra, zero, 17 #init loop 0 limit
                  sltu         tp, zero, t5
sub_4_7_0_t:      or           t6, t3, s2
                  addi         s9, s9, 4 #update loop 0 counter
                  blt          s9, ra, sub_4_7_0_t #branch for loop 0
                  andi         t0, zero, 751
                  addi         t1, zero, 3 #init loop 0 counter
                  auipc        s3, 906798
                  addi         tp, zero, 17 #init loop 0 limit
sub_4_17_0_t:     sltiu        a5, t0, 136
                  addi         t1, t1, 2 #update loop 0 counter
                  nop
                  sltu         s9, a4, a3
                  xori         s0, tp, 1565
                  bltu         t1, tp, sub_4_17_0_t #branch for loop 0
                  slli         s11, a7, 21
                  addi         t2, zero, -10 #init loop 0 counter
                  add          a6, tp, s4
                  addi         s0, zero, -18 #init loop 0 limit
                  sltu         a3, a7, s8
                  and          a0, a4, gp
sub_4_16_0_t:     and          t5, t1, s7
                  lui          s5, 47557
                  or           a6, t2, tp
                  addi         t2, t2, -8 #update loop 0 counter
                  slti         t1, a1, -1956
                  andi         t6, s2, -1259
                  slli         a2, s1, 13
                  beq          t2, s0, sub_4_16_0_t #branch for loop 0
                  or           a5, s9, tp
                  addi         a2, zero, 8 #init loop 1 counter
                  nop
                  addi         s11, zero, 19 #init loop 1 limit
                  slli         t0, a0, 7
sub_4_13_1_t:     addi         a5, a1, -818
                  ori          a6, a3, 1550
                  sltiu        sp, gp, -917
                  addi         a2, a2, 4 #update loop 1 counter
                  sub          s7, t0, s7
                  addi         t3, zero, 3 #init loop 0 counter
                  sub          s1, a6, s5
                  addi         a4, zero, -1 #init loop 0 limit
                  auipc        s9, 337899
                  sltu         s1, t0, t2
sub_4_13_0_t:     and          t1, t4, sp
                  srl          zero, s3, a1
                  addi         t3, t3, -4 #update loop 0 counter
                  lui          a1, 470021
                  and          s7, s1, t4
                  sltiu        a1, a4, 1927
                  bne          t3, a4, sub_4_13_0_t #branch for loop 0
                  nop
                  blt          a2, s11, sub_4_13_1_t #branch for loop 1
                  sll          t2, zero, s1
                  addi         s7, zero, 10 #init loop 1 counter
                  add          t0, ra, t5
                  addi         t6, zero, 10 #init loop 1 limit
sub_4_20_1_t:     slt          a3, t6, a1
                  xori         a2, a4, -124
                  lui          s6, 804423
                  addi         s7, s7, -9 #update loop 1 counter
                  addi         a4, s8, 1926
                  addi         a7, zero, -2 #init loop 0 counter
                  addi         t1, zero, -1 #init loop 0 limit
                  and          gp, a4, tp
sub_4_20_0_t:     xori         s11, t5, 2044
                  addi         a7, a7, 4 #update loop 0 counter
                  and          s3, a6, s4
                  sub          tp, a1, a3
                  sub          a4, a5, a4
                  srl          s6, s9, t1
                  add          tp, s4, ra
                  lui          s11, 624279
                  auipc        a0, 783094
                  blt          a7, t1, sub_4_20_0_t #branch for loop 0
                  xori         tp, s7, -104
                  bgeu         s7, t6, sub_4_20_1_t #branch for loop 1
                  srl          a2, t4, t3
                  addi         t2, zero, 4 #init loop 1 counter
                  srl          t6, s7, t2
                  addi         a2, zero, -3 #init loop 1 limit
                  ori          sp, a2, 8
sub_4_1_1_t:      lui          s5, 894713
                  slli         s2, s7, 12
                  addi         t2, t2, -3 #update loop 1 counter
                  addi         tp, zero, -7 #init loop 0 counter
                  sltiu        s7, a2, -1236
                  addi         s0, zero, -7 #init loop 0 limit
                  add          s9, ra, s11
                  sltu         s5, t5, a4
sub_4_1_0_t:      andi         t0, a6, 855
                  addi         tp, tp, -10 #update loop 0 counter
                  bge          tp, s0, sub_4_1_0_t #branch for loop 0
                  slti         a3, s2, 1547
                  slt          t1, a0, t5
                  bge          t2, a2, sub_4_1_1_t #branch for loop 1
                  slli         a7, s3, 12
                  addi         s6, zero, -4 #init loop 1 counter
                  lui          t6, 117830
                  srl          a2, s3, gp
                  andi         tp, a0, -94
                  addi         s11, zero, 12 #init loop 1 limit
sub_4_15_1_t:     auipc        a3, 676047
                  addi         s6, s6, 4 #update loop 1 counter
                  srai         t6, a4, 19
                  sub          zero, a1, a7
                  srli         a4, s2, 16
                  addi         a0, zero, -6 #init loop 0 counter
                  sub          a4, s2, tp
                  addi         a7, zero, 2 #init loop 0 limit
                  ori          t6, zero, 799
sub_4_15_0_t:     ori          a1, a1, -1776
                  sra          s3, ra, t4
                  ori          t3, a4, 1785
                  addi         a0, a0, 8 #update loop 0 counter
                  sub          ra, sp, s5
                  slli         ra, t6, 2
                  add          s2, s3, t3
                  sltu         tp, a1, t3
                  bne          a0, a7, sub_4_15_0_t #branch for loop 0
                  lui          sp, 996984
                  srli         t2, tp, 4
                  addi         gp, s2, 560
                  srli         t2, a0, 19
                  and          s0, sp, s10
                  and          t2, s11, a2
                  bltu         s6, s11, sub_4_15_1_t #branch for loop 1
                  ori          t0, s7, 1171
                  addi         s0, zero, 9 #init loop 0 counter
                  addi         s3, zero, 17 #init loop 0 limit
sub_4_8_0_t:      sltu         gp, t5, a5
                  sltu         a6, t0, t6
                  addi         s0, s0, 2 #update loop 0 counter
                  sltiu        zero, a1, -1960
                  blt          s0, s3, sub_4_8_0_t #branch for loop 0
                  sll          a3, a4, a5
                  addi         a2, zero, 4 #init loop 0 counter
                  addi         a1, zero, 18 #init loop 0 limit
                  sub          s10, a1, s10
                  xor          t1, s0, a0
sub_4_2_0_t:      nop
                  sltu         s11, t0, ra
                  addi         a2, a2, 7 #update loop 0 counter
                  addi         s10, s3, -950
                  slli         zero, s8, 15
                  or           s2, s5, a1
                  andi         a3, tp, -1199
                  slti         a7, t0, -596
                  xori         a6, s5, -1264
                  srai         tp, a4, 23
                  nop
                  sub          sp, t5, s10
                  auipc        a6, 750212
                  and          gp, s11, t5
                  sra          s3, t5, zero
                  beq          a2, a1, sub_4_2_0_t #branch for loop 0
                  slli         s0, s5, 23
                  xori         s6, t0, 1336
                  bgeu         a5, s7, 18f
                  bne          a2, s3, 17f
                  addi         a3, a7, 412
                  or           sp, t6, sp
                  or           t3, s6, t1
                  nop
                  slt          s11, t2, t6
                  sltu         a3, t3, s4
                  auipc        s2, 531923
                  sll          t3, gp, a5
                  nop
                  bltu         t6, s5, 26f
                  srl          s10, t3, s6
                  slti         t0, a4, 738
                  bne          t3, a0, 17f
                  blt          t5, s1, 36f
17:               srai         t0, a2, 3
18:               blt          t2, a5, 28f
                  bge          s6, s10, 36f
                  bne          s11, s2, 34f
                  bltu         s1, a5, 34f
                  sub          t2, a1, sp
                  xor          t1, s6, t6
                  slli         s1, t3, 14
                  bltu         t0, s2, 44f
26:               nop
                  sra          s7, s8, t4
28:               addi         a3, s10, -1432
                  nop
                  sub          a6, gp, s1
                  sll          s2, s1, s4
                  sub          a1, sp, s11
                  andi         a2, gp, -984
34:               srai         s5, s6, 19
                  sra          gp, s1, s7
36:               srai         sp, t4, 0
                  andi         ra, s11, 561
                  andi         a5, a2, -1896
                  srl          t5, gp, t3
                  beq          gp, s8, 41f
41:               sltu         s7, zero, a3
                  lui          s2, 253330
                  and          a0, t5, t1
44:               beq          a0, a0, 60f
                  add          t5, s5, s0
                  srai         sp, a3, 8
                  srli         s2, s0, 9
                  ori          zero, ra, 1587
                  andi         s10, s2, -1660
                  or           sp, t0, s5
                  sra          sp, s1, s9
                  srai         s3, zero, 24
                  andi         a5, a7, 692
                  bge          ra, s1, 71f
                  addi         s11, t2, -1639
                  auipc        s6, 1002888
                  slti         tp, s8, -1038
                  ori          a7, t5, 228
                  or           s6, s9, s3
60:               and          s3, t0, s0
                  slti         a4, gp, -1809
                  nop
                  bne          t0, gp, 73f
                  auipc        tp, 492755
                  lui          zero, 630684
                  srai         a0, a2, 24
                  srai         s0, s1, 7
                  bgeu         s6, sp, 83f
                  beq          t3, a6, 72f
                  bne          s3, s0, 76f
71:               bne          a3, s2, 90f
72:               andi         s7, s4, 76
73:               auipc        gp, 393773
                  slti         a1, s5, -1106
                  blt          a0, a4, 77f
76:               srl          t0, s9, a4
77:               slli         s3, t6, 29
                  srl          s1, s10, gp
                  sltiu        tp, s7, -1337
                  sltiu        a7, sp, 1598
                  addi         a6, tp, -720
                  sub          a2, s2, t5
83:               bne          s7, a6, 85f
                  sltu         a0, a5, zero
85:               andi         a7, s10, -1557
                  beq          t5, s11, 93f
                  auipc        s3, 20982
                  addi         t3, s9, -1123
                  sltu         s3, s2, sp
90:               nop
                  auipc        a1, 349034
                  sra          s11, s9, s11
93:               sltu         s1, t5, t1
                  slti         a0, gp, 1798
                  xori         gp, a0, 1862
                  beq          a6, s10, 105f
                  bge          zero, a7, 104f
                  sll          t0, s0, s6
                  sra          t1, t1, t0
                  slli         t2, a7, 4
                  or           a3, s10, s2
                  auipc        a1, 311348
                  sll          gp, t3, sp
104:              beq          t1, a7, 106f
105:              nop
106:              xor          a0, s11, t2
                  slli         a1, ra, 26
                  slt          s6, s7, s11
                  sltu         s5, s8, s1
                  nop
                  nop
                  auipc        s9, 444889
                  bgeu         s10, a4, 120f
                  srl          t0, s10, sp
                  blt          a3, a0, 127f
                  or           sp, s5, s0
                  lui          t0, 819067
                  addi         t1, gp, 508
                  lui          t2, 974956
120:              srl          a6, s0, sp
                  beq          s4, gp, 129f
                  xor          a5, sp, a2
                  andi         zero, t5, 1865
                  slti         s2, ra, 1939
                  or           tp, ra, a4
                  sltiu        s11, t6, 1334
127:              andi         s3, s2, 1331
                  bgeu         t1, s6, 138f
129:              sll          a2, s4, a7
                  nop
                  bgeu         s6, s6, 149f
                  bgeu         t3, s2, 145f
                  bltu         s5, s3, 135f
                  addi         a3, s9, -966
135:              srli         s1, s10, 17
                  ori          s5, a2, 1622
                  sub          t5, s6, t4
138:              auipc        a0, 611586
                  srl          s5, s4, t5
                  addi         a1, a3, -93
                  or           s9, t2, gp
                  bltu         s7, a6, 144f
                  addi         s3, t4, 1939
144:              bge          s0, s9, 156f
145:              bltu         tp, s6, 147f
                  xor          a2, a3, t2
147:              or           s5, a2, s10
                  bltu         a7, t4, 163f
149:              sltiu        s3, t3, 1293
                  andi         a2, a7, 1046
                  add          ra, a7, zero
                  bltu         gp, s2, 161f
                  srai         a4, s7, 31
                  blt          s6, s7, 161f
                  auipc        sp, 827382
156:              and          t2, s7, t6
                  auipc        a6, 651017
                  bge          s2, a0, 176f
                  or           a2, a4, s9
                  bgeu         tp, ra, 170f
161:              xori         t3, s9, 411
                  auipc        zero, 862475
163:              sra          tp, s6, s11
                  slli         s7, gp, 13
                  xor          a2, t6, t3
                  sltu         a3, t6, a1
                  bne          a1, sp, 180f
                  slli         sp, s1, 2
                  xori         a1, a3, -1060
170:              or           s6, s5, s8
                  lui          a2, 328719
                  bgeu         a0, a7, 185f
                  sltiu        s11, a1, 1857
                  sub          s3, s1, gp
                  lui          s7, 135034
176:              srai         s6, t6, 16
                  ori          a5, s0, 883
                  bgeu         s3, a4, 186f
                  slli         a3, t5, 21
180:              sll          t2, t6, s3
                  and          s9, t6, s4
                  sra          a0, gp, s5
                  slti         ra, s8, -1835
                  slti         a2, t0, 1519
185:              slti         t2, s4, -1010
186:              sub          s10, t1, t3
                  slt          t2, s11, t2
                  srai         zero, t2, 11
                  sltu         t2, a4, a0
                  xor          s9, t6, s4
                  bge          sp, tp, 194f
                  add          gp, s10, s6
                  bgeu         t5, s6, 209f
194:              xori         t1, a1, 798
                  sll          t6, a5, tp
                  auipc        zero, 380119
                  blt          ra, s11, 216f
                  slt          s7, a1, s11
                  sltiu        t5, sp, -1515
                  beq          a1, ra, 210f
                  srai         s2, t5, 11
                  bge          t2, gp, 209f
                  slli         sp, s11, 1
                  bgeu         a7, t4, 210f
                  nop
                  and          s7, s2, s2
                  bltu         s1, s2, 217f
                  slti         a7, s2, 1062
209:              ori          t0, s8, 747
210:              sra          s1, t2, t5
                  sll          s7, t3, s8
                  srai         gp, s7, 6
                  srl          s7, zero, a1
                  bltu         s3, a6, 221f
                  auipc        a1, 747606
216:              sltiu        s1, a4, 423
217:              bge          a4, a5, 234f
                  or           s1, a0, s6
                  srl          t0, t3, a0
                  beq          s1, a7, 234f
221:              andi         s7, a6, -1900
                  xor          s11, ra, s4
                  bgeu         t2, a7, 224f
224:              sub          a4, s4, gp
                  slt          s9, s6, s0
                  ori          a1, a7, -913
                  bge          t2, t2, 229f
                  xori         s6, t1, -1962
229:              addi         a7, s4, 934
                  bltu         a1, tp, 244f
                  andi         s7, s9, 992
                  addi         a3, s4, -1989
                  addi         tp, zero, 9 #init loop 1 counter
                  addi         t6, zero, 14 #init loop 1 limit
sub_4_5_1_t:      slti         s9, s4, 185
                  xor          a2, a4, gp
                  srl          a5, a3, s10
                  addi         tp, tp, 5 #update loop 1 counter
                  sra          t5, a6, t2
                  srli         a4, a4, 12
                  lui          s10, 494502
                  addi         sp, zero, -1 #init loop 0 counter
                  or           a5, s4, s4
                  sltiu        s6, s4, 1141
                  addi         a6, zero, -1 #init loop 0 limit
                  and          t1, sp, t4
                  xor          a7, a6, ra
                  auipc        a0, 922129
sub_4_5_0_t:      xori         t3, s11, 580
                  sll          t2, t1, zero
                  addi         sp, sp, -10 #update loop 0 counter
                  bge          sp, a6, sub_4_5_0_t #branch for loop 0
                  and          a5, a4, gp
                  xori         s5, a7, -568
                  and          s10, gp, t5
                  beq          tp, t6, sub_4_5_1_t #branch for loop 1
                  sub          t3, zero, s5
                  slt          gp, t6, a4
234:              bltu         s8, a5, 253f
                  sltiu        t6, a4, 227
                  lui          t1, 802632
                  bgeu         t3, s1, 252f
                  sll          a3, s8, sp
                  bge          s8, s11, 259f
                  or           gp, t3, a7
                  bgeu         gp, s0, 258f
                  ori          a6, gp, -541
                  slti         a1, t6, 29
244:              sub          s5, s10, a2
                  lui          s5, 774201
                  bgeu         s7, zero, 263f
                  blt          t2, zero, 261f
                  beq          s8, s1, 255f
                  slt          s10, t3, ra
                  srai         s5, s6, 8
                  slli         a3, a5, 3
252:              sltiu        t5, a7, 1840
253:              srai         s0, tp, 6
                  addi         a6, s11, -1723
255:              beq          t1, tp, 267f
                  lui          a4, 475028
                  or           s10, s11, s8
258:              bgeu         t5, t6, 261f
259:              slt          t0, a4, s11
                  bltu         gp, t3, 275f
261:              sll          a7, s8, s0
                  xor          a6, t3, t1
263:              sltu         a4, zero, a5
                  sll          s9, t0, s2
                  sll          t6, t0, ra
                  slt          a1, a6, a7
267:              sra          s5, s6, s10
                  srli         gp, s1, 12
                  sll          a0, tp, s9
                  bltu         a3, s11, 287f
                  auipc        s9, 574302
                  sub          t6, t6, ra
                  slli         s7, tp, 18
                  bne          a0, s7, 284f
275:              add          s1, t5, t1
                  bge          sp, s7, 291f
                  addi         s7, s0, -1966
                  blt          a6, a0, 297f
                  bne          s9, s11, 281f
                  slti         zero, s7, -2030
281:              sll          t2, s3, s9
                  srl          zero, gp, t6
                  beq          t1, a1, 299f
284:              beq          a6, t3, 291f
                  bge          s2, a7, 304f
                  nop
287:              bgeu         gp, zero, 289f
                  srl          s11, a3, s7
289:              or           s5, a0, a4
                  bgeu         t0, a6, 307f
291:              bgeu         s10, gp, 308f
                  bne          s0, zero, 305f
                  xor          t3, a3, a2
                  bge          ra, s2, 300f
                  bne          t4, a7, 315f
                  srai         s7, t3, 22
297:              xori         t1, s4, -285
                  sll          s7, s1, s8
299:              srl          a6, sp, t5
300:              sra          t1, a7, s5
                  blt          s5, s9, 303f
                  and          a4, s10, s4
303:              slti         s9, s2, -480
304:              sub          s9, s0, a5
305:              xor          s6, a0, s8
                  blt          s3, t2, 316f
307:              sra          t5, s7, t2
308:              bltu         a2, s4, 315f
                  bltu         a1, ra, 311f
                  beq          gp, a4, 323f
311:              slt          t2, a5, t0
                  lui          a3, 801732
                  xor          a5, t6, zero
                  beq          ra, a3, 332f
315:              nop
316:              bltu         a1, t0, 325f
                  bltu         s7, zero, 331f
                  lui          t3, 841153
                  beq          t4, t6, 320f
320:              bne          tp, s1, 330f
                  bge          s5, t5, 329f
                  or           s10, s3, t1
323:              ori          a4, a4, -729
                  addi         s3, a5, 1464
325:              bge          t3, s0, 332f
                  sub          s1, t5, t4
                  bltu         a0, s11, 344f
                  auipc        s3, 641871
329:              bne          s0, a1, 345f
330:              auipc        gp, 427610
331:              or           a0, a4, gp
332:              srl          a5, t2, a2
                  beq          t5, t6, 352f
                  bgeu         s8, a1, 336f
                  slti         zero, tp, -694
336:              sra          s9, zero, a6
                  srl          a4, s0, s0
                  slli         a1, t1, 6
                  blt          a3, s8, 346f
                  sltu         a3, t5, a4
                  bgeu         a4, a7, 353f
                  sltiu        a0, a6, -1531
                  bltu         t0, a1, 362f
344:              xori         s5, a0, 1323
345:              nop
346:              add          s7, s10, t4
                  sra          t5, a7, gp
                  and          t1, t2, s5
                  sltiu        s7, a0, 832
                  sll          s9, s0, a2
                  bge          t0, s2, 361f
352:              srai         s3, s5, 23
353:              add          t5, t2, a1
                  addi         s5, s5, 55
                  nop
                  slt          a3, a2, t5
                  auipc        s5, 460452
                  xor          s1, a5, a3
                  xor          zero, t6, t3
                  andi         a5, a0, -1538
361:              bne          t5, ra, 374f
362:              srli         s5, a7, 22
                  slti         s1, a1, 618
                  xori         s1, s10, -1807
                  ori          a5, t1, -288
                  xori         ra, zero, 2038
                  add          a3, s3, t5
                  slli         s11, s5, 23
                  addi         tp, s5, 113
                  addi         a4, a1, 745
                  bge          a3, s6, 381f
                  blt          s8, a4, 382f
                  slti         a5, s4, -1477
374:              srl          zero, s4, a5
                  srl          a2, t0, a4
                  lui          s9, 449125
                  auipc        s11, 718399
                  bne          tp, a1, 385f
                  sltu         t5, a1, sp
                  bgeu         s7, s11, 394f
381:              sub          t5, a7, tp
382:              sll          tp, a1, a1
                  srl          a1, s1, s7
                  sra          t0, s9, s9
385:              addi         gp, sp, -1259
                  or           a5, s2, s5
                  andi         zero, t1, 1569
                  addi         gp, a4, -1641
                  or           a1, s4, t0
                  add          a5, s1, zero
                  sub          a4, s4, s8
                  sra          a2, ra, s3
                  bge          t3, t1, 394f
394:              slt          s10, s8, t3
                  srai         sp, s2, 11
                  andi         s10, sp, -1829
                  blt          s1, s8, 412f
                  bltu         t2, s1, 400f
                  bltu         t5, s4, 413f
400:              sub          a1, s5, zero
                  bne          t2, t4, 416f
                  lui          s10, 660195
                  slli         a3, s4, 27
                  ori          ra, t5, -328
                  bne          a2, t0, 422f
                  bge          s11, s10, 423f
                  sub          a0, ra, s6
                  srl          a7, zero, a3
                  lui          s11, 1038833
                  bne          t2, s10, 430f
                  srli         ra, s11, 3
412:              auipc        t0, 543300
413:              slli         t2, t1, 6
                  bge          s8, s5, 422f
                  srli         s0, tp, 4
416:              xori         t1, a1, 1739
                  xori         t5, s10, 37
                  beq          t0, s0, 436f
                  sltiu        a3, s2, 977
                  bge          ra, s10, 423f
                  addi         s9, a4, 239
422:              add          a0, t5, s2
423:              auipc        tp, 293389
                  sltu         a1, s11, s5
                  ori          zero, a6, 539
                  bge          a1, s7, 432f
                  sll          a1, s7, s6
                  addi         a6, sp, 1485
                  bgeu         s1, a6, 431f
430:              slli         ra, s4, 23
431:              lui          sp, 804587
432:              bge          t4, s8, 445f
                  slli         s6, gp, 20
                  and          sp, s11, a6
                  slli         a5, s3, 29
436:              and          s7, zero, s5
                  nop
                  sub          s7, s1, a6
                  xori         s6, s5, -1095
                  andi         s6, t0, -1765
                  or           a4, s8, t2
                  xor          tp, t5, t4
                  srai         t3, s10, 3
                  bgeu         s6, t1, 453f
445:              or           a3, s4, s3
                  srai         s11, a5, 0
                  or           s6, s5, t0
                  bne          t3, t6, 450f
                  sll          a7, s10, s11
450:              or           t5, tp, gp
                  sll          s5, s9, zero
                  bge          sp, a5, 460f
453:              xor          s3, a5, t1
                  andi         s2, s9, 1207
                  addi         a0, t3, 610
                  bne          s4, t2, 470f
                  slli         a0, a2, 21
                  ori          s9, s6, 595
                  sll          s9, s11, t2
460:              srl          s10, a6, a5
                  bgeu         tp, s0, 471f
                  bge          a6, s2, 465f
                  beq          s8, tp, 465f
                  sra          t6, t0, s9
465:              nop
                  sltu         a3, s3, gp
                  xori         s0, a1, -194
                  add          s2, t4, ra
                  auipc        a6, 357557
470:              ori          t5, s7, -22
471:              and          gp, tp, t5
                  bltu         s11, s0, 491f
                  sltiu        a4, a4, 1375
                  srai         t3, s5, 16
                  bltu         s4, tp, 484f
                  or           s2, a5, t2
                  sra          s11, s4, sp
                  beq          a7, s7, 496f
                  blt          s9, s3, 492f
                  srl          s5, a7, s5
                  bltu         a0, s0, 491f
                  slt          s3, s1, a7
                  sub          t2, s7, a6
484:              sra          t0, tp, a2
                  srl          t0, sp, a1
                  andi         ra, t6, -1160
                  auipc        t6, 51479
                  sltu         t6, a5, s7
                  bltu         t5, t6, 490f
490:              sll          a4, t0, t4
491:              auipc        a0, 203122
492:              bltu         a7, a4, 502f
                  slt          s7, zero, tp
                  beq          t1, s10, 501f
                  srli         s10, t0, 17
496:              sll          a7, a1, s9
                  sltiu        ra, s8, 1468
                  xori         s2, a7, 778
                  and          t3, s4, s7
                  auipc        tp, 159728
501:              xori         t6, a1, -828
502:              xori         t6, t0, -357
                  bltu         a3, a1, 520f
                  bge          t2, s2, 511f
                  bne          s4, s5, 517f
                  sll          gp, s3, a5
                  add          t6, t2, s1
                  sltiu        t3, s7, 306
                  lui          a4, 314314
                  and          t6, a5, t1
511:              slti         tp, a5, 558
                  slli         t2, s8, 30
                  slti         s10, s11, -1418
                  xor          t0, s9, s3
                  srli         s9, t4, 19
                  slti         t3, s11, 1745
517:              andi         a5, s1, 2041
                  bne          a1, s3, 532f
                  bge          a2, s10, 536f
520:              add          a7, a3, s2
                  sltiu        tp, t0, -1804
                  slt          ra, t3, t5
                  srl          s7, ra, s6
                  addi         a2, s2, 1018
                  sltiu        s10, s6, 1901
                  srli         s6, a5, 28
                  or           s5, s11, s9
                  nop
                  add          ra, gp, a3
                  xori         t2, t6, -2035
                  srai         a2, s8, 4
532:              addi         s5, t5, -267
                  sra          s0, s10, s9
                  sltu         a3, s8, s0
                  srai         t0, s10, 23
536:              andi         sp, s11, 288
                  blt          s0, tp, 539f
                  sra          t3, zero, ra
539:              add          a4, s5, a4
                  blt          s5, s3, 553f
                  lui          sp, 623030
                  auipc        s6, 136043
                  sltiu        gp, s6, -1313
                  srl          tp, tp, s11
                  nop
                  sll          t5, s11, a3
                  lui          s7, 376720
                  xor          a7, s3, sp
                  or           s2, s6, s7
                  bgeu         a2, a3, 569f
                  add          t3, s6, ra
                  and          a6, t0, ra
553:              bne          s1, a1, 555f
                  sltiu        a6, t4, -587
555:              slti         s2, zero, 1269
                  slt          t3, t0, t2
                  sll          a2, a0, s4
                  addi         t5, a7, 1796
                  srli         a4, t2, 8
                  slli         s11, s7, 14
                  ori          s5, s11, 676
                  sra          zero, tp, zero
                  srl          t1, ra, s11
                  slti         t1, zero, 1612
                  sll          s1, a6, ra
                  slli         a5, s9, 30
                  andi         a7, s3, -549
                  slli         s5, a4, 3
569:              srl          t3, s0, s11
                  xori         s5, s0, -170
                  add          a5, s11, a7
                  bge          tp, t0, 587f
                  bltu         s9, s6, 579f
                  xor          t6, s1, gp
                  beq          s5, t2, 591f
                  slt          a0, t2, t5
                  bge          t2, s10, 579f
                  bne          sp, a6, 585f
579:              slli         a0, t2, 0
                  bgeu         a4, a0, 600f
                  and          a6, s9, sp
                  srl          a6, t6, s6
                  or           t6, zero, a5
                  slli         tp, t2, 2
585:              beq          s9, s9, 602f
                  srl          s6, a6, s6
587:              srai         a2, s10, 2
                  sltiu        a7, t3, -473
                  andi         a7, a2, -2007
                  sra          s10, a2, s10
591:              slti         t6, s11, -970
                  blt          t4, tp, 607f
                  nop
                  slli         sp, t1, 11
                  sub          ra, a0, s10
                  slti         t6, t2, 131
                  srli         zero, t5, 27
                  srl          s0, s5, t0
                  sub          a0, t5, t2
600:              slt          s5, s1, t0
                  sll          s5, a6, a2
602:              lui          a4, 459353
                  slti         s3, a7, 1653
                  and          s5, a0, s5
                  sra          s5, zero, t0
                  sll          sp, t0, s10
607:              or           a1, t0, t3
                  bne          s2, s3, 620f
                  bltu         s10, s10, 616f
                  auipc        s10, 553542
                  sltiu        t2, s8, -1129
                  srai         a4, s9, 5
                  sra          a6, s8, s8
                  ori          t0, a7, 1157
                  sll          a6, s8, ra
616:              andi         t6, s0, -525
                  auipc        s3, 298655
                  beq          a5, s4, 621f
                  xori         s11, s1, 285
620:              ori          t1, s9, -1311
621:              or           a4, t1, t4
                  and          s10, t1, gp
                  slti         s5, s4, 1390
                  beq          s2, tp, 625f
625:              sra          tp, s6, t5
                  add          s9, s9, a7
                  srai         t6, a2, 19
                  slti         s11, s9, -18
                  or           t3, s3, t0
                  lui          a2, 429350
                  and          s10, t2, t0
                  srai         t2, tp, 27
                  lui          tp, 947316
                  addi         s7, t1, 168
                  xor          s2, s9, s5
                  srai         a0, a1, 0
                  srai         t3, t5, 11
                  bge          a6, a4, 646f
                  ori          s0, t2, 104
                  beq          s3, s8, 655f
                  add          s2, s8, s9
                  srl          a6, ra, s0
                  bne          s9, a0, 652f
                  slt          a4, ra, zero
                  srai         s1, s3, 20
646:              andi         t3, ra, 1706
                  slli         t1, s4, 21
                  slli         zero, t6, 15
                  slti         s1, tp, 541
                  bgeu         s5, sp, 652f
                  add          s3, t0, s8
652:              sll          a0, t0, a2
                  blt          gp, a5, 659f
                  bgeu         s5, zero, 656f
655:              sra          t0, gp, t6
656:              ori          a4, a0, -1317
                  add          t5, a0, t1
                  slli         t5, s0, 0
659:              and          a0, a6, a4
                  add          a2, s9, a4
                  sll          a7, a7, s11
                  beq          s3, sp, 672f
                  slli         a1, gp, 28
                  sub          a2, s6, a7
                  andi         a1, s7, -193
                  slt          s0, a1, s3
                  slt          s2, s3, s11
                  bltu         s8, a1, 678f
                  xori         t0, a2, 88
                  and          t5, a4, s1
                  slli         s7, s3, 8
672:              sub          s0, s5, zero
                  sub          gp, a5, a7
                  bne          a3, a6, 687f
                  xori         s3, a4, 68
                  bge          a7, tp, 686f
                  ori          a5, zero, 815
678:              bge          ra, t1, 680f
                  srai         tp, sp, 5
680:              srli         s10, s8, 16
                  lui          t3, 581624
                  xor          a6, s4, s4
                  slti         a0, s9, 1317
                  srli         a7, s6, 2
                  srai         gp, zero, 17
686:              bgeu         t0, s7, 705f
687:              nop
                  ori          a5, zero, 1386
                  sll          t2, a1, s9
                  or           s11, t3, a2
                  sltu         zero, ra, s5
                  slti         ra, sp, 76
                  xori         s9, s10, -1635
                  slti         s6, s2, 1134
                  sltiu        a6, t4, -1824
                  slt          t2, a1, tp
                  and          s7, a2, s11
                  nop
                  xor          t5, s10, a7
                  nop
                  or           s9, s6, a1
                  xori         tp, s11, -180
                  or           t3, s8, a3
                  beq          s10, t5, 721f
705:              beq          s8, t6, 722f
                  sltu         s7, a0, t1
                  andi         a5, s11, 191
                  or           s0, sp, ra
                  lui          a0, 230107
                  srai         a5, s4, 29
                  xori         a7, a2, 283
                  slli         ra, zero, 7
                  slli         s3, gp, 24
                  sltu         s11, t5, sp
                  beq          gp, s1, 734f
                  srli         s10, s3, 15
                  sub          s2, a2, s10
                  nop
                  beq          s1, a6, 733f
                  bgeu         t2, tp, 733f
721:              xori         s10, s1, -843
722:              slt          t6, tp, t6
                  blt          t1, s3, 738f
                  slti         t0, a1, -1071
                  sll          t1, s11, tp
                  blt          s9, a5, 740f
                  and          a3, t6, gp
                  xor          s9, a2, a7
                  add          t2, gp, tp
                  srl          a1, t3, s10
                  andi         gp, s6, -1507
                  auipc        ra, 93348
733:              sltu         t3, s3, sp
734:              sltiu        s6, s6, -378
                  auipc        s3, 288046
                  slt          t1, s0, a1
                  sra          s2, a7, t3
738:              srli         s10, t6, 25
                  slli         s0, a1, 2
740:              or           a4, a1, s2
                  beq          gp, t4, 758f
                  bne          ra, gp, 762f
                  add          s3, s6, s3
                  xor          s3, sp, sp
                  sltu         s3, a7, sp
                  bne          s0, s2, 753f
                  bge          t1, tp, 765f
                  addi         ra, zero, -3 #init loop 1 counter
                  sub          t2, s5, tp
                  srl          s6, a1, zero
                  nop
                  addi         a7, zero, 8 #init loop 1 limit
sub_4_22_1_t:     xori         s1, s10, 547
                  addi         ra, ra, 9 #update loop 1 counter
                  addi         a3, zero, 3 #init loop 0 counter
                  auipc        zero, 597277
                  addi         sp, zero, -2 #init loop 0 limit
                  sll          s10, s6, s5
sub_4_22_0_t:     andi         s5, s5, -1032
                  addi         a3, a3, -5 #update loop 0 counter
                  bge          a3, sp, sub_4_22_0_t #branch for loop 0
                  bltu         ra, a7, sub_4_22_1_t #branch for loop 1
                  slt          tp, s10, s11
                  sltu         t1, s10, s8
                  slt          tp, s11, t0
                  bne          s7, t2, 766f
                  xor          a4, t2, tp
                  xori         t1, gp, 581
753:              sltu         a6, gp, s2
                  xor          a0, s4, t5
                  lui          a3, 476796
                  bne          a2, t6, 758f
                  auipc        s7, 499419
758:              slt          a3, a6, s2
                  beq          ra, s5, 766f
                  bgeu         s4, t5, 777f
                  or           ra, s11, s9
762:              bge          sp, t1, 763f
763:              slti         a6, sp, -1416
                  beq          ra, s9, 767f
765:              andi         t2, a0, -915
766:              slt          a6, s5, sp
767:              sltiu        s3, s2, 1380
                  auipc        s2, 639
                  slt          s6, s7, a1
                  sub          zero, t6, s3
                  sub          s0, a4, s9
                  nop
                  andi         s2, sp, -348
                  slli         s3, s9, 18
                  srl          sp, s3, a2
                  sltu         s9, t0, ra
777:              sll          t6, a0, a5
                  xor          t0, gp, t0
                  sll          ra, gp, a5
                  blt          t0, a0, 800f
                  addi         s9, t4, -81
                  nop
                  or           t0, sp, t6
                  xor          t0, s7, s2
                  bltu         s8, ra, 792f
                  lui          a7, 247800
                  blt          t0, t5, 797f
                  slt          s2, s8, t6
                  srl          a5, ra, s10
                  xori         t6, t2, -1720
                  blt          sp, a7, 810f
792:              srai         zero, s1, 1
                  and          s1, t6, ra
                  blt          a6, a0, 804f
                  auipc        a2, 807880
                  sll          a7, t2, a7
797:              slli         t0, t4, 11
                  srai         tp, a0, 3
                  andi         sp, s9, -1546
800:              srl          s6, s3, tp
                  xori         a7, s1, 1482
                  auipc        a0, 52692
                  slt          a6, t3, s7
804:              sltu         s2, s7, s6
                  srl          s7, s3, a4
                  andi         s1, t0, 578
                  sll          s0, ra, s11
                  beq          a0, s9, 823f
                  addi         s10, a1, -1271
810:              slli         ra, t0, 6
                  slli         a6, s7, 17
                  sub          a0, a2, t0
                  lui          a1, 47144
                  bltu         gp, s3, 833f
                  slt          s3, s8, sp
                  addi         t2, a1, 741
                  srl          t3, a7, t4
                  ori          zero, t6, -1995
                  bltu         a2, s11, 828f
                  srai         t5, t4, 5
                  bge          s1, zero, 829f
                  and          s7, s7, s10
823:              bltu         s8, s5, 840f
                  auipc        t0, 595674
                  bgeu         ra, ra, 837f
                  sub          t0, s0, t6
                  slli         t0, s7, 31
828:              andi         s5, s5, -3
829:              ori          a6, t3, 638
                  bne          t6, s5, 844f
                  sll          zero, a5, a2
                  sra          a1, ra, t1
833:              srai         gp, a5, 29
                  srai         tp, s2, 12
                  andi         sp, s2, -409
                  sra          a4, gp, t5
837:              lui          s9, 548656
                  auipc        ra, 963435
                  bge          s6, t4, 852f
840:              and          s3, t2, a0
                  xori         a1, a4, 1446
                  bgeu         sp, a7, 858f
                  bltu         s4, s0, 850f
844:              addi         a1, t5, 1316
                  srli         s5, s1, 16
                  sra          gp, t1, t0
                  sra          a3, s1, tp
                  srai         ra, s3, 24
                  andi         a4, s2, -997
850:              slti         s3, a7, -620
                  sll          tp, t0, s6
852:              bne          s4, sp, 865f
                  blt          s11, a0, 855f
                  sub          zero, s8, s7
855:              auipc        tp, 416395
                  bge          zero, s5, 863f
                  xor          s1, sp, t0
858:              slti         a0, tp, 1293
                  addi         a3, s5, 920
                  srli         t3, s8, 4
                  auipc        s9, 845265
                  blt          t2, t0, 879f
863:              srai         s3, a1, 3
                  bltu         zero, tp, 874f
865:              or           s3, a6, s4
                  auipc        a0, 636145
                  beq          a3, t4, 869f
                  bltu         s2, s9, 882f
869:              and          a2, t0, a0
                  bge          s2, s1, 872f
                  srli         s7, t4, 21
872:              or           a2, s9, a4
                  sll          a2, s8, gp
874:              or           s3, s2, s8
                  srli         a5, s3, 17
                  auipc        a4, 376758
                  ori          s2, s5, 1848
                  lui          s5, 638874
879:              sltiu        gp, ra, -2010
                  bne          s7, sp, 895f
                  andi         sp, t6, -772
882:              beq          s0, s2, 884f
                  slt          t1, s7, gp
884:              or           tp, sp, ra
                  xor          s10, a5, t1
                  bne          tp, a2, 892f
                  ori          a3, s3, 1490
                  srai         s10, s7, 14
                  slt          s1, s10, s2
                  slt          s11, a2, a7
                  slti         sp, s10, -2008
892:              lui          t6, 629250
                  beq          a3, a0, 911f
                  sra          a7, s3, s11
895:              slti         t6, t3, 332
                  bge          a1, t3, 903f
                  andi         t1, ra, 1904
                  ori          t6, a4, 213
                  auipc        a0, 246675
                  xor          a0, a6, a2
                  srai         sp, t6, 11
                  sll          a7, a5, s0
903:              bgeu         s9, t2, 916f
                  srai         a4, gp, 0
                  srli         t5, t0, 3
                  slli         t6, s0, 26
                  srai         zero, s0, 7
                  blt          a2, s3, 926f
                  bltu         a6, a2, 917f
                  bne          s1, gp, 923f
911:              xor          a4, s6, s1
                  srli         sp, zero, 29
                  slti         a6, s9, -847
                  addi         t6, a7, -913
                  addi         t0, s7, 1736
916:              xori         a6, zero, -2047
917:              srli         a3, s6, 15
                  slli         s3, sp, 3
                  sll          a2, a7, s1
                  slt          t3, s6, zero
                  beq          t6, t1, 938f
                  bltu         s6, s5, 937f
923:              bgeu         s10, t3, 933f
                  sltiu        t6, t6, 1165
                  and          a7, s7, s9
926:              sltiu        s2, s7, -785
                  nop
                  add          s5, a3, a5
                  sra          s2, tp, a7
                  sltiu        a1, t6, -222
                  andi         s11, ra, 401
                  sra          a7, t2, t1
933:              sub          t5, t0, t1
                  xori         s3, t6, 2043
                  bne          t0, s3, 952f
                  xor          s2, s1, a5
937:              andi         t0, sp, -605
938:              srl          a5, sp, t6
                  slti         s2, t0, 586
                  srli         t2, a0, 16
                  bne          a1, a7, 958f
                  beq          s5, s3, 944f
                  andi         t2, t1, -1551
944:              bne          a4, t3, 951f
                  blt          a5, s6, 964f
                  add          sp, tp, s11
                  slt          gp, ra, a4
                  sra          a2, s6, s11
                  sltiu        s2, s4, -1077
                  andi         s7, s5, 747
951:              addi         t3, a3, -230
952:              blt          s7, t6, 972f
                  blt          a7, s6, 963f
                  bge          gp, t5, 956f
                  slt          s11, s1, a4
956:              bltu         a6, t3, 975f
                  sll          a3, s4, a6
958:              srai         s2, ra, 13
                  addi         s3, s3, 1567
                  blt          s3, s8, 974f
                  bgeu         a6, s11, 968f
                  auipc        s2, 600230
963:              blt          gp, s1, 973f
964:              xori         s0, a4, -1412
                  srai         s11, s4, 29
                  slt          gp, s10, s3
                  blt          s8, s9, 979f
968:              sltu         a5, a0, s9
                  srli         sp, t2, 2
                  bltu         a6, s3, 972f
                  blt          t1, s4, 974f
972:              srl          a5, s4, s2
973:              sub          a3, a7, s7
974:              sll          s9, t4, a4
975:              bltu         s1, s2, 977f
                  addi         t5, a5, 1361
977:              and          s5, t2, s3
                  nop
979:              lui          s3, 680867
                  sll          t6, a6, a2
                  beq          s4, a2, 987f
                  blt          gp, s9, 996f
                  nop
                  slti         t1, s5, -1597
                  add          t0, a3, s1
                  or           a6, t0, s7
987:              sltu         a7, s10, s3
                  sra          s11, sp, t2
                  bge          s10, tp, 1004f
                  bne          sp, t0, 991f
991:              andi         s10, s3, -86
                  sltiu        s0, s2, 1364
                  bge          a3, a7, 1009f
                  xor          s9, s3, a1
                  srai         tp, a2, 3
996:              addi         zero, a3, -307
                  xori         s2, s5, 1357
                  sub          s1, a4, a4
                  blt          t5, s7, 1008f
                  ori          zero, s7, 361
                  and          s2, gp, t0
                  srl          s7, s10, zero
                  bge          a1, s5, 1005f
1004:             and          ra, tp, tp
1005:             ori          a3, a2, 1142
                  xor          s0, s1, a5
                  sub          a6, a5, gp
1008:             slti         a6, a2, -1662
1009:             xor          a3, a5, s11
                  andi         tp, s10, 184
                  bgeu         tp, s9, 1013f
                  bne          s1, t3, 1022f
1013:             xor          a4, s5, t6
                  addi         t3, zero, 3 #init loop 0 counter
                  sltu         a4, t6, s5
                  addi         s0, zero, 6 #init loop 0 limit
                  sll          gp, s11, a2
sub_4_9_0_t:      slt          s6, s5, a7
                  ori          gp, a7, -1208
                  slti         t0, a4, -731
                  addi         t3, t3, 7 #update loop 0 counter
                  slti         t0, a5, -410
                  xor          s11, s5, t1
                  and          t0, s5, t5
                  sltu         s6, s9, tp
                  sub          gp, s6, t5
                  srli         a4, s2, 28
                  xor          t2, a4, t2
                  xor          s6, s1, s10
                  auipc        t6, 992387
                  lui          a2, 649834
                  xor          a6, tp, gp
                  nop
                  ori          a4, s10, 368
                  srli         sp, a6, 29
                  sltiu        a7, s2, -1270
                  blt          t3, s0, sub_4_9_0_t #branch for loop 0
                  sll          s11, a4, s9
                  srai         s0, s3, 5
                  lui          a6, 997121
                  srli         s6, gp, 6
                  and          ra, s4, a6
                  srai         s9, s2, 10
                  lui          gp, 118821
                  auipc        tp, 246390
                  srli         t2, ra, 15
1022:             sltiu        a5, t1, 1654
                  auipc        t0, 332703
                  sltiu        a0, t0, 1554
                  andi         t1, s11, -1369
                  slt          s9, s10, a0
                  slli         t3, a6, 8
                  sub          t1, a6, s9
                  and          t6, a1, s5
                  add          t0, t1, t1
                  slli         a0, s1, 18
                  srli         a0, s7, 5
                  bltu         t5, s6, 1036f
                  nop
                  xori         s9, a6, 348
1036:             sll          t5, s9, a6
                  sll          a7, t2, t3
                  sll          s10, a0, s11
                  sltiu        sp, s6, 465
                  or           s7, a4, s3
                  bge          t3, s10, 1047f
                  auipc        a2, 425673
                  ori          s2, a1, 1977
                  bge          ra, t1, 1060f
                  bne          t2, s10, 1064f
                  srai         a7, s7, 4
1047:             and          s1, s7, s10
                  srl          s1, a2, a6
                  sltiu        t6, a4, 1281
                  andi         t1, t2, -505
                  andi         tp, t5, 1885
                  ori          a1, a7, 981
                  andi         s1, s3, 527
                  sra          a5, s0, gp
                  andi         t1, s3, 1115
                  nop
                  bge          sp, s9, 1074f
                  beq          a3, s7, 1072f
                  lui          sp, 808228
1060:             beq          t6, a1, 1067f
                  slti         t5, t2, 9
                  lui          t5, 879823
                  beq          sp, t4, 1073f
1064:             sltu         gp, t0, s9
                  slt          a1, s9, s5
                  add          s5, a2, a4
1067:             slt          s3, a6, s6
                  slti         a5, s2, -1841
                  slt          s3, a1, a6
                  auipc        s7, 646807
                  lui          sp, 586250
1072:             and          a2, gp, a4
1073:             slli         s0, t2, 3
1074:             auipc        sp, 118377
                  srl          a4, s8, s6
                  srl          s11, t6, s9
                  ori          a5, t6, 1338
                  sltiu        a4, a4, 444
                  bgeu         s9, t4, 1096f
                  lui          s2, 997593
                  or           a3, tp, a6
                  and          s11, a1, a0
                  andi         s6, s1, -1245
                  bne          a1, ra, 1086f
                  sll          t0, s0, s7
1086:             auipc        a1, 985399
                  lui          a6, 385682
                  slti         s11, a3, 893
                  slti         s6, a0, 517
                  add          tp, s5, s8
                  bltu         t5, s2, 1109f
                  ori          s7, a3, 411
                  add          a7, sp, a5
                  slt          a5, a7, ra
                  slli         s10, t0, 11
1096:             bgeu         s8, s5, 1098f
                  srli         t2, a5, 6
1098:             bge          t0, s3, 1113f
                  auipc        gp, 804961
                  lui          zero, 128586
                  bgeu         s8, s10, 1118f
                  and          a0, a7, sp
                  nop
                  sll          s11, zero, s7
                  bltu         ra, a5, 1112f
                  xor          s3, sp, a1
                  andi         t3, s7, 1430
                  add          s1, a1, t0
1109:             srli         gp, ra, 16
                  auipc        a1, 663873
                  srli         a2, s0, 14
1112:             nop
1113:             lui          s7, 174349
                  ori          a5, a1, -576
                  beq          s10, a4, 1127f
                  sra          t0, t3, t2
                  beq          s11, a0, 1137f
1118:             xori         a4, s4, 1498
                  srli         tp, t2, 3
                  nop
                  xori         t2, s8, -1596
                  srli         s10, a7, 4
                  ori          ra, s7, 279
                  bge          s1, s7, 1132f
                  auipc        a6, 514223
                  xor          a6, tp, t0
1127:             xor          gp, s6, s4
                  add          s5, t3, sp
                  or           s7, a5, a3
                  lui          s10, 517620
                  nop
1132:             sltiu        s1, t2, -1650
                  sltiu        sp, s0, 879
                  blt          t6, t5, 1148f
                  slti         a7, s9, -238
                  blt          t3, sp, 1149f
1137:             ori          t0, a2, 65
                  slti         t5, s10, 1701
                  add          t2, s10, zero
                  srl          a2, sp, a3
                  sltu         t0, a7, tp
                  bgeu         s1, t2, 1161f
                  srl          s2, gp, a2
                  addi         a7, s11, -1330
                  srl          s6, s4, t1
                  add          s2, t4, a7
                  blt          zero, s2, 1160f
1148:             nop
1149:             bgeu         t3, s4, 1158f
                  lui          a7, 40335
                  sll          a6, s11, s10
                  sra          s10, a1, s8
                  slti         a7, ra, 987
                  beq          s10, a7, 1164f
                  slt          t0, s0, a3
                  beq          t2, a5, 1157f
1157:             slti         t5, s6, 230
1158:             xori         zero, tp, -1943
                  xor          a2, t4, t3
1160:             andi         s10, s3, 1094
1161:             addi         tp, sp, 1902
                  ori          a3, a1, -962
                  and          t2, t2, t1
1164:             xor          a7, s6, a1
                  bltu         ra, t6, 1172f
                  sub          a4, a2, a3
                  slli         t0, s5, 12
                  slt          t0, t3, a1
                  sltiu        s7, a4, -411
                  and          a3, a2, s0
                  addi         s11, a4, 1500
1172:             andi         a4, s5, -1912
                  sltu         a1, a2, t1
                  srli         a4, s1, 0
                  xori         t6, a2, 894
                  ori          sp, t2, 1503
                  bge          t3, a3, 1192f
                  beq          t5, s3, 1185f
                  bgeu         t4, a4, 1192f
                  addi         t2, t5, 361
                  slti         s5, t5, -1024
                  auipc        s0, 733752
                  bgeu         zero, s10, 1192f
                  slt          a6, zero, a0
1185:             beq          gp, a4, 1192f
                  bgeu         s1, s8, 1188f
                  sra          a6, a7, s1
1188:             bne          t4, a5, 1192f
                  bltu         s6, sp, 1192f
                  and          a1, t4, s4
                  bltu         a4, s5, 1192f
1192:             slti         ra, ra, 1229
                  xor          s3, t0, s11
                  lw           a3, 4(s4)
                  sltu         a6, t5, s6
                  addi         s4, s4, 28
                  srai         zero, a4, 25
                  srl          tp, a6, s1
                  slli         s3, a3, 16
                  addi         t5, a3, 489
                  auipc        a7, 914030
                  sltu         s6, a5, t0
                  andi         s10, s5, 1282
1662:             addi x13, x13, 1
1662:             jalr x13, x13, 0
sub_5:            sltiu        a6, t1, -501
                  blt          a4, s1, sub_5_stack_p
sub_5_stack_p:    addi         s4, s4, -64
                  auipc        s10, 62749
                  sw           a3, 4(s4)
                  slt          a7, zero, tp
                  add          ra, s7, a6
                  bne          t2, ra, 6f
                  sltiu        s0, t2, -945
                  beq          t1, s7, 14f
                  addi         s0, s5, 1664
                  blt          s1, s5, 24f
                  beq          a6, s6, 22f
6:                slt          s1, t4, s4
                  and          s9, a7, sp
                  bltu         a2, gp, 21f
                  auipc        s10, 746774
                  blt          s8, t3, 27f
                  xor          s6, s3, s10
                  sub          s10, s2, a1
                  bltu         a6, t5, 26f
14:               sra          t1, t6, a7
                  srl          a5, a7, s9
                  xor          a4, ra, a0
                  nop
                  sra          a4, s6, s0
                  sub          a4, tp, t6
                  auipc        a6, 779527
21:               xor          s10, a7, s11
22:               auipc        t3, 44136
                  bgeu         t2, s3, 27f
24:               xor          s11, a6, tp
                  sltiu        gp, a5, -2030
26:               or           t6, a1, a1
27:               add          s6, s2, ra
                  or           a1, t1, t1
                  sub          gp, a6, s4
                  srai         a6, t1, 23
                  bne          a4, t1, 34f
                  bne          a0, s10, 34f
                  bltu         t3, s4, 34f
34:               slli         s10, s7, 31
                  lw           a3, 4(s4)
                  sltu         s11, s5, a2
                  addi         s4, s4, 64
                  sll          t6, t5, s5
                  auipc        s11, 566597
47:               addi x7, x13, 1
47:               jalr x7, x7, 0
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
                  add x24, x20, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x25, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x25, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x25, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x25, x22, ecall_handler
                  li x22, 0x1
                  beq x25, x22, instr_fault_handler
                  li x22, 0x5
                  beq x25, x22, load_fault_handler
                  li x22, 0x7
                  beq x25, x22, store_fault_handler
                  li x22, 0xc
                  beq x25, x22, pt_fault_handler
                  li x22, 0xd
                  beq x25, x22, pt_fault_handler
                  li x22, 0xf
                  beq x25, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

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
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x20, x24, zero
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
                  add x20, x24, zero
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
                  add x20, x24, zero
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
                  add x20, x24, zero
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
                  add x20, x24, zero
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
                  add x20, x24, zero
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
