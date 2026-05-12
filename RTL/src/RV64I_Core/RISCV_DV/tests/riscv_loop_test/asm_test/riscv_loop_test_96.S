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
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
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
                  li x1, 0x3
                  li x2, 0x2
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0xf0fb2db5
                  li x7, 0xf0e39c24
                  li x8, 0xc
                  li x9, 0xe2792210
                  li x10, 0xf6a714b0
                  li x11, 0xa
                  li x12, 0x9
                  li x14, 0xf8eac9c9
                  li x15, 0xd756b836
                  li x16, 0x4
                  li x17, 0x1e48a2bd
                  li x18, 0xbb91af57
                  li x19, 0x0
                  li x20, 0xfb8a729a
                  li x21, 0x15671eb3
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0x1da0985e
                  li x26, 0x0
                  li x27, 0xef0162d7
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x80000000
                  la x31, user_stack_end
main:             addi         t4, zero, 5 #init loop 0 counter
                  addi         a5, t6, 1595
                  addi         a6, zero, 15 #init loop 0 limit
                  srai         t0, a1, 17
                  srli         s11, s5, 21
                  slti         a0, s7, 1338
main_1_0_t:       sltiu        s3, sp, 209
                  slli         s6, s11, 14
                  nop
                  addi         t4, t4, 10 #update loop 0 counter
                  srai         ra, t1, 24
                  bne          t4, a6, main_1_0_t #branch for loop 0
                  xori         t3, a1, 464
                  addi         tp, zero, -8 #init loop 1 counter
                  addi         ra, zero, -17 #init loop 1 limit
main_0_1_t:       slti         s4, s5, -390
                  addi         tp, tp, -9 #update loop 1 counter
                  addi         t0, zero, -7 #init loop 0 counter
                  addi         t2, zero, -16 #init loop 0 limit
main_0_0_t:       add          gp, s6, s10
                  addi         t0, t0, -9 #update loop 0 counter
                  srai         t5, t2, 26
                  beq          t0, t2, main_0_0_t #branch for loop 0
                  beq          tp, ra, main_0_1_t #branch for loop 1
                  sra          s4, s11, a6
                  lui          s6, 207515
                  addi         s5, a4, -36
                  sub          tp, a4, t1
                  sll          ra, s6, t2
                  srai         s11, a1, 1
                  slli         t3, s4, 9
                  sltu         s7, s4, t3
                  sltiu        s0, s7, -1693
                  xor          a4, s0, a2
                  xor          a1, t2, a2
                  beq          t5, a6, 26f
                  beq          s5, s10, 16f
                  sub          s9, s11, s10
                  beq          t5, a4, 19f
                  or           s6, sp, a6
                  bne          t6, a3, 30f
16:               slti         s6, t0, 208
                  auipc        ra, 15135
                  and          s5, t3, a2
19:               nop
                  sll          s4, tp, a5
                  add          a6, s4, t3
                  srl          gp, a1, a5
                  bge          s6, s8, 24f
24:               beq          a4, gp, 43f
                  nop
26:               slli         t1, t3, 6
                  sltiu        a2, s2, 1014
                  nop
                  add          tp, s1, s5
30:               ori          tp, a4, 1985
                  sltu         s3, s8, gp
                  bne          a7, s5, 44f
                  or           s11, a1, gp
                  andi         s6, a7, -1587
                  andi         zero, sp, 1683
                  slt          ra, a2, s4
                  bgeu         t5, t4, 43f
                  bne          a0, t0, 46f
                  or           s6, s2, sp
                  blt          s6, s3, 50f
                  sltu         s7, a6, s9
                  bltu         a6, s4, 60f
43:               xori         t4, s10, 769
44:               auipc        t1, 171434
                  sra          a5, s0, s4
46:               bltu         t1, sp, 54f
                  addi         s8, sp, 291
                  bge          s7, a1, 54f
                  add          a4, t3, a4
50:               blt          a4, a3, 63f
                  bgeu         t3, s8, 52f
52:               slli         sp, zero, 27
                  add          a2, s5, s1
54:               addi         ra, s7, -905
                  ori          s6, a1, 639
                  auipc        a5, 806126
                  sltu         gp, s11, s4
                  sltiu        s10, a5, 1455
                  add          zero, t3, tp
                  la           s11, sub_1
                  and          t4, s8, s2
                  andi         gp, sp, 434
                  xori         a0, a6, -757
                  sll          s5, s5, t1
                  addi         s11, s11, -199
                  sll          s6, s4, s10
                  sltiu        t4, a2, -448
main_j1:          jalr         s4, s11, 200 #jump main -> sub_1
                  or           t4, s7, s2
60:               auipc        t2, 1038102
                  slti         s2, s4, 963
                  sra          a7, s2, a7
63:               beq          t2, a1, 69f
                  bltu         a1, a6, 70f
                  andi         s7, s4, 1685
                  bne          s6, t3, 85f
                  xori         a7, s3, 533
                  sltu         s6, a4, a2
69:               bltu         s0, a6, 79f
70:               xori         s10, a4, -5
                  srai         t5, a4, 15
                  xor          t0, s3, s6
                  auipc        s0, 873324
                  xori         t2, sp, -1009
                  or           t4, t1, ra
                  add          s0, s11, a7
                  blt          s5, t2, 80f
                  bne          s7, s6, 97f
79:               slli         t4, s5, 2
80:               bge          s0, s2, 94f
                  srai         s7, a7, 18
                  and          s8, t3, a1
                  bltu         tp, ra, 99f
                  srli         s7, s7, 30
85:               xor          a0, s11, s4
                  bge          s3, t4, 102f
                  auipc        tp, 35901
                  ori          t1, a4, -1742
                  sub          s9, t1, a7
                  blt          a1, s5, 104f
                  sll          tp, a3, s8
                  ori          a5, s8, -504
                  sltiu        s0, t2, -1418
94:               lui          s5, 220461
                  sltu         tp, s6, t2
                  slli         s4, s7, 14
97:               add          t3, s4, t2
                  sll          t0, a1, s3
99:               nop
                  sll          t1, a4, a1
                  sub          a4, t5, gp
102:              srl          t0, t0, s8
                  beq          ra, a7, 104f
104:              auipc        t1, 910517
                  la x9, test_done
                  jalr x0, x9, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            slli         gp, a7, 20
                  lui          t1, 798896
                  srli         a6, a6, 23
                  slt          a0, s2, a0
                  sub          a4, a1, gp
                  lui          a6, 154249
                  nop
                  bgeu         a2, tp, sub_3_stack_p
                  andi         sp, a4, 111
sub_3_stack_p:    addi         t6, t6, -52
                  sub          t0, zero, t1
                  sw           s4, 4(t6)
                  auipc        s11, 208550
                  la           a7, sub_4
                  and          a0, a4, zero
                  sra          a6, s9, t6
                  xor          t1, s0, s7
                  sub          zero, s11, t0
                  addi         a7, a7, 890
                  xori         a5, s3, 1983
                  blt          t4, a7, sub_3_j5 #branch to jump instr
                  sub          t5, s4, s4
                  srai         a4, s5, 12
sub_3_j5:         jalr         s4, a7, -890 #jump sub_3 -> sub_4
                  beq          ra, a3, sub_3_j6 #branch to jump instr
                  sra          a4, t6, a2
                  and          s6, a3, a0
                  lui          zero, 470870
                  sra          zero, a0, a0
                  auipc        zero, 1003863
                  addi         s2, t2, -1198
                  or           s7, a7, a0
sub_3_j6:         jal          s4, sub_4 #jump sub_3 -> sub_4
                  addi         s4, zero, -7 #init loop 0 counter
                  lui          s11, 749374
                  slt          s11, a1, s11
                  sll          a2, s3, s2
                  slli         t5, ra, 15
                  sll          s3, tp, a3
                  addi         a4, t0, 1222
                  add          s2, a5, s2
                  add          a1, s1, s10
                  and          s8, s10, s4
                  xori         s0, zero, -1930
                  addi         t3, zero, 2 #init loop 0 limit
sub_3_2_0_t:      sltiu        s2, s6, -1821
                  xori         a5, s4, -1631
                  sub          a4, a5, t6
                  addi         s4, s4, 9 #update loop 0 counter
                  xori         s11, s9, 459
                  nop
                  nop
                  bne          s4, t3, sub_3_2_0_t #branch for loop 0
                  sub          zero, t1, s7
                  addi         t4, zero, 9 #init loop 1 counter
                  slt          a7, t0, t5
                  sltiu        a1, zero, 464
                  andi         s10, t2, 1566
                  addi         s5, zero, 9 #init loop 1 limit
                  slt          s2, s3, gp
                  srai         s0, s0, 9
                  xor          t1, s3, t4
                  auipc        s0, 759504
sub_3_1_1_t:      or           zero, t1, t5
                  sra          a6, s2, s10
                  addi         t0, t2, 1482
                  addi         t4, t4, -8 #update loop 1 counter
                  addi         s6, zero, 3 #init loop 0 counter
                  sra          a5, t5, t2
                  addi         a2, zero, 15 #init loop 0 limit
                  slli         ra, a7, 13
sub_3_1_0_t:      nop
                  addi         s6, s6, 6 #update loop 0 counter
                  bne          s6, a2, sub_3_1_0_t #branch for loop 0
                  andi         t2, s8, -1274
                  addi         a6, s7, 1538
                  sltiu        s11, s3, 1598
                  addi         s7, t0, 1820
                  sltiu        s11, s5, 743
                  xori         t0, a1, -289
                  xor          ra, s3, s3
                  bgeu         t4, s5, sub_3_1_1_t #branch for loop 1
                  slli         t1, a7, 19
                  addi         t5, zero, 7 #init loop 1 counter
                  sltiu        a5, s2, 609
                  addi         s9, zero, 7 #init loop 1 limit
                  or           t4, a2, s8
sub_3_0_1_t:      add          s2, sp, t1
                  slti         s6, s2, -271
                  xor          s5, a6, s3
                  addi         t5, t5, -6 #update loop 1 counter
                  sra          s0, s9, s2
                  addi         s7, zero, 4 #init loop 0 counter
                  sll          s3, s3, a4
                  addi         ra, zero, -6 #init loop 0 limit
                  slti         a4, a2, -659
sub_3_0_0_t:      slti         t4, s8, 1373
                  addi         s7, s7, -5 #update loop 0 counter
                  slt          s2, a1, s0
                  bge          s7, ra, sub_3_0_0_t #branch for loop 0
                  sra          a5, s10, s11
                  bgeu         t5, s9, sub_3_0_1_t #branch for loop 1
                  srl          s3, t6, t5
                  bge          s6, t4, 1f
1:                srl          t0, a0, s8
                  srai         s3, s10, 6
                  ori          zero, ra, 370
                  slti         tp, s5, 479
                  beq          sp, s8, 13f
                  slti         s0, s3, -373
                  lui          ra, 65701
                  andi         gp, t1, 73
                  sll          sp, s10, s11
                  lui          s9, 281556
                  sltiu        sp, t1, 558
                  bge          a4, a1, 30f
13:               and          s7, s3, sp
                  addi         s11, t5, 68
                  lui          a5, 421514
                  add          tp, s0, a2
                  lui          t3, 1014517
                  lui          zero, 332932
                  srai         s5, s2, 22
                  sltiu        gp, a5, -711
                  srai         gp, s4, 10
                  auipc        a4, 614789
                  sll          a1, gp, s2
                  add          s2, zero, s6
                  bgeu         t6, s9, 30f
                  xori         a0, a1, -1426
                  blt          tp, s2, 29f
                  addi         s3, a4, 1789
29:               xori         s4, a7, -1568
30:               bgeu         a5, s9, 41f
                  sltiu        t5, s7, 1712
                  srl          t4, a2, s1
                  slti         a7, tp, 1818
                  sltiu        s6, sp, 536
                  bgeu         s3, a4, 46f
                  sltu         a2, s3, a5
                  nop
                  xori         a1, sp, 1091
                  sub          s3, t1, s6
                  xori         s3, a1, -400
41:               slli         t2, s11, 26
                  blt          t5, zero, 51f
                  slti         s6, gp, 1231
                  xor          s2, t1, t5
                  sltu         zero, a2, t5
46:               nop
                  nop
                  srai         s10, tp, 31
                  ori          t3, a1, -1061
                  lui          s6, 861326
51:               srai         a4, zero, 26
                  slt          a0, t0, a0
                  bge          t6, t1, 68f
                  bltu         a1, s1, 59f
                  auipc        gp, 328179
                  xori         s9, s11, 152
                  auipc        t0, 144740
                  srli         s9, a6, 10
59:               srl          a6, gp, a3
                  add          s6, s4, t0
                  sltu         ra, zero, s4
                  add          gp, t5, s4
                  ori          s11, a0, 2028
                  nop
                  add          a5, t6, zero
                  auipc        a6, 789528
                  auipc        gp, 42021
68:               sub          s9, a5, t3
                  bltu         a0, a2, 79f
                  bgeu         ra, t4, 83f
                  auipc        gp, 132666
                  nop
                  bge          t4, s0, 87f
                  blt          s10, t1, 75f
75:               srli         s4, t4, 20
                  blt          ra, a2, 92f
                  bne          s3, t0, 90f
                  ori          sp, t6, -991
79:               slt          a7, s0, s6
                  slli         s10, sp, 9
                  auipc        s7, 77245
                  sub          a0, t3, a2
83:               sra          a5, s2, sp
                  add          s3, a4, a6
                  blt          s5, a5, 87f
                  srai         s5, a2, 26
87:               slli         tp, a4, 9
                  sub          s0, t6, t0
                  add          s9, s6, s6
90:               sll          a7, s1, sp
                  srli         s8, s8, 20
92:               addi         t0, t5, -793
                  bltu         t5, tp, 98f
                  slti         t5, a6, 1310
                  sra          s8, s5, s2
                  sra          t0, t4, a7
                  bge          s10, s0, 112f
98:               sll          t5, a6, a3
                  bgeu         tp, tp, 108f
                  sra          t0, s5, s10
                  sltiu        s0, a2, -640
                  addi         t2, a5, 1899
                  ori          s6, gp, -255
                  ori          s9, a7, -1002
                  lui          s6, 28552
                  or           s3, sp, s5
                  bne          s11, s10, 111f
108:              bgeu         s3, sp, 118f
                  bgeu         s11, t0, 118f
                  sltiu        s4, t3, -1795
111:              slti         s3, s4, -911
112:              addi         s4, zero, -1686
                  xori         ra, t3, 1462
                  srli         t1, s6, 12
                  bgeu         s9, a5, 121f
                  bge          a0, t4, 128f
                  add          s3, s2, a0
118:              and          a7, zero, s5
                  ori          s11, a0, -344
                  xori         sp, ra, -998
121:              slti         a6, a4, -1520
                  add          gp, s7, s9
                  and          a5, a7, s4
                  slt          s3, a6, s9
                  xori         a4, a3, -1170
                  addi         s8, s9, -858
                  xor          t2, a7, t4
128:              bne          s1, a3, 148f
                  srai         ra, sp, 8
                  bltu         s3, s2, 147f
                  sltu         t0, a0, s8
                  slt          gp, t0, s9
                  and          s2, gp, t6
                  sll          t2, t4, t6
                  slt          s3, a5, s3
                  blt          t4, t3, 140f
                  and          s9, a2, s1
                  blt          t3, a6, 154f
                  lui          s3, 450145
140:              sub          a2, a4, s8
                  slli         a1, t2, 5
                  bgeu         a2, a6, 153f
                  bgeu         t0, t1, 145f
                  slli         s11, a6, 21
145:              beq          t1, a2, 146f
146:              add          s10, tp, t0
147:              add          s6, s7, s3
148:              nop
                  and          a5, s4, zero
                  bge          s7, a7, 159f
                  bltu         sp, s7, 155f
                  slti         s6, s5, -737
153:              and          a7, tp, s11
154:              slti         ra, a2, 2030
155:              blt          a1, t4, 160f
                  add          s9, a2, ra
                  sltu         s0, a1, t1
                  bgeu         gp, sp, 169f
159:              beq          a1, s3, 167f
160:              sltiu        sp, t6, 1311
                  bne          zero, tp, 174f
                  sltu         a7, sp, t3
                  sltu         a0, t5, s7
                  sra          a6, s6, s11
                  bne          t4, a0, 175f
                  slt          s3, gp, s11
167:              sra          t3, a6, t0
                  blt          t6, ra, 169f
169:              addi         tp, s1, 1454
                  bgeu         t0, s10, 179f
                  slli         a0, t3, 28
                  beq          s3, a7, 178f
                  beq          s5, s6, 177f
174:              srli         s4, t4, 7
175:              andi         gp, t1, -735
                  sra          t3, s3, t6
177:              or           a6, s7, s1
178:              bltu         s11, t3, 187f
179:              and          t3, s1, t4
                  beq          s10, s1, 191f
                  sltu         t2, s0, s11
                  bge          s9, s11, 191f
                  slt          t0, t1, sp
                  sll          ra, s10, a5
                  srai         a0, a7, 26
                  srli         s6, s2, 8
187:              slli         s9, s10, 1
                  sltu         s5, s5, s6
                  bne          s8, ra, 191f
                  sll          t3, s2, s3
191:              nop
                  slti         gp, a2, 695
                  sub          t3, s5, s6
                  srl          ra, s2, s3
                  lw           s4, 4(t6)
                  addi         t6, t6, 52
                  srli         t5, s5, 1
                  xori         a6, s8, 787
                  or           a4, s8, s7
303:              addi x5, x20, 1
303:              jalr x5, x5, 0
sub_4:            sltu         tp, s3, tp
                  sll          s0, t4, tp
                  srli         sp, s10, 29
                  addi         t6, t6, -64
                  sll          tp, t6, s9
                  sw           s4, 4(t6)
                  addi         a0, a6, -1097
                  sltiu        t0, a5, 1716
                  sltiu        s2, s8, 1543
                  lui          s5, 799402
                  slti         t5, a7, -1040
                  la           t0, sub_5
                  xori         s11, s8, 962
                  slt          s7, gp, t6
                  ori          ra, a3, -196
                  addi         t0, t0, -682
                  slli         zero, t4, 17
                  auipc        s3, 338350
                  blt          s3, a0, sub_4_j7 #branch to jump instr
                  sra          s7, s1, gp
sub_4_j7:         jalr         s4, t0, 683 #jump sub_4 -> sub_5
                  sltu         s2, s2, a3
                  ori          zero, a6, 1981
                  auipc        a5, 545887
                  blt          a0, t4, sub_4_j8 #branch to jump instr
                  lui          s6, 845198
                  slti         gp, s4, -365
                  xor          t4, ra, s8
sub_4_j8:         jal          s4, sub_5 #jump sub_4 -> sub_5
                  andi         s2, a4, -905
                  addi         s5, s9, 994
                  srai         s0, tp, 29
                  srli         s0, s0, 12
                  andi         t1, a5, 692
                  andi         tp, a5, 1498
                  bne          t5, s3, 15f
                  srai         gp, s5, 15
                  nop
                  auipc        zero, 384676
                  bge          tp, t5, 16f
                  nop
                  blt          s2, gp, 23f
                  andi         a6, t1, 500
                  srl          s8, s2, t1
15:               bgeu         t4, gp, 28f
16:               or           s3, a0, s1
                  sra          s2, s4, s0
                  slti         ra, ra, -1000
                  sra          a5, a7, s7
                  ori          s2, gp, 5
                  andi         s9, a3, -325
                  sll          s6, zero, t4
23:               srai         zero, zero, 12
                  bltu         s2, a5, 26f
                  slt          a7, zero, t0
26:               bge          a4, a3, 28f
                  ori          ra, s6, 701
28:               sra          s4, s0, s0
                  auipc        t4, 161309
                  nop
                  or           zero, a1, t3
                  lw           s4, 4(t6)
                  srai         sp, s3, 1
                  add          t2, a3, a3
                  nop
                  lui          t1, 295454
                  addi         t6, t6, 64
                  auipc        s8, 694139
68:               addi x6, x20, 1
68:               jalr x6, x6, 0
sub_1:            beq          s2, t3, sub_1_stack_p
                  sltu         sp, a5, t1
                  auipc        s7, 420583
                  xori         a7, a4, -1101
                  srl          gp, s10, s6
sub_1_stack_p:    addi         t6, t6, -20
                  slt          s9, t0, s4
                  sw           s4, 4(t6)
                  slt          a0, a4, s8
                  xor          s8, t4, s11
                  ori          s6, s1, 389
                  slti         zero, s8, -1470
                  sltiu        a6, gp, 167
                  sltiu        s7, t0, 1725
                  bne          zero, t5, sub_1_j3 #branch to jump instr
                  andi         s0, t3, 1889
                  srli         s7, t4, 4
                  slti         a6, s4, 844
                  slti         s3, t1, -1466
                  srli         t5, t2, 1
sub_1_j3:         jal          s4, sub_2 #jump sub_1 -> sub_2
                  addi         t4, zero, 7 #init loop 0 counter
                  sra          s0, a4, gp
                  addi         tp, zero, -9 #init loop 0 limit
sub_1_17_0_t:     addi         s7, s6, 1606
                  sltu         s8, s5, a0
                  ori          a4, s8, 290
                  addi         t4, t4, -8 #update loop 0 counter
                  srli         s0, s8, 7
                  srai         a1, s9, 7
                  sra          a6, s5, gp
                  beq          t4, tp, sub_1_17_0_t #branch for loop 0
                  srai         s3, t2, 23
                  addi         a5, zero, -1 #init loop 1 counter
                  addi         s0, zero, -8 #init loop 1 limit
                  srli         s7, t6, 25
sub_1_2_1_t:      sltu         s7, t6, s9
                  addi         a5, a5, -4 #update loop 1 counter
                  addi         a1, zero, -7 #init loop 0 counter
                  addi         a2, zero, 8 #init loop 0 limit
                  nop
                  srl          s6, t2, t6
                  or           ra, ra, s7
sub_1_2_0_t:      sltiu        s8, s7, 1135
                  sltu         s7, zero, s9
                  addi         a1, a1, 3 #update loop 0 counter
                  slt          a4, tp, t0
                  bne          a1, a2, sub_1_2_0_t #branch for loop 0
                  sll          s2, s9, s2
                  sltiu        tp, a6, 1605
                  bge          a5, s0, sub_1_2_1_t #branch for loop 1
                  srl          sp, t5, a3
                  addi         t4, zero, -3 #init loop 0 counter
                  add          t5, tp, s9
                  add          s11, ra, ra
                  sra          s0, t2, s9
                  addi         a7, zero, -19 #init loop 0 limit
                  xori         zero, s6, 847
                  andi         a6, a5, 1551
                  nop
sub_1_6_0_t:      xori         tp, s11, 883
                  addi         t4, t4, -2 #update loop 0 counter
                  or           s3, a0, a4
                  andi         a2, s7, 1068
                  and          s0, s3, t3
                  srai         a1, s1, 7
                  beq          t4, a7, sub_1_6_0_t #branch for loop 0
                  srai         s2, s6, 3
                  addi         t3, zero, 0 #init loop 0 counter
                  auipc        sp, 958989
                  srai         zero, s10, 22
                  sltu         s10, a0, a5
                  srli         s9, s1, 21
                  addi         s6, ra, -500
                  sltiu        a7, t6, -1349
                  srl          ra, a6, tp
                  addi         t2, zero, 16 #init loop 0 limit
sub_1_23_0_t:     auipc        t1, 106650
                  nop
                  addi         t3, t3, 3 #update loop 0 counter
                  slli         a7, ra, 30
                  ori          s10, s6, 1499
                  lui          s3, 151855
                  and          s6, s6, s1
                  blt          t3, t2, sub_1_23_0_t #branch for loop 0
                  addi         t1, a6, -1228
                  addi         t2, zero, -4 #init loop 0 counter
                  addi         s8, zero, 16 #init loop 0 limit
                  sub          zero, s10, s0
sub_1_22_0_t:     auipc        s7, 292501
                  sltiu        tp, a7, 737
                  addi         t2, t2, 1 #update loop 0 counter
                  xor          a0, s9, s0
                  bltu         t2, s8, sub_1_22_0_t #branch for loop 0
                  sltiu        zero, a6, -1196
                  addi         s7, zero, -8 #init loop 0 counter
                  auipc        sp, 679911
                  addi         s5, zero, 2 #init loop 0 limit
                  slt          t4, t3, tp
                  or           t4, s6, a3
sub_1_0_0_t:      lui          s3, 173460
                  addi         s7, s7, 10 #update loop 0 counter
                  nop
                  blt          s7, s5, sub_1_0_0_t #branch for loop 0
                  lui          tp, 861360
                  addi         s0, zero, 8 #init loop 1 counter
                  sll          a7, a3, tp
                  addi         tp, zero, 7 #init loop 1 limit
                  nop
                  sra          zero, t6, s5
                  slti         a0, s10, -1919
                  srli         s9, s0, 31
                  or           sp, s9, a3
sub_1_28_1_t:     addi         a0, ra, -571
                  or           a5, s10, a0
                  andi         s9, s4, 520
                  and          t2, zero, a1
                  xori         a0, sp, 1552
                  srl          a5, s7, gp
                  addi         s0, s0, -5 #update loop 1 counter
                  srl          sp, ra, a1
                  addi         a6, zero, 9 #init loop 0 counter
                  srai         t5, a5, 22
                  addi         t1, zero, -3 #init loop 0 limit
                  sltu         a0, s7, a4
sub_1_28_0_t:     ori          s7, a5, 112
                  addi         a6, a6, -4 #update loop 0 counter
                  xori         s2, sp, -411
                  sra          a0, s1, t0
                  slli         a4, s5, 12
                  andi         s7, s1, 479
                  bne          a6, t1, sub_1_28_0_t #branch for loop 0
                  sltu         s9, tp, t3
                  sra          a2, s2, t0
                  slti         s2, s6, -1897
                  bgeu         s0, tp, sub_1_28_1_t #branch for loop 1
                  ori          sp, a3, 889
                  addi         a4, zero, 5 #init loop 1 counter
                  sll          s2, s6, s2
                  lui          zero, 747892
                  ori          s8, t5, 8
                  srli         a5, ra, 27
                  auipc        a0, 302185
                  sra          t2, s5, t2
                  addi         a1, zero, 16 #init loop 1 limit
                  andi         t2, s1, -1655
sub_1_16_1_t:     andi         s8, tp, -468
                  addi         a4, a4, 7 #update loop 1 counter
                  slti         s2, a7, -994
                  addi         sp, zero, 6 #init loop 0 counter
                  sll          a6, t6, t3
                  addi         tp, zero, 12 #init loop 0 limit
sub_1_16_0_t:     sub          s9, s3, s6
                  nop
                  srl          s3, s1, t2
                  sltu         s9, s8, s7
                  or           t3, s9, t2
                  and          a0, s11, s6
                  lui          t3, 672586
                  sltu         s3, a1, t2
                  slli         s5, s1, 4
                  addi         sp, sp, 3 #update loop 0 counter
                  ori          t0, t4, 1968
                  bne          sp, tp, sub_1_16_0_t #branch for loop 0
                  srl          zero, s1, s2
                  srl          s11, a2, t6
                  and          s2, s6, t2
                  slt          zero, a7, t6
                  xor          t3, ra, s1
                  and          s6, a6, t6
                  bltu         a4, a1, sub_1_16_1_t #branch for loop 1
                  xori         a5, a4, 583
                  addi         a6, zero, -10 #init loop 1 counter
                  ori          s11, a0, 973
                  xor          ra, t0, a3
                  sra          s0, t4, t5
                  ori          s4, a5, 605
                  addi         s8, zero, 16 #init loop 1 limit
                  lui          t0, 97119
sub_1_27_1_t:     nop
                  add          t3, tp, t5
                  addi         a6, a6, 3 #update loop 1 counter
                  add          sp, t5, s9
                  add          tp, a4, a0
                  addi         a4, zero, 2 #init loop 0 counter
                  lui          tp, 622152
                  addi         t1, zero, -4 #init loop 0 limit
                  sra          s7, t6, t6
                  and          t0, a6, s0
                  sra          t2, t2, s1
sub_1_27_0_t:     nop
                  and          a2, t2, tp
                  addi         a4, a4, -2 #update loop 0 counter
                  bge          a4, t1, sub_1_27_0_t #branch for loop 0
                  sltu         sp, a1, s8
                  lui          a0, 617005
                  sra          a2, s7, s11
                  sra          sp, t4, s3
                  lui          a0, 841728
                  and          a7, s1, s10
                  srai         a5, gp, 19
                  sra          ra, s11, t2
                  sra          s11, a2, t2
                  sra          s4, t5, s3
                  bltu         a6, s8, sub_1_27_1_t #branch for loop 1
                  auipc        s7, 907850
                  addi         s7, zero, 10 #init loop 0 counter
                  xor          s6, t3, s0
                  addi         a5, zero, 17 #init loop 0 limit
                  nop
                  nop
sub_1_1_0_t:      nop
                  sltu         s10, s2, a5
                  add          tp, zero, a4
                  add          s10, t3, a1
                  addi         s7, s7, 6 #update loop 0 counter
                  slti         t1, sp, 1150
                  sub          s9, s8, gp
                  srl          t0, s2, gp
                  lui          s11, 413478
                  sra          s11, s10, t6
                  sra          s6, t5, a7
                  srl          gp, s7, a0
                  andi         sp, t3, 1307
                  xor          t2, s7, t1
                  xori         t2, s4, -1175
                  blt          s7, a5, sub_1_1_0_t #branch for loop 0
                  and          s8, t0, s1
                  addi         a7, zero, 0 #init loop 0 counter
                  srl          s5, zero, s7
                  add          t3, tp, a1
                  ori          ra, t1, 1278
                  andi         a6, t5, -24
                  lui          s4, 671072
                  srai         s2, a5, 21
                  addi         tp, zero, 7 #init loop 0 limit
                  and          t0, t4, t1
                  xor          ra, t6, s8
sub_1_10_0_t:     slti         s4, a0, -1990
                  addi         a7, a7, 7 #update loop 0 counter
                  addi         t0, a6, -506
                  slt          s10, t2, s3
                  sra          s2, s7, t3
                  bne          a7, tp, sub_1_10_0_t #branch for loop 0
                  addi         t1, s11, 272
                  addi         t1, zero, -7 #init loop 0 counter
                  and          a0, a5, s11
                  ori          tp, t3, 1570
                  xori         s11, a3, 339
                  addi         s6, zero, -2 #init loop 0 limit
                  ori          s11, s1, 382
sub_1_13_0_t:     lui          t2, 1005352
                  srl          s5, s7, tp
                  addi         ra, a5, 410
                  sra          a7, t0, s10
                  sltu         s0, t5, t0
                  nop
                  addi         t1, t1, 2 #update loop 0 counter
                  slt          s8, t0, a3
                  sll          s4, s9, t3
                  slti         a4, s9, -1139
                  slli         a7, s3, 31
                  srli         s5, a0, 11
                  or           t4, t2, ra
                  sll          a6, t3, s6
                  and          gp, s1, a1
                  slt          s10, s6, s10
                  add          a0, t1, a7
                  add          a4, s1, s4
                  blt          t1, s6, sub_1_13_0_t #branch for loop 0
                  andi         a1, t4, -1024
                  addi         tp, zero, 9 #init loop 1 counter
                  auipc        t0, 59429
                  slti         a4, t5, -1083
                  nop
                  lui          s10, 851484
                  srai         a5, s8, 14
                  addi         a2, zero, 7 #init loop 1 limit
                  nop
sub_1_29_1_t:     auipc        s0, 450890
                  slti         a0, tp, 1982
                  addi         tp, tp, -6 #update loop 1 counter
                  add          a5, s7, s8
                  nop
                  slt          s7, s0, t0
                  addi         s6, zero, 3 #init loop 0 counter
                  srl          a1, t1, t0
                  auipc        ra, 567580
                  auipc        ra, 107356
                  auipc        s11, 704747
                  addi         s8, zero, 19 #init loop 0 limit
                  slt          s0, s11, a0
sub_1_29_0_t:     addi         t2, s3, -1548
                  and          s9, s10, gp
                  lui          t3, 108008
                  srai         gp, t5, 6
                  slli         a7, s1, 4
                  addi         s6, s6, 8 #update loop 0 counter
                  andi         s4, a3, 79
                  beq          s6, s8, sub_1_29_0_t #branch for loop 0
                  slli         s5, t2, 10
                  lui          ra, 113639
                  bgeu         tp, a2, sub_1_29_1_t #branch for loop 1
                  auipc        zero, 911596
                  addi         t2, zero, 6 #init loop 0 counter
                  xor          s0, s11, t5
                  slli         s11, a7, 4
                  ori          gp, a1, -789
                  sltu         s6, a4, s0
                  lui          a2, 921327
                  add          s8, s10, a5
                  addi         s4, zero, 13 #init loop 0 limit
                  xori         s7, t5, -33
sub_1_20_0_t:     slti         s3, t1, -1180
                  xori         t0, t5, 56
                  sub          t1, s6, s10
                  srl          s6, sp, t1
                  lui          s6, 222495
                  add          a5, t6, s5
                  srai         zero, a0, 5
                  addi         t2, t2, 9 #update loop 0 counter
                  nop
                  xor          s10, a1, s2
                  sra          ra, a0, s5
                  nop
                  sra          s3, t6, s8
                  xori         gp, tp, 1721
                  ori          gp, s2, -1505
                  xori         s7, t1, 1353
                  bltu         t2, s4, sub_1_20_0_t #branch for loop 0
                  and          tp, t0, ra
                  addi         t1, zero, -2 #init loop 1 counter
                  addi         a6, zero, 3 #init loop 1 limit
sub_1_5_1_t:      addi         t0, t2, -1041
                  addi         t1, t1, 8 #update loop 1 counter
                  addi         a4, zero, 4 #init loop 0 counter
                  addi         tp, zero, 20 #init loop 0 limit
sub_1_5_0_t:      andi         s11, s3, 880
                  addi         a4, a4, 2 #update loop 0 counter
                  bne          a4, tp, sub_1_5_0_t #branch for loop 0
                  blt          t1, a6, sub_1_5_1_t #branch for loop 1
                  andi         zero, gp, -1320
                  addi         gp, zero, -9 #init loop 1 counter
                  sra          a4, a7, t1
                  addi         a5, zero, -15 #init loop 1 limit
sub_1_9_1_t:      or           s9, s5, t3
                  addi         gp, gp, -6 #update loop 1 counter
                  sll          t2, gp, gp
                  addi         s5, zero, 9 #init loop 0 counter
                  addi         s7, zero, 20 #init loop 0 limit
                  sltiu        s8, s8, 1979
sub_1_9_0_t:      auipc        s9, 3536
                  addi         s5, s5, 1 #update loop 0 counter
                  sltiu        s0, s0, 1654
                  sltu         a6, tp, s9
                  blt          s5, s7, sub_1_9_0_t #branch for loop 0
                  beq          gp, a5, sub_1_9_1_t #branch for loop 1
                  srl          a2, a1, tp
                  addi         a0, zero, 0 #init loop 0 counter
                  and          s0, a7, s11
                  add          gp, s6, s6
                  addi         s11, zero, -12 #init loop 0 limit
sub_1_19_0_t:     ori          gp, a7, 1615
                  xori         s7, s2, 1696
                  addi         a0, a0, -6 #update loop 0 counter
                  sra          t5, s6, t5
                  srai         s4, t6, 5
                  slti         a6, t4, -1872
                  bne          a0, s11, sub_1_19_0_t #branch for loop 0
                  xor          t5, zero, a7
                  addi         a0, zero, 3 #init loop 1 counter
                  auipc        s7, 387091
                  nop
                  addi         s6, zero, 15 #init loop 1 limit
                  slti         s0, a3, -2001
sub_1_11_1_t:     xor          ra, s3, s10
                  sltu         t3, s2, t5
                  slti         s11, s4, -1429
                  add          gp, t2, s5
                  add          a4, s4, ra
                  addi         a0, a0, 1 #update loop 1 counter
                  andi         zero, t2, -1312
                  nop
                  slt          a2, t5, t3
                  lui          t1, 623796
                  addi         s8, zero, -5 #init loop 0 counter
                  and          ra, zero, t5
                  addi         s4, zero, -20 #init loop 0 limit
                  andi         sp, s2, -592
                  and          t5, s1, t6
sub_1_11_0_t:     sub          t1, s7, s7
                  srl          s7, a4, tp
                  ori          a4, tp, -977
                  lui          t2, 65967
                  addi         s8, s8, -10 #update loop 0 counter
                  srl          t4, a1, a3
                  nop
                  and          a2, t5, a7
                  bge          s8, s4, sub_1_11_0_t #branch for loop 0
                  slli         a1, s8, 10
                  sll          ra, a6, tp
                  beq          a0, s6, sub_1_11_1_t #branch for loop 1
                  nop
                  addi         s8, zero, 1 #init loop 0 counter
                  nop
                  slli         t2, t0, 19
                  auipc        t0, 808276
                  ori          gp, a7, 713
                  srl          tp, s1, s4
                  nop
                  ori          zero, a4, -1750
                  nop
                  addi         a0, zero, -13 #init loop 0 limit
                  add          s2, s6, s6
                  add          t0, s1, s6
sub_1_12_0_t:     sltiu        s3, s9, -2038
                  srli         t2, s11, 23
                  ori          s3, t4, -1066
                  xori         t4, zero, -295
                  nop
                  auipc        a2, 625904
                  slt          a1, a3, a1
                  addi         s8, s8, -7 #update loop 0 counter
                  or           s2, ra, s7
                  xor          s0, s10, t1
                  slli         t1, s4, 24
                  beq          s8, a0, sub_1_12_0_t #branch for loop 0
                  and          s4, a5, t2
                  addi         a2, zero, 4 #init loop 1 counter
                  srli         a5, gp, 23
                  addi         gp, zero, -17 #init loop 1 limit
                  and          tp, a4, a3
sub_1_3_1_t:      xori         s4, zero, -174
                  addi         a2, a2, -1 #update loop 1 counter
                  sra          s7, t4, s1
                  slt          s3, s11, s3
                  addi         t0, zero, -6 #init loop 0 counter
                  addi         s10, zero, 15 #init loop 0 limit
                  xor          s11, a5, sp
                  andi         s5, s6, 1627
sub_1_3_0_t:      and          a5, s11, s8
                  addi         t0, t0, 7 #update loop 0 counter
                  sltiu        t3, t1, 785
                  sll          s2, a5, s3
                  and          s6, a2, a5
                  beq          t0, s10, sub_1_3_0_t #branch for loop 0
                  and          sp, t4, ra
                  bge          a2, gp, sub_1_3_1_t #branch for loop 1
                  slt          t5, t6, tp
                  addi         tp, zero, -4 #init loop 0 counter
                  xor          s11, s9, s0
                  sltu         t5, s3, t5
                  sll          a1, s2, zero
                  and          a6, a1, s5
                  sra          s6, t5, sp
                  sra          s6, a5, t1
                  slti         gp, s1, 921
                  addi         s9, zero, -9 #init loop 0 limit
                  slt          t0, a6, s6
                  and          s10, t5, a7
                  slli         t4, s3, 18
                  sltu         s3, t2, t4
sub_1_8_0_t:      or           s2, s7, s11
                  andi         s10, t0, -454
                  sltiu        s10, t2, -500
                  srl          t3, s2, s4
                  addi         tp, tp, -5 #update loop 0 counter
                  auipc        a2, 438732
                  bne          tp, s9, sub_1_8_0_t #branch for loop 0
                  slt          t3, t6, s6
                  addi         s11, zero, 7 #init loop 0 counter
                  sltiu        ra, t3, -1450
                  srli         t2, a7, 5
                  srli         zero, s3, 26
                  srai         s9, s11, 10
                  lui          s9, 331394
                  addi         t1, zero, 7 #init loop 0 limit
                  ori          s0, a6, -1187
sub_1_14_0_t:     add          s7, s1, a6
                  slli         a6, s7, 24
                  srl          a5, t4, tp
                  lui          s4, 3560
                  sra          s7, s10, s9
                  addi         s11, s11, -5 #update loop 0 counter
                  srai         a1, s8, 5
                  addi         s10, gp, -222
                  sra          t2, s11, s2
                  slt          t4, a4, s8
                  add          s4, t3, a1
                  auipc        s3, 10689
                  lui          tp, 172647
                  xor          a5, s0, a2
                  andi         s3, tp, 92
                  and          a1, t4, a6
                  srl          s0, s7, s0
                  or           s0, s3, a2
                  bgeu         s11, t1, sub_1_14_0_t #branch for loop 0
                  lui          s3, 603431
                  addi         t5, zero, 3 #init loop 0 counter
                  addi         s4, zero, 17 #init loop 0 limit
sub_1_18_0_t:     sub          a5, sp, a6
                  slti         a7, gp, 577
                  addi         t5, t5, 6 #update loop 0 counter
                  blt          t5, s4, sub_1_18_0_t #branch for loop 0
                  nop
                  addi         t5, zero, -10 #init loop 1 counter
                  addi         s11, zero, 8 #init loop 1 limit
                  slti         t0, s3, -429
sub_1_24_1_t:     sltu         ra, t0, zero
                  addi         t5, t5, 2 #update loop 1 counter
                  slli         s3, a0, 14
                  addi         a7, zero, 7 #init loop 0 counter
                  sltiu        zero, s10, -867
                  sra          a0, tp, gp
                  addi         s5, zero, 4 #init loop 0 limit
                  ori          a2, s6, 929
sub_1_24_0_t:     slt          ra, s4, a2
                  xor          a0, t2, a5
                  addi         a7, a7, -9 #update loop 0 counter
                  slti         a4, t2, -1000
                  bge          a7, s5, sub_1_24_0_t #branch for loop 0
                  bne          t5, s11, sub_1_24_1_t #branch for loop 1
                  sra          s8, a1, gp
                  addi         s0, zero, 3 #init loop 0 counter
                  addi         t2, s5, -1227
                  sra          t4, s9, s3
                  auipc        a6, 248679
                  addi         gp, zero, -18 #init loop 0 limit
                  slti         s7, a5, -182
                  slli         a6, s9, 3
                  sub          a1, s5, t1
sub_1_7_0_t:      addi         s6, t2, 1362
                  slli         s10, t0, 9
                  and          s3, gp, s4
                  sub          s6, t4, s11
                  srai         t3, s4, 21
                  sub          s3, s5, s8
                  sltu         zero, s2, ra
                  srai         s8, t0, 21
                  ori          t0, a3, 774
                  srl          t0, a6, a7
                  ori          s6, a7, -1847
                  lui          a4, 935928
                  addi         s0, s0, -7 #update loop 0 counter
                  xor          s11, s5, sp
                  lui          a7, 141300
                  beq          s0, gp, sub_1_7_0_t #branch for loop 0
                  andi         sp, ra, 1145
                  nop
                  nop
                  nop
                  nop
                  xori         s5, a7, -175
                  nop
                  bgeu         t0, s5, 23f
                  nop
                  sltu         t5, t0, a1
                  bge          gp, s1, 25f
                  slti         t1, s2, 890
                  add          a2, s11, ra
                  beq          s3, s7, 28f
                  bgeu         a6, a1, 14f
14:               addi         sp, a7, 1797
                  srl          s2, s6, s1
                  xori         t2, zero, 1981
                  xori         t5, s2, 751
                  srl          zero, t4, s5
                  slt          t3, s4, s6
                  addi         s8, zero, 1262
                  or           s9, t1, s9
                  bltu         a3, t2, 41f
23:               nop
                  sub          a1, t1, t6
25:               bltu         a6, gp, 40f
                  ori          ra, a7, 1372
                  andi         a2, sp, -303
28:               beq          a0, s2, 37f
                  andi         a1, s8, 289
                  sltiu        gp, s4, -1834
                  auipc        gp, 488856
                  add          s4, zero, t6
                  slti         a0, t3, 651
                  srai         a5, gp, 7
                  addi         ra, a3, 448
                  beq          sp, s7, 45f
37:               andi         s2, s0, -1991
                  sub          s8, a6, s2
                  sub          t5, s10, t0
40:               slt          zero, a7, sp
41:               bne          a7, a0, 56f
                  or           a0, t2, zero
                  add          t2, a0, t3
                  nop
45:               slt          s11, s1, a4
                  beq          zero, a3, 52f
                  xori         zero, a1, -1683
                  sll          tp, a0, a1
                  sll          t5, s8, s5
                  ori          a2, a0, -1096
                  bltu         s2, a7, 59f
52:               srai         gp, ra, 3
                  bne          zero, t4, 57f
                  sll          a5, s9, t1
                  auipc        a5, 851549
56:               sub          s4, a1, a1
57:               sll          t5, s1, a7
                  beq          a2, a7, 60f
59:               beq          s9, s8, 69f
60:               andi         t1, t4, 1399
                  auipc        tp, 879662
                  nop
                  lui          a1, 749645
                  nop
                  bltu         a1, s6, 82f
                  xor          t0, ra, s0
                  bgeu         tp, gp, 82f
                  sra          tp, t0, a5
69:               auipc        t2, 740604
                  xori         a7, s5, 1290
                  ori          t1, t5, -247
                  ori          zero, t5, 603
                  andi         a7, a2, 1555
                  sra          t5, a0, s5
                  slli         sp, a6, 15
                  sll          a1, t2, a5
                  srai         s10, s11, 22
                  nop
                  or           s6, gp, t5
                  sltu         s3, s8, t1
                  sltiu        gp, a1, 1952
82:               bltu         s0, a6, 88f
                  bne          sp, t4, 86f
                  sll          s6, s4, a4
                  srl          s8, s9, a2
86:               slli         a4, gp, 20
                  xor          t4, s6, t6
88:               bltu         s3, t4, 92f
                  bge          zero, t3, 99f
                  andi         gp, a4, 1760
                  slt          t1, a7, s10
92:               sltu         a0, s3, s11
                  srai         s11, tp, 28
                  srai         a0, a6, 14
                  ori          s10, s1, 1149
                  slli         t2, t6, 2
                  slti         tp, t3, -1992
                  slt          a6, t1, a0
99:               sll          a7, t0, t3
                  slti         s9, ra, -2007
                  sub          sp, t4, a1
                  srli         s6, s8, 14
                  ori          tp, s7, 452
                  xori         s9, s10, 2017
                  sub          s2, s7, ra
                  beq          t3, s6, 120f
                  srl          s7, s5, t5
                  xori         s0, t1, -1831
                  xor          s8, s7, a1
                  sub          a2, s8, s5
                  beq          tp, a0, 121f
                  beq          s9, t1, 128f
                  sra          t3, t0, a2
                  sll          t0, s11, s9
                  bgeu         gp, a0, 121f
                  addi         s10, sp, -769
                  bltu         t0, a2, 129f
                  xor          s11, s0, ra
                  bgeu         s3, zero, 135f
120:              sra          a2, s3, s5
121:              sub          a2, t6, t0
                  sra          s0, gp, a4
                  srai         a1, t6, 27
                  and          zero, a1, s7
                  ori          sp, s5, 1367
                  sltu         s4, a3, s2
                  bltu         sp, ra, 138f
128:              beq          t5, zero, 146f
129:              lui          a5, 152542
                  sra          s6, a2, a6
                  slt          s2, s2, a2
                  auipc        s6, 212843
                  andi         t3, s2, 1297
                  andi         s7, zero, -1404
135:              srli         s3, ra, 2
                  sub          gp, s11, a2
                  srli         s4, s0, 3
138:              and          a4, t5, s4
                  srai         s6, gp, 31
                  sll          s5, a5, s5
                  ori          s11, t6, -411
                  blt          t1, sp, 144f
                  or           s7, s11, s9
144:              slti         t0, t3, 1132
                  ori          a2, t5, -1924
146:              beq          s5, ra, 163f
                  nop
                  addi         a6, sp, -1565
                  or           t5, gp, a7
                  srai         sp, a3, 6
                  ori          gp, a5, 268
                  add          t1, t6, a2
                  srli         a1, t3, 10
                  sll          t2, s2, t3
                  lui          zero, 935394
                  sltu         tp, s6, s0
                  srai         t1, s10, 23
                  slti         a5, s0, 1645
                  xori         a0, gp, 821
                  beq          a5, zero, 166f
                  sltiu        s9, t0, 169
                  blt          a0, t4, 172f
163:              add          tp, s5, t5
                  blt          a4, s6, 167f
                  or           a0, s11, a2
166:              srl          s7, t5, a4
167:              sltu         s4, a7, sp
                  lui          t1, 908539
                  nop
                  sltu         ra, a7, s0
                  add          zero, a7, t3
172:              srl          a4, t4, ra
                  bge          s11, a6, 187f
                  nop
                  ori          s2, t0, 494
                  srl          s4, t3, t0
                  slti         a1, s2, 1286
                  slli         s4, s5, 6
                  slti         zero, t5, -273
                  srai         a7, gp, 31
                  xor          s3, a0, a1
                  xori         s2, s4, -1488
                  andi         t5, s8, 1818
                  slli         t3, t3, 20
                  sll          a2, ra, t5
                  sra          s3, s2, zero
187:              or           a7, zero, t1
                  srli         t2, tp, 5
                  sra          a6, s11, s0
                  beq          t0, a5, 206f
                  auipc        t1, 489054
                  or           ra, a5, s7
                  srai         zero, s0, 4
                  xor          t4, tp, s0
                  slli         t2, s11, 3
                  xori         t3, t0, 1975
                  xor          a4, s1, t6
                  blt          a2, s3, 214f
                  sltiu        t3, zero, 1494
                  bne          a2, s3, 217f
                  slt          gp, zero, s2
                  bgeu         a4, s7, 208f
                  srl          t3, t2, t2
                  and          s9, s7, t5
                  sub          a1, s10, s7
206:              slli         t4, s5, 4
                  addi         t2, a3, -458
208:              srl          tp, a7, t1
                  xor          s4, s5, s10
                  andi         s0, t1, 716
                  add          t0, s5, t1
                  slli         s0, s7, 28
                  and          a2, t2, a0
214:              xor          a1, s4, s5
                  addi         a7, a3, 898
                  sra          s3, s4, t6
217:              auipc        s11, 684615
                  slti         t5, a7, -632
                  blt          t1, s11, 220f
220:              slti         s11, a7, 1050
                  or           s11, a4, t2
                  beq          a0, s1, 237f
                  bne          s11, t0, 233f
                  slt          s6, t4, a7
                  sltiu        sp, a2, -1238
                  addi         s10, zero, -1946
                  bge          t1, s5, 246f
                  add          tp, t0, a7
                  andi         s10, s4, -1721
                  srli         s7, t5, 9
                  or           a6, a1, s11
                  xor          s5, t5, s4
233:              xori         s7, a6, -763
                  xor          s2, t2, zero
                  slt          tp, s5, gp
                  sub          s11, s3, a3
237:              bgeu         s3, t5, 253f
                  sltiu        s3, a0, 621
                  sltu         s10, zero, t6
                  lui          t2, 145349
                  ori          s11, s7, -2037
                  beq          s0, s0, 259f
                  and          s5, s7, s6
                  sub          t4, t3, t3
                  andi         t1, s4, -1786
246:              nop
                  slti         t4, t4, -1622
                  slt          a0, s9, t5
                  add          t4, t4, t3
                  slt          a6, t6, a6
                  bgeu         s3, s9, 253f
                  slli         s9, s0, 13
253:              bltu         t3, t5, 262f
                  srl          a7, s8, s4
                  xor          s9, t4, s11
                  bgeu         s1, s0, 272f
                  beq          t3, a1, 259f
                  srai         s10, t2, 10
259:              andi         t3, s2, 1666
                  xori         s0, t2, 704
                  xori         s5, gp, 1545
262:              blt          t3, s1, 280f
                  bgeu         s9, s10, 267f
                  and          s5, t1, s7
                  xori         a0, t2, -189
                  ori          s3, sp, -1679
267:              nop
                  nop
                  srl          s8, s4, s0
                  nop
                  bne          a1, t1, 281f
272:              srai         t2, s10, 2
                  srli         t3, s11, 20
                  sltiu        s0, s5, -1621
                  slli         s10, s4, 29
                  slli         a6, s3, 6
                  xor          t5, sp, a2
                  xor          a4, a3, a6
                  bgeu         a7, a1, 290f
280:              slli         a0, a3, 4
281:              srai         tp, t6, 27
                  slti         s8, gp, -608
                  sll          a1, a3, t3
                  slti         s4, s2, 403
                  nop
                  nop
                  nop
                  slt          a1, s5, zero
                  sll          s9, s11, s5
290:              srl          t3, s6, a6
                  sub          s2, s1, t5
                  ori          s8, a5, 1025
                  auipc        s5, 970124
                  andi         s0, a0, -1790
                  bltu         sp, t5, 303f
                  or           sp, t3, t6
                  nop
                  bgeu         t3, s2, 313f
                  bltu         s4, t0, 311f
                  ori          a2, a2, 290
                  xor          sp, s3, s1
                  or           s0, sp, sp
303:              add          a4, s0, a3
                  srai         s5, s6, 27
                  srli         s10, t0, 24
                  addi         tp, t0, -425
                  bltu         s3, a0, 324f
                  sub          s11, t1, s2
                  sub          a1, gp, a2
                  lui          a0, 24746
311:              nop
                  xori         t5, ra, -883
313:              bge          gp, s2, 328f
                  beq          t1, a5, 323f
                  bge          a3, s0, 319f
                  blt          a7, t5, 322f
                  sll          gp, t3, t5
                  bgeu         s8, s0, 322f
319:              bge          s6, s0, 328f
                  ori          s10, ra, -809
                  bge          t0, a5, 332f
322:              slt          t4, ra, gp
323:              srai         a7, tp, 2
324:              nop
                  nop
                  blt          s6, a2, 343f
                  srai         s8, ra, 17
328:              or           s10, ra, s10
                  andi         s7, zero, -1280
                  bgeu         a6, a7, 340f
                  bne          a2, t1, 340f
332:              and          s2, s8, t0
                  and          a0, a7, a7
                  sra          s11, a5, a3
                  and          s10, t1, gp
                  sltu         a5, t6, s5
                  blt          s4, t1, 347f
                  slt          t4, a2, ra
                  beq          gp, s0, 345f
340:              add          s7, s6, s1
                  beq          s5, s0, 353f
                  nop
343:              andi         a2, sp, 561
                  addi         s0, t6, 497
345:              sll          s11, s0, a2
                  blt          t3, s0, 362f
347:              sltiu        ra, s1, 1628
                  srl          s8, tp, t5
                  beq          s9, t0, 365f
                  srai         s10, s0, 22
                  andi         s6, ra, -1630
                  slti         zero, s4, -1924
353:              sll          ra, gp, a2
                  add          tp, s2, gp
                  sra          s8, s2, s10
                  xor          s10, gp, s6
                  bge          tp, ra, 360f
                  blt          t1, s1, 374f
                  nop
360:              and          s6, a7, s7
                  nop
362:              bge          t2, a5, 376f
                  xori         t3, s3, -1525
                  ori          t2, a2, 2000
365:              addi         sp, a5, -551
                  bltu         t6, a5, 381f
                  sll          s6, a1, s4
                  bge          s3, a6, 376f
                  sltiu        t0, ra, 1077
                  xor          zero, a6, t3
                  bne          s11, gp, 390f
                  sub          s8, s8, a0
                  and          a7, a0, tp
374:              srli         ra, s9, 13
                  add          s7, a2, a4
376:              xori         t4, ra, -1374
                  xori         t5, t1, -866
                  bgeu         s5, ra, 380f
                  andi         t5, s6, -479
380:              srai         t4, t3, 28
381:              slt          a0, a6, tp
                  lui          t0, 782389
                  auipc        s7, 881164
                  srai         s5, s6, 4
                  nop
                  nop
                  sll          ra, s0, t1
                  slti         t3, a3, 203
                  bltu         t6, s2, 407f
390:              slti         s4, a7, -1161
                  addi         s0, a7, 1692
                  sll          s2, tp, t0
                  lui          t4, 921117
                  xori         a6, s1, -291
                  andi         a0, s7, 2047
                  nop
                  sra          s11, tp, a1
                  srli         a6, a2, 24
                  andi         s0, s8, -1398
                  xor          a7, gp, t0
                  nop
                  andi         s6, s3, -1048
                  add          s6, s1, s3
                  slli         t4, s2, 5
                  nop
                  sltiu        a6, gp, 1334
407:              bge          s2, a6, 424f
                  ori          a1, t6, -1293
                  lui          a7, 715030
                  and          s7, a5, s11
                  bgeu         t5, s7, 426f
                  andi         zero, a7, 609
                  ori          a0, a7, -141
                  sll          a2, s0, s3
                  bltu         t6, s8, 430f
                  andi         gp, s3, -526
                  bltu         a1, a6, 427f
                  bge          t3, s1, 420f
                  add          tp, a7, s10
420:              bne          t2, a2, 437f
                  auipc        t1, 114352
                  addi         s5, t0, 1847
                  sltiu        s7, t6, 881
424:              add          t1, s2, a3
                  bltu         a3, zero, 431f
426:              add          t1, ra, zero
427:              or           zero, s7, s4
                  srai         s5, s8, 1
                  or           t0, s5, a6
430:              srl          a7, a6, a7
431:              nop
                  slt          s10, a1, s4
                  bltu         a5, s3, 434f
434:              xor          t1, tp, t3
                  or           a7, t4, a7
                  lui          ra, 282229
437:              or           s6, s1, s2
                  bltu         s7, a4, 444f
                  andi         a2, a1, 287
                  andi         a1, s8, 290
                  add          s8, a0, t6
                  andi         t4, a0, -268
                  slt          s7, s6, a1
444:              nop
                  sltu         tp, a4, s0
                  or           ra, gp, a4
                  bne          zero, t2, 463f
                  slli         s8, s4, 23
                  sltu         a6, gp, t6
                  add          s9, s10, s4
                  bne          a2, s6, 455f
                  xor          s0, gp, t5
                  andi         t0, s10, 565
                  andi         s11, s7, -94
455:              srai         t0, t4, 23
                  sra          zero, a4, t3
                  auipc        a1, 280359
                  bne          s10, s4, 474f
                  and          a5, s11, gp
                  addi         gp, t6, 503
                  sra          s11, s4, sp
                  lui          s8, 493549
463:              xor          s2, t0, s4
                  slt          t1, t1, s2
                  sll          a2, t0, s8
                  and          a0, ra, a7
                  blt          a7, s2, 476f
                  slt          t2, s10, t3
                  sra          a7, zero, s3
                  add          s4, tp, s6
                  srl          tp, t0, s7
                  sll          a0, s0, s0
                  sra          s8, s7, s6
474:              sll          t3, s3, a1
                  ori          a0, s7, -1491
476:              or           s4, s5, t1
                  and          a0, s1, s7
                  and          a1, s1, s0
                  xori         a6, sp, 62
                  xori         t0, s7, 644
                  nop
                  srli         t2, t6, 31
                  sltu         s11, s1, a1
                  andi         s0, t5, 1374
                  ori          s11, a1, 867
                  sra          t3, s6, s5
                  sub          s10, s8, t2
                  sll          a6, a4, a4
                  slt          s4, gp, s8
                  and          s11, gp, ra
                  sub          t3, zero, a7
                  bge          t2, a3, 508f
                  lui          gp, 1001817
                  sll          t0, a4, a4
                  slti         s10, s6, -1734
                  nop
                  srai         s8, s10, 2
                  srl          t3, s3, t0
                  addi         a2, zero, -6 #init loop 0 counter
                  auipc        a7, 200029
                  sra          s10, s7, sp
                  addi         t2, s11, -2043
                  xori         s10, t1, 1643
                  and          s2, t4, t6
                  addi         t1, zero, 13 #init loop 0 limit
                  xor          s0, s8, t4
sub_1_21_0_t:     xor          t5, s10, t0
                  sub          s7, a2, s0
                  and          t2, t2, a1
                  sltiu        t2, t6, 856
                  andi         t2, t3, -2044
                  slt          s4, a2, s5
                  addi         a2, a2, 3 #update loop 0 counter
                  sra          t2, t5, ra
                  sra          a1, s9, s7
                  slli         a5, a7, 11
                  srl          s7, s5, sp
                  ori          s10, a1, -1255
                  blt          a2, t1, sub_1_21_0_t #branch for loop 0
                  addi         t5, s2, 721
                  sltiu        t1, a3, -1780
                  beq          s9, s10, 510f
                  or           s5, a6, s11
                  ori          s7, s6, 1865
                  sltiu        s5, sp, -1440
                  bne          t5, s2, 516f
                  andi         a1, s9, -1892
                  auipc        t3, 219702
                  lui          s7, 903835
508:              slli         s7, s3, 27
                  sra          a6, s2, t5
510:              sltiu        tp, t5, -792
                  bgeu         gp, sp, 519f
                  lui          t2, 1029992
                  nop
                  lui          zero, 997958
                  beq          tp, a4, 517f
516:              slti         s5, s5, 681
517:              bne          a7, s4, 523f
                  sub          s6, s8, a6
519:              xor          t3, s3, t1
                  xori         t2, a3, -506
                  auipc        gp, 308209
                  blt          t1, s10, 524f
523:              sltiu        t3, ra, -13
524:              and          s3, s0, a0
                  slli         t2, t1, 23
                  and          tp, s7, a6
                  andi         s5, a6, 1847
                  ori          ra, a2, 1020
                  or           t2, a0, a1
                  nop
                  sra          s6, t4, a7
                  auipc        a7, 43612
                  bgeu         t4, a4, 543f
                  bltu         s8, sp, 540f
                  add          s7, t4, s10
                  sll          s9, gp, a3
                  sll          s0, a5, a5
                  lui          a5, 532820
                  nop
540:              sra          sp, s5, zero
                  slli         a6, s2, 4
                  sltiu        s3, s0, -1419
543:              slt          s7, a5, t1
                  bltu         t2, t1, 553f
                  xori         gp, s3, -549
                  or           s11, a3, s10
                  blt          a4, s1, 553f
                  sltu         t4, s3, zero
                  slti         a1, s1, 915
                  bne          s6, s9, 554f
                  bltu         s11, s1, 567f
                  srli         a5, s10, 8
553:              auipc        s11, 148603
554:              xor          s9, tp, sp
                  sll          s6, s11, s9
                  sltiu        tp, s3, 1171
                  add          ra, s10, t5
                  and          a2, a6, tp
                  or           sp, s4, s2
                  bltu         t6, t3, 577f
                  sll          s11, s7, s0
                  bne          a2, t0, 578f
                  srl          s10, sp, gp
                  xori         a1, s5, 1951
                  bne          t2, s10, 580f
                  auipc        t0, 491774
567:              beq          a4, s5, 571f
                  sra          s2, s8, t1
                  lui          ra, 920457
                  addi         a5, a7, 1842
571:              sra          zero, s0, s4
                  bltu         t4, a3, 589f
                  sub          s3, a3, s0
                  bne          a4, t3, 588f
                  bgeu         sp, a1, 585f
                  sll          t4, a2, t1
577:              bne          a5, a0, 595f
578:              or           s6, a0, s11
                  bne          tp, t3, 594f
580:              add          a6, a5, t0
                  slt          gp, s10, tp
                  blt          s8, s4, 583f
583:              add          a0, t4, a6
                  sra          a7, s9, a6
585:              blt          t2, a5, 602f
                  srai         s10, zero, 17
                  addi         a7, a6, 132
588:              addi         sp, t1, 666
589:              sub          t5, t5, zero
                  addi         a0, a6, 57
                  sra          a2, s4, s3
                  xor          t4, t0, t1
                  bne          a6, s5, 612f
594:              bge          t0, a0, 609f
595:              auipc        s2, 148549
                  sub          s8, a0, t4
                  sll          a2, t6, s10
                  bltu         a4, t5, 601f
                  sltu         sp, zero, s6
                  sltu         s10, t1, t1
601:              srai         t5, gp, 5
602:              bge          a4, s4, 613f
                  bge          a4, s9, 605f
                  xor          s4, s11, a1
605:              bge          a4, sp, 616f
                  bltu         tp, ra, 608f
                  slt          a6, zero, a0
608:              bltu         a6, s5, 620f
609:              beq          t0, t5, 626f
                  sll          s3, t4, t3
                  xor          t3, a4, t6
612:              sra          s0, t5, a7
613:              nop
                  xor          a4, gp, a0
                  andi         t3, a7, 2041
616:              sltiu        s5, t0, 2028
                  sltiu        s2, s9, 646
                  sll          a0, a2, s3
                  bne          t2, s3, sub_1_j2 #branch to jump instr
                  srai         s0, t4, 27
                  srai         zero, a5, 22
                  slti         s10, a3, 1633
                  sltiu        s5, s0, -1289
                  slti         s3, a1, 555
                  srl          ra, s1, a3
sub_1_j2:         jal          s4, sub_2 #jump sub_1 -> sub_2
                  ori          t3, a3, 726
                  ori          s7, s3, 807
                  sll          t5, s5, sp
620:              sll          tp, s6, t1
                  bltu         s0, sp, 622f
622:              bgeu         t0, s4, 626f
                  sub          t5, s9, ra
                  bgeu         s7, a3, 640f
                  slli         s8, s10, 24
626:              xor          s8, t1, tp
                  addi         s8, a0, -1524
                  slli         ra, a5, 30
                  xor          a7, s0, t6
                  addi         t0, zero, -9 #init loop 0 counter
                  andi         gp, s0, 350
                  sra          s0, sp, a2
                  or           zero, s4, a5
                  xor          tp, t1, ra
                  addi         a7, zero, -15 #init loop 0 limit
                  auipc        a0, 86756
                  add          s7, a1, s7
sub_1_4_0_t:      nop
                  ori          s9, a5, 611
                  nop
                  addi         t0, t0, -1 #update loop 0 counter
                  add          t5, a0, s9
                  beq          t0, a7, sub_1_4_0_t #branch for loop 0
                  addi         t2, t4, -1411
                  ori          s3, t0, -243
                  or           s11, s9, a2
                  srli         s3, s2, 5
                  add          s0, a4, a4
                  bltu         s10, tp, 653f
                  sltu         a1, s1, s10
                  bne          a7, a2, 645f
                  add          a1, s6, t3
                  srli         s0, s11, 15
                  nop
640:              lui          s9, 569186
                  srli         gp, tp, 4
                  srl          s7, a5, t4
                  xor          s10, ra, zero
                  addi         a1, a7, -268
645:              bne          s2, t4, 662f
                  blt          sp, a4, 650f
                  bge          s5, s10, 657f
                  sub          s5, s4, tp
                  sltu         t3, t2, a6
650:              blt          s4, tp, 665f
                  srli         a6, s9, 11
                  srl          s7, s1, s9
653:              auipc        gp, 91101
                  andi         a2, s8, -67
                  bgeu         t4, t5, 671f
                  slli         t4, s2, 0
657:              add          t4, sp, s8
                  auipc        a4, 279744
                  slt          a4, s8, a1
                  bgeu         a6, sp, 663f
                  xori         a5, a6, 86
662:              bne          s5, t1, 677f
663:              srl          tp, a3, s5
                  srl          s0, t1, s5
665:              xor          s7, s4, a4
                  bgeu         gp, a6, 676f
                  sra          zero, s2, zero
                  srli         t5, s1, 25
                  sltu         t4, s5, t3
                  nop
671:              bgeu         tp, s8, 680f
                  auipc        s6, 311889
                  slti         a1, a1, 1225
                  blt          t1, gp, 690f
                  xor          s5, s9, s7
676:              slli         s4, s10, 15
677:              blt          a7, s4, 691f
                  srl          a6, s0, s0
                  srl          t4, tp, t4
680:              srl          t2, s3, t6
                  sltu         s5, s10, gp
                  bgeu         a3, a0, 700f
                  slli         a0, t6, 16
                  and          s4, a2, t3
                  bltu         t3, t5, 702f
                  sub          a6, t3, s6
                  or           s8, a3, t4
                  and          s6, a2, tp
                  addi         s2, t5, -1661
690:              bne          t4, a7, 696f
691:              bgeu         tp, t5, 701f
                  sra          s5, a6, t4
                  ori          a5, s11, 567
                  or           t3, ra, t1
                  sll          a6, tp, a0
696:              bgeu         t5, t1, 702f
                  slti         s8, s10, -574
                  and          tp, gp, s10
                  bgeu         sp, s5, 715f
700:              and          ra, a7, t1
701:              bge          s7, a1, 707f
702:              bne          s7, s10, 717f
                  slt          s9, zero, s7
                  slt          a6, s6, t6
                  nop
                  xor          gp, tp, ra
707:              add          s3, a1, t3
                  blt          s3, t5, 716f
                  sra          t4, a4, s4
                  and          gp, s1, t0
                  andi         s0, a7, -1822
                  sra          a1, s0, zero
                  sub          a0, a5, a5
                  slti         sp, s9, 1517
715:              xor          sp, s0, a3
716:              nop
717:              beq          t4, s9, 727f
                  blt          t0, s1, 720f
                  slli         t0, s9, 15
720:              xor          s3, a6, s10
                  bge          a4, a1, 725f
                  sltiu        s5, gp, 1907
                  addi         a4, t6, 1944
                  sltiu        s9, s6, -1411
725:              bge          s11, a3, 731f
                  and          t0, s11, s1
                  addi         s0, zero, 2 #init loop 1 counter
                  or           t4, t6, s2
                  and          s4, s3, s1
                  lui          gp, 815701
                  addi         t1, zero, 2 #init loop 1 limit
                  and          s4, a7, t5
                  addi         s6, s1, 142
sub_1_15_1_t:     auipc        sp, 687083
                  sub          t4, gp, a4
                  xori         s8, t1, 1755
                  andi         t0, s6, 37
                  addi         s0, s0, -1 #update loop 1 counter
                  and          gp, a3, s6
                  addi         a4, zero, 0 #init loop 0 counter
                  slt          s4, a3, s11
                  ori          gp, s6, -2030
                  addi         s2, zero, 0 #init loop 0 limit
                  auipc        s7, 92901
                  and          zero, t0, tp
                  nop
                  auipc        s8, 290325
                  or           gp, s1, tp
sub_1_15_0_t:     slt          tp, a0, t6
                  or           t4, sp, s10
                  srli         a0, s2, 20
                  xor          tp, t4, s4
                  addi         a4, a4, -2 #update loop 0 counter
                  ori          ra, s7, 834
                  bge          a4, s2, sub_1_15_0_t #branch for loop 0
                  slt          gp, t0, s9
                  bgeu         s0, t1, sub_1_15_1_t #branch for loop 1
                  or           t0, s5, gp
727:              bgeu         t6, ra, 742f
                  sltiu        s3, ra, -1746
                  beq          a7, s6, 746f
                  bltu         a4, a7, 736f
731:              srai         a4, s11, 1
                  bltu         s9, ra, 751f
                  srl          s7, t1, s8
                  or           a7, tp, t5
                  srli         s5, t4, 0
736:              blt          gp, a2, 751f
                  xori         t2, ra, 1916
                  slli         t0, s3, 9
                  bge          s8, a1, 740f
740:              nop
                  srli         t2, a7, 17
742:              ori          t3, a4, -176
                  bgeu         s11, a7, 759f
                  auipc        a5, 362392
                  srl          s10, a5, t6
746:              or           s6, a6, s8
                  srl          s10, tp, t6
                  addi         s2, s8, 953
                  andi         a4, t2, -1011
                  beq          s9, a3, 766f
751:              lui          a2, 665629
                  srl          a2, t1, a3
                  lui          s3, 121992
                  beq          t1, s1, 765f
                  bne          t0, tp, 758f
                  xor          t4, s3, zero
                  sra          zero, s6, s4
758:              lui          t3, 559805
759:              slti         a4, zero, 1025
                  slli         t0, a7, 14
                  bltu         ra, a3, 778f
                  or           s9, s0, a2
                  andi         tp, t1, -1052
                  srli         a2, t2, 14
765:              bgeu         s1, t3, 777f
766:              sra          t0, a7, gp
                  bgeu         t3, a7, 777f
                  sub          a4, s2, t1
                  sub          tp, ra, s4
                  srai         tp, t5, 1
                  slti         s5, s1, 965
                  ori          s11, a1, -1195
                  addi         a0, zero, -492
                  and          s10, ra, t3
                  slli         s2, s7, 9
                  or           zero, a5, ra
777:              slti         s0, s9, -756
778:              lui          a4, 388934
                  srl          gp, a7, a1
                  srai         s2, t3, 21
                  sll          gp, gp, t0
                  beq          gp, s2, 791f
                  addi         s5, s6, 1705
                  slt          t2, s10, s3
                  sll          a0, s8, s9
                  bgeu         a1, a3, 802f
                  sra          sp, a5, s3
                  bgeu         t3, s1, 798f
                  blt          t5, s4, 797f
                  auipc        t5, 411148
791:              beq          sp, s1, 807f
                  bge          t4, s11, 796f
                  andi         s11, t0, 1500
                  or           t3, a3, s5
                  xori         s6, t4, 680
796:              sltu         s5, a4, a5
797:              xori         sp, s2, 2038
798:              sra          s3, a1, s5
                  ori          s3, zero, 757
                  bge          t0, s4, 814f
                  beq          zero, gp, 816f
802:              auipc        s11, 194176
                  nop
                  srl          t5, t5, t2
                  ori          t2, t4, 275
                  and          a4, s0, t1
807:              sll          a1, zero, a2
                  bne          ra, s1, 826f
                  or           s6, a6, s8
                  sub          s3, gp, a7
                  bgeu         s2, s6, 828f
                  andi         s2, s3, -643
                  lui          s10, 270177
814:              andi         s2, s9, -1725
                  sll          s7, s4, s1
816:              sltu         s8, zero, t0
                  xor          sp, s3, s6
                  slli         s3, gp, 9
                  srai         tp, s9, 17
                  addi         s0, a7, -1166
                  sra          t5, a4, a3
                  bge          s3, t6, 828f
                  and          s10, s6, s10
                  nop
                  add          a7, zero, sp
826:              andi         sp, a3, -1641
                  and          a2, a4, s10
828:              ori          s5, a7, -1694
                  nop
                  andi         s9, t1, -201
                  slt          sp, s0, s2
                  lui          ra, 829179
                  auipc        s10, 31
                  add          ra, t6, s10
                  srl          s2, s4, s10
                  slt          a6, ra, a2
                  lui          t5, 797439
                  bgeu         s11, a7, 840f
                  and          a0, t2, s0
840:              bge          s3, a3, 849f
                  xor          s3, s5, zero
                  sltu         t1, s6, s5
                  sub          a0, t2, s9
                  auipc        s3, 918098
                  addi         s9, a6, -1537
                  xori         a5, s5, -128
                  sltu         t1, t1, a2
                  slti         s2, ra, -1377
849:              beq          s3, t3, 853f
                  slti         a0, t5, 420
                  sltiu        s0, s2, -354
                  beq          ra, t3, 867f
853:              slt          a1, a5, t0
                  addi         s10, a7, 1368
                  add          s5, tp, t6
                  addi         tp, s1, -1364
                  lui          t3, 69495
                  blt          a6, zero, 861f
                  add          t5, a1, s4
                  addi         a1, a5, -1784
861:              sltiu        a6, s2, 1820
                  add          s11, a0, s7
                  srli         gp, t5, 29
                  addi         s3, a3, 1646
                  nop
                  slti         t1, s3, -1610
867:              bne          a1, a5, 881f
                  nop
                  nop
                  ori          t5, a0, -438
                  sra          s8, tp, gp
                  srli         s5, s3, 17
                  andi         s0, s1, -1760
                  bltu         s1, s4, 880f
                  sltu         t0, s2, t0
                  srl          s4, a0, s4
                  srli         a4, a7, 19
                  bge          a0, t0, 894f
                  sltu         s4, a1, s5
880:              srai         zero, s8, 29
881:              sltu         s3, a6, t1
                  bgeu         a7, t4, 899f
                  addi         t0, t0, -1077
                  xor          s2, tp, t2
                  bge          t4, t0, 891f
                  and          t3, s3, a5
                  sra          a5, t4, a7
                  srli         s10, s10, 1
                  bne          t0, t1, 899f
                  sltu         s10, a5, t4
891:              addi         a7, a5, 854
                  addi         a7, s8, 661
                  slti         s6, sp, -550
894:              xori         s4, s6, 787
                  blt          t0, t6, 904f
                  add          t4, a4, s8
                  add          s8, ra, t1
                  beq          a0, t6, 906f
899:              bne          s11, s0, 900f
900:              slli         s8, a1, 11
                  bgeu         a3, a7, 905f
                  beq          t6, a1, 920f
                  sub          s11, s1, zero
904:              xor          sp, t6, a3
905:              srai         s7, s10, 8
906:              slli         s0, s8, 18
                  bgeu         s7, a4, 909f
                  bne          s1, zero, 919f
909:              sltu         tp, a4, s7
                  and          a6, s10, a6
                  xor          s3, s1, t4
                  sltu         t0, s4, s11
                  lui          s2, 736800
                  sra          ra, s11, tp
                  xori         s11, a6, 111
                  add          a6, s10, s10
                  bgeu         tp, t4, 919f
                  slti         a1, a4, 333
919:              beq          t2, a3, 925f
920:              bgeu         t2, ra, 937f
                  nop
                  blt          a7, t3, 937f
                  addi         s11, a6, 258
                  sltiu        a7, t4, -170
925:              ori          gp, ra, 762
                  bne          a5, t2, 942f
                  sltiu        t4, a0, 1071
                  ori          a5, zero, 1189
                  andi         s5, s11, 549
                  andi         t1, s0, -1147
                  sll          a2, s2, sp
                  srai         a5, t0, 17
                  sub          sp, a4, s7
                  and          s4, a6, ra
                  lui          s4, 512615
                  sra          t2, a5, a0
937:              srli         ra, sp, 12
                  and          s11, zero, a7
                  srai         tp, t0, 4
                  sltu         zero, s2, s0
                  andi         sp, t1, -303
942:              slti         s3, ra, 1483
                  blt          s11, t0, 953f
                  auipc        a0, 754558
                  bltu         a2, s2, 957f
                  srli         s3, s6, 29
                  sltiu        s0, t0, 1710
                  nop
                  srli         t3, zero, 3
                  blt          s1, s9, 960f
                  lui          s8, 382594
                  sra          s5, a2, a7
953:              slli         s11, a4, 1
                  nop
                  srai         s3, t6, 10
                  srli         t3, s5, 10
957:              slt          s8, s7, s2
                  sll          sp, t5, s11
                  or           a5, sp, ra
960:              nop
                  srai         a4, s8, 8
                  and          s3, s9, a4
                  bne          t4, ra, 982f
                  add          zero, s5, ra
                  lui          s2, 662418
                  slti         t5, zero, 192
                  and          s9, t3, s2
                  andi         t1, a7, -510
                  xori         s9, s6, 1603
                  slt          a0, a1, s6
                  srl          zero, s7, t0
                  srai         s4, s5, 1
                  slti         a7, t6, 1870
                  nop
                  sltiu        s5, t3, -494
                  slti         s7, ra, 290
                  beq          a3, sp, 993f
                  slt          t5, a4, ra
                  srli         a0, ra, 23
                  slt          a4, sp, a1
                  lui          zero, 365855
982:              beq          a4, a5, 999f
                  and          ra, a0, gp
                  slli         s3, s1, 6
                  bgeu         a6, t4, 994f
                  slti         zero, t1, -1109
                  srai         sp, s8, 19
                  sltiu        t4, ra, -357
                  srai         a5, a2, 25
                  blt          s2, tp, 1006f
                  auipc        a7, 327603
                  bne          s11, a3, 1007f
993:              sub          a5, s10, t5
994:              nop
                  bgeu         zero, s0, 1006f
                  slli         s10, a2, 19
                  nop
                  bge          s4, s1, 1014f
999:              srli         zero, s4, 23
                  sltu         t3, a2, s4
                  srl          t4, t5, s4
                  sltu         s0, t6, a1
                  srl          t3, a0, t0
                  lui          a5, 925267
                  slli         t0, t5, 25
1006:             nop
1007:             slt          zero, s5, gp
                  slt          a7, s7, s6
                  srli         t4, s5, 14
                  sra          a4, tp, tp
                  lui          s5, 335797
                  addi         a0, s7, 28
                  srai         s4, s11, 24
1014:             beq          s8, s4, 1020f
                  sub          s9, s10, s9
                  and          s4, a3, t6
                  bltu         a1, a3, 1026f
                  bgeu         sp, s9, 1019f
1019:             srl          t5, t2, t0
1020:             auipc        s8, 174946
                  sub          a1, t2, s9
                  ori          ra, s4, -643
                  bne          t3, a4, 1033f
                  xori         sp, t2, 1772
                  blt          a6, gp, 1028f
1026:             and          s4, a7, s8
                  ori          s8, t2, -569
1028:             sra          a1, a6, s8
                  slt          s2, t4, s2
                  srai         s5, a3, 14
                  slti         s5, a1, -1257
                  blt          t2, a4, 1046f
1033:             add          a4, s6, a3
                  lui          a1, 390605
                  andi         sp, t1, -1024
                  bgeu         a0, t6, 1048f
                  sub          s0, t0, t3
                  and          s0, t5, t1
                  sub          s11, t0, s10
                  or           sp, t0, s3
                  xor          s5, ra, a1
                  bgeu         s7, tp, 1058f
                  sltiu        t5, a5, -576
                  sra          s10, s9, s6
                  andi         t4, a1, -101
1046:             slti         s3, s9, 1
                  addi         a7, ra, -548
1048:             bne          zero, t4, 1065f
                  srl          a2, t5, t5
                  add          t0, s11, t5
                  or           s10, a3, ra
                  add          s8, t6, a0
                  beq          s2, zero, 1061f
                  addi         s7, s3, 1659
                  blt          s6, a0, 1073f
                  addi         s0, s1, -1175
                  nop
1058:             xori         s0, t3, 393
                  sub          a7, t0, s1
                  ori          s9, s10, -1490
1061:             lui          a1, 504257
                  slt          s7, a3, t4
                  addi         tp, a4, -1169
                  xori         s8, s5, 648
1065:             sltu         t5, a7, s5
                  sltiu        a2, t3, -512
                  bne          s7, t1, 1082f
                  slli         sp, s1, 19
                  or           a1, s8, a6
                  sltiu        s10, a4, 1014
                  addi         s11, a2, -739
                  bgeu         a3, t0, 1088f
1073:             bne          s1, a5, 1083f
                  andi         t4, a1, -1397
                  ori          a0, t0, -46
                  beq          s11, t5, 1086f
                  srl          t2, s5, t3
                  sra          s5, s7, a4
                  xori         a4, s1, -509
                  sub          sp, a3, s6
                  sltiu        s11, s7, -1527
1082:             lui          t2, 206651
1083:             sub          a7, s6, s7
                  slti         s0, sp, 81
                  xori         a6, a5, 331
1086:             sltu         t0, ra, zero
                  blt          a0, s5, 1093f
1088:             sra          zero, t0, a2
                  slli         a2, a3, 30
                  sltiu        s10, s1, 423
                  lui          s6, 531123
                  srl          s11, t4, s6
1093:             blt          t1, s11, 1099f
                  bge          zero, s3, 1110f
                  blt          a3, s4, 1114f
                  bgeu         a3, s3, 1113f
                  ori          s11, a7, 963
                  bge          zero, s6, 1102f
1099:             addi         s2, a4, 1128
                  xor          t3, a0, s4
                  srli         sp, t5, 11
1102:             xor          zero, a7, t3
                  slt          a7, t6, t4
                  sll          s3, gp, a7
                  bge          sp, t4, 1109f
                  blt          a4, a3, 1108f
                  bgeu         s7, s1, 1116f
1108:             slt          s3, a5, t0
1109:             xori         gp, a3, -1946
1110:             lui          t0, 288928
                  srai         t2, ra, 17
                  nop
1113:             slt          s11, s3, sp
1114:             beq          t0, sp, 1129f
                  sll          s7, t4, a0
1116:             slti         s0, s10, -1161
                  srl          s5, t5, t3
                  sltu         t2, s8, t4
                  and          sp, t5, a7
                  srai         t2, t6, 15
                  nop
                  or           s6, t4, s9
                  srai         gp, s1, 6
                  sltiu        s9, s7, -1583
                  ori          a1, s4, 675
                  slti         gp, t1, 1590
                  or           s2, s9, s6
                  auipc        s2, 42268
1129:             and          a7, a7, s5
                  sltiu        sp, a5, 1683
                  srl          s5, sp, a7
                  or           gp, t6, a0
                  or           s6, t4, sp
                  blt          a2, s9, 1136f
                  srl          t0, a4, t5
1136:             and          a7, t0, t2
                  sub          zero, a5, tp
                  blt          s5, zero, 1155f
                  blt          s7, t5, 1154f
                  sll          s11, s5, gp
                  ori          s8, t1, -1505
                  srl          t5, t4, a1
                  srai         a5, a5, 4
                  addi         a5, zero, 9 #init loop 0 counter
                  auipc        s11, 566565
                  nop
                  addi         gp, zero, 8 #init loop 0 limit
sub_1_26_0_t:     auipc        a0, 738360
                  addi         a5, a5, -2 #update loop 0 counter
                  bgeu         a5, gp, sub_1_26_0_t #branch for loop 0
                  add          a1, s10, t2
                  bne          a7, gp, 1162f
                  nop
                  sub          s11, s3, tp
                  sra          s5, a3, ra
                  beq          a3, tp, 1164f
                  or           t3, s1, a2
                  blt          s2, s2, 1156f
                  sra          s7, a1, a3
                  sltiu        t4, t0, 970
                  slti         a4, s11, 497
1154:             bgeu         ra, s0, 1168f
1155:             nop
1156:             sra          s10, s3, t3
                  bge          s3, tp, 1174f
                  srl          ra, sp, zero
                  beq          t5, a7, 1168f
                  lui          s3, 1020523
                  bge          s9, t0, 1163f
1162:             bge          sp, ra, 1168f
1163:             andi         t2, a0, 303
1164:             sub          gp, a6, t3
                  srai         s2, a4, 17
                  sltiu        s0, s0, -312
                  auipc        tp, 37687
1168:             sra          s8, s11, a6
                  beq          s9, a3, 1184f
                  xori         ra, s10, 1568
                  bge          s10, s1, 1190f
                  lui          a1, 322948
                  addi         gp, a2, 1977
1174:             srli         a4, s1, 8
                  srli         a2, a2, 16
                  bgeu         t6, a0, 1186f
                  slti         s7, t1, -1670
                  nop
                  sll          zero, a7, t5
                  srli         s0, a2, 15
                  bge          s3, s3, 1196f
                  bgeu         t2, gp, 1192f
                  slti         s10, gp, -72
1184:             lui          t3, 271316
                  bne          a6, a4, 1193f
1186:             xor          s0, s7, s11
                  sub          s9, s4, zero
                  bge          a4, s8, 1197f
                  sub          t2, a7, t4
1190:             add          zero, a4, s8
                  bltu         tp, gp, 1197f
1192:             sub          a7, a3, t5
1193:             srai         tp, t3, 0
                  xor          t0, t5, s1
                  xor          s3, s4, t6
1196:             bltu         a2, t0, 1199f
1197:             beq          a1, a6, 1213f
                  xor          a4, s2, tp
1199:             srai         a2, s7, 8
                  xori         s11, t0, 1626
                  bltu         s0, tp, 1218f
                  slt          s4, a3, a3
                  srli         ra, a5, 23
                  slli         sp, gp, 0
                  slt          s11, tp, s5
                  xori         a2, ra, 1589
                  xor          s10, s9, s9
                  srai         t2, a0, 12
                  addi         tp, zero, -9 #init loop 0 counter
                  auipc        s3, 266452
                  nop
                  addi         ra, zero, -14 #init loop 0 limit
                  sra          t5, sp, t3
sub_1_25_0_t:     sltu         s10, s10, a0
                  and          gp, a2, s10
                  addi         tp, tp, -1 #update loop 0 counter
                  addi         a4, zero, 278
                  beq          tp, ra, sub_1_25_0_t #branch for loop 0
                  sltiu        sp, s11, 918
                  nop
                  srai         s2, s5, 23
                  sltiu        s7, t5, -1549
                  sub          t1, a1, s3
1213:             bltu         ra, s9, 1230f
                  lui          a2, 513414
                  andi         s0, ra, -1897
                  sll          t0, t2, t5
                  ori          s9, s11, -588
1218:             nop
                  bge          t3, ra, 1223f
                  nop
                  srli         s8, s3, 12
                  or           s5, sp, t1
1223:             srai         s3, tp, 30
                  addi         a7, t4, 358
                  bltu         a1, t0, 1241f
                  bne          a5, t6, 1238f
                  bgeu         t3, s0, 1228f
1228:             or           s5, s2, s8
                  slli         a1, t1, 10
1230:             srl          s2, gp, a5
                  bge          s6, t2, 1246f
                  xori         sp, ra, 530
                  auipc        s6, 6454
                  add          s11, s0, t6
                  addi         s4, a6, -2040
                  lui          t5, 353176
                  bgeu         t3, a2, 1239f
1238:             addi         t5, gp, -1252
1239:             beq          tp, s9, 1243f
                  beq          s0, s11, 1251f
1241:             srai         s7, t1, 26
                  slli         s2, a4, 31
1243:             andi         t4, s4, -429
                  sub          tp, s0, s8
                  srli         a5, tp, 3
1246:             sltu         a6, t0, gp
                  blt          s10, zero, 1263f
                  auipc        t3, 804843
                  andi         a5, s5, -935
                  slli         a5, t5, 24
1251:             auipc        t3, 168099
                  blt          a7, s9, 1262f
                  bgeu         s7, s2, 1270f
                  sltu         t0, s0, s0
                  srli         t1, a6, 28
                  blt          t2, a6, 1273f
                  auipc        s0, 515710
                  sra          t1, a1, t1
                  bgeu         s11, tp, 1269f
                  slt          a4, t3, s11
                  andi         a6, s5, 84
1262:             bltu         s8, s6, 1278f
1263:             slt          s4, s6, a5
                  andi         s3, zero, 1442
                  sll          s7, ra, s2
                  bge          s2, t4, 1282f
                  xor          t0, s10, t1
                  beq          s6, s9, 1286f
1269:             slt          s11, a4, s6
1270:             xori         t4, tp, -1879
                  sra          t4, s8, s0
                  srli         s0, s8, 7
1273:             bge          ra, t5, 1284f
                  nop
                  slt          s9, tp, t4
                  srl          t5, s3, a4
                  nop
1278:             slli         a0, t1, 11
                  or           gp, tp, s9
                  sltiu        t4, t6, 1933
                  xor          s0, zero, a0
1282:             ori          t0, sp, -554
                  xor          s8, t0, a6
1284:             bne          t5, s4, 1299f
                  nop
1286:             srai         t3, a2, 8
                  xor          a0, s7, s10
                  slti         a4, s9, -436
                  bltu         a2, s0, 1305f
                  sub          a4, a5, a2
                  srl          gp, s8, s3
                  nop
                  lui          a5, 376145
                  srl          a0, t5, s6
                  add          a0, s5, s5
                  sltu         s10, s0, ra
                  bgeu         s1, s3, 1300f
                  slt          s4, a0, s8
1299:             bltu         t4, s7, 1309f
1300:             slti         a7, s8, 834
                  xori         ra, t0, 198
                  slti         a6, s11, 1785
                  sltu         a6, t0, s2
                  bgeu         s3, s3, 1314f
1305:             sll          s9, a2, s11
                  auipc        t1, 544861
                  blt          s3, s4, 1309f
                  lui          zero, 610454
1309:             bne          s2, s9, 1310f
1310:             and          t2, s9, t2
                  xor          s3, a6, s11
                  sltiu        s4, s6, 1851
                  nop
1314:             andi         t4, t6, 235
                  slli         s9, t2, 4
                  bltu         s7, s6, 1324f
                  auipc        a5, 304083
                  lui          t0, 979062
                  lui          zero, 944996
                  add          t1, zero, t0
                  slli         s11, ra, 5
                  bne          a3, a0, 1336f
                  bne          t5, s0, 1340f
1324:             xori         s7, t4, 237
                  slt          zero, t1, s9
                  slli         ra, a6, 20
                  sltiu        s8, s6, -1221
                  beq          s11, t4, 1343f
                  slti         t0, sp, 537
                  blt          t0, gp, 1346f
                  srli         gp, t5, 16
                  xor          t4, a5, a0
                  srl          gp, zero, a3
                  srl          s0, s7, t1
                  auipc        s11, 785395
1336:             lui          s5, 3693
                  bltu         t5, s9, 1343f
                  bltu         s11, s7, 1340f
                  bne          a7, a1, 1343f
1340:             bne          sp, a6, 1346f
                  ori          s8, t3, 121
                  andi         t4, tp, 618
1343:             slti         s7, a1, -288
                  sltu         a0, s6, ra
                  slli         t0, tp, 23
1346:             srli         s3, s8, 23
                  blt          s3, s0, 1359f
                  beq          a0, a4, 1352f
                  bgeu         a5, s6, 1368f
                  slti         a4, a5, 1230
                  bge          s6, t6, 1357f
1352:             xor          a7, sp, s0
                  slti         t4, s3, -1661
                  blt          t3, a6, 1363f
                  add          t5, s6, sp
                  addi         zero, s1, -1644
1357:             and          a2, gp, a7
                  srl          s10, t2, a3
1359:             srai         ra, s11, 5
                  sltiu        t3, a0, 1303
                  lui          s9, 987099
                  nop
1363:             andi         s0, s3, -174
                  srli         s0, s2, 4
                  srli         t3, tp, 21
                  sll          t0, a1, s8
                  srli         s7, s0, 23
1368:             slli         ra, s7, 18
                  or           a6, a0, t2
                  bgeu         ra, s0, 1385f
                  sra          sp, a2, t0
                  sltu         s5, s2, s9
                  bgeu         sp, s3, 1382f
                  and          a0, s1, s3
                  slli         s5, t2, 24
                  sltu         ra, a3, s4
                  sltu         a6, a5, a2
                  slt          t3, ra, s2
                  xori         t1, s6, -2032
                  srl          t4, s8, t0
                  slli         s7, a2, 29
1382:             slti         a2, a2, -178
                  sltu         s5, t6, a5
                  lui          s2, 723638
1385:             sltu         zero, t2, a5
                  nop
                  andi         tp, t6, -745
                  slt          s9, tp, a0
                  ori          s9, s4, 480
                  andi         a7, s5, 181
                  slli         s11, t0, 13
                  andi         a6, a3, 263
                  sll          a5, ra, t1
                  sltu         t5, s11, a7
                  slti         s9, t4, 2021
                  srl          t3, t2, zero
                  slti         s11, t0, -1241
                  xori         s6, s5, -1817
                  xori         t1, s2, -2030
                  add          t4, a4, t5
                  ori          a1, t6, 274
                  nop
                  bne          s0, t0, 1418f
                  nop
                  bgeu         a1, gp, 1420f
                  bge          ra, s8, 1423f
                  bltu         t1, ra, 1417f
                  slli         s2, sp, 18
                  sra          t4, s7, a3
                  blt          s7, s10, 1420f
                  srl          t3, s2, s4
                  nop
                  slli         t3, s8, 9
                  sltiu        t4, t4, 1687
                  sll          s6, t1, zero
                  or           t4, a4, sp
1417:             sub          s3, ra, s2
1418:             nop
                  sltiu        t1, a5, -1723
1420:             blt          a1, s6, 1424f
                  blt          t4, a5, 1422f
1422:             srl          s4, s11, a7
1423:             srli         s7, s6, 20
1424:             sll          s6, t4, t0
                  slli         a4, s7, 7
                  nop
                  xor          zero, zero, a6
                  bge          s6, a4, 1446f
                  lui          t1, 443640
                  bge          t2, a4, 1436f
                  sub          s9, s2, a6
                  bne          ra, s3, 1440f
                  bltu         s11, s1, 1443f
                  nop
                  srl          t3, a1, a4
1436:             bgeu         t1, t5, 1438f
                  srl          t0, gp, gp
1438:             srli         s3, s11, 16
                  ori          s6, s8, -970
1440:             or           zero, a6, s9
                  sub          s3, s1, s3
                  srli         sp, t4, 26
1443:             sub          s10, tp, t2
                  add          sp, t2, a3
                  auipc        a0, 533904
1446:             bge          s8, s10, 1462f
                  addi         t1, a6, 590
                  sltu         s2, t3, t3
                  xor          s4, s3, tp
                  beq          ra, s1, 1456f
                  slti         s7, t2, -1909
                  beq          s1, s3, 1461f
                  blt          s3, a1, 1469f
                  ori          s7, t6, 1417
                  sltu         t1, s1, s3
1456:             xor          a0, s10, a5
                  slti         a4, s2, -90
                  beq          a3, a1, 1474f
                  xor          gp, s2, t0
                  srai         t1, s11, 12
1461:             sra          s5, zero, a4
1462:             nop
                  slli         a7, s3, 6
                  beq          a1, s3, 1478f
                  slti         a4, t3, -1636
                  blt          t4, s6, 1485f
                  srli         s9, s10, 1
                  beq          s9, s6, 1485f
1469:             sub          s8, t6, t3
                  slti         zero, t1, 1564
                  and          t1, tp, s8
                  beq          a2, t5, 1483f
                  sll          s2, t1, s5
1474:             xor          s11, s4, tp
                  add          zero, a2, t3
                  sra          a1, t4, tp
                  sra          t0, a2, t4
1478:             beq          a7, t6, 1481f
                  srl          a2, tp, gp
                  bgeu         s4, s4, 1484f
1481:             slti         s4, t1, -1280
                  srli         a7, s10, 21
1483:             slli         t3, a1, 6
1484:             sll          s4, ra, zero
1485:             lui          t1, 608488
                  sra          s6, s11, sp
                  xor          s4, ra, a6
                  ori          gp, tp, 469
                  srli         s8, a0, 16
                  sub          s2, t2, sp
                  auipc        sp, 693794
                  addi         t1, a2, -1696
                  slli         t0, a3, 17
                  and          s0, s7, t5
                  sub          a4, s7, t0
                  addi         sp, s9, -1580
                  sll          s8, a6, t3
                  bge          a5, s2, 1513f
                  bne          a0, s3, 1501f
                  ori          a6, a2, 966
1501:             srli         a5, s9, 13
                  beq          s8, s1, 1519f
                  xori         a7, t4, 1356
                  bge          s4, a5, 1513f
                  sltiu        a6, a6, -1879
                  add          t1, s9, a6
                  slt          a6, zero, a1
                  bge          a1, ra, 1514f
                  slt          s9, a5, a1
                  and          a5, s10, a0
                  bgeu         t0, a4, 1523f
                  beq          t0, a3, 1525f
1513:             andi         s11, t6, 1617
1514:             srai         s3, a2, 4
                  auipc        s10, 533329
                  beq          ra, s2, 1525f
                  addi         s0, s0, -722
                  nop
1519:             xori         t0, t3, -1725
                  slt          t3, a7, a7
                  slti         s8, a5, 513
                  or           a1, a4, s1
1523:             xori         s11, s11, -1940
                  slli         a2, t2, 12
1525:             sub          s8, t4, t2
                  add          t3, s5, a7
                  srli         a6, s4, 28
                  sub          s11, zero, t4
                  ori          gp, t5, 1469
                  lw           s4, 4(t6)
                  auipc        tp, 136077
                  sra          s6, s5, t3
                  addi         t6, t6, 20
                  andi         s3, s2, -100
                  slli         s0, a1, 27
2182:             addi x14, x20, 0
2182:             jalr x14, x14, 0
sub_5:            addi         s10, a2, -465
                  sltiu        t0, t5, -1857
                  addi         t6, t6, -52
                  sw           s4, 4(t6)
                  xori         s10, s9, 618
                  addi         s6, zero, 7 #init loop 0 counter
                  srai         zero, a2, 9
                  slli         tp, t5, 10
                  xori         s9, a5, -22
                  srai         tp, gp, 16
                  srli         t5, a3, 16
                  sltiu        gp, s1, 846
                  addi         s2, zero, 17 #init loop 0 limit
                  add          t2, t0, zero
                  sra          a6, t2, gp
                  auipc        t1, 17285
sub_5_1_0_t:      slt          t5, ra, s3
                  slli         a7, t1, 6
                  addi         s6, s6, 3 #update loop 0 counter
                  bltu         s6, s2, sub_5_1_0_t #branch for loop 0
                  or           t3, a7, s7
                  blt          a1, zero, 11f
                  srl          a2, s3, s0
                  bltu         gp, a4, 12f
                  slt          tp, a5, t1
                  ori          a2, t6, -1252
                  add          zero, s0, s2
                  slt          s4, t4, s6
                  srai         a1, t4, 4
                  slt          gp, sp, gp
                  blt          t5, a0, 28f
                  slt          gp, s10, a0
11:               beq          a4, a1, 24f
12:               xor          s8, a3, t3
                  slli         a6, t1, 18
                  slli         s3, t3, 23
                  bgeu         s10, t1, 28f
                  lui          a0, 671818
                  xori         a4, s0, 1950
                  nop
                  srai         s3, a7, 27
                  xori         s10, t6, -1267
                  lui          sp, 568245
                  bgeu         t5, s0, 25f
                  nop
24:               xor          a0, a6, t2
25:               or           t3, t6, s4
                  or           s10, s5, s1
                  ori          t1, s0, -1214
28:               sra          t3, s9, t6
                  slt          s10, a6, t3
                  slt          s5, a3, s0
                  addi         a7, sp, 1257
                  xori         a5, a6, 731
                  xori         gp, s1, -200
                  slt          tp, a5, s8
                  bne          a5, s7, 37f
                  slti         t5, s8, 412
37:               sltu         sp, sp, tp
                  sltu         s8, t1, t2
                  slti         s4, s9, -327
                  sll          a5, s1, a5
                  blt          a4, s2, 61f
                  and          s5, s6, a7
                  ori          t1, sp, -1328
                  andi         t5, sp, 1634
                  auipc        a5, 175553
                  sltiu        a6, s0, 158
                  srl          t1, s5, s9
                  xori         t4, s11, 1234
                  sra          s6, s0, s7
                  nop
                  andi         t0, a1, -1859
                  auipc        s7, 993917
                  ori          s0, a0, -130
                  xori         a4, a6, 892
                  ori          t4, s6, 772
                  sra          zero, s7, s10
                  bne          s10, gp, 63f
                  slli         s0, a4, 26
                  sub          t4, s9, s0
                  blt          a5, s5, 79f
61:               srli         s2, s8, 11
                  and          a7, s2, a5
63:               sltiu        a6, t0, -291
                  srli         s11, s3, 18
                  or           t1, a1, t3
                  bgeu         t5, t6, 80f
                  bgeu         s2, t1, 81f
                  srl          ra, s1, a2
                  sltu         t4, ra, a5
                  bgeu         s11, gp, 78f
                  srli         a0, s10, 16
                  addi         zero, sp, 317
                  sub          s9, a5, s5
                  and          t1, s9, a4
                  beq          s5, s8, 92f
                  xori         t3, t6, -674
                  srli         tp, a7, 19
78:               add          s8, a6, s10
79:               lui          t2, 446832
80:               srai         s2, a1, 12
81:               xori         gp, s1, -301
                  sltu         s6, t3, sp
                  sltu         zero, s3, t6
                  auipc        gp, 510616
                  slt          t4, a4, a0
                  ori          s7, t4, -1313
                  srl          a2, s3, s11
                  add          sp, s6, s5
                  sub          zero, s1, a4
                  sll          t0, t2, s8
                  addi         t2, zero, 4 #init loop 0 counter
                  or           t3, t3, a7
                  lui          tp, 659010
                  slti         a4, ra, -826
                  sltu         t5, s3, zero
                  addi         s10, zero, 3 #init loop 0 limit
                  ori          t3, a2, -1430
                  add          t0, s1, gp
                  ori          s11, sp, 798
                  addi         a5, a6, -1764
                  and          t1, t5, a6
                  sub          a1, a5, ra
                  or           a1, ra, a0
                  xori         a7, a6, -846
                  addi         tp, s6, -541
                  nop
                  sub          zero, a2, tp
                  and          s9, a3, tp
                  slti         s0, s9, 1264
                  xor          s4, s2, sp
                  auipc        s0, 502502
                  srai         s3, a3, 0
                  ori          t1, s9, -1848
sub_5_0_0_t:      ori          ra, s1, -1739
                  add          s4, zero, s10
                  addi         t2, t2, -2 #update loop 0 counter
                  ori          gp, s10, 833
                  and          tp, a7, ra
                  bgeu         t2, s10, sub_5_0_0_t #branch for loop 0
                  sll          a0, sp, t4
                  bltu         s9, s9, 109f
92:               auipc        t4, 362336
                  sltu         s6, s5, a5
                  bne          a2, s1, 111f
                  lui          s0, 2384
                  xori         s10, a3, -197
                  bltu         s0, s6, 116f
                  addi         s10, a3, -1565
                  beq          s8, tp, 103f
                  srai         ra, s5, 5
                  bltu         zero, s10, 102f
102:              sll          s6, zero, a4
103:              bgeu         a5, gp, 116f
                  blt          s5, a2, 122f
                  srli         t3, s4, 30
                  slt          t1, s7, s8
                  slt          s6, zero, ra
                  lui          sp, 10936
109:              sll          t3, ra, a0
                  slli         s7, t6, 18
111:              srli         t3, zero, 17
                  blt          t5, s10, 119f
                  beq          s11, a1, 125f
                  srli         t5, s8, 12
                  bgeu         s9, t2, 125f
116:              sltu         a5, t0, zero
                  or           t1, t6, s3
                  beq          a1, gp, 125f
119:              xori         tp, s4, 1690
                  sll          t1, a1, s3
                  blt          t0, t0, 125f
122:              bltu         a6, s5, 125f
                  lui          t5, 150636
                  blt          s3, s8, 125f
125:              addi         zero, t5, -1531
                  addi         a2, s10, 1
                  add          s7, t0, gp
                  slti         s3, s8, -731
                  lw           s4, 4(t6)
                  addi         tp, a3, 1373
                  sra          t1, s2, gp
                  srai         s2, s11, 16
                  sub          s10, t6, s11
                  auipc        a1, 887835
                  addi         t6, t6, 52
                  sltiu        a5, a7, -351
188:              addi x24, x20, 1
188:              jalr x24, x24, 0
sub_2:            xor          gp, a4, sp
                  srai         a5, a0, 26
                  addi         t6, t6, -56
                  sw           s4, 4(t6)
                  slti         a4, a7, -337
                  slt          s5, a7, t2
                  sub          ra, s0, t3
                  nop
                  andi         a7, s8, -141
                  bltu         a5, t5, sub_2_j4 #branch to jump instr
                  add          s10, s1, s4
                  slt          a7, s6, t0
sub_2_j4:         jal          s4, sub_3 #jump sub_2 -> sub_3
                  sub          ra, s10, s4
                  add          t0, a7, s9
                  srai         gp, s10, 14
                  slt          t4, t1, t1
                  lui          a1, 290473
                  addi         s6, s11, 1557
                  sra          s0, s0, t2
                  bgeu         gp, s9, 16f
                  bge          s11, a1, 14f
                  blt          s6, s0, 18f
                  bge          s8, s4, 18f
                  srli         s3, tp, 1
                  srai         s6, zero, 10
                  bgeu         s11, s1, 18f
14:               ori          a4, s9, -1226
                  sltiu        ra, s0, -1341
16:               blt          s3, s4, 18f
                  ori          s5, s6, -1178
18:               sltiu        s6, t2, -1035
                  addi         s5, sp, -970
                  lw           s4, 4(t6)
                  sltu         t1, a3, a2
                  sra          s11, s11, t5
                  sra          gp, tp, t6
                  sub          sp, t4, s3
                  and          a2, t6, s7
                  addi         t6, t6, 56
                  sll          t4, s11, tp
                  srl          ra, tp, ra
                  or           zero, s10, t4
                  andi         a0, s6, 1631
44:               addi x4, x20, 1
44:               jalr x4, x4, 0
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
.word 0xa07c6d4a, 0xd1462c2a, 0x1314d8f4, 0xdc629db8, 0x2b57e705, 0x58adb7fe, 0x09e55417, 0x38fb5c80
.word 0x35f99385, 0xe4883f96, 0xd010e19b, 0x2d7d860b, 0x100f7407, 0x69ca8c51, 0xf4e37714, 0x6dc3b216
.word 0x141ee3ff, 0xa33435e1, 0x78ea7712, 0x3cb1ccb2, 0x3ecf693b, 0x6ae4a40a, 0x2346ae98, 0x549af705
.word 0x172d2169, 0x0d037e9c, 0x4267ddbc, 0xbd601dd6, 0x1bd80298, 0xf132b778, 0xe51e28fa, 0x6326c502
.word 0x73a21fef, 0x845be8ca, 0x71487551, 0x3dfdd025, 0x4aaaeb7b, 0xcd250434, 0x4ee9d779, 0xd0ca9c2d
.word 0x2aa99f9a, 0x193c956c, 0x8be64f98, 0xb1165f69, 0x472aabc9, 0xea548b73, 0xe9572794, 0x20e2df22
.word 0x34ddf213, 0x079439f2, 0x81d6be4f, 0x5f59c629, 0x56c94a58, 0xd3d78e5c, 0x0b1f597d, 0x8fb8a1f6
.word 0x22c14207, 0x9858159e, 0x13bdca57, 0xa880f143, 0xde6d1b0a, 0xa71d26c6, 0x5a2d360e, 0xfa14c9f5
.word 0x1b2d1bdc, 0x82588e9c, 0x48e17833, 0x0c846c4e, 0x058b7b30, 0x42306ba1, 0xe63a88cf, 0x6a8f62da
.word 0xd215ccbc, 0x4ab82c13, 0x80cfdf23, 0xe36e0149, 0x1377f202, 0x2100716d, 0xacad344c, 0x59f24f1f
.word 0xafdf0242, 0x304b3cf3, 0x7f19468c, 0x609259bb, 0x542872c6, 0x0ed57530, 0x8dd193b6, 0xee081a8e
.word 0x6515e73d, 0x5f6115b8, 0x1c422b66, 0x6dcaabe8, 0x3a306caf, 0x0b3e50c6, 0x6f4d67df, 0xcafd10da
.word 0x1d21a191, 0xdfacd2cd, 0x4e16bcb0, 0x2849bd37, 0x7c4156d1, 0x50b5a4c7, 0x4562c43f, 0xdaa58ae5
.word 0xfbfb2873, 0x84db5f7e, 0x3a35b56e, 0x02abc63f, 0x82f3b641, 0x134b7137, 0x868faf1a, 0x5c4c949e
.word 0x9fdc639f, 0x4dacd7a3, 0x4b681abb, 0x1adc43c4, 0x0e081eeb, 0x29353a8b, 0x491a5b59, 0x5cfdbeba
.word 0xe6a8322f, 0x7228776b, 0xacf4abdb, 0x48b3acd6, 0x7b645fc4, 0x7ff96254, 0x5a22cfb1, 0xc7d2028e
.word 0x91796bcd, 0x9f9ac18d, 0xa0d39825, 0xff26558c, 0x4aa983b2, 0xeaa48774, 0x36e1004d, 0x2f5f0750
.word 0xf5cc88b6, 0xa1de5e64, 0x00f2f018, 0x762d94c6, 0x37379ceb, 0x87320469, 0x627b0db5, 0xaf8b4b2d
.word 0xec451864, 0xdef11e98, 0x34ae99a3, 0xad3869b4, 0x1314c5df, 0x4fd2debc, 0x912e1021, 0x73eb8406
.word 0x4a3f57f3, 0xc7ea894c, 0x633cdf2f, 0x69420888, 0xbe90d58c, 0x420f3f9d, 0xa3c07b99, 0xdce4685f
.word 0xa5471df8, 0x2809439f, 0x6dc87c0a, 0x8aef69e6, 0x546b2b6a, 0x2fd8f629, 0x90672b3b, 0x13f96200
.word 0x18fe08d8, 0x3ce14c48, 0x1ad7ecec, 0x028fe821, 0xc76242f5, 0x52342bf3, 0x69673d59, 0x451775aa
.word 0x9952f954, 0x651ec8de, 0x02759bae, 0x948055d8, 0x6f8adf32, 0xe8a22c1d, 0x04d3d23d, 0x3cd2ac20
.word 0xa131d746, 0x44a934fb, 0x694c0bb4, 0xaf10778b, 0x13b783bb, 0xc0a65ad1, 0x073544d2, 0xc191d0b7
.word 0xccd6c899, 0xbfd6dac2, 0xb2153c03, 0x49cfebd6, 0x45f89b6b, 0x429b3b23, 0xc501d594, 0xdb1f2cd0
.word 0xbeb8a1a5, 0x69da190b, 0x4bc51b97, 0x5bed986e, 0x7bdf5998, 0x80eaa4cc, 0xec2089f3, 0xe7b863fb
.word 0x38113f6b, 0x9b454b0c, 0xed3bf611, 0x832124b8, 0xee133731, 0x58f99649, 0x55cebb5b, 0xc3fd2bd3
.word 0x22737698, 0xfae99680, 0xb26de544, 0x4c9daecb, 0x2e331914, 0xe91361ac, 0xfc7fd5d9, 0xf95dc2cc
.word 0x88d516c5, 0xca95ee9e, 0xa6c152f8, 0xec2097ea, 0x529a16f3, 0x3be14f42, 0xa311253a, 0x2f7bea65
.word 0xe69ac0d2, 0xa793773f, 0x3cdfb836, 0x51fd85cd, 0x98a13dd5, 0x871be37e, 0x4e29761a, 0x070c129c
.word 0x1c503efc, 0xa8627614, 0x96a2a4c2, 0xa6cc4cd3, 0x49101fff, 0x521193a6, 0xf833a7fb, 0xf959bc7c
.word 0x1b71a236, 0x3844be56, 0x9ff88163, 0x5de07db9, 0x275e305f, 0xdf70e060, 0x1a753086, 0x5f376c99
.word 0x991fa2be, 0xe924e68a, 0x7aff5608, 0x6dabd79e, 0xede6daf8, 0xd037db2c, 0xce9e35e8, 0x41d3db8b
.word 0xdb03a3d3, 0x81159090, 0x71e30781, 0x83df052a, 0x110c76f6, 0xd9dbd801, 0x0de369db, 0xd122209e
.word 0x3b2adc54, 0x6a592822, 0x3a5b8bc1, 0xe709467f, 0xf4bdb155, 0xda812308, 0x4b314dc4, 0xa5c71fb7
.word 0x0aa6d30f, 0x54616791, 0xffc095ea, 0xb51f281d, 0x9c3e89a0, 0x896d4501, 0xdf51482c, 0x781cf5db
.word 0xa2e87644, 0xe30877de, 0x5d70d3ca, 0xaf3d54e0, 0xf1002059, 0x262b0398, 0xfa240f14, 0xcef8443e
.word 0xaabaf96c, 0xf26d63f9, 0x9c48db53, 0x6e6157c7, 0x3b58851b, 0x76d3e99d, 0xf106c13a, 0xa64aaa6f
.word 0x90f46bd5, 0x1ece064c, 0x522c87a3, 0xbea481bd, 0x1b375cce, 0x7789eba7, 0x437a2445, 0x0c2f696e
.word 0x6fa56f6e, 0x20acbcd7, 0xde4774cd, 0x4a310ac0, 0x38324b71, 0x8fe1047e, 0xa7912479, 0xe9aa9014
.word 0x88df7993, 0xe5d796bb, 0x86625868, 0x1d5c02b3, 0x48cb9494, 0x6806761b, 0xb38a1c83, 0x7614e835
.word 0xc09ce524, 0x3bdab0c7, 0x619d738f, 0xa7219118, 0x3549e76f, 0x3d68026c, 0x4a77bf50, 0x3bb50ece
.word 0x2e13660c, 0x6385159f, 0x0868588e, 0xbbdce552, 0x1324c113, 0x221a0c8f, 0x7cff24df, 0xa19fef45
.word 0xbcd0e075, 0xa07cb78f, 0x6a459ddd, 0x3c0464c7, 0x253f662b, 0x01f7ddb9, 0x1d8a7765, 0xda9d7dce
.word 0xad3a84ae, 0xefe3533d, 0x047f3ae5, 0x963db215, 0x1c39190c, 0xf2e93eed, 0x13799da4, 0x02d27cf2
.word 0x74d730b4, 0xd45792a3, 0xe582cca7, 0xdcf3a01a, 0xb4dab1d3, 0x63f6bad5, 0x80f92d1e, 0xf6aae857
.word 0x5209558b, 0xc72ab93c, 0x8a6526b4, 0x222b0958, 0x100835eb, 0x328fb827, 0xb9fb5fcf, 0xaf111727
.word 0x4149ba6e, 0x3b434fca, 0xbc321f57, 0x0ebaf8c4, 0x2d00fcd7, 0x9738b9d7, 0x0b97a331, 0xaa8745b1
.word 0xcba2e36e, 0xe1666013, 0xae9dbac2, 0xeb5296b9, 0xa5543758, 0x091c9f09, 0xc5e61bc0, 0x04a56810
.word 0xa34404f5, 0x773e257a, 0x77f2df08, 0x47486efb, 0xc465b818, 0x19ad46d2, 0x923961ce, 0xd758af4f
.word 0x36a11cb5, 0x48fc3170, 0x950d89bd, 0x2cd77f59, 0xf65125fc, 0xf9485809, 0xc07f44b2, 0x2a1052bd
.word 0x7d9a20b3, 0x120543c4, 0x75432e16, 0xec5c56c7, 0xeb924ce4, 0x7dc4aeac, 0x7796ea5f, 0x813763ca
.word 0xe6916353, 0x12610077, 0x68b2502b, 0x48aa7a34, 0x3fffce30, 0xecf091a3, 0xa55253ac, 0x123a01a7
.word 0xef5851bf, 0x56775969, 0xde685377, 0xc541fbff, 0xc214d6e2, 0x7bb869ea, 0xe9b9681e, 0x65a67c36
.word 0x1249115e, 0x0849b2a7, 0xd23b7da5, 0x7efc3c18, 0x13a16c97, 0x7683bc5d, 0x1c5e8226, 0x3a3fb56f
.word 0xc18aaf60, 0xb765c566, 0xb46b5f3a, 0xf104eeed, 0xaa444cad, 0x3bf6a4fc, 0x9a688aba, 0xa848305e
.word 0x34a54b23, 0x5dc1f93b, 0x021ccc9f, 0x4a1be0f2, 0x5bd7f0e1, 0x2df02d14, 0xbb3009c2, 0x222d90a2
.word 0xe8475a45, 0x062930a0, 0xa8b01045, 0x421277a2, 0x870787c4, 0x08f763ff, 0x34a26142, 0x98d7413a
.word 0xfc3f8e1a, 0xa77acb9b, 0x3d119312, 0x41a3f46a, 0xb54c53c1, 0x955ac77f, 0x8ee6e69a, 0x5c3ff869
.word 0x11608755, 0xd09b5f7c, 0xef48a142, 0x162ba972, 0xf42cf9c1, 0x057c42cd, 0xa45a4407, 0x23c62464
.word 0x7aabcaf9, 0xd9712c68, 0x889f16ed, 0x8355bcaf, 0x90bb272c, 0x0e1313ce, 0x61e42d26, 0xede1ef7d
.word 0x2e4ecf40, 0x0a19a197, 0x0493e9fc, 0xd3c43b6e, 0x67684b42, 0x924ede88, 0x6e014a93, 0x4ed0dc87
.word 0xd7597236, 0x710364b6, 0xa3fc9105, 0x86206cf0
.section .region_1,"aw",@progbits;
region_1:
.word 0xb17128dd, 0x54eb44fc, 0xbb7762b1, 0x4d6e2ff9, 0x39265b98, 0xec61d53a, 0x50c44b9c, 0x6e7f198d
.word 0x6888146f, 0x9c3036a8, 0x0bd3c8d8, 0x09fe5781, 0x6687e86e, 0x2a55238f, 0x7aba0a0e, 0x41b689a7
.word 0xc99a98c7, 0x98364a45, 0xc0aca8be, 0x7f5a7b09, 0xc3de6825, 0x745b0ffc, 0x3d205f8c, 0xd4af3082
.word 0x5f10d14f, 0x167c57aa, 0xb5ed6a82, 0x8a9b4813, 0xe915dc21, 0xedef5aba, 0xc88f830b, 0xb0347e9d
.word 0xc6230726, 0x094139f7, 0x62b9ece1, 0x3984bf06, 0x255eb358, 0x6f382b04, 0x09ea8e8c, 0xa0bacb9a
.word 0x82c76564, 0x84214d23, 0x1254663d, 0xd7f22af8, 0x616d8768, 0x6deef100, 0x5e750992, 0x324599f7
.word 0xe01d27a6, 0xa55404dd, 0xee34d4d6, 0x82a3f5b7, 0xfe1e0aae, 0x0a1bd6f9, 0xd74c6aef, 0x0ea2c452
.word 0x44d29d1b, 0x3b6ba801, 0x06119cb2, 0xb3224030, 0x4f2885b1, 0x06e9419e, 0x11263577, 0x6f32473f
.word 0x59e5d42d, 0x575a007c, 0xd15433de, 0x433ab266, 0x53c2105e, 0x7f4e9201, 0x19db9477, 0x59173557
.word 0xdf953f1d, 0x457bbf10, 0x9ac25dd0, 0xe96f9b94, 0xff1e3930, 0x84750537, 0xa31f9a84, 0x7958d642
.word 0xe4e9a42a, 0xb8806e3c, 0x42696795, 0xc084017e, 0xbf5034da, 0x4e42438d, 0xebb4513f, 0xa0f621a3
.word 0xf25d0108, 0x2b73807b, 0x4dbc6b00, 0xea94d78d, 0xa72cefa7, 0xd2026e35, 0x5b902796, 0xfc9093a9
.word 0x8c876e11, 0x03384b58, 0x28b4ad87, 0x79ed8bc9, 0x6b09487f, 0xa8ca82e1, 0x76f3286f, 0x5dd54dde
.word 0xca48bcab, 0x7ab046ce, 0x79eb665f, 0xd1a66985, 0xc56815d2, 0x05b67eb3, 0x3a065c26, 0xadb6895c
.word 0x7ebf1ba5, 0x8304cabe, 0x0aa160c6, 0x0166da1e, 0x94f15a90, 0xafc9487e, 0xe5de6a7e, 0xb61349b9
.word 0xfd0c369f, 0xfa6b6076, 0x62a80d13, 0xf29cac94, 0x416e346a, 0x48468071, 0x63f2c992, 0x8859ef75
.word 0x14b34d5c, 0x5900dfb6, 0x4cdb35dc, 0x4da3f67d, 0x8a413c53, 0x9cb94e3a, 0xf5abe164, 0xd9fde3eb
.word 0x0e7aa315, 0x4b71c76d, 0x1e9de32e, 0x7f7d88f2, 0x68c8a091, 0x9c9ee826, 0x4c3ab88e, 0xae4bf007
.word 0x082da8d5, 0xaacee20d, 0x22aa9327, 0x5bd4eb85, 0xed8d23f1, 0x6ec18795, 0xc5e1bf66, 0x6aa2eb3e
.word 0x60d43862, 0x6cccf688, 0xacb9cc0d, 0x7e1c5fc7, 0x805581b7, 0x42da21e1, 0x38e74122, 0xab4c1203
.word 0x7075b70d, 0xbe2b3448, 0x2fbda1dc, 0xb98069af, 0xd9b1c772, 0xf963af0c, 0x723702da, 0x75a4d299
.word 0x77d158a3, 0x6a63f27f, 0x3b995fe3, 0xe3df47d3, 0x054cc0cc, 0x84eb7a06, 0x50311d31, 0x085355c7
.word 0x3523d6d1, 0xdd1c53fd, 0xf38b5768, 0x9c886fc5, 0x22ce0467, 0x71e698bf, 0x15f03a1d, 0xd9036e2a
.word 0xfa834542, 0xf68e3dff, 0x4737cfe7, 0xb10befaf, 0x7a1ce8a3, 0x0678b461, 0xacfab52f, 0x966564ce
.word 0x5ca2091b, 0x2cc20c40, 0x3fd19dad, 0x0a9ce676, 0xe3c47a29, 0x77959b5d, 0x00538f07, 0x098a6aaf
.word 0xf77602bd, 0x6b4766ba, 0xb61371a1, 0xbf51c203, 0x1daa03c4, 0xd6e43d4b, 0x96ab556b, 0x6bb34ea6
.word 0x585f2be8, 0x2e863951, 0x331cb0c2, 0x091b8c4c, 0x022be404, 0x397d2ed8, 0xd52090e9, 0x4724f2e2
.word 0x509bc5b5, 0x083890fd, 0xd40fe09b, 0x5ff77adf, 0x5f760994, 0x4f6b30c2, 0x90af6fbf, 0x085c4210
.word 0x7c5c7759, 0xe19e50d2, 0xc2c7856f, 0x431c1823, 0x69d25097, 0x4ea7be2a, 0x8a19fd4d, 0xc1b7a4d9
.word 0x31f9809b, 0x2d24f02a, 0xa450a919, 0xfc1d41ea, 0x00c906f1, 0xc8a76cd7, 0x561ae5b7, 0xe7ff7012
.word 0x48ddfd57, 0x85a6c97d, 0xd2d78202, 0xfdc5dcd1, 0x4455651f, 0x666be452, 0x30241c20, 0x42c69655
.word 0xbbee48c3, 0xaf65880b, 0xa5b0d858, 0xfa8afb0e, 0xb61df585, 0x2b92b723, 0x4b57eb57, 0xa375d6bd
.word 0x994e1333, 0xe6848067, 0x0d02c8d4, 0xc50ae506, 0xb74a8165, 0x9098c9b1, 0x567f55df, 0x42bf2239
.word 0x2b53dd32, 0x221d7c6d, 0x12c09490, 0x504c80c9, 0x705d2a3e, 0x1b756560, 0xbab0c273, 0x04e12445
.word 0x1e6523a8, 0x88cbb8f7, 0xa1504f3d, 0x66c0e735, 0x35429286, 0xd82016fa, 0xe65674a7, 0x611b6823
.word 0x9f243227, 0x50fac967, 0xa8d46921, 0x4c788d2b, 0x61eee826, 0x5fc5be61, 0xd7757fd8, 0xd6c729e0
.word 0x1f7e01c1, 0xe87d731c, 0xef9fa919, 0x2b2387b5, 0x2dc29c3e, 0x85aaeb16, 0x10cc294d, 0x4c398c21
.word 0x6fbccdfb, 0xe4bd1279, 0xbce027c3, 0x345380b6, 0x6b4c1377, 0xf98a87d2, 0x935f3c8a, 0x0c12edae
.word 0x405582a2, 0x85c05f6f, 0x09bd034b, 0x7c2c002f, 0x1fe5ad62, 0x13565592, 0x597046e6, 0xb5a07b75
.word 0x16c286f4, 0x6fe045a0, 0x9c926496, 0x80e4159d, 0x05c1a989, 0x75f77b79, 0xa7ccd5d8, 0x008af60b
.word 0xd60d4710, 0x29966f36, 0xd1fdcbe7, 0x4cea31a7, 0x7701b92a, 0xe4063d62, 0x7a76749f, 0xe2919ece
.word 0x10114fb6, 0x0f6f5ea7, 0x6ab97d54, 0x136cabea, 0xae1066fe, 0x8fe0862d, 0x0abab960, 0x0ea263e1
.word 0x4876d66e, 0x0381e5f0, 0xe5516a13, 0x6dd570c5, 0xfd6e92fc, 0x812be886, 0xb84e1dba, 0xaf57be9e
.word 0x30da5654, 0x63c3b81e, 0x6fbccbb4, 0x870af4bd, 0x460381a6, 0x2a6af925, 0x8eab78d1, 0xe65a8258
.word 0x514e535f, 0x799d3a5b, 0xc14e6f32, 0xf180d0df, 0x6fdcaab6, 0xae61167f, 0x31b52612, 0x76265cbc
.word 0xce667707, 0xc8af0f19, 0xbba339fb, 0x85284327, 0xa7596739, 0x4b6a5231, 0x55f515d1, 0x4a3314cf
.word 0x7b66a817, 0xe42a6682, 0x90b3ae07, 0x88a3ae84, 0x8cd69f5a, 0x0b5e6654, 0x95d1f890, 0x03b07150
.word 0x4d6c97ee, 0x230a4327, 0xf7c7a74d, 0x6d31f846, 0x38b7cf18, 0x14c73da4, 0x7f2be8fa, 0x6fae9f33
.word 0x0f8cd8cf, 0xdfa5a490, 0xf4e51b57, 0x04b6b628, 0x9d929dac, 0x26b0101c, 0x0047ce03, 0xcf2ec5bc
.word 0x8a1f0ae7, 0x872b40c9, 0xdb3a5cde, 0x61bc0b6f, 0x22eb65e0, 0x68d4ecc3, 0x3c959095, 0xf450c67b
.word 0xf2f5dd0f, 0x9acbfe8f, 0x31974594, 0xed94967a, 0x7ea74b23, 0xb7308883, 0x5d6b2357, 0x3e33b2bd
.word 0x9a14cc83, 0x11239b97, 0x69f43013, 0x0d99cf4f, 0xe0c66290, 0xabefc988, 0x0fdd1b5a, 0x10139e45
.word 0x1a02e074, 0x1c962419, 0x06c1c0af, 0x24f3c7d8, 0x48b7fd3d, 0x8a01d53f, 0xbd0e0b55, 0xa432436d
.word 0xb4d292c2, 0x20016de8, 0x128b6ffa, 0x0c082ac4, 0x1663f454, 0x608c3c47, 0x4940551b, 0x872d0f48
.word 0x5149eacc, 0xf6b68c64, 0xa4da9b57, 0x9841e282, 0x414a83ed, 0x714c45a1, 0xcb7e311a, 0xc4ecf806
.word 0x63ed019b, 0x057e2c4a, 0x48869aa5, 0xa4050e50, 0xe9356eeb, 0xf5b35027, 0x27b5f816, 0x623203b1
.word 0x0610fe26, 0x349efc38, 0x55326d69, 0x4aac5c95, 0x1c338c23, 0x2ad7a517, 0x734d04a9, 0xe04d1223
.word 0x01266e13, 0x55e7c857, 0xb07b9838, 0x3ec9a2d1, 0x8546a835, 0x9710e8ba, 0x26b54f44, 0x4ec371af
.word 0xc0f58502, 0x6510d3b2, 0xaa3e724a, 0x6edf53af, 0x67e1b067, 0xf5bd87b9, 0x549a5011, 0xba127e81
.word 0x95c38b86, 0xe5eb2de8, 0x67a39761, 0x7edbc11a, 0x3600528d, 0xf3a92139, 0x0f0e82df, 0xe451a0d1
.word 0xec17df96, 0xdef19313, 0xb101d9b8, 0x4606b34c, 0xf73cef55, 0x27ea5284, 0xa894d842, 0xabf7c835
.word 0x5d8953c3, 0x72eb063e, 0x0582b3c3, 0x1b55ec05, 0x22c2f68c, 0xabe35b67, 0xbb1e278e, 0x9241a74f
.word 0xd705ff70, 0xb8be002b, 0x0887dbfe, 0xcf2a63fe
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_2:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_3:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_4:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_5:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_6:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_7:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_8:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_9:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_10:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_11:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_12:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_13:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_14:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_15:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x13, x31, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x20, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x20, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x20, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x20, x29, ecall_handler
                  li x29, 0x1
                  beq x20, x29, instr_fault_handler
                  li x29, 0x5
                  beq x20, x29, load_fault_handler
                  li x29, 0x7
                  beq x20, x29, store_fault_handler
                  li x29, 0xc
                  beq x20, x29, pt_fault_handler
                  li x29, 0xd
                  beq x20, x29, pt_fault_handler
                  li x29, 0xf
                  beq x20, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
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
                  add x31, x13, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x13, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x13, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x31, x13, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x31, x13, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x31, x13, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
