.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf3cf20db
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xfb32548c
                  li x5, 0x80000000
                  li x6, 0x9e71f35d
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xf5f6193b
                  li x12, 0xf7a5b0e2
                  li x13, 0x80000000
                  li x14, 0xfb90cd1c
                  li x15, 0xe0284ef4
                  li x16, 0x0
                  li x17, 0x8725fc9e
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0xf5af2d39
                  li x22, 0x80000000
                  li x23, 0xde44afd4
                  li x25, 0xff320bff
                  li x26, 0x6
                  li x27, 0x0
                  li x29, 0x7
                  li x30, 0xd
                  li x31, 0x0
                  la x24, user_stack_end
main:             addi         s3, s1, -1264
                  and          zero, a4, s8
                  la           s9, sub_1
                  sub          t6, s3, a7
                  addi         s9, s9, -486
                  slt          tp, tp, s1
                  add          a0, s4, s4
                  sltu         tp, t6, s9
                  beq          s9, t2, main_j3 #branch to jump instr
                  or           s1, a4, s5
                  srl          s3, s8, ra
                  srli         a4, zero, 24
                  slt          t2, a3, s4
main_j3:          jalr         a2, s9, 487 #jump main -> sub_1
                  addi         t6, zero, 6 #init loop 0 counter
                  srai         a7, zero, 25
                  and          zero, t1, s1
                  srli         a1, a6, 16
                  andi         sp, sp, 675
                  slli         sp, s6, 8
                  andi         t0, s2, -73
                  sltiu        s5, s11, -648
                  sltu         a6, s3, a6
                  slli         s11, s0, 12
                  sltu         s4, a3, tp
                  andi         a1, a7, -6
                  addi         s10, zero, -14 #init loop 0 limit
                  auipc        s6, 1015146
                  xor          a4, s9, s1
                  slli         zero, t2, 8
                  slli         s3, a4, 13
main_3_0_t:       and          a3, s6, a3
                  and          gp, t2, t4
                  addi         t6, t6, -4 #update loop 0 counter
                  sub          s3, gp, gp
                  xor          s5, s4, s7
                  srli         ra, s2, 30
                  slti         tp, sp, 613
                  bge          t6, s10, main_3_0_t #branch for loop 0
                  auipc        a7, 918630
                  addi         a0, zero, 8 #init loop 1 counter
                  addi         t0, zero, 8 #init loop 1 limit
                  sltu         a6, s8, s8
main_2_1_t:       xori         s9, t5, 1838
                  addi         a0, a0, -6 #update loop 1 counter
                  addi         s7, zero, 10 #init loop 0 counter
                  addi         t6, zero, 18 #init loop 0 limit
main_2_0_t:       or           tp, s4, s8
                  srl          s6, s3, t2
                  addi         s7, s7, 8 #update loop 0 counter
                  beq          s7, t6, main_2_0_t #branch for loop 0
                  bgeu         a0, t0, main_2_1_t #branch for loop 1
                  xori         gp, a5, 676
                  addi         a4, zero, 6 #init loop 1 counter
                  slti         a2, a0, 61
                  or           t0, s11, a6
                  xori         s6, s10, -191
                  srai         ra, s1, 25
                  slti         s10, t6, -969
                  srai         zero, t4, 12
                  slli         a1, s8, 11
                  addi         sp, zero, 17 #init loop 1 limit
main_1_1_t:       addi         s11, gp, -1118
                  addi         a4, a4, 3 #update loop 1 counter
                  add          s10, t3, a5
                  addi         tp, zero, -1 #init loop 0 counter
                  srl          a7, sp, s2
                  or           s5, s0, t1
                  srai         s3, t1, 2
                  addi         s7, zero, -3 #init loop 0 limit
                  xor          s3, t0, t2
                  sra          a7, zero, a5
                  sra          s4, s3, a6
main_1_0_t:       slti         ra, a1, 1476
                  srl          s9, s1, a0
                  addi         tp, tp, -2 #update loop 0 counter
                  srli         a6, t6, 21
                  srai         s11, s9, 30
                  srli         s4, a7, 11
                  beq          tp, s7, main_1_0_t #branch for loop 0
                  sub          s1, a0, t3
                  sll          gp, s4, s1
                  slt          t2, a1, s7
                  bltu         a4, sp, main_1_1_t #branch for loop 1
                  addi         a1, s1, 1407
                  addi         tp, zero, -6 #init loop 1 counter
                  sub          s3, t1, a0
                  addi         s5, zero, 8 #init loop 1 limit
                  sra          s7, s5, a6
main_0_1_t:       lui          t2, 974213
                  xori         s10, zero, 359
                  sltiu        s0, s4, 202
                  addi         tp, tp, 7 #update loop 1 counter
                  addi         a7, zero, 1 #init loop 0 counter
                  nop
                  slt          a5, a3, s8
                  addi         a6, zero, 13 #init loop 0 limit
                  xori         t4, a3, 255
main_0_0_t:       slti         a3, t3, 1910
                  sll          a3, t3, s10
                  addi         a7, a7, 2 #update loop 0 counter
                  blt          a7, a6, main_0_0_t #branch for loop 0
                  sra          s7, gp, s3
                  bne          tp, s5, main_0_1_t #branch for loop 1
                  sltiu        a3, s11, -756
                  andi         zero, t3, -1295
                  xor          a1, sp, s8
                  blt          s8, s4, 7f
                  slli         t4, tp, 23
                  bne          s0, s3, 17f
                  lui          tp, 150187
                  sub          s5, a1, a4
7:                sll          zero, t4, a7
                  bgeu         ra, s8, 18f
                  sltu         t0, t2, a4
                  nop
                  addi         s7, s2, -1760
                  add          gp, s2, a2
                  andi         t4, a6, 1367
                  xor          s3, t2, s8
                  slti         zero, a6, 1556
                  blt          s7, s1, 18f
17:               addi         a7, s7, -1899
18:               nop
                  nop
                  slt          s5, a3, s10
                  or           a6, a4, t2
                  bgeu         ra, s8, 31f
                  srli         sp, a4, 5
                  sub          t0, s5, s11
                  add          t4, a1, t3
                  sltiu        a0, s10, -1577
                  auipc        s6, 823234
                  sltiu        s11, s2, -655
                  add          t4, t1, ra
                  beq          zero, s9, 36f
31:               slt          t1, s3, t5
                  addi         a2, gp, 728
                  srai         s0, t2, 15
                  srl          a1, ra, t0
                  slt          a7, a1, t1
                  add          s3, s2, s4
                  ori          t1, gp, 1390
                  la           s5, sub_2
                  sub          ra, s1, t2
                  addi         s5, s5, -101
                  addi         a4, a2, -1879
                  bne          s4, s1, main_j1 #branch to jump instr
                  or           t1, s7, a2
                  and          s3, a2, s5
                  srl          a7, t0, s6
main_j1:          jalr         a2, s5, 102 #jump main -> sub_2
36:               srai         s0, a6, 19
                  srai         gp, s6, 15
                  andi         t4, t4, -1840
                  bgeu         t4, a4, 43f
                  blt          a7, zero, 47f
                  srl          t1, a5, a6
                  auipc        s1, 1037199
43:               add          t0, s2, t1
                  bge          s9, a7, 54f
                  auipc        t2, 929777
                  sra          ra, s4, a1
47:               nop
                  sub          ra, a2, a5
                  xor          s2, s8, s5
                  slt          a6, a3, s10
                  andi         s6, s0, 1263
                  sll          a3, ra, sp
                  srai         s6, a1, 8
54:               sltiu        a0, a6, 1968
                  addi         s7, a1, -697
                  bgeu         s4, s1, 61f
                  or           a3, t1, a0
                  bgeu         a6, a4, 71f
                  sra          a2, a3, s4
                  xori         a6, s3, -404
61:               addi         s10, zero, 988
                  addi         a6, s3, 369
                  xor          s11, s6, gp
                  la           a2, sub_1
                  sltu         s10, s2, t4
                  lui          zero, 893357
                  srai         s3, gp, 26
                  sub          t1, t6, a3
                  auipc        s11, 709068
                  sll          s3, ra, a4
                  slti         tp, t5, 637
                  addi         a2, a2, -922
                  sltiu        s10, s5, 1178
                  sltu         t0, s0, s11
main_j2:          jalr         a2, a2, 922 #jump main -> sub_1
                  bne          t1, s11, 71f
                  blt          s11, ra, 69f
                  sub          tp, a5, a6
                  slt          gp, sp, a6
                  sra          zero, t2, t1
                  ori          t2, s9, -1363
69:               sltu         s7, s6, s0
                  lui          zero, 747328
71:               auipc        a2, 44037
                  sltu         a0, t1, s4
                  sra          s9, s2, s2
                  or           s11, t2, s8
                  sltu         s3, zero, t5
                  ori          gp, s10, 24
                  beq          s1, s0, 79f
                  slt          t0, t0, s1
79:               sub          a2, a0, t1
                  add          a5, t2, tp
                  add          gp, s4, a1
                  sll          t2, s4, t5
                  sra          sp, a3, a6
                  bltu         t5, t6, 86f
                  or           a2, a1, s3
86:               bge          s8, a7, 105f
                  and          a0, a7, a3
                  beq          s7, t1, 104f
                  bltu         t6, a6, 105f
                  auipc        a2, 306036
                  sltiu        s2, ra, 1521
                  sltiu        s10, s8, 645
                  sub          t4, t5, s4
                  slt          sp, t6, sp
                  or           s1, t4, t5
                  xori         a1, ra, 1694
                  ori          a0, sp, 350
                  slti         tp, s5, 365
                  ori          a5, s2, -868
                  srai         a2, s1, 18
                  slti         s2, s5, -1727
                  nop
                  bge          a3, t5, 113f
104:              blt          s6, a7, 121f
105:              beq          t5, s2, 125f
                  slli         s3, s0, 9
                  nop
                  sub          t6, t1, t5
                  and          s4, t1, s1
                  andi         t6, s10, -1467
                  and          a1, gp, t3
                  xor          zero, s1, s10
113:              sltu         s0, t3, s6
                  sltiu        a5, s4, 1400
                  auipc        s7, 25064
                  slli         a7, ra, 14
                  nop
                  bne          ra, t2, 126f
                  blt          t4, zero, 120f
120:              bgeu         s2, zero, 121f
121:              bgeu         a4, a0, 141f
                  bne          a6, s5, 132f
                  sub          t2, s5, s11
                  sll          gp, s9, s3
125:              blt          t2, gp, 136f
126:              slt          s2, t6, a6
                  nop
                  slt          a2, s8, gp
                  blt          t6, a7, 145f
                  addi         s3, s0, -967
                  addi         a7, a4, 1806
132:              blt          tp, zero, 133f
133:              add          a2, s2, gp
                  andi         s10, a7, -1743
                  beq          s0, t2, 155f
136:              sltiu        s1, zero, -174
                  andi         a6, a7, 1065
                  or           s2, s9, t3
                  or           s3, a5, gp
                  blt          a1, a0, 148f
141:              xori         a7, s4, 953
                  srli         zero, s6, 17
                  bne          a2, s10, 162f
                  sra          a6, t2, t2
145:              sll          a5, gp, t2
                  xor          gp, s0, s0
                  sltu         a5, s1, t2
148:              bge          s10, a3, 168f
                  sub          a0, s1, s3
                  bne          s11, a5, 160f
                  srl          a7, s3, t3
                  andi         a7, s1, -383
                  sll          a2, ra, a2
                  and          zero, a5, a4
155:              add          s1, s1, t2
                  add          gp, s8, s7
                  srai         t4, s2, 5
                  add          t0, a6, t2
                  sra          gp, zero, sp
160:              bne          t6, s5, 180f
                  sltu         a1, a4, s9
162:              slli         t6, s7, 6
                  srli         a0, t2, 18
                  srai         a7, a7, 30
                  srli         a1, t6, 2
                  bge          s5, sp, 174f
                  or           t1, s4, a1
168:              andi         a4, s5, 1098
                  xor          a0, s6, s1
                  slti         s10, s8, 1669
                  and          zero, s8, t4
                  sltu         s7, t1, a0
                  beq          t0, a5, 178f
174:              andi         zero, s8, 1210
                  addi         s10, a3, -1
                  bge          s0, s5, 192f
                  xori         a5, t6, 1051
178:              xor          zero, s5, t5
                  nop
180:              slt          s6, ra, s7
                  bge          t5, s4, 182f
182:              beq          s11, s6, 184f
                  auipc        t2, 321132
184:              beq          t6, s3, 201f
                  add          s10, a3, a7
                  bge          a5, s11, 196f
                  sltu         ra, s7, s1
                  sll          t6, zero, s0
                  sra          s2, gp, t6
                  or           s10, s11, a4
                  srai         sp, s5, 6
192:              srli         s6, a7, 16
                  lui          tp, 462506
                  bgeu         a7, a2, 200f
                  slt          t2, s2, zero
196:              addi         s7, t6, -1986
                  bltu         a2, s8, 202f
                  xor          t4, t1, a2
                  srli         s3, gp, 22
200:              srai         s5, s2, 21
201:              srai         a7, t2, 28
202:              auipc        t0, 341585
                  bgeu         gp, s7, 210f
                  blt          s3, tp, 206f
                  srli         gp, s11, 1
206:              blt          tp, s4, 213f
                  sub          s7, t5, gp
                  bgeu         t1, s6, 213f
                  srli         a5, gp, 19
210:              sltiu        a1, s1, -978
                  sltu         s4, a2, t6
                  addi         zero, t4, -728
213:              add          gp, s3, s5
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         s8, s8, -20
                  ori          s10, t3, -101
                  add          a0, a7, a4
                  sw           a2, 4(s8)
                  sub          t0, zero, a0
                  addi         s1, zero, -7 #init loop 0 counter
                  sub          s3, zero, s3
                  sltiu        s10, s6, 121
                  addi         t1, s5, -458
                  srl          s2, t3, s2
                  xor          a6, t1, a0
                  srli         t6, t6, 3
                  ori          a3, s6, -54
                  andi         s5, s9, -1894
                  addi         tp, zero, 8 #init loop 0 limit
sub_1_20_0_t:     nop
                  xor          a5, s1, s3
                  slti         sp, a3, 1936
                  slt          s3, s11, s7
                  addi         s1, s1, 7 #update loop 0 counter
                  sll          a4, zero, s6
                  and          s9, t2, a1
                  or           t1, s0, zero
                  slti         sp, s2, -165
                  sub          t1, s3, s0
                  slt          s2, t1, a4
                  sra          gp, sp, t5
                  lui          sp, 449728
                  lui          a0, 852178
                  ori          a1, s4, 1312
                  srli         a5, sp, 17
                  sub          s7, a2, ra
                  and          s4, a0, a7
                  bltu         s1, tp, sub_1_20_0_t #branch for loop 0
                  xori         a0, t5, 1231
                  addi         t6, zero, 9 #init loop 1 counter
                  sra          s1, ra, tp
                  addi         s5, s0, 771
                  srai         s2, s4, 29
                  sltiu        a4, a3, -483
                  add          s9, s10, a5
                  slli         a3, t2, 24
                  slti         t4, s4, 756
                  auipc        s6, 124104
                  sltu         t1, s7, a1
                  addi         t0, zero, 6 #init loop 1 limit
sub_1_21_1_t:     or           s1, t5, a7
                  ori          s6, s1, 1594
                  addi         t6, t6, -3 #update loop 1 counter
                  xori         s11, gp, -783
                  addi         t2, zero, -1 #init loop 0 counter
                  sub          a3, t0, s9
                  xor          s4, a2, s4
                  auipc        a3, 165905
                  srl          tp, s10, t4
                  addi         s3, zero, 10 #init loop 0 limit
                  auipc        a2, 193158
sub_1_21_0_t:     or           a5, t3, a1
                  slli         a6, s6, 1
                  addi         t2, t2, 3 #update loop 0 counter
                  lui          sp, 170430
                  sltiu        ra, s11, 682
                  blt          t2, s3, sub_1_21_0_t #branch for loop 0
                  slli         s1, t2, 1
                  srai         s9, t4, 15
                  bgeu         t6, t0, sub_1_21_1_t #branch for loop 1
                  ori          s9, s9, 21
                  addi         a6, zero, 7 #init loop 1 counter
                  sltu         sp, s9, a1
                  addi         ra, a4, 882
                  addi         t4, zero, -6 #init loop 1 limit
                  and          s5, a6, s0
                  or           a7, s0, sp
                  addi         a4, a5, 2040
sub_1_18_1_t:     nop
                  addi         a6, a6, -9 #update loop 1 counter
                  addi         t6, zero, -8 #init loop 0 counter
                  addi         s4, zero, -7 #init loop 0 limit
sub_1_18_0_t:     nop
                  addi         t6, t6, 2 #update loop 0 counter
                  slt          gp, a0, zero
                  blt          t6, s4, sub_1_18_0_t #branch for loop 0
                  or           s0, gp, t3
                  nop
                  bge          a6, t4, sub_1_18_1_t #branch for loop 1
                  and          s0, s8, s11
                  addi         s5, zero, 6 #init loop 1 counter
                  addi         a4, zero, 10 #init loop 1 limit
                  andi         tp, tp, 682
sub_1_11_1_t:     or           ra, s6, t4
                  addi         s5, s5, 8 #update loop 1 counter
                  addi         s3, zero, 4 #init loop 0 counter
                  auipc        t2, 589048
                  addi         s6, zero, -7 #init loop 0 limit
                  slt          s7, a2, tp
                  ori          sp, a1, -1275
sub_1_11_0_t:     or           a5, t4, a1
                  and          s1, sp, t1
                  addi         tp, t0, 1484
                  addi         s3, s3, -5 #update loop 0 counter
                  sub          tp, a5, s6
                  bge          s3, s6, sub_1_11_0_t #branch for loop 0
                  xori         a5, gp, 1735
                  nop
                  or           s10, a3, a7
                  bltu         s5, a4, sub_1_11_1_t #branch for loop 1
                  ori          t0, a0, -494
                  addi         t0, zero, 0 #init loop 0 counter
                  sub          a2, t1, t1
                  or           s5, a7, s9
                  addi         tp, zero, -16 #init loop 0 limit
                  slti         zero, t5, 1750
                  lui          gp, 132407
sub_1_10_0_t:     auipc        a2, 926620
                  srai         s0, t2, 21
                  addi         s3, s1, 516
                  addi         t0, t0, -8 #update loop 0 counter
                  ori          a4, t3, 1231
                  sll          a3, tp, s2
                  slt          a5, s3, s0
                  bge          t0, tp, sub_1_10_0_t #branch for loop 0
                  add          s7, tp, s3
                  addi         t6, zero, -5 #init loop 0 counter
                  sub          a2, t3, s6
                  sra          a7, a2, s7
                  xor          s3, a3, s6
                  lui          t1, 25629
                  andi         s11, a0, 1167
                  and          a7, tp, a5
                  slli         a1, t1, 30
                  srli         s11, a7, 11
                  addi         s4, zero, 6 #init loop 0 limit
                  nop
                  sltiu        a3, a6, -2005
                  andi         a3, s2, -988
                  nop
                  xori         sp, s11, -1444
                  auipc        a2, 439865
sub_1_23_0_t:     sltiu        s3, t5, 1082
                  addi         t6, t6, 10 #update loop 0 counter
                  xor          s1, sp, t1
                  sra          ra, s11, s10
                  addi         a0, s8, 1595
                  blt          t6, s4, sub_1_23_0_t #branch for loop 0
                  srai         t0, zero, 3
                  addi         s0, zero, -4 #init loop 0 counter
                  andi         a5, s2, 1187
                  and          s11, s11, s8
                  andi         s3, s10, -1645
                  sub          a0, a4, s7
                  slti         t4, a7, -1380
                  addi         a6, zero, 13 #init loop 0 limit
                  sra          t1, t2, ra
                  xori         a1, t6, 2008
sub_1_2_0_t:      and          t2, a6, t1
                  srai         t1, gp, 22
                  or           tp, s4, s6
                  addi         s6, sp, 1989
                  slli         t6, a5, 30
                  srli         s5, s8, 20
                  slt          s4, t1, tp
                  srli         s2, t3, 26
                  addi         s0, s0, 7 #update loop 0 counter
                  add          t2, s3, ra
                  add          a0, s10, t6
                  or           zero, a7, sp
                  srli         s11, t2, 11
                  blt          s0, a6, sub_1_2_0_t #branch for loop 0
                  xori         a2, t5, -853
                  addi         ra, zero, 5 #init loop 1 counter
                  sltu         a1, t3, ra
                  slt          s3, s3, s5
                  auipc        s11, 22342
                  srl          s11, a5, gp
                  sub          a0, a1, s10
                  ori          gp, gp, 1874
                  addi         a4, zero, -20 #init loop 1 limit
                  nop
sub_1_4_1_t:      slti         sp, t0, 434
                  slli         a0, t0, 19
                  sra          a5, s3, s4
                  and          gp, t0, t2
                  addi         ra, ra, -3 #update loop 1 counter
                  addi         s6, zero, 7 #init loop 0 counter
                  slti         tp, s8, 65
                  xori         sp, a5, -2038
                  srai         zero, a3, 26
                  nop
                  sra          s7, tp, t4
                  addi         t0, zero, -8 #init loop 0 limit
                  addi         tp, a4, 1406
sub_1_4_0_t:      sltu         s0, t4, ra
                  srli         s11, s6, 7
                  addi         s6, s6, -5 #update loop 0 counter
                  auipc        sp, 907460
                  beq          s6, t0, sub_1_4_0_t #branch for loop 0
                  sub          t1, s0, zero
                  nop
                  sltu         t2, t4, s0
                  sra          s9, tp, t4
                  bge          ra, a4, sub_1_4_1_t #branch for loop 1
                  lui          s1, 550796
                  addi         gp, zero, -7 #init loop 1 counter
                  addi         t4, zero, -11 #init loop 1 limit
sub_1_17_1_t:     lui          t1, 981514
                  addi         gp, gp, -4 #update loop 1 counter
                  addi         s0, zero, 3 #init loop 0 counter
                  auipc        sp, 976711
                  addi         a7, zero, -12 #init loop 0 limit
sub_1_17_0_t:     lui          s10, 611962
                  addi         s0, s0, -9 #update loop 0 counter
                  sltu         s11, sp, s6
                  bge          s0, a7, sub_1_17_0_t #branch for loop 0
                  beq          gp, t4, sub_1_17_1_t #branch for loop 1
                  sll          tp, a6, s1
                  addi         s5, zero, -3 #init loop 0 counter
                  auipc        a7, 479809
                  add          a4, s9, t1
                  sub          s2, s10, a5
                  xori         tp, sp, -1339
                  srl          a1, t1, s11
                  sltiu        s3, s9, 94
                  slt          s11, s0, t5
                  sll          t1, s11, a2
                  auipc        s4, 59275
                  auipc        s1, 789139
                  andi         t6, s5, 1244
                  srli         a4, s7, 8
                  srai         s2, t2, 30
                  slti         s9, s0, 1595
                  addi         gp, zero, 12 #init loop 0 limit
                  slti         a6, t0, -1980
                  sra          t1, s7, s10
                  srai         s1, gp, 22
                  slt          s9, s7, t2
sub_1_19_0_t:     slti         s11, t6, -40
                  xor          t2, s6, ra
                  sltiu        s2, s8, -665
                  sra          a7, zero, a1
                  xor          tp, s8, zero
                  xori         a2, a3, -314
                  addi         s5, s5, 7 #update loop 0 counter
                  blt          s5, gp, sub_1_19_0_t #branch for loop 0
                  slli         s10, s9, 7
                  addi         a4, zero, 9 #init loop 0 counter
                  srl          t4, t2, t1
                  add          s2, s3, s2
                  lui          a7, 989809
                  sub          a6, a1, s4
                  addi         s10, zero, -11 #init loop 0 limit
                  sltiu        s3, s4, 88
                  xori         s11, s6, 825
                  sltiu        ra, s3, -765
                  slli         s11, s6, 29
sub_1_0_0_t:      or           a1, s6, s4
                  andi         s9, t5, 543
                  xori         s3, s2, 1486
                  sll          s9, a2, t5
                  sltiu        s9, t0, -507
                  addi         a2, s1, 1380
                  srai         t4, s1, 2
                  andi         a2, s6, 102
                  addi         a4, a4, -6 #update loop 0 counter
                  lui          t4, 224906
                  add          s6, sp, t1
                  srl          t4, t6, s11
                  srl          a5, a2, a6
                  sltu         a6, t5, s9
                  ori          s2, s10, -591
                  bge          a4, s10, sub_1_0_0_t #branch for loop 0
                  addi         a5, a6, 1963
                  addi         a4, zero, 9 #init loop 0 counter
                  and          s3, a7, s0
                  xor          gp, tp, s4
                  addi         tp, zero, 6 #init loop 0 limit
                  sub          ra, gp, t0
                  sra          a1, a2, s1
                  or           ra, s9, ra
                  sll          s11, a5, s11
                  add          t0, s4, a1
                  srl          a6, s3, gp
                  addi         s6, a5, 1638
                  slti         a1, zero, -967
                  and          t0, a6, s10
                  srai         a7, gp, 9
                  sll          sp, a2, t0
                  srl          a0, s4, tp
sub_1_22_0_t:     ori          s7, s8, 343
                  addi         a4, a4, -3 #update loop 0 counter
                  and          s11, s8, zero
                  srai         a0, s6, 19
                  andi         t2, a4, -304
                  nop
                  sll          s10, t3, t3
                  bgeu         a4, tp, sub_1_22_0_t #branch for loop 0
                  slti         s1, a3, 1620
                  addi         a2, zero, 9 #init loop 0 counter
                  sub          s3, s6, t5
                  auipc        a1, 482494
                  auipc        gp, 416351
                  sub          t1, t4, s5
                  xor          s10, t5, a3
                  addi         s11, zero, 5 #init loop 0 limit
                  and          s0, s8, a3
sub_1_14_0_t:     andi         zero, a1, 74
                  sltiu        s0, s7, 575
                  ori          s10, s9, 980
                  slli         s7, s1, 8
                  xor          tp, s6, s11
                  auipc        a7, 337986
                  auipc        s7, 276231
                  andi         sp, s7, -299
                  addi         a2, a2, -2 #update loop 0 counter
                  sub          s7, s11, s9
                  nop
                  ori          s0, s4, -2031
                  sub          a5, zero, zero
                  sub          s7, s0, a3
                  sra          a4, t5, s0
                  srl          a4, t3, a3
                  slli         s0, s5, 4
                  bgeu         a2, s11, sub_1_14_0_t #branch for loop 0
                  xor          s7, a5, a6
                  addi         t1, zero, 10 #init loop 0 counter
                  slti         t2, s11, 399
                  addi         a2, zero, 9 #init loop 0 limit
sub_1_24_0_t:     xor          zero, s8, s2
                  and          tp, tp, t4
                  lui          a0, 515868
                  addi         t1, t1, -8 #update loop 0 counter
                  and          s11, s11, t0
                  xor          t6, s6, s11
                  auipc        t4, 190932
                  auipc        sp, 333148
                  sub          s11, a5, t3
                  lui          s6, 797094
                  bgeu         t1, a2, sub_1_24_0_t #branch for loop 0
                  slli         a1, s0, 20
                  addi         a3, zero, 8 #init loop 1 counter
                  srai         t4, t0, 24
                  addi         a0, zero, 8 #init loop 1 limit
                  andi         s0, s9, 1173
sub_1_1_1_t:      add          t2, s1, t2
                  or           s0, t4, s11
                  addi         a3, a3, -1 #update loop 1 counter
                  addi         gp, zero, -2 #init loop 0 counter
                  addi         s11, zero, 17 #init loop 0 limit
                  sub          s7, s4, s11
                  srai         s5, a6, 29
                  nop
sub_1_1_0_t:      sltiu        t0, tp, 1886
                  srl          tp, a5, zero
                  addi         gp, gp, 2 #update loop 0 counter
                  bltu         gp, s11, sub_1_1_0_t #branch for loop 0
                  bgeu         a3, a0, sub_1_1_1_t #branch for loop 1
                  sll          t6, a0, a2
                  addi         a6, zero, -4 #init loop 1 counter
                  auipc        a3, 199511
                  lui          s5, 913631
                  srli         s10, t1, 8
                  auipc        s2, 490277
                  slti         s3, s7, 1554
                  slti         t4, a7, -834
                  addi         t6, zero, 16 #init loop 1 limit
                  srli         s9, a0, 16
                  xor          s4, s1, a6
sub_1_13_1_t:     add          s2, a1, a1
                  addi         a6, a6, 3 #update loop 1 counter
                  srai         sp, s1, 7
                  ori          s1, t3, 1060
                  srli         a4, a3, 0
                  addi         gp, zero, 2 #init loop 0 counter
                  sra          tp, a3, t0
                  addi         ra, zero, 14 #init loop 0 limit
sub_1_13_0_t:     slti         s3, a0, -903
                  lui          a3, 75136
                  addi         gp, gp, 6 #update loop 0 counter
                  ori          zero, a7, 1510
                  bltu         gp, ra, sub_1_13_0_t #branch for loop 0
                  add          s0, s11, s9
                  slt          a2, s9, gp
                  bltu         a6, t6, sub_1_13_1_t #branch for loop 1
                  sub          a3, s6, s3
                  addi         t4, zero, 8 #init loop 1 counter
                  addi         a3, zero, 12 #init loop 1 limit
sub_1_9_1_t:      addi         s5, t0, 464
                  srai         a0, zero, 14
                  addi         t4, t4, 2 #update loop 1 counter
                  add          s9, a0, t6
                  add          s6, ra, a3
                  addi         gp, zero, 5 #init loop 0 counter
                  sra          s0, s1, s10
                  srl          a1, t3, zero
                  sub          a0, s4, s3
                  addi         s1, zero, -7 #init loop 0 limit
                  lui          s5, 963136
                  slli         s4, s5, 12
                  slt          s3, s4, a7
                  sra          s6, s1, a7
sub_1_9_0_t:      nop
                  slti         t1, a7, -1134
                  xor          s10, t3, s2
                  addi         gp, gp, -3 #update loop 0 counter
                  beq          gp, s1, sub_1_9_0_t #branch for loop 0
                  and          t2, s11, a3
                  sll          a2, t4, s6
                  sll          s6, s6, t5
                  lui          a2, 1006579
                  bne          t4, a3, sub_1_9_1_t #branch for loop 1
                  or           s5, s2, s11
                  addi         s4, zero, 9 #init loop 0 counter
                  sll          t4, t6, sp
                  nop
                  addi         s2, zero, -7 #init loop 0 limit
                  or           sp, t6, sp
sub_1_16_0_t:     ori          s6, s1, -1621
                  addi         s4, s4, -9 #update loop 0 counter
                  bge          s4, s2, sub_1_16_0_t #branch for loop 0
                  slt          a4, t5, s10
                  addi         a4, zero, 8 #init loop 1 counter
                  auipc        a0, 614654
                  slt          s7, s8, a4
                  addi         s10, zero, 13 #init loop 1 limit
                  or           s7, t0, s3
                  addi         sp, t1, -968
sub_1_6_1_t:      and          s5, a2, sp
                  addi         a4, a4, 10 #update loop 1 counter
                  addi         a3, zero, 3 #init loop 0 counter
                  lui          s11, 289037
                  addi         s4, zero, 4 #init loop 0 limit
                  sra          a5, s11, s10
sub_1_6_0_t:      or           a2, gp, s9
                  lui          s9, 275677
                  addi         a3, a3, 6 #update loop 0 counter
                  and          a0, a7, t3
                  srl          a6, zero, tp
                  blt          a3, s4, sub_1_6_0_t #branch for loop 0
                  blt          a4, s10, sub_1_6_1_t #branch for loop 1
                  andi         t6, t0, 1977
                  addi         a2, zero, -9 #init loop 0 counter
                  sltu         s5, s4, t4
                  srai         s3, t0, 30
                  andi         s2, a7, -1504
                  slli         a6, s9, 0
                  nop
                  auipc        s1, 814944
                  addi         ra, zero, 1 #init loop 0 limit
                  addi         s3, t5, 1079
                  sltiu        s9, t6, -529
sub_1_8_0_t:      sltu         s11, s7, s3
                  lui          s4, 658922
                  addi         zero, tp, -1614
                  addi         a2, a2, 10 #update loop 0 counter
                  ori          s6, a2, 807
                  and          tp, zero, a0
                  slli         s6, s9, 18
                  and          t6, a0, s2
                  blt          a2, ra, sub_1_8_0_t #branch for loop 0
                  xor          a4, s9, t3
                  addi         t2, zero, 8 #init loop 0 counter
                  addi         s0, zero, 3 #init loop 0 limit
sub_1_15_0_t:     slti         a5, t2, 1237
                  addi         t2, t2, -4 #update loop 0 counter
                  bge          t2, s0, sub_1_15_0_t #branch for loop 0
                  andi         s10, t1, 1683
                  add          gp, t0, s6
                  srli         zero, t5, 24
                  slt          s3, s0, s4
                  slt          a3, ra, a0
                  bltu         a1, s10, 5f
5:                srai         s4, zero, 2
                  bltu         s2, s2, 12f
                  srli         t0, s4, 15
                  slti         zero, a1, -648
                  bgeu         t1, a5, 29f
                  sll          zero, s11, a4
                  sll          a6, a1, s10
12:               blt          s4, t1, 18f
                  slti         s10, s1, 939
                  beq          a7, s6, 16f
                  add          tp, s2, t3
16:               bge          s3, t1, 32f
                  bltu         s8, sp, 32f
18:               auipc        zero, 924863
                  bgeu         s0, a2, 21f
                  xori         s5, s0, 1895
21:               sra          s9, s9, a3
                  sltiu        sp, s9, 498
                  bge          s9, s1, 32f
                  slt          s2, zero, a4
                  srli         a2, a0, 12
                  sll          a7, s9, tp
                  andi         a1, s9, 1488
                  lui          gp, 525485
29:               blt          s3, s2, 42f
                  beq          s9, s9, 33f
                  ori          s10, t2, 827
32:               xor          ra, s0, t0
33:               srai         s0, s4, 26
                  blt          ra, a5, 35f
35:               beq          t2, a3, 49f
                  srli         s6, a1, 5
                  xori         s6, a0, 1872
                  lui          a2, 30016
                  sltiu        s3, t1, -1696
                  bne          s7, t6, 43f
                  slti         s6, zero, -263
42:               or           a7, gp, s2
43:               auipc        s10, 972119
                  slti         t0, gp, 545
                  bne          s8, t6, 46f
46:               slti         s6, t4, 1110
                  srli         a5, t3, 1
                  srai         a6, a4, 29
49:               ori          s9, s3, -191
                  srai         a4, gp, 4
                  bgeu         t3, s11, 54f
                  and          a2, a1, s7
                  blt          t3, zero, 59f
54:               andi         s7, gp, 1260
                  srl          s4, ra, t4
                  sltu         a1, s7, a3
                  addi         s9, t0, -288
                  nop
59:               sll          s4, t3, zero
                  srai         a0, s7, 4
                  srli         t1, s6, 17
                  bltu         s9, sp, 70f
                  srl          a6, s10, a2
                  xori         s1, t1, -1513
                  bltu         a3, ra, 67f
                  nop
67:               sra          t0, t3, t6
                  sra          a1, s9, s1
                  sra          t6, a5, a4
70:               bgeu         zero, a6, 84f
                  slti         s2, t5, -1060
                  nop
                  srai         sp, s10, 16
                  sltu         a3, gp, s11
                  addi         t6, sp, 569
                  srai         a1, s4, 11
                  bltu         s11, ra, 83f
                  srai         t2, s8, 23
                  xori         t2, s0, 614
                  slti         s10, t1, -768
                  add          sp, s5, s1
                  sra          zero, t4, a3
83:               xor          s10, a1, s5
84:               blt          s7, s1, 102f
                  srl          s1, a1, t5
                  andi         t2, s4, 1023
                  nop
                  bgeu         t6, s11, 100f
                  or           t6, s8, a6
                  nop
                  blt          a6, s5, 96f
                  slt          t6, a4, zero
                  sra          gp, s3, s9
                  slt          a4, s1, s2
                  bgeu         t5, a0, 108f
96:               bgeu         t2, t6, 113f
                  lui          s0, 86127
                  sll          a5, t1, s5
                  addi         s10, s4, -895
100:              or           t0, zero, a7
                  sra          s0, s2, s0
102:              blt          s5, a2, 119f
                  add          s2, a2, s10
                  and          s7, s10, s5
                  xori         a0, zero, -1908
                  bne          a5, t6, 122f
                  bgeu         t6, s5, 119f
108:              sub          a2, a7, ra
                  or           t6, s11, sp
                  xor          s6, gp, a5
                  slli         a0, gp, 14
                  or           s11, s2, s7
113:              addi         s1, s3, 701
                  andi         ra, a4, -1857
                  sll          sp, a1, a5
                  sll          t2, s9, s9
                  sltiu        s7, ra, -1235
                  lui          ra, 663538
119:              sra          s5, a3, a7
                  addi         s2, gp, -390
                  sltu         t4, s3, t3
122:              srli         tp, a2, 27
                  bne          a2, t5, 136f
                  slli         a1, s8, 15
                  beq          a1, t4, 145f
                  sra          s4, s1, gp
                  blt          s4, s11, 130f
                  bge          s8, a6, 133f
                  bgeu         s11, s4, 135f
130:              and          s7, t3, a7
                  bne          a3, t4, 147f
                  andi         t0, a2, -11
133:              bltu         s10, t6, 136f
                  srli         zero, t3, 12
135:              bge          a4, sp, 153f
136:              and          sp, a7, ra
                  beq          zero, t2, 150f
                  andi         s11, ra, -1115
                  or           t4, a4, s4
                  sra          a7, a2, a7
                  xori         s5, t3, 1971
                  and          a6, a6, a2
                  or           a0, s7, s8
                  slt          s4, a5, s3
145:              bne          s0, a1, 148f
                  slli         sp, gp, 17
147:              sra          t2, s9, t3
148:              sra          s0, a7, t4
                  sll          s4, sp, s11
150:              addi         a6, t5, 1674
                  nop
                  beq          s6, s9, 168f
153:              slti         s7, t0, -1808
                  slli         s9, t5, 10
                  ori          a2, s10, 442
                  and          t0, t1, a6
                  bgeu         a4, sp, 158f
158:              bge          a5, s5, 164f
                  and          t4, a3, a5
                  ori          s9, t1, -840
                  nop
                  sub          gp, t4, gp
                  add          s3, s8, s0
164:              srl          a4, s1, t5
                  bge          t5, t0, 180f
                  nop
                  bne          s6, s7, 176f
168:              slli         a6, t3, 1
                  sltiu        s2, a0, -951
                  slt          a4, s2, a0
                  blt          a4, t1, 185f
                  xor          a6, s5, t6
                  bge          t2, sp, 174f
174:              sll          t1, s9, s10
                  bne          a3, t0, 192f
176:              bge          s7, s5, 178f
                  xori         zero, s1, 709
178:              add          a0, t5, a6
                  slt          a5, a5, t6
180:              srli         s6, t0, 1
                  srli         t0, t0, 12
                  slt          s9, t3, zero
                  blt          s4, a7, 195f
                  or           a2, a4, s4
185:              bge          t4, a6, 198f
                  sltiu        s7, t2, -487
                  srl          s9, s3, a0
                  beq          a7, t0, 196f
                  lui          a2, 180565
                  sll          a7, a6, a1
                  andi         a6, s0, -1654
192:              slti         a7, s3, 810
                  xori         s4, s8, -1219
                  srli         t0, s10, 12
195:              bltu         t2, sp, 197f
196:              bne          s7, s7, 198f
197:              nop
198:              srli         s6, t3, 22
                  slt          a7, t4, s9
                  addi         t4, zero, 3 #init loop 0 counter
                  addi         s4, zero, -13 #init loop 0 limit
                  srl          s3, s10, t0
sub_1_12_0_t:     xor          t6, t3, s4
                  add          a7, s0, gp
                  nop
                  addi         t4, t4, -8 #update loop 0 counter
                  sltu         a7, t6, s8
                  andi         s6, t4, 148
                  andi         a6, s6, 75
                  xor          s11, t5, s4
                  sll          gp, t3, t0
                  add          s2, s9, a1
                  beq          t4, s4, sub_1_12_0_t #branch for loop 0
                  andi         a3, a0, -482
                  srai         s6, a1, 4
                  slli         a2, t0, 16
                  srai         t4, ra, 5
                  xor          t2, s9, s4
                  nop
                  or           sp, a7, s9
                  bge          s10, s11, 212f
                  blt          a5, s6, 208f
208:              sra          tp, s11, s4
                  beq          s2, s10, 223f
                  add          s1, s9, s5
                  bgeu         a0, s11, 217f
212:              or           t4, a0, t4
                  beq          ra, sp, 225f
                  slti         t1, tp, 667
                  sll          t1, s11, a4
                  beq          tp, s10, 233f
217:              sra          s5, t0, s8
                  auipc        a2, 680764
                  srli         s0, a1, 12
                  sltiu        sp, sp, 2009
                  sltiu        a6, t2, -285
                  bltu         t3, s8, 235f
223:              slt          sp, a0, tp
                  sltiu        s2, t5, -785
225:              xor          t4, t5, gp
                  blt          a6, a2, 240f
                  sra          a2, s10, zero
                  add          a7, a1, t2
                  bge          a7, s7, 230f
230:              srli         s11, tp, 2
                  sltiu        a4, t5, -1111
                  beq          t3, s0, 235f
233:              or           s2, a2, s7
                  bge          s7, a2, 240f
235:              beq          a5, s7, 238f
                  slti         t6, gp, -614
                  beq          t4, s7, 253f
238:              srli         s6, tp, 30
                  bne          sp, gp, 251f
240:              andi         sp, t0, -336
                  bne          s2, t3, 254f
                  srli         a3, a5, 18
                  beq          s6, s9, 251f
                  add          s10, s2, a1
                  andi         zero, t1, 1581
                  srl          t4, a3, t1
                  srai         a2, t3, 18
                  lui          t1, 335617
                  and          s9, s11, sp
                  xori         tp, s3, 1235
251:              auipc        a5, 870412
                  sll          a2, a2, s4
253:              xori         t2, t1, 197
254:              nop
                  slli         gp, a3, 26
                  add          s6, t4, s11
                  bgeu         s2, a0, 271f
                  or           a2, t2, t5
                  beq          s0, a0, 279f
                  bltu         s9, t5, 272f
                  sll          s4, s3, a3
                  blt          s2, zero, 277f
                  xori         t4, s5, 1870
                  ori          s3, s6, 521
                  auipc        gp, 241704
                  slt          s11, zero, ra
                  xori         s4, a0, -673
                  bgeu         tp, a2, 286f
                  ori          s3, s7, 679
                  auipc        t6, 614854
271:              slt          a1, s11, t3
272:              lui          t2, 371534
                  add          t6, s6, t4
                  slti         s5, t3, -817
                  and          s7, s1, t4
                  and          a2, a7, s5
277:              addi         t2, gp, 386
                  add          sp, t6, s10
279:              slti         s0, a0, -1097
                  bgeu         s11, t4, 285f
                  or           t1, t2, a3
                  xori         t0, a3, -752
                  lui          zero, 944302
                  slli         sp, t5, 14
285:              blt          a5, a3, 291f
286:              ori          s6, t6, 1696
                  slli         s10, a5, 8
                  bge          s1, a7, 301f
                  add          s6, a4, a0
                  sub          gp, gp, s9
291:              xor          t2, s11, s11
                  sltiu        s7, tp, 1079
                  xor          t4, s10, t2
                  sll          s4, s1, s1
                  srl          a6, tp, a3
                  sub          s1, t4, s8
                  xor          s4, a6, t0
                  ori          t2, sp, 159
                  bltu         t0, a6, 316f
                  addi         a3, zero, 0 #init loop 0 counter
                  and          a2, sp, t1
                  addi         s4, zero, 1 #init loop 0 limit
                  slti         a5, t4, -6
sub_1_5_0_t:      and          a0, a0, s10
                  sll          s5, zero, t1
                  xori         s6, s8, 481
                  srai         t4, s0, 12
                  sra          gp, a7, s1
                  addi         a3, a3, 8 #update loop 0 counter
                  slt          s1, s3, tp
                  nop
                  andi         t6, s10, 1761
                  auipc        ra, 795502
                  or           s10, sp, gp
                  lui          t4, 1036241
                  sub          s1, t1, zero
                  sltiu        s3, a7, -1075
                  auipc        sp, 397864
                  slli         a7, sp, 16
                  sub          s11, s9, t0
                  srl          t2, t3, a3
                  slli         a6, gp, 3
                  bltu         a3, s4, sub_1_5_0_t #branch for loop 0
                  and          a7, s4, gp
                  sltu         a6, s10, a6
301:              and          t2, tp, s6
                  slt          s3, s10, s6
                  add          s5, s3, s7
                  lui          s11, 891492
                  andi         t2, t5, -68
                  sltu         s10, a0, sp
                  or           s0, sp, s5
                  sltu         a2, zero, s3
                  bltu         s10, s6, 322f
                  sltiu        s2, gp, -1691
                  sra          a3, t5, t1
                  sll          a6, t1, t1
                  bltu         s0, s10, 315f
                  srl          t6, s4, a1
315:              bgeu         s6, s4, 316f
316:              slli         a1, s10, 27
                  srai         s2, a6, 6
                  slli         a0, s8, 21
                  sltu         a7, a7, a6
                  blt          a5, a2, 329f
                  bne          s3, s3, 338f
322:              blt          gp, s10, 338f
                  beq          s11, s11, 329f
                  xori         tp, s10, 716
                  sra          s10, t2, t1
                  and          a1, a0, a0
                  slti         s9, s10, 599
                  sub          s6, a4, s6
329:              sra          a4, s2, a0
                  blt          gp, t3, 332f
                  lui          s6, 636649
332:              srl          s6, a3, s6
                  and          t0, s11, a0
                  and          s6, a0, a5
                  sltiu        s11, s0, 1771
                  auipc        s10, 359905
                  sub          t0, s10, t4
338:              bltu         s0, s0, 340f
                  slli         zero, ra, 10
340:              bgeu         s10, s3, 346f
                  beq          s9, t5, 342f
342:              sub          t6, a1, t4
                  lui          t1, 149552
                  sltu         t1, a6, tp
                  lui          s4, 1018870
346:              sltu         ra, ra, s11
                  sltiu        s10, zero, -992
                  andi         ra, s9, -2035
                  srli         tp, a4, 1
                  add          gp, a3, a5
                  sltu         a4, a4, s6
                  addi         a3, a7, -1841
                  auipc        s0, 610928
                  bgeu         t3, s1, 357f
                  slli         s5, sp, 29
                  bltu         ra, a6, 364f
357:              sub          s10, t4, s7
                  xori         tp, s0, 260
                  bge          a2, a3, 361f
                  slti         a5, s8, -1345
361:              blt          ra, s3, 378f
                  nop
                  sra          a5, tp, a3
364:              lui          t0, 557603
                  addi         tp, t3, -1796
                  lui          t2, 31872
                  bne          s0, s6, 370f
                  lui          a6, 729202
                  bne          s8, a0, 387f
370:              srl          a0, t4, tp
                  beq          a2, a7, 388f
                  nop
                  sra          a6, s2, zero
                  srli         s7, t2, 9
                  nop
                  addi         s11, s3, -69
                  auipc        t6, 677893
378:              add          t2, s3, sp
                  srl          s5, s10, ra
                  sltiu        s4, sp, 1623
                  addi         s5, gp, -1130
                  slti         a0, s2, 1642
                  bne          tp, s6, 386f
                  beq          a7, t0, 386f
                  bne          s2, ra, 386f
386:              sra          t1, s1, s2
387:              lui          s1, 815339
388:              nop
                  sub          s5, t6, s0
                  slti         s6, t5, 566
                  bge          t0, a3, 393f
                  sltiu        s1, s2, 261
393:              andi         s5, s4, -100
                  sltu         s6, t4, a6
                  blt          t6, t2, 401f
                  bne          t2, s9, 409f
                  srl          a3, s11, a2
                  srli         s6, s1, 12
                  sra          sp, ra, a6
                  sub          a7, a3, s0
401:              sltiu        a4, s6, -2014
                  blt          a1, s9, 407f
                  slti         s3, a0, -184
                  and          t6, s8, t0
                  sltu         t2, t5, t1
                  slli         t4, s8, 12
407:              add          s5, t3, s4
                  blt          a1, a6, 424f
409:              auipc        a3, 283087
                  xor          s10, a7, a7
                  lui          a3, 316336
                  sll          a4, a4, a2
                  add          a3, t0, gp
                  bgeu         a6, s1, 434f
                  sra          s3, s6, t1
                  srai         a3, zero, 9
                  add          zero, a7, t3
                  ori          s7, a7, 1149
                  bgeu         a0, a7, 432f
                  blt          s1, s5, 421f
421:              ori          tp, s3, 891
                  and          a1, t2, s7
                  sub          t6, sp, s8
424:              sll          s9, t2, s4
                  sll          tp, a2, a1
                  srl          s1, a1, s5
                  slli         t1, s5, 2
                  srli         s3, s3, 1
                  lui          s2, 101884
                  slli         zero, t6, 4
                  blt          a5, ra, 434f
432:              sub          s11, s11, s10
                  bge          a0, s6, 434f
434:              auipc        s3, 881998
                  slti         s1, t4, 101
                  sra          s3, tp, s5
                  slt          a1, t0, t0
                  slli         s7, sp, 6
                  lui          s5, 76148
                  bge          t3, tp, 446f
                  slli         a1, a1, 10
                  nop
                  ori          a4, a3, -1247
                  and          s3, a6, tp
                  ori          a7, t6, -1782
446:              sra          t1, a7, t5
                  sltu         a5, s1, s11
                  and          a2, s8, s7
                  lui          a6, 168433
                  ori          sp, t2, 916
                  xori         s1, s4, -1243
                  sub          a3, s11, s7
                  auipc        s0, 653757
                  bltu         s4, t3, 466f
                  blt          s6, gp, 469f
                  xor          a7, tp, t6
                  bltu         t1, a1, 473f
                  add          s6, a1, a6
                  sub          s0, t2, s10
                  srai         a7, s3, 11
                  xori         s2, s8, 577
                  ori          tp, s9, 1365
                  andi         s3, t0, -1013
                  add          t2, a6, t1
                  bne          t2, zero, 474f
466:              slti         a3, t0, 1655
                  ori          t2, a6, -1700
                  srli         a3, t3, 22
469:              add          s1, zero, s6
                  sub          sp, a1, s4
                  sub          a4, t0, s11
                  slti         s1, t1, -460
473:              xori         sp, a7, -82
474:              slti         t6, s11, 1231
                  blt          ra, s1, 487f
                  nop
                  beq          t4, sp, 483f
                  nop
                  srli         zero, t6, 4
                  add          t1, t4, s10
                  lui          gp, 461096
                  xor          s10, t1, t5
483:              bge          s2, t3, 498f
                  sub          s0, t4, a0
                  sltu         s0, gp, s9
                  slli         t6, ra, 0
487:              beq          t1, a5, 500f
                  blt          gp, a7, 494f
                  bge          t6, a5, 503f
                  or           s3, s7, s9
                  slti         a7, s1, -43
                  bne          s8, s5, 498f
                  xori         s1, s3, -78
494:              or           t1, a2, t5
                  srai         s6, s1, 20
                  lui          s3, 1011373
                  bge          a4, t0, 503f
498:              bgeu         t0, s10, 501f
                  bgeu         t2, sp, 505f
500:              beq          s2, s8, 502f
501:              xori         s0, t5, 943
502:              srl          a7, a3, s0
503:              bne          ra, tp, 520f
                  and          a6, s3, a4
505:              slli         s4, a2, 24
                  andi         t1, s3, 378
                  slt          s7, t6, a4
                  lui          a0, 861776
                  bne          gp, t6, 523f
                  bge          a6, t6, 530f
                  slt          t6, a6, s6
                  nop
                  sub          t0, t2, s7
                  sltiu        s6, a5, -2036
                  ori          t0, s0, -351
                  auipc        s1, 793221
                  xor          zero, s4, s9
                  xori         s4, t4, -1326
                  bgeu         s9, s5, 521f
520:              srl          s1, a1, a7
521:              xor          a2, s2, t5
                  bne          t5, a0, 539f
523:              bltu         gp, t1, 524f
524:              sltiu        t6, t2, 218
                  srai         s4, t5, 30
                  sll          a0, s5, a5
                  auipc        a0, 422829
                  sll          t4, a7, t6
                  nop
530:              andi         t2, a5, 1749
                  srli         a4, gp, 21
                  bne          s4, gp, 537f
                  bne          t4, a2, 547f
                  or           s0, s11, s2
                  srai         a2, t5, 11
                  blt          s4, tp, 545f
537:              andi         s4, s3, 1445
                  add          tp, zero, a4
539:              sll          t6, a0, a7
                  and          a6, t0, s8
                  xori         t2, s7, -1637
                  xori         gp, s7, 916
                  add          s2, s9, a7
                  sra          gp, ra, s4
545:              sra          a0, s9, a5
                  nop
547:              or           s5, s2, t5
                  lui          ra, 182171
                  slli         s0, s7, 31
                  and          t4, s5, s0
                  ori          s0, zero, 1451
                  xor          a6, a7, s0
                  slti         a4, a3, -1140
                  slt          s11, t4, s3
                  nop
                  blt          ra, t4, 559f
                  srli         s1, t4, 21
                  srli         ra, t5, 19
559:              lui          s1, 854583
                  srl          s3, sp, ra
                  sub          s10, s6, s7
                  sra          tp, s6, t0
                  ori          zero, s8, -369
                  sll          gp, a5, a4
                  bne          sp, s1, 581f
                  and          s1, s9, t0
                  xor          a6, s7, t1
                  bgeu         s7, s3, 581f
                  beq          t3, a1, 582f
                  beq          s6, t0, 582f
                  beq          s7, s10, 572f
572:              ori          s5, gp, 687
                  beq          s2, s4, 586f
                  slli         s9, tp, 1
                  or           sp, a4, s7
                  sltu         t0, a0, s2
                  beq          zero, s2, 578f
578:              bne          s5, s4, 596f
                  sltu         s1, s3, s0
                  auipc        s7, 378396
581:              bltu         gp, ra, 583f
582:              addi         a4, gp, 1943
583:              sltiu        a1, zero, 665
                  bne          s0, t6, 590f
                  srl          t0, zero, s3
586:              srai         s6, s10, 9
                  sub          s2, sp, sp
                  xori         a0, a2, 1711
                  srli         a2, s4, 4
590:              srl          t4, a5, a2
                  bge          s8, s10, 607f
                  add          s6, s4, t1
                  sub          a4, ra, ra
                  lui          s0, 616108
                  lui          a6, 793292
596:              add          t2, a6, t4
                  nop
                  blt          gp, a1, 613f
                  blt          gp, t0, 602f
                  sll          ra, ra, s4
                  bgeu         s4, a6, 613f
602:              auipc        t0, 544735
                  or           a0, t2, zero
                  add          a5, ra, tp
                  srli         sp, a6, 22
                  or           s10, a1, ra
607:              ori          a7, s3, 273
                  ori          ra, s1, -540
                  slli         s5, s6, 12
                  lui          sp, 376998
                  bne          s11, t4, 619f
                  add          t2, a3, t6
613:              or           a4, a6, t4
                  addi         s2, t2, 1672
                  srli         s11, t3, 27
                  sub          s6, a1, a0
                  ori          zero, gp, -566
                  andi         s2, tp, -396
619:              sltiu        a5, a5, -730
                  blt          s4, gp, 632f
                  blt          a3, t2, 622f
622:              srl          a2, s8, s10
                  bltu         ra, tp, 636f
                  beq          a5, sp, 630f
                  srli         a5, t0, 15
                  add          sp, s1, s4
                  and          s3, s1, t5
                  add          s2, s7, a6
                  slli         s0, sp, 12
630:              sra          t2, gp, s1
                  lui          s11, 905678
632:              sltiu        t0, s11, -1885
                  ori          a7, t3, -615
                  bge          s10, a2, 650f
                  add          s1, ra, s11
636:              addi         sp, gp, -2009
                  xor          s4, s3, t4
                  slt          sp, t1, s10
                  and          s11, a5, ra
                  beq          s3, tp, 655f
                  ori          s3, t4, -270
                  srai         s4, t0, 4
                  bltu         t5, s11, 644f
644:              srai         tp, t3, 17
                  slt          s4, s9, s4
                  srl          s2, s10, a1
                  sltiu        tp, ra, -1545
                  bltu         zero, t2, 660f
                  auipc        a2, 500428
650:              beq          t2, zero, 652f
                  beq          tp, zero, 665f
652:              bltu         ra, a3, 665f
                  or           t1, zero, zero
                  and          a1, a5, s7
655:              ori          a6, gp, 162
                  lui          a2, 86584
                  bltu         s8, a2, 663f
                  xor          s10, a2, t4
                  sll          s2, t3, a2
660:              ori          t1, t1, -1742
                  sra          a4, a4, a6
                  add          sp, s7, t2
663:              xori         a1, zero, 147
                  bne          a2, a4, 678f
665:              slli         a6, a4, 20
                  nop
                  bge          t5, gp, 672f
                  slti         s6, s8, -691
                  sll          a6, zero, s11
                  bge          t3, s10, 678f
                  auipc        zero, 646383
672:              beq          ra, a6, 681f
                  or           s3, a1, a0
                  bgeu         s9, t4, 680f
                  srl          s6, s9, t3
                  slt          s10, a7, t0
                  slt          tp, s11, a1
678:              srli         a6, s5, 13
                  slli         s10, s5, 21
680:              ori          s2, s5, 1742
681:              sra          s3, a5, sp
                  or           tp, s5, a7
                  bge          zero, t2, 701f
                  or           tp, a2, a0
                  bge          t6, ra, 701f
                  ori          t0, t2, -1934
                  ori          a0, t1, -524
                  sub          gp, t4, t3
                  ori          t0, a7, 1630
                  bge          s11, s4, 707f
                  andi         s11, t0, 1176
                  bgeu         a1, t4, 695f
                  xor          a0, a6, a3
                  sll          s7, t6, s6
695:              sra          t0, a7, s2
                  sltu         s3, a7, t2
                  srl          gp, t5, s8
                  bgeu         s8, s10, 700f
                  andi         t2, t0, -1607
700:              sll          t4, t2, gp
701:              bge          s4, s9, 707f
                  sll          a5, t2, s2
                  sll          sp, a6, gp
                  blt          s1, s9, 706f
                  srai         s7, sp, 2
706:              slti         a1, t6, 44
707:              add          t6, s10, a7
                  sltiu        a2, t6, -783
                  lui          t0, 152914
                  bne          gp, a2, 730f
                  sub          s6, a2, s7
                  sltiu        s3, sp, -1684
                  xor          zero, s6, s5
                  auipc        t2, 162607
                  bgeu         s7, s5, 728f
                  addi         a3, ra, -764
                  addi         t4, t6, -944
                  sltiu        s0, s4, 1992
                  srai         sp, s8, 25
                  ori          ra, ra, -273
                  andi         s0, s11, 1408
                  ori          a6, tp, 721
                  add          a6, a2, t6
                  add          tp, s7, s0
                  add          s1, t3, t4
                  xori         gp, t1, -939
                  sltu         s2, t3, a7
728:              sra          s5, a6, a3
                  slt          t0, s8, a1
730:              andi         sp, gp, 982
                  bltu         s3, s6, 734f
                  srl          zero, s6, t4
                  blt          sp, t1, 734f
734:              lui          a5, 788348
                  srai         s3, sp, 0
                  bne          s10, s7, 739f
                  and          a7, a3, s1
                  ori          tp, a3, -1880
739:              xori         s6, t0, 1962
                  xor          a6, t0, t6
                  xori         a4, t5, -1895
                  srl          s10, a0, a7
                  srl          tp, sp, s6
                  slt          a5, a3, a6
                  bltu         s7, s2, 762f
                  srl          a0, s11, a3
                  slt          t2, s3, a6
                  beq          s3, a6, 750f
                  xori         s5, s7, 1273
750:              blt          s9, sp, 753f
                  bgeu         ra, tp, 768f
                  slt          a4, a3, a7
753:              blt          t4, s4, 759f
                  addi         t1, s5, 1236
                  sub          a1, a3, a7
                  xori         a3, s11, 562
                  sll          s5, t6, ra
                  slti         s1, a6, -828
759:              and          a5, ra, a3
                  xori         t6, a7, -1735
                  slti         a6, s3, 1725
762:              sub          t2, ra, t2
                  nop
                  nop
                  nop
                  sltiu        t4, a1, 1335
                  bltu         s4, tp, 783f
768:              bne          a5, s11, 782f
                  xor          s2, t6, ra
                  slli         a5, t4, 9
                  bge          s2, tp, 783f
                  sra          s4, ra, t0
                  bne          t3, s1, 781f
                  bgeu         s11, t2, 787f
                  bne          a1, gp, 781f
                  beq          s11, t0, 781f
                  ori          t4, s8, 1339
                  srai         t0, s2, 31
                  lui          t2, 1037617
                  addi         s6, ra, -957
781:              add          t6, a4, s10
782:              sra          tp, a5, s1
783:              addi         a2, a7, -2022
                  and          s4, a2, s8
                  auipc        tp, 581354
                  xor          t6, s5, s8
787:              andi         ra, a2, -608
                  sll          s0, a7, t4
                  or           a4, t4, s10
                  nop
                  addi         s1, gp, 1660
                  slt          s4, s10, a0
                  add          zero, t3, a6
                  bge          a1, s11, 809f
                  or           tp, s3, s10
                  sra          zero, zero, s10
                  blt          a6, t2, 800f
                  slt          a7, t6, a1
                  slli         a2, s5, 4
800:              srai         s9, s8, 2
                  lui          tp, 808651
                  addi         s7, zero, 8 #init loop 0 counter
                  sra          t1, s9, sp
                  addi         a4, s9, -670
                  addi         t4, zero, 5 #init loop 0 limit
                  add          zero, t1, s9
                  addi         s0, t0, 1755
                  slt          t6, a6, sp
                  slli         s11, s4, 2
                  slti         a2, a4, 1621
                  srl          s1, s9, a4
                  ori          ra, a0, 10
sub_1_3_0_t:      auipc        a6, 382869
                  sra          a7, tp, t1
                  sltiu        s6, gp, 775
                  andi         a0, t4, 642
                  addi         s7, s7, -4 #update loop 0 counter
                  nop
                  slti         gp, s2, 545
                  sra          ra, s9, a6
                  srl          gp, s2, zero
                  xor          s4, t1, a7
                  srl          ra, a2, a0
                  srl          sp, s2, t2
                  add          a2, s11, a4
                  bgeu         s7, t4, sub_1_3_0_t #branch for loop 0
                  sltiu        a6, t3, 274
                  blt          a4, s0, 811f
                  and          s0, tp, s11
                  slt          a1, a0, a5
                  add          a6, sp, s8
                  sltu         a3, a2, gp
                  sltiu        a0, a2, 1274
                  andi         s3, t6, 1788
809:              sub          a5, s7, s5
                  bge          t2, s6, 811f
811:              bgeu         sp, t3, 812f
812:              bne          a2, ra, 830f
                  xori         s10, zero, -89
                  and          t1, a0, s7
                  sub          a2, sp, a6
                  slt          a5, s8, a7
                  slt          t2, t1, s8
                  auipc        t2, 21736
                  srli         t0, gp, 8
                  xori         zero, s10, -1657
                  sll          s7, s7, a2
                  srai         s3, t5, 2
                  bltu         a1, ra, 839f
                  bgeu         a6, t3, 830f
                  sub          zero, t2, s2
                  auipc        a0, 852904
                  add          sp, a1, a2
                  blt          a4, s0, 841f
                  ori          ra, a5, -1170
830:              beq          s8, tp, 832f
                  add          s5, a6, t1
832:              sltu         s2, t1, s1
                  bne          s9, t2, 850f
                  bge          s2, a5, 846f
                  nop
                  slt          a0, a4, a0
                  xori         s11, s5, -1186
                  srli         s11, ra, 8
839:              blt          a1, tp, 859f
                  bgeu         s10, s9, 854f
841:              xori         a6, s7, -1520
                  xori         a1, sp, -1792
                  srli         s2, s8, 3
                  or           s7, s3, a5
                  sltiu        s11, s6, -541
846:              slt          a5, ra, s6
                  lui          t0, 642045
                  lui          a7, 221614
                  slti         ra, s1, -30
                  lui          a4, 890925
                  addi         ra, t4, -90
                  auipc        gp, 901743
                  ori          a6, a1, -168
                  or           s3, sp, s2
sub_1_j4:         jal          a2, sub_3 #jump sub_1 -> sub_3
                  sll          t1, sp, a3
                  srli         s6, s3, 17
                  ori          ra, ra, -1208
850:              srai         t1, gp, 21
                  and          s4, sp, a4
                  beq          t6, a6, 865f
                  xor          s6, a2, t4
854:              and          a7, s7, a2
                  beq          a6, ra, 858f
                  xor          t1, a1, s0
                  blt          s2, gp, 859f
858:              srl          a3, a0, t6
859:              slt          s10, tp, a3
                  srai         t2, t2, 19
                  slt          gp, s2, t2
                  and          s6, sp, s2
                  slti         a7, a0, 1941
                  slt          a4, s1, s8
865:              bgeu         t6, s7, 871f
                  srli         s4, zero, 28
                  srl          s1, t6, a4
                  add          s4, s1, t5
                  and          ra, a5, s4
                  bltu         a2, s3, 871f
871:              xori         s9, a7, 1553
                  add          a2, a4, s10
                  auipc        s11, 322690
                  xor          s6, a3, sp
                  andi         a7, t5, -1532
                  blt          t4, gp, 885f
                  srli         gp, zero, 7
                  slti         s3, s4, -236
                  srai         tp, s5, 30
                  slt          zero, s7, t6
                  slti         s0, a1, 1376
                  srl          s5, t2, a6
                  bge          sp, s9, 885f
                  addi         a5, t4, 1323
885:              srl          t4, a2, t0
                  ori          t4, t4, -1880
                  addi         s3, t0, -162
                  xori         gp, s4, -580
                  slli         a3, s7, 6
                  srl          s2, t1, a1
                  andi         s0, a5, 563
                  sll          s2, a1, a6
                  xor          tp, t4, a7
                  xori         a1, a1, -720
                  ori          a5, a7, 1264
                  slti         s3, s0, 1307
                  bltu         s8, s11, 917f
                  bgeu         s7, t6, 900f
                  sltu         sp, t1, s11
900:              slti         s7, t6, -948
                  sra          s5, a3, a4
                  bge          ra, s4, 914f
                  slt          a2, t4, t3
                  beq          s9, t1, 920f
                  and          s6, a0, a2
                  srai         s4, ra, 16
                  bgeu         a5, zero, 920f
                  bge          s6, s3, 911f
                  addi         s10, s2, 496
                  sltu         s3, t3, a7
911:              blt          t6, a1, 914f
                  addi         s5, t4, -1359
                  beq          s8, s4, 925f
914:              beq          a0, a5, 920f
                  add          t2, t2, s5
                  xori         s1, a0, 1044
917:              beq          s1, a5, 934f
                  sltiu        a0, s7, 1199
                  bne          s5, s5, 920f
920:              bltu         sp, s6, 938f
                  srli         s6, t0, 26
                  sltu         zero, a7, t2
                  srl          ra, a6, a4
                  xor          a2, tp, s6
925:              slli         zero, ra, 19
                  bge          a2, a6, 934f
                  andi         sp, s3, -1063
                  ori          s4, s5, 381
                  andi         ra, t0, -2001
                  xori         s10, a7, -1903
                  bne          s3, t6, 944f
                  srli         tp, gp, 5
                  add          s5, s2, t3
934:              and          ra, a6, zero
                  bgeu         a3, t6, 941f
                  or           t1, a6, t6
                  bge          s1, t5, 940f
938:              nop
                  bgeu         a0, t5, 945f
940:              or           s5, s2, a7
941:              lui          gp, 727297
                  srai         a4, a2, 28
                  ori          s4, t5, 1792
944:              xor          s0, tp, t1
945:              or           t6, s2, s0
                  blt          sp, s9, 947f
947:              nop
                  slli         a7, gp, 17
                  addi         s4, s2, 817
                  slt          gp, a5, a7
                  bgeu         a1, t2, 964f
                  srli         s6, s4, 4
                  bge          s4, t6, 969f
                  auipc        a0, 860602
                  slti         sp, a6, 1065
                  auipc        gp, 654459
                  slt          gp, s3, a2
                  srai         tp, s7, 25
                  or           s4, s11, s8
                  slti         s4, a7, 242
                  slli         a2, ra, 23
                  andi         tp, a6, -632
                  srai         a2, t5, 16
964:              bge          a4, s5, 970f
                  slt          a2, s7, sp
                  nop
                  slli         a6, s7, 1
                  sub          ra, a6, a3
969:              xor          a0, t0, s5
970:              sltu         a4, s6, t3
                  add          a6, t5, a1
                  slti         t4, s4, 28
                  sltiu        a4, t3, -1341
                  beq          s9, zero, 988f
                  srai         t0, s8, 5
                  ori          ra, t6, -59
                  xor          a3, a3, s8
                  sltiu        a0, gp, 1748
                  addi         a3, s9, 575
                  bne          s0, s5, 981f
981:              srli         a0, a2, 4
                  bge          zero, a1, 987f
                  xori         s10, a2, 852
                  beq          sp, zero, 1001f
                  slt          t4, t2, t5
                  bgeu         s9, s4, 988f
987:              bne          a7, ra, 1001f
988:              xori         tp, s1, -1165
                  xor          s3, t2, t0
                  srai         a3, s6, 12
                  addi         tp, t4, -848
                  bne          s3, t1, 1007f
                  lui          t0, 856776
                  sra          t4, a1, s11
                  slt          zero, t2, tp
                  auipc        t1, 807618
                  and          s5, ra, ra
                  sub          t4, s3, sp
                  blt          s9, t6, 1014f
                  slli         gp, s10, 16
1001:             blt          a4, tp, 1006f
                  bgeu         zero, t1, 1014f
                  sltiu        a0, a3, 1181
                  add          s11, ra, t1
                  bge          a3, s11, 1008f
1006:             bltu         sp, s5, 1019f
1007:             lui          a0, 263919
1008:             sll          s6, a3, a7
                  bge          a2, a0, 1023f
                  bgeu         a2, a2, 1016f
                  blt          a0, t6, 1017f
                  and          a3, a1, a0
                  addi         t1, s5, -1184
1014:             sra          t1, s11, a4
                  add          s10, s1, s4
1016:             xori         a4, a7, -605
1017:             auipc        gp, 334028
                  bge          a1, s0, 1034f
1019:             blt          t5, s7, 1027f
                  sltu         s7, s0, ra
                  andi         t2, a4, -66
                  slt          a5, tp, a7
1023:             andi         t1, sp, -125
                  nop
                  srai         a2, s8, 19
                  slt          t0, s6, sp
1027:             auipc        sp, 859520
                  add          a4, t6, t1
                  beq          t5, t5, 1030f
1030:             beq          a2, a3, 1046f
                  sub          s2, s2, t0
                  and          ra, a5, s4
                  ori          gp, t3, -284
1034:             auipc        s0, 791188
                  andi         a6, a7, 1700
                  xor          a0, t1, sp
                  sub          a4, a3, s11
                  sub          tp, s5, gp
                  slt          s9, gp, s9
                  xor          zero, a2, s4
                  add          a5, s8, s5
                  slti         s1, a3, -1705
                  lui          t2, 87412
                  sra          a6, s9, s8
                  bge          t1, a2, 1054f
1046:             srli         s0, zero, 17
                  ori          t6, t1, 2025
                  add          s9, t2, s3
                  auipc        t6, 866525
                  srai         a3, s8, 14
                  bgeu         s2, s7, 1068f
                  bne          a5, s8, 1066f
                  xori         a4, t4, -1627
1054:             lui          s11, 3618
                  slt          a7, a5, t6
                  slt          s10, t3, a2
                  blt          tp, t5, 1070f
                  sra          s6, a3, ra
                  andi         t1, t0, -407
                  sra          a6, a0, s0
                  bne          gp, s10, 1067f
                  bgeu         zero, a4, 1064f
                  ori          a4, s1, -1489
1064:             auipc        a3, 676883
                  sll          t4, zero, a3
1066:             srl          a6, a3, t6
1067:             sra          t0, s4, t5
1068:             bltu         t4, a5, 1088f
                  slti         ra, t4, 1188
1070:             sub          a7, s8, a5
                  sll          s5, gp, t0
                  nop
                  blt          t1, a2, 1090f
                  xori         s2, gp, -1525
                  and          s6, a3, t4
                  bge          s6, gp, 1088f
                  sltu         tp, t3, tp
                  xori         a7, s9, -1252
                  andi         s1, s3, 442
                  slti         a0, s5, -101
                  bltu         tp, gp, 1099f
                  sltu         s1, tp, s9
                  bgeu         a7, s4, 1086f
                  blt          a0, a7, 1085f
1085:             srai         a0, s6, 19
1086:             auipc        zero, 860967
                  srl          sp, t2, s1
1088:             slli         a2, ra, 27
                  addi         t0, a5, -1862
1090:             auipc        s10, 652489
                  ori          s2, gp, -1459
                  ori          sp, tp, 619
                  ori          s0, t5, 1557
                  srai         zero, t1, 8
                  sra          s0, a1, a4
                  sub          tp, a1, s7
                  slt          sp, zero, s5
                  srai         s5, a5, 1
1099:             addi         gp, t0, -351
                  beq          t4, s4, 1101f
1101:             lui          s1, 237445
                  srli         s3, s2, 13
                  bgeu         t4, s5, 1105f
                  srli         zero, a2, 13
1105:             srl          s3, ra, s9
                  xor          a7, s1, s9
                  srli         s10, t3, 5
                  bne          ra, zero, 1111f
                  andi         s4, s11, 405
                  bltu         s11, s8, 1112f
1111:             auipc        s2, 771754
1112:             srli         s0, s10, 27
                  add          s6, s11, zero
                  srl          t1, s11, s9
                  bltu         a2, a6, 1121f
                  slt          s10, s1, s9
                  auipc        s0, 330560
                  lui          s7, 973766
                  blt          s5, t0, 1132f
                  ori          s3, a7, 1462
1121:             lui          tp, 477418
                  bgeu         s9, s9, 1128f
                  slti         s2, s10, -600
                  srli         t1, sp, 2
                  xori         a4, sp, -1197
                  sltiu        a4, s7, 946
                  bltu         t5, s3, 1133f
1128:             andi         a1, sp, -1907
                  bne          a7, s2, 1130f
1130:             srl          t6, s4, a3
                  lui          s2, 339919
1132:             addi         s10, s4, 794
1133:             sltiu        a0, tp, 297
                  add          s1, t3, s9
                  xori         s10, zero, -1
                  sra          a7, s1, a2
                  blt          tp, a0, 1149f
                  or           s6, s8, s6
                  slti         s11, t3, 957
                  srli         s0, s5, 3
                  lui          a5, 939852
                  srai         s6, a0, 12
                  srli         zero, a7, 18
                  bltu         a3, t1, 1161f
                  beq          s2, t4, 1151f
                  sll          s9, s6, s0
                  slti         s1, t0, 9
                  bge          s2, s1, 1150f
1149:             xori         s7, t6, 1764
1150:             srl          s3, t2, s10
1151:             slt          tp, s8, ra
                  srli         tp, s8, 11
                  sll          s1, a6, t5
                  slli         zero, gp, 23
                  bge          t0, s4, 1169f
                  sra          t2, gp, t6
                  srl          a2, ra, zero
                  blt          a1, t2, 1174f
                  add          a5, a7, s9
                  srl          s10, sp, a6
1161:             nop
                  lui          a3, 252862
                  bltu         sp, s2, 1172f
                  srai         t0, s9, 5
                  bgeu         a2, t6, 1182f
                  xor          t0, a3, s0
                  xor          t6, a5, a3
                  slli         t2, s8, 5
1169:             and          ra, a0, s9
                  beq          a1, t4, 1172f
                  or           a2, t4, ra
1172:             srai         ra, s6, 4
                  andi         t2, s4, 1740
1174:             sltu         s1, s11, t4
                  bgeu         a4, a0, 1188f
                  slli         a0, s1, 16
                  bgeu         sp, a3, 1180f
                  auipc        t4, 390089
                  sra          gp, a0, t5
1180:             and          a2, a5, s9
                  sltiu        s5, a5, 1142
1182:             xor          a7, s9, zero
                  bgeu         t2, s9, 1189f
                  lui          t2, 337896
                  sll          t6, s6, a2
                  sub          s2, s3, t1
                  auipc        s0, 708125
1188:             beq          a7, s3, 1200f
1189:             ori          s4, s3, -1231
                  sra          s9, t6, s0
                  ori          a4, ra, 349
                  xori         tp, t3, -218
                  and          t0, a1, s7
                  andi         s10, s0, -1509
                  auipc        s9, 117907
                  sltu         s5, t6, gp
                  sra          gp, t3, s6
                  xori         s11, a2, -1902
                  addi         t2, zero, -9 #init loop 0 counter
                  slli         s3, a5, 18
                  addi         a7, zero, -15 #init loop 0 limit
                  slli         s6, a7, 22
                  xori         a6, t4, -1169
sub_1_7_0_t:      sub          s6, t2, t0
                  addi         t2, t2, -3 #update loop 0 counter
                  addi         sp, s6, -305
                  slti         s1, a5, 1242
                  beq          t2, a7, sub_1_7_0_t #branch for loop 0
                  sltu         s11, ra, ra
                  ori          t4, t1, -1174
1200:             bltu         t2, s1, 1201f
1201:             bgeu         t6, sp, 1204f
                  slti         a7, sp, 1472
                  srl          s7, t1, a6
1204:             slt          tp, a7, s1
                  bgeu         s9, s6, 1221f
                  add          t2, t3, t2
                  srl          a3, a3, s6
                  sll          s5, zero, t0
                  add          a2, zero, s0
                  slt          a2, t4, t0
                  xori         t0, a0, -658
                  nop
                  beq          a4, t3, 1233f
                  xori         tp, ra, -299
                  and          s1, s5, s4
                  srl          sp, s10, t1
                  lui          a5, 142790
                  lui          a4, 212096
                  slt          a3, s2, t4
                  lui          t6, 272170
1221:             bgeu         s1, s1, 1226f
                  bne          tp, s8, 1225f
                  srli         s0, s11, 16
                  ori          a6, a2, -1182
1225:             bne          s5, t2, 1238f
1226:             andi         ra, t1, -1021
                  sub          s10, s9, a7
                  xori         a1, t2, -345
                  bge          s0, s8, 1244f
                  beq          a2, s1, 1243f
                  lui          gp, 776896
                  bne          gp, s11, 1240f
1233:             xori         a2, s7, -48
                  srai         s0, s10, 31
                  bge          a0, gp, 1236f
1236:             slli         s0, a2, 16
                  andi         gp, a1, -123
1238:             auipc        tp, 329454
                  nop
1240:             bne          ra, s4, 1242f
                  lui          s1, 104544
1242:             lui          ra, 994330
1243:             addi         tp, s5, -2002
1244:             bge          gp, s8, 1257f
                  xori         t2, ra, -735
                  xori         a2, a3, 985
                  bne          a4, s2, 1257f
                  bgeu         a6, ra, 1250f
                  srai         s11, t4, 31
1250:             sub          s5, s4, t1
                  bgeu         t3, a2, 1257f
                  lui          a7, 256346
                  xor          a2, zero, t1
                  add          s2, s1, s4
                  beq          s9, a0, 1257f
                  xori         gp, zero, -694
1257:             sra          s11, s11, s4
                  lw           a2, 4(s8)
                  addi         s8, s8, 20
                  sltu         a3, tp, s5
                  sltu         a3, t4, s3
                  ori          s11, t0, 80
                  sra          sp, s11, a3
1815:             addi x9, x12, 1
1815:             jalr x9, x9, 0
sub_2:            srl          a5, t2, gp
                  sra          a5, a3, a2
                  addi         sp, a7, -97
                  xor          s0, s5, t4
                  xori         t4, s2, 1727
                  bltu         s2, s11, sub_2_stack_p
                  or           s11, s11, t2
sub_2_stack_p:    addi         s8, s8, -12
                  srli         s2, sp, 26
                  auipc        s5, 497219
                  sw           a2, 4(s8)
                  srli         s9, s9, 22
                  sub          a3, a7, t1
                  sltu         t4, s4, a3
                  sra          a4, a1, a0
                  addi         gp, t2, 1463
                  and          zero, s10, a0
                  xori         sp, a6, 527
                  srai         sp, s9, 12
                  sll          s7, s1, t0
                  auipc        a0, 469188
                  slt          s1, t0, a7
sub_2_j5:         jal          a2, sub_4 #jump sub_2 -> sub_4
                  xor          tp, t2, s7
                  andi         sp, s7, 705
                  la           s7, sub_4
                  nop
                  andi         a6, zero, -527
                  xor          a4, s0, tp
                  slti         s3, s2, -256
                  addi         s7, s7, 68
                  auipc        s0, 864510
sub_2_j6:         jalr         a2, s7, -68 #jump sub_2 -> sub_4
                  sub          t4, s7, t6
                  or           a2, a4, s1
                  srl          s9, s2, t6
                  sltiu        a1, ra, -519
                  sltu         t2, a1, zero
                  xori         a2, s2, 1562
                  srai         a6, sp, 15
                  auipc        a3, 504006
                  slli         s6, s6, 12
                  and          s10, s8, t6
                  srai         s2, t0, 0
                  sll          s5, s9, s0
                  lw           a2, 4(s8)
                  nop
                  or           s3, a3, t3
                  xor          zero, t0, a6
                  addi         s8, s8, 12
                  xor          t1, s0, s8
51:               addi x13, x12, 1
51:               jalr x13, x13, 0
sub_4:            slti         t4, a7, 657
                  bne          gp, a2, sub_4_stack_p
                  add          s7, t4, a3
                  xor          t2, t2, s5
                  slti         t4, s0, 1935
                  srai         s3, a4, 28
sub_4_stack_p:    addi         s8, s8, -56
                  sltiu        a1, t5, -65
                  sw           a2, 4(s8)
                  addi         a5, a5, 1277
                  sub          s0, s7, t5
                  addi         s9, zero, 9 #init loop 1 counter
                  addi         s3, zero, 9 #init loop 1 limit
                  sll          s5, s9, a3
sub_4_4_1_t:      sub          ra, s5, a1
                  xor          tp, a3, t3
                  addi         s9, s9, -8 #update loop 1 counter
                  xor          tp, t3, a0
                  srli         a0, a6, 15
                  addi         sp, zero, 10 #init loop 0 counter
                  and          a6, t3, a5
                  addi         s10, zero, -1 #init loop 0 limit
                  srai         a6, tp, 25
                  sll          a6, s11, s4
                  ori          t1, s9, 518
sub_4_4_0_t:      slti         s1, s5, -1680
                  nop
                  addi         sp, sp, -9 #update loop 0 counter
                  sltu         s7, s6, s9
                  bge          sp, s10, sub_4_4_0_t #branch for loop 0
                  addi         s7, s1, -915
                  bgeu         s9, s3, sub_4_4_1_t #branch for loop 1
                  and          s7, s3, s0
                  addi         gp, zero, -10 #init loop 1 counter
                  addi         t6, zero, -5 #init loop 1 limit
sub_4_1_1_t:      sltiu        a0, s0, -1580
                  sra          s9, s1, gp
                  addi         gp, gp, 5 #update loop 1 counter
                  srl          a4, sp, t0
                  addi         a6, zero, 9 #init loop 0 counter
                  addi         tp, zero, 20 #init loop 0 limit
                  addi         a7, s6, -128
sub_4_1_0_t:      slt          ra, s8, a0
                  sltu         s10, s11, zero
                  addi         a6, a6, 9 #update loop 0 counter
                  bltu         a6, tp, sub_4_1_0_t #branch for loop 0
                  bne          gp, t6, sub_4_1_1_t #branch for loop 1
                  and          s0, a0, s6
                  addi         tp, zero, -10 #init loop 1 counter
                  and          zero, a6, s10
                  and          a0, s4, sp
                  xori         zero, a0, -114
                  sltiu        s6, a7, 1506
                  slt          s5, a3, t0
                  add          a4, s7, a4
                  ori          s3, s9, -77
                  srli         s4, t5, 30
                  addi         s1, s5, -157
                  addi         t4, zero, -3 #init loop 1 limit
                  srl          gp, s2, a7
                  lui          s5, 757032
sub_4_0_1_t:      slt          s4, s11, a5
                  addi         tp, tp, 7 #update loop 1 counter
                  slti         a5, t6, 388
                  addi         s0, zero, 10 #init loop 0 counter
                  sub          s3, s9, t5
                  addi         a3, zero, 10 #init loop 0 limit
                  srl          a5, gp, a5
                  nop
                  and          a4, a7, a5
                  xori         zero, s5, 1760
sub_4_0_0_t:      andi         a7, tp, 1767
                  addi         s0, s0, -9 #update loop 0 counter
                  bgeu         s0, a3, sub_4_0_0_t #branch for loop 0
                  lui          s6, 329013
                  andi         t6, a1, -1789
                  sltiu        a4, zero, 1376
                  bne          tp, t4, sub_4_0_1_t #branch for loop 1
                  srl          ra, gp, s1
                  addi         s2, zero, 0 #init loop 0 counter
                  srai         a1, s0, 17
                  srl          sp, s6, s1
                  nop
                  sltiu        tp, t5, 1834
                  slt          s5, s8, a4
                  auipc        gp, 584368
                  auipc        s0, 789577
                  addi         s4, zero, 6 #init loop 0 limit
                  sltu         t4, t6, s8
                  sll          a5, a7, sp
                  sub          a7, s0, s6
sub_4_3_0_t:      or           t4, s4, a4
                  slt          t0, s2, s8
                  addi         s2, s2, 8 #update loop 0 counter
                  sub          a6, s6, s8
                  addi         t2, s0, 696
                  auipc        t2, 96377
                  srli         a7, a5, 0
                  nop
                  ori          sp, t0, 12
                  and          a4, a3, s1
                  auipc        ra, 575022
                  bltu         s2, s4, sub_4_3_0_t #branch for loop 0
                  sra          sp, s1, t3
                  addi         s9, zero, 9 #init loop 0 counter
                  nop
                  xor          s10, a4, a5
                  xor          s7, a1, gp
                  lui          gp, 933622
                  andi         a1, sp, -496
                  sra          s10, tp, sp
                  andi         t4, a7, -1224
                  ori          s10, s8, -1691
                  srl          zero, a1, s7
                  srli         s10, s3, 25
                  sra          s1, t5, zero
                  slt          t6, gp, zero
                  slt          a3, s8, s8
                  addi         s11, zero, 4 #init loop 0 limit
                  and          s7, a3, t2
sub_4_5_0_t:      slti         s6, a5, 1330
                  addi         s9, s9, -3 #update loop 0 counter
                  sll          s3, tp, a6
                  slti         tp, t3, 1946
                  srli         a6, t0, 8
                  slli         a0, s8, 3
                  add          gp, t4, t1
                  bgeu         s9, s11, sub_4_5_0_t #branch for loop 0
                  sra          t4, s5, s2
                  addi         a4, zero, 9 #init loop 0 counter
                  sltu         t2, a5, t6
                  add          sp, s4, t4
                  sltu         t0, s0, gp
                  slli         s10, s5, 21
                  srl          s7, a0, s6
                  auipc        t0, 259327
                  add          a7, a5, t2
                  addi         tp, zero, 15 #init loop 0 limit
                  sltu         s6, t5, t1
sub_4_2_0_t:      andi         s4, gp, 1001
                  srl          s5, t0, t1
                  srl          a3, s10, zero
                  sra          s7, t0, s1
                  and          zero, t0, t6
                  addi         a4, a4, 3 #update loop 0 counter
                  sra          a3, s2, a3
                  ori          s4, s11, 139
                  srai         zero, t1, 26
                  slt          s5, a2, s10
                  auipc        a5, 374962
                  srai         t1, s5, 13
                  lui          s3, 28020
                  bltu         a4, tp, sub_4_2_0_t #branch for loop 0
                  slti         sp, t4, -465
                  addi         s1, t1, 1984
                  slti         s6, tp, -451
                  sra          a7, s7, t3
                  sll          t4, a6, s8
                  bgeu         s10, t2, 17f
                  bgeu         t3, t2, 21f
                  lui          t0, 846600
                  sra          s10, a5, s6
                  srli         t1, s6, 21
                  andi         s6, s8, -72
                  bne          ra, t2, 17f
                  and          s7, s4, s2
                  slli         s4, s4, 24
                  sltiu        s9, sp, 1718
                  or           a5, sp, s7
                  slt          zero, s1, t6
                  or           a6, t0, s10
17:               bge          t4, t6, 26f
                  bge          a6, a2, 24f
                  addi         zero, a4, 961
                  bge          a0, t1, 25f
21:               xor          a6, s3, a7
                  sra          zero, zero, a5
                  addi         s5, s0, -22
24:               sub          ra, sp, s6
25:               bge          s0, s8, 37f
26:               lui          s5, 194626
                  slli         a0, gp, 28
                  nop
                  slti         a5, a2, 487
                  beq          a5, t0, 44f
                  auipc        s7, 618548
                  bltu         t3, a3, 39f
                  slt          t0, zero, gp
                  xor          a7, a7, t6
                  xor          s1, s1, s8
                  xor          a4, zero, s8
37:               slli         gp, s0, 3
                  xor          a0, s7, t0
39:               bge          s7, gp, 52f
                  beq          a1, ra, 54f
                  sltu         t2, s5, gp
                  sra          s5, s2, t2
                  add          sp, a3, t2
44:               sltiu        s1, t0, 275
                  slli         s3, t6, 28
                  sra          a5, zero, a3
                  or           a7, s11, s7
                  ori          s1, a6, -889
                  or           s5, a6, s11
                  beq          t4, s4, 63f
                  and          a7, t1, t0
52:               slt          gp, s1, t1
                  blt          a5, s9, 66f
54:               lui          s0, 935300
                  srai         s2, a2, 22
                  sltu         s5, s8, ra
                  blt          s4, sp, 59f
                  xori         s2, s6, 1035
59:               slti         a6, t0, -2014
                  ori          t0, t1, -1574
                  sll          a1, t0, a6
                  add          t4, ra, t5
63:               slti         a4, s2, -2025
                  blt          s3, a5, 77f
                  xor          sp, s8, a1
66:               sll          t1, s10, s4
                  srai         a6, t0, 13
                  auipc        s3, 593097
                  auipc        t4, 388493
                  srai         s2, a2, 13
                  srai         a6, a1, 27
                  srl          t2, t2, t3
                  ori          s2, s4, 353
                  sll          tp, tp, a1
                  nop
                  sll          s10, s0, t0
77:               auipc        a2, 671889
                  slti         s10, s1, -1219
                  lui          s2, 662294
                  ori          s10, s1, -1039
                  and          zero, sp, s9
                  bne          a6, gp, 87f
                  or           t0, s6, s11
                  bge          s9, t5, 88f
                  sltu         s7, t0, s6
                  sra          s1, s0, a0
87:               srli         t2, zero, 19
88:               srai         t4, s11, 2
                  addi         t0, a7, 1763
                  sll          s4, s5, a0
                  addi         a0, ra, 1283
                  xor          s2, a0, a3
                  sltu         a5, s3, a2
                  nop
                  addi         a0, a2, 1148
                  srl          s10, a4, t4
                  lui          t0, 674652
                  beq          a6, tp, 114f
                  bgeu         t5, s11, 109f
                  srl          s4, a7, a7
                  sll          s6, a7, t4
                  andi         a1, sp, 950
                  bltu         s9, a4, 119f
                  slli         s2, s8, 20
                  ori          s11, t1, -997
                  sub          s4, a1, s1
                  xor          t1, s7, s4
                  slli         s4, t2, 29
109:              ori          gp, s2, -87
                  sltu         a6, s6, t1
                  bgeu         t5, sp, 119f
                  nop
                  and          s2, s5, a7
114:              sra          a5, t4, t6
                  add          a7, t6, t2
                  nop
                  blt          a2, s11, 134f
                  bne          t5, t3, 120f
119:              add          s6, s1, s9
120:              beq          ra, t5, 128f
                  sltu         t4, t4, t2
                  sltiu        t1, t5, 598
                  xor          s2, s4, a2
                  xor          a0, a1, a0
                  xori         s3, t4, 833
                  nop
                  sltu         s3, ra, s1
128:              srl          t2, sp, tp
                  addi         t2, s9, -1469
                  xor          s1, t4, t4
                  add          s6, t6, t1
                  bgeu         s8, s11, 148f
                  sltu         s11, s2, s10
134:              lui          s5, 29653
                  sub          ra, a2, s9
                  slli         t1, s7, 30
                  sub          a2, t3, s9
                  bltu         s6, tp, 150f
                  bne          s7, t4, 154f
                  beq          a3, s11, 143f
                  nop
                  bne          t1, a1, 162f
143:              sltiu        zero, t5, -1721
                  and          zero, t2, s4
                  blt          t0, a1, 146f
146:              and          a1, s11, t5
                  andi         t0, gp, 715
148:              addi         s0, s5, 1731
                  beq          s3, s9, 162f
150:              slli         a4, a6, 28
                  ori          a2, s8, -1783
                  andi         s0, tp, 1755
                  and          a2, s8, t4
154:              srli         s3, a2, 8
                  slti         s10, t3, -2033
                  nop
                  and          s0, s0, s5
                  bne          t3, a1, 170f
                  slt          a2, sp, s4
                  ori          t2, t6, 1420
                  and          a7, zero, t4
162:              beq          a7, s10, 175f
                  slti         zero, sp, 1551
                  add          tp, a0, t0
                  bltu         s0, s10, 175f
                  slti         a0, t0, 13
                  srli         gp, gp, 25
                  srai         s9, a6, 20
                  bne          a5, ra, 176f
170:              nop
                  bltu         s8, a4, 187f
                  or           s1, s9, zero
                  bge          a7, a2, 186f
                  and          a7, s3, zero
175:              srli         t1, s5, 14
176:              xori         t1, a6, -1478
                  or           tp, s6, s11
                  xor          sp, t0, ra
                  sra          s6, t3, ra
                  blt          t1, a2, 185f
                  add          s11, s2, a7
                  slt          a6, zero, s10
                  lui          a6, 94370
                  blt          s6, s4, 186f
185:              bge          t4, a4, 197f
186:              bne          a5, t0, 194f
187:              bltu         ra, a2, 200f
                  sltiu        t4, a1, -1264
                  xor          t6, zero, a3
                  sltiu        s1, a1, 228
                  srl          a4, s5, s6
                  srl          a4, ra, a3
                  nop
194:              srl          s0, t6, s1
                  xor          a2, t6, sp
                  or           s7, t1, gp
197:              slt          t4, s9, s11
                  srli         gp, t3, 9
                  bgeu         t3, s11, 214f
200:              bne          a6, ra, 214f
                  xori         a1, gp, -381
                  nop
                  blt          a2, s1, 210f
                  srli         s9, a6, 0
                  bge          t5, t1, 208f
                  auipc        t6, 483033
                  slli         a7, t3, 26
208:              srl          s2, s1, t5
                  auipc        t2, 73320
210:              sll          zero, t4, s3
                  xor          t1, s1, a7
                  xori         s4, s8, 1903
                  nop
214:              xor          a3, a4, zero
                  lui          zero, 1035932
                  sltu         s9, a5, a7
                  bltu         s11, tp, 219f
                  sltu         tp, s5, a0
219:              slt          s6, s9, ra
                  or           a0, zero, t4
                  nop
                  xor          t2, s11, s9
                  bgeu         t1, s4, 240f
                  slti         a4, tp, -622
                  ori          a4, a7, 1622
                  andi         s0, s5, 1163
                  bne          s11, a0, 235f
                  srai         t2, sp, 20
                  bgeu         s7, zero, 245f
                  xori         s6, s5, 1592
                  auipc        s6, 895778
                  and          s6, a0, s7
                  sltu         s5, t4, s1
                  bge          zero, a2, 254f
235:              sll          gp, a1, sp
                  sltu         s2, t3, s11
                  bgeu         zero, a6, 242f
                  slti         sp, t3, -1405
                  slt          a7, a0, a7
240:              bgeu         s0, zero, 256f
                  sltu         a0, t0, t6
242:              srli         a6, a6, 28
                  srl          a7, s0, s4
                  nop
245:              sra          tp, sp, a7
                  srli         s4, s7, 21
                  sra          t4, s5, s4
                  lui          s0, 352619
                  bltu         s0, s1, 255f
                  sll          s6, sp, t3
                  sltu         s1, s6, s4
                  slt          s0, s7, gp
                  bltu         s4, t4, 266f
254:              bne          s7, s2, 258f
255:              ori          t6, s1, -676
256:              bltu         t3, s5, 265f
                  bgeu         a0, t0, 258f
258:              slli         t2, a0, 24
                  blt          zero, a6, 275f
                  nop
                  xori         tp, s1, 152
                  slti         s1, zero, -223
                  srai         t6, s9, 10
                  bge          a0, s0, 278f
265:              sra          s3, s4, s11
266:              srai         t2, zero, 12
                  sltu         t1, s2, t2
                  add          a1, t5, s4
                  nop
                  add          s11, tp, s6
                  bltu         s9, a6, 291f
                  addi         t2, s1, -1707
                  slt          t2, s2, s1
                  srai         ra, a0, 10
275:              xor          s0, a7, s10
                  beq          s1, tp, 288f
                  nop
278:              or           a7, s2, t3
                  and          s6, s0, t4
                  nop
                  srai         s2, s3, 8
                  or           t2, s9, zero
                  sub          s4, t6, a0
                  sltiu        s10, zero, 1368
                  beq          s6, s5, 292f
                  bge          t1, t1, 291f
                  slli         a4, s7, 27
288:              srai         a0, s10, 15
                  sltiu        t4, s10, -1917
                  slli         s2, gp, 2
291:              blt          a2, s10, 299f
292:              ori          a7, sp, 1540
                  addi         a5, sp, -1371
                  ori          t6, zero, 1912
                  xori         a4, s5, -1915
                  sub          a2, a6, a3
                  addi         s4, t4, -1932
                  and          s3, s11, s5
299:              slt          t2, a1, a5
                  bne          a1, s11, 302f
                  xori         t6, s9, -1581
302:              srai         a7, a2, 0
                  srai         zero, s6, 23
                  and          ra, gp, zero
                  la           s4, sub_5
                  addi         s4, s4, -988
                  srai         t0, s9, 8
                  slti         gp, s7, 803
                  xor          sp, t5, a1
                  srl          t0, s0, a1
                  sll          sp, s5, a5
sub_4_j7:         jalr         a2, s4, 988 #jump sub_4 -> sub_5
                  blt          a7, s1, 316f
                  lui          a1, 133452
                  sltu         s7, s6, tp
                  ori          zero, s9, 158
                  sltiu        s3, s5, 561
                  addi         t6, t5, 758
                  ori          s6, t6, -1171
                  slt          s3, s9, zero
                  sltu         a5, a3, tp
                  addi         a5, s8, -300
                  addi         gp, a2, -78
                  sra          t1, a6, a7
316:              ori          t4, s5, 438
                  bltu         s5, zero, 318f
318:              blt          t3, t1, 330f
                  or           a3, a4, t3
                  bne          t1, sp, 330f
                  slt          ra, a2, t4
                  add          s9, t4, t6
                  sub          t2, s2, s6
                  sub          t1, ra, a1
                  xor          t4, t4, zero
                  add          ra, t0, t1
                  bne          a1, gp, 330f
                  bgeu         a5, a0, 330f
                  srai         a2, t2, 27
330:              lui          a6, 807893
                  lw           a2, 4(s8)
                  xor          s0, s11, a6
                  addi         s8, s8, 56
                  add          a6, s2, a4
                  srl          t0, a6, s3
499:              addi x7, x12, 1
499:              jalr x7, x7, 0
sub_3:            andi         t1, t0, 686
                  sub          s6, a5, t4
                  ori          gp, t1, 289
                  srli         t2, s4, 20
                  addi         s8, s8, -16
                  sltiu        t6, a2, -1146
                  sub          s11, s0, s4
                  sw           a2, 4(s8)
                  or           t4, tp, gp
                  sra          t6, s3, s5
                  slli         tp, tp, 1
                  addi         a6, zero, -4 #init loop 0 counter
                  add          gp, s1, zero
                  andi         sp, tp, 74
                  sltiu        gp, zero, 543
                  xor          a4, s1, a2
                  addi         a5, a6, -1378
                  addi         t2, zero, 13 #init loop 0 limit
                  slli         a5, t2, 23
sub_3_2_0_t:      or           s0, t6, sp
                  srli         s1, s9, 28
                  addi         a6, a6, 7 #update loop 0 counter
                  and          s3, a1, t1
                  slt          a1, s4, t5
                  bltu         a6, t2, sub_3_2_0_t #branch for loop 0
                  srai         a5, s11, 24
                  addi         s3, zero, -1 #init loop 1 counter
                  sll          zero, s8, ra
                  addi         s4, zero, -1 #init loop 1 limit
                  srai         t6, a5, 18
sub_3_0_1_t:      sltu         a7, gp, t4
                  nop
                  lui          a4, 285027
                  addi         s3, s3, -5 #update loop 1 counter
                  addi         t2, zero, -9 #init loop 0 counter
                  srl          tp, a4, zero
                  lui          s10, 518710
                  addi         s9, zero, 3 #init loop 0 limit
                  nop
sub_3_0_0_t:      slti         sp, a5, 662
                  addi         t2, t2, 6 #update loop 0 counter
                  addi         t0, s5, -859
                  srli         tp, t2, 29
                  beq          t2, s9, sub_3_0_0_t #branch for loop 0
                  srai         tp, ra, 18
                  bge          s3, s4, sub_3_0_1_t #branch for loop 1
                  andi         gp, t2, -1448
                  addi         s4, zero, -3 #init loop 0 counter
                  slli         a2, a1, 20
                  sra          a7, a2, s5
                  sub          a7, t4, gp
                  srai         a0, a1, 11
                  addi         t6, s5, -850
                  addi         ra, zero, -19 #init loop 0 limit
                  sltiu        a3, s10, 1577
sub_3_1_0_t:      xor          t1, t3, t1
                  srl          a2, t0, s10
                  and          zero, a2, a2
                  andi         s0, a0, -1512
                  sll          sp, s4, a4
                  lui          a5, 694442
                  sltu         s5, sp, s8
                  ori          a0, s2, 1071
                  addi         s4, s4, -2 #update loop 0 counter
                  add          sp, t3, s5
                  xor          a0, t5, s3
                  slti         s7, t1, -879
                  sra          t0, s0, zero
                  sltu         t0, ra, a0
                  bne          s4, ra, sub_3_1_0_t #branch for loop 0
                  ori          zero, s11, 1536
                  sltiu        a0, s9, -1129
                  ori          s9, zero, 212
                  and          tp, s5, sp
                  andi         s10, a1, -1739
                  ori          t2, t5, 1323
                  and          s3, s11, s1
                  blt          t0, a5, 9f
                  andi         s2, t5, 1994
                  andi         s1, tp, -579
9:                lui          s6, 143215
                  or           sp, t2, t0
                  andi         s7, s4, -1842
                  or           s10, sp, a1
                  addi         s9, sp, -119
                  sra          s11, s2, tp
                  nop
                  sltu         s3, a0, s2
                  bgeu         s9, a4, 27f
                  sub          s5, s10, a2
                  bgeu         tp, s11, 35f
                  ori          s1, tp, -1295
                  blt          t5, a4, 41f
                  ori          a2, a4, -568
                  bne          s2, s11, 27f
                  bgeu         t1, gp, 37f
                  slt          a3, s3, a1
                  bgeu         t3, ra, 34f
27:               slt          t4, t2, s3
                  lui          a5, 925221
                  addi         s3, a7, -1672
                  or           a7, a6, s9
                  andi         ra, s10, -30
                  andi         t2, a1, 1487
                  srai         tp, t6, 5
34:               sub          a1, s11, s6
35:               slti         s11, s6, -1381
                  sll          a6, t0, tp
37:               srl          a7, s2, a4
                  or           s2, a7, s9
                  andi         s2, s0, 494
                  ori          t2, s6, 205
41:               or           s7, sp, s4
                  srl          t0, sp, t4
                  blt          s3, s6, 54f
                  slt          s0, t3, s3
                  andi         sp, s1, -2036
                  or           a5, s9, s9
                  sra          a5, a6, s10
                  sltu         s4, s1, a2
                  srai         a0, t5, 1
                  bne          a0, s5, 65f
                  blt          a4, s3, 52f
52:               sub          s4, s0, a4
                  auipc        s6, 466470
54:               or           t1, a7, s10
                  srai         tp, t5, 19
                  ori          s10, a7, 256
                  and          a3, t5, s0
                  bltu         a5, a1, 61f
                  addi         s0, s4, -76
                  slti         a7, s11, 123
61:               blt          s4, a2, 72f
                  beq          s8, tp, 65f
                  blt          t2, a0, 67f
                  bgeu         zero, a4, 84f
65:               sll          s6, t4, a5
                  and          t4, a3, t6
67:               or           a1, t5, s6
                  or           a0, ra, s5
                  srl          a7, s10, zero
                  blt          ra, ra, 83f
                  addi         s6, t6, 750
72:               bge          ra, s6, 80f
                  slli         s10, gp, 27
                  xori         t2, a2, -27
                  slt          s4, a2, a2
                  srli         s4, s8, 21
                  blt          t2, sp, 78f
78:               slti         a0, zero, 1983
                  andi         s10, ra, -377
80:               auipc        a0, 813586
                  sltu         t1, s11, s4
                  bgeu         t2, a1, 93f
83:               xor          zero, sp, ra
84:               sltiu        t4, a3, -683
                  sll          t2, a4, t6
                  xori         a6, a1, 1892
                  srl          s0, s6, s8
                  slli         s10, s7, 8
                  auipc        s10, 115567
                  sltiu        s7, gp, 124
                  auipc        s9, 594359
                  srli         a0, s0, 4
93:               bge          t5, s1, 109f
                  sltiu        s0, s9, -1834
                  ori          t1, a3, 1732
                  xor          a0, zero, t5
                  nop
                  andi         s5, t2, 1881
                  srai         s11, a0, 19
                  srli         ra, a0, 19
                  add          sp, t6, a1
                  sltu         gp, t0, zero
                  slti         a6, sp, -1570
                  srli         s4, t3, 24
                  sll          s5, s3, tp
                  add          a6, t5, s0
                  sra          s0, t3, s5
                  or           a1, s0, gp
109:              sra          a7, a0, a7
                  srl          s1, a5, t5
                  bgeu         t0, t2, 114f
                  bge          gp, a2, 124f
                  addi         t0, sp, 1506
114:              xori         ra, a5, -1912
                  slti         a4, a4, 1113
                  lui          a1, 930290
                  srai         s0, a2, 0
                  sltu         s0, t3, s7
                  bgeu         s5, s9, 135f
                  sltiu        s3, zero, 354
                  or           s11, s10, s6
                  nop
                  bge          s2, a7, 142f
124:              slli         s11, s5, 26
                  bge          s1, a3, 135f
                  and          gp, s4, gp
                  beq          s0, t6, 147f
                  slli         a6, a7, 3
                  lui          s4, 500351
                  bne          ra, s9, 131f
131:              lui          s6, 404208
                  xor          a7, s8, s4
                  srl          t0, gp, s9
                  srai         s6, a7, 4
135:              sra          s0, t4, s8
                  andi         s3, a7, -1450
                  beq          a1, s0, 146f
                  sra          s9, tp, a3
                  bltu         a2, t5, 144f
                  sltu         ra, t4, a7
                  srl          s9, s9, a5
142:              slti         a1, s7, -933
                  lui          a2, 575517
144:              andi         sp, a5, -983
                  lui          zero, 819291
146:              ori          a4, t4, -179
147:              srai         t6, a2, 17
                  auipc        s11, 355789
                  bgeu         t6, s3, 159f
                  srli         t4, t2, 31
                  bge          a3, t4, 168f
                  sltu         a4, s3, t2
                  blt          s10, ra, 164f
                  slti         a7, a4, -706
                  sltu         s10, s11, t2
                  xori         a4, a3, -1119
                  ori          zero, s4, -1904
                  srli         t0, s7, 8
159:              addi         a2, s0, -356
                  srai         s5, t1, 20
                  andi         sp, a0, 1672
                  bgeu         s5, t2, 165f
                  auipc        gp, 585217
164:              srl          s9, s5, t6
165:              srli         ra, a3, 30
                  nop
                  slt          t6, ra, ra
168:              srl          a5, s3, a0
                  andi         s1, ra, 50
                  add          zero, s7, a1
                  ori          a0, a1, -868
                  slli         s11, s4, 20
                  lw           a2, 4(s8)
                  xor          tp, ra, a0
                  addi         s8, s8, 16
                  slti         t0, t0, 1582
                  srai         a3, t2, 25
                  ori          a6, s11, 202
250:              addi x16, x12, 1
250:              jalr x16, x16, 0
sub_5:            slt          s6, t5, s6
                  andi         s5, s11, -1014
                  addi         s8, s8, -24
                  sw           a2, 4(s8)
                  sra          ra, gp, t4
                  andi         zero, t1, -1336
                  andi         s0, s2, -619
                  srli         t0, t1, 4
                  sub          ra, s3, t4
                  sra          t4, a2, a2
                  slti         t1, a3, -1910
                  xori         t4, s10, 330
                  auipc        a0, 170898
                  blt          sp, s3, 17f
                  sltiu        a1, t1, 1104
                  xor          s6, s11, a2
                  nop
                  xor          t2, a2, s4
                  slti         a7, s5, -32
                  bltu         a0, a5, 13f
                  bge          s7, a0, 17f
                  slti         a3, sp, 2017
                  slt          t6, t6, a5
                  srai         a1, t1, 3
                  lui          a4, 209117
13:               nop
                  or           s2, t5, s7
                  sra          ra, a7, s1
                  bltu         s5, t3, 17f
17:               srl          t0, a5, a2
                  lw           a2, 4(s8)
                  sltu         zero, s10, a4
                  slli         sp, s11, 3
                  addi         s8, s8, 24
                  sltu         s3, t6, s0
                  ori          a1, s5, 1831
                  sll          s2, a6, s11
                  srli         s1, a4, 0
                  xori         s4, s3, -380
                  and          zero, s4, s8
40:               addi x18, x12, 1
40:               jalr x18, x18, 0
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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x28, x24, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x2, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x2, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x2, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x2, x14, ecall_handler
                  li x14, 0x1
                  beq x2, x14, instr_fault_handler
                  li x14, 0x5
                  beq x2, x14, load_fault_handler
                  li x14, 0x7
                  beq x2, x14, store_fault_handler
                  li x14, 0xc
                  beq x2, x14, pt_fault_handler
                  li x14, 0xd
                  beq x2, x14, pt_fault_handler
                  li x14, 0xf
                  beq x2, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x24, x28, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

load_fault_handler:
                  add x24, x28, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

store_fault_handler:
                  add x24, x28, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x24, x28, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x24, x28, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x24, x28, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
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
