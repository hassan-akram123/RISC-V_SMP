.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0xbb4975df
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0xfeaf537d
                  li x6, 0x8
                  li x8, 0x4
                  li x9, 0x0
                  li x10, 0x2
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0xfb55b8d6
                  li x18, 0x0
                  li x19, 0x6e1945da
                  li x20, 0x80000000
                  li x21, 0xfe287d87
                  li x22, 0x80000000
                  li x24, 0xf699881d
                  li x25, 0x1
                  li x26, 0x48c2866f
                  li x27, 0x80000000
                  li x28, 0x6
                  li x29, 0x949b0823
                  li x30, 0x80000000
                  li x31, 0x8893af56
                  la x7, user_stack_end
main:             xor          t5, ra, t4
                  la           s9, sub_1
                  xori         t5, a7, 1093
                  srai         gp, t2, 24
                  slli         tp, s3, 29
                  slt          zero, s1, t2
                  sra          a0, s9, ra
                  addi         s9, s9, 2
                  nop
                  sub          s10, s10, a0
                  and          s11, a4, s9
                  and          a1, t1, s6
main_j1:          jalr         a7, s9, -2 #jump main -> sub_1
                  addi         s0, zero, -5 #init loop 0 counter
                  xor          s5, ra, t0
                  sra          a7, s0, t5
                  auipc        s4, 154343
                  sll          s1, a3, a1
                  srli         t4, s3, 9
                  andi         t4, t3, -1550
                  xori         sp, t4, -597
                  sltiu        s2, tp, 78
                  xori         tp, t5, 1763
                  sll          zero, a4, a5
                  sra          zero, t6, ra
                  nop
                  lui          a3, 977896
                  srl          gp, s10, t0
                  addi         a0, zero, 8 #init loop 0 limit
                  sltiu        s11, a0, -766
main_0_0_t:       auipc        a2, 561662
                  ori          s6, a4, -1109
                  addi         s0, s0, 6 #update loop 0 counter
                  xori         s2, a1, 37
                  srl          s11, s11, a2
                  sltiu        zero, s9, -1853
                  addi         s6, s2, 1260
                  bltu         s0, a0, main_0_0_t #branch for loop 0
                  addi         a2, s9, 981
                  bltu         s5, gp, 9f
                  srai         s5, gp, 17
                  bgeu         a2, a5, 6f
                  or           s6, a1, sp
                  add          s0, a0, t0
                  slti         s0, s3, 1006
6:                bltu         s2, a4, 8f
                  blt          a1, sp, 9f
8:                or           a6, s7, sp
9:                slt          s8, t2, s0
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            or           t4, t3, t2
                  sra          t3, a7, t1
                  bne          zero, s8, sub_5_stack_p
                  sll          gp, zero, t3
                  xor          s0, t4, t5
sub_5_stack_p:    addi         t2, t2, -36
                  and          s9, t6, t4
                  sw           a7, 4(t2)
                  sll          tp, t2, a1
                  slli         a5, s7, 14
                  beq          s11, s9, 7f
                  nop
                  sll          s10, t2, t0
                  xor          t3, t1, a6
                  srl          gp, sp, t1
                  nop
7:                bltu         t6, s1, 16f
                  or           s0, a0, s4
                  beq          a5, a5, 11f
                  srai         t4, t2, 15
11:               add          a6, a1, a6
                  addi         s10, zero, 608
                  sltu         t1, t6, a5
                  sltiu        zero, a3, 1968
                  xor          s5, a7, s6
16:               srli         a2, sp, 17
                  nop
                  srli         t3, a5, 17
                  addi         t3, a3, 1312
                  ori          tp, a2, -1074
                  slti         ra, s10, 1662
                  addi         s5, t5, 990
                  sltu         gp, tp, sp
                  bne          a5, a3, 36f
                  auipc        a7, 294907
                  sltu         a5, s5, a2
                  or           s5, a3, zero
                  xor          tp, s1, s8
                  sub          t3, gp, t3
                  xor          t3, t6, s10
                  slli         a3, zero, 2
                  xor          a4, t3, s5
                  and          zero, s1, a7
                  add          s1, s9, s7
                  beq          s5, t0, 42f
36:               blt          t2, a4, 42f
                  srli         a4, a7, 25
                  slti         t1, t2, 900
                  or           a6, a7, a7
                  slti         tp, a2, 1992
                  srai         s11, s3, 10
42:               slli         s1, s0, 0
                  slti         a2, zero, 800
                  lw           a7, 4(t2)
                  slli         a4, tp, 18
                  srl          a5, s3, t2
                  addi         t2, t2, 36
                  sltu         a6, a0, s0
58:               addi x10, x17, 1
58:               jalr x10, x10, 0
sub_4:            or           s5, sp, sp
                  addi         t2, t2, -44
                  srli         ra, s0, 6
                  sltiu        a6, ra, -145
                  sltiu        s1, a7, -987
                  ori          a4, s9, -1111
                  sw           a7, 4(t2)
                  andi         a5, s7, -172
                  addi         a4, zero, -5 #init loop 1 counter
                  sltu         s6, t4, s2
                  andi         zero, t1, 1178
                  or           s8, t6, a3
                  sub          zero, s2, t4
                  addi         ra, zero, 13 #init loop 1 limit
sub_4_1_1_t:      addi         s5, s5, -1185
                  addi         a4, a4, 1 #update loop 1 counter
                  lui          s5, 915658
                  addi         s4, zero, 9 #init loop 0 counter
                  addi         sp, zero, 15 #init loop 0 limit
                  addi         t5, t1, -299
                  sll          a1, t6, t2
sub_4_1_0_t:      or           gp, a5, a7
                  addi         s4, s4, 1 #update loop 0 counter
                  sub          s9, t0, s3
                  bne          s4, sp, sub_4_1_0_t #branch for loop 0
                  xori         t6, sp, -1766
                  sub          s2, s3, s0
                  slt          a5, gp, ra
                  blt          a4, ra, sub_4_1_1_t #branch for loop 1
                  or           a2, tp, s5
                  addi         t1, zero, -5 #init loop 0 counter
                  sltiu        t3, t3, 1679
                  addi         s8, zero, 9 #init loop 0 limit
sub_4_6_0_t:      sltu         a5, zero, t3
                  or           a4, s11, s4
                  addi         t1, t1, 10 #update loop 0 counter
                  blt          t1, s8, sub_4_6_0_t #branch for loop 0
                  sub          t3, a6, s11
                  addi         tp, zero, 6 #init loop 0 counter
                  auipc        zero, 566973
                  sltu         a3, sp, t3
                  lui          s11, 605685
                  lui          a4, 244771
                  srai         a5, gp, 27
                  sub          t3, t0, t5
                  auipc        sp, 632424
                  sll          t3, s0, t6
                  sll          a6, t2, t2
                  addi         t1, zero, 10 #init loop 0 limit
                  lui          s0, 45539
                  xor          a5, a6, ra
                  lui          t6, 798217
                  addi         zero, s2, 1631
sub_4_4_0_t:      auipc        s10, 770713
                  srli         s11, t4, 20
                  xori         s8, t3, -621
                  addi         tp, tp, 1 #update loop 0 counter
                  srl          s2, t5, s8
                  lui          sp, 524261
                  add          s10, s11, zero
                  beq          tp, t1, sub_4_4_0_t #branch for loop 0
                  sub          a5, s4, s4
                  addi         s6, zero, -4 #init loop 0 counter
                  xori         s8, tp, 915
                  nop
                  nop
                  addi         s2, zero, 6 #init loop 0 limit
                  xori         s3, t2, 1660
                  andi         s5, t5, 1279
sub_4_2_0_t:      sltu         s11, s6, s9
                  xori         a7, s6, -94
                  sltu         t1, a5, s4
                  addi         s6, s6, 2 #update loop 0 counter
                  and          t5, a3, t5
                  addi         gp, tp, -1414
                  sub          t1, s2, t5
                  ori          a1, s8, -1294
                  srli         a2, s10, 14
                  add          t6, a0, s11
                  lui          s11, 341347
                  beq          s6, s2, sub_4_2_0_t #branch for loop 0
                  sll          s10, a3, a1
                  addi         s6, zero, -9 #init loop 1 counter
                  addi         s11, zero, 9 #init loop 1 limit
                  xor          t6, a0, t6
                  srl          a6, sp, s1
sub_4_5_1_t:      xori         s8, s0, -1664
                  addi         s6, s6, 9 #update loop 1 counter
                  sra          s1, s0, ra
                  nop
                  addi         ra, zero, 10 #init loop 0 counter
                  ori          gp, s2, 1918
                  srli         t4, tp, 31
                  slt          a3, ra, a5
                  addi         sp, zero, 20 #init loop 0 limit
                  nop
sub_4_5_0_t:      or           a5, a7, s6
                  xor          a1, s11, t3
                  srli         gp, t5, 5
                  addi         ra, ra, 10 #update loop 0 counter
                  beq          ra, sp, sub_4_5_0_t #branch for loop 0
                  slli         t5, s8, 0
                  slli         a7, t6, 15
                  sltu         s3, s9, s3
                  beq          s6, s11, sub_4_5_1_t #branch for loop 1
                  and          a1, a1, sp
                  addi         t4, zero, 1 #init loop 0 counter
                  srl          sp, t4, sp
                  addi         s6, a2, -526
                  sltu         s5, t3, zero
                  and          gp, s6, a6
                  xor          s9, s11, t1
                  addi         a0, zero, -18 #init loop 0 limit
                  addi         s1, t0, -1228
                  addi         a4, t2, -174
                  sra          a3, s9, sp
sub_4_7_0_t:      add          a2, ra, t1
                  sltu         t1, zero, a2
                  slli         a7, ra, 5
                  xori         a6, s7, -590
                  addi         t4, t4, -1 #update loop 0 counter
                  nop
                  xori         s0, s1, -156
                  xor          gp, s1, a6
                  nop
                  andi         gp, t0, 1116
                  sltu         s3, t0, s2
                  or           a1, a4, a7
                  and          s6, s2, s2
                  beq          t4, a0, sub_4_7_0_t #branch for loop 0
                  andi         t1, a4, -1703
                  addi         s6, zero, 1 #init loop 1 counter
                  addi         s4, zero, 10 #init loop 1 limit
                  slli         t6, s7, 17
sub_4_8_1_t:      lui          s9, 351738
                  lui          a1, 912846
                  ori          t1, a1, 410
                  xor          s8, s7, s7
                  srl          a7, s5, a3
                  sll          a6, s0, s9
                  xori         s8, s3, 404
                  xor          a5, t2, t6
                  auipc        t1, 308304
                  addi         s6, s6, 3 #update loop 1 counter
                  sra          a4, a3, s3
                  addi         tp, zero, 4 #init loop 0 counter
                  srai         ra, t0, 29
                  xori         t4, s7, 1858
                  srai         gp, s2, 30
                  slti         s5, s8, -764
                  addi         s1, zero, 4 #init loop 0 limit
                  add          t5, a0, s4
sub_4_8_0_t:      sltiu        s5, a1, -2028
                  xor          s8, a3, ra
                  and          a3, a7, s9
                  sra          a0, t5, t6
                  sltiu        a3, t0, -603
                  sltiu        a7, t3, -1043
                  lui          t3, 1046465
                  addi         tp, tp, -3 #update loop 0 counter
                  andi         t5, s8, 93
                  lui          s11, 640756
                  bgeu         tp, s1, sub_4_8_0_t #branch for loop 0
                  beq          s6, s4, sub_4_8_1_t #branch for loop 1
                  addi         s2, s4, -1296
                  lui          t4, 23426
                  and          s11, s11, gp
                  add          a5, t4, s2
                  and          s8, t1, s11
                  xor          a3, s3, s1
                  srl          t5, sp, s11
                  xor          t3, s2, a5
                  xori         s3, s8, 305
                  srli         a1, a0, 8
                  addi         ra, s3, -108
                  sltu         s2, a0, s1
                  auipc        s11, 709088
                  slt          a6, a1, s5
                  bne          s10, gp, 26f
                  slt          a5, t5, s4
                  bgeu         s5, s7, 19f
                  ori          a3, a2, 42
                  add          gp, a6, s5
                  andi         s0, a2, -642
19:               add          t1, a7, s3
                  and          s8, a4, a4
                  sltiu        a7, tp, -786
                  auipc        s5, 947238
                  sltiu        t3, s11, 1095
                  srai         s0, s1, 27
                  sll          a5, s5, t6
26:               sltu         s9, s10, a7
                  bge          s4, t5, 39f
                  sub          a0, s7, s2
                  sltu         a0, t6, s5
                  sra          t3, s5, s9
                  sltiu        s3, tp, -1250
                  sll          s1, t6, s7
                  auipc        a7, 377488
                  auipc        a4, 1044298
                  slti         a7, s10, -1469
                  sltiu        s2, t5, -1432
                  blt          s7, s8, 50f
                  andi         a1, t1, 1969
39:               slli         s10, s8, 19
                  auipc        t4, 989164
                  addi         a5, a5, 811
                  sltiu        gp, t4, -1825
                  bne          tp, a6, 44f
44:               bgeu         s2, a2, 58f
                  lui          a1, 45642
                  bne          s4, s9, 47f
47:               xori         s3, a1, 795
                  or           t4, a4, s10
                  srli         a4, s1, 28
50:               sra          s5, t0, s2
                  or           s9, s3, s4
                  bne          s0, a1, 68f
                  sll          t5, t2, t6
                  addi         t3, s1, -93
                  slli         a6, s1, 15
                  xori         a6, s7, -207
                  sra          t1, zero, s6
58:               add          s6, s9, s10
                  srli         s4, s9, 17
                  slli         s9, zero, 3
                  sra          s8, s3, zero
                  sll          a6, t3, t5
                  beq          gp, s6, 75f
                  srl          t5, t6, a2
                  slt          gp, t0, a2
                  bgeu         s4, ra, 68f
                  sub          s0, a0, a1
68:               bge          t3, s11, 73f
                  xori         s3, s4, 1258
                  beq          a6, a6, 73f
                  sll          s0, s0, gp
                  xor          s1, a5, sp
73:               slli         sp, t0, 25
                  slt          s5, a7, gp
75:               bltu         ra, t5, 92f
                  lui          a7, 238651
                  beq          t6, s0, 81f
                  slti         t1, s8, -289
                  addi         a7, t6, 1233
                  auipc        s11, 448515
81:               auipc        a5, 278042
                  slti         a2, t4, 3
                  add          a7, s9, t5
                  bgeu         tp, s0, 92f
                  srli         s2, t3, 26
                  bne          a0, t4, 100f
                  beq          s6, ra, 100f
                  xor          t1, t6, s3
                  and          a1, s0, a5
                  srl          a3, s0, s2
                  bgeu         s5, sp, 96f
92:               blt          t3, s9, 98f
                  andi         a0, s8, -927
                  sltiu        a7, a4, -573
                  sll          s11, s3, t6
96:               nop
                  or           tp, s10, gp
98:               bne          a6, s11, 101f
                  slli         t6, t5, 20
100:              bge          s4, s9, 113f
101:              slti         a1, t4, -1952
                  or           s5, zero, s0
                  sltu         s6, a7, s3
                  nop
                  bne          s0, s6, 124f
                  or           s8, a6, s11
                  add          gp, s9, s9
                  srai         a4, sp, 27
                  lui          s11, 503776
                  blt          tp, a7, 112f
                  sub          a2, s1, s1
112:              bgeu         s0, gp, 126f
113:              sltu         s9, s10, t3
                  sll          gp, t2, s5
                  sll          s4, a7, a2
                  blt          s7, t4, 120f
                  bne          s10, a3, 123f
                  srai         s6, s3, 31
                  srai         s2, a3, 4
120:              and          a5, s7, a5
                  lui          s11, 97131
                  beq          a7, a1, 133f
123:              sra          tp, t0, a7
124:              sltu         s6, a3, t1
                  sll          s0, t0, t5
126:              ori          s3, s5, 1820
                  blt          a0, a7, 140f
                  bltu         s1, tp, 131f
                  bne          s0, t6, 145f
                  addi         a6, s6, -1983
131:              beq          a7, s4, 134f
                  bne          t4, s7, 135f
133:              addi         s6, s0, -850
134:              auipc        a3, 821616
135:              andi         s10, s9, 1037
                  srli         s1, a1, 8
                  auipc        ra, 906638
                  nop
                  sra          gp, a6, s3
140:              bge          s8, t5, 157f
                  xori         a6, s0, 1200
                  xori         t1, a2, 1112
                  nop
                  auipc        s1, 537970
145:              ori          t1, a1, 1178
                  addi         a7, a2, -477
                  sll          s1, ra, zero
                  lui          a4, 528809
                  lui          sp, 268017
                  bgeu         s10, s10, 154f
                  sltu         a6, sp, sp
                  bgeu         a3, s4, 157f
                  srai         s6, zero, 15
154:              blt          tp, s4, 160f
                  addi         s5, a6, -679
                  add          zero, s2, s10
157:              blt          a7, t6, 173f
                  bge          gp, s2, 171f
                  slt          a0, s2, s11
160:              srli         t6, s1, 31
                  nop
                  sltu         a6, s7, s5
                  or           a6, a5, a7
                  bge          t5, t2, 178f
                  bne          s11, a1, 167f
                  sra          t4, s0, t1
167:              sra          t3, s0, s7
                  bltu         t4, s0, 171f
                  bltu         a6, gp, 188f
                  sll          t6, t4, s7
171:              ori          a2, tp, -945
                  slli         a0, s6, 15
173:              and          s4, s10, sp
                  ori          t4, a3, -347
                  sra          a7, zero, s10
                  sra          t6, a4, s5
                  sub          zero, s11, s1
178:              sltu         s0, a6, sp
                  slti         s4, t4, -851
                  auipc        gp, 654146
                  srl          a5, a4, a0
                  srli         s3, s10, 20
                  and          a7, sp, s7
                  auipc        zero, 277182
                  blt          s9, s5, 201f
                  add          s1, a3, ra
                  slli         s11, a2, 11
188:              slti         s8, tp, 1607
                  srli         a6, s5, 30
                  srli         s1, ra, 6
                  and          s11, a3, tp
                  addi         s10, t2, -1342
                  xor          a2, s4, a4
                  slt          t4, s2, s1
                  xori         s1, t6, -486
                  slt          t3, s1, a2
                  sltiu        a0, t0, -1781
                  auipc        s6, 542499
                  sra          a2, a1, t0
                  srai         s10, t4, 11
201:              sltiu        s5, zero, 600
                  slti         a0, t4, -813
                  bne          s7, a4, 209f
                  beq          a3, s3, 217f
                  bge          s11, ra, 213f
                  blt          a2, a7, 220f
                  lui          a1, 250943
                  beq          a7, a4, 212f
209:              slli         t5, a3, 10
                  sll          s4, a6, zero
                  bne          s9, a7, 223f
212:              srl          t6, t5, sp
213:              xori         s10, t0, 856
                  sltu         a1, s8, s10
                  auipc        t4, 230686
                  blt          s3, t1, 229f
217:              sll          s4, s4, s11
                  or           a6, a2, t0
                  srai         s8, t1, 10
220:              xor          tp, a6, s11
                  slt          a0, s4, s6
                  addi         a3, s11, 356
223:              beq          a7, a0, 235f
                  bge          a1, s1, 229f
                  slli         a2, s2, 24
                  nop
                  ori          s5, t0, -1434
                  blt          s5, s10, 229f
229:              bgeu         a5, t0, 231f
                  and          a4, s9, a1
231:              bne          a5, t0, 242f
                  srl          ra, t0, s4
                  srli         s9, a1, 0
                  addi         s6, s10, 863
235:              bge          s7, gp, 248f
                  addi         gp, s10, -738
                  sra          a6, s8, zero
                  ori          s3, a2, -739
                  sltiu        s3, a7, -110
                  or           s11, s6, t0
                  sra          a3, s5, a5
242:              bne          a7, a4, 256f
                  beq          a1, s10, 247f
                  bgeu         s7, a5, 257f
                  add          s2, a3, tp
                  ori          a0, s4, -1115
247:              nop
248:              srai         s3, a5, 23
                  or           t3, t1, zero
                  auipc        t3, 616759
                  sltiu        s2, a3, 1993
                  addi         sp, a4, 1392
                  or           t5, a2, s10
                  nop
                  blt          s7, t5, 256f
256:              lui          t5, 866562
257:              addi         s6, s8, 481
                  auipc        tp, 978623
                  or           a6, s8, sp
                  beq          s3, gp, 262f
                  bge          s6, a3, 264f
262:              sra          a2, a2, t2
                  slti         s1, t2, -1659
264:              sltu         gp, s6, t5
                  lui          sp, 248
                  nop
                  sub          s1, ra, t1
                  xor          a2, zero, s2
                  lui          s1, 448993
                  slli         s0, s8, 15
                  slti         t3, t6, -513
                  slli         zero, a7, 17
                  xori         s2, a7, 1477
                  or           a0, s2, t5
                  auipc        t4, 399262
                  sltu         a6, a6, t4
                  nop
                  auipc        s9, 1019540
                  xori         t3, s4, -1350
                  lui          a3, 302503
                  blt          a5, s0, 294f
                  sub          tp, t6, a4
                  srai         s1, a5, 31
                  xor          s11, s4, gp
                  auipc        s2, 291785
                  nop
                  add          t6, t5, t2
                  auipc        a5, 916584
                  or           s2, t4, t4
                  sll          s9, tp, s0
                  add          a4, t4, t2
                  slt          a4, a3, s0
                  srli         sp, a6, 26
294:              slli         a0, a3, 8
                  lui          s1, 733621
                  lui          s2, 172147
                  bltu         s0, s4, 311f
                  slli         a6, t1, 17
                  slti         s9, a5, 294
                  srai         s1, t3, 19
                  blt          a1, s8, 313f
                  lui          t3, 899369
                  srai         t1, s11, 19
                  bltu         tp, a3, 318f
                  auipc        s11, 752144
                  sra          s0, a7, gp
                  sub          tp, a2, s10
                  bltu         t6, s7, 324f
                  and          s6, zero, t2
                  sra          ra, t4, s7
311:              andi         sp, s5, -1917
                  andi         s9, s3, 462
313:              xori         t5, t0, -1646
                  bne          t1, a3, 318f
                  srl          t3, s11, t0
                  addi         s4, tp, -261
                  ori          s4, s0, 1439
318:              andi         sp, ra, 205
                  bge          s11, s3, 331f
                  lui          s0, 14563
                  andi         a6, a4, 398
                  bge          a7, t1, 335f
                  ori          a1, s4, -105
                  addi         a1, zero, 5 #init loop 0 counter
                  addi         s5, zero, 5 #init loop 0 limit
                  xori         a6, s10, -309
sub_4_0_0_t:      lui          s4, 338001
                  addi         a1, a1, -2 #update loop 0 counter
                  lui          ra, 504245
                  bgeu         a1, s5, sub_4_0_0_t #branch for loop 0
                  srl          s0, a5, t6
324:              bltu         tp, a6, 338f
                  slt          s3, s8, zero
                  nop
                  xori         s2, ra, 1253
                  add          a5, t3, s3
                  addi         tp, a4, -390
                  sra          a7, s11, t5
331:              auipc        s3, 36461
                  xori         s2, a5, 1246
                  sub          s1, a3, ra
                  addi         t3, t5, -789
335:              sub          a1, t3, s7
                  srai         a0, zero, 3
                  lui          t1, 985950
338:              sll          zero, t6, gp
                  srli         s8, t4, 21
                  lui          a5, 605387
                  slti         t3, s1, -1764
                  beq          s4, s6, 355f
                  bgeu         sp, zero, 356f
                  srli         a2, a2, 27
                  beq          s10, a0, 346f
346:              bgeu         t1, t4, 350f
                  slti         s10, s2, -1192
                  add          s5, t5, a3
                  and          s5, tp, t4
350:              sltiu        gp, a6, -561
                  xor          s3, ra, s11
                  slli         sp, s1, 3
                  add          a3, a1, a1
                  sltiu        s3, a3, -794
355:              or           a4, s9, s8
356:              xor          s4, t1, tp
                  andi         a5, s11, -554
                  or           s11, ra, a2
                  ori          t3, s5, 1460
                  bge          gp, t0, 362f
                  sltiu        a7, s7, -1305
362:              auipc        a0, 839206
                  slti         sp, a6, -1663
                  slli         s10, s5, 5
                  and          s5, a1, a3
                  addi         tp, tp, -1366
                  bge          s6, t0, 383f
                  sra          s6, a3, s4
                  slli         a2, ra, 28
                  sra          a3, s10, sp
                  auipc        sp, 139145
                  xor          ra, s7, a1
                  and          t3, t5, s5
                  sltiu        a1, t1, 727
                  xori         gp, s7, 1260
                  and          s1, t3, a4
                  xor          s9, a4, a0
                  addi         t6, sp, 1693
                  blt          a1, zero, 384f
                  add          tp, a0, tp
                  beq          s0, ra, 392f
                  add          a5, s4, a3
383:              slli         a0, gp, 5
384:              add          s1, s8, a0
                  srai         s9, t2, 1
                  srai         a6, t6, 20
                  addi         t5, t6, 166
                  and          t1, s7, s11
                  lui          t3, 967168
                  slt          t1, s9, t3
                  nop
392:              nop
                  srai         gp, gp, 27
                  beq          a6, t5, 407f
                  sra          zero, zero, a6
                  ori          a1, s8, 1816
                  and          sp, s11, sp
                  sltiu        t6, a5, 237
                  srai         t5, s10, 29
                  srai         a1, tp, 17
                  auipc        zero, 959605
                  sub          s9, gp, a6
                  and          s0, a3, s2
                  srl          gp, s11, s2
                  add          t4, s6, s7
                  slli         s8, t2, 25
407:              ori          a5, t5, -109
                  bltu         s11, ra, 411f
                  or           s3, a3, s4
                  blt          a6, s9, 415f
411:              and          t6, s9, ra
                  and          s4, s3, s1
                  sltu         a1, s6, s4
                  sltu         s3, s6, a2
415:              slt          t5, t2, gp
                  auipc        zero, 518889
                  sll          a7, a1, gp
                  nop
                  beq          a3, t4, 422f
                  sltiu        gp, s9, -1371
                  srli         s3, ra, 16
422:              srli         s3, s11, 6
                  addi         t1, zero, -1 #init loop 0 counter
                  slli         a7, s6, 11
                  sltu         s5, t4, a4
                  or           s10, t6, s4
                  addi         a4, zero, -18 #init loop 0 limit
                  and          gp, sp, a3
                  slli         t6, a7, 2
                  or           s9, zero, s2
                  or           s2, t2, t0
                  sra          s9, t5, gp
                  and          gp, a6, s7
                  auipc        s6, 356658
                  andi         s3, sp, 359
                  addi         s3, a6, 690
                  slti         s0, a7, 1659
                  auipc        sp, 773692
                  sra          t5, s5, t3
                  sub          a3, s11, a3
sub_4_3_0_t:      add          s1, a1, a5
                  slt          s9, s6, t3
                  addi         t1, t1, -5 #update loop 0 counter
                  xori         a0, s10, -1484
                  sub          sp, s7, a1
                  slli         s6, s3, 2
                  slti         a2, a3, -1152
                  xori         s11, a0, 493
                  bge          t1, a4, sub_4_3_0_t #branch for loop 0
                  add          t4, t3, zero
                  add          s8, t1, a3
                  srl          a2, a4, sp
                  blt          t5, a1, 431f
                  bge          a6, a2, 432f
                  slti         s5, s1, 557
                  and          gp, s2, a0
                  sll          s2, t5, t2
                  auipc        tp, 918119
431:              slli         s6, a7, 16
432:              srli         s1, s6, 11
                  auipc        s0, 197562
                  bltu         t2, t1, 442f
                  auipc        s6, 401082
                  bltu         s0, s11, 437f
437:              add          s4, zero, s2
                  bltu         s11, s8, 455f
                  srl          a1, t0, t6
                  and          a1, s3, a6
                  bgeu         t4, t5, 460f
442:              bltu         s3, t3, 446f
                  or           s9, t1, s7
                  nop
                  sltiu        s4, s8, 1824
446:              sra          s6, a4, a5
                  sltu         t4, t6, s11
                  auipc        ra, 202967
                  bne          t3, s2, 451f
                  bltu         tp, a3, 463f
451:              andi         s8, s8, 507
                  and          t5, a0, tp
                  sub          a5, t0, ra
                  lui          a4, 367017
455:              and          ra, s5, a3
                  nop
                  xori         s11, a6, 1312
                  sltu         s6, s5, gp
                  srl          s8, t0, t0
460:              beq          sp, tp, 477f
                  bgeu         s6, s7, 465f
                  blt          a6, s4, 463f
463:              add          s5, s5, a5
                  xor          gp, s4, s11
465:              blt          s4, t0, 477f
                  srl          a6, t2, s6
                  bltu         t0, s6, 477f
                  bge          a5, a6, 477f
                  slt          s3, s8, t5
                  nop
                  auipc        t1, 940738
                  andi         s8, a0, 1979
                  srl          a7, s11, s5
                  bltu         a7, s6, 477f
                  beq          tp, s2, 477f
                  blt          tp, s5, 477f
477:              srl          s11, s3, tp
                  slti         a1, s2, 974
                  lw           a7, 4(t2)
                  srli         a3, sp, 6
                  addi         t2, t2, 44
                  slt          gp, t6, s0
                  addi         t3, s1, -946
                  ori          a3, t3, 1437
                  srli         a2, t1, 24
                  sll          s9, a3, ra
688:              addi x9, x17, 1
688:              jalr x9, x9, 0
sub_2:            andi         a1, a6, 1780
                  srai         gp, s7, 2
                  bltu         s7, t4, sub_2_stack_p
                  srai         sp, s5, 3
                  or           s4, t0, a2
                  srli         ra, t0, 9
                  sltu         t3, t4, s2
sub_2_stack_p:    addi         t2, t2, -48
                  sub          s2, a5, s2
                  and          a2, s11, s1
                  sw           a7, 4(t2)
                  or           tp, t2, sp
                  nop
                  la           a4, sub_4
                  and          sp, s10, s7
                  sra          s1, t1, a2
                  addi         a4, a4, 1023
                  sltu         s10, ra, a5
                  srai         s4, s7, 5
                  bgeu         s5, t0, sub_2_j4 #branch to jump instr
                  sltu         sp, s6, t3
                  or           a2, t4, s5
sub_2_j4:         jalr         a7, a4, -1023 #jump sub_2 -> sub_4
                  addi         s1, zero, 5 #init loop 1 counter
                  addi         gp, zero, -14 #init loop 1 limit
sub_2_1_1_t:      sub          a0, s9, a2
                  addi         s1, s1, -9 #update loop 1 counter
                  addi         a1, zero, -1 #init loop 0 counter
                  sltiu        t3, t2, -1186
                  addi         s0, zero, 14 #init loop 0 limit
                  sra          s8, a5, a3
sub_2_1_0_t:      addi         s3, s3, 2017
                  addi         a1, a1, 5 #update loop 0 counter
                  bltu         a1, s0, sub_2_1_0_t #branch for loop 0
                  bge          s1, gp, sub_2_1_1_t #branch for loop 1
                  xor          a5, s8, a0
                  addi         s8, zero, 4 #init loop 1 counter
                  sra          s5, a3, s1
                  slli         s3, a1, 15
                  srai         gp, gp, 14
                  nop
                  addi         a2, zero, -8 #init loop 1 limit
                  srli         a5, gp, 31
sub_2_4_1_t:      sltu         s1, a5, a1
                  addi         s8, s8, -6 #update loop 1 counter
                  sltu         s9, s2, s10
                  sltu         s0, ra, s0
                  addi         a4, zero, 5 #init loop 0 counter
                  xor          a3, a5, s4
                  srai         zero, a6, 11
                  srli         t1, s4, 16
                  addi         s5, s2, 1877
                  addi         tp, zero, 20 #init loop 0 limit
sub_2_4_0_t:      slti         a3, s5, -1628
                  srli         t4, t0, 15
                  addi         a4, a4, 8 #update loop 0 counter
                  bltu         a4, tp, sub_2_4_0_t #branch for loop 0
                  sltiu        ra, sp, 1414
                  xor          s2, s3, t4
                  srli         ra, s11, 10
                  sll          ra, ra, zero
                  beq          s8, a2, sub_2_4_1_t #branch for loop 1
                  sra          s5, a6, a2
                  addi         s2, zero, -6 #init loop 1 counter
                  sltiu        zero, tp, -1883
                  sub          sp, t4, tp
                  addi         s10, zero, -16 #init loop 1 limit
                  srai         a0, ra, 2
sub_2_2_1_t:      sltu         zero, t5, s9
                  addi         s2, s2, -4 #update loop 1 counter
                  addi         s4, s2, -780
                  sltiu        s3, s2, -919
                  addi         s9, zero, -8 #init loop 0 counter
                  addi         tp, zero, 10 #init loop 0 limit
sub_2_2_0_t:      xor          s4, t6, t4
                  sub          t3, sp, s0
                  addi         s9, s9, 6 #update loop 0 counter
                  beq          s9, tp, sub_2_2_0_t #branch for loop 0
                  auipc        s1, 201106
                  srl          t1, t6, s4
                  bge          s2, s10, sub_2_2_1_t #branch for loop 1
                  srai         t4, s0, 10
                  addi         t3, zero, -10 #init loop 0 counter
                  sltu         gp, t3, s0
                  sltiu        zero, a3, 1824
                  and          s0, t2, s0
                  addi         tp, zero, 20 #init loop 0 limit
                  or           a0, s2, gp
                  ori          gp, t0, 15
sub_2_3_0_t:      and          a3, s4, a6
                  slli         s5, s2, 19
                  addi         t3, t3, 1 #update loop 0 counter
                  add          a7, s4, a7
                  bltu         t3, tp, sub_2_3_0_t #branch for loop 0
                  slli         sp, t6, 4
                  addi         s9, zero, 10 #init loop 0 counter
                  sltu         s6, gp, t0
                  srai         sp, a2, 18
                  addi         s8, zero, 5 #init loop 0 limit
                  sll          s11, t5, s11
                  auipc        a3, 584607
sub_2_5_0_t:      xori         a2, s9, 929
                  and          a5, ra, t4
                  lui          a4, 720446
                  auipc        a1, 882859
                  slt          a0, a5, a3
                  lui          s11, 958309
                  or           ra, s2, t1
                  addi         s9, s9, -3 #update loop 0 counter
                  add          s4, s1, s7
                  sra          t1, t0, s10
                  xori         s4, s1, 824
                  lui          a4, 868525
                  sra          ra, s4, a4
                  slti         t1, s7, -1966
                  auipc        s0, 485096
                  srai         s10, a2, 8
                  nop
                  sll          s10, t3, t1
                  sltu         t1, gp, t3
                  slli         gp, t4, 14
                  bgeu         s9, s8, sub_2_5_0_t #branch for loop 0
                  or           a1, sp, t4
                  srl          s9, s2, s9
                  srl          s1, a0, tp
                  beq          ra, s11, 6f
                  andi         a7, s0, 2040
                  bgeu         s10, s6, 15f
                  add          sp, a6, gp
6:                bge          a6, s3, 9f
                  andi         s0, t4, 1158
                  xori         a6, a7, 412
9:                srai         s11, ra, 3
                  beq          s9, zero, 18f
                  sub          zero, a7, t2
                  sra          s5, a7, s10
                  slti         s11, s2, 1912
                  xori         s0, s3, -364
15:               srli         t5, t0, 31
                  sltu         s2, a6, s3
                  slt          s9, gp, s2
18:               bltu         t5, s10, 35f
                  xori         t6, a2, 1164
                  slli         zero, a1, 10
                  slti         s10, t0, 1324
                  andi         s11, a3, -677
                  addi         s1, a0, -190
                  xor          a5, s3, gp
                  nop
                  bltu         s11, t1, 36f
                  sll          s2, s9, s10
                  and          a6, a7, a1
                  bgeu         s5, zero, 49f
                  bltu         zero, a0, 48f
                  addi         ra, s8, -1396
                  sub          s5, s2, zero
                  nop
                  nop
35:               srli         t4, a4, 28
36:               bltu         s1, a2, 56f
                  and          s5, s1, a2
                  bne          t6, a7, 40f
                  or           gp, zero, s3
40:               srli         a7, s0, 3
                  sll          s11, s2, s4
                  bltu         t2, tp, 55f
                  auipc        a1, 277247
                  slti         s11, s8, 1586
                  sltu         a1, s6, gp
                  and          t6, t6, s0
                  sra          a1, gp, tp
48:               sra          a2, s0, s9
49:               ori          a0, s8, 1256
                  blt          s4, t3, 61f
                  sll          ra, t1, a7
                  srli         s2, zero, 2
                  andi         a2, t1, -248
                  addi         s6, tp, 1977
55:               andi         t4, s1, -352
56:               andi         s1, s5, -945
                  and          t1, t0, s8
                  slli         s5, s8, 24
                  blt          s3, zero, 69f
                  and          gp, zero, t1
61:               andi         t3, s10, 501
                  bgeu         zero, s4, 75f
                  addi         t5, a0, 1453
                  srai         gp, s6, 27
                  and          t1, a4, s4
                  addi         s5, t1, -437
                  and          a6, a0, t3
                  xori         s3, a4, -830
69:               nop
                  and          s9, t1, s9
                  addi         t5, a1, 1206
                  blt          a4, s0, 81f
                  and          t6, s7, a3
                  add          s9, s5, s5
75:               sltiu        s9, t2, 1980
                  srli         s10, gp, 9
                  beq          s3, s1, 83f
                  slt          a1, a1, t2
                  bge          s8, t2, 85f
                  or           ra, s4, a0
81:               and          gp, zero, s9
                  xor          zero, a5, t2
83:               xori         t6, a4, 182
                  lui          s8, 933659
85:               srai         s6, a2, 25
                  sll          t6, s11, t3
                  bgeu         a3, t4, 90f
                  andi         s5, a0, -2041
                  sub          s5, a0, s7
90:               lui          s2, 592023
                  bge          a6, s10, 98f
                  bgeu         t6, s1, 112f
                  bne          a4, a0, 102f
                  slti         t1, s1, 776
                  xori         s6, a1, -885
                  srli         s2, zero, 12
                  bne          s6, s10, 98f
98:               sll          s1, s9, s9
                  srl          t1, t2, sp
                  bge          t6, s9, 117f
                  sltu         t5, s5, sp
102:              xor          a7, a6, t0
                  xor          a7, a6, a6
                  slt          s9, a0, a4
                  bltu         s10, s7, 112f
                  xori         a5, ra, -1843
                  nop
                  srl          a3, s8, t1
                  srl          t1, gp, t6
                  srl          a3, t2, sp
                  bltu         t0, s0, 121f
112:              beq          a7, t6, 116f
                  slt          a4, zero, a1
                  add          tp, s4, a6
                  lui          sp, 997758
116:              sll          tp, s2, a1
117:              addi         a1, a0, 779
                  lui          sp, 785057
                  bltu         s8, tp, 133f
                  or           a0, s7, s5
121:              srl          s6, t2, a4
                  sltu         s10, t0, a4
                  sll          s6, t1, s10
                  srai         a2, t1, 22
                  or           ra, tp, zero
                  ori          a7, s1, -1243
                  nop
                  add          s4, a4, sp
                  srl          tp, t2, t0
                  sll          t3, t3, t4
                  srl          gp, a2, s3
                  sra          t4, a6, s4
133:              ori          s6, s1, 911
                  auipc        a2, 432868
                  sll          a3, s9, s3
                  xor          sp, t4, t5
                  bge          t3, a3, 156f
                  sra          a3, zero, t6
                  slt          zero, a7, s1
                  sll          s6, s8, t5
                  andi         a4, a2, 1084
                  bltu         gp, gp, sub_2_j3 #branch to jump instr
                  xori         s8, a2, 146
                  sra          a4, a2, t1
sub_2_j3:         jal          a7, sub_3 #jump sub_2 -> sub_3
                  sltu         a7, s7, a0
                  sltu         s1, s0, t1
                  slli         s0, s9, 26
                  addi         a3, t6, 747
                  xor          s10, s10, a3
                  srli         sp, a6, 6
                  sltu         s11, a7, s11
                  bne          a0, s11, 148f
                  andi         t1, s2, -140
148:              andi         t3, s5, 1946
                  sltiu        ra, a2, -1654
                  and          zero, a4, s8
                  sltiu        a4, gp, -767
                  beq          a6, s9, 169f
                  srli         a3, t0, 20
                  slt          a2, t5, a2
                  auipc        a2, 1015220
156:              blt          a0, a4, 158f
                  xori         t4, tp, -1844
158:              blt          a6, s10, 162f
                  xori         a5, s2, -1624
                  sub          s5, s6, t0
                  bne          a4, t3, 168f
162:              bne          sp, t3, 172f
                  beq          s4, a5, 166f
                  sltu         zero, a7, s10
                  sltu         a2, tp, a1
166:              bne          s3, t2, 180f
                  sll          gp, t1, t0
168:              beq          s0, a4, 177f
169:              beq          a7, t3, 186f
                  addi         t4, a7, 754
                  srai         t4, a0, 30
172:              sltu         s4, gp, gp
                  sll          s2, a5, a6
                  bge          gp, s7, 193f
                  bge          s8, t3, 178f
                  andi         t1, a0, -1424
177:              nop
178:              sll          zero, s10, t2
                  slti         a7, s7, -1776
180:              auipc        s0, 466775
                  slti         t1, s11, 2047
                  bne          t6, s11, 188f
                  andi         t5, s1, 1541
                  add          s0, s6, tp
                  ori          sp, s8, -1907
186:              blt          t0, tp, 197f
                  bge          t0, t2, 194f
188:              bne          a2, s6, 190f
                  andi         sp, t5, 1542
190:              srli         a0, s2, 16
                  beq          s9, s4, 208f
                  andi         t3, a5, 499
193:              sra          s3, s1, gp
194:              sra          s5, t3, s6
                  ori          s10, a6, -257
                  xor          t5, s11, s5
197:              or           s0, sp, gp
                  addi         sp, a0, 1716
                  ori          sp, t1, 1545
                  addi         s2, s4, -448
                  beq          zero, s2, 202f
202:              beq          tp, s1, 215f
                  bltu         a3, s6, 207f
                  sll          s3, sp, s9
                  ori          gp, s7, -554
                  srli         s3, sp, 16
207:              bltu         s4, s0, 224f
208:              nop
                  sra          a7, ra, a4
                  sll          a0, a7, s2
                  sub          s0, s8, a7
                  xor          a1, a3, a5
                  nop
                  bge          t4, t5, 234f
215:              slti         ra, a6, 1248
                  slti         zero, t1, -743
                  sub          t4, s4, s8
                  sltiu        a7, s9, -257
                  sra          s0, a6, a6
                  sltiu        s3, a1, 1863
                  sub          zero, a1, s7
                  slt          s10, s8, s1
                  sltiu        s0, a7, -1310
224:              slli         a3, s3, 11
                  bgeu         s9, s11, 231f
                  lui          a2, 134329
                  and          a0, s6, zero
                  blt          t3, gp, 238f
                  bne          t2, ra, 237f
                  and          a1, a4, a0
231:              addi         a0, s0, -8
                  srl          t6, a2, gp
                  srl          a4, a5, t6
234:              sltiu        a7, t5, 194
                  slli         tp, t2, 10
                  bge          t2, s9, 254f
237:              blt          s11, a7, 248f
238:              beq          gp, s6, 258f
                  bne          a3, s4, 249f
                  andi         a0, t5, 476
                  addi         t6, a6, 1909
                  slli         a6, s5, 7
                  slt          zero, ra, ra
                  lui          s5, 337680
                  andi         tp, t4, -354
                  addi         s9, zero, 4 #init loop 0 counter
                  addi         s0, zero, 20 #init loop 0 limit
                  slli         a5, t2, 9
sub_2_0_0_t:      lui          s8, 289820
                  addi         s9, s9, 8 #update loop 0 counter
                  beq          s9, s0, sub_2_0_0_t #branch for loop 0
                  sub          s8, s0, a5
                  xor          t1, s11, zero
                  auipc        a2, 1003636
248:              bgeu         a6, t0, 268f
249:              lui          t6, 481160
                  slti         s8, t2, -293
                  slt          t3, a1, t0
                  sltiu        a4, s9, -163
                  and          t5, t2, a3
254:              sll          t3, t4, a3
                  nop
                  add          s3, t6, s1
                  sub          gp, t2, t6
258:              xori         s1, s2, 1672
                  lui          s4, 332787
                  bne          a7, s3, 269f
                  beq          a3, t1, 274f
                  or           a7, t6, ra
                  xori         a2, s7, 383
                  srl          a2, s8, t0
                  srl          a2, a5, tp
                  bgeu         a3, t6, 277f
                  bge          a3, t4, 270f
268:              bne          t3, a2, 275f
269:              slli         sp, s1, 20
270:              bge          a2, t2, 276f
                  blt          t5, s2, 278f
                  sll          t3, ra, s11
                  sltu         s10, s4, s10
274:              slti         s1, s1, 532
275:              bltu         sp, s0, 295f
276:              nop
277:              sub          s9, s5, s1
278:              slti         a5, s6, 1543
                  sltu         t4, s0, s4
                  or           zero, ra, a2
                  or           s5, a5, s4
                  sltu         gp, s8, s9
                  blt          a1, a7, 297f
                  beq          t4, s9, 285f
285:              xor          s3, tp, s9
                  addi         sp, s10, 1394
                  add          s4, t6, gp
                  sltiu        ra, s9, 1570
                  bltu         t2, ra, 299f
                  bne          s11, t3, 307f
                  slli         a5, a7, 24
                  addi         a4, a1, -2039
                  srai         gp, tp, 27
                  sltu         t4, a1, t0
295:              sra          t1, t4, s10
                  lui          ra, 141745
297:              blt          a3, gp, 303f
                  srli         t5, s7, 11
299:              bgeu         t3, a1, 309f
                  bltu         a7, s5, 309f
                  andi         s6, ra, 1517
                  bltu         s8, s9, 315f
303:              nop
                  add          tp, t2, s1
                  add          s8, a3, s2
                  sltiu        a0, s4, 1155
307:              slti         s1, s9, -1611
                  bge          a6, a6, 310f
309:              addi         s3, t5, -288
310:              bltu         s1, a7, 315f
                  andi         a7, s9, 272
                  bltu         t0, s10, 315f
                  sltiu        s4, s11, -654
                  auipc        a6, 333759
315:              srl          t4, t2, ra
                  srl          t5, t3, s4
                  auipc        s5, 1029461
                  slti         s6, s6, 1405
                  sltiu        sp, t1, 693
                  lw           a7, 4(t2)
                  and          s11, a5, a0
                  addi         t2, t2, 48
                  slt          zero, s6, s9
                  auipc        s5, 895520
                  auipc        s5, 78837
463:              addi x8, x17, 0
463:              jalr x8, x8, 0
sub_1:            sll          a0, s1, s4
                  nop
                  addi         t2, t2, -48
                  and          t1, t1, s4
                  sw           a7, 4(t2)
                  andi         s11, zero, -77
                  add          a4, t3, a3
                  andi         gp, t2, 849
                  add          a3, a2, s9
                  sra          a2, zero, zero
                  srli         gp, s3, 16
                  srai         zero, ra, 27
                  nop
                  srli         s2, zero, 7
                  sll          s3, a3, s4
                  sub          s5, s6, s5
                  auipc        zero, 945099
sub_1_j2:         jal          a7, sub_2 #jump sub_1 -> sub_2
                  or           sp, tp, s10
                  bgeu         t4, s7, 11f
                  srai         s1, s8, 24
                  bgeu         s1, a4, 18f
                  addi         t3, gp, -2012
                  srli         zero, gp, 27
                  blt          a7, t6, 10f
                  slti         s6, t0, -908
                  addi         t1, zero, 5 #init loop 0 counter
                  add          t5, sp, t6
                  sra          a3, a4, s4
                  addi         s8, zero, 17 #init loop 0 limit
                  sra          s10, t6, t0
                  sltiu        s0, ra, 1388
sub_1_0_0_t:      addi         t6, ra, 807
                  auipc        t6, 893572
                  andi         s11, a1, -207
                  xori         ra, s9, 1704
                  xor          a5, s11, a4
                  addi         t1, t1, 5 #update loop 0 counter
                  andi         s5, s6, 1155
                  blt          t1, s8, sub_1_0_0_t #branch for loop 0
                  sltu         zero, a2, s1
                  bltu         a0, a2, 21f
                  sltu         t5, s10, s5
10:               slli         gp, s6, 1
11:               beq          t1, s1, 28f
                  blt          s8, t6, 14f
                  sra          t4, t1, t6
14:               sub          s11, a0, t0
                  andi         sp, a7, 57
                  bltu         s4, a3, 19f
                  slt          t6, t2, s7
18:               and          s8, s8, s7
19:               sra          s8, s9, a0
                  sra          tp, t2, t6
21:               bgeu         s2, a5, 35f
                  bne          ra, a6, 38f
                  sra          a4, s1, t0
                  nop
                  bltu         t4, a6, 29f
                  bne          s10, t4, 35f
                  slti         s9, zero, -814
28:               srl          zero, t2, a3
29:               bne          s1, s10, 37f
                  bne          a1, s10, 48f
                  bne          s7, a5, 32f
32:               xori         s6, gp, 997
                  andi         s0, s5, -481
                  sub          sp, a4, t4
35:               bltu         s1, a5, 55f
                  add          t5, s5, a2
37:               addi         gp, s5, -474
38:               srli         ra, s11, 24
                  srai         a3, t5, 8
                  slti         t1, tp, 882
                  xor          s1, a6, a2
                  addi         a1, t6, -800
                  xori         a7, t6, 1064
                  slti         s3, s0, 1731
                  slli         s9, tp, 23
                  ori          gp, a6, 184
                  bgeu         s9, sp, 60f
48:               sll          s5, t2, a3
                  bgeu         s0, s1, 57f
                  addi         s9, gp, -871
                  andi         s0, t0, -174
                  nop
                  sub          s0, s6, s9
                  srai         a0, s8, 14
55:               bne          s3, t5, 56f
56:               xori         a3, s0, 1072
57:               srl          a1, s5, s10
                  slt          s1, a1, s7
                  bltu         t0, s2, 77f
60:               srl          s4, s2, s7
                  srli         s1, t2, 5
                  sll          s10, zero, s0
                  ori          s9, a6, 1208
                  srli         sp, s11, 10
                  bgeu         a0, t6, 71f
                  bltu         s10, s11, 77f
                  sll          a4, t1, a1
                  xor          sp, sp, t6
                  addi         s3, gp, 101
                  bltu         t4, a0, 77f
71:               and          a3, s0, s0
                  blt          a2, t3, 74f
                  bne          t3, a2, 77f
74:               and          s10, s11, a7
                  slti         a5, s10, 410
                  auipc        s9, 312801
77:               or           s11, gp, t6
                  srai         t1, a6, 3
                  ori          t6, t3, -427
                  lw           a7, 4(t2)
                  srl          s0, t2, ra
                  addi         t2, t2, 48
                  xori         s1, zero, 1278
117:              addi x27, x17, 1
117:              jalr x27, x27, 0
sub_3:            sltiu        a6, a3, 2010
                  bgeu         t6, s10, sub_3_stack_p
sub_3_stack_p:    addi         t2, t2, -36
                  slti         s2, s3, 1264
                  sltu         s10, a0, a5
                  auipc        tp, 144437
                  sw           a7, 4(t2)
                  slt          s9, zero, a6
                  nop
                  srai         s8, gp, 15
                  sub          a5, t6, t5
                  sub          ra, a2, s10
                  ori          s11, s7, 1682
                  beq          s10, tp, sub_3_j5 #branch to jump instr
                  xori         s0, zero, 1063
                  srl          a5, t5, t3
                  addi         a0, s5, 104
                  sltu         a1, tp, a6
sub_3_j5:         jal          a7, sub_5 #jump sub_3 -> sub_5
                  addi         s1, zero, 4 #init loop 0 counter
                  auipc        s8, 1034477
                  addi         a4, zero, 15 #init loop 0 limit
sub_3_9_0_t:      slt          a0, t4, a2
                  sltu         a3, s8, a5
                  addi         s1, s1, 2 #update loop 0 counter
                  and          a7, a1, t6
                  bltu         s1, a4, sub_3_9_0_t #branch for loop 0
                  sltiu        s10, a5, 0
                  addi         a3, zero, 0 #init loop 0 counter
                  auipc        a0, 346885
                  lui          s1, 686100
                  srli         t3, a5, 6
                  add          s8, s7, s7
                  sltiu        a4, t5, -931
                  srli         s2, a3, 18
                  srli         s1, t3, 9
                  sll          zero, t2, t4
                  slti         a4, a5, 1446
                  sub          s8, s10, t0
                  addi         s4, sp, 951
                  auipc        ra, 710764
                  addi         t5, zero, -6 #init loop 0 limit
                  slti         t1, s0, -1826
                  sltiu        t3, s1, 300
                  slt          a5, tp, gp
sub_3_8_0_t:      auipc        a6, 585699
                  xori         s6, a6, 555
                  auipc        s8, 622792
                  addi         a3, a3, -9 #update loop 0 counter
                  srai         s8, sp, 11
                  andi         t4, s1, 606
                  auipc        a7, 24670
                  andi         sp, t2, 998
                  bge          a3, t5, sub_3_8_0_t #branch for loop 0
                  slti         t6, a7, 413
                  addi         sp, zero, 6 #init loop 0 counter
                  srli         a1, a7, 31
                  ori          s10, s11, 1252
                  srli         s2, t2, 8
                  addi         a3, zero, -10 #init loop 0 limit
                  nop
                  add          s2, a7, tp
                  nop
sub_3_14_0_t:     xor          s9, s4, s6
                  addi         sp, sp, -8 #update loop 0 counter
                  nop
                  beq          sp, a3, sub_3_14_0_t #branch for loop 0
                  slli         s0, t6, 4
                  addi         s3, zero, 8 #init loop 1 counter
                  auipc        a5, 757203
                  nop
                  sub          t1, a2, s5
                  addi         t3, zero, 14 #init loop 1 limit
                  srl          s8, a5, zero
                  slli         a3, sp, 14
                  or           a7, s8, a6
sub_3_7_1_t:      add          s5, s5, s7
                  slti         a5, s0, 155
                  andi         a1, t2, 1431
                  addi         s3, s3, 3 #update loop 1 counter
                  xori         a2, t4, -1462
                  addi         sp, zero, -3 #init loop 0 counter
                  addi         ra, zero, -1 #init loop 0 limit
                  auipc        s10, 131777
                  srl          s2, t2, tp
                  sltiu        a4, s6, -210
                  nop
sub_3_7_0_t:      andi         a3, t0, 2017
                  add          s4, t4, s3
                  slt          s0, a3, s6
                  addi         sp, sp, 3 #update loop 0 counter
                  srli         t6, gp, 10
                  sltu         s10, gp, a0
                  addi         a2, s8, -1413
                  blt          sp, ra, sub_3_7_0_t #branch for loop 0
                  auipc        s5, 51058
                  xor          s1, s9, a2
                  and          s8, s3, s11
                  bne          s3, t3, sub_3_7_1_t #branch for loop 1
                  slti         a7, ra, 1833
                  addi         a6, zero, -7 #init loop 0 counter
                  xor          s9, tp, zero
                  sltiu        ra, a6, -824
                  addi         tp, zero, 10 #init loop 0 limit
                  srl          t3, a1, tp
                  sll          s5, a5, t2
sub_3_0_0_t:      ori          s3, s9, 1089
                  srai         s11, s11, 2
                  addi         a6, a6, 8 #update loop 0 counter
                  srli         gp, s1, 31
                  bltu         a6, tp, sub_3_0_0_t #branch for loop 0
                  lui          s6, 165172
                  addi         a6, zero, -2 #init loop 1 counter
                  auipc        t1, 736367
                  sub          ra, zero, zero
                  srli         s2, tp, 22
                  addi         s11, zero, 4 #init loop 1 limit
                  sub          zero, t0, t4
                  lui          a2, 38532
sub_3_20_1_t:     andi         a3, t5, -1112
                  slti         t3, s8, -1962
                  addi         a6, a6, 8 #update loop 1 counter
                  slt          sp, s4, s10
                  srl          s2, t6, tp
                  addi         gp, zero, 4 #init loop 0 counter
                  addi         a3, a2, 178
                  slt          s10, s7, s5
                  addi         s6, zero, 8 #init loop 0 limit
                  ori          a2, t1, -11
sub_3_20_0_t:     nop
                  slt          s0, t5, s10
                  addi         gp, gp, 4 #update loop 0 counter
                  ori          t1, s2, 715
                  sub          s9, a1, t6
                  srli         s4, gp, 13
                  add          a7, t0, t3
                  beq          gp, s6, sub_3_20_0_t #branch for loop 0
                  srl          zero, t6, s3
                  auipc        a7, 807554
                  srai         a2, s4, 21
                  slt          ra, s5, a3
                  add          s2, s2, sp
                  sltu         t6, t4, a1
                  xor          a2, s8, s5
                  blt          a6, s11, sub_3_20_1_t #branch for loop 1
                  srai         t5, s1, 11
                  addi         s1, zero, -10 #init loop 1 counter
                  sra          a2, a0, ra
                  srli         s8, tp, 4
                  addi         t4, zero, -16 #init loop 1 limit
                  srl          s9, s2, ra
                  slli         a4, s1, 0
                  slli         s3, s3, 25
                  addi         s2, t2, 103
                  srai         zero, a6, 22
                  sltiu        s6, s9, 1585
                  and          s6, s4, t1
sub_3_12_1_t:     nop
                  addi         s1, s1, -6 #update loop 1 counter
                  sll          a1, s6, t4
                  addi         t5, zero, 6 #init loop 0 counter
                  sll          s6, s1, s7
                  auipc        s11, 866410
                  nop
                  sll          s5, a3, a7
                  add          t1, a3, t1
                  addi         s4, zero, -6 #init loop 0 limit
                  sll          s11, s2, gp
sub_3_12_0_t:     auipc        a2, 121185
                  addi         t5, t5, -2 #update loop 0 counter
                  xori         a7, t2, -531
                  xor          s6, zero, s9
                  slli         t6, s5, 14
                  bne          t5, s4, sub_3_12_0_t #branch for loop 0
                  lui          gp, 24113
                  sltu         a4, t4, s7
                  or           s2, a2, t5
                  bne          s1, t4, sub_3_12_1_t #branch for loop 1
                  addi         zero, s6, -1265
                  addi         a4, zero, -10 #init loop 1 counter
                  addi         s9, zero, 8 #init loop 1 limit
                  sub          a7, t4, a3
sub_3_19_1_t:     andi         t6, zero, -1614
                  addi         a4, a4, 1 #update loop 1 counter
                  addi         a1, zero, 10 #init loop 0 counter
                  addi         s8, zero, 10 #init loop 0 limit
                  addi         a2, t3, 395
sub_3_19_0_t:     or           a6, a7, t3
                  addi         a1, a1, -8 #update loop 0 counter
                  or           t6, a0, a2
                  bgeu         a1, s8, sub_3_19_0_t #branch for loop 0
                  add          gp, t0, s3
                  blt          a4, s9, sub_3_19_1_t #branch for loop 1
                  xor          tp, a5, s9
                  addi         tp, zero, -5 #init loop 1 counter
                  add          s11, t2, t5
                  nop
                  addi         s8, zero, -10 #init loop 1 limit
sub_3_6_1_t:      sltu         s10, gp, a3
                  sltiu        a6, a1, 48
                  addi         tp, tp, -2 #update loop 1 counter
                  slt          gp, t4, s10
                  addi         a0, zero, 3 #init loop 0 counter
                  auipc        a4, 467046
                  addi         t5, zero, 16 #init loop 0 limit
sub_3_6_0_t:      slti         s2, s7, 2022
                  auipc        gp, 129107
                  addi         a0, a0, 9 #update loop 0 counter
                  bltu         a0, t5, sub_3_6_0_t #branch for loop 0
                  bge          tp, s8, sub_3_6_1_t #branch for loop 1
                  sltiu        s3, zero, 222
                  addi         t3, zero, -4 #init loop 1 counter
                  addi         t1, zero, 10 #init loop 1 limit
                  or           s9, sp, s10
sub_3_11_1_t:     slt          a6, s7, s9
                  andi         a2, t0, 213
                  srl          zero, s11, a7
                  sltu         s4, t5, a4
                  addi         t3, t3, 1 #update loop 1 counter
                  addi         s3, s4, 895
                  addi         s2, zero, 5 #init loop 0 counter
                  ori          t4, t2, 1311
                  slt          a4, sp, s5
                  ori          a3, a1, -1461
                  nop
                  ori          a6, a1, 2013
                  addi         s8, zero, 1 #init loop 0 limit
sub_3_11_0_t:     sub          a6, s3, s9
                  xori         s6, s8, -1707
                  addi         s2, s2, -4 #update loop 0 counter
                  slti         a3, s5, -160
                  beq          s2, s8, sub_3_11_0_t #branch for loop 0
                  and          s4, a3, t3
                  add          a6, s4, tp
                  add          a6, t4, t2
                  sra          t6, a1, zero
                  slli         t5, t3, 8
                  xori         a0, s10, -85
                  xor          s4, t5, sp
                  bne          t3, t1, sub_3_11_1_t #branch for loop 1
                  sra          s6, zero, s3
                  addi         a1, zero, 2 #init loop 0 counter
                  andi         s4, s4, 1598
                  auipc        s5, 455914
                  srli         s2, t0, 27
                  slti         tp, zero, 1430
                  sub          a7, t5, t5
                  srl          s2, t3, sp
                  srai         a3, s9, 30
                  xori         s6, ra, -1197
                  srl          a5, s6, s11
                  addi         t6, zero, -6 #init loop 0 limit
                  srai         s6, s10, 16
                  auipc        a6, 522154
sub_3_2_0_t:      and          a0, s11, s6
                  srli         a7, s3, 1
                  andi         zero, t6, -1973
                  slt          a4, s10, zero
                  addi         a1, a1, -8 #update loop 0 counter
                  xori         s10, s3, 1361
                  nop
                  or           sp, s5, s11
                  sltiu        s9, t6, -1106
                  sra          a7, s9, t4
                  andi         s0, s11, -1012
                  add          t1, s5, t1
                  beq          a1, t6, sub_3_2_0_t #branch for loop 0
                  srli         ra, a1, 11
                  addi         a5, zero, 1 #init loop 1 counter
                  addi         s1, zero, 15 #init loop 1 limit
sub_3_4_1_t:      xor          tp, tp, s9
                  srl          a2, s9, s4
                  slt          s2, t2, s6
                  sra          a2, tp, a4
                  addi         a5, a5, 7 #update loop 1 counter
                  addi         s9, zero, -9 #init loop 0 counter
                  addi         ra, zero, -9 #init loop 0 limit
sub_3_4_0_t:      xor          s3, a4, s9
                  sltu         s10, a7, s4
                  sub          t4, a7, t4
                  sltiu        s8, s8, -874
                  sub          a2, a6, a7
                  addi         s9, s9, -1 #update loop 0 counter
                  bge          s9, ra, sub_3_4_0_t #branch for loop 0
                  beq          a5, s1, sub_3_4_1_t #branch for loop 1
                  xori         t5, s10, 125
                  addi         s3, zero, 9 #init loop 1 counter
                  slt          t6, gp, s7
                  addi         sp, zero, 15 #init loop 1 limit
                  andi         t1, gp, 1440
                  and          t1, t1, a6
sub_3_17_1_t:     sltiu        s8, t5, -22
                  addi         s3, s3, 9 #update loop 1 counter
                  srli         s11, a5, 1
                  slt          s4, a0, s2
                  addi         s5, zero, 9 #init loop 0 counter
                  xor          s9, s6, s5
                  sub          a1, s10, ra
                  addi         s1, zero, 8 #init loop 0 limit
sub_3_17_0_t:     add          a4, t2, a2
                  addi         s10, s11, 1441
                  xor          t4, a4, a6
                  or           ra, t6, a0
                  nop
                  addi         gp, s4, -518
                  addi         s5, s5, -2 #update loop 0 counter
                  sltu         t4, s2, s4
                  bgeu         s5, s1, sub_3_17_0_t #branch for loop 0
                  lui          t5, 907259
                  blt          s3, sp, sub_3_17_1_t #branch for loop 1
                  slt          a7, t1, a6
                  addi         t3, zero, 9 #init loop 1 counter
                  addi         t5, zero, 18 #init loop 1 limit
sub_3_10_1_t:     slti         s6, a3, 1003
                  slli         ra, a0, 27
                  andi         ra, a1, 306
                  srl          sp, t6, s1
                  addi         t3, t3, 9 #update loop 1 counter
                  addi         sp, s1, 782
                  slti         t4, sp, 1797
                  sltiu        tp, s7, -1581
                  addi         s9, zero, 4 #init loop 0 counter
                  add          zero, t6, s9
                  xori         s10, a1, -1468
                  ori          s10, s4, 1458
                  addi         s5, zero, 2 #init loop 0 limit
                  sltiu        a4, s11, -1179
sub_3_10_0_t:     andi         a0, s10, 1178
                  addi         s9, s9, -2 #update loop 0 counter
                  ori          s2, t3, 1044
                  nop
                  xori         gp, gp, -676
                  beq          s9, s5, sub_3_10_0_t #branch for loop 0
                  xori         s3, s1, -1304
                  srai         gp, s8, 31
                  sub          t6, s7, a2
                  auipc        ra, 916098
                  nop
                  bne          t3, t5, sub_3_10_1_t #branch for loop 1
                  xor          a4, s8, s10
                  addi         t6, zero, 5 #init loop 0 counter
                  addi         gp, zero, -19 #init loop 0 limit
sub_3_5_0_t:      ori          s0, a5, -1309
                  addi         t6, t6, -2 #update loop 0 counter
                  bne          t6, gp, sub_3_5_0_t #branch for loop 0
                  and          zero, a7, s5
                  addi         tp, zero, -9 #init loop 1 counter
                  xori         a2, s1, -388
                  sub          s3, a5, zero
                  addi         a7, zero, 2 #init loop 1 limit
sub_3_3_1_t:      andi         s2, s5, -183
                  sltu         t4, a6, a5
                  sltiu        s5, a5, 809
                  addi         tp, tp, 4 #update loop 1 counter
                  auipc        a5, 781971
                  addi         s1, zero, -10 #init loop 0 counter
                  slli         s6, a5, 26
                  addi         s8, zero, 6 #init loop 0 limit
                  sll          t6, s8, a7
                  nop
sub_3_3_0_t:      nop
                  ori          t6, t1, 226
                  sll          a0, s0, zero
                  addi         s1, s1, 4 #update loop 0 counter
                  srli         a6, t0, 14
                  beq          s1, s8, sub_3_3_0_t #branch for loop 0
                  bltu         tp, a7, sub_3_3_1_t #branch for loop 1
                  auipc        s9, 743859
                  addi         t5, zero, 9 #init loop 0 counter
                  slti         gp, tp, 806
                  addi         zero, s6, -1887
                  addi         s6, zero, 9 #init loop 0 limit
                  auipc        a0, 490620
sub_3_13_0_t:     andi         t6, t3, -92
                  addi         t5, t5, -8 #update loop 0 counter
                  sltu         s10, ra, a0
                  slt          t4, s4, s6
                  slli         a0, sp, 23
                  bgeu         t5, s6, sub_3_13_0_t #branch for loop 0
                  srli         s10, a1, 29
                  addi         s6, zero, 8 #init loop 1 counter
                  srai         t5, s11, 22
                  nop
                  addi         a7, zero, 18 #init loop 1 limit
sub_3_15_1_t:     add          gp, s8, s0
                  addi         s6, s6, 10 #update loop 1 counter
                  addi         sp, zero, 0 #init loop 0 counter
                  auipc        s5, 882022
                  addi         t1, zero, -8 #init loop 0 limit
                  sra          s5, a6, a6
sub_3_15_0_t:     or           s8, s6, a4
                  addi         sp, sp, -6 #update loop 0 counter
                  sub          s0, tp, sp
                  sra          s10, a4, t6
                  bge          sp, t1, sub_3_15_0_t #branch for loop 0
                  sltiu        a2, a2, -2031
                  beq          s6, a7, sub_3_15_1_t #branch for loop 1
                  lui          tp, 225694
                  addi         s2, zero, 4 #init loop 0 counter
                  addi         tp, zero, -9 #init loop 0 limit
                  add          ra, s11, s7
                  sltiu        zero, t6, -1809
                  andi         t5, s8, -21
sub_3_1_0_t:      auipc        s0, 926506
                  addi         s2, s2, -3 #update loop 0 counter
                  auipc        t4, 613682
                  bge          s2, tp, sub_3_1_0_t #branch for loop 0
                  slti         a7, t2, -1894
                  bge          s5, s10, 9f
                  ori          sp, a0, 1546
                  bne          a3, s3, 13f
                  srai         s1, sp, 0
                  sltu         s1, a7, sp
                  sll          t4, t6, t0
                  bgeu         t1, t3, 10f
                  slt          t4, zero, tp
                  slt          t5, s7, gp
9:                and          t6, t0, t2
10:               slt          a5, s3, s4
                  slli         s5, s4, 14
                  sltu         s1, a2, t2
13:               sra          t1, sp, s2
                  bge          s3, t3, 27f
                  lui          s2, 1013683
                  lui          a2, 489552
                  bgeu         sp, t6, 32f
                  xor          s11, a0, t1
                  slli         a7, a5, 5
                  addi         t4, zero, 478
                  sltiu        a3, gp, -619
                  xor          s2, t1, s3
                  xori         s11, a5, -217
                  sra          gp, s10, t6
                  nop
                  srai         s3, s10, 11
27:               andi         a5, ra, 312
                  bltu         t2, s10, 32f
                  nop
                  and          tp, t3, a3
                  or           a1, zero, s6
32:               srl          t6, t5, a7
                  srli         t3, s0, 7
                  sltiu        a5, t5, -147
                  slt          s0, t3, t2
                  beq          sp, sp, 46f
                  nop
                  add          a3, s10, a1
                  slli         s2, zero, 29
                  bgeu         s11, t3, 41f
41:               bge          a6, t6, 58f
                  sll          a7, s0, a7
                  lui          s9, 584606
                  srai         t4, a3, 25
                  add          t3, t2, a3
46:               srli         a1, a1, 13
                  bge          a6, s5, 60f
                  bltu         s11, t6, 66f
                  sub          s10, s3, tp
                  andi         ra, sp, 180
                  beq          t2, t1, 67f
                  sra          a6, t2, s3
                  and          t5, t3, a2
                  auipc        a3, 450311
                  bne          tp, s10, 67f
                  sll          s3, t1, a7
                  sra          s3, s0, s11
58:               srl          s10, t0, a3
                  slli         s11, t5, 22
60:               slli         a7, a1, 15
                  andi         s1, tp, -482
                  slli         a7, a5, 7
                  and          sp, s11, s4
                  andi         s8, t3, -146
                  srli         s1, s8, 9
66:               bgeu         a3, s0, 72f
67:               sra          a2, a0, a7
                  beq          t2, a6, 84f
                  slli         s10, s10, 12
                  or           s5, t3, s1
                  xor          s3, s8, t6
72:               srl          zero, gp, a6
                  andi         s2, s11, -354
                  bgeu         t3, s7, 75f
75:               slti         a0, s8, -44
                  bgeu         t5, a5, 95f
                  bgeu         ra, a4, 88f
                  bgeu         t3, s10, 97f
                  auipc        ra, 261885
                  bgeu         s6, s10, 94f
                  xori         s10, zero, -887
                  sltu         s8, t1, s0
                  bltu         s6, t6, 85f
84:               or           s9, a5, s7
85:               lui          s4, 606219
                  nop
                  sub          s3, s2, a7
88:               beq          a3, a1, 102f
                  beq          t0, s4, 94f
                  bltu         tp, gp, 94f
                  slti         s1, a7, 747
                  or           ra, s10, s4
                  xor          a3, a4, a5
94:               sub          s3, zero, sp
95:               or           a5, s9, a7
                  andi         ra, t6, -1976
97:               addi         t3, a0, -37
                  xori         a2, s8, 1292
                  ori          s2, a0, 562
                  sra          gp, t3, s0
                  srli         t3, a5, 23
102:              xori         t3, s4, -112
                  bgeu         s9, s5, 111f
                  ori          a7, tp, -937
                  addi         s0, s4, 674
                  andi         s3, s1, 1592
                  sltu         gp, s4, s0
                  xor          a0, s4, zero
                  sra          s5, s2, a5
                  xori         s8, s4, 1836
111:              srl          a1, t5, s2
                  srl          s8, s10, t0
                  xor          s1, s2, s1
                  addi         a1, s6, 1674
                  addi         ra, t4, -541
                  bgeu         s3, s8, 118f
                  andi         ra, s4, -1529
118:              sltiu        tp, ra, 1441
                  bge          gp, s10, 120f
120:              srai         t6, s6, 16
                  sll          tp, s2, s4
                  slti         a5, s1, -1244
                  srli         s2, a2, 16
                  add          a5, s0, t1
                  xor          s0, s9, t1
                  bge          t3, a0, 130f
                  bge          s8, s2, 135f
                  xor          s0, t2, gp
                  blt          ra, t3, 144f
130:              nop
                  sra          s5, s9, a2
                  addi         a2, s3, -1268
                  xori         s10, s3, -378
                  bge          ra, a1, 151f
135:              beq          a3, s3, 154f
                  addi         t6, a4, 2007
                  srai         a4, a6, 19
                  srli         a0, tp, 2
                  addi         a1, s5, -448
                  ori          s8, a0, -1398
                  sltu         t4, s6, a1
                  sub          a2, a6, tp
                  auipc        a2, 629750
144:              bne          zero, s7, 146f
                  nop
146:              slt          t1, t1, s9
                  sltu         s2, a5, a4
                  sltu         zero, s8, a7
                  blt          s0, t2, 161f
                  slt          gp, a6, sp
151:              srl          a1, a1, a6
                  slli         ra, s0, 23
                  and          s9, t1, t6
154:              sltiu        s2, a1, -1526
                  sll          s2, s10, a5
                  and          t4, t5, a2
                  xor          s3, a5, a3
                  sltiu        zero, gp, -139
                  xor          a2, a2, sp
                  sra          s4, s10, t5
161:              beq          s1, gp, 165f
                  srl          s11, a7, zero
                  sltiu        s2, s3, -1695
                  srl          t5, a0, s9
165:              bltu         a0, ra, 171f
                  beq          s9, s1, 168f
                  sll          a1, t5, t1
168:              lui          zero, 825952
                  andi         a7, t4, -1907
                  srl          s2, tp, gp
171:              srl          ra, gp, s0
                  bltu         zero, t0, 182f
                  slt          a0, s10, sp
                  or           s8, s0, a6
                  slt          s6, t2, a2
                  andi         a6, gp, 987
                  srli         a3, t3, 8
                  sra          a3, s1, s7
                  and          t4, s10, a1
                  addi         t5, s5, -1756
                  bge          s1, s7, 196f
182:              slli         s0, tp, 29
                  nop
                  addi         s9, s8, 101
                  srai         a2, s5, 1
                  and          tp, s10, a6
                  or           t6, a7, a2
                  sltiu        a7, t1, 440
                  auipc        a2, 34248
                  sll          a4, s4, a6
                  sub          a0, t3, a6
                  sll          s9, s0, s9
                  and          ra, a3, t5
                  and          a7, t6, t2
                  bne          a2, t5, 209f
196:              srli         t3, s10, 20
                  slt          a1, sp, t3
                  slti         a3, s2, 1144
                  sll          t5, s6, a4
                  nop
                  nop
                  add          s11, sp, t3
                  sltiu        s0, s4, 309
                  sltiu        s4, ra, -1067
                  slli         s10, s2, 21
                  beq          s8, t6, 214f
                  add          s9, a6, a1
                  bge          s6, t0, 209f
209:              srai         t4, sp, 1
                  bne          t0, s7, 223f
                  slli         a5, t3, 24
                  add          s3, zero, a2
                  add          s8, zero, s9
214:              bne          a4, s10, 218f
                  srli         s3, s0, 27
                  andi         a3, t3, 795
                  bne          s10, s8, 232f
218:              bltu         tp, t6, 227f
                  addi         sp, t0, -1446
                  blt          ra, t2, 236f
                  auipc        a4, 946253
                  srl          t4, s8, t6
223:              bne          a2, s9, 228f
                  bgeu         zero, s0, 238f
                  slt          tp, t1, zero
                  srli         a4, gp, 4
227:              xori         zero, tp, -866
228:              slli         t3, a1, 27
                  srli         s5, a3, 25
                  sub          a0, a5, a4
                  lui          s1, 349628
232:              or           s0, s8, a5
                  ori          t3, s0, -1636
                  ori          ra, t2, -756
                  bge          s7, a4, 251f
236:              xori         s11, t2, 1130
                  sll          s11, t5, zero
238:              xori         s5, s7, 1457
                  sub          s1, s1, a7
                  slli         s2, s9, 17
                  ori          s10, t0, 510
                  slli         a5, sp, 14
                  add          zero, s6, gp
                  bge          s4, t1, 245f
245:              beq          sp, s10, 258f
                  sra          a5, a3, s7
                  srl          s3, s8, t1
                  slti         s10, s8, -1835
                  sll          a6, s6, t1
                  beq          t5, a5, 258f
251:              sll          zero, s6, s1
                  sltu         t5, a4, s4
                  lui          s9, 324867
                  auipc        a2, 178783
                  sub          s2, s4, t3
                  lui          s4, 579412
                  beq          t5, t1, 261f
258:              add          s11, t2, gp
                  addi         a2, s4, -1112
                  sltu         s10, tp, tp
261:              bgeu         t6, s11, 272f
                  add          t1, sp, a5
                  bne          t0, a3, 267f
                  slt          a4, s5, t1
                  sub          s2, t3, t3
                  sra          tp, a1, ra
267:              srli         a3, t5, 2
                  andi         s6, a4, -1658
                  blt          a1, t0, 270f
270:              ori          tp, t3, -1938
                  slti         s5, a6, -1636
272:              srai         a5, t5, 25
                  xori         a0, s9, -1714
                  srli         s2, t2, 10
                  lui          s6, 905116
                  sll          t5, s2, t6
                  sra          t5, t2, s10
                  srai         gp, s2, 16
                  slti         t5, s6, -1489
                  sltu         t5, t0, a7
                  addi         s3, s8, 1131
                  bne          a6, s1, 300f
                  slti         s0, t1, 255
                  srai         s0, s3, 20
                  auipc        t5, 352526
                  andi         s5, s1, 1740
                  beq          gp, s10, 298f
                  or           t4, s7, t2
                  srai         sp, s10, 28
                  srli         a7, s2, 0
                  lui          a0, 1008823
                  slt          s2, a0, s4
                  or           a0, t4, a4
                  bltu         t0, a7, 313f
                  srai         t5, gp, 5
                  srl          t1, tp, t0
                  bltu         s6, ra, 310f
298:              sra          tp, t5, a1
                  or           s11, s9, s9
300:              blt          s0, a5, 304f
                  or           s5, s8, t2
                  ori          a6, a3, 34
                  sll          a2, t4, a5
304:              sra          t3, t0, s2
                  bne          a6, a0, 307f
                  addi         s11, zero, 5 #init loop 1 counter
                  addi         a7, zero, 14 #init loop 1 limit
                  auipc        s6, 370526
                  slti         t3, a3, -901
sub_3_16_1_t:     add          a5, a6, t5
                  addi         s11, s11, 9 #update loop 1 counter
                  lui          a0, 355004
                  addi         t4, zero, 6 #init loop 0 counter
                  add          t3, s11, a2
                  addi         s5, zero, 6 #init loop 0 limit
                  and          s0, a3, t3
                  addi         a4, s3, 1245
                  sll          a3, s4, a5
sub_3_16_0_t:     xor          a0, a7, s2
                  addi         t4, t4, -5 #update loop 0 counter
                  srli         a0, t1, 5
                  bgeu         t4, s5, sub_3_16_0_t #branch for loop 0
                  add          ra, a6, s7
                  slt          s0, a5, s9
                  auipc        a4, 12172
                  lui          t5, 203599
                  bne          s11, a7, sub_3_16_1_t #branch for loop 1
                  srl          tp, t5, a2
                  xor          s10, a7, t5
307:              nop
                  and          t5, t1, s3
                  slt          s0, a0, a6
310:              srai         s5, s8, 13
                  or           s2, s5, ra
                  slli         a6, a6, 16
313:              bgeu         t2, t6, 317f
                  and          t6, t6, s8
                  andi         tp, s3, 248
                  srli         a5, s0, 31
317:              or           t3, s9, a7
                  sltu         s2, a5, s10
                  slt          s10, s1, s11
                  xor          s0, zero, t6
                  sra          a2, a6, s8
                  bne          t0, sp, 336f
                  srai         t1, s3, 22
                  sll          s5, s8, s3
                  ori          s10, s8, 1079
                  and          s10, s4, s2
                  sub          s11, t6, s7
                  srli         a3, t3, 27
                  slt          a2, ra, s8
                  nop
                  sra          t6, s10, a2
                  bne          sp, t1, 336f
                  slt          a2, s1, a7
                  lui          s9, 344194
                  andi         sp, a3, -632
336:              nop
                  bge          s9, t1, 352f
                  xor          s5, a2, a7
                  lui          a6, 792509
                  slt          t1, s6, s8
                  srli         s2, sp, 9
                  nop
                  and          a1, t4, s1
                  bgeu         t0, t1, 363f
                  sra          t4, ra, s0
                  ori          t1, a3, 1299
                  ori          s5, t3, 1493
                  srai         a6, s2, 0
                  xori         ra, t0, -1916
                  bne          sp, t0, 364f
                  or           s9, t5, a1
352:              addi         s0, t5, 481
                  and          a1, t6, s6
                  or           s0, s10, s9
                  beq          s5, s6, 371f
                  sra          a2, s3, a5
                  sub          sp, gp, t5
                  nop
                  sltu         s10, s11, a7
                  slli         t1, t1, 28
                  nop
                  sll          s11, zero, s9
363:              beq          a1, zero, 374f
364:              srai         t4, s7, 10
                  slt          s3, t0, a0
                  andi         t1, s3, 802
                  sltiu        s3, sp, -1154
                  andi         t3, tp, 1687
                  sub          a4, zero, t5
                  beq          a4, a4, 379f
                  addi         t1, zero, -6 #init loop 0 counter
                  slt          ra, tp, s11
                  sltiu        s4, a4, -1985
                  xori         tp, a1, 1877
                  addi         s8, s5, -2035
                  addi         s0, zero, 12 #init loop 0 limit
                  slt          s11, t2, t5
                  addi         a7, s0, -660
sub_3_18_0_t:     auipc        a7, 853715
                  srli         a3, t2, 10
                  addi         t1, t1, 9 #update loop 0 counter
                  nop
                  lui          s11, 1024597
                  srl          t6, a5, t5
                  and          s2, s4, s6
                  xor          s3, a0, a0
                  slt          s3, a5, t1
                  slt          a3, a3, zero
                  xori         a4, s4, -695
                  slt          a6, t3, a3
                  xori         a2, sp, 660
                  xor          a6, a2, s3
                  beq          t1, s0, sub_3_18_0_t #branch for loop 0
                  and          s4, sp, s7
371:              ori          a0, t1, 1826
                  beq          t1, s9, 382f
                  or           a1, s7, a6
374:              slti         s2, s5, 1477
                  andi         a7, t6, -487
                  nop
                  sltu         sp, sp, a0
                  sra          t1, a0, a4
379:              add          a5, t1, t6
                  slt          a1, a2, a6
                  lui          s5, 263922
382:              nop
                  beq          t4, a7, 385f
                  slt          s8, s1, s3
385:              xor          sp, sp, gp
                  add          s3, t5, s2
                  sra          a5, t2, t2
                  sll          a3, s2, t6
                  add          s6, ra, a7
                  or           t5, t1, a7
                  blt          t0, a2, 409f
                  sra          a3, s6, a1
                  bne          a3, t4, 405f
                  srai         s11, s0, 0
                  srl          s10, s0, a5
                  andi         a4, a4, -1017
                  lui          t4, 910244
                  slti         s11, s8, -2017
                  bltu         gp, a6, 416f
                  slti         s5, a1, -488
                  sltu         a6, zero, t2
                  blt          tp, tp, 403f
403:              bne          t6, s9, 422f
                  auipc        s1, 523422
405:              or           s10, sp, a0
                  lui          a2, 722461
                  lui          t1, 383682
                  xori         s9, s5, 1001
409:              slt          a4, s4, s9
                  slt          s2, t0, sp
                  sltiu        gp, a6, 625
                  ori          s11, s10, 1615
                  nop
                  sub          a5, a7, a4
                  lui          s11, 693257
416:              slli         a4, t1, 11
                  auipc        a1, 311594
                  add          s0, s2, tp
                  nop
                  beq          tp, a2, 425f
                  or           s2, a0, s11
422:              slli         s2, t6, 12
                  auipc        a0, 923401
                  ori          s11, t0, 1846
425:              beq          a1, a6, 441f
                  sll          s3, t3, s6
                  beq          t5, t4, 431f
                  add          t4, gp, a1
                  bne          s7, s6, 430f
430:              blt          t4, a7, 443f
431:              bgeu         a2, t4, 432f
432:              sltiu        a1, gp, 1572
                  sll          sp, s0, a5
                  lui          zero, 486812
                  andi         gp, s11, -874
                  and          a2, sp, sp
                  add          a2, a2, a5
                  or           tp, s8, t2
                  beq          s3, s9, 447f
                  blt          a2, t1, 451f
441:              slt          gp, s3, t3
                  sltiu        s2, s9, -759
443:              sltiu        s5, s8, 64
                  srai         s1, t6, 27
                  slti         s11, s2, 104
                  sra          s0, a4, s1
447:              sra          s11, s4, a6
                  lui          t3, 732409
                  and          a3, a7, a4
                  blt          a2, a1, 458f
451:              auipc        s9, 972782
                  sra          a3, t3, t1
                  sub          a3, t2, s3
                  andi         a5, s0, 1009
                  bne          s7, t5, 461f
                  andi         tp, zero, 1546
                  srl          tp, t5, tp
458:              auipc        t5, 951058
                  sra          s8, s10, t1
                  beq          a5, a4, 475f
461:              auipc        a6, 874780
                  bge          a1, s11, 477f
                  xor          s8, s4, t6
                  sltiu        a6, t3, -954
                  srl          s5, zero, a4
                  bgeu         t5, s4, 468f
                  sltu         s0, s10, t2
468:              ori          s10, s8, 1169
                  slt          s0, s7, a0
                  or           t5, t2, s2
                  xor          a3, s4, t3
                  bltu         t6, gp, 488f
                  blt          s10, a7, 477f
                  lui          s8, 161050
475:              blt          a3, s8, 486f
                  sll          s10, s1, s4
477:              and          a5, zero, a5
                  or           a0, s7, s0
                  ori          t3, s2, -272
                  sra          t6, a0, sp
                  sra          gp, t5, t4
                  xor          t3, a3, t0
                  xori         s4, zero, -163
                  sltiu        a6, zero, 622
                  srl          t6, s4, gp
486:              nop
                  lui          a0, 267503
488:              bltu         tp, a3, 493f
                  sra          a5, s1, s10
                  slli         gp, t0, 1
                  slti         a3, a7, -1397
                  andi         t1, s11, -904
493:              addi         s4, zero, 1942
                  srl          s5, a3, t0
                  sra          s4, t4, t2
                  blt          t4, ra, 510f
                  srai         s10, s4, 6
                  bne          t1, a1, 507f
                  sra          t5, s9, zero
                  sub          s10, s5, t1
                  bltu         s9, s6, 512f
                  lui          t3, 437383
                  bgeu         t5, a4, 520f
                  xori         s2, s2, -552
                  sra          s4, sp, s5
                  sub          s10, ra, s8
507:              blt          a0, zero, 508f
508:              lui          a4, 359335
                  srai         a5, a2, 6
510:              sra          s9, s4, a0
                  sra          s5, s3, s0
512:              sltiu        a3, s5, 249
                  and          a3, t5, s4
                  nop
                  srl          s11, a7, s0
                  xori         t4, gp, 984
                  bge          s6, s10, 535f
                  sltiu        t6, a3, -2041
                  nop
520:              sub          t1, s6, t5
                  slt          s6, a0, gp
                  xor          s8, s1, a5
                  nop
                  srl          a4, sp, zero
                  nop
                  ori          a5, t5, 1749
                  nop
                  sra          tp, s9, ra
                  bge          t1, a4, 548f
                  bgeu         a1, t1, 531f
531:              andi         s5, t6, 579
                  lui          zero, 790117
                  blt          s9, t2, 539f
                  sltiu        gp, s6, -1392
535:              addi         a5, t2, 321
                  bltu         s5, zero, 540f
                  bne          t6, s10, 545f
                  addi         t4, a4, 1082
539:              bltu         s1, s9, 553f
540:              sll          s4, gp, t2
                  sll          t1, a0, s10
                  beq          a5, t1, 558f
                  addi         s6, tp, -507
                  srl          s0, s4, s10
545:              srl          a5, s4, s3
                  and          a0, t1, a1
                  lui          s11, 58642
548:              slt          a2, s11, a6
                  xori         a2, sp, -2003
                  add          gp, s3, s5
                  and          a1, s4, s2
                  xor          s4, a7, s9
553:              sltu         tp, t1, s1
                  slt          a3, s5, s7
                  sltu         s3, t0, a5
                  sltu         s1, s5, a0
                  slli         t6, t2, 20
558:              sll          t3, a7, s3
                  xor          a0, tp, tp
                  bge          s3, a5, 570f
                  add          s10, a0, s0
                  or           zero, a0, a5
                  nop
                  sra          a3, s2, a5
                  slti         a0, s10, -1943
                  srai         s4, s2, 21
                  slt          s1, sp, t6
                  sltiu        t1, s1, -1123
                  and          s5, s5, s3
570:              slli         s2, t4, 25
                  sltiu        s9, s9, -649
                  nop
                  srl          sp, a0, t0
                  add          s8, gp, t4
                  ori          a2, s9, 1802
                  blt          a5, t6, 591f
                  sll          s4, a2, s9
                  ori          a3, zero, 114
                  sltiu        a5, a3, 829
                  auipc        s6, 121331
                  lui          s0, 716003
                  xor          t4, zero, s9
                  srl          tp, s5, a0
                  sltu         ra, s2, a2
                  and          s5, t6, a6
                  bltu         s7, s11, 605f
                  lui          s5, 177408
                  bne          s3, t5, 600f
                  sll          t1, gp, tp
                  slli         s10, a2, 5
591:              xori         gp, t1, -2018
                  bgeu         a6, a4, 600f
                  sra          t6, ra, t4
                  sltu         gp, s1, t6
                  or           a6, t2, a4
                  slli         tp, s2, 21
                  slli         a6, s9, 21
                  beq          sp, t3, 599f
599:              addi         s10, a0, 1609
600:              xor          s6, a1, s11
                  lui          sp, 296262
                  bge          s6, s7, 606f
                  addi         s9, t0, 314
                  addi         a6, t5, 684
605:              slt          t1, a7, a4
606:              xor          sp, s11, a2
                  add          s4, s2, a3
                  srai         a5, t3, 6
                  srli         t3, s5, 31
                  bne          a7, tp, 623f
                  srli         t4, t2, 5
                  andi         t5, s7, -1458
                  sltu         a2, gp, s8
                  bltu         s4, sp, 618f
                  or           a3, gp, t0
                  beq          a7, t1, 618f
                  slti         s11, t3, 859
618:              and          a5, s8, s10
                  and          s11, t2, s4
                  or           ra, s10, s8
                  beq          s9, s10, 634f
                  add          s8, zero, s3
623:              blt          sp, a4, 636f
                  slli         s5, t5, 16
                  blt          s7, s10, 636f
                  nop
                  bgeu         a1, s3, 631f
                  nop
                  bge          a2, s0, 630f
630:              add          s0, a7, s10
631:              ori          s8, a3, -1567
                  xor          t3, s10, s5
                  bge          tp, a3, 635f
634:              nop
635:              sub          t4, s6, a6
636:              nop
                  nop
                  slli         a5, a4, 4
                  and          t4, s6, ra
                  slti         s1, s11, 1307
                  sltu         s6, a5, s10
                  or           s11, t3, t2
                  bne          s8, s6, 647f
                  lui          a7, 271450
                  srli         s8, t2, 24
                  sltu         t5, s5, s10
647:              bge          a5, s1, 655f
                  xor          t5, s10, s9
                  bge          s11, t3, 657f
                  bgeu         a3, a7, 659f
                  lui          t4, 331386
                  sub          t5, gp, t2
                  srl          a5, s10, t3
                  srl          s8, ra, a5
655:              bge          t0, s0, 659f
                  xori         s1, a1, 1688
657:              xor          t3, gp, s6
                  add          t4, s9, s6
659:              bge          s9, t4, 663f
                  sra          t3, s7, sp
                  slti         s6, a7, -1104
                  sltu         s6, t0, a0
663:              blt          t6, t2, 665f
                  xor          s5, a2, s2
665:              srl          a5, sp, a7
                  slt          a3, s7, s11
                  bltu         a1, a2, 680f
                  or           t3, a5, s3
                  sltiu        s2, a5, -211
                  blt          t5, a6, 681f
                  addi         t3, t1, 1512
                  add          tp, s7, a6
                  andi         a5, t5, 657
                  sub          s9, a4, s5
                  beq          t1, a6, 691f
                  bltu         t4, s2, 692f
                  or           s8, s8, s5
                  sra          s8, gp, a1
                  slti         tp, a0, -1249
680:              lui          a7, 684139
681:              bgeu         t4, a7, 687f
                  or           tp, s2, t4
                  nop
                  blt          s2, s7, 703f
                  srai         sp, ra, 2
                  bltu         zero, tp, 696f
687:              slli         t5, ra, 11
                  sra          s0, t4, s0
                  sltu         s10, t5, sp
                  xor          a3, ra, t2
691:              ori          s2, t0, 857
692:              add          t4, a0, t5
                  xor          gp, s8, a7
                  addi         s8, a3, 1877
                  beq          a3, s1, 710f
696:              nop
                  slt          a5, t4, a2
                  blt          s6, a2, 717f
                  or           s5, s5, s10
                  xor          s1, a1, a5
                  sltu         ra, s3, a3
                  addi         a7, a4, 884
703:              and          a1, a5, a2
                  bgeu         a5, sp, 705f
705:              addi         a3, a0, 1259
                  slt          s5, a5, gp
                  xor          s2, s10, s0
                  bne          t3, tp, 709f
709:              xor          tp, a0, tp
710:              slti         gp, s11, 734
                  sltu         s8, s11, t1
                  beq          t6, s11, 729f
                  blt          s6, ra, 718f
                  lui          a3, 198041
                  bgeu         gp, s6, 729f
                  bltu         tp, s9, 734f
717:              srl          s1, s5, gp
718:              xori         t5, t3, -1032
                  srai         s4, t5, 7
                  ori          a1, a0, 2032
                  nop
                  sub          a6, s11, sp
                  srli         s8, a0, 0
                  nop
                  slti         a2, s3, -680
                  xor          s9, a6, t6
                  auipc        a4, 915773
                  sltiu        a4, t5, -331
729:              add          a0, s9, s3
                  xori         s1, sp, 1311
                  bltu         tp, s5, 743f
                  srai         a2, a6, 20
                  andi         a4, a2, -2020
                  la           t4, sub_5
                  srl          a2, a3, a4
                  sub          t3, t1, s9
                  addi         t4, t4, 68
                  sltiu        t5, a5, -1992
                  slt          tp, zero, a2
                  bne          s2, s1, sub_3_j6 #branch to jump instr
                  sltiu        t3, s0, 1148
sub_3_j6:         jalr         a7, t4, -68 #jump sub_3 -> sub_5
                  lui          s9, 1009003
734:              ori          a1, a4, 1212
                  srai         sp, t6, 16
                  andi         t3, a1, 317
                  sub          a7, gp, a6
                  bne          zero, sp, 753f
                  bgeu         ra, tp, 753f
                  sll          s6, gp, a4
                  srli         tp, a4, 2
                  sltiu        a7, ra, -980
743:              bltu         t0, s8, 751f
                  addi         ra, s9, -1194
                  srli         s1, tp, 12
                  xor          s9, s8, t1
                  sll          s6, a6, s8
                  slli         a3, a0, 5
                  nop
                  srai         t3, s0, 13
751:              slti         a7, a5, 1318
                  sra          s5, gp, a3
753:              andi         a0, s7, 1700
                  srl          t5, t5, t1
                  add          s4, t5, a0
                  srai         s9, s8, 21
                  auipc        a6, 464070
                  sltu         t4, s7, s5
                  slli         gp, t4, 6
                  lui          a2, 24566
                  addi         gp, tp, 1314
                  or           a4, s8, a1
                  beq          a5, s9, 776f
                  bltu         sp, t4, 766f
                  ori          s8, t1, 1258
766:              sltu         s5, t6, t3
                  sll          a1, s5, a7
                  auipc        s9, 122413
                  add          a4, a1, t1
                  blt          s3, t2, 785f
                  auipc        s2, 628665
                  auipc        s1, 379656
                  bge          s3, a1, 789f
                  bgeu         sp, s3, 793f
                  srai         a7, t6, 19
776:              bgeu         s1, a4, 794f
                  srai         a4, zero, 31
                  slt          tp, s6, a4
                  ori          ra, t1, 1833
                  slti         t3, a7, 808
                  slli         s5, gp, 21
                  blt          a4, t1, 786f
                  slli         s2, s2, 10
                  sub          t3, a2, s7
785:              beq          a4, s5, 804f
786:              bge          s1, s7, 790f
                  xor          zero, a6, t2
                  lui          zero, 595305
789:              nop
790:              sll          ra, gp, a7
                  blt          s6, tp, 792f
792:              lui          a6, 544610
793:              bge          t3, s11, 803f
794:              xori         t3, a0, -1952
                  slt          t5, s4, gp
                  srli         s2, s4, 0
                  slli         s6, t2, 3
                  srli         t1, s4, 11
                  sltiu        t3, t2, -971
                  addi         tp, t2, -1440
                  and          a4, s0, a1
                  blt          a1, a2, 811f
803:              bgeu         s3, gp, 804f
804:              andi         t3, zero, 1467
                  xori         s6, s6, 15
                  beq          a6, s0, 820f
                  srli         s0, s10, 27
                  addi         t6, t5, -1012
                  addi         s2, s9, -947
                  ori          s4, zero, -1510
811:              or           a5, a7, a7
                  addi         gp, s1, 150
                  xori         s4, gp, 987
                  bgeu         s1, s11, 826f
                  or           tp, s8, s6
                  slti         sp, s9, -402
                  srai         t1, zero, 6
                  srli         zero, s9, 19
                  srl          s2, s3, a4
820:              bgeu         t3, a4, 825f
                  nop
                  slti         a6, a0, 611
                  bge          s8, a2, 831f
                  slli         zero, s7, 4
825:              beq          a0, t5, 829f
826:              sltiu        a5, t3, -890
                  andi         s2, s10, -1451
                  srli         s3, a2, 3
829:              beq          a2, tp, 835f
                  ori          a5, a2, 231
831:              slli         a5, s11, 24
                  xor          s11, a2, s8
                  blt          s5, s3, 849f
                  slti         s9, t5, -1859
835:              sltu         t6, t4, t5
                  add          t4, s1, t0
                  blt          s2, t4, 848f
                  add          tp, t3, t3
                  blt          a7, a1, 853f
                  slt          s8, a5, s0
                  srai         tp, sp, 5
                  add          t5, gp, s1
                  xor          s11, s5, t0
                  sltiu        t4, sp, 1701
                  addi         sp, a4, -58
                  sltiu        a4, s6, -1989
                  bge          a5, a4, 858f
848:              sra          s8, a0, t2
849:              xor          sp, a7, s9
                  beq          tp, s1, 852f
                  srl          tp, s9, a4
852:              bgeu         a1, t1, 869f
853:              andi         t6, s7, 913
                  slli         t3, gp, 8
                  srai         a7, s2, 17
                  blt          s9, s6, 871f
                  and          gp, s4, s8
858:              slt          s10, s10, s2
                  slti         s4, s10, 436
                  srl          a4, t6, a6
                  slli         a7, a2, 15
                  ori          t5, a5, -1988
                  bge          sp, t0, 864f
864:              slli         a7, s0, 0
                  ori          s11, a0, 47
                  andi         s4, s6, -811
                  srai         s10, s2, 19
                  addi         a6, s0, 1355
869:              bltu         a5, ra, 873f
                  addi         s0, a5, 940
871:              bltu         s11, s1, 884f
                  andi         tp, s7, 1916
873:              add          s2, a7, t4
                  slt          a2, s1, a7
                  slti         a5, zero, -601
                  beq          t6, t6, 880f
                  or           t4, a7, a1
                  lui          s6, 76408
                  lui          a4, 429949
880:              slti         a5, a3, 1964
                  sub          s5, s7, s3
                  addi         zero, a1, 1337
                  addi         s10, a2, 1965
884:              and          t1, s2, a1
                  add          a2, gp, zero
                  srai         s4, s8, 8
                  and          a0, a4, a4
                  bltu         s7, t4, 896f
                  sll          t1, a3, t6
                  beq          t4, a4, 901f
                  addi         a2, s8, -697
                  srai         s1, t6, 4
                  slti         sp, a2, 1832
                  sll          s0, a1, s7
                  srai         s1, s11, 11
896:              blt          s1, a0, 912f
                  addi         s5, gp, -1870
                  sltiu        s3, s3, -469
                  xor          a0, s3, s7
                  bne          a2, t3, 901f
901:              bge          a6, ra, 911f
                  slli         s1, s0, 20
                  addi         s11, s1, 2008
                  bne          s9, t6, 905f
905:              slt          a0, t0, s1
                  beq          a6, a5, 910f
                  slti         t1, s1, 432
                  sll          zero, t4, gp
                  nop
910:              auipc        a0, 52588
911:              bge          a3, s2, 913f
912:              sll          gp, a3, a1
913:              andi         a7, a1, -449
                  sra          s5, a1, s1
                  sll          t5, s2, s10
                  bgeu         s8, s9, 933f
                  and          s4, s10, s2
                  add          a3, s5, t5
                  nop
                  addi         a3, a3, 1088
                  lui          a3, 638776
                  sll          a6, s7, s6
                  xor          a7, s6, t2
                  slti         a5, t3, -593
                  bne          s0, s2, 940f
                  or           a4, a4, a3
                  sltu         s11, t3, s10
                  sltu         gp, a5, s0
                  sltiu        gp, s9, 1485
                  andi         s1, s0, -1403
                  nop
                  auipc        t3, 195535
933:              srl          s10, s1, t4
                  sltu         a4, a5, s0
                  lui          t3, 430408
                  slt          a1, a5, s8
                  srl          s6, s2, a7
                  auipc        s6, 279823
                  xori         a7, a3, 1689
940:              bgeu         tp, s6, 954f
                  nop
                  srai         t6, s5, 0
                  xori         s6, s6, -350
                  ori          s2, a0, 975
                  nop
                  beq          s4, t5, 965f
                  add          t6, sp, tp
                  bge          s7, t1, 959f
                  ori          a4, a4, -1985
                  addi         s10, tp, -1512
                  or           t3, s5, tp
                  bltu         tp, s11, 958f
                  lui          sp, 811497
954:              lui          s5, 988154
                  xori         ra, a2, -839
                  sltiu        a6, t4, 696
                  bne          s0, s4, 969f
958:              bge          s8, s7, 960f
959:              bltu         s11, t1, 973f
960:              add          s4, ra, s5
                  add          s8, s9, a3
                  xor          tp, sp, s0
                  bgeu         s0, s10, 981f
                  slt          s6, s9, s9
965:              sltiu        s4, t6, -1853
                  add          tp, s8, s3
                  bne          a7, a0, 975f
                  andi         t1, a5, -231
969:              lui          s5, 210093
                  ori          s11, a7, 1935
                  and          s4, s0, s1
                  beq          t0, s6, 985f
973:              sll          s4, t2, a1
                  xori         s5, t5, -713
975:              bgeu         a2, t2, 984f
                  bgeu         s5, a3, 980f
                  xor          tp, s6, t3
                  auipc        s6, 97644
                  nop
980:              bge          s0, t2, 993f
981:              slti         t1, a4, -938
                  xori         s10, s3, 432
                  auipc        s9, 641317
984:              nop
985:              sltu         gp, a4, a4
                  bge          t6, s11, 1001f
                  bge          s7, t1, 991f
                  ori          a7, gp, -1269
                  lui          gp, 1017671
                  bgeu         t5, sp, 995f
991:              lui          s10, 516844
                  and          s2, s7, s2
993:              sll          s4, a4, a5
                  bne          t4, s1, 1013f
995:              xor          ra, a7, s8
                  bge          t4, a4, 997f
997:              bgeu         t4, t0, 1013f
                  bgeu         a3, t5, 1006f
                  sltu         t6, s8, a4
                  sltu         t5, a5, a3
1001:             auipc        a4, 558286
                  and          gp, a3, a6
                  sub          s11, s4, s0
                  sltu         s9, t5, a4
                  bge          s5, s8, 1016f
1006:             slt          s5, t0, a1
                  sra          s3, s3, sp
                  bltu         gp, a6, 1026f
                  srai         s4, s11, 4
                  blt          s4, s3, 1018f
                  slti         a1, s6, 177
                  slli         a2, s2, 15
1013:             srli         tp, a0, 24
                  srai         s1, zero, 10
                  sll          zero, a5, s4
1016:             sll          a7, t2, s6
                  lui          s1, 487579
1018:             blt          s3, a2, 1022f
                  srai         a7, s11, 13
                  sub          s10, t3, s7
                  srai         a7, ra, 30
1022:             addi         s0, s8, -546
                  xor          a2, t4, s6
                  bge          a3, t3, 1036f
                  xori         s3, s11, -981
1026:             beq          s8, s3, 1045f
                  and          a4, zero, s8
                  slti         s3, s9, 246
                  and          t5, a5, t0
                  blt          s4, ra, 1044f
                  srl          s2, s9, a4
                  add          t3, s5, gp
                  nop
                  srli         sp, s11, 6
                  addi         t1, gp, 505
1036:             or           zero, a2, ra
                  andi         s3, ra, -1936
                  slti         a2, t2, -83
                  add          zero, ra, t6
                  xor          a5, tp, a7
                  blt          t0, a7, 1052f
                  sra          zero, s5, gp
                  sltu         sp, s2, s9
1044:             nop
1045:             srl          s1, s2, gp
                  auipc        t3, 195113
                  xor          t1, a2, gp
                  sltiu        a2, s10, -1186
                  srai         s9, s1, 1
                  sra          a2, ra, zero
                  xori         t3, sp, 896
1052:             nop
                  slti         s0, a1, 1242
                  ori          a2, s7, 713
                  bgeu         a2, sp, 1069f
                  blt          s4, a7, 1071f
                  lui          t6, 926807
                  srli         tp, a2, 3
                  or           a1, s5, t5
                  blt          s0, a2, 1073f
                  sra          s8, s4, s11
                  slt          zero, sp, s11
                  srai         s1, a2, 0
                  sub          a7, zero, s6
                  sll          s9, s4, tp
                  or           s0, t0, t3
                  lui          a5, 232083
                  srl          t5, s2, tp
1069:             srl          sp, s6, a0
                  bltu         s7, gp, 1074f
1071:             or           a2, t5, a3
                  slli         ra, tp, 26
1073:             auipc        a5, 851998
1074:             nop
                  slti         t5, t3, -1301
                  sll          t4, s6, sp
                  lw           a7, 4(t2)
                  addi         t2, t2, 36
                  xori         zero, s6, 1874
                  andi         a4, t5, -94
                  andi         s9, s11, -719
                  slli         t5, t0, 6
                  nop
1549:             addi x1, x17, 0
1549:             jalr x1, x1, 0
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
.word 0xde3c0bba, 0x0d50e9d5, 0x315565b0, 0xc4041441, 0x828e3275, 0xf41b8aee, 0x9da1736d, 0x54a22644
.word 0x80e6eaf7, 0x2673fbba, 0x4cfe4d12, 0x6bf66ca0, 0x92fe83b8, 0x17bef016, 0x04df73e5, 0x16e47a4e
.word 0x95dd5459, 0x4e6c2ce0, 0xd2aa18de, 0x0d088f87, 0x73bb2712, 0xc90f5c96, 0x7aabb2b9, 0x9769770e
.word 0xadd9ec57, 0x9d3ecbde, 0x1d17ea67, 0xa41f6a33, 0xfd89c89a, 0xdcd1e8d4, 0xe5b6b216, 0xae4e1243
.word 0xe92407c6, 0xb9e2189f, 0x065dcd22, 0x7aaf43e5, 0x689c5f64, 0x10e311eb, 0xff8da829, 0x73c50d11
.word 0x3d0c8082, 0x0e7b0b53, 0x253632ae, 0x3d8f1fc9, 0x5a2108fc, 0x48836aad, 0xfe43e5ad, 0xb405620e
.word 0x8887d7f2, 0x05a20b6f, 0x052a3b70, 0x5f49bd85, 0x6c7967fb, 0x5b11852c, 0xd00d03f8, 0xb6d6d741
.word 0x8e4eb5d6, 0xbf845a97, 0xdb0a4a36, 0x0cc03512, 0x65b5256f, 0x8fbb7f0c, 0xafd4f46c, 0x5bd11615
.word 0xcea532b9, 0x68f328ba, 0x65feaca6, 0xb8b60cb1, 0x75442708, 0x49dd3ebf, 0x5c3d2152, 0xffea14e3
.word 0xbd01583d, 0x90b9ff79, 0x69680ea8, 0x7a139eb8, 0xb43638ac, 0x648f0954, 0x2e326b32, 0x547a1906
.word 0x72b9c0e0, 0xc0c59c06, 0x26b020a0, 0xf648a952, 0x3e0db940, 0x9faac43d, 0x9ce96849, 0x60d84a81
.word 0x8a1f6fe1, 0xa6c76bc0, 0x3c601a3c, 0x8ff66144, 0x03603aa1, 0x1a9e36c9, 0xd591858a, 0x807d6894
.word 0xf3caf666, 0x24b2a3f7, 0x4a7ef481, 0xc8d90ec9, 0x2f7fa0be, 0xbf229467, 0x834032ea, 0x084d4577
.word 0xfeff6952, 0x2ae56936, 0xe245f7bc, 0xde129ee0, 0xdfb99a2b, 0x6a7e9ce5, 0xf40c09b9, 0x62a66d60
.word 0x07a4dee3, 0xdf746fb8, 0xbe918714, 0xfa643b13, 0xef3465d3, 0x3dcc2768, 0x5a429353, 0xaf89f039
.word 0xac47f652, 0x7cee96ed, 0x6a9ba86b, 0x5b57eefe, 0x3e593549, 0x5aa1256e, 0xb60fe1b3, 0xb2dd3245
.word 0x72a5affe, 0x3fef664e, 0x2a069264, 0xf169bc0d, 0xd1ca09cf, 0x3fe1aad6, 0x2aa01f1b, 0x354f2a90
.word 0xd082c421, 0x594e40d0, 0x2bb3abe7, 0x0508b5cb, 0x0124595c, 0x1b4e0891, 0x3edbbc62, 0xff883770
.word 0x1ca29206, 0x041813c1, 0x0fd96759, 0x7bac041f, 0xaaf66688, 0x6c1e903c, 0x5ddc0fa5, 0xe62f87ba
.word 0xd1db72d9, 0xc928f4ec, 0x4299edd7, 0x687f9f3d, 0xa370a42c, 0x1101984b, 0xa3d4b817, 0xa488f8ea
.word 0xa1bf37ba, 0x0267807d, 0x8e651def, 0x1cdf7c7f, 0x5d845053, 0x5f1c2944, 0xfcb66e56, 0x5456e2a7
.word 0x57366bf9, 0x7da88136, 0x4cc5b31f, 0x49a206dc, 0xf889fc2e, 0x92ad1c21, 0xef9f6590, 0xa00e67f3
.word 0x5009743d, 0xb119aa9e, 0x9708f58f, 0x0d4f6ec5, 0x248c7ac7, 0x9be4f884, 0x73cdad1d, 0x71237917
.word 0xdb8fa5b2, 0x8c4635cc, 0x33b83263, 0xaa2451c1, 0x6b6673c9, 0x7f1f8f8b, 0x081271d7, 0x27b2f3a4
.word 0x216722b0, 0xf1890fc4, 0x6b8108bd, 0xd6cae941, 0xe8c180ec, 0x70fae384, 0x8a44263b, 0x74554a2c
.word 0xe3d05179, 0x8485379b, 0x4d798721, 0x51ac6298, 0x022c49a5, 0x051c1a55, 0x2e3e825a, 0x477bae0b
.word 0xb69e4657, 0x3b0cf7c7, 0xefc72bca, 0xa072c6f7, 0xe32147f9, 0xed1953f5, 0x4deff64a, 0xfc9fa89b
.word 0x039ea20a, 0xbb22cb24, 0xd669b141, 0x7e612574, 0x8e1590bb, 0x9d08f7f0, 0x39c7dcf1, 0xc5147f31
.word 0x44b3ef6d, 0x38aed720, 0x29d7e77c, 0x1dd916ae, 0x5443c722, 0x4687fb9f, 0x5a73915e, 0x526501a0
.word 0x5b7f8ed2, 0x1329145a, 0xfd5210c2, 0xc0b9e42a, 0x25768ed4, 0x52f5346e, 0x39860ecb, 0x56f1ea65
.word 0xf7577bf2, 0xa1b62cfa, 0xf68310a0, 0x7822647a, 0x13c62d5e, 0x0b68ae7e, 0x44cd22de, 0xa4b1ffbb
.word 0x88416b49, 0xfe4d7bdf, 0xe0dc9249, 0x6a9401f4, 0xad8f6c20, 0x4cd82689, 0x375e6fb8, 0xbcb0a939
.word 0x98b47fd1, 0x80c99c64, 0x8a97f269, 0xeb84d426, 0xec66f263, 0xdce8c753, 0x268ba836, 0x58370ef6
.word 0x6eaaa748, 0xbeda57ec, 0x47552c9b, 0xed5bc2d7, 0xd1bc4180, 0x49f9f8fc, 0x28055e2e, 0x54da1e48
.word 0xaa2b9845, 0xf6787e0e, 0xa1b3f70c, 0x1898ba7f, 0xf3d82281, 0x597b3ba9, 0xb220e29e, 0xe6eb2690
.word 0x74059a8a, 0x73af0f44, 0xe9e889d0, 0x0bb3b114, 0xa7b3a1cf, 0x4d1faa51, 0xe78d08b2, 0xc016d278
.word 0x0b293308, 0x89c1b3a7, 0x6eaa8ec2, 0x3c73c3f4, 0x7bd01227, 0xefe582fb, 0x0097db2d, 0xe1f544f0
.word 0x0ab4fd12, 0xd030cb81, 0xe78f502d, 0x2d5fa6c5, 0x4ef619b2, 0xc2cb5532, 0x2d0b9b95, 0xb2fb393e
.word 0x461abdd2, 0x5834cba1, 0x07d49236, 0x5cd6601a, 0x9ba5c581, 0x7b8ee40e, 0xc36280f2, 0xf7952234
.word 0x7d66e5e8, 0x5f3c4163, 0x518acd82, 0xa0bd8569, 0xa704da05, 0x40a6bbaf, 0x8b7b98fd, 0x3cab9353
.word 0x4e0aeaf3, 0x373752a6, 0x12124cc6, 0x36bed3c1, 0xc92be21a, 0x6c18962d, 0xb85327d1, 0x9bf88242
.word 0xf589f476, 0x8aeea95f, 0x791a6eb2, 0x97315d5b, 0x2574c345, 0x677ead27, 0xfc7e0943, 0xec52b07a
.word 0xe20725b5, 0x7e290944, 0x9b482a3a, 0x9a6a2bd6, 0xafbe9948, 0x5f49eabb, 0x67b334df, 0xb183a7d2
.word 0x2552171c, 0xa578f6e5, 0x24df3ec2, 0x6f90bdb2, 0x4dd43b12, 0xa04b45d5, 0xe3fec582, 0x35f434b2
.word 0x4e602faa, 0xdd49e1b5, 0xe07bf197, 0x50d9c38d, 0xb2451889, 0x6b00b290, 0x84ed686c, 0x79345e4f
.word 0x8bef4aa8, 0x935609bf, 0xad787ba8, 0x2d5957b6, 0x68306322, 0xe7a24613, 0x33ed26ca, 0xe81b8b40
.word 0x4eab496a, 0xc0cc4b91, 0x9af7e2d0, 0xac290c53, 0x5a6d2aea, 0x0f4823d6, 0x290b1f95, 0x0d39ffe9
.word 0x97767270, 0x56e5220f, 0x63d9aac5, 0xf88c1cd1, 0x7d8bb26b, 0x4e602f06, 0xca853b8f, 0x60b7f1d6
.word 0x61c86ac2, 0x47592a41, 0x183b5477, 0xbfe1922d, 0x7409ffcb, 0x31e94a6c, 0x53683b66, 0xc7986595
.word 0x0dee85e3, 0x978fa176, 0x524ae925, 0x54667625, 0xb2bf37cf, 0x7cbd2ef9, 0xef103f1d, 0x1e402280
.word 0xf749e87c, 0x7ba44647, 0xef43e2ce, 0x36202339, 0xb65ebef7, 0x56971ec4, 0xbdd669cf, 0xa55b3482
.word 0x05eb7adc, 0x92422668, 0xeeeaefaf, 0xf592afbf, 0x122234e5, 0xa9bed47b, 0x8ac17099, 0x95bfe943
.word 0xc2cc8892, 0xf5c3f13a, 0xfd453db8, 0x54dcb122, 0xe8b754da, 0xbab63927, 0x1d433af7, 0x5dac5274
.word 0x5912c0e1, 0xd495ee78, 0xbfb6d3fe, 0xabcc20c3, 0x7a1cad09, 0x81dc253e, 0xd3e138f8, 0xdbaa2665
.word 0xc2cdd141, 0xbf1585fd, 0xdd4f0d48, 0xf73968b0, 0x71011acd, 0xb37a9947, 0xb93d706e, 0x5ef41ec3
.word 0xf13a17eb, 0x0ec50e8f, 0x903fba3e, 0x103be770, 0xc84a95a1, 0x878d3264, 0xfa8eb5bc, 0xc0dd08d1
.word 0x8f11f26e, 0xd6315f4b, 0x63826fcd, 0x3f55e553, 0x9b2bc417, 0xfa4686f5, 0xf8b77af1, 0xf6a0405e
.word 0xb3e93077, 0x0bc6e818, 0x77dff407, 0xe64fa040, 0xa5f98e7a, 0xf7c6c7fb, 0x32f4c4d2, 0xddf228e0
.word 0xad2b32bd, 0x76336910, 0xe2afe924, 0x1c38a3b3, 0xe79988a1, 0x9a99c1fc, 0x3745d5bf, 0x307386cd
.word 0x965d033a, 0x1358ed6f, 0x7c70cef4, 0x0296d5fe, 0x285ce464, 0x950bfe2f, 0x7bb08854, 0x4e1014b8
.word 0x12f98f8e, 0x9cbea846, 0x6f2c6878, 0x006716b8, 0xfeb0d202, 0x332fbea7, 0x4881ae6c, 0xf9bb348e
.word 0x10e2f40b, 0x6b758680, 0xd2351621, 0x77508537, 0x47fdad8b, 0xd5960a03, 0xd812be1d, 0xcc692815
.word 0xf8acd363, 0xde648b34, 0x310246c6, 0xcf75a33d
.section .region_1,"aw",@progbits;
region_1:
.word 0xa74b82b1, 0x446b2e51, 0x809d5cb7, 0x2910387d, 0x8b4d41f1, 0x730c5e15, 0x0444e40e, 0x7acb1f3a
.word 0x86faf843, 0xf40e9c25, 0xebc7bdad, 0x50b8e5f3, 0x4c813b68, 0xc9f80ad8, 0xedec302a, 0xe5504f84
.word 0xa1fab1b7, 0xbfcc8d73, 0x868d6374, 0x06b103e0, 0x8f28ab9a, 0x4272cd8f, 0xc1d6cf5b, 0x71fb4b7d
.word 0xa9c76bc5, 0x02222df2, 0xe3fdd3e4, 0x7fd1fc2c, 0x82a0f444, 0x225d86f8, 0x5a0485cf, 0xb456968f
.word 0x50cb2efd, 0xb2ee3813, 0x69f6e69b, 0x01f5549e, 0x804f03ba, 0x7e51cf5e, 0xfaab854b, 0x369162c2
.word 0xa91bef77, 0x3996f896, 0xc0a50b20, 0x60ea71dd, 0x7fd1b172, 0x5ff83bf6, 0x84883333, 0xfb4cadbf
.word 0xe3779dff, 0x14090dac, 0x9df6104b, 0xc23cb5ce, 0xb786e8b0, 0x3066c06b, 0xa78b649f, 0x64e5e617
.word 0x62449a77, 0x206d34db, 0x2f78f068, 0xce294b4c, 0x2819bf02, 0x3321d57d, 0x5a33370d, 0xaca13343
.word 0x23820362, 0x8834c819, 0x30b5d15f, 0x59d76f5b, 0xd2c3a09b, 0x2ba13ffa, 0xfd5b6eab, 0x59151b43
.word 0x00a5482b, 0xef3320ad, 0x1af6e71a, 0x168ece0f, 0x38413baa, 0xe24b9b43, 0xb22c04ef, 0x180f7c88
.word 0x6a6b8d75, 0xbc14fd3a, 0xc3cc5588, 0xeec8ec07, 0xbe88c199, 0x0425b917, 0x746c77b2, 0x53499e74
.word 0x3e714a02, 0x53a61609, 0xdb861476, 0xa9eb6b6f, 0x16665398, 0xd27aa028, 0x343ed95c, 0x6467cef1
.word 0xeef3e6ba, 0x38abdd99, 0x085744eb, 0x168d83b8, 0xd6b32776, 0x94c165b3, 0x9c71b9c7, 0xc5ce19f6
.word 0xc4995be9, 0xad973ec0, 0x060a9c06, 0xc5fb624f, 0xdda62d3f, 0x14091e85, 0x64aa35a0, 0xa2134c3b
.word 0x3614d3dd, 0x0df53992, 0x6c7a131c, 0x1c46a78e, 0x0d33757a, 0x709abe3a, 0x85bd00f6, 0x001e880e
.word 0x15817483, 0x20ad801f, 0x623526d6, 0x0a78584a, 0xcf35982c, 0xe5e92fe5, 0xd75ef40f, 0xebccde3e
.word 0x28d3bf3e, 0x4701404a, 0x0ad632f5, 0x1bbb7d9d, 0xa100a6d5, 0x7bc4dd8b, 0x71108a6a, 0x4b3264dd
.word 0x9159e05a, 0x795da613, 0xd6db9bd6, 0x4047feda, 0x8cfe9e64, 0x787a42dc, 0xe3bfd035, 0x1596a07b
.word 0x9eaa520f, 0x9f5e1a6e, 0x0d1a780f, 0x8b758ae3, 0x27b37387, 0x8dcdfed9, 0x52e08ca6, 0x24aeff27
.word 0x5ba6ef20, 0x437df1f4, 0x2c1c14fb, 0x15dad68a, 0x81a2be8d, 0x572e7e78, 0x741c9589, 0xfeb6ecea
.word 0x8ee03512, 0xcc990dbb, 0xcb490541, 0x7faaa993, 0xc1486171, 0x9e2a3bf8, 0x4aa6e5f9, 0x2e38c1fe
.word 0x1dc5db5b, 0x43deef11, 0x1c92be25, 0x316b5d2f, 0x0e147b0b, 0x2c67d76e, 0x6d6482da, 0xa7bf8eb1
.word 0xb3c9b21c, 0x0de87bc8, 0x01f653df, 0x4c7dd9af, 0x53bff17c, 0xa0e50337, 0xd05d0066, 0xa7b56d13
.word 0x65a32a79, 0x7b19f1a2, 0x5f1e9a4f, 0x176f173e, 0x69de6151, 0x02f0090e, 0xc165014e, 0xda5d9986
.word 0xc3fec1fa, 0x51159b4b, 0x5e4af26b, 0x885e4d46, 0xdefd1c9d, 0x8a3a654f, 0x5d0d32ff, 0xed920037
.word 0x45373ddf, 0xbcd5e408, 0xdb299b41, 0x471cbb35, 0xe08a977f, 0x6026b47c, 0xa202d321, 0x9115495b
.word 0xcab8f773, 0xcc75a2dc, 0x3d831ee4, 0x65da9618, 0x5226b1a9, 0x7e2ae34c, 0x7302afcd, 0x95857c02
.word 0x85cf0951, 0x12204103, 0x70e117e6, 0xa6d775fc, 0xe1d7fce8, 0xd43ae81a, 0xa5480260, 0xe95016a6
.word 0xb0f296be, 0xeeebf396, 0xdfb40f3e, 0xcf035ac1, 0xcb16bf2d, 0x3225494b, 0xd514d22a, 0x4c0f924c
.word 0xa69ae759, 0x0a385680, 0xd5ca4af4, 0xb488c6b5, 0xaf6fa9ae, 0x8bdbfa3b, 0xeb216659, 0x9d49a820
.word 0x5fd6143b, 0x5009a11d, 0xc660ab27, 0x9b73d189, 0xd0e8d81b, 0xf324e88d, 0x125938d0, 0x2a1c9c4b
.word 0xbcb046ab, 0x81ad6c65, 0x87b195b3, 0xb056cf71, 0x357741bf, 0x68e03c8f, 0xae515142, 0x63e1b985
.word 0x163dc266, 0xd4195e5d, 0xd52c02d9, 0x20ba4c51, 0x7d00e378, 0x374aa0f2, 0x5f2279c6, 0x8f71e01b
.word 0x4a6621ac, 0x1cf7d58a, 0x371f7932, 0x3769d5c1, 0xe4900fac, 0xa1bedb32, 0xfe43b939, 0x0df3c399
.word 0xc92b559d, 0x58af0e76, 0x1a1026d7, 0x8acd492d, 0x3b62637b, 0x274f68a9, 0xc4c9aa46, 0xf8410ccc
.word 0x0be913f9, 0x7820412f, 0xdd76572d, 0xf7588abd, 0x50b697b5, 0x33fcf242, 0xb86df2d5, 0x271b11f5
.word 0x700002b7, 0x93c83327, 0x24da41fc, 0x04561f3a, 0x9bff2021, 0x9b999e1d, 0x645a5586, 0x86e86dee
.word 0x8b7571a0, 0x1a798a87, 0x64e2b3a9, 0x51d0ed75, 0xc0e9790a, 0x6bcf3989, 0xa22907c7, 0x43c19dbc
.word 0x4a77cf4e, 0x5df642e9, 0x6ac64d87, 0xb8aac610, 0x6171cb85, 0x80d2a853, 0x7e95c4a6, 0x433cab0c
.word 0xeec0b48d, 0x5d923831, 0x07282338, 0x4ad79b8d, 0x852ef3cd, 0x9a960aa0, 0x49dfcf99, 0x24b841d7
.word 0x79e69066, 0xb870bb1d, 0x06920fcc, 0x432656aa, 0xebb9fcca, 0x31c164c4, 0xf78e29e8, 0xe5f941a2
.word 0x259ac20f, 0x5cdac94c, 0x7f426733, 0xe171ceda, 0x5860ad09, 0x8437ce80, 0x17c073fc, 0xc594b1f2
.word 0xa1f81520, 0xc38ef891, 0x629de377, 0xc76959e4, 0xce6870f2, 0xb1795d31, 0xd808759d, 0xedb41b47
.word 0xccecf858, 0x7a81b226, 0xd8cf0c49, 0xe71b1fdb, 0x0fafd71e, 0x19df3a1c, 0x4b416a20, 0xeb944fe9
.word 0x3b9e3f13, 0x6dd53994, 0xa104d8ab, 0xd3495603, 0x03658f00, 0x32e72c9f, 0xbcafe6f1, 0x3600f656
.word 0x13d94692, 0x3a31e730, 0x79b23e87, 0xacb3a30f, 0x62f061f6, 0x58372951, 0x94006e84, 0xaad2c4a8
.word 0x6db7aa8d, 0x62414cdf, 0x4616b1bc, 0x330aeae5, 0xd52c67d9, 0x8c1060d4, 0x4e497c8c, 0x9df6cead
.word 0x2731b76d, 0x7417e027, 0x7668f9cd, 0x86250632, 0xe1d931a0, 0xc872a2c1, 0xd22ab4d2, 0x9a04cce2
.word 0x25c56264, 0xf276245c, 0x03fa405b, 0x306919f6, 0x2d326fc5, 0x4013af0d, 0x4ffe6946, 0xb733549c
.word 0xb790e618, 0xa018366d, 0x2b605568, 0x2f216ec2, 0x89071328, 0xfc1d4f07, 0x9115ad35, 0x7bc75087
.word 0x166aeffe, 0x43d51014, 0x2909363c, 0xbabdc32f, 0xd0edbc10, 0xf9c81f37, 0x98cefca8, 0x3b196cff
.word 0x6bb18e49, 0x94d4207a, 0x94aafec3, 0x35dbdb91, 0x62417af7, 0xfdf25791, 0xeccd3680, 0x228e16ff
.word 0x7e48f415, 0x3e68b02b, 0xf87af0a0, 0x15d41927, 0x6b44b1c0, 0x6fbc302a, 0xc863783c, 0xb391e1bf
.word 0x16f925fd, 0xc8d09b3b, 0x411c2bc2, 0x973945d2, 0xdf0edaef, 0xdbc83835, 0xedf07c48, 0x35334aa9
.word 0x7d19c2e9, 0x3c6cd4d4, 0xd39a0e6c, 0xe90a05a0, 0x48b797b3, 0x4f5555fb, 0x49f32cd2, 0x2d8fae71
.word 0x0ddfb3ea, 0x3646032e, 0x812bc008, 0x187ecec1, 0xc41be51c, 0xa3840761, 0x0cbd8b52, 0x65133a6a
.word 0x0caf71c5, 0x16c7eaf0, 0xc8dd3ba6, 0x23e533fa, 0xe64c3b64, 0x07e22168, 0xaae12fde, 0x2b40b5b4
.word 0x632a6354, 0x740099ea, 0x69ec4aa4, 0x03ad6e66, 0x1706b796, 0x699a849d, 0x074ca7ea, 0x784c4a93
.word 0x20dd04a9, 0x83ab875b, 0x1b96b274, 0x023d5770, 0xb38dcec0, 0x877d1c04, 0x855822f8, 0x56833ce0
.word 0x143afdde, 0x672b3abd, 0x146bc67f, 0x72eae3a4, 0x0a300b80, 0x40b12174, 0x760e1d03, 0xcde698db
.word 0xf334d586, 0x8862eab5, 0x6c07f695, 0x7871e80d, 0x3c57ba2d, 0x23550d3a, 0x4d23631f, 0x87ccaf96
.word 0x3c956162, 0x8629883b, 0x2d2e34ad, 0x0a48ca8a, 0xf4bf0722, 0xe76ff2f2, 0x7c047cb7, 0x06e4d9ed
.word 0x14ae0a08, 0x8dad92f9, 0x922dbb97, 0x77482872
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x23, x7, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x24, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x24, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x24, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x24, x17, ecall_handler
                  li x17, 0x1
                  beq x24, x17, instr_fault_handler
                  li x17, 0x5
                  beq x24, x17, load_fault_handler
                  li x17, 0x7
                  beq x24, x17, store_fault_handler
                  li x17, 0xc
                  beq x24, x17, pt_fault_handler
                  li x17, 0xd
                  beq x24, x17, pt_fault_handler
                  li x17, 0xf
                  beq x24, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x7, x23, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x23, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x23, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x7, x23, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x7, x23, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x7, x23, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
