.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x16, kernel_stack_end

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
                  li x1, 0xf94d7d6b
                  li x2, 0x0
                  li x3, 0xf58b164b
                  li x4, 0xa
                  li x5, 0xfe73ac1d
                  li x6, 0xf5363def
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x2
                  li x11, 0xd05dc95a
                  li x12, 0x6
                  li x13, 0x0
                  li x14, 0x8
                  li x15, 0xb4e5b500
                  li x17, 0xf80e9a21
                  li x18, 0xfd04797d
                  li x20, 0x0
                  li x21, 0xfc2cdce8
                  li x22, 0xf51255e5
                  li x23, 0xaafb9842
                  li x24, 0x80000000
                  li x25, 0xf16bd2e1
                  li x26, 0xf848be2f
                  li x27, 0xf23f67c8
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x5355937d
                  li x31, 0xfd986583
                  la x19, user_stack_end
main:             addi         s7, zero, 9 #init loop 0 counter
                  lui          a7, 28952
                  slli         a5, t2, 0
                  lui          s10, 716388
                  ori          t4, s4, -847
                  sra          s2, gp, a0
                  sub          s11, a2, s2
                  auipc        s4, 843594
                  slli         tp, s8, 27
                  addi         t0, zero, 3 #init loop 0 limit
main_0_0_t:       ori          t3, zero, -736
                  addi         s1, sp, -1837
                  sra          a5, s7, t3
                  addi         s7, s7, -6 #update loop 0 counter
                  srai         tp, a2, 8
                  slli         a4, sp, 19
                  or           s10, a0, s10
                  srli         zero, a2, 15
                  andi         s5, s5, 105
                  nop
                  sltiu        s2, a5, -1911
                  sra          zero, t4, a0
                  bne          s7, t0, main_0_0_t #branch for loop 0
                  slti         a4, a1, -1646
                  addi         t0, zero, 2 #init loop 0 counter
                  addi         t3, s2, -1450
                  slt          a3, s4, s6
                  add          s2, a7, t2
                  xor          s10, a4, a5
                  lui          s7, 491784
                  sltiu        s2, s11, -235
                  addi         tp, zero, 19 #init loop 0 limit
                  ori          a7, t5, 1838
                  slti         t4, s3, -919
                  auipc        t6, 228820
                  andi         t6, a4, 1268
                  sra          s0, s0, a6
                  sra          t4, s7, s5
main_2_0_t:       slti         t2, s5, -1133
                  addi         t0, t0, 7 #update loop 0 counter
                  srai         a4, ra, 18
                  lui          s1, 140515
                  srli         s10, t1, 5
                  bltu         t0, tp, main_2_0_t #branch for loop 0
                  xori         t4, zero, -1748
                  addi         a0, zero, -6 #init loop 0 counter
                  sub          s6, a4, ra
                  srl          s2, s9, ra
                  lui          t3, 621534
                  sltiu        s7, a1, 1101
                  slt          s4, t3, s2
                  sll          t4, s10, s8
                  addi         ra, zero, -1 #init loop 0 limit
                  sub          t6, s9, sp
                  sltiu        a3, s10, -163
main_1_0_t:       or           s4, s10, a3
                  auipc        s4, 966194
                  srl          s7, a1, s1
                  addi         a0, a0, 5 #update loop 0 counter
                  sltiu        t0, s11, 1993
                  srai         t5, s7, 15
                  add          s0, zero, gp
                  add          t4, t3, s3
                  srli         s11, zero, 21
                  andi         t6, a0, 1429
                  sub          sp, t2, s10
                  addi         s7, s6, 1380
                  beq          a0, ra, main_1_0_t #branch for loop 0
                  srai         zero, a5, 11
                  andi         t4, s0, 1632
                  blt          s9, zero, 4f
                  andi         t1, a5, -525
                  sra          t0, t1, s5
4:                sll          ra, zero, ra
                  ori          s10, sp, 915
                  sltiu        t5, s11, -415
                  srli         t2, s10, 26
                  beq          zero, s8, 10f
                  slli         s11, s4, 3
10:               sltiu        t5, t2, 1292
                  blt          s10, zero, 14f
                  slti         s4, a2, 743
                  xori         t2, t6, 103
14:               slti         t1, s8, -1271
                  sll          a2, gp, s9
                  ori          t6, s2, -893
                  addi         a4, tp, 1260
                  xori         s5, t4, -773
                  blt          s6, a2, 28f
                  beq          gp, t0, 30f
                  srl          a7, s3, s10
                  sra          t0, a4, s8
                  bltu         t1, s2, 34f
                  add          t3, sp, t4
                  xor          t4, s11, ra
                  and          t6, s10, s8
                  xori         s5, a1, -861
28:               srli         t2, a3, 31
                  bgeu         a4, zero, 31f
30:               auipc        t0, 931039
31:               sra          sp, t6, s8
                  xori         gp, t3, -1787
                  xor          a5, a4, s2
34:               xor          t2, sp, a7
                  xor          t4, a4, a7
                  and          tp, t4, s1
                  slt          tp, t6, s5
                  srai         s0, s7, 1
                  addi         gp, s10, -1263
                  sll          t6, tp, s5
                  srli         a3, s2, 3
                  blt          ra, s8, 44f
                  addi         a5, t1, -548
44:               nop
                  srli         s1, a3, 4
                  sltiu        ra, ra, 468
                  srl          sp, s2, a6
                  sub          t3, s2, a5
                  sltu         a0, gp, s11
                  bgeu         a0, s0, 66f
                  sub          t2, s1, a5
                  or           s6, s10, s5
                  xor          s11, s7, a6
                  lui          t4, 941638
                  bgeu         s6, t4, 72f
                  sra          s1, tp, t5
                  xori         gp, s1, -610
                  bltu         a2, sp, 61f
                  or           t2, a6, s5
                  slti         t6, s3, 1667
61:               ori          ra, s7, -159
                  lui          t3, 593514
                  addi         sp, s1, -543
                  add          a7, s2, s7
                  slli         a0, tp, 23
66:               sra          tp, ra, s6
                  sub          a5, tp, s4
                  andi         gp, a5, -1394
                  or           s7, t1, s1
                  and          a2, s1, s4
                  auipc        tp, 294011
72:               bne          zero, ra, 75f
                  beq          a2, gp, 86f
                  xori         a3, s4, -1526
75:               slti         t5, zero, 343
                  sltu         s10, s2, a7
                  xori         sp, a0, -1475
                  slt          s10, s3, t3
                  la           s11, sub_1
                  sub          a0, sp, s2
                  srli         t6, s8, 29
                  slli         t0, s1, 24
                  auipc        t3, 615919
                  addi         s11, s11, 754
                  and          a7, t6, a7
                  bltu         a3, a7, main_j1 #branch to jump instr
                  srai         tp, s2, 12
                  xor          zero, t5, a3
main_j1:          jalr         a3, s11, -754 #jump main -> sub_1
                  add          s8, a7, s5
                  bge          s11, s10, 92f
                  lui          t2, 500361
                  srli         a2, s11, 21
                  sra          s1, s4, gp
                  sub          tp, a5, s8
                  srai         t4, a1, 30
86:               sltu         gp, s5, sp
                  or           gp, a6, a1
                  bge          s11, s4, 91f
                  sub          a3, s10, s6
                  addi         s4, gp, 928
91:               bgeu         s11, a4, 105f
92:               nop
                  and          a1, t2, s8
                  and          t1, a4, t5
                  nop
                  blt          gp, gp, 115f
                  bgeu         zero, t2, 112f
                  addi         t4, gp, -868
                  beq          a3, a3, 114f
                  sll          s2, s10, a1
                  addi         t0, a3, -1495
                  sltiu        t2, s9, 1105
                  add          t1, a7, t2
                  add          a2, t6, ra
105:              lui          a1, 559590
                  or           t0, ra, s8
                  nop
                  sltu         t0, s2, a5
                  bne          s5, a1, 119f
                  xor          ra, a0, a0
                  slti         t1, s9, 1745
112:              xor          s5, s9, s0
                  bge          s10, tp, 115f
114:              bge          a5, a4, 124f
115:              auipc        t6, 780383
                  beq          t6, a2, 131f
                  bltu         a1, t0, 136f
                  xori         t6, s8, -1559
119:              srli         t6, zero, 6
                  nop
                  srli         t6, a6, 23
                  bne          zero, s3, 137f
                  bgeu         s8, a4, 134f
124:              ori          s10, s8, -1667
                  sltu         t1, a7, t6
                  sll          s10, a1, a2
                  xori         t3, a0, 1693
                  srl          t4, s2, sp
                  and          zero, t1, a5
                  bne          s0, s11, 148f
131:              sra          a4, t4, ra
                  srl          t5, a1, zero
                  sll          t0, s5, ra
134:              and          s10, s10, s11
                  lui          a0, 346055
136:              slti         a3, s2, -1165
137:              ori          ra, s10, 779
                  slli         t0, tp, 8
                  lui          s8, 338825
                  or           tp, ra, a7
                  addi         a0, t4, -1337
                  or           s7, s9, ra
                  sub          s1, t4, s11
                  nop
                  addi         a0, a5, -426
                  xor          s4, s1, gp
                  xor          zero, t1, s1
148:              sub          s2, a6, t1
                  xor          s11, ra, sp
                  sltiu        a1, s10, -1962
                  ori          s4, a7, -1572
                  nop
                  sub          a7, a1, s10
                  add          s6, s1, t1
                  sra          a7, t0, a3
                  add          t0, tp, a1
                  bne          a0, a6, 160f
                  addi         a5, gp, 838
                  xori         s10, ra, -610
160:              slti         a0, s0, -1076
                  sra          s6, t2, t3
                  xor          t1, s6, a3
                  lui          t6, 592217
                  blt          s2, a5, 172f
                  xori         a5, s3, 77
                  blt          s4, s4, 172f
                  bltu         a6, sp, 172f
                  lui          s0, 11077
                  lui          a0, 401089
                  srl          t2, s3, s10
                  slli         s8, s10, 24
172:              or           t6, t4, t2
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            lui          t4, 319326
                  bgeu         s3, s7, sub_2_stack_p
                  and          a1, t3, t5
                  xori         t3, tp, -1166
                  add          t5, s4, s1
                  srai         ra, t5, 11
                  andi         a7, s8, 1244
                  addi         s2, ra, 708
sub_2_stack_p:    addi         s3, s3, -8
                  auipc        s7, 1022538
                  sra          a4, s2, s7
                  sw           a3, 4(s3)
                  sub          a1, s2, t4
                  addi         s11, zero, 6 #init loop 0 counter
                  add          s0, s11, t3
                  and          tp, t4, sp
                  and          a4, a5, t6
                  nop
                  slti         t3, ra, 1584
                  slt          t4, a2, a7
                  sltiu        zero, sp, 793
                  ori          t2, s3, 672
                  sub          a5, zero, s3
                  sll          a1, s2, ra
                  xor          s7, s7, s9
                  sub          s6, t3, t3
                  addi         a0, zero, 6 #init loop 0 limit
                  nop
sub_2_3_0_t:      xor          zero, s10, t1
                  addi         ra, t2, -901
                  sltu         t4, s7, a2
                  sra          t6, s11, a5
                  sltu         s7, s6, a7
                  slt          a7, tp, a2
                  slti         a5, tp, 762
                  sra          s10, a7, s10
                  addi         s11, s11, -3 #update loop 0 counter
                  bgeu         s11, a0, sub_2_3_0_t #branch for loop 0
                  lui          t5, 848867
                  addi         a1, zero, -2 #init loop 0 counter
                  sub          a7, s6, s4
                  addi         gp, zero, -3 #init loop 0 limit
                  slt          a4, a7, s3
sub_2_4_0_t:      add          zero, s10, ra
                  addi         a1, a1, -3 #update loop 0 counter
                  auipc        a7, 281612
                  bge          a1, gp, sub_2_4_0_t #branch for loop 0
                  nop
                  addi         s4, zero, 3 #init loop 1 counter
                  xor          a5, s10, s0
                  addi         s2, zero, 10 #init loop 1 limit
sub_2_1_1_t:      or           a5, s1, tp
                  srli         zero, s3, 20
                  addi         s4, s4, 5 #update loop 1 counter
                  addi         a0, zero, 8 #init loop 0 counter
                  xori         t4, t6, 1934
                  lui          t0, 636708
                  lui          t4, 665527
                  addi         tp, zero, -5 #init loop 0 limit
                  sltiu        ra, t1, 1224
sub_2_1_0_t:      slti         t0, s1, -596
                  srli         t2, t2, 5
                  addi         a0, a0, -1 #update loop 0 counter
                  srai         t0, a5, 12
                  xor          a3, gp, s10
                  bge          a0, tp, sub_2_1_0_t #branch for loop 0
                  lui          a1, 995554
                  add          s10, a5, t3
                  bltu         s4, s2, sub_2_1_1_t #branch for loop 1
                  auipc        s0, 565456
                  addi         s2, zero, -10 #init loop 1 counter
                  add          a2, t0, a5
                  sll          a1, s6, s6
                  sub          sp, t2, zero
                  slli         t5, a4, 25
                  addi         s6, zero, 13 #init loop 1 limit
                  slli         sp, s6, 4
                  sltiu        s8, s4, 1129
sub_2_2_1_t:      and          s5, gp, a5
                  nop
                  slt          a2, s0, s1
                  addi         s5, zero, -952
                  lui          gp, 11841
                  add          t0, t5, a3
                  addi         s2, s2, 3 #update loop 1 counter
                  slt          a1, s6, zero
                  addi         a7, zero, -5 #init loop 0 counter
                  add          s4, zero, a7
                  srai         s8, s6, 15
                  addi         s11, zero, 16 #init loop 0 limit
sub_2_2_0_t:      xori         t1, s8, -1537
                  srai         a3, a7, 30
                  addi         a7, a7, 7 #update loop 0 counter
                  addi         s8, t0, 1463
                  bne          a7, s11, sub_2_2_0_t #branch for loop 0
                  sltiu        t6, t2, 417
                  blt          s2, s6, sub_2_2_1_t #branch for loop 1
                  addi         a4, s9, 609
                  addi         t6, zero, -2 #init loop 0 counter
                  slt          s6, s8, a1
                  nop
                  slt          t1, t5, t4
                  xor          s4, s2, a4
                  addi         s11, zero, -8 #init loop 0 limit
                  sltiu        t2, s2, -1478
                  and          s1, s6, t1
sub_2_0_0_t:      lui          a7, 510662
                  slti         sp, t0, 838
                  ori          s1, a7, 1772
                  addi         t6, t6, -6 #update loop 0 counter
                  slti         a3, s7, -432
                  sub          s2, tp, sp
                  srl          a0, s11, t4
                  sra          a7, t6, s1
                  auipc        t0, 156363
                  bne          t6, s11, sub_2_0_0_t #branch for loop 0
                  nop
                  xor          s10, t1, s7
                  bgeu         s5, t1, 13f
                  bgeu         s9, a7, 22f
                  auipc        t3, 910482
                  ori          t0, s1, -1230
                  auipc        t0, 473766
                  bltu         t0, a1, 26f
                  auipc        s8, 1033620
                  bgeu         a5, t4, 22f
                  srli         t5, s1, 30
                  lui          s1, 1011084
                  srl          a3, ra, t0
                  sra          s10, tp, s8
13:               sltu         tp, t2, s5
                  lui          t0, 1010508
                  lui          a5, 447315
                  slti         a7, s6, -1775
                  blt          s8, s0, 34f
                  blt          s3, a6, 33f
                  addi         s2, a7, -256
                  srli         t3, a6, 21
                  lui          a7, 235275
22:               slti         s1, t2, 336
                  add          sp, t0, a3
                  bge          t4, t5, 31f
                  auipc        sp, 518
26:               sub          s5, s8, a1
                  bgeu         s3, zero, 29f
                  bgeu         t1, a7, 31f
29:               bne          t0, a7, 37f
                  add          a2, s0, a7
31:               or           zero, a7, t6
                  bgeu         s4, s0, 52f
33:               sub          a7, zero, sp
34:               sub          s8, s2, s2
                  nop
                  srli         t1, t5, 22
37:               blt          ra, s2, 42f
                  srli         t4, s5, 0
                  nop
                  bge          a4, s1, 59f
                  sra          a0, t4, s10
42:               blt          s10, a1, 60f
                  beq          s11, sp, 61f
                  srl          a1, t4, a0
                  slt          gp, s0, a6
                  beq          t5, a6, 51f
                  sra          s6, a6, s10
                  xor          s4, a6, a2
                  sra          s10, s6, s1
                  xor          a5, a0, a4
51:               lui          s10, 674487
52:               slli         s2, s10, 17
                  and          t6, s5, a7
                  ori          gp, s9, -1019
                  lui          s11, 715428
                  bgeu         a7, a4, 60f
                  sll          s0, s6, tp
                  sub          s10, s1, s2
59:               slt          s5, s2, a1
60:               andi         s2, tp, 936
61:               srai         s4, a7, 1
                  sll          s2, t5, t3
                  add          a2, a6, t4
                  bne          a4, t6, 75f
                  bge          s5, s5, 74f
                  xor          a3, a4, t5
                  sll          a4, sp, t2
                  or           a0, s4, t2
                  sra          gp, zero, a4
                  sll          s10, s6, s6
                  bne          sp, s6, 75f
                  or           s10, a4, a0
                  andi         tp, s1, -1806
74:               slt          t4, t0, zero
75:               slti         s6, a7, 191
                  and          zero, s2, a5
                  or           a7, t1, t5
                  sub          s10, gp, t0
                  xori         a4, s4, -1457
                  or           s1, a7, ra
                  sltu         s4, zero, s2
                  xor          s10, s6, s5
                  sub          t0, t1, s8
                  sll          tp, s4, s9
                  lui          t2, 734135
                  slti         s8, a2, 1933
                  andi         t6, t5, -630
                  bne          t3, a1, 98f
                  addi         sp, a2, -1881
                  addi         t1, t5, 635
                  auipc        s6, 241400
                  srl          a4, a6, a3
                  nop
                  lui          a7, 260597
                  slti         t3, t4, 687
                  bne          s6, a7, 97f
97:               bge          t5, a3, 116f
98:               slt          a0, t2, s0
                  srai         s5, t0, 25
                  srai         s10, s1, 18
                  auipc        t2, 669459
                  slli         s2, gp, 4
                  xor          a2, a3, a2
                  sltiu        s2, sp, 216
                  sub          t2, s8, s8
                  srl          a0, t4, s6
                  nop
                  srai         t3, t6, 29
                  bgeu         s7, a6, 126f
                  bgeu         zero, ra, 119f
                  sltu         s2, s8, a2
                  srli         s7, t0, 26
                  bgeu         a6, tp, 131f
                  xor          zero, s11, t2
                  bgeu         s4, s6, 116f
116:              or           t5, t1, s5
                  sll          t4, t1, gp
                  addi         a1, a0, -2039
119:              sub          s10, s6, a4
                  sll          t6, s11, s9
                  sub          t6, a1, t6
                  or           s1, tp, a2
                  sltiu        a5, t0, -1797
                  srli         t6, s11, 2
                  sll          t3, t0, s8
126:              and          s5, s3, sp
                  ori          s6, s9, -1032
                  add          t2, t2, a0
                  add          s5, s4, t1
                  nop
131:              or           a5, s9, t4
                  auipc        ra, 735263
                  and          t5, t1, a3
                  andi         a3, s8, 1684
                  slli         s0, t6, 18
                  andi         sp, t2, -1058
                  or           a7, s8, s10
                  xori         t1, s0, 2041
                  add          s0, sp, s8
                  sltiu        gp, a0, -884
                  xor          s8, a6, a3
                  bge          s10, t1, 147f
                  sub          t5, t6, s7
                  andi         s6, a4, -1509
                  lui          zero, 365229
                  addi         a7, gp, -569
147:              addi         t6, t3, -722
                  blt          t2, a0, 163f
                  sll          s0, gp, s5
                  auipc        a0, 67972
                  sll          s0, s4, s2
                  bge          s2, s9, 161f
                  sltu         t3, t0, a6
                  sltu         t1, s4, s8
                  sltu         ra, a5, a6
                  sll          s1, a1, gp
                  slti         a4, t2, 531
                  sra          s6, s8, t0
                  auipc        gp, 760949
                  bne          s4, s3, 165f
161:              sltu         t5, gp, a0
                  sra          a4, s1, a6
163:              nop
                  srli         a2, s2, 22
165:              addi         t4, s6, -470
                  sll          t1, t0, s1
                  slti         gp, s7, 1825
                  ori          zero, sp, 837
                  slli         s10, t0, 16
                  slt          s7, t3, a1
                  sltiu        sp, t5, 166
                  bltu         s2, s3, 177f
                  slli         s6, s9, 20
                  sltiu        t6, t0, 1170
                  nop
                  sub          s2, ra, a7
177:              srli         zero, tp, 24
                  addi         zero, ra, -1642
                  xor          s10, t2, a5
                  bne          s4, s1, 183f
                  andi         a3, t1, 97
                  slti         gp, t2, 2018
183:              bltu         zero, t0, 198f
                  beq          s5, tp, 186f
                  ori          a5, s8, 1074
186:              xori         a0, tp, 1178
                  beq          s4, a0, 196f
                  sra          t1, a6, zero
                  xor          s4, a6, s9
                  slli         a7, a0, 30
                  bne          a4, a6, 211f
                  bge          sp, a6, 209f
                  bge          gp, a6, 210f
                  blt          a5, s0, 199f
                  bltu         s0, ra, 204f
196:              bge          ra, t2, 200f
                  andi         sp, t1, 1736
198:              xori         t4, t6, 1019
199:              andi         ra, t0, -1602
200:              xori         t3, s11, -1634
                  slti         s7, ra, 845
                  add          gp, a6, s3
                  sll          s5, t5, t0
204:              bgeu         sp, s7, 218f
                  lui          t3, 377716
                  beq          a1, s8, 224f
                  sltiu        a7, s1, -947
                  beq          a2, t4, 215f
209:              ori          s6, s0, -1199
210:              sltu         a2, sp, a2
211:              auipc        a3, 813988
                  lui          tp, 662346
                  blt          s4, s8, 232f
                  sll          t2, s11, t1
215:              sub          s6, s2, s9
                  srl          tp, s7, ra
                  srai         t2, gp, 19
218:              andi         t2, t5, -1376
                  and          s0, s1, s11
                  srl          a5, s2, a1
                  and          a0, s1, s11
                  bgeu         a1, a4, 230f
                  xori         s10, a6, -850
224:              lui          ra, 219787
                  addi         s2, s3, 378
                  addi         t1, zero, 251
                  srl          s1, zero, s11
                  bge          a6, t3, 229f
229:              bge          a0, ra, 247f
230:              sll          s1, a1, a6
                  sll          s5, ra, a1
232:              sra          s10, gp, ra
                  bne          s10, tp, 253f
                  or           s7, t4, a2
                  bge          t4, s0, 250f
                  bgeu         s4, a3, 237f
237:              sub          t3, s4, t2
                  ori          tp, t4, -2007
                  addi         zero, tp, 469
                  sra          s10, a0, a1
                  slli         a7, s1, 19
                  srai         a4, t5, 23
                  lui          s4, 823778
                  and          t2, s8, a7
                  addi         a3, t3, 1804
                  xor          tp, s4, s4
247:              sub          a7, t3, t4
                  addi         t0, a6, 577
                  auipc        s4, 812587
250:              andi         a4, ra, 1752
                  bne          s11, s8, 257f
                  sll          s1, a2, sp
253:              slti         s7, gp, 1414
                  ori          s2, a7, -2042
                  sll          s2, s7, s10
                  xori         t3, t0, 1637
257:              srai         s5, s8, 0
                  nop
                  lw           a3, 4(s3)
                  addi         s3, s3, 8
                  ori          sp, a2, 91
                  sra          t1, s10, a1
                  sub          s2, a3, s7
                  srai         s5, s0, 20
382:              addi x5, x13, 0
382:              jalr x5, x5, 0
sub_1:            addi         s3, s3, -44
                  sltu         s1, gp, s9
                  add          ra, a1, a1
                  sw           a3, 4(s3)
                  slt          a0, s10, sp
                  ori          s10, a5, -986
                  and          s8, t3, s9
                  sra          gp, t1, tp
                  andi         t1, s9, -107
                  sub          t3, s10, s10
                  sltiu        sp, tp, -1476
                  sll          a7, s3, s10
                  beq          s10, a6, sub_1_j2 #branch to jump instr
                  sltu         t4, tp, zero
                  slt          a0, t5, t5
                  sll          a3, t4, gp
sub_1_j2:         jal          a3, sub_2 #jump sub_1 -> sub_2
                  srl          a7, s0, a6
                  slli         a7, a5, 24
                  nop
                  la           t6, sub_4
                  srli         a0, s4, 27
                  xori         zero, s1, -623
                  addi         t6, t6, 97
                  sltu         gp, s9, tp
                  srai         a7, a1, 15
                  blt          s0, t3, sub_1_j3 #branch to jump instr
                  nop
                  sltiu        a1, s8, -395
sub_1_j3:         jalr         a3, t6, -97 #jump sub_1 -> sub_4
                  blt          t1, gp, sub_1_j4 #branch to jump instr
                  ori          s4, s10, 369
                  auipc        a1, 744361
                  andi         t0, s3, 651
                  sra          t5, a5, t4
                  and          a4, t2, s5
                  sll          zero, a6, a7
                  slli         t6, a5, 25
                  sub          t3, s6, a6
                  xori         s5, tp, 410
                  sra          s1, a0, s10
sub_1_j4:         jal          a3, sub_5 #jump sub_1 -> sub_5
                  srli         s1, s4, 21
                  xori         a5, a3, -71
                  sltu         s5, tp, s4
                  slt          s0, a0, ra
                  slt          s6, s5, s7
                  bne          s11, tp, sub_1_j5 #branch to jump instr
                  add          zero, a6, a2
                  nop
sub_1_j5:         jal          a3, sub_3 #jump sub_1 -> sub_3
                  sltu         t5, t0, sp
                  xor          t0, t5, sp
                  and          a3, t0, s2
                  andi         s4, a6, -1935
                  sltiu        t3, a7, 1200
                  add          ra, s1, t2
sub_1_j6:         jal          a3, sub_5 #jump sub_1 -> sub_5
                  or           s6, tp, a3
                  xor          t4, s11, t2
                  slli         a1, a2, 4
                  blt          gp, s7, 11f
                  auipc        a7, 445023
                  addi         gp, zero, 1180
                  andi         sp, s0, -1735
                  xori         gp, zero, -1243
                  add          a2, ra, s0
                  sltiu        s6, a5, 679
                  srai         s0, t2, 25
11:               sra          tp, t5, tp
                  blt          s0, s1, 23f
                  or           t6, s7, a4
                  sll          s8, s8, a2
                  slt          gp, ra, a3
                  bne          a6, t1, 24f
                  xor          a4, t3, a0
                  and          s5, a0, s2
                  addi         ra, s10, -1946
                  slli         t0, sp, 17
                  xor          tp, s10, s0
                  bne          a1, a4, 27f
23:               slt          s11, s7, s8
24:               xori         t3, t2, -823
                  srl          s6, gp, a4
                  xor          t3, s3, zero
27:               ori          s8, tp, -1782
                  andi         s5, a2, -156
                  and          s2, t5, a0
                  slti         a1, a5, -297
                  add          s0, s10, gp
                  slli         a0, a7, 19
                  sra          s7, tp, a1
                  lw           a3, 4(s3)
                  addi         s3, s3, 44
                  and          s10, a7, a0
                  xori         t6, a0, -443
                  xor          t2, zero, sp
                  addi         sp, t0, 1875
                  and          s6, s4, sp
99:               addi x30, x13, 0
99:               jalr x30, x30, 0
sub_5:            addi         s3, s3, -16
                  sll          t2, tp, s8
                  sll          s8, s0, s6
                  slti         ra, s2, 1468
                  slt          s2, a5, a3
                  auipc        a0, 838468
                  sw           a3, 4(s3)
                  srl          s8, a0, t3
                  and          s8, s1, s1
                  addi         s8, zero, 2 #init loop 0 counter
                  slti         a5, t3, 1935
                  sltiu        t1, s5, -34
                  lui          s0, 794276
                  xor          ra, t1, s3
                  or           t6, s1, t4
                  ori          ra, s8, -1523
                  andi         zero, s2, 698
                  andi         t3, a4, 1229
                  andi         s6, s11, -1171
                  slt          tp, gp, tp
                  srai         a4, s1, 1
                  andi         s2, a2, 1153
                  auipc        a1, 378210
                  addi         s5, zero, -15 #init loop 0 limit
                  addi         a0, a3, 2012
                  andi         t1, t3, -64
                  addi         s1, a2, -215
                  or           t1, a6, a1
                  sltu         t4, s7, sp
                  xor          t6, s10, a1
sub_5_5_0_t:      slt          tp, tp, s4
                  and          t6, t1, s6
                  addi         s8, s8, -10 #update loop 0 counter
                  sltiu        ra, s8, -1482
                  slti         a7, s4, -1712
                  ori          a5, tp, -1232
                  auipc        t2, 254178
                  bge          s8, s5, sub_5_5_0_t #branch for loop 0
                  auipc        s2, 781747
                  addi         a4, zero, 6 #init loop 1 counter
                  xori         s2, tp, 847
                  addi         t3, zero, 2 #init loop 1 limit
sub_5_4_1_t:      nop
                  addi         a4, a4, -10 #update loop 1 counter
                  addi         tp, zero, 4 #init loop 0 counter
                  add          a5, s2, a3
                  addi         s0, zero, 5 #init loop 0 limit
sub_5_4_0_t:      addi         t0, t6, 1771
                  srai         s2, s11, 16
                  addi         tp, tp, 5 #update loop 0 counter
                  blt          tp, s0, sub_5_4_0_t #branch for loop 0
                  bge          a4, t3, sub_5_4_1_t #branch for loop 1
                  slt          s8, a5, s11
                  addi         s10, zero, 10 #init loop 0 counter
                  sll          gp, a7, a5
                  srli         tp, t5, 11
                  addi         s11, zero, 9 #init loop 0 limit
                  sll          t0, a3, s2
                  srai         gp, a2, 6
                  sub          s8, t6, t5
                  sltiu        s6, ra, 1180
                  slt          s5, t0, a3
                  slt          a3, t6, a0
                  xor          s5, s0, s8
                  srl          t0, a7, a6
sub_5_15_0_t:     lui          zero, 721232
                  srli         t0, s0, 15
                  addi         s10, s10, -7 #update loop 0 counter
                  and          t2, a0, t2
                  sub          a0, s5, s5
                  sll          t2, s0, ra
                  xor          t3, sp, t2
                  slt          t5, sp, s7
                  auipc        zero, 231889
                  sll          zero, s3, s9
                  ori          ra, s2, -653
                  and          s1, a6, s11
                  bgeu         s10, s11, sub_5_15_0_t #branch for loop 0
                  sltu         a2, zero, a1
                  addi         s5, zero, 5 #init loop 0 counter
                  or           s2, t5, s10
                  sltiu        t2, a2, -591
                  sltiu        s11, s4, -148
                  and          sp, s7, t2
                  sra          s7, a1, t2
                  addi         t6, zero, -9 #init loop 0 limit
                  srli         a1, zero, 19
                  add          t2, ra, a2
sub_5_2_0_t:      xori         s0, s6, 1163
                  xori         s11, s10, -733
                  xor          t5, s1, a4
                  addi         s5, s5, -1 #update loop 0 counter
                  auipc        t4, 603813
                  auipc        t2, 353934
                  srli         a2, s6, 0
                  beq          s5, t6, sub_5_2_0_t #branch for loop 0
                  auipc        tp, 869043
                  addi         a2, zero, 1 #init loop 0 counter
                  add          ra, t4, t6
                  slti         t5, a5, 1816
                  nop
                  add          s7, s1, t4
                  nop
                  addi         t6, t3, -1258
                  xori         t5, t2, -1413
                  srli         t0, s1, 2
                  srli         s7, s5, 3
                  ori          t1, t0, -727
                  srli         tp, tp, 5
                  sll          a7, s0, sp
                  srli         a0, s6, 14
                  nop
                  addi         gp, zero, 3 #init loop 0 limit
sub_5_14_0_t:     sltiu        t1, t4, -705
                  xor          t1, t5, t5
                  addi         zero, zero, -2034
                  add          s4, a1, a1
                  sltu         a3, t3, a6
                  addi         a2, a2, 9 #update loop 0 counter
                  xori         tp, t6, -1750
                  sltu         ra, s4, a7
                  nop
                  andi         s5, a5, -23
                  slt          s6, s9, t5
                  sltiu        t0, s5, 849
                  bltu         a2, gp, sub_5_14_0_t #branch for loop 0
                  sltiu        a5, ra, -1777
                  addi         a7, zero, 10 #init loop 0 counter
                  or           s11, ra, s7
                  add          t3, t2, a2
                  nop
                  srai         sp, zero, 6
                  addi         t2, a6, 1235
                  sltu         t3, s7, s0
                  addi         s5, zero, -11 #init loop 0 limit
                  slt          s8, a1, a7
sub_5_8_0_t:      add          t1, s3, t0
                  sub          a0, a3, ra
                  addi         a7, a7, -7 #update loop 0 counter
                  slli         s6, gp, 17
                  andi         ra, t5, 1550
                  sltiu        zero, a7, -1377
                  bne          a7, s5, sub_5_8_0_t #branch for loop 0
                  srli         t2, s10, 29
                  addi         s1, zero, -4 #init loop 1 counter
                  sltu         s11, s3, s6
                  addi         sp, zero, 14 #init loop 1 limit
                  sra          s8, a4, a1
sub_5_17_1_t:     or           s8, s7, gp
                  sub          a2, ra, s9
                  addi         s1, s1, 2 #update loop 1 counter
                  addi         a0, zero, 6 #init loop 0 counter
                  sll          s11, zero, t3
                  sltu         a1, s0, s11
                  addi         t0, zero, 8 #init loop 0 limit
                  lui          a1, 393783
sub_5_17_0_t:     lui          s8, 792321
                  xori         s4, tp, 1799
                  sub          t1, t0, a6
                  addi         a0, a0, 8 #update loop 0 counter
                  xor          t2, s0, t5
                  slti         t2, t3, 1661
                  srli         s8, s7, 20
                  slti         ra, s2, -1944
                  lui          s7, 95643
                  add          s11, a0, t0
                  bltu         a0, t0, sub_5_17_0_t #branch for loop 0
                  add          s4, s4, t6
                  ori          t3, s10, -1281
                  slti         ra, a3, -1082
                  slli         t1, s1, 29
                  sra          t6, s3, s4
                  beq          s1, sp, sub_5_17_1_t #branch for loop 1
                  xor          t2, s0, s4
                  addi         gp, zero, -5 #init loop 0 counter
                  slti         t5, t6, -130
                  addi         sp, zero, -2 #init loop 0 limit
                  sltiu        t2, tp, -1867
sub_5_23_0_t:     xor          t4, s9, zero
                  sub          s6, s0, t4
                  addi         gp, gp, 3 #update loop 0 counter
                  beq          gp, sp, sub_5_23_0_t #branch for loop 0
                  slli         ra, s9, 20
                  addi         s11, zero, 7 #init loop 0 counter
                  nop
                  auipc        t0, 455636
                  addi         s6, zero, -15 #init loop 0 limit
                  sltu         a7, s3, s3
                  nop
                  xor          s0, a3, t2
sub_5_6_0_t:      xori         a5, a6, 1300
                  srai         a7, s9, 27
                  sll          a2, s10, t4
                  auipc        gp, 1028901
                  srai         t0, a3, 9
                  xori         t3, s6, 1152
                  xor          zero, a1, t1
                  ori          tp, s3, 1113
                  ori          a5, a2, -1692
                  or           gp, a4, a6
                  srai         s1, gp, 10
                  sltiu        s2, a6, -1255
                  addi         s11, s11, -6 #update loop 0 counter
                  srl          ra, t4, tp
                  sra          s0, s8, t0
                  bge          s11, s6, sub_5_6_0_t #branch for loop 0
                  auipc        t4, 828934
                  addi         t4, zero, -6 #init loop 0 counter
                  addi         a4, zero, 15 #init loop 0 limit
                  srl          a7, s9, s2
                  slli         a2, a3, 10
sub_5_12_0_t:     xor          zero, t1, s1
                  slt          s8, t6, s1
                  nop
                  auipc        s6, 277617
                  addi         t4, t4, 4 #update loop 0 counter
                  sltu         s0, t3, s5
                  lui          s7, 647598
                  lui          s11, 188114
                  sub          s4, tp, gp
                  addi         s7, a5, 890
                  sltu         a3, s6, s8
                  sll          t6, s10, a0
                  srl          t0, a4, a7
                  lui          t1, 177738
                  add          a5, s8, t4
                  auipc        tp, 1014199
                  auipc        s8, 875651
                  blt          t4, a4, sub_5_12_0_t #branch for loop 0
                  srl          s2, a7, a0
                  addi         a0, zero, 2 #init loop 1 counter
                  slt          a7, s4, s2
                  slti         s5, a0, 1169
                  addi         a3, gp, -1066
                  addi         s6, zero, -8 #init loop 1 limit
                  srl          s2, s2, a1
                  or           s7, s1, a5
                  sltu         zero, s4, a1
sub_5_18_1_t:     slti         s4, s8, 1330
                  addi         a0, a0, -8 #update loop 1 counter
                  nop
                  addi         ra, zero, 1 #init loop 0 counter
                  addi         sp, zero, -9 #init loop 0 limit
                  addi         t5, a3, -1439
                  xor          s7, t4, t1
sub_5_18_0_t:     auipc        a1, 438469
                  srl          a5, s7, t2
                  auipc        zero, 73567
                  addi         t6, s2, -1065
                  addi         ra, ra, -5 #update loop 0 counter
                  xori         a3, s9, -1644
                  and          a5, s4, s0
                  bne          ra, sp, sub_5_18_0_t #branch for loop 0
                  sub          t3, a0, t3
                  sltiu        t6, t0, -24
                  addi         a5, a2, 1019
                  bge          a0, s6, sub_5_18_1_t #branch for loop 1
                  sll          t1, a5, a5
                  addi         a7, zero, 3 #init loop 0 counter
                  slti         t0, ra, 1945
                  addi         s0, zero, 19 #init loop 0 limit
sub_5_9_0_t:      lui          s4, 823627
                  addi         a7, a7, 10 #update loop 0 counter
                  srli         t1, zero, 10
                  srl          t0, a7, ra
                  bltu         a7, s0, sub_5_9_0_t #branch for loop 0
                  slti         a1, t5, 727
                  addi         s4, zero, 8 #init loop 1 counter
                  sra          a2, s11, a3
                  addi         ra, zero, 13 #init loop 1 limit
sub_5_10_1_t:     lui          s1, 314599
                  srai         t6, s1, 19
                  lui          t1, 95081
                  addi         s4, s4, 6 #update loop 1 counter
                  srli         t4, a7, 9
                  auipc        a1, 198224
                  addi         t3, zero, 3 #init loop 0 counter
                  xori         s1, s1, -1765
                  sra          t5, a4, s7
                  ori          gp, t3, 573
                  addi         t0, zero, 5 #init loop 0 limit
                  add          a1, s1, a4
                  addi         gp, tp, -678
sub_5_10_0_t:     and          a4, s10, t2
                  nop
                  sltu         a1, ra, a6
                  sltu         s5, s3, sp
                  addi         t3, t3, 2 #update loop 0 counter
                  sltiu        t1, s9, -843
                  bne          t3, t0, sub_5_10_0_t #branch for loop 0
                  sub          sp, zero, a4
                  blt          s4, ra, sub_5_10_1_t #branch for loop 1
                  or           t1, s7, sp
                  addi         t5, zero, 0 #init loop 0 counter
                  sltu         tp, a6, s1
                  srl          s7, t1, zero
                  addi         a0, zero, 10 #init loop 0 limit
                  xor          a2, a6, s0
sub_5_7_0_t:      andi         t0, s4, -1982
                  add          s0, s2, s8
                  addi         t5, t5, 2 #update loop 0 counter
                  nop
                  sub          s5, gp, s1
                  srli         tp, a0, 31
                  andi         t0, s6, 578
                  blt          t5, a0, sub_5_7_0_t #branch for loop 0
                  addi         t0, s0, 72
                  addi         t5, zero, -9 #init loop 0 counter
                  lui          s4, 568080
                  slt          t1, zero, s9
                  srl          t0, s1, s7
                  xori         gp, s7, -1555
                  sltu         s11, t2, a7
                  xori         ra, a0, -1775
                  sub          s11, t1, s9
                  ori          s6, s3, -793
                  sltu         s1, t6, s6
                  slti         t2, a7, -2040
                  or           tp, s3, a4
                  sltiu        sp, s10, 351
                  sub          t2, ra, t4
                  sll          sp, a0, s0
                  or           a0, t6, a6
                  addi         s2, zero, -11 #init loop 0 limit
                  srai         sp, s6, 31
                  xori         a2, s11, -1942
sub_5_19_0_t:     ori          a3, ra, -2
                  addi         t5, t5, -2 #update loop 0 counter
                  xor          a4, a0, t5
                  srl          sp, s4, gp
                  srai         t3, s7, 25
                  beq          t5, s2, sub_5_19_0_t #branch for loop 0
                  sll          a1, t5, s1
                  addi         s11, zero, 5 #init loop 1 counter
                  add          a7, sp, s11
                  sltiu        s10, a4, -1857
                  addi         a1, zero, -16 #init loop 1 limit
                  lui          s6, 880771
                  srli         tp, gp, 10
                  srl          tp, a5, a5
                  and          s8, s8, ra
                  nop
                  lui          s0, 237723
sub_5_16_1_t:     ori          t6, t3, -1226
                  add          t4, a5, a7
                  sltiu        a4, t6, -260
                  ori          s8, s5, -584
                  addi         s11, s11, -7 #update loop 1 counter
                  addi         a0, zero, 9 #init loop 0 counter
                  sltiu        t2, gp, -1017
                  addi         sp, zero, 8 #init loop 0 limit
                  ori          t6, s2, 1421
sub_5_16_0_t:     sltiu        s1, a4, 1507
                  addi         a0, a0, -5 #update loop 0 counter
                  srli         t4, a6, 13
                  ori          s8, a0, 644
                  sra          s6, sp, gp
                  slt          a7, s6, s9
                  or           tp, t2, s4
                  bgeu         a0, sp, sub_5_16_0_t #branch for loop 0
                  or           tp, s5, t2
                  sltiu        s0, a3, 596
                  bge          s11, a1, sub_5_16_1_t #branch for loop 1
                  and          gp, a7, a1
                  addi         t1, zero, -4 #init loop 0 counter
                  lui          gp, 738457
                  srli         tp, t5, 12
                  sll          s5, s8, t3
                  sltu         a1, t6, s9
                  srai         s7, t0, 11
                  addi         a7, zero, 10 #init loop 0 limit
                  add          t5, t6, s7
                  and          s5, gp, s4
                  nop
                  sub          t0, s4, s8
sub_5_1_0_t:      sltu         s6, a7, a4
                  srai         tp, a5, 1
                  slti         a2, a7, 2008
                  xor          s6, t3, ra
                  addi         t1, t1, 2 #update loop 0 counter
                  slt          s8, s5, a3
                  ori          tp, a2, -1023
                  srai         s0, a4, 17
                  srai         t0, a6, 18
                  slli         s11, s6, 31
                  sll          a0, t6, a3
                  sltu         t3, zero, s2
                  add          s5, s11, t5
                  beq          t1, a7, sub_5_1_0_t #branch for loop 0
                  xor          a2, a1, a0
                  addi         a2, zero, 8 #init loop 1 counter
                  xor          t2, s10, a1
                  addi         a4, zero, 5 #init loop 1 limit
sub_5_13_1_t:     xor          t1, s1, t1
                  addi         a2, a2, -1 #update loop 1 counter
                  xori         t5, s5, 1279
                  addi         s7, zero, 2 #init loop 0 counter
                  addi         a5, zero, 5 #init loop 0 limit
sub_5_13_0_t:     or           a7, s11, zero
                  addi         ra, a2, -328
                  sra          a7, s3, s10
                  addi         s7, s7, 8 #update loop 0 counter
                  srli         a7, s8, 3
                  blt          s7, a5, sub_5_13_0_t #branch for loop 0
                  bgeu         a2, a4, sub_5_13_1_t #branch for loop 1
                  sltiu        s2, gp, -1883
                  addi         a4, zero, -2 #init loop 0 counter
                  addi         ra, s3, -866
                  lui          t3, 702978
                  addi         tp, zero, 20 #init loop 0 limit
sub_5_21_0_t:     andi         s11, s9, -163
                  addi         a4, a4, 7 #update loop 0 counter
                  bltu         a4, tp, sub_5_21_0_t #branch for loop 0
                  slti         ra, s4, -172
                  addi         a3, zero, -7 #init loop 1 counter
                  addi         s5, zero, 14 #init loop 1 limit
sub_5_11_1_t:     addi         t4, t2, 1215
                  addi         a3, a3, 7 #update loop 1 counter
                  slti         a5, s1, 1460
                  addi         a0, zero, 3 #init loop 0 counter
                  addi         t2, zero, 15 #init loop 0 limit
sub_5_11_0_t:     sub          s11, t0, s4
                  addi         a0, a0, 10 #update loop 0 counter
                  blt          a0, t2, sub_5_11_0_t #branch for loop 0
                  beq          a3, s5, sub_5_11_1_t #branch for loop 1
                  srai         gp, a3, 20
                  bge          a3, sp, 4f
                  or           s10, a4, gp
                  auipc        a1, 442263
                  bgeu         a3, s7, 11f
4:                ori          s1, s8, -378
                  srli         s5, t3, 28
                  bgeu         s8, a3, 16f
                  sltu         s1, s0, zero
                  slt          zero, s10, t2
                  nop
                  srai         s0, t4, 7
11:               sltu         s4, t3, s9
                  xori         ra, t0, 1760
                  and          gp, t4, a5
                  srai         s5, s0, 22
                  bge          s4, t3, 30f
16:               lui          s10, 369499
                  and          tp, t6, t5
                  beq          s3, s5, 38f
                  sltiu        gp, s3, -1172
                  sll          zero, t5, s9
                  slli         sp, gp, 2
                  bne          a3, s8, 42f
                  sltiu        gp, s8, 1775
                  or           t3, t3, gp
                  bltu         s9, t2, 27f
                  ori          t2, s1, -553
27:               or           ra, a4, s1
                  blt          ra, s5, 41f
                  srl          s1, t6, s0
30:               srli         s2, t3, 6
                  auipc        s0, 152432
                  srl          a5, a4, ra
                  andi         t1, s0, 854
                  sll          s5, s6, tp
                  slti         gp, a6, 1554
                  sltu         s1, ra, s10
                  nop
38:               srli         ra, t0, 9
                  srli         t5, t0, 29
                  bge          s0, a3, 56f
41:               ori          a1, a7, -1043
42:               bltu         s9, gp, 49f
                  bne          s1, a3, 48f
                  slli         s7, a6, 21
                  lui          a4, 64532
                  bgeu         ra, gp, 52f
                  bltu         t5, s5, 61f
48:               sub          a1, t2, s4
49:               and          s2, a4, sp
                  or           t1, a3, a7
                  bltu         s10, s3, 67f
52:               xor          a1, t3, s3
                  or           sp, a3, s4
                  sltu         sp, zero, s5
                  bge          ra, s9, 66f
56:               slli         t0, a3, 31
                  andi         s2, s7, -610
                  bne          t2, s0, 70f
                  sltiu        t5, gp, 1327
                  sltiu        a5, s3, 798
61:               beq          s0, zero, 66f
                  xor          zero, t2, s8
                  andi         a1, s4, 916
                  srai         t2, a2, 4
                  auipc        s0, 806430
66:               lui          a4, 375611
67:               addi         a2, t4, 1876
                  beq          s2, a5, 74f
                  or           s2, a5, a6
70:               blt          ra, a6, 90f
                  nop
                  bne          sp, s10, 78f
                  bltu         a0, sp, 79f
74:               or           ra, s8, s5
                  beq          a4, t4, 83f
                  bne          t5, s11, 78f
                  nop
78:               nop
79:               sltiu        a0, a2, 441
                  auipc        t5, 940411
                  bgeu         tp, a2, 95f
                  or           a3, a5, s7
83:               srli         s6, a4, 28
                  sub          a5, s0, t1
                  srai         s1, a7, 28
                  blt          gp, s6, 93f
                  slti         gp, t6, -1053
                  ori          s10, a1, -2016
                  srli         gp, t5, 23
90:               slli         tp, t0, 13
                  auipc        t5, 351378
                  srai         t6, a6, 28
93:               slti         a3, s4, 520
                  sra          a3, ra, s7
95:               ori          t0, s8, -757
                  srli         t0, a3, 13
                  sltu         tp, t0, t4
                  bge          t0, t0, 100f
                  sra          t2, gp, a1
100:              slli         s6, s2, 9
                  slli         a7, t2, 13
                  bne          s5, s3, 103f
103:              xori         a3, s0, 1240
                  add          s2, s8, s5
                  beq          s1, s6, 106f
106:              srli         a7, s10, 5
                  srai         s0, t1, 23
                  sub          zero, s3, a7
                  slt          a3, a3, s5
                  add          s8, a2, s5
                  bgeu         s3, t2, 128f
                  xori         t1, tp, 803
                  auipc        a5, 454396
                  slti         t6, t3, 1740
                  bne          t0, a5, 118f
                  slt          t5, a7, a4
                  blt          ra, ra, 137f
118:              sll          s5, t6, zero
                  sll          s0, t1, t3
                  bge          s2, tp, 140f
                  sub          a0, s11, tp
                  bltu         s8, s8, 130f
                  sltiu        gp, zero, -1893
                  auipc        s2, 349713
                  ori          t3, s2, 1803
                  sra          t2, s4, s9
                  srai         s4, a2, 28
128:              srai         sp, s3, 31
                  add          t3, s4, a1
130:              lui          s11, 998182
                  srai         gp, gp, 20
                  bgeu         ra, s11, 152f
                  lui          t5, 571105
                  slli         s8, t2, 3
                  sltu         t2, s2, s8
                  beq          s2, zero, 139f
137:              sltiu        a5, a4, -1173
                  bltu         t4, s11, 145f
139:              add          a7, t3, t6
140:              sra          sp, s6, s9
                  sltiu        s1, s4, -1722
                  lui          s5, 559223
                  bge          a3, a2, 159f
                  sltu         a5, a3, s1
145:              nop
                  nop
                  addi         t6, a7, -1568
                  bne          s4, s6, 152f
                  sra          s8, s6, s10
                  srl          a0, t6, s10
                  auipc        s6, 92802
152:              sll          s2, s9, a3
                  srai         a4, s4, 16
                  andi         s2, s4, 782
                  srli         gp, a1, 16
                  sltiu        s2, s3, 1561
                  slt          t1, s3, s5
                  slli         tp, t4, 0
159:              bne          ra, s4, 165f
                  bne          s5, s6, 162f
                  blt          a5, s7, 167f
162:              nop
                  andi         s7, t6, -539
                  addi         a4, zero, -3 #init loop 0 counter
                  sltu         t4, s0, s10
                  addi         s1, zero, -20 #init loop 0 limit
                  slt          a7, s1, s5
sub_5_20_0_t:     auipc        t4, 448978
                  addi         a4, a4, -1 #update loop 0 counter
                  sltu         t1, ra, s4
                  slt          a0, a0, a1
                  auipc        s0, 735957
                  srai         zero, s9, 0
                  bne          a4, s1, sub_5_20_0_t #branch for loop 0
                  srli         s5, ra, 17
                  sll          s10, a0, s0
165:              srai         s0, s10, 12
                  addi         s8, s1, -435
167:              bne          s11, s0, 179f
                  bgeu         t3, a6, 173f
                  srli         a7, s9, 9
                  nop
                  xor          a2, a6, s11
                  srai         a4, a6, 14
173:              nop
                  sll          a5, s1, t4
                  sltiu        a1, s9, -1106
                  auipc        a5, 983247
                  sra          t6, a5, gp
                  srli         t0, a7, 25
179:              beq          s7, s8, 187f
                  srli         s7, s4, 1
                  or           a4, s1, t0
                  lui          s11, 705852
                  slti         t3, t2, 496
                  lui          a0, 403627
                  and          a0, s11, a5
                  slt          s4, s3, a7
187:              or           t0, sp, s10
                  nop
                  srai         t4, t6, 23
                  auipc        zero, 1002158
                  srli         t4, t0, 23
                  slli         t1, a1, 6
                  ori          s2, a1, 1481
                  sltiu        s11, s8, -1120
                  lui          a3, 962417
                  andi         a2, s8, 433
                  nop
                  srai         gp, s3, 29
                  auipc        tp, 162195
                  nop
                  srai         a7, s9, 6
                  and          a5, a3, s8
                  sra          s4, a1, s6
                  srli         t0, zero, 12
                  andi         t5, t5, -760
                  slli         s11, s0, 27
                  srli         a0, t0, 5
                  xori         a3, s7, -185
                  auipc        a4, 789199
                  or           t4, a4, s2
                  blt          s8, s2, 212f
                  addi         s5, zero, -4 #init loop 0 counter
                  addi         s8, s3, -1458
                  sra          s7, s10, s6
                  slti         sp, s10, 1451
                  srli         ra, a3, 3
                  slt          s2, a5, a0
                  and          sp, t5, s9
                  slti         s7, s7, -2018
                  srli         s8, a5, 15
                  sra          a4, a0, s6
                  addi         a7, zero, -14 #init loop 0 limit
                  nop
                  nop
sub_5_0_0_t:      sub          s11, t1, s10
                  slli         t1, gp, 2
                  addi         s5, s5, -10 #update loop 0 counter
                  add          t3, a5, a7
                  sll          a1, a6, s5
                  beq          s5, a7, sub_5_0_0_t #branch for loop 0
                  xori         s1, s3, -549
212:              xor          a0, t4, a2
                  srli         a7, a2, 12
                  blt          ra, s0, 225f
                  sltu         t4, gp, t3
                  bgeu         t6, t4, 222f
                  add          tp, s6, a1
                  ori          s11, s5, -1815
                  addi         a4, t2, -960
                  ori          t6, a2, 1724
                  nop
222:              bge          s8, s4, 228f
                  slli         t4, t6, 26
                  bge          t1, a1, 229f
225:              sll          tp, s11, s11
                  sll          a7, t4, s8
                  blt          a2, s4, 229f
228:              sltiu        t1, s7, -248
229:              bge          s7, a2, 231f
                  srli         zero, a2, 25
231:              sltu         s6, t2, s9
                  srli         a7, s7, 0
                  srli         a1, s6, 7
                  and          t4, s11, a4
                  slti         s7, a0, -331
                  add          s6, a4, t4
                  sll          tp, a6, s11
                  bgeu         a7, s0, 239f
239:              addi         a5, a3, -1570
                  add          gp, a4, a7
                  sll          zero, tp, s3
                  xori         s11, tp, 264
                  addi         t1, sp, -1056
                  bge          tp, a0, 260f
                  sub          s2, a1, s6
                  bne          s10, zero, 261f
                  or           s1, a2, s0
                  slt          s4, t0, zero
                  slt          s7, sp, a0
                  sub          a7, a0, a7
                  and          t2, s7, s3
                  bgeu         t5, ra, 269f
                  sub          t2, s5, t4
                  auipc        a0, 547285
                  sll          tp, s0, s2
                  auipc        gp, 73407
                  srli         a2, s9, 2
                  slt          t5, a1, s11
                  beq          s9, s1, 273f
260:              andi         s11, a5, 816
261:              bge          s5, t2, 271f
                  add          t1, a5, sp
                  bne          t6, s7, 270f
                  or           a2, ra, t2
                  bne          s7, s6, 278f
                  addi         s8, a1, 1032
                  bgeu         a0, t0, 281f
                  addi         a3, s4, 1842
269:              or           s2, s3, a1
270:              andi         zero, zero, 211
271:              xori         a4, s0, -1546
                  srl          a5, a2, t4
273:              sra          s10, a1, s6
                  sub          a5, s9, t2
                  and          tp, s8, gp
                  sltu         s0, s5, t0
                  sll          t2, s0, a5
278:              ori          t1, zero, -306
                  or           s6, t1, s7
                  xori         s7, gp, 1586
281:              srli         s5, s4, 14
                  or           s7, s7, s2
                  sltu         t3, ra, zero
                  xori         s4, s10, 461
                  srli         a0, s4, 8
                  sltiu        a4, s4, 689
                  sltiu        a3, ra, 822
                  addi         s11, a7, -1059
                  sltiu        a4, t6, -1117
                  add          a3, gp, a4
                  srli         t1, gp, 16
                  sltiu        t3, s9, -1830
                  blt          s6, ra, 313f
                  lui          s10, 233648
                  bltu         t1, t5, 301f
                  addi         t1, a5, 1697
                  ori          t6, s10, -876
                  auipc        s5, 703336
                  ori          gp, s0, -1934
                  add          t0, s4, a4
301:              xor          ra, a1, a0
                  sra          a7, a1, sp
                  xor          s4, a7, s5
                  sltu         a3, a7, s9
                  sra          s10, gp, ra
                  bne          t2, s10, 326f
                  addi         a2, s9, -1714
                  addi         t4, s5, 1492
                  sltiu        a2, ra, -2022
                  add          s7, gp, a4
                  sltiu        s11, t5, -415
                  ori          t3, s3, -1254
313:              bgeu         a3, sp, 333f
                  bltu         t3, t2, 328f
                  sub          t2, s2, gp
                  lui          t4, 180390
                  sll          a3, sp, s6
                  or           t0, a5, s6
                  slt          a0, a7, s3
                  or           s10, s8, a5
                  bne          a4, s5, 325f
                  slt          t4, s6, s7
                  addi         t6, s6, -124
                  beq          t5, s0, 338f
325:              bge          a7, zero, 336f
326:              addi         s4, t1, -689
                  bltu         s10, t4, 343f
328:              sltu         t5, s3, a5
                  sltiu        gp, t0, 982
                  andi         t0, s7, -1760
                  ori          t5, t2, 900
                  slli         s7, t2, 26
333:              bge          t1, zero, 341f
                  andi         s6, s0, -819
                  srli         s8, s9, 17
336:              andi         t2, sp, 1447
                  xor          t6, s6, s9
338:              xor          a4, t6, t6
                  bne          s0, a0, 355f
                  xor          t2, t0, s10
341:              slt          t2, sp, t4
                  or           sp, t4, t3
343:              sll          a0, sp, a1
                  blt          s11, a2, 361f
                  srl          s5, a1, a0
                  andi         s5, t1, -1395
                  slt          a2, s3, s11
                  bltu         a7, a1, 355f
                  slti         t0, s8, 1970
                  addi         s7, s6, -769
                  xori         a5, s0, -1763
                  xor          t0, a0, t5
                  ori          s1, s2, -1581
                  nop
355:              ori          a3, s2, 1046
                  and          s0, t6, a7
                  auipc        a2, 893059
                  auipc        t0, 872901
                  addi         s1, t6, -117
                  bne          s8, sp, 363f
361:              bltu         a3, s9, 363f
                  lui          zero, 1008864
363:              bltu         tp, s9, 365f
                  xori         sp, t6, -910
365:              nop
                  slti         s2, s3, -1400
                  bltu         s2, s8, 372f
                  xor          zero, a4, s6
                  sra          s8, s8, a6
                  srai         s10, s8, 19
                  bltu         a5, gp, 378f
372:              andi         a3, t3, 1385
                  bne          s0, s2, 381f
                  sub          a2, s10, a7
                  nop
                  slli         zero, gp, 18
                  blt          ra, t6, 387f
378:              srli         a7, s7, 7
                  bge          gp, t5, 385f
                  sra          s6, t6, a5
381:              bgeu         a4, a6, 387f
                  slti         t2, a3, -1526
                  andi         t0, t6, -1413
                  bne          t5, t1, 385f
385:              lui          a5, 247381
                  sub          t0, t1, s9
387:              slti         a4, s6, -462
                  slt          s7, s7, a4
                  srl          a0, s3, t0
                  sra          t0, sp, a3
                  bne          s0, s4, 392f
392:              add          t1, s0, a5
                  srli         t0, ra, 13
                  lui          zero, 648017
                  slli         sp, a6, 8
                  sra          gp, t1, s5
                  slli         s0, zero, 7
                  sll          tp, a0, sp
                  auipc        a0, 35223
                  add          s5, a2, a2
                  sltiu        a2, a1, -1974
                  andi         zero, t5, -1204
                  ori          a2, s0, 1389
                  lui          zero, 751112
                  srli         a5, t5, 3
                  auipc        a2, 208155
                  srli         s5, t6, 29
                  blt          t4, a3, 423f
                  srai         a3, s5, 21
                  nop
                  xori         tp, a1, -763
                  and          a5, a2, t0
                  ori          s5, s1, -1150
                  lui          t2, 252195
                  slt          a0, a7, t3
                  add          s5, a5, t2
                  ori          a0, a2, 1518
                  bge          a5, s5, 430f
                  bne          s1, t3, 421f
                  addi         t1, t3, -974
421:              andi         s7, s7, -417
                  srli         a7, sp, 7
423:              ori          t4, zero, 677
                  ori          s6, s11, 718
                  andi         t2, t4, 583
                  srai         s4, a7, 22
                  sra          s4, a0, a7
                  slt          t1, s2, a1
                  slti         ra, s10, 405
430:              lui          sp, 1037183
                  beq          t1, t3, 437f
                  beq          s2, s3, 437f
                  xori         s10, a4, 476
                  ori          t1, t5, -1398
                  bgeu         gp, a0, 448f
                  auipc        a2, 28784
437:              ori          zero, a4, 952
                  srl          s11, s0, sp
                  auipc        s7, 694962
                  slt          t0, t4, t3
                  andi         t6, t5, -201
                  slt          t3, t2, ra
                  bgeu         ra, a3, 459f
                  sll          t3, a0, t3
                  lui          s8, 279044
                  sltu         a2, ra, s7
                  sll          s6, s10, s0
448:              auipc        ra, 950406
                  srli         ra, a4, 5
                  srl          s1, s5, a4
                  sll          s6, s5, s7
                  beq          s10, tp, 456f
                  slti         s1, a5, 240
                  xor          sp, zero, ra
                  addi         s11, sp, 626
456:              xori         t6, a2, 1296
                  xor          s8, ra, a3
                  or           s2, gp, t1
459:              blt          s10, t0, 462f
                  slli         s6, ra, 20
                  xori         a2, s0, -1687
462:              sltu         t2, a0, a4
                  andi         gp, t6, -1404
                  slli         tp, s10, 28
                  nop
                  bltu         ra, zero, 473f
                  slt          a4, s0, a2
                  or           s0, s4, s7
                  slli         t2, a6, 5
                  srli         tp, a7, 30
                  bltu         s7, a4, 484f
                  sll          s10, s6, t3
473:              slti         a3, s7, -606
                  xor          s11, a2, s1
                  sltu         s10, s6, s2
                  srl          gp, s5, t6
                  xori         s11, s9, 1274
                  srl          sp, s1, s4
                  sltu         s2, a7, ra
                  sltu         t0, t4, a4
                  blt          t2, a1, 495f
                  xori         s7, s3, 170
                  bne          a5, a4, 490f
484:              nop
                  bgeu         a6, t0, 505f
                  beq          a4, s11, 487f
487:              beq          s2, t0, 507f
                  blt          sp, s5, 489f
489:              sub          s0, s10, s1
490:              and          s8, a2, a2
                  bne          s1, a4, 506f
                  srli         t4, t5, 8
                  sub          t2, a0, t3
                  auipc        a2, 170993
495:              andi         a3, t6, 1804
                  and          t5, tp, ra
                  bge          s0, zero, 499f
                  srli         a1, tp, 22
499:              ori          a3, t2, 127
                  bltu         s8, s4, 506f
                  srai         t4, a4, 16
                  sub          a3, a4, s1
                  sltiu        a5, s4, -1523
                  beq          t3, a4, 515f
505:              sltu         zero, a3, tp
506:              slti         a0, t3, -183
507:              bgeu         a5, a0, 509f
                  xori         a2, a0, 659
509:              sltiu        t5, t2, -1772
                  auipc        s11, 814437
                  bge          gp, a4, 517f
                  srai         a2, ra, 7
                  slt          a0, t1, s5
                  slli         t0, a0, 21
515:              blt          s6, s5, 521f
                  nop
517:              slt          t0, t3, zero
                  blt          s11, a6, 528f
                  slli         s0, a6, 15
                  lui          gp, 578885
521:              xor          t3, a5, s3
                  addi         a7, s3, 1225
                  slli         gp, gp, 9
                  xor          s8, s8, a2
                  slli         s6, s7, 26
                  xor          s4, t6, a5
                  and          s5, s5, t3
528:              sra          a1, s2, t3
                  srli         s2, zero, 21
                  or           a4, a6, s8
                  lui          a7, 408267
                  nop
                  and          s7, s1, a3
                  sra          ra, t2, s0
                  lui          t0, 461477
                  andi         a4, t1, -1528
                  sub          t1, zero, a7
                  slt          a2, t4, t6
                  xor          s1, sp, t2
                  bltu         t6, a7, 557f
                  sltu         s11, s2, tp
                  nop
                  srai         s0, s3, 4
                  bgeu         t4, a1, 549f
                  sub          a2, t4, a4
                  slti         t2, a7, -1711
                  sub          t4, t3, t4
                  or           s10, s5, t1
549:              bltu         gp, s1, 554f
                  blt          sp, gp, 566f
                  slli         a2, a3, 0
                  sll          ra, s0, tp
                  sll          gp, a0, a0
554:              sltiu        gp, t0, 1180
                  bge          s4, t6, 563f
                  srl          s0, t4, a0
557:              blt          t2, a7, 569f
                  sra          t2, s0, a2
                  or           t3, a0, t0
                  andi         zero, gp, -821
                  srai         a0, gp, 30
                  auipc        t4, 629790
563:              add          a7, t5, s8
                  slt          s1, zero, s0
                  and          s7, s8, t3
566:              sra          s7, gp, s1
                  slt          t3, t1, tp
                  bgeu         s1, zero, 582f
569:              addi         a3, a6, 209
                  sltiu        t4, a0, 675
                  slti         a4, a2, 1871
                  sub          t4, tp, a0
                  andi         a7, a6, -958
                  beq          s9, a3, 582f
                  blt          s10, a1, 581f
                  auipc        a1, 639157
                  andi         t6, a3, 1528
                  andi         t1, a4, 190
                  xori         s11, a0, -1081
                  bne          s4, s1, 600f
581:              or           gp, zero, t3
582:              srl          a0, s4, s10
                  slt          t0, s3, sp
                  xor          a2, s0, t6
                  sll          s6, t4, t2
                  sub          a0, s1, a7
                  andi         s8, a5, 195
                  bge          ra, t0, 590f
                  slt          t0, s4, zero
590:              srl          a4, zero, s8
                  slt          ra, a1, a6
                  blt          t3, t6, 597f
                  sltu         s0, sp, a2
                  blt          a3, t0, 614f
                  sra          s0, s9, s9
                  beq          t1, s0, 610f
597:              sltu         sp, s10, t0
                  srli         t3, t3, 28
                  and          s6, a5, s2
600:              sltu         a7, s3, s7
                  beq          tp, t1, 617f
                  slt          s8, s5, t0
                  srl          t3, a6, a5
                  slti         a0, ra, -1673
                  bltu         t1, t3, 607f
                  lui          t2, 678748
607:              auipc        a1, 504495
                  sra          a7, a6, a6
                  auipc        t1, 300397
610:              addi         a3, ra, 1626
                  srl          s2, s0, t6
                  srli         s0, t2, 22
                  ori          a5, sp, 1883
614:              beq          a3, s1, 621f
                  auipc        s4, 932376
                  addi         t2, a2, -444
617:              sll          s11, s3, s7
                  bgeu         zero, t0, 625f
                  addi         t6, s2, 1431
                  addi         ra, t6, -1731
621:              auipc        a4, 186672
                  nop
                  nop
                  sltiu        s2, a7, 1323
625:              bge          s11, a7, 627f
                  srli         a5, a5, 16
627:              sra          s4, a0, s11
                  sltiu        s6, s4, 597
                  nop
                  and          ra, s7, s10
                  lui          a3, 182756
                  and          a1, t1, s7
                  sll          s7, a5, s11
                  ori          s8, a7, -1949
                  xori         a2, a6, 1914
                  srai         sp, s6, 20
                  addi         t3, a7, 1598
                  andi         t5, a4, -565
                  blt          s5, a0, 645f
                  lui          s0, 469429
                  blt          t1, a4, 658f
                  andi         t4, s7, -930
                  xor          gp, s4, s9
                  bne          t2, ra, 648f
645:              auipc        a4, 44240
                  slli         s5, s0, 12
                  sra          gp, a1, a3
648:              sra          zero, t2, s1
                  and          gp, a3, a1
                  sltiu        s11, s2, 1060
                  bne          a6, t3, 663f
                  ori          a3, sp, 1828
                  andi         s11, a6, -1206
                  sub          t4, t4, s6
                  beq          s3, a5, 675f
                  srli         sp, t4, 12
                  xor          s7, a4, s3
658:              lui          t0, 641399
                  beq          a6, a0, 672f
                  ori          s6, s0, -663
                  and          a0, t1, t1
                  and          t5, a5, zero
663:              sltu         sp, s6, s2
                  slti         s6, a6, 1431
                  bne          s0, gp, 681f
                  nop
                  sltu         a2, s8, a6
                  slt          t3, s6, t1
                  auipc        s7, 577669
                  slt          tp, ra, t4
                  add          t1, t1, zero
672:              addi         s1, s1, 117
                  addi         t3, tp, -1604
                  auipc        t2, 1029875
675:              sltiu        t6, s10, 255
                  xor          a2, s3, a3
                  slti         a1, a3, -1645
                  bne          t1, s11, 692f
                  sltu         ra, s9, s4
                  slti         t5, s7, 447
681:              beq          s2, a0, 692f
                  bgeu         s2, s10, 690f
                  addi         a5, a5, -202
                  blt          a2, t0, 690f
                  sub          t2, t2, t2
                  xori         s10, t5, -640
                  lui          ra, 525275
                  xori         gp, s3, -311
                  and          t3, t2, s10
690:              bltu         a7, t2, 696f
                  sll          t0, ra, s11
692:              bne          a6, zero, 712f
                  bge          gp, s2, 703f
                  srli         gp, gp, 27
                  beq          a3, t5, 697f
696:              blt          s7, s3, 704f
697:              srli         t5, a3, 16
                  nop
                  and          zero, s9, a7
                  sltiu        t5, a2, 1058
                  nop
                  ori          s11, t2, 444
703:              srli         s11, t0, 26
704:              bge          s0, a6, 710f
                  blt          s8, tp, 708f
                  auipc        t4, 709655
                  lui          a1, 414721
708:              ori          t4, s4, 1351
                  xori         a1, a5, -1667
710:              sra          t4, a4, s5
                  slli         s7, sp, 28
712:              lui          t3, 800484
                  sltiu        a1, a5, -1240
                  lui          a2, 960402
                  slti         s10, a6, 577
                  sra          t6, a4, t6
                  blt          s0, zero, 718f
718:              andi         a0, s0, -1957
                  and          t4, s8, a2
                  slli         a4, a7, 31
                  xori         a7, sp, 1090
                  slli         t3, gp, 9
                  sra          t2, s8, s8
                  slli         a7, a1, 20
                  blt          s9, ra, 730f
                  and          gp, a0, a3
                  sra          a4, t3, t0
                  srli         gp, a3, 1
                  bgeu         t3, s6, 744f
730:              srl          s11, ra, s5
                  srl          s2, s9, s3
                  addi         a4, a6, -944
                  xor          a1, t5, a3
                  beq          s5, s9, 735f
735:              ori          s10, t2, -1549
                  blt          t6, t5, 756f
                  andi         a4, t0, 875
                  slt          t1, s4, a2
                  beq          a1, s3, 746f
                  sltiu        a3, s8, -66
                  nop
                  add          a1, s2, a3
                  nop
744:              xori         s7, a4, 1391
                  and          a4, s2, s4
746:              slli         s7, zero, 17
                  andi         tp, a5, 1702
                  srai         s11, a4, 12
                  addi         t6, t3, -46
                  sltu         a4, t0, s0
                  sltu         t4, a7, a6
                  srl          t5, s3, zero
                  bltu         t2, s4, 761f
                  lui          s5, 250930
                  slt          t3, a6, a0
756:              xori         ra, a7, -1969
                  srl          s10, a1, a6
                  srai         sp, t1, 27
                  add          a3, s10, a0
                  slli         s8, gp, 24
761:              and          a5, a1, s1
                  addi         t0, t5, -1547
                  bge          a4, sp, 764f
764:              or           t3, s10, sp
                  slti         s5, t4, -986
                  srli         s0, t5, 9
                  bgeu         t3, a4, 783f
                  add          s0, s10, a0
                  addi         s2, s4, -2026
                  blt          t4, tp, 787f
                  nop
                  addi         gp, a2, 272
                  bne          s5, t2, 777f
                  slli         t1, a7, 25
                  srl          t3, t5, a3
                  sub          s6, s2, s10
777:              srli         s4, s3, 10
                  sra          zero, sp, a7
                  xor          gp, gp, zero
                  auipc        a5, 355003
                  sltu         sp, s8, a3
                  srli         zero, t2, 10
783:              bltu         a0, sp, 795f
                  blt          s2, gp, 786f
                  slt          gp, t6, a5
786:              sub          t0, s4, gp
787:              addi         t4, a0, 937
                  lui          gp, 674415
                  and          s5, sp, a4
                  xor          t1, s2, a2
                  slt          t0, a7, s2
                  xori         a4, s7, -1767
                  srli         t0, a2, 13
                  sub          t6, ra, a1
795:              and          gp, gp, s11
                  xor          t6, s7, t4
                  lui          s7, 324890
                  sltiu        zero, a5, 338
                  sub          t3, s9, a6
                  ori          t3, s1, -298
                  slti         t4, t5, -1938
                  bgeu         t0, a3, 804f
                  beq          s2, ra, 823f
804:              bltu         a7, t4, 810f
                  slti         t1, t3, -45
                  bne          s6, a3, 811f
                  blt          s2, s0, 817f
                  addi         sp, a3, 1517
                  srli         a2, zero, 13
810:              bgeu         t2, t4, 818f
811:              slli         a5, a6, 17
                  srai         s4, a6, 10
                  lui          s7, 725645
                  blt          zero, gp, 820f
                  srai         s8, t2, 24
                  or           s8, s2, s10
817:              andi         s4, sp, 559
818:              addi         s2, zero, 1270
                  xor          s5, s8, gp
820:              sra          s8, t2, t3
                  xori         a2, s5, 1977
                  sltu         s6, a5, s10
823:              bltu         a3, zero, 829f
                  srli         s4, a5, 29
                  or           t5, tp, s4
                  sra          a1, tp, sp
                  lui          a4, 650611
                  nop
829:              slt          t3, a7, t3
                  add          t1, sp, t6
                  xor          a2, s6, a3
                  and          s8, t5, s3
                  andi         t2, a5, -1482
                  bne          s9, s1, 848f
                  bgeu         s5, a5, 846f
                  srli         t4, s9, 12
                  slti         s2, a6, 1686
                  sra          s11, t0, t2
                  blt          sp, s2, 852f
                  and          s4, s2, s11
                  srl          gp, s0, t2
                  addi         a2, zero, 844
                  bge          s10, s5, 848f
                  srli         gp, t0, 26
                  sub          zero, s8, a0
846:              slli         a4, a6, 4
                  blt          s11, sp, 849f
848:              and          tp, a3, a6
849:              addi         t6, t0, 630
                  bne          s11, s7, 864f
                  bne          a7, sp, 871f
852:              ori          a2, a5, 1107
                  slti         a5, s7, -26
                  bltu         a4, t2, 855f
855:              srl          t4, t5, t4
                  sll          a5, t1, s10
                  bge          t0, zero, 860f
                  xori         a1, s0, 1823
                  lui          t5, 333792
860:              slt          t0, a6, a1
                  srai         s6, ra, 1
                  sll          a3, a1, t4
                  sltu         a4, s10, tp
864:              xor          s0, a0, s7
                  xor          gp, s2, t1
                  or           t6, t6, s9
                  blt          a5, s1, 873f
                  sltu         s0, a1, gp
                  sll          a1, t5, s11
                  sll          t1, t6, s5
871:              slli         s2, s3, 3
                  sltiu        t5, s9, -983
873:              slli         a4, t3, 27
                  bltu         a0, a3, 889f
                  sub          s6, t4, a4
                  add          t6, ra, a0
                  slti         a7, s0, -1338
                  sub          s10, s0, zero
                  sra          s11, s5, s1
                  blt          tp, ra, 887f
                  bgeu         s1, t0, 897f
                  addi         a2, a1, 1721
                  slti         gp, s8, -1718
                  bge          a0, a5, 896f
                  beq          a4, s8, 899f
                  xori         s8, s2, 721
887:              srli         a0, s1, 4
                  sll          a7, s2, a6
889:              andi         a5, s3, 1725
                  sll          t0, s11, t5
                  sll          s8, a6, ra
                  srl          a4, s1, t0
                  andi         t3, a1, 1301
                  ori          s6, a2, 262
                  bge          s3, t1, 909f
896:              bgeu         t1, s0, 916f
897:              srli         s1, s4, 22
                  xori         a3, zero, -351
899:              and          t6, s0, a6
                  xori         s5, a7, -1001
                  srai         s10, t6, 22
                  bltu         a2, a4, 903f
903:              sub          a1, a5, a3
                  srli         sp, t4, 21
                  ori          s6, zero, 788
                  andi         a3, s2, 601
                  sltu         s10, s10, t0
                  slli         s4, a3, 23
909:              srl          sp, s5, a0
                  andi         t4, s1, -1356
                  slli         s11, a3, 5
                  sll          a0, t5, ra
                  bgeu         a2, s2, 920f
                  addi         t0, zero, -6 #init loop 1 counter
                  nop
                  and          t5, a2, s9
                  srli         a3, t1, 1
                  addi         t4, zero, 16 #init loop 1 limit
                  sll          t6, a5, a0
                  add          a4, t2, t2
sub_5_3_1_t:      or           a7, a1, s3
                  srli         t5, s3, 24
                  addi         t0, t0, 10 #update loop 1 counter
                  nop
                  sltiu        s2, t1, 1802
                  addi         s4, zero, -3 #init loop 0 counter
                  slti         a4, s7, 1737
                  addi         t2, zero, 5 #init loop 0 limit
                  addi         gp, s3, 1592
                  sltu         s6, s3, sp
                  slti         s5, s6, 1256
sub_5_3_0_t:      andi         a0, gp, 382
                  addi         s4, s4, 8 #update loop 0 counter
                  andi         s8, a6, 1140
                  xor          sp, t4, a4
                  bne          s4, t2, sub_5_3_0_t #branch for loop 0
                  lui          s8, 81668
                  bltu         t0, t4, sub_5_3_1_t #branch for loop 1
                  srli         gp, t1, 22
                  blt          tp, a1, 920f
                  beq          t5, a4, 921f
916:              ori          t2, s5, 208
                  nop
                  blt          s10, s6, 924f
                  and          a4, tp, t3
920:              srl          a3, t3, zero
921:              or           a4, zero, s6
                  slti         tp, s2, -1980
                  sltu         t6, s5, gp
924:              blt          a6, t4, 937f
                  bgeu         t6, s8, 940f
                  xori         a5, a3, 889
                  sltiu        a3, t0, 1511
                  sltu         sp, tp, a3
                  sub          s10, s8, a2
                  srli         a7, s8, 24
                  srai         t4, a1, 22
                  bltu         a6, t2, 934f
                  sra          s6, s9, s6
934:              andi         t2, a4, 854
                  ori          a1, s9, 755
                  or           s0, s10, t4
937:              bge          t3, sp, 941f
                  slt          t0, s11, a1
                  bne          s10, a5, 956f
940:              sll          s2, s11, s6
941:              or           a4, s11, s10
                  bgeu         a0, s5, 953f
                  bne          tp, a6, 959f
                  bge          s0, t2, 954f
                  andi         t5, s7, 1445
                  or           s1, t0, s0
                  nop
                  xor          a1, a1, s3
                  addi         t1, zero, -9 #init loop 1 counter
                  addi         t5, zero, -14 #init loop 1 limit
sub_5_22_1_t:     lui          zero, 607522
                  addi         t1, t1, -5 #update loop 1 counter
                  addi         a5, zero, 9 #init loop 0 counter
                  or           s8, a6, s3
                  addi         a2, zero, 9 #init loop 0 limit
sub_5_22_0_t:     addi         s1, a1, 1836
                  addi         a5, a5, -6 #update loop 0 counter
                  and          s0, ra, s10
                  bgeu         a5, a2, sub_5_22_0_t #branch for loop 0
                  bne          t1, t5, sub_5_22_1_t #branch for loop 1
                  xori         zero, zero, -1838
                  lui          t6, 357698
                  sltiu        tp, s6, -332
                  andi         s4, a1, 1248
                  sra          zero, t6, t3
953:              auipc        a0, 226027
954:              bltu         a5, a2, 959f
                  slli         s2, ra, 17
956:              sltu         a0, s6, t4
                  bne          sp, s6, 959f
                  slt          s11, t4, t0
959:              xori         a3, s6, 167
                  nop
                  ori          tp, t3, 1494
                  sltiu        s7, s1, 1896
                  bgeu         s8, a7, 966f
                  or           gp, t3, s8
                  nop
966:              srl          ra, s0, t0
                  sltiu        s1, t4, -80
                  srai         s2, a1, 21
                  bgeu         s1, gp, 977f
                  sll          a3, a3, s1
                  srai         a5, t6, 10
                  nop
                  ori          s4, sp, -1578
                  ori          zero, t2, -337
                  slti         a3, t5, -384
                  sll          s1, s5, a1
977:              or           t3, s0, t4
                  bgeu         a7, sp, 998f
                  or           a7, a3, a7
                  or           s1, s7, t0
                  blt          a4, t5, 989f
                  or           s2, s8, s10
                  andi         tp, tp, 807
                  ori          a3, s1, 549
                  srai         s8, a4, 1
                  sltu         t3, s2, s9
                  srli         s10, a3, 16
                  srai         a4, s11, 18
989:              sltu         tp, t0, s6
                  or           a7, a5, a1
                  blt          s3, tp, 993f
                  beq          a3, s10, 999f
993:              xori         a5, s8, 711
                  srl          t6, t2, ra
                  sltiu        t4, s8, -1325
                  slt          ra, s0, a3
                  sll          zero, s7, s10
998:              slli         t4, a2, 26
999:              sra          ra, s0, t4
                  ori          a1, a6, -253
                  sll          a4, sp, s1
                  or           t5, s1, s2
                  or           a5, s1, t0
                  sra          s7, sp, a3
                  srai         t2, s2, 3
                  slti         a7, a6, 463
                  bltu         zero, a6, 1008f
1008:             sltu         s4, t1, s7
                  add          a2, s1, a6
                  sub          a0, s6, a4
                  sltiu        sp, s8, -515
                  bgeu         a6, s8, 1017f
                  slli         ra, s6, 31
                  srli         a2, t3, 27
                  sll          a5, s8, t2
                  bltu         gp, t6, 1036f
1017:             nop
                  srai         s7, s4, 19
                  and          t6, a3, s0
                  sltiu        s6, s1, -1574
                  or           a4, s9, s2
                  slli         a1, a0, 9
                  srai         s0, sp, 28
                  sltiu        zero, t3, -1244
                  lui          s2, 338921
                  bne          t1, a6, 1042f
                  srl          t0, s2, s5
                  blt          s0, s11, 1034f
                  slt          t1, a5, zero
                  xori         a0, a3, -1547
                  sra          t1, t4, s8
                  or           t1, a6, t5
                  sltu         s8, a3, s9
1034:             sltiu        s5, t3, 1849
                  auipc        sp, 1008731
1036:             srl          tp, s0, s0
                  slti         a5, a3, 1784
                  ori          s10, a6, 484
                  sltiu        s4, s1, 306
                  ori          s6, a0, 1012
                  ori          gp, a6, -450
1042:             sltu         a3, s5, s11
                  auipc        t2, 908057
                  slli         s11, s4, 13
                  sltiu        t5, t4, -1683
                  nop
                  addi         gp, a7, 713
                  or           gp, sp, tp
                  lui          s2, 116748
                  lui          gp, 124574
                  ori          a2, s10, -1672
                  blt          gp, t6, 1059f
                  beq          t3, t2, 1061f
                  sra          s8, a4, a4
                  auipc        s11, 181246
                  auipc        a1, 253756
                  blt          s10, s8, 1072f
                  andi         zero, a7, 818
1059:             sltu         t0, s1, a1
                  blt          s2, a0, 1063f
1061:             blt          s6, s3, 1068f
                  xori         s1, t5, 515
1063:             slli         a5, a2, 8
                  blt          s1, t5, 1077f
                  ori          s5, s11, -786
                  addi         s10, s11, 308
                  sra          s8, a3, s9
1068:             srai         a1, s9, 20
                  sll          s1, s6, t1
                  ori          s5, a2, 257
                  bne          s4, a4, 1087f
1072:             sltiu        s11, t6, 1543
                  blt          s8, t0, 1087f
                  srli         sp, sp, 15
                  sra          s8, s3, t6
                  bne          s1, sp, 1077f
1077:             srli         t1, s3, 1
                  blt          s11, s0, 1098f
                  sra          t0, ra, s3
                  blt          t6, s9, 1086f
                  sltiu        s11, s4, 377
                  addi         s1, a2, -1451
                  add          tp, a1, a2
                  addi         s4, s11, 1011
                  and          a3, t3, a2
1086:             slt          gp, gp, t6
1087:             add          ra, s4, t6
                  lui          a5, 212746
                  bne          a6, t5, 1099f
                  auipc        s10, 316799
                  sub          s11, s6, a2
                  bge          s8, t2, 1103f
                  bne          a6, a1, 1101f
                  sll          sp, t1, t6
                  addi         t5, s3, -1029
                  srli         ra, s0, 18
                  andi         t3, gp, -1433
1098:             xor          a3, t3, t6
1099:             sll          gp, s11, s3
                  srli         t0, t2, 25
1101:             andi         t0, gp, -276
                  add          s0, a1, t6
1103:             bltu         sp, s2, 1104f
1104:             srli         a7, t1, 20
                  and          a5, zero, s6
                  srli         sp, t6, 27
                  srl          a3, t4, a0
                  bltu         s7, sp, 1110f
                  nop
1110:             sltu         t6, s4, tp
                  beq          sp, t0, 1123f
                  srli         a4, a4, 18
                  ori          ra, a5, 1821
                  and          s8, s7, s2
                  blt          a3, t0, 1119f
                  bltu         t4, s6, 1122f
                  auipc        t3, 964163
                  slti         t6, t2, -1526
1119:             sll          a1, t4, t3
                  blt          s2, t6, 1136f
                  sll          a2, t3, s11
1122:             ori          t5, s1, 981
1123:             bge          t6, s8, 1125f
                  sra          tp, s0, s8
1125:             srl          s10, ra, s0
                  sub          sp, t5, t6
                  andi         tp, t2, 1432
                  srli         t6, s0, 12
                  xori         a2, s8, 1234
                  bltu         s9, s5, 1136f
                  lui          t3, 698633
                  bne          t5, sp, 1149f
                  bge          zero, s1, 1153f
                  auipc        s2, 855401
                  andi         t5, s7, 279
1136:             sll          s0, s0, tp
                  srl          t3, s5, t6
                  blt          a1, s5, 1140f
                  xori         t0, s2, 1921
1140:             slt          a3, t0, t2
                  sub          a4, t0, a4
                  slli         a7, zero, 19
                  sltu         s10, a0, a7
                  sub          a4, s7, gp
                  bne          a4, s0, 1165f
                  bltu         sp, s8, 1151f
                  ori          ra, s8, 102
                  or           t2, s9, t0
1149:             sub          a1, t2, a3
                  srl          s6, s1, t1
1151:             ori          s4, t6, 454
                  sltiu        s1, s1, 859
1153:             blt          a3, a7, 1167f
                  sub          ra, s0, a3
                  bgeu         t5, t5, 1161f
                  sub          sp, s10, t4
                  blt          tp, a0, 1162f
                  srai         t4, a1, 20
                  blt          zero, s9, 1173f
                  slt          gp, s11, a6
1161:             sub          s6, t3, sp
1162:             bne          sp, t3, 1182f
                  add          t4, zero, t1
                  srli         s7, zero, 15
1165:             sltu         t5, s1, a6
                  auipc        a7, 453965
1167:             sltu         zero, t5, s2
                  bne          tp, t4, 1181f
                  slt          zero, t0, s7
                  slli         a1, s1, 17
                  sra          a3, s0, t6
                  slli         s6, s5, 17
1173:             srai         t1, s3, 11
                  sub          gp, t6, s4
                  xori         s6, s8, 449
                  srl          zero, s1, s5
                  lui          t4, 722444
                  add          s4, s7, a6
                  bne          a1, s9, 1185f
                  srl          s0, t0, t1
1181:             sra          gp, t1, s8
1182:             nop
                  or           a7, a3, a1
                  sub          s5, sp, t5
1185:             auipc        a4, 174428
                  bne          t6, a2, 1191f
                  blt          tp, t1, 1202f
                  bge          t1, t1, 1192f
                  and          s7, a5, ra
                  sra          t3, s1, t4
1191:             xori         a0, ra, -1269
1192:             bgeu         a3, a5, 1198f
                  bltu         s10, a6, 1194f
1194:             sub          a7, s2, t6
                  xor          s4, t3, s0
                  bge          s10, t5, 1203f
                  sltu         t4, tp, zero
1198:             sll          a5, t2, t3
                  blt          t4, s7, 1203f
                  sub          s11, t4, gp
                  addi         s2, tp, -932
1202:             srl          s5, gp, s4
1203:             lui          t4, 533334
                  slt          s0, zero, a5
                  addi         t6, t5, 1319
                  xori         t6, s9, 417
                  srai         ra, s9, 12
                  lw           a3, 4(s3)
                  and          t3, a2, s10
                  addi         s3, s3, 16
                  srai         a7, s11, 19
1709:             addi x12, x13, 0
1709:             jalr x12, x12, 0
sub_4:            sltiu        t3, s5, -1393
                  and          a0, tp, t0
                  addi         s3, s3, -64
                  slt          s1, a3, a2
                  sltiu        t3, a0, -513
                  sw           a3, 4(s3)
                  and          t6, t1, sp
                  addi         a0, zero, -8 #init loop 1 counter
                  srai         s2, s8, 15
                  addi         a3, zero, 16 #init loop 1 limit
sub_4_0_1_t:      add          t4, ra, s2
                  sltu         t3, s2, a6
                  nop
                  lui          t0, 725553
                  addi         a0, a0, 8 #update loop 1 counter
                  srl          s11, t6, a7
                  addi         tp, zero, -9 #init loop 0 counter
                  addi         s4, zero, 15 #init loop 0 limit
                  srai         s0, t3, 5
sub_4_0_0_t:      xori         s6, zero, -653
                  slli         a5, tp, 30
                  addi         tp, tp, 6 #update loop 0 counter
                  bne          tp, s4, sub_4_0_0_t #branch for loop 0
                  add          s7, s1, s8
                  bne          a0, a3, sub_4_0_1_t #branch for loop 1
                  sltiu        s8, a6, -300
                  sub          s4, s3, s10
                  xor          s2, t4, gp
                  sltiu        sp, ra, 1188
                  sltiu        a3, s3, 1153
                  srli         t5, t0, 8
                  slti         t6, a5, -1634
                  nop
                  sltiu        t5, s4, -2036
                  addi         t2, tp, 388
                  bgeu         a7, sp, 16f
                  lui          s0, 519958
                  srai         s10, a7, 19
                  addi         sp, zero, -699
                  srai         a7, s3, 24
                  bne          t5, a5, 16f
                  slt          t5, t3, a0
16:               srai         s7, ra, 0
                  sltu         t0, t3, s10
                  and          sp, a3, t2
                  sub          gp, t6, t6
                  bltu         s8, s0, 39f
                  sll          a4, tp, s10
                  andi         zero, a2, 1359
                  auipc        gp, 971634
                  blt          s5, s7, 30f
                  lui          t2, 279532
                  blt          t3, s6, 39f
                  srai         ra, a1, 12
                  sltiu        s0, a4, -1466
                  sll          a3, a5, a7
30:               ori          t2, gp, -545
                  bltu         s2, a0, 32f
32:               sltu         a3, s2, s10
                  sltiu        s8, s2, -552
                  bltu         a6, s3, 43f
                  sub          s11, t0, s1
                  blt          s8, s9, 49f
                  add          s8, s11, ra
                  srl          ra, s4, t0
39:               bge          t0, zero, 45f
                  and          s8, t5, s7
                  lui          s8, 453863
                  add          a4, s11, s1
43:               bgeu         a5, a0, 46f
                  and          s10, a0, a7
45:               slti         s0, t2, -772
46:               srli         s1, a5, 31
                  andi         t5, a3, -1080
                  beq          ra, t6, 50f
49:               sra          a3, a1, s8
50:               andi         s7, s7, 1507
                  and          t1, t3, tp
                  slli         s6, s1, 13
                  bge          t0, s7, 60f
                  blt          s3, gp, 62f
                  srli         a2, s7, 18
                  addi         a2, s1, 1411
                  nop
                  addi         a1, t6, -155
                  slt          t1, s9, tp
60:               ori          gp, t4, -1960
                  bltu         zero, t5, 62f
62:               add          a1, a3, t5
                  srli         s1, s7, 4
                  lw           a3, 4(s3)
                  addi         s3, s3, 64
                  srl          t5, s7, gp
                  srl          t0, a6, tp
                  slli         a7, a7, 18
                  sltiu        s1, s1, 599
                  sub          t5, a3, a7
                  xor          t1, a2, s8
                  srl          ra, s7, t2
99:               addi x4, x13, 0
99:               jalr x4, x4, 0
sub_3:            bgeu         a5, a3, sub_3_stack_p
                  nop
                  sub          a4, a2, s6
sub_3_stack_p:    addi         s3, s3, -64
                  or           s1, a5, t3
                  sw           a3, 4(s3)
                  addi         t5, a1, 652
                  and          t1, a7, s4
                  addi         t2, zero, -10 #init loop 0 counter
                  slt          tp, t2, s3
                  srl          a0, a3, a1
                  sll          s0, a1, t6
                  addi         a7, zero, -7 #init loop 0 limit
                  ori          ra, t1, -622
sub_3_2_0_t:      slt          zero, a0, a5
                  addi         t2, t2, 3 #update loop 0 counter
                  or           t4, s0, a4
                  blt          t2, a7, sub_3_2_0_t #branch for loop 0
                  or           ra, a5, s1
                  addi         s8, zero, 8 #init loop 0 counter
                  sub          ra, s2, ra
                  addi         s5, gp, -1220
                  srai         s10, s1, 27
                  ori          s5, a5, 1920
                  addi         a5, zero, 17 #init loop 0 limit
sub_3_1_0_t:      nop
                  lui          a0, 665659
                  xori         sp, s3, 1038
                  slt          a7, a7, tp
                  sub          t0, s6, s9
                  sra          a2, a5, t4
                  add          t1, a3, tp
                  add          ra, a7, tp
                  nop
                  slt          sp, sp, s5
                  srli         t1, t6, 15
                  addi         s8, s8, 4 #update loop 0 counter
                  srli         a7, t2, 1
                  or           t5, t1, s2
                  auipc        s7, 89749
                  add          zero, zero, s8
                  srai         s4, s7, 2
                  andi         t2, t2, -1320
                  blt          s8, a5, sub_3_1_0_t #branch for loop 0
                  sltiu        s4, s9, 886
                  addi         a5, zero, 6 #init loop 0 counter
                  addi         t0, zero, 6 #init loop 0 limit
                  ori          s6, ra, -264
                  sra          zero, a0, t6
sub_3_0_0_t:      nop
                  addi         a5, a5, -5 #update loop 0 counter
                  slti         s4, ra, 959
                  bgeu         a5, t0, sub_3_0_0_t #branch for loop 0
                  sltu         s6, sp, t3
                  slt          tp, ra, s8
                  lui          ra, 761627
                  slti         ra, t3, 1829
                  xor          ra, s0, a2
                  blt          sp, s6, 18f
                  addi         t0, a2, 494
                  sltu         t5, t4, s10
                  bne          zero, t1, 13f
                  blt          t3, s9, 16f
                  bge          tp, s0, 23f
                  ori          tp, s6, -910
                  blt          a1, a0, 13f
                  xori         s4, sp, 783
13:               bne          s0, a6, 27f
                  slli         t6, a7, 19
                  srai         s11, t1, 2
16:               slli         s11, a2, 5
                  sub          t2, t6, s0
18:               xori         t3, ra, -449
                  slt          t1, sp, s4
                  bltu         s2, a3, 39f
                  srai         s5, t3, 19
                  slli         ra, tp, 7
23:               sltiu        t4, s5, 358
                  sra          a1, s10, s11
                  bgeu         a6, s9, 26f
26:               srli         a3, t2, 6
27:               bne          t1, t0, 34f
                  andi         s7, t1, -574
                  sltiu        a5, t4, -1993
                  xori         t4, s7, 1438
                  bge          a5, s10, 39f
                  slti         s8, sp, 1131
                  nop
34:               ori          a0, s1, 1868
                  lui          s10, 370883
                  auipc        s8, 108678
                  slt          a5, a0, s2
                  or           s5, t0, a7
39:               srl          t6, s8, a3
                  slt          a7, t2, sp
                  bltu         a1, s4, 59f
                  andi         t5, sp, -1479
                  srl          s10, a1, t6
                  sra          zero, gp, zero
                  bne          t2, s11, 62f
                  bgeu         a7, s3, 47f
47:               beq          zero, gp, 56f
                  slli         t2, s1, 16
                  ori          s8, a1, -63
                  slt          s2, s4, a2
                  srli         s0, a6, 28
                  sltu         s8, s8, a7
                  slli         s7, a1, 0
                  bgeu         a6, a6, 61f
                  and          a0, s10, t5
56:               auipc        t2, 571392
                  blt          ra, t0, 77f
                  beq          a4, s0, 71f
59:               srl          ra, a3, s2
                  srli         t4, ra, 11
61:               sltu         tp, s10, s0
62:               srl          s8, s1, t0
                  xori         t3, t5, -151
                  slt          t4, a4, s1
                  bge          t4, s4, 75f
                  slt          s2, t1, t5
                  add          t2, ra, s10
                  bne          a7, s0, 85f
                  sltu         s5, a1, tp
                  srli         ra, t4, 5
71:               bltu         a0, t0, 88f
                  slli         t6, tp, 26
                  slli         t2, a6, 12
                  srl          zero, ra, s1
75:               sll          s6, t5, a0
                  add          a5, gp, t2
77:               addi         ra, s9, 1860
                  srai         s11, a0, 5
                  slti         t5, a6, -1277
                  beq          sp, tp, 97f
                  srl          s1, s0, s5
                  sll          t3, s9, a7
                  xor          s6, s5, t2
                  blt          zero, ra, 86f
                  addi         t6, zero, -1 #init loop 1 counter
                  ori          s8, s3, 897
                  addi         ra, zero, -11 #init loop 1 limit
                  sll          s0, t3, sp
sub_3_4_1_t:      nop
                  sra          t3, s7, t6
                  srl          s7, t4, a4
                  addi         t6, t6, -6 #update loop 1 counter
                  or           t1, a3, s5
                  addi         s10, zero, 5 #init loop 0 counter
                  addi         s5, zero, -3 #init loop 0 limit
sub_3_4_0_t:      sub          a0, t2, s0
                  slti         a2, t5, 1493
                  addi         s10, s10, -4 #update loop 0 counter
                  srl          a1, a7, a0
                  ori          s6, zero, -1713
                  beq          s10, s5, sub_3_4_0_t #branch for loop 0
                  xor          s11, t3, t2
                  sltiu        zero, t6, -150
                  sub          t3, s3, s3
                  bge          t6, ra, sub_3_4_1_t #branch for loop 1
                  slt          a0, t5, s3
85:               beq          s1, s10, 90f
86:               slti         s0, s9, 536
                  bne          t3, s3, 100f
88:               sra          a7, a3, a2
                  bge          s8, ra, 92f
90:               slt          s4, s11, s0
                  addi         zero, a0, -841
92:               and          s11, tp, s3
                  bge          s6, a0, 102f
                  slt          zero, a2, gp
                  srl          t2, s5, a7
                  auipc        sp, 154960
97:               auipc        tp, 342880
                  lui          t6, 39345
                  blt          s6, sp, 103f
100:              slli         a0, s11, 27
                  blt          t4, t2, 117f
102:              xor          zero, s6, gp
103:              srli         s11, s9, 15
                  xor          s8, a3, s0
                  sll          gp, t1, t1
                  sltu         t2, a6, s3
                  slt          s11, s9, a7
                  add          s8, s10, t6
                  sltiu        s11, s7, 120
                  sub          s4, t5, s8
                  bltu         t5, s7, 131f
                  auipc        t1, 1014460
                  bne          a2, a3, 116f
                  slli         s5, s7, 4
                  xor          ra, s1, t4
116:              addi         t0, t3, 1504
117:              lui          zero, 37366
                  xori         t3, s4, 302
                  addi         t6, a5, 327
                  or           a1, a5, a5
                  srl          s2, s9, a1
                  sll          a5, s9, t0
                  and          sp, t1, s11
                  xori         s11, s3, -40
                  beq          t6, s3, 141f
                  ori          s2, s8, -232
                  bge          t5, tp, 146f
                  srli         a2, a2, 12
                  bltu         t5, s8, 146f
                  add          s6, t5, s7
131:              bge          s5, s6, 148f
                  lui          s7, 745137
                  add          s1, t5, s2
                  andi         s0, t5, 1702
                  auipc        gp, 467889
                  ori          ra, s2, -1699
                  lui          tp, 118497
                  slti         s10, t6, 1535
                  beq          t2, s10, 159f
                  srl          a3, a4, t4
141:              xor          a0, s7, ra
                  bltu         s4, t3, 159f
                  sub          t4, s1, t6
                  nop
                  srli         a3, s2, 29
146:              or           s6, t1, s10
                  srl          ra, t4, s10
148:              bge          s8, s3, 161f
                  sub          s0, a3, s3
                  nop
                  slt          s8, s3, t2
                  ori          a5, zero, 627
                  sltiu        s7, ra, 1998
                  slt          tp, s11, s4
                  addi         s10, tp, 142
                  bne          s1, s8, 159f
                  addi         a0, a1, 1830
                  auipc        gp, 617090
159:              slti         a7, s3, 623
                  auipc        s5, 173378
161:              slti         a0, a7, -1800
                  nop
                  beq          t5, s9, 176f
                  auipc        t5, 926843
                  lui          s6, 599049
                  sltiu        a0, s6, 1363
                  slti         t0, s4, -1544
                  bltu         s5, t0, 176f
                  blt          s5, t2, 183f
                  beq          a2, t4, 172f
                  or           s11, t3, a7
172:              nop
                  sltiu        sp, tp, 267
                  srai         ra, t1, 12
                  xori         a5, a6, 999
176:              srai         s1, s10, 21
                  sltiu        s1, tp, -2017
                  add          a2, a0, s7
                  bgeu         t4, a0, 188f
                  srli         s10, ra, 10
                  blt          tp, t2, 186f
                  xori         a7, s5, -514
183:              beq          s4, s0, 197f
                  bge          s5, s8, 191f
                  auipc        s1, 346696
186:              bne          tp, t1, 190f
                  sra          t6, s9, a7
188:              slli         s0, s6, 6
                  xori         a7, a5, -9
190:              bltu         a1, s7, 199f
191:              sll          tp, s3, s4
                  srli         a0, zero, 3
                  bge          t2, s8, 211f
                  addi         sp, t6, 1175
                  srai         s6, s10, 6
                  slt          t2, sp, s10
197:              bltu         a3, a0, 198f
198:              xori         s6, t2, -847
199:              bgeu         a5, s4, 205f
                  srl          s5, s2, a3
                  lui          a7, 930480
                  add          zero, s8, t5
                  addi         t5, zero, 0 #init loop 1 counter
                  add          sp, sp, s5
                  addi         s1, zero, 20 #init loop 1 limit
                  or           a2, s2, s8
                  sltiu        s6, s10, 1566
sub_3_3_1_t:      sltu         a2, a6, a4
                  slt          s10, t0, t1
                  andi         s10, a5, -193
                  addi         t5, t5, 1 #update loop 1 counter
                  sll          s0, t2, ra
                  slti         s6, a1, 1213
                  addi         t3, zero, 8 #init loop 0 counter
                  sltiu        a5, s3, -152
                  sltu         s2, a5, s11
                  addi         s8, zero, 18 #init loop 0 limit
                  sra          t1, s0, t1
sub_3_3_0_t:      andi         s5, sp, -103
                  slli         t0, s1, 26
                  xori         s10, s11, 1769
                  xor          s5, s4, t0
                  auipc        zero, 228871
                  sra          zero, t2, a3
                  slti         ra, a3, 1219
                  addi         t3, t3, 4 #update loop 0 counter
                  srai         t6, t2, 13
                  blt          t3, s8, sub_3_3_0_t #branch for loop 0
                  srai         a5, a6, 24
                  sll          zero, t1, t5
                  beq          t5, s1, sub_3_3_1_t #branch for loop 1
                  slt          a3, gp, t0
                  nop
                  lui          s4, 219124
205:              sltiu        s4, s1, -177
                  srli         t5, t5, 10
                  add          a7, a2, a1
                  bltu         s3, a4, 211f
                  bltu         t1, a3, 216f
                  sltu         s5, s5, sp
211:              sub          s6, a5, t0
                  ori          s5, t5, 1923
                  slli         s7, a2, 27
                  andi         s2, a2, 1912
                  lui          a4, 46814
216:              slti         a1, t1, -1445
                  bgeu         a0, ra, 219f
                  slt          s11, s7, s4
219:              sll          s6, t2, t2
                  slt          tp, t4, s0
                  sll          a5, sp, s9
                  xor          sp, s11, s4
                  lui          ra, 713850
                  bne          a4, t0, 238f
                  or           a5, sp, s11
                  bgeu         t1, s11, 234f
                  bne          s6, s4, 244f
                  or           t5, s1, t3
                  sll          t6, a4, s5
                  or           gp, s1, t5
                  srl          s6, a3, s7
                  slti         a2, a5, 1522
                  xori         a3, a2, 1128
234:              slti         a2, s2, -820
                  auipc        s0, 4977
                  bne          t4, zero, 237f
237:              bge          s6, t3, 247f
238:              bge          a6, a5, 258f
                  xor          a0, s9, s7
                  bltu         a0, s2, 257f
                  blt          t4, s2, 255f
                  slli         a3, a4, 3
                  xor          s10, sp, sp
244:              sll          s0, t6, t0
                  blt          a4, gp, 258f
                  beq          s8, a7, 254f
247:              beq          sp, gp, 260f
                  sra          t3, s5, t5
                  addi         s2, t4, -413
                  sll          a7, s10, s1
                  slt          a7, s8, a4
                  ori          a2, t2, 1946
                  andi         a4, t2, -332
254:              beq          t2, s8, 255f
255:              sll          sp, t6, s3
                  auipc        t4, 325877
257:              beq          ra, s9, 265f
258:              andi         t0, a0, -2038
                  slt          a3, a4, t4
260:              nop
                  blt          a4, s8, 265f
                  sltu         s8, gp, ra
                  addi         sp, s11, 1325
                  bge          a7, s6, 265f
265:              sltu         a2, s0, s4
                  andi         t1, a5, 1751
                  nop
                  lw           a3, 4(s3)
                  xor          t5, a0, t0
                  addi         s3, s3, 64
                  sra          ra, t3, a3
378:              addi x12, x13, 1
378:              jalr x12, x12, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x16, x19, zero
                  csrr x28, 0x300 # MSTATUS
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 31
                  bne x28, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x28, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x28, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x28, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x28, x11, ecall_handler
                  li x11, 0x1
                  beq x28, x11, instr_fault_handler
                  li x11, 0x5
                  beq x28, x11, load_fault_handler
                  li x11, 0x7
                  beq x28, x11, store_fault_handler
                  li x11, 0xc
                  beq x28, x11, pt_fault_handler
                  li x11, 0xd
                  beq x28, x11, pt_fault_handler
                  li x11, 0xf
                  beq x28, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

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
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x19, x16, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
