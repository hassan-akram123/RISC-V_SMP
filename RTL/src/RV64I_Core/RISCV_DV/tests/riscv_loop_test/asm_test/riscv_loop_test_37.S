.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 0
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0xde04223e
                  li x3, 0x8
                  li x4, 0x9
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0xfd30039a
                  li x8, 0x3
                  li x9, 0x80000000
                  li x10, 0x9de6fd30
                  li x11, 0x8
                  li x12, 0x0
                  li x13, 0xe
                  li x14, 0x82985057
                  li x15, 0xc0266d58
                  li x16, 0xa887cc0c
                  li x17, 0xe
                  li x19, 0x0
                  li x20, 0xf
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0xc
                  li x25, 0xf0b11614
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0xb157241
                  li x29, 0x5
                  li x31, 0x0
                  la x30, user_stack_end
main:             ori          s1, zero, 584
                  slti         t0, tp, 1939
                  la           a5, sub_1
                  andi         sp, s2, -1086
                  addi         a5, a5, 878
                  bne          s4, a7, main_j2 #branch to jump instr
                  srl          sp, s8, t0
                  and          sp, s10, s8
                  srai         t1, s11, 6
main_j2:          jalr         s1, a5, -878 #jump main -> sub_1
                  addi         t6, zero, -4 #init loop 1 counter
                  addi         a7, zero, -2 #init loop 1 limit
                  lui          sp, 943328
main_0_1_t:       ori          a6, a5, -113
                  addi         t6, t6, 4 #update loop 1 counter
                  sub          sp, s3, gp
                  xori         t0, s8, 452
                  addi         t3, zero, 9 #init loop 0 counter
                  addi         s8, zero, -11 #init loop 0 limit
main_0_0_t:       nop
                  add          a4, a4, s7
                  add          a5, sp, a7
                  addi         t3, t3, -10 #update loop 0 counter
                  xori         t2, s1, -1122
                  xor          ra, gp, s3
                  beq          t3, s8, main_0_0_t #branch for loop 0
                  auipc        a3, 464267
                  sll          tp, t6, ra
                  sll          a0, a4, t6
                  blt          t6, a7, main_0_1_t #branch for loop 1
                  srli         a3, a6, 30
                  ori          t4, zero, 1377
                  sltu         a1, a0, a4
                  addi         s1, s1, 86
                  sra          s11, t5, s10
                  la           a4, sub_1
                  or           t3, s8, s5
                  and          s0, a6, t3
                  addi         a4, a4, 811
                  sltu         s1, s8, s5
                  bltu         tp, s4, main_j1 #branch to jump instr
                  slt          s1, a4, t6
main_j1:          jalr         s1, a4, -811 #jump main -> sub_1
                  xor          a7, sp, a6
                  sub          t6, s5, s5
                  addi         t0, a0, -1432
                  bge          t5, t6, 10f
                  or           ra, s5, sp
                  bgeu         sp, a3, 10f
                  srl          s4, a4, t0
                  sra          s0, s3, s4
                  andi         s8, s5, -544
10:               add          tp, a2, a1
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         a6, a2, 899
                  slt          a4, t3, t2
                  xor          a5, s5, s0
                  nop
                  addi         t5, t5, -60
                  sw           s1, 4(t5)
                  slt          s4, s1, a0
                  slti         a3, s3, 202
                  slli         a3, a0, 4
                  nop
                  sub          t4, s8, s2
                  sub          t2, t5, gp
                  bne          t3, zero, sub_1_j3 #branch to jump instr
                  lui          t3, 396269
                  sll          ra, tp, s4
                  slli         t4, a3, 10
                  slt          t4, tp, s6
                  or           t6, sp, sp
                  addi         a6, a1, -259
                  srai         s0, t4, 18
sub_1_j3:         jal          s1, sub_3 #jump sub_1 -> sub_3
                  sll          gp, s9, a2
                  la           s0, sub_4
                  andi         zero, a4, -125
                  srli         t1, s0, 15
                  auipc        t6, 904585
                  and          s6, ra, s1
                  addi         s0, s0, -334
                  sltu         t4, a7, a2
                  slti         s4, t0, -1460
                  sltiu        s7, s7, 1491
                  xor          t6, s1, a3
                  andi         s9, t5, -231
sub_1_j4:         jalr         s1, s0, 335 #jump sub_1 -> sub_4
                  andi         a1, a1, -745
                  add          tp, s1, t2
                  andi         s1, s1, -1240
                  sub          s9, s4, s0
                  addi         s7, t0, -2028
                  srl          a3, s10, a2
                  slli         a3, t6, 18
                  slti         a4, s4, 1543
                  bne          tp, a7, sub_1_j5 #branch to jump instr
                  addi         a4, a7, 1943
sub_1_j5:         jal          s1, sub_4 #jump sub_1 -> sub_4
                  sub          t1, s5, s8
                  srai         a1, s11, 16
                  bgeu         tp, a6, sub_1_j6 #branch to jump instr
                  sub          zero, gp, s11
                  and          s11, t3, tp
                  xori         a0, s0, 1360
                  sltiu        zero, s4, 475
                  addi         s6, a5, 944
                  lui          s4, 806818
                  addi         s11, t4, -1364
sub_1_j6:         jal          s1, sub_2 #jump sub_1 -> sub_2
                  or           a6, t2, s8
                  xori         s9, s9, 996
                  andi         tp, s4, -1170
                  ori          s6, sp, -2008
                  ori          a3, a3, -1766
                  sltu         s0, a1, ra
                  sltiu        tp, s7, -1534
                  srli         tp, s10, 10
                  xori         a6, a4, -49
sub_1_j7:         jal          s1, sub_5 #jump sub_1 -> sub_5
                  bne          a4, ra, 9f
                  lui          a7, 488330
                  sltiu        s8, s2, -1204
                  ori          t1, a6, -294
                  bne          a7, s8, 9f
                  blt          s10, a6, 9f
                  bne          gp, gp, 9f
                  bge          gp, s6, 9f
                  xor          a0, a0, s0
9:                srai         t3, a5, 24
                  lw           s1, 4(t5)
                  xor          s8, t3, s8
                  addi         t5, t5, 60
                  addi         a4, zero, -1696
                  addi         a0, t4, 1058
                  and          a3, s4, s7
82:               addi x16, x9, 1
82:               jalr x16, x16, 0
sub_5:            srai         a4, tp, 5
                  addi         t5, t5, -16
                  addi         a1, a1, -133
                  xor          s6, t2, a1
                  slti         a1, a5, -1292
                  sw           s1, 4(t5)
                  slti         t6, s10, 597
                  addi         a6, zero, 0 #init loop 0 counter
                  sra          a2, s7, ra
                  addi         s10, zero, -18 #init loop 0 limit
                  sra          s7, t3, a7
sub_5_3_0_t:      addi         a4, a6, -1579
                  slti         a3, t6, 1546
                  addi         a6, a6, -2 #update loop 0 counter
                  sra          sp, a6, s10
                  beq          a6, s10, sub_5_3_0_t #branch for loop 0
                  srai         a2, s1, 25
                  addi         t6, zero, 2 #init loop 1 counter
                  addi         t0, zero, 3 #init loop 1 limit
sub_5_2_1_t:      sub          s4, a1, ra
                  srai         tp, s11, 13
                  lui          zero, 292776
                  addi         t6, t6, 7 #update loop 1 counter
                  addi         s6, zero, 10 #init loop 0 counter
                  xor          a1, t4, a2
                  addi         s9, zero, 7 #init loop 0 limit
sub_5_2_0_t:      add          a4, s3, a4
                  sub          a4, t1, a1
                  addi         s6, s6, -5 #update loop 0 counter
                  bgeu         s6, s9, sub_5_2_0_t #branch for loop 0
                  add          a7, t0, s4
                  srai         a1, t2, 20
                  sll          s0, s2, s5
                  bltu         t6, t0, sub_5_2_1_t #branch for loop 1
                  ori          a2, a4, -1977
                  addi         s4, zero, -5 #init loop 0 counter
                  addi         t3, zero, 13 #init loop 0 limit
sub_5_1_0_t:      andi         a4, t2, 1600
                  addi         s4, s4, 4 #update loop 0 counter
                  blt          s4, t3, sub_5_1_0_t #branch for loop 0
                  auipc        s7, 999596
                  addi         t4, zero, -7 #init loop 1 counter
                  addi         t1, zero, 1 #init loop 1 limit
sub_5_4_1_t:      sltiu        t3, t1, 800
                  addi         t4, t4, 8 #update loop 1 counter
                  addi         ra, zero, -7 #init loop 0 counter
                  addi         s5, zero, -17 #init loop 0 limit
sub_5_4_0_t:      sub          tp, t1, t4
                  addi         ra, ra, -5 #update loop 0 counter
                  bge          ra, s5, sub_5_4_0_t #branch for loop 0
                  bne          t4, t1, sub_5_4_1_t #branch for loop 1
                  sub          a5, s0, t4
                  addi         a3, zero, -2 #init loop 0 counter
                  xori         s9, s3, -1615
                  auipc        s11, 211881
                  slli         t4, s4, 15
                  sll          s10, gp, a4
                  sra          a6, s3, gp
                  andi         a0, t3, -1942
                  addi         t0, zero, 2 #init loop 0 limit
                  sltu         s0, a4, zero
                  slt          t3, s7, s10
sub_5_0_0_t:      auipc        s9, 833799
                  addi         a3, a3, 8 #update loop 0 counter
                  nop
                  bltu         a3, t0, sub_5_0_0_t #branch for loop 0
                  ori          t3, a7, -460
                  sltu         t3, zero, t4
                  sub          zero, s6, t5
                  srai         zero, s6, 18
                  addi         t4, a5, -1023
                  bgeu         tp, t0, 6f
                  slti         a1, a4, -1007
6:                or           tp, s6, s9
                  srai         zero, tp, 8
                  slt          a1, gp, s10
                  nop
                  and          s11, s3, s10
                  sltu         gp, t5, t4
                  blt          s11, s4, 15f
                  ori          a7, zero, 368
                  sltiu        a7, a4, 1141
15:               bge          gp, s6, 34f
                  andi         s8, gp, -925
                  slt          a7, tp, tp
                  beq          s10, s7, 27f
                  bgeu         s8, a2, 38f
                  bne          t5, s10, 26f
                  beq          a5, a1, 38f
                  bgeu         s3, s2, 23f
23:               andi         gp, s10, -1400
                  xori         zero, s9, -1127
                  xor          s7, t3, a2
26:               xori         a6, a5, 27
27:               auipc        s1, 807222
                  ori          s10, a4, 1692
                  sltu         s9, s3, s8
                  bne          t0, s1, 35f
                  add          s10, s8, t0
                  slti         t4, s10, -451
                  add          gp, t3, a1
34:               add          a2, sp, t1
35:               addi         s5, a4, -1470
                  xor          t3, s0, s1
                  sra          t2, zero, gp
38:               add          zero, t4, tp
                  auipc        s11, 250488
                  ori          t0, s3, -320
                  bltu         a3, t2, 61f
                  or           t3, t0, s7
                  sltu         s9, t4, s5
                  srai         t6, t1, 4
                  slli         gp, s6, 1
                  xori         a5, gp, 1410
                  slti         zero, sp, 1886
                  auipc        a5, 830875
                  bne          a2, s11, 62f
                  bltu         s1, a4, 53f
                  xori         a6, a7, -1509
                  bge          t1, t5, 66f
53:               and          tp, t4, a5
                  sltiu        s10, a3, -1925
                  slti         sp, s5, -2000
                  and          a4, t3, tp
                  lui          ra, 426902
                  sub          t2, s7, s0
                  and          a7, ra, a4
                  sra          t2, s9, t3
61:               srli         a5, s7, 20
62:               beq          s3, a1, 76f
                  slti         t0, t1, 70
                  slti         t4, t4, -4
                  srl          a4, s3, t5
66:               sltu         sp, ra, a7
                  blt          t3, ra, 69f
                  or           a3, s11, t6
69:               srli         s1, s6, 3
                  slt          a6, t6, sp
                  or           s9, s8, a3
                  sll          s8, a3, s4
                  blt          s5, a3, 90f
                  add          t6, a1, t1
                  xori         t1, a5, -394
76:               sra          t0, s3, a7
                  slli         s6, s1, 2
                  srli         s4, s9, 9
                  slli         a0, a7, 13
                  bgeu         t1, t3, 95f
                  xor          t0, a1, s1
                  sltu         s4, a2, s1
                  sll          s8, s10, a2
                  andi         ra, sp, 2005
                  sll          a4, s3, s5
                  addi         a5, t4, 1762
                  xori         s9, s9, 1639
                  sltu         sp, t3, t5
                  blt          s10, s11, 93f
90:               bgeu         s1, a0, 92f
                  lui          s0, 604690
92:               sub          a1, a5, s5
93:               beq          s0, s9, 101f
                  and          a1, a3, a6
95:               ori          s6, ra, 1561
                  bgeu         a5, s10, 105f
                  and          s11, gp, t1
                  or           t6, s10, t3
                  slt          tp, t4, s1
                  srli         s8, t3, 27
101:              bge          tp, s4, 110f
                  slti         s9, a6, -10
                  xori         s10, s7, 1141
                  lui          s4, 404665
105:              sra          a7, t0, s0
                  bgeu         a5, t0, 113f
                  srli         s8, s5, 28
                  xor          a2, t1, zero
                  srl          a7, a1, s11
110:              bne          ra, s4, 112f
                  bgeu         gp, t1, 117f
112:              lui          s11, 918029
113:              sltiu        a0, t5, 951
                  sra          s8, t6, a3
                  slli         s7, a3, 20
                  bgeu         a2, sp, 128f
117:              ori          s11, a3, 1621
                  slli         s10, s5, 3
                  or           sp, ra, t3
                  xori         s7, sp, 381
                  bge          a4, t0, 134f
                  andi         t4, s4, 1980
                  sub          a0, t5, s3
                  blt          t4, tp, 138f
                  andi         t4, s1, -394
                  blt          a7, t0, 139f
                  slt          s1, a4, s0
128:              bltu         s2, gp, 131f
                  auipc        sp, 276949
                  blt          s7, gp, 132f
131:              slli         a6, tp, 2
132:              xor          s9, a2, a7
                  sra          gp, s4, t0
134:              sra          s0, t1, s2
                  bgeu         t4, s10, 149f
                  add          t6, a6, t0
                  srai         t2, s9, 25
138:              slt          a7, s4, a1
139:              beq          s9, s9, 152f
                  bltu         s1, zero, 147f
                  bne          a7, s6, 142f
142:              xor          a6, s6, s7
                  andi         zero, s9, -1034
                  auipc        sp, 680139
                  sll          t2, t5, zero
                  srli         a7, a4, 25
147:              and          s10, s7, a4
                  sltu         a6, s7, a4
149:              auipc        a6, 881626
                  and          a2, a4, t3
                  slli         s7, zero, 13
152:              bge          s1, zero, 172f
                  srai         t0, t2, 16
                  sra          s5, a5, s3
                  sltu         t2, s1, t1
                  auipc        t6, 429709
                  blt          s2, tp, 159f
                  addi         s7, s4, -517
159:              add          a6, s0, t0
                  bge          ra, t0, 165f
                  sub          s1, s9, a5
                  blt          s1, s1, 165f
                  ori          s0, a4, 1273
                  sub          s5, s10, s4
165:              sub          s7, t4, a1
                  slti         s8, a6, 1703
                  or           a3, a2, s5
                  add          a6, sp, t0
                  srli         tp, t3, 10
                  or           s5, t4, a0
                  add          tp, s7, s1
172:              andi         a2, t2, 439
                  bge          a4, t0, 179f
                  auipc        ra, 369464
                  sll          s7, s9, s5
                  andi         a5, a4, -153
                  nop
                  beq          t4, t1, 187f
179:              xori         a2, sp, -1918
                  srai         t0, ra, 22
                  bge          sp, a7, 200f
                  andi         a0, s11, 782
                  xor          sp, a1, s4
                  sub          s9, zero, a4
                  srli         t0, s1, 14
                  lui          s9, 960081
187:              srai         zero, s11, 16
                  beq          t5, t5, 197f
                  andi         a3, s1, 205
                  nop
                  bne          a7, s9, 203f
                  auipc        zero, 401384
                  bltu         t1, s2, 212f
                  srai         s11, a6, 24
                  blt          t5, s10, 204f
                  bgeu         s10, a7, 210f
197:              slli         t2, s0, 3
                  sll          t0, zero, t2
                  slt          s0, ra, t4
200:              bge          ra, s0, 217f
                  srai         s10, t6, 20
                  beq          t1, s8, 215f
203:              sltu         a5, a1, s9
204:              srai         a4, a4, 26
                  lui          s7, 849304
                  slli         s1, s3, 24
                  add          a3, ra, s4
                  bne          tp, a5, 221f
                  bge          s0, tp, 217f
210:              bne          a3, s3, 227f
                  xor          t3, s11, s10
212:              bltu         s9, s3, 215f
                  nop
                  addi         zero, t3, -1396
215:              andi         s4, s9, -3
                  srai         t1, s3, 2
217:              and          s4, a2, s4
                  or           t1, a4, s7
                  addi         t4, a7, -587
                  blt          a2, a6, 222f
221:              bltu         t4, a5, 223f
222:              slti         s7, s0, 76
223:              and          s5, s8, s0
                  addi         s9, s4, 684
                  xor          a2, s1, a2
                  bgeu         t4, tp, 240f
227:              sltiu        s6, ra, 1379
                  and          s7, s3, a5
                  srl          a4, a0, t3
                  add          t1, t1, t4
                  addi         t2, a7, 1391
                  sra          tp, s9, t5
                  xori         t1, a3, -807
                  slti         t0, s1, -1398
                  sll          t3, a1, t1
                  sub          a0, s8, s10
                  beq          s11, a7, 252f
                  ori          s4, t4, 231
                  sltiu        gp, s8, -881
240:              srai         t4, a4, 17
                  sltiu        zero, s8, -1353
                  sltiu        sp, s10, 927
                  beq          s4, s3, 247f
                  or           s5, a4, t4
                  sub          t0, s1, s0
                  srl          s10, a2, a7
247:              sltiu        s1, s9, -901
                  addi         a0, t1, 1156
                  sub          a3, t5, t4
                  addi         a0, s8, 199
                  slli         s1, t0, 13
252:              auipc        s9, 566931
                  xori         s1, s11, -1431
                  bne          s7, ra, 260f
                  ori          s9, a3, -1519
                  slt          s10, a0, t1
                  sltu         ra, zero, s0
                  or           a3, t4, zero
                  bltu         s6, t5, 262f
260:              bge          gp, s8, 266f
                  srai         sp, s3, 0
262:              bgeu         a1, s2, 271f
                  add          a6, s6, s7
                  nop
                  nop
266:              ori          a4, s8, -368
                  srli         s10, s10, 1
                  lui          s5, 10243
                  sra          sp, s8, t0
                  xor          ra, s11, t0
271:              sltiu        s9, a7, -1664
                  sra          t2, s1, gp
                  sll          s6, s2, t1
                  or           gp, s2, a2
                  sub          zero, s8, s9
                  slt          a5, a2, a4
                  beq          a7, sp, 290f
                  bne          tp, s8, 290f
                  bne          a1, a0, 280f
280:              sltiu        s9, ra, 1559
                  beq          a2, a6, 290f
                  slt          tp, s8, t2
                  beq          sp, s4, 290f
                  bne          s8, a0, 290f
                  slli         s6, s9, 10
                  bgeu         t1, t3, 290f
                  xori         a7, tp, 619
                  srl          s5, a4, s11
                  sll          a6, t2, s10
290:              sltu         s1, a7, a3
                  lw           s1, 4(t5)
                  xori         tp, a2, -1984
                  sub          a4, s8, gp
                  andi         a7, a2, -176
                  sra          zero, s2, a6
                  sltiu        s4, t3, 1083
                  addi         t5, t5, 16
                  xori         sp, a5, -31
                  xor          t3, t6, a2
367:              addi x4, x9, 0
367:              jalr x4, x4, 0
sub_2:            beq          t6, a1, sub_2_stack_p
sub_2_stack_p:    addi         t5, t5, -24
                  xori         t3, a4, 1019
                  slt          s5, sp, a5
                  xor          s0, t4, a4
                  sltiu        sp, t3, -1511
                  sub          s7, gp, zero
                  sw           s1, 4(t5)
                  andi         t2, a5, 538
                  srl          t2, s2, a4
                  add          s10, s7, s2
                  lui          t6, 599349
                  slt          gp, s0, s11
                  srai         s8, s10, 27
                  beq          s1, s7, 9f
                  and          ra, s9, t4
                  xori         a1, s6, -1761
                  xor          s10, t3, a1
9:                slli         a0, a2, 9
                  lw           s1, 4(t5)
                  srl          a7, t2, t3
                  addi         t5, t5, 24
                  xori         a1, s11, -789
                  slt          s5, a3, t3
                  andi         s11, s2, 740
25:               addi x29, x9, 1
25:               jalr x29, x29, 0
sub_4:            xor          a0, t5, s3
                  xori         t6, s4, -96
                  ori          ra, gp, 1246
                  addi         t5, t5, -56
                  nop
                  sra          t1, tp, t6
                  sra          zero, s0, s1
                  sw           s1, 4(t5)
                  srai         t3, a1, 23
                  addi         s5, zero, 10 #init loop 1 counter
                  or           a4, tp, sp
                  sltiu        s11, t3, 1474
                  sltu         ra, t1, sp
                  addi         a3, zero, 10 #init loop 1 limit
                  xori         a7, s5, -1987
sub_4_2_1_t:      add          ra, a3, sp
                  slt          a7, s2, t4
                  addi         s5, s5, -9 #update loop 1 counter
                  srai         t6, s8, 9
                  xori         a6, a3, 2023
                  sltu         sp, t1, t3
                  addi         a0, zero, 5 #init loop 0 counter
                  sra          tp, a3, t6
                  addi         s7, zero, -19 #init loop 0 limit
                  andi         a1, s7, 990
                  srli         t6, s4, 4
sub_4_2_0_t:      lui          t3, 204070
                  sltu         s4, s0, a3
                  addi         a0, a0, -8 #update loop 0 counter
                  nop
                  bne          a0, s7, sub_4_2_0_t #branch for loop 0
                  srai         a2, zero, 7
                  slli         s10, a5, 6
                  auipc        s6, 824185
                  bgeu         s5, a3, sub_4_2_1_t #branch for loop 1
                  sub          s9, sp, s10
                  addi         s7, zero, 4 #init loop 1 counter
                  lui          a3, 476002
                  or           s9, a7, a2
                  addi         a4, zero, 4 #init loop 1 limit
                  srli         s6, s3, 26
                  sra          t6, s2, s3
sub_4_1_1_t:      sltiu        tp, s0, 1705
                  addi         s7, s7, -3 #update loop 1 counter
                  or           t1, s6, t5
                  sll          sp, tp, s4
                  xori         gp, t0, 52
                  addi         t3, zero, 10 #init loop 0 counter
                  and          s9, t4, a1
                  addi         a6, zero, 10 #init loop 0 limit
                  or           sp, t0, a7
                  auipc        t1, 152092
sub_4_1_0_t:      sltu         t2, t1, s2
                  addi         t3, t3, -8 #update loop 0 counter
                  nop
                  bgeu         t3, a6, sub_4_1_0_t #branch for loop 0
                  bgeu         s7, a4, sub_4_1_1_t #branch for loop 1
                  andi         s9, s10, -1241
                  sltiu        ra, t4, 1217
                  slli         t2, t0, 31
                  xori         s9, a0, 1617
                  add          a5, s1, s0
                  srai         t3, zero, 26
                  bge          s3, s2, 19f
                  bgeu         s2, a2, 17f
                  beq          a6, t3, 22f
                  xori         t2, s3, 520
                  or           s10, a3, t0
                  xor          s6, gp, s1
                  add          s6, t6, s4
                  srl          a2, t1, a6
                  srli         s0, t6, 22
                  sub          a7, a2, sp
                  xori         tp, t1, 1243
                  beq          s2, sp, 31f
17:               slti         a0, s4, -1537
                  bne          a3, t4, 22f
19:               xori         t4, s10, -171
                  sra          a6, t2, sp
                  xor          a3, t2, s2
22:               bge          s9, s1, 38f
                  slti         a4, a0, 486
                  srli         t3, a7, 22
                  slt          a1, s11, s7
                  nop
                  bltu         t2, s2, 41f
                  sltu         s0, t0, s9
                  sra          s11, t6, t3
                  srl          t1, s1, s8
31:               slti         s9, s1, 1503
                  xori         gp, s5, 1874
                  nop
                  lui          s8, 479199
                  andi         a7, s0, 2026
                  beq          a5, s9, 43f
                  sltiu        a6, zero, -1129
38:               bge          t6, a4, 51f
                  slli         tp, s7, 18
                  sltiu        s11, a4, -1521
41:               bne          s4, s2, 49f
                  bne          s7, s10, 49f
43:               add          a0, gp, s2
                  bge          a4, a6, 47f
                  bgeu         a7, zero, 62f
                  sll          a3, a7, t6
47:               bltu         s4, a3, 53f
                  or           a1, t0, t3
49:               bltu         zero, s5, 56f
                  and          t4, tp, s2
51:               beq          t3, zero, 56f
                  sll          t4, s3, t2
53:               bgeu         s6, sp, 73f
                  add          a4, s7, s3
                  slli         zero, sp, 21
56:               slli         ra, t1, 31
                  slt          s7, s6, s4
                  auipc        a1, 76841
                  nop
                  bne          tp, t4, 61f
61:               or           zero, s8, t3
62:               bltu         t0, a4, 75f
                  and          sp, t3, a1
                  nop
                  sltu         t4, a7, a5
                  sltu         t1, a7, a2
                  or           a3, a4, a2
                  slt          a5, t6, tp
                  add          s7, s7, s1
                  bltu         t3, t0, 88f
                  sra          t0, a4, s6
                  sll          t1, t0, t3
73:               slt          a2, a1, s4
                  sltiu        gp, s9, 1757
75:               sra          a0, s2, t6
                  srl          sp, s1, s8
                  or           t4, a4, a2
                  add          a6, tp, s3
                  slli         s0, t5, 31
                  nop
                  andi         t2, a1, -1668
                  andi         t6, sp, 706
                  ori          s11, t6, 838
                  and          a0, t3, s10
                  addi         a5, s2, 1751
                  bgeu         a7, s0, 87f
87:               sub          s10, s7, s8
88:               andi         ra, s9, 349
                  sll          ra, s1, s10
                  andi         s1, zero, 1993
                  srai         s10, s3, 29
                  xor          s10, s7, gp
                  slti         s7, s3, -171
                  bne          gp, a6, 111f
                  and          a4, zero, t5
                  beq          t2, s9, 97f
97:               bne          s0, s4, 105f
                  srl          s8, tp, a5
                  xor          zero, sp, t6
                  xori         s9, s0, 1980
                  bgeu         tp, a1, 103f
                  xori         s11, a6, -129
103:              lui          a4, 227524
                  sltiu        a3, s1, -354
105:              bne          s1, s4, 117f
                  slt          s11, a7, a7
                  nop
                  xor          a5, sp, tp
                  srli         ra, s9, 13
                  sub          s0, s11, s9
111:              srai         t0, a4, 15
                  lui          a3, 893006
                  addi         a3, zero, 9 #init loop 0 counter
                  add          s6, t6, s9
                  andi         a6, a2, -282
                  and          zero, s7, s6
                  andi         a4, a1, 1042
                  sltu         t3, a6, s5
                  sltiu        s1, a6, -1767
                  addi         a5, zero, 3 #init loop 0 limit
sub_4_0_0_t:      andi         s9, s2, -221
                  sltu         tp, s9, s5
                  addi         a3, a3, -2 #update loop 0 counter
                  slti         t6, s5, 109
                  lui          s5, 522682
                  sub          ra, s8, t5
                  sltu         s0, s4, s2
                  sub          s5, zero, a6
                  lui          t1, 377334
                  bgeu         a3, a5, sub_4_0_0_t #branch for loop 0
                  xor          a7, a6, gp
                  ori          s5, a6, -1803
                  bltu         a2, s7, 122f
                  add          s1, t5, t2
                  srai         s7, a4, 24
117:              sub          a6, s2, t2
                  srl          a7, a3, t2
                  or           t4, s6, s6
                  addi         t0, t0, -1695
                  sll          t1, s3, a6
122:              or           t1, s0, t1
                  slli         a0, ra, 29
                  xor          sp, s4, s11
                  beq          s6, t4, 138f
                  and          a6, s3, t0
                  sub          s0, a4, a7
                  and          a2, a0, s7
                  sub          zero, s6, t5
                  beq          a3, s11, 145f
                  or           s11, s3, ra
                  lui          ra, 833165
                  srli         gp, s9, 8
                  nop
                  blt          s6, ra, 138f
                  srli         t4, a2, 17
                  slli         a6, sp, 2
138:              blt          tp, t1, 156f
                  sll          gp, a6, s9
                  bgeu         s7, a6, 153f
                  bgeu         s4, t1, 149f
                  srl          gp, a2, t4
                  beq          a1, gp, 146f
                  xori         t1, a0, 595
145:              addi         s6, s9, 176
146:              bge          ra, a3, 151f
                  srli         zero, s0, 17
                  or           s11, a5, s11
149:              sra          a6, sp, s11
                  nop
151:              bge          t4, a6, 165f
                  srli         a4, a1, 30
153:              slti         a4, t5, 6
                  auipc        sp, 228262
                  slti         t2, a2, 1402
156:              bltu         s11, s9, 171f
                  srl          a2, s2, a4
                  sltiu        tp, t4, 1174
                  add          tp, zero, t2
                  slli         t2, a1, 0
                  andi         s10, a1, 909
                  beq          s10, t3, 175f
                  sub          s0, zero, s10
                  auipc        ra, 644542
165:              bltu         gp, t6, 168f
                  addi         a5, a2, -903
                  sltu         a6, t2, a2
168:              sltiu        a7, t5, 1840
                  slti         t4, t1, -726
                  blt          zero, t5, 179f
171:              lui          zero, 332831
                  xor          t1, zero, t6
                  blt          zero, a0, 174f
174:              srai         a1, s2, 27
175:              ori          s8, s6, 1523
                  sll          s7, a4, a6
                  addi         s4, a4, 1035
                  sltu         s7, t0, t4
179:              sra          s11, s7, a5
                  sltiu        a6, s11, -1008
                  lw           s1, 4(t5)
                  lui          a0, 216379
                  srai         a4, t3, 21
                  and          a1, a5, t2
                  sra          ra, a6, s1
                  ori          a0, gp, -390
                  srli         s9, s1, 16
                  addi         t5, t5, 56
                  slt          gp, a0, a2
267:              addi x7, x9, 1
267:              jalr x7, x7, 0
sub_3:            addi         t5, t5, -44
                  sltu         s9, a3, a1
                  sw           s1, 4(t5)
                  addi         s7, t0, -943
                  slt          gp, s10, s9
                  addi         a0, zero, 7 #init loop 0 counter
                  srl          a3, sp, t1
                  slli         t2, zero, 11
                  srl          a5, ra, t5
                  addi         s6, zero, 6 #init loop 0 limit
                  and          s8, t3, a2
sub_3_9_0_t:      sub          s9, t2, s1
                  add          s0, a3, a1
                  addi         a0, a0, -5 #update loop 0 counter
                  slt          tp, t6, a6
                  bgeu         a0, s6, sub_3_9_0_t #branch for loop 0
                  slt          s1, s4, t4
                  addi         sp, zero, -2 #init loop 0 counter
                  addi         ra, zero, -9 #init loop 0 limit
sub_3_26_0_t:     ori          t6, s10, -169
                  addi         sp, sp, -7 #update loop 0 counter
                  beq          sp, ra, sub_3_26_0_t #branch for loop 0
                  sra          zero, t4, s6
                  addi         a2, zero, 5 #init loop 1 counter
                  srai         s0, s5, 2
                  addi         s5, zero, 17 #init loop 1 limit
sub_3_6_1_t:      xor          s1, gp, t2
                  xor          ra, a5, s1
                  addi         a2, a2, 4 #update loop 1 counter
                  addi         s10, zero, 8 #init loop 0 counter
                  slt          ra, s5, t5
                  addi         a3, zero, 7 #init loop 0 limit
sub_3_6_0_t:      sltiu        s8, t2, 1129
                  addi         s10, s10, -6 #update loop 0 counter
                  andi         t1, s3, -939
                  andi         a1, t2, 1149
                  bgeu         s10, a3, sub_3_6_0_t #branch for loop 0
                  beq          a2, s5, sub_3_6_1_t #branch for loop 1
                  sltu         s8, gp, zero
                  addi         s11, zero, 7 #init loop 1 counter
                  addi         t3, zero, 18 #init loop 1 limit
sub_3_7_1_t:      ori          s9, sp, 1813
                  addi         s11, s11, 4 #update loop 1 counter
                  addi         s6, zero, -5 #init loop 0 counter
                  addi         s8, zero, -1 #init loop 0 limit
                  sub          tp, a2, s1
sub_3_7_0_t:      addi         a5, a2, -750
                  addi         s6, s6, 4 #update loop 0 counter
                  beq          s6, s8, sub_3_7_0_t #branch for loop 0
                  slt          zero, tp, sp
                  bltu         s11, t3, sub_3_7_1_t #branch for loop 1
                  add          s9, ra, s7
                  addi         a7, zero, -8 #init loop 1 counter
                  and          a2, s8, a2
                  auipc        a5, 108523
                  addi         a3, zero, 1 #init loop 1 limit
sub_3_17_1_t:     andi         zero, s11, -164
                  slt          t3, gp, zero
                  addi         a7, a7, 10 #update loop 1 counter
                  addi         gp, zero, 10 #init loop 0 counter
                  addi         s7, zero, 6 #init loop 0 limit
                  xor          s6, a4, sp
                  and          s11, a0, ra
sub_3_17_0_t:     addi         zero, s3, -809
                  srl          s1, s4, ra
                  addi         gp, gp, -3 #update loop 0 counter
                  ori          s8, a0, -1009
                  bgeu         gp, s7, sub_3_17_0_t #branch for loop 0
                  sub          a1, s7, t6
                  or           ra, a1, gp
                  blt          a7, a3, sub_3_17_1_t #branch for loop 1
                  andi         t4, a2, 164
                  addi         t6, zero, -4 #init loop 1 counter
                  addi         a7, s6, -1828
                  srl          tp, t4, s9
                  and          s1, t3, ra
                  slli         t1, t0, 26
                  xor          s7, t3, a0
                  addi         s5, zero, -4 #init loop 1 limit
sub_3_12_1_t:     sltu         gp, t6, t2
                  lui          sp, 383955
                  addi         t6, t6, -7 #update loop 1 counter
                  sltiu        s4, s10, 404
                  srai         t3, s4, 10
                  addi         a5, zero, -7 #init loop 0 counter
                  addi         a4, zero, 3 #init loop 0 limit
sub_3_12_0_t:     slti         s7, s11, 1329
                  nop
                  addi         a5, a5, 2 #update loop 0 counter
                  bne          a5, a4, sub_3_12_0_t #branch for loop 0
                  nop
                  bge          t6, s5, sub_3_12_1_t #branch for loop 1
                  sll          s7, t6, t3
                  addi         t6, zero, -3 #init loop 0 counter
                  addi         a4, zero, 19 #init loop 0 limit
sub_3_27_0_t:     lui          t3, 1017835
                  addi         t6, t6, 10 #update loop 0 counter
                  blt          t6, a4, sub_3_27_0_t #branch for loop 0
                  sltu         t2, gp, t2
                  addi         a1, zero, -7 #init loop 0 counter
                  slti         a4, s10, -1533
                  sll          a2, s4, s11
                  srai         t1, a7, 20
                  addi         s9, zero, 18 #init loop 0 limit
                  sub          t1, s1, t5
                  slli         s5, s10, 2
                  andi         ra, a5, -1357
                  andi         t3, a2, -95
sub_3_1_0_t:      add          s6, s0, s2
                  xor          s1, t0, t6
                  xori         t0, s4, -1380
                  addi         a1, a1, 3 #update loop 0 counter
                  blt          a1, s9, sub_3_1_0_t #branch for loop 0
                  sra          t0, s4, s10
                  addi         a3, zero, 3 #init loop 0 counter
                  sub          t2, tp, t6
                  and          s6, s6, a7
                  xor          s8, gp, t1
                  addi         t0, zero, 7 #init loop 0 limit
                  or           a5, s11, t2
                  or           zero, a0, a3
                  slti         s7, s10, 1137
                  auipc        gp, 69251
sub_3_23_0_t:     sub          a7, gp, s8
                  srai         s7, s7, 0
                  srai         a4, s10, 11
                  addi         a3, a3, 1 #update loop 0 counter
                  nop
                  slti         s0, t4, -714
                  xor          t6, tp, a4
                  and          a6, gp, a0
                  xori         a0, a2, -147
                  srl          a7, a1, a5
                  lui          ra, 298558
                  sll          t1, a6, t6
                  xor          zero, t2, s4
                  sub          a1, t4, s0
                  slli         s5, gp, 28
                  add          t1, s11, s3
                  blt          a3, t0, sub_3_23_0_t #branch for loop 0
                  slti         a2, s3, 1696
                  addi         s11, zero, -2 #init loop 1 counter
                  slli         a6, t4, 7
                  and          tp, t1, s3
                  lui          s10, 1015517
                  sll          t2, a5, s8
                  slt          a7, t2, t4
                  addi         sp, zero, -3 #init loop 1 limit
                  srai         s10, s10, 20
                  sub          ra, zero, a3
                  srai         zero, a1, 5
sub_3_0_1_t:      xori         t2, t3, 814
                  sub          s9, t5, a6
                  addi         s11, s11, -1 #update loop 1 counter
                  xor          s5, a7, t3
                  addi         t4, zero, -7 #init loop 0 counter
                  ori          s5, tp, 516
                  addi         s4, zero, -19 #init loop 0 limit
                  addi         s9, s5, -723
                  sltu         t3, t5, a2
sub_3_0_0_t:      sltiu        s5, s3, -1831
                  andi         tp, a7, -583
                  addi         a0, s1, 478
                  addi         t4, t4, -6 #update loop 0 counter
                  beq          t4, s4, sub_3_0_0_t #branch for loop 0
                  add          s10, t0, s5
                  lui          s0, 1037143
                  sltu         gp, s4, s5
                  andi         t2, a6, -1828
                  nop
                  sll          t6, s3, t3
                  nop
                  bne          s11, sp, sub_3_0_1_t #branch for loop 1
                  srai         a6, s3, 31
                  addi         t4, zero, -5 #init loop 0 counter
                  srl          t0, s1, a2
                  sra          zero, t2, s8
                  xor          a4, a4, s0
                  srai         gp, s9, 10
                  sll          a0, s3, t2
                  slli         sp, s11, 18
                  addi         s11, zero, 17 #init loop 0 limit
                  sub          sp, s8, s11
sub_3_16_0_t:     ori          t1, a5, -235
                  sub          s10, a6, s3
                  sltu         s5, t4, s0
                  slli         a7, s5, 12
                  addi         t4, t4, 1 #update loop 0 counter
                  sll          sp, a7, s11
                  add          a1, s8, zero
                  xori         s4, s10, 337
                  srai         s4, t5, 23
                  blt          t4, s11, sub_3_16_0_t #branch for loop 0
                  lui          t6, 465362
                  addi         s5, zero, -8 #init loop 0 counter
                  srai         s8, s8, 1
                  sltu         s9, a1, gp
                  slli         a5, a0, 13
                  andi         tp, s7, -1833
                  xori         zero, a3, 1212
                  srl          t0, tp, s2
                  or           t0, s10, a3
                  or           zero, t2, a4
                  sub          a4, sp, t4
                  andi         a4, s6, -922
                  addi         a7, zero, 2 #init loop 0 limit
sub_3_2_0_t:      sltu         t0, s2, s11
                  addi         s5, s5, 10 #update loop 0 counter
                  beq          s5, a7, sub_3_2_0_t #branch for loop 0
                  sub          t6, a4, ra
                  addi         a7, zero, -10 #init loop 0 counter
                  slt          a2, t1, s0
                  andi         tp, zero, -78
                  srli         a2, s4, 8
                  addi         tp, a7, 216
                  sra          t6, s8, a4
                  xor          zero, s1, s0
                  addi         s10, zero, 14 #init loop 0 limit
                  andi         s5, s5, 1753
                  srl          zero, s9, s1
                  or           ra, t0, t6
sub_3_19_0_t:     add          t3, a7, s8
                  sltiu        a2, s8, -1246
                  addi         a7, a7, 4 #update loop 0 counter
                  sub          s0, sp, t3
                  addi         s11, a2, 1420
                  sll          ra, gp, s9
                  or           tp, tp, t4
                  sub          s1, s3, zero
                  beq          a7, s10, sub_3_19_0_t #branch for loop 0
                  nop
                  addi         t4, zero, 6 #init loop 1 counter
                  srl          t1, t0, t1
                  addi         a1, zero, 6 #init loop 1 limit
                  nop
                  lui          s7, 120677
sub_3_21_1_t:     lui          a4, 106310
                  addi         t4, t4, -5 #update loop 1 counter
                  addi         ra, zero, -10 #init loop 0 counter
                  addi         t0, zero, -1 #init loop 0 limit
                  nop
sub_3_21_0_t:     xor          s7, t2, s11
                  slt          a4, a0, zero
                  addi         ra, ra, 7 #update loop 0 counter
                  nop
                  or           s8, s5, t4
                  blt          ra, t0, sub_3_21_0_t #branch for loop 0
                  sra          s11, t3, sp
                  ori          a2, t5, -497
                  srai         a6, a2, 8
                  slti         a2, s3, -1912
                  nop
                  bgeu         t4, a1, sub_3_21_1_t #branch for loop 1
                  srli         s1, t4, 15
                  addi         a2, zero, 6 #init loop 0 counter
                  xor          s7, s1, ra
                  addi         s10, zero, 13 #init loop 0 limit
sub_3_28_0_t:     xori         a1, s10, 1915
                  addi         a2, a2, 7 #update loop 0 counter
                  bne          a2, s10, sub_3_28_0_t #branch for loop 0
                  ori          tp, t4, 706
                  addi         sp, zero, -5 #init loop 0 counter
                  srli         a1, s2, 21
                  addi         s5, zero, -11 #init loop 0 limit
                  or           t2, tp, s4
                  and          s11, a0, tp
                  sll          a4, s4, a6
                  or           ra, t4, tp
                  srl          a5, a4, s3
sub_3_4_0_t:      slt          t3, ra, t4
                  sra          t0, sp, a5
                  srli         s10, ra, 27
                  add          s1, a2, s0
                  slti         s1, a6, -113
                  addi         sp, sp, -4 #update loop 0 counter
                  slt          a5, a5, a1
                  bge          sp, s5, sub_3_4_0_t #branch for loop 0
                  xori         s10, s5, 1453
                  addi         a4, zero, -8 #init loop 1 counter
                  addi         a1, gp, -211
                  slli         a5, s8, 21
                  andi         s6, t1, 1225
                  addi         s7, zero, -20 #init loop 1 limit
                  sub          t4, t2, a1
sub_3_3_1_t:      sub          a5, t2, a0
                  sra          t1, tp, s10
                  xori         a6, a1, -402
                  srl          a1, s2, s3
                  addi         a4, a4, -3 #update loop 1 counter
                  slt          s5, tp, a6
                  xori         t0, s10, -123
                  addi         s1, zero, 4 #init loop 0 counter
                  addi         s8, zero, 9 #init loop 0 limit
sub_3_3_0_t:      andi         a3, a5, 617
                  addi         s1, s1, 1 #update loop 0 counter
                  bne          s1, s8, sub_3_3_0_t #branch for loop 0
                  sltu         a1, s11, t0
                  srli         a1, t4, 7
                  lui          s11, 835946
                  addi         s9, s0, -1017
                  ori          gp, s0, 1555
                  bne          a4, s7, sub_3_3_1_t #branch for loop 1
                  sltiu        a1, s2, 1624
                  addi         s6, zero, 4 #init loop 0 counter
                  addi         s9, zero, 1510
                  addi         t3, a0, 631
                  srli         t1, t4, 27
                  addi         tp, zero, 5 #init loop 0 limit
                  sll          t4, t6, t1
sub_3_25_0_t:     lui          s11, 141977
                  sra          a5, zero, sp
                  nop
                  addi         s6, s6, 1 #update loop 0 counter
                  ori          a0, s7, -506
                  nop
                  sltiu        s1, s0, 137
                  sll          t1, t5, s4
                  sra          s9, a6, s9
                  xori         ra, s5, 1092
                  xor          a1, t5, t1
                  auipc        a5, 48855
                  slli         t4, t0, 10
                  bltu         s6, tp, sub_3_25_0_t #branch for loop 0
                  andi         a6, s9, -564
                  addi         s0, zero, -3 #init loop 0 counter
                  auipc        s8, 806016
                  slti         s8, s1, -313
                  srli         a4, tp, 23
                  srai         t4, gp, 18
                  sub          a5, a3, a0
                  ori          a3, s8, 1253
                  ori          a7, s0, -1747
                  srli         s7, s5, 9
                  addi         s10, ra, -2037
                  ori          s8, s4, 967
                  addi         t2, zero, -18 #init loop 0 limit
                  sub          s7, t5, tp
sub_3_11_0_t:     ori          t0, a0, 668
                  slt          t3, t4, ra
                  addi         s8, t3, -1067
                  sll          s9, gp, a5
                  sltiu        t3, s7, 778
                  sra          ra, a6, a2
                  addi         s0, s0, -1 #update loop 0 counter
                  auipc        t1, 170503
                  andi         a4, t0, -475
                  sll          ra, a3, zero
                  beq          s0, t2, sub_3_11_0_t #branch for loop 0
                  sll          s10, t5, t0
                  addi         ra, zero, 9 #init loop 0 counter
                  slt          t6, s5, s9
                  srai         a4, tp, 23
                  nop
                  add          sp, t0, s7
                  xor          s0, s10, t3
                  addi         s9, zero, 8 #init loop 0 limit
                  srli         s6, s0, 29
sub_3_14_0_t:     add          s11, zero, t0
                  andi         a3, s2, -1737
                  addi         a7, ra, 835
                  sltu         t6, a7, zero
                  addi         ra, ra, -6 #update loop 0 counter
                  addi         a3, ra, 274
                  slti         a5, ra, 1799
                  sub          s1, zero, t6
                  nop
                  slli         t4, s11, 19
                  slt          a1, t2, s9
                  sll          s0, a1, t2
                  xor          a6, a1, s5
                  slti         s5, s8, -1160
                  add          a0, t6, s2
                  bgeu         ra, s9, sub_3_14_0_t #branch for loop 0
                  auipc        a1, 150515
                  addi         a3, zero, -9 #init loop 0 counter
                  srl          gp, s6, t1
                  xor          a5, s7, a5
                  addi         s8, zero, -20 #init loop 0 limit
                  andi         gp, t6, -884
                  lui          s10, 90010
sub_3_24_0_t:     ori          a0, a6, 1744
                  slli         a6, s6, 17
                  sub          t2, s4, t0
                  xori         gp, a5, 1318
                  nop
                  sll          a5, s11, a6
                  addi         a3, a3, -2 #update loop 0 counter
                  or           s5, s9, s10
                  ori          t6, s9, 1098
                  sub          s9, s1, s9
                  xori         s5, t5, 1915
                  or           sp, s1, tp
                  bge          a3, s8, sub_3_24_0_t #branch for loop 0
                  sll          zero, a4, a7
                  srl          ra, s6, t6
                  add          a2, a1, gp
                  bge          a5, s4, 19f
                  ori          s11, a3, -263
                  slti         a5, s4, 1965
                  sltu         a2, s7, zero
                  srai         s4, a7, 21
                  ori          a2, t6, -861
                  srl          s5, sp, t4
                  srl          a0, t5, s4
                  slti         t1, s0, -1705
                  or           a4, s11, s2
                  bltu         t1, s3, 32f
                  slli         s0, s11, 19
                  bltu         a3, s7, 16f
                  sra          t4, s3, t5
16:               add          t6, a3, a2
                  sll          t4, t5, s4
                  bge          s0, ra, 21f
19:               lui          a0, 12032
                  xori         a2, a7, -444
21:               slti         s5, t0, -930
                  slti         zero, t4, -592
                  sra          a2, s3, tp
                  andi         s7, ra, -651
                  sll          t0, gp, t4
                  bne          t4, t3, 33f
                  sra          a6, s11, s10
                  slli         s11, t1, 12
                  bltu         tp, s10, 31f
                  lui          s11, 692562
31:               and          s5, a6, tp
32:               srai         a1, s0, 9
33:               add          t0, s8, sp
                  and          s10, s4, a5
                  sltu         t1, s4, a6
                  xor          s7, a4, a3
                  slli         sp, t4, 16
                  add          s9, s7, s6
                  or           s8, gp, s2
                  andi         s1, a0, 2033
                  addi         s11, s0, -57
                  add          ra, s7, t4
                  addi         a5, s1, 1482
                  sltiu        t1, ra, -733
                  slt          s7, s1, s4
                  nop
                  slt          s1, t4, a7
                  xori         gp, ra, 148
                  sltiu        s10, a0, -463
                  xor          t6, a5, sp
                  beq          tp, s5, 68f
                  beq          t1, s0, 66f
                  auipc        s5, 439425
                  addi         t0, zero, 4 #init loop 1 counter
                  addi         s9, zero, 16 #init loop 1 limit
sub_3_10_1_t:     xor          s7, s10, t1
                  addi         t0, t0, 10 #update loop 1 counter
                  addi         a3, zero, 2 #init loop 0 counter
                  addi         t1, zero, 14 #init loop 0 limit
sub_3_10_0_t:     sltu         a0, a4, ra
                  addi         a3, a3, 6 #update loop 0 counter
                  bne          a3, t1, sub_3_10_0_t #branch for loop 0
                  blt          t0, s9, sub_3_10_1_t #branch for loop 1
                  sub          s11, t1, t3
                  auipc        s7, 264911
                  and          s6, s11, t0
                  bge          t4, s9, 68f
                  lui          s0, 822189
                  beq          t0, t1, 68f
                  sltu         s4, zero, s0
                  auipc        sp, 1048188
                  lui          s10, 1048390
                  srli         tp, s6, 14
                  bgeu         tp, s2, 76f
                  sub          tp, s9, t3
                  or           zero, zero, t5
66:               beq          a0, a1, 85f
                  bltu         a7, ra, 77f
68:               ori          ra, a2, 611
                  xor          a5, a2, s8
                  srai         s7, a5, 25
                  slti         a1, t1, 2028
                  slti         s7, s9, 986
                  or           gp, a2, s6
                  nop
                  blt          s8, s3, 79f
76:               auipc        t4, 310186
77:               nop
                  slli         s5, a2, 6
79:               bgeu         s8, s5, 85f
                  sub          t6, ra, a7
                  srai         t3, a2, 1
                  bge          s11, ra, 99f
                  slti         t2, s11, -1391
                  bge          s1, a2, 91f
85:               slt          s5, a5, s6
                  blt          t0, s4, 103f
                  srai         a6, a5, 10
                  add          s10, t4, a0
                  addi         a7, tp, -1994
                  bge          t5, s11, 106f
91:               blt          s8, s4, 106f
                  sra          t4, t6, t5
                  beq          ra, s3, 113f
                  nop
                  sltiu        s1, tp, 1813
                  slt          a3, a7, gp
                  auipc        a5, 79016
                  xori         s1, s4, 1098
99:               sll          t6, s9, s8
                  srli         s8, s11, 31
                  sltiu        t2, a4, 1877
                  srai         gp, t1, 22
103:              bltu         a0, a3, 110f
                  sub          a6, s9, t3
                  slti         s8, a6, -10
106:              auipc        s5, 489047
                  blt          t1, a7, 126f
                  srl          sp, t1, t2
                  or           t6, s0, a4
110:              srli         a7, a4, 31
                  sll          s5, t1, s2
                  sll          gp, sp, a2
113:              srai         t0, a6, 25
                  srai         a4, tp, 3
                  or           a7, s8, s9
                  xor          s10, a4, s9
                  sub          a5, a5, s8
                  srl          t0, a6, s10
                  slt          t0, a2, a1
                  srli         s5, sp, 24
                  bne          s8, s8, 129f
                  nop
                  srl          s0, s2, a5
                  add          t2, a0, s0
                  sltiu        s9, s1, -1260
126:              slt          s6, s9, s7
                  slt          tp, a1, s10
                  slti         zero, t2, 0
129:              slti         s5, s4, 1474
                  sltiu        s0, t5, -963
                  blt          s3, a7, 135f
                  slli         sp, gp, 16
                  sll          s6, s11, a5
                  bgeu         a7, a7, 138f
135:              bge          s9, s0, 136f
                  addi         s4, zero, -1 #init loop 0 counter
                  and          s7, tp, a5
                  lui          a1, 83548
                  or           s1, s9, a0
                  xori         a6, s0, 337
                  xor          tp, a0, ra
                  srai         s11, a7, 17
                  add          t3, a0, t2
                  addi         t6, zero, -3 #init loop 0 limit
sub_3_13_0_t:     sltiu        gp, a4, 1591
                  lui          a3, 237560
                  or           s1, s9, ra
                  slli         a3, a7, 22
                  nop
                  addi         s4, s4, -7 #update loop 0 counter
                  bge          s4, t6, sub_3_13_0_t #branch for loop 0
                  andi         s9, a4, -735
136:              xori         s8, ra, 1465
                  add          a2, a3, a5
138:              bne          t1, a6, 139f
139:              sltu         t1, a6, zero
                  slt          s7, s4, s0
                  srli         a5, a4, 20
                  blt          ra, s7, 156f
                  sll          sp, tp, t2
                  bltu         a6, s4, 158f
                  nop
                  sltiu        s0, gp, 1193
                  bne          s0, a0, 157f
                  sub          a0, s0, t3
                  add          s5, t2, s3
                  srli         a0, s10, 2
                  bne          s3, a5, 155f
                  srli         s10, sp, 23
                  and          ra, s3, zero
                  and          s10, a0, ra
155:              slt          a5, s11, s10
156:              slti         a7, s1, -379
157:              bltu         a2, tp, 174f
158:              or           gp, a6, s4
                  ori          s7, t2, -1967
                  bltu         sp, a3, 177f
                  add          s5, s1, s3
                  srl          t2, s1, ra
                  xori         t0, a1, -641
                  sll          s9, s3, s3
                  or           a1, ra, a6
                  bltu         t3, s7, 173f
                  blt          s10, s8, 181f
                  blt          s3, s7, 174f
                  srli         a6, a4, 28
                  beq          s3, sp, 189f
                  bne          ra, s4, 185f
                  xori         t3, a3, -564
173:              sll          t2, gp, gp
174:              auipc        a2, 302647
                  andi         a6, a7, -1171
                  bge          a1, s5, 183f
177:              slli         ra, s11, 8
                  sltiu        s5, zero, -2036
                  sra          a6, zero, t3
                  srai         a4, a4, 2
181:              or           t6, a0, a6
                  sra          s5, s10, tp
183:              add          s1, a7, a1
                  bge          s0, tp, 192f
185:              sll          sp, sp, s7
                  sub          s5, a5, a2
                  sub          s7, tp, a7
                  ori          s10, s10, -936
189:              xor          t2, s2, s10
                  slt          s0, s3, s8
                  bge          a0, s3, 192f
192:              slt          s9, ra, t4
                  andi         a7, s2, -911
                  sra          s6, t6, t1
                  sra          ra, a7, t5
                  bgeu         s3, s2, 213f
                  slti         ra, tp, -1010
                  slli         s10, a4, 22
                  sra          t0, s1, tp
                  or           a0, a1, tp
                  srai         s1, s3, 15
                  and          s11, s11, a2
                  addi         t6, t2, 649
                  slt          tp, s8, gp
                  auipc        sp, 250240
                  blt          a4, s6, 207f
207:              bltu         a6, s11, 223f
                  sub          zero, s8, s1
                  slt          s7, tp, a2
                  andi         s5, t4, 1260
                  bltu         a6, t5, 231f
                  srli         s10, a0, 8
213:              slli         gp, a2, 21
                  addi         a2, s3, 1248
                  nop
                  slti         s7, s1, -638
                  blt          tp, ra, 231f
                  sltiu        tp, s9, -2043
                  ori          a4, gp, 1267
                  sltiu        s10, sp, -87
                  lui          tp, 447445
                  slt          s5, zero, s7
223:              slt          t4, tp, gp
                  add          s5, s3, s2
                  or           a2, a2, a5
                  srai         a4, s3, 8
                  lui          t0, 518115
                  andi         zero, s0, 1671
                  slt          ra, s0, s4
                  xor          s10, s7, s3
231:              beq          s0, s11, 243f
                  srai         a1, s10, 31
                  blt          zero, s10, 253f
                  auipc        gp, 47078
                  sub          s4, a2, a7
                  sltu         zero, s11, ra
                  ori          a6, s2, -927
                  srli         t4, t1, 16
                  add          t3, s11, s8
                  slti         t3, a1, 694
                  ori          s9, sp, 529
                  sub          t1, s5, a1
243:              sub          s8, t6, s7
                  slli         t1, t4, 13
                  auipc        s5, 296811
                  sra          t0, s5, t4
                  nop
                  lui          s11, 656791
                  addi         s0, s0, -1383
                  sll          s1, s3, s2
                  and          a3, a0, t5
                  andi         a5, sp, -858
253:              bne          a3, t6, 263f
                  beq          s5, gp, 269f
                  bne          s1, a7, 272f
                  sltiu        tp, s5, -338
                  sltiu        s6, s7, -1245
                  xori         a3, ra, -1933
                  and          ra, s1, s4
                  slli         t0, s8, 22
                  lui          s4, 879697
                  srai         a5, zero, 8
263:              andi         sp, a2, 1077
                  slli         s11, s3, 29
                  srli         s1, s2, 19
                  slli         s5, s5, 13
                  auipc        a1, 799262
                  bgeu         a0, tp, 271f
269:              sll          s6, a2, s9
                  lui          t4, 747883
271:              slt          a2, t3, s10
272:              auipc        a1, 189497
                  bltu         s7, sp, 280f
                  ori          s1, s9, -1283
                  slti         a2, t2, -561
                  sra          a1, s9, s4
                  beq          t5, a3, 296f
                  bltu         s11, s9, 291f
                  bge          a1, s10, 281f
280:              sra          s5, t4, gp
281:              lui          s9, 175523
                  sub          t6, s8, a2
                  slt          a4, sp, a3
                  sll          t2, a5, s11
                  blt          s1, tp, 289f
                  auipc        a7, 763196
                  addi         s7, ra, -609
                  bne          t3, a0, 290f
289:              srli         a7, zero, 27
290:              sltiu        sp, s11, 1706
291:              andi         gp, s10, -1709
                  xor          s1, ra, a3
                  sltiu        s9, gp, -759
                  xor          t3, s4, s11
                  sub          t1, t1, zero
296:              lui          sp, 346670
                  xor          a5, a5, a4
                  add          t4, a6, s5
                  sltu         s7, t4, t3
                  bltu         t2, t1, 304f
                  sltu         s6, t4, s2
                  slli         a3, a2, 3
                  ori          s9, zero, 1843
304:              ori          s8, a6, 1961
                  sra          a6, s1, t3
                  xor          t2, a3, s2
                  lui          t2, 137044
                  or           t4, s5, a1
                  or           s11, s0, t0
                  slt          s8, a7, a3
                  beq          t1, s0, 325f
                  slti         tp, s1, 1767
                  xor          t3, s10, s4
                  slti         t0, t4, 823
                  bltu         a2, s4, 325f
                  bltu         a0, t6, 317f
317:              lui          s4, 383294
                  and          a1, a1, sp
                  andi         t1, t1, -1375
                  and          a7, tp, s1
                  ori          ra, s9, 500
                  addi         s11, s8, -901
                  nop
                  sub          t4, ra, s8
325:              sltiu        s7, a2, -1926
                  beq          s11, s4, 328f
                  bltu         s4, a0, 344f
328:              sltu         sp, t5, gp
                  sltu         s1, a6, s0
                  ori          t6, a4, 491
                  slt          zero, t0, a6
                  sra          a5, a7, ra
                  slt          t4, s11, s2
                  srli         gp, a3, 10
                  or           a6, a3, a3
                  slli         s7, s2, 3
                  add          a3, a1, s5
                  bne          t2, s6, 342f
                  bne          s3, a0, 355f
                  lui          a7, 100689
                  srli         a4, gp, 3
342:              sltiu        s1, tp, -1859
                  addi         s6, ra, -1344
344:              sltu         a4, a7, t5
                  srai         t4, t3, 1
                  lui          sp, 245593
                  blt          t5, a5, 351f
                  bgeu         a6, a3, 349f
349:              xori         t2, gp, -633
                  sra          a6, a4, t0
351:              blt          t3, s9, 358f
                  or           a7, a4, ra
                  lui          s4, 118013
                  srl          a2, tp, s0
355:              slti         a0, t0, 13
                  and          t2, gp, s11
                  blt          a5, s1, 361f
358:              bge          zero, a2, 368f
                  srai         s9, s5, 31
                  slli         s6, a7, 8
361:              nop
                  add          tp, s0, ra
                  or           a7, a5, s2
                  srai         s8, gp, 31
                  sltu         s10, t3, s3
                  beq          t4, t4, 373f
                  blt          ra, s11, 382f
368:              bltu         a1, s4, 370f
                  ori          s10, t6, -1171
370:              srl          s8, tp, s4
                  slti         t4, a7, -868
                  addi         t6, t0, 1846
373:              xor          sp, s7, a0
                  sltiu        sp, a4, -1985
                  srai         s10, a7, 4
                  blt          t1, t2, 396f
                  nop
                  bltu         a0, a5, 392f
                  srli         ra, t0, 9
                  bgeu         s5, s1, 400f
                  or           zero, ra, s7
382:              ori          zero, a7, -297
                  nop
                  or           gp, t3, s1
                  sub          s11, ra, s9
                  bltu         a5, a1, 393f
                  srli         tp, s4, 14
                  add          t4, s0, a3
                  slti         a7, zero, 1644
                  auipc        a7, 851153
                  sub          a0, t0, a1
392:              addi         gp, t5, -1524
393:              srl          s6, s5, tp
                  nop
                  xori         ra, s10, 536
396:              blt          zero, ra, 408f
                  slt          a5, s6, s2
                  srai         a6, t4, 10
                  sra          a7, s0, a6
400:              beq          s1, ra, 417f
                  xor          s1, a5, s6
                  srli         a2, a7, 11
                  xor          s0, ra, t1
                  sub          a6, a2, a3
                  slt          a2, zero, ra
                  and          t0, t5, s10
                  sltiu        t0, a5, 1295
408:              bne          s1, s7, 416f
                  srai         s8, t6, 16
                  sra          s0, s5, t2
                  slli         a2, t2, 21
                  xor          t1, s6, zero
                  sub          a4, s10, gp
                  bgeu         t5, s4, 433f
                  blt          a7, s3, 428f
416:              srl          t0, s3, ra
417:              sll          t4, s3, s3
                  bne          s1, s8, 424f
                  srli         t4, ra, 28
                  slt          ra, sp, t0
                  bgeu         s5, t1, 424f
                  bge          zero, s3, 441f
                  slli         t2, t5, 9
424:              sra          zero, t5, s9
                  andi         s7, s6, -1977
                  sltiu        a3, s9, -1010
                  sub          s5, t6, s4
428:              or           sp, t1, s1
                  slli         s7, t3, 11
                  and          s4, a5, s3
                  xori         s5, t5, -774
                  bne          a4, a3, 446f
433:              ori          s1, t3, -54
                  bge          s4, s9, 451f
                  beq          t0, t1, 452f
                  bltu         s10, a7, 443f
                  or           a6, tp, t4
                  auipc        t6, 429599
                  nop
                  sltu         tp, a1, zero
441:              sltiu        a0, sp, -1665
                  bne          t5, tp, 445f
443:              srai         s5, t0, 18
                  auipc        s6, 188433
445:              andi         a6, t3, 734
446:              ori          a1, s0, 480
                  srli         s8, a3, 9
                  slti         sp, s4, -361
                  xor          a4, s10, zero
                  ori          t3, t6, 1896
451:              addi         sp, a2, 163
452:              sll          t2, a7, t5
                  slti         t2, a0, 532
                  nop
                  beq          a0, t4, 459f
                  ori          t4, s2, -3
                  sltiu        gp, s3, -555
                  slli         a3, t6, 3
459:              sll          s5, s6, s6
                  xori         s7, t3, -609
                  bne          s5, t6, 463f
                  srli         s10, t1, 11
463:              blt          s5, a2, 482f
                  ori          tp, a1, 369
                  nop
                  sra          t4, gp, a5
                  sub          t4, s5, s8
                  auipc        a4, 482808
                  slt          t1, s7, s7
                  bgeu         a1, gp, 471f
471:              sltiu        s0, a5, 1368
                  sra          sp, s8, s7
                  srai         s1, s6, 19
                  srai         a5, s9, 24
                  sub          a1, a6, s11
                  srai         s0, a3, 5
                  or           t0, t0, s6
                  addi         t6, zero, 3 #init loop 1 counter
                  ori          zero, t4, -628
                  sll          tp, zero, a7
                  auipc        t4, 960029
                  xor          t4, a5, s7
                  auipc        a4, 85565
                  addi         t0, zero, 8 #init loop 1 limit
sub_3_8_1_t:      slt          s7, a6, sp
                  slt          s6, s5, s0
                  addi         t6, t6, 10 #update loop 1 counter
                  srli         zero, s4, 27
                  or           a2, t4, a6
                  xor          sp, s4, s4
                  or           sp, t6, t3
                  andi         s9, s2, -507
                  auipc        t4, 196113
                  addi         ra, zero, 10 #init loop 0 counter
                  andi         sp, a4, 52
                  srai         t3, a7, 6
                  addi         s1, zero, -11 #init loop 0 limit
                  slti         s7, s6, 995
sub_3_8_0_t:      sub          a0, zero, s0
                  addi         ra, ra, -7 #update loop 0 counter
                  bge          ra, s1, sub_3_8_0_t #branch for loop 0
                  auipc        a0, 599464
                  sra          t1, s3, gp
                  blt          t6, t0, sub_3_8_1_t #branch for loop 1
                  sra          t1, s6, t6
                  and          a4, s3, s3
                  or           tp, s5, t5
                  sll          s1, gp, ra
                  addi         t0, s5, -1735
482:              slli         a7, s4, 0
                  nop
                  sltu         tp, a6, t1
                  sltiu        t2, s8, 1360
                  srli         s1, a3, 19
                  sra          a1, a3, t4
                  xori         s10, sp, 962
                  sub          sp, t6, s10
                  or           sp, s11, a3
                  add          zero, a3, t3
                  sra          s10, s10, s8
                  or           t1, ra, t1
                  sll          a4, s6, sp
                  slli         a5, s9, 11
                  add          a5, s8, ra
                  sltiu        a6, s3, -168
                  srl          s0, tp, a2
                  slli         tp, s3, 20
                  bne          s10, t5, 514f
                  slt          a3, a3, gp
                  sll          a7, zero, t3
                  bltu         gp, a1, 507f
                  auipc        a2, 28706
                  sra          s6, t6, s7
                  srli         a2, t1, 19
507:              add          s1, t6, t6
                  sub          t2, s4, s6
                  andi         s1, a3, -493
                  add          s7, s10, s8
                  ori          a3, tp, 704
                  xori         s6, s4, 1555
                  bne          s5, s10, 520f
514:              slli         a5, zero, 7
                  slt          t6, a6, a1
                  lui          t2, 33326
                  bltu         a1, s3, 533f
                  xori         t4, tp, 138
                  beq          s7, a2, 521f
520:              blt          sp, s4, 540f
521:              srli         t4, s5, 3
                  lui          t3, 131811
                  slli         t0, ra, 11
                  srli         ra, s4, 21
                  bne          tp, t5, 532f
                  srai         t4, t3, 17
                  beq          ra, s11, 540f
                  add          s1, a7, s1
                  nop
                  srai         t4, s0, 16
                  slli         t6, t5, 19
532:              sltu         ra, gp, t5
533:              ori          zero, a6, -2030
                  sub          ra, s8, t3
                  beq          t6, s11, 550f
                  and          a4, tp, a0
                  xori         t6, t4, -25
                  beq          s10, a5, 548f
                  slt          s6, a0, s2
540:              slti         sp, t3, 66
                  bltu         s7, s11, 553f
                  or           tp, tp, s9
                  bne          a0, s2, 544f
544:              bltu         tp, t0, 558f
                  blt          s4, s9, 562f
                  xori         t0, s1, 1588
                  beq          s2, t4, 557f
548:              nop
                  srli         s9, s10, 0
550:              bltu         s7, t4, 558f
                  nop
                  lui          t0, 1036424
553:              slt          s7, t2, gp
                  bltu         a4, t2, 573f
                  sub          s10, s4, a3
                  sll          s0, sp, a7
557:              bgeu         a7, t6, 563f
558:              sll          a2, zero, t1
                  add          s1, a5, a5
                  auipc        sp, 768771
                  bne          s10, s0, 565f
562:              blt          a5, s0, 579f
563:              sll          a5, sp, s0
                  bge          a4, a2, 581f
565:              slti         t1, a5, -947
                  andi         t2, t3, 1871
                  sub          a2, s9, a6
                  bge          a0, s4, 585f
                  xor          t3, sp, s10
                  ori          a0, sp, -1990
                  lui          a1, 218625
                  srai         s10, a2, 9
573:              blt          s11, s10, 593f
                  sll          s7, a4, s3
                  sll          zero, s2, t1
                  add          ra, a6, s9
                  slti         s1, a4, 1537
                  xor          gp, s0, a2
579:              nop
                  bgeu         s1, s0, 594f
581:              sltiu        a1, s8, -1983
                  sra          ra, a7, s5
                  addi         s7, gp, 435
                  and          s10, t2, s3
585:              or           tp, a7, a6
                  nop
                  lui          zero, 814316
                  auipc        ra, 650336
                  srai         s9, s11, 13
                  ori          tp, a5, 536
                  srl          t0, t6, a2
                  add          a3, t6, s1
593:              and          zero, a1, tp
594:              slt          s10, s6, a0
                  sra          a7, a3, s11
                  and          a4, zero, t3
                  srli         s1, tp, 6
                  bgeu         a4, a7, 618f
                  bne          zero, ra, 611f
                  add          a0, s9, a3
                  bge          gp, s10, 604f
                  add          a3, s10, s2
                  sub          s7, gp, t1
604:              slti         s5, t6, -834
                  bgeu         s5, a6, 622f
                  or           t4, s2, s8
                  bltu         a0, a3, 611f
                  xori         t1, sp, -474
                  and          a1, a1, t2
                  sltu         t2, s10, s9
611:              lui          sp, 691994
                  addi         a0, s0, -1711
                  slti         s0, ra, -179
                  beq          a6, s11, 629f
                  bgeu         t0, s1, 616f
616:              and          a4, a5, s6
                  srai         gp, s9, 12
618:              sra          s1, a4, s0
                  sltu         t2, s0, s6
                  sub          t0, zero, s5
                  bne          t4, t1, 625f
622:              bne          s10, tp, 641f
                  or           sp, s10, s9
                  nop
625:              beq          sp, a3, 639f
                  sub          s1, sp, a2
                  sltu         t6, s11, a4
                  bne          s11, t2, 638f
629:              sltiu        t6, s8, -403
                  srl          s7, s0, s0
                  bne          zero, t5, 638f
                  blt          t4, a4, 642f
                  xori         a6, a4, -1076
                  sub          zero, s1, a2
                  ori          t3, zero, 1180
                  srl          s1, s1, s11
                  srai         a3, a3, 27
638:              bne          s11, t3, 655f
639:              slt          a4, a0, a2
                  add          zero, s4, tp
641:              lui          a1, 384971
642:              beq          a7, s3, 644f
                  bge          t3, t2, 659f
644:              blt          a0, s7, 646f
                  slt          ra, sp, s10
646:              sltu         s0, s3, s11
                  sll          a1, a2, ra
                  andi         s4, s2, 1254
                  srl          a6, a3, s6
                  srai         sp, a0, 6
                  sra          s4, s2, s0
                  slti         s6, s5, -1520
                  bltu         ra, a4, 673f
                  sub          a7, a1, a0
655:              sltiu        s6, s6, -48
                  srli         s8, s3, 11
                  lui          a6, 304423
                  sltu         t4, tp, a1
659:              srli         ra, s5, 11
                  xor          sp, t1, a2
                  bge          s6, t5, 678f
                  slli         gp, s6, 0
                  bgeu         gp, t5, 670f
                  addi         a0, s1, -383
                  addi         t3, zero, -5 #init loop 1 counter
                  sltiu        zero, s10, 896
                  sra          s0, a1, a4
                  addi         a4, zero, -17 #init loop 1 limit
                  xor          t1, a7, a5
                  xori         s7, s7, 877
                  auipc        s1, 925094
                  or           zero, s8, a3
                  xori         a3, t3, 520
                  sra          s6, t3, ra
sub_3_20_1_t:     and          s4, zero, s3
                  auipc        s11, 458441
                  add          a0, zero, t5
                  auipc        s0, 36540
                  xori         a5, a5, 1909
                  addi         t3, t3, -6 #update loop 1 counter
                  addi         a7, zero, -2 #init loop 0 counter
                  auipc        s5, 392820
                  add          a3, s3, s11
                  srl          t1, t2, a5
                  lui          t2, 589701
                  andi         s10, t6, -776
                  addi         tp, zero, -10 #init loop 0 limit
sub_3_20_0_t:     xori         s7, s0, 1818
                  xor          s10, s0, s11
                  addi         a7, a7, -6 #update loop 0 counter
                  and          t2, t0, s10
                  bge          a7, tp, sub_3_20_0_t #branch for loop 0
                  auipc        a3, 782943
                  bge          t3, a4, sub_3_20_1_t #branch for loop 1
                  ori          s6, a4, -149
                  bne          s5, ra, 684f
                  lui          a7, 85242
                  sra          a2, s4, t2
                  auipc        a3, 1046373
                  xor          t6, a4, t5
670:              or           a1, a5, zero
                  slti         a6, t3, 1145
                  auipc        a2, 419695
673:              add          t3, a7, s10
                  ori          a2, s9, -1507
                  slti         a0, a3, -2037
                  blt          s9, s11, 693f
                  andi         gp, s6, 712
678:              beq          s2, a5, 685f
                  srli         s5, a3, 9
                  beq          a1, a4, 694f
                  bgeu         t0, s9, 689f
                  bge          s1, a6, 696f
                  addi         a0, s1, 2042
684:              andi         s0, s10, -827
685:              andi         t2, a6, -1774
                  and          sp, t1, a3
                  auipc        a5, 89687
                  sub          a0, a1, a1
689:              sub          t1, s10, a2
                  slli         t2, s9, 5
                  bgeu         s2, s10, 697f
                  sra          a7, s11, gp
693:              bltu         a0, s11, 697f
694:              add          t4, s9, s6
                  andi         t3, s6, 837
696:              slt          a6, t3, tp
697:              sltiu        a6, t6, 795
                  andi         t6, s2, 685
                  beq          tp, gp, 700f
700:              slt          t6, a7, sp
                  lui          s4, 724335
                  xori         t4, a3, 1063
                  xori         a2, s7, 515
                  or           a0, zero, a0
                  bne          s10, tp, 718f
                  bge          s0, t5, 726f
                  sltu         a7, t3, s11
                  bgeu         a4, t3, 722f
                  addi         a7, s7, -470
                  bltu         a1, a6, 726f
                  bne          s8, s2, 730f
                  srl          a7, gp, ra
                  bge          s0, s9, 727f
                  lui          s0, 925151
                  add          a4, s3, a7
                  nop
                  bge          a5, s9, 732f
718:              or           gp, sp, s4
                  blt          tp, t2, 732f
                  slli         a4, tp, 29
                  bge          s5, t6, 728f
722:              slti         tp, gp, -921
                  addi         ra, sp, 1950
                  xor          s5, s0, a3
                  addi         t2, t3, -1815
726:              sltu         s0, a2, s3
727:              xori         s5, a4, 218
728:              xori         gp, a5, 1444
                  slli         s10, s6, 15
730:              or           a5, s9, s9
                  srl          t4, ra, s4
732:              sll          s1, t3, a2
                  slti         a0, t0, -507
                  sll          t1, a5, s6
                  slt          a3, s6, s5
                  xori         t4, t2, -732
                  sra          a3, t3, t4
                  bgeu         a1, tp, 757f
                  nop
                  or           a1, t0, t3
                  lui          zero, 456188
                  bltu         t1, a2, 745f
                  xori         ra, t2, 1178
                  beq          s11, ra, 758f
745:              bge          s2, a4, 753f
                  nop
                  srai         a4, ra, 27
                  bge          s6, s11, 749f
749:              sra          a4, sp, a5
                  or           t3, s3, s6
                  xori         t3, a2, -1162
                  slti         ra, a6, -1105
753:              bge          a1, a7, 770f
                  sltiu        s8, s10, -699
                  srai         t1, a1, 14
                  slti         s1, s8, 1405
757:              lui          s4, 548264
758:              bltu         ra, s10, 775f
                  bge          tp, a6, 760f
760:              sltiu        t3, gp, 1074
                  addi         s7, a6, 1745
                  addi         a7, zero, -10 #init loop 1 counter
                  sltu         a4, a2, s2
                  addi         s0, zero, -18 #init loop 1 limit
                  sltu         s4, gp, t0
                  lui          t3, 716757
sub_3_5_1_t:      xor          t4, s1, a0
                  slt          s1, s7, a6
                  addi         a7, a7, -6 #update loop 1 counter
                  sra          t3, s8, s0
                  addi         s11, zero, 10 #init loop 0 counter
                  andi         s6, zero, 1596
                  auipc        t1, 1043824
                  sltu         a2, t0, s8
                  srli         t0, s10, 13
                  addi         a5, zero, -4 #init loop 0 limit
                  sltiu        s4, a5, -2032
sub_3_5_0_t:      xor          t1, s9, tp
                  addi         s11, s11, -7 #update loop 0 counter
                  sra          a6, t0, s9
                  beq          s11, a5, sub_3_5_0_t #branch for loop 0
                  bge          a7, s0, sub_3_5_1_t #branch for loop 1
                  xori         t2, s7, 1938
                  nop
                  bge          t4, t4, 770f
                  nop
                  add          t1, t5, sp
                  bltu         s9, t2, 776f
                  srli         a4, sp, 10
                  andi         s0, s2, -775
                  sltiu        s4, t0, 1189
770:              bgeu         s6, s5, 774f
                  bltu         a7, t6, 773f
                  srai         s5, s9, 19
773:              nop
774:              add          s9, gp, zero
775:              addi         s10, t2, 1020
776:              bne          s7, zero, 778f
                  lui          sp, 835081
778:              srl          s7, a0, t1
                  lui          s11, 329788
                  addi         a0, t6, 363
                  lui          a5, 715123
                  slti         ra, gp, -276
                  lui          s11, 124730
                  slt          s9, a4, a2
                  srli         s0, s1, 26
                  slli         a2, a3, 23
                  beq          s0, sp, 804f
                  blt          t6, s2, 805f
                  sltiu        s9, s1, 900
                  beq          a1, s5, 797f
                  slli         s5, s5, 30
                  addi         s9, t6, 1163
                  andi         t3, s3, -1634
                  lui          s6, 731932
                  slli         s11, t5, 2
                  add          s9, a4, a2
797:              srli         a0, t4, 20
                  andi         a1, sp, 1669
                  slt          a6, a3, s7
                  sltiu        s8, t2, 1827
                  nop
                  slli         t4, s2, 31
                  and          ra, gp, s4
804:              beq          t4, a1, 808f
805:              bge          ra, t3, 811f
                  sra          s4, s6, a3
                  andi         s9, t5, 1065
808:              add          zero, s3, t4
                  bltu         a4, s9, 819f
                  ori          s6, s4, 1684
811:              sll          a5, s7, tp
                  sltiu        a0, s10, -1390
                  beq          s7, t3, 817f
                  bgeu         t0, a7, 826f
                  lui          a5, 534641
                  srai         s5, s8, 23
817:              auipc        s4, 736837
                  or           t0, a5, s3
819:              slt          s7, s0, a0
                  sltiu        t4, t4, 1885
                  sltiu        t6, tp, 1425
                  bltu         a3, a0, 842f
                  blt          a1, s4, 837f
                  bltu         s8, t5, 841f
                  slti         s8, tp, -1079
826:              bge          s0, a3, 836f
                  sub          ra, s10, s9
                  bltu         s2, gp, 830f
                  auipc        t1, 560600
830:              slti         a5, s11, -2023
                  sra          s11, s6, t4
                  and          zero, t1, t3
                  blt          t3, sp, 840f
                  lui          s4, 180169
                  srai         s11, s10, 27
836:              xor          s1, s1, t5
837:              andi         s4, a2, -562
                  slt          a0, sp, t6
                  slli         sp, s5, 7
840:              sub          a6, a5, a1
841:              addi         s5, zero, -1959
842:              sra          s10, a0, s7
                  slli         t4, s1, 9
                  add          a2, s4, t0
                  slli         a2, a6, 3
                  addi         s11, gp, -738
                  nop
                  auipc        s1, 809398
                  slt          a0, t0, sp
                  beq          t1, sp, 854f
                  andi         t1, sp, 790
                  sltu         t6, a7, s4
                  bge          a7, s8, 873f
854:              slti         ra, t3, -1624
                  bgeu         gp, t4, 874f
                  srli         t1, a4, 29
                  sltiu        sp, s5, 1682
                  lui          s6, 62004
                  bge          t1, a4, 878f
                  srai         t4, s6, 13
                  sub          a4, a2, s10
                  add          gp, zero, a6
                  srl          t1, zero, a3
                  xori         s11, s10, 1018
                  and          gp, s7, s10
                  or           s11, t0, gp
                  bne          s10, s5, 884f
                  sub          s11, s10, a4
                  sra          s9, a3, s4
                  lui          s7, 243964
                  ori          a5, s3, 1815
                  and          a0, t1, s2
873:              sltu         s4, t4, t0
874:              sll          t3, a0, s10
                  ori          a4, t0, -1389
                  lui          a3, 209782
                  sub          a5, s1, t2
878:              sra          a1, ra, a7
                  addi         a0, s1, 1758
                  srai         a0, a1, 29
                  beq          t5, t5, 882f
882:              ori          s6, s8, 60
                  xor          sp, t0, s9
884:              ori          sp, t6, 991
                  sra          a1, a2, gp
                  sltiu        t4, a6, 1431
                  srai         a2, t1, 2
                  addi         a5, ra, -887
                  add          a6, a3, t6
                  sltu         s5, a6, s11
                  addi         ra, t0, -1640
                  srai         a4, s8, 12
                  xor          gp, a1, gp
                  ori          t3, a3, 1045
                  andi         ra, s0, 1740
                  srli         s4, t0, 12
                  sll          s0, tp, a1
                  sltiu        s1, a1, -1299
                  addi         s10, t3, 625
                  slli         t4, t5, 16
                  srl          a3, s3, s2
                  addi         s8, a3, -909
                  or           t6, a6, t4
                  slli         t1, a3, 5
                  bgeu         s0, gp, 906f
906:              sra          t2, s3, t2
                  andi         a2, zero, 1245
                  slli         a0, s2, 13
                  andi         s8, t0, 1965
                  andi         t3, t0, -420
                  nop
                  sll          s0, s1, t3
                  beq          s3, t0, 933f
                  bltu         s10, s8, 918f
                  xor          t6, s7, a3
                  sll          s9, ra, s0
                  bgeu         tp, s9, 924f
918:              srai         a2, ra, 9
                  beq          gp, t6, 936f
                  xori         s6, a1, 924
                  sltiu        zero, s10, 1834
                  srai         a0, sp, 27
                  slt          s9, t5, a0
924:              beq          a2, s10, 934f
                  srli         zero, a0, 20
                  bgeu         s9, s8, 928f
                  sll          s9, tp, zero
928:              addi         a4, ra, 1177
                  slli         a0, t4, 14
                  bltu         t0, s11, 945f
                  bne          a1, gp, 943f
                  nop
933:              nop
934:              andi         t6, s9, 667
                  lui          s4, 997105
936:              sltu         t3, t2, t6
                  beq          ra, s11, 940f
                  sltiu        t0, a2, 494
                  slt          a0, s10, s6
940:              beq          tp, a2, 953f
                  slti         s8, tp, 444
                  sub          a2, s11, s5
943:              slt          a3, s10, a0
                  srai         s4, gp, 2
945:              ori          s9, s9, -1757
                  nop
                  sub          sp, a5, t4
                  or           a0, s11, t4
                  and          a5, t3, gp
                  srai         a4, gp, 20
                  slt          t6, t3, a6
                  sltiu        t2, zero, 1667
953:              bltu         a6, s1, 959f
                  srai         a1, a0, 2
                  or           t0, s2, s2
                  slt          s5, t0, s5
                  slti         zero, a0, 34
                  sltiu        s7, a4, -774
959:              sll          s6, s8, a5
                  xor          sp, gp, sp
                  auipc        t3, 622150
                  bltu         s7, a3, 978f
                  ori          s9, t5, -1816
                  slli         t4, s6, 27
                  sll          t0, t2, t6
                  beq          a6, t0, 973f
                  ori          t3, a0, -1371
                  sub          s6, a7, s8
                  xori         t0, t3, 1852
                  beq          a1, s9, 974f
                  xor          a2, a1, a7
                  and          s1, s7, t0
973:              bne          s10, s2, 990f
974:              blt          sp, s1, 988f
                  nop
                  srai         s10, s9, 16
                  xori         a3, a5, 1635
978:              srai         t2, a5, 20
                  xori         a2, s8, -1712
                  or           s10, tp, s8
                  sll          t6, s4, s2
                  xor          ra, s11, a7
                  xor          s8, s8, a7
                  sll          s1, s3, tp
                  slt          s5, a1, t5
                  auipc        ra, 144152
                  beq          t0, t3, 1001f
988:              bge          a7, sp, 996f
                  auipc        zero, 195667
990:              nop
                  blt          a2, s4, 1001f
                  slt          ra, a2, ra
                  addi         ra, a0, -1200
                  bltu         a4, s1, 1000f
                  slli         s7, a4, 26
996:              auipc        s0, 528926
                  or           s0, s11, tp
                  xor          a2, a6, t2
                  bltu         gp, a4, 1012f
1000:             slti         s8, t6, 1386
1001:             bne          s9, a4, 1021f
                  slli         tp, tp, 19
                  bne          a3, a5, 1004f
1004:             add          a3, s3, s2
                  sltiu        s4, s5, 933
                  bgeu         a1, gp, 1020f
                  sra          t6, t0, t3
                  auipc        t6, 982705
                  lui          a2, 655496
                  or           a7, sp, tp
                  sll          t3, t5, tp
1012:             slti         gp, t0, -272
                  add          s7, s5, s7
                  add          a7, s6, a7
                  xor          ra, ra, a2
                  xor          gp, s5, t6
                  andi         s10, a2, 1141
                  addi         s10, zero, 2 #init loop 0 counter
                  srai         t3, a5, 6
                  slt          zero, a3, zero
                  sra          sp, sp, a1
                  addi         a5, zero, -12 #init loop 0 limit
                  sub          a1, s1, s6
                  slli         t6, a6, 30
                  and          s6, s1, s6
                  sltu         t1, s6, a0
                  sll          t6, a0, t2
sub_3_15_0_t:     xori         t6, s4, -872
                  sra          t2, t4, s0
                  addi         s10, s10, -10 #update loop 0 counter
                  addi         t2, a3, -1461
                  add          s11, s5, t4
                  bge          s10, a5, sub_3_15_0_t #branch for loop 0
                  xor          t4, s1, s7
                  beq          a0, t6, 1025f
                  slli         t1, s5, 12
1020:             sltu         zero, gp, s11
1021:             bne          s7, t4, 1035f
                  slti         t0, s7, -825
                  bne          s7, t3, 1037f
                  srli         a4, t0, 9
1025:             sll          t1, sp, t1
                  lui          s8, 961878
                  sra          a3, sp, t3
                  sub          sp, t5, t0
                  and          s9, t5, tp
                  xor          tp, a7, t6
                  blt          s11, s7, 1048f
                  or           s9, s0, s2
                  ori          t6, a6, -1140
                  srai         a6, ra, 3
1035:             and          s11, s1, s9
                  or           t2, s4, a4
1037:             or           s9, zero, s4
                  bge          t2, ra, 1048f
                  blt          s11, a7, 1055f
                  slt          ra, s9, s5
                  bne          tp, s9, 1058f
                  bne          s10, a5, 1057f
                  blt          t0, a1, 1062f
                  auipc        zero, 721194
                  addi         t0, a6, 2027
                  nop
                  auipc        t6, 544924
1048:             xori         s0, s8, -1008
                  ori          s7, a7, 932
                  add          a3, gp, a0
                  or           s5, s2, sp
                  blt          s4, a7, 1055f
                  addi         a2, s5, -1079
                  blt          t6, t2, 1056f
1055:             nop
1056:             bne          a1, a3, 1075f
1057:             bgeu         s5, a3, 1065f
1058:             bgeu         s7, gp, 1075f
                  sub          t1, s0, a6
                  slti         t2, s8, 1513
                  slti         t2, s10, -1615
1062:             srli         t3, s1, 1
                  sll          t3, s5, tp
                  sra          s6, gp, t6
1065:             andi         s5, gp, 751
                  ori          t1, t4, -1855
                  sltiu        s11, t4, 17
                  sll          tp, t2, a4
                  lui          s4, 596085
                  xor          a2, s2, t2
                  ori          a1, sp, 1595
                  xor          s9, s6, a2
                  srai         a7, s9, 3
                  lui          s7, 293118
1075:             srl          a5, a7, s11
                  bge          a2, s10, 1080f
                  sub          t3, a6, s6
                  add          s9, a5, s4
                  and          a0, sp, ra
1080:             bltu         s6, zero, 1097f
                  nop
                  bltu         a6, s11, 1084f
                  bgeu         t3, a1, 1090f
1084:             bgeu         a2, a0, 1091f
                  bltu         s7, a3, 1105f
                  srl          a4, s1, a7
                  lui          a5, 393067
                  lui          t2, 754448
                  bge          s9, s10, 1093f
1090:             sra          sp, s11, gp
1091:             andi         sp, a3, 67
                  sll          s11, t0, a2
1093:             srli         a6, t4, 11
                  or           t6, s11, s5
                  xor          s4, s11, s6
                  sll          t0, tp, s8
1097:             slli         a0, tp, 8
                  srai         s7, a0, 23
                  beq          s1, s4, 1100f
1100:             bgeu         a1, a0, 1112f
                  lui          s0, 506366
                  blt          a3, s5, 1106f
                  sll          a1, t3, s7
                  sub          s7, tp, s8
1105:             ori          s5, t3, 1475
1106:             ori          s1, a4, -1848
                  bge          a2, t4, 1111f
                  nop
                  sll          a3, s9, s11
                  or           s5, t1, s2
1111:             bne          a2, s1, 1118f
1112:             bltu         t1, s5, 1129f
                  and          zero, t1, a1
                  and          s7, t5, s9
                  srai         a2, s2, 19
                  sub          s6, s6, s5
                  sll          s5, s7, t6
1118:             sub          a0, a3, s5
                  nop
                  and          a0, s8, a7
                  bgeu         a0, a5, 1131f
                  add          a4, a3, a4
                  add          a1, s5, s6
                  slli         a1, sp, 11
                  sltiu        s1, a0, -398
                  sltu         zero, t3, s7
                  srli         a2, t1, 23
                  add          a0, zero, t4
1129:             ori          tp, s1, 396
                  lui          ra, 835130
1131:             bge          s6, s8, 1148f
                  srli         s0, a3, 13
                  slli         t0, t5, 8
                  sra          a5, s3, s6
                  slli         ra, tp, 12
                  srai         s6, t6, 1
                  addi         a0, t6, -1354
                  sll          t0, s8, a7
                  sltu         a7, s3, s5
                  bltu         s0, s0, 1159f
                  addi         a2, s3, 1805
                  auipc        a6, 737151
                  lui          zero, 651764
                  blt          s2, tp, 1148f
                  nop
                  sra          t3, s6, t6
                  beq          tp, s7, 1153f
1148:             slt          sp, s7, s2
                  bltu         s9, sp, 1169f
                  slli         s5, t1, 7
                  andi         s5, s11, 955
                  sll          s5, s1, s0
1153:             slli         a2, s0, 14
                  bgeu         s0, gp, 1157f
                  andi         a7, a7, -1137
                  bgeu         zero, t0, 1170f
1157:             sltiu        t1, ra, 1841
                  slti         ra, a2, -1799
1159:             srl          a5, s4, a6
                  or           a0, a1, s11
                  or           t3, s4, a4
                  sub          a2, a5, s3
                  bne          gp, a7, 1180f
                  and          s0, s9, a2
                  auipc        s0, 337726
                  sra          s4, s3, a7
                  bne          s11, zero, 1181f
                  xori         zero, zero, -1144
1169:             blt          t3, s10, 1186f
1170:             srai         s11, t0, 23
                  sra          s9, a4, s10
                  sra          s1, a7, s0
                  sltiu        ra, t3, -493
                  bge          zero, s0, 1194f
                  nop
                  auipc        tp, 91982
                  srl          s9, t2, ra
                  sra          tp, a0, ra
                  slt          a2, t3, s8
1180:             bltu         zero, a1, 1182f
1181:             beq          s5, a7, 1189f
1182:             sub          t1, s0, s11
                  sltiu        s11, t0, 1272
                  bltu         s7, a6, 1203f
                  xori         a6, t0, -487
1186:             bge          a5, s0, 1196f
                  slli         t6, t2, 8
                  xor          s5, t5, s3
1189:             bne          s2, a3, 1205f
                  bgeu         t3, a0, 1204f
                  bge          s3, s1, 1198f
                  slt          s6, s10, s7
                  blt          ra, s2, 1194f
1194:             srl          a2, ra, s4
                  nop
1196:             or           t1, sp, s4
                  bge          a0, s8, 1201f
1198:             srai         t1, a1, 5
                  beq          s2, s5, 1206f
                  add          t0, t5, s0
1201:             add          tp, t0, s9
                  sra          s5, s0, s11
1203:             addi         t6, sp, 1391
1204:             sll          a5, s10, s9
1205:             lui          s5, 34876
1206:             xori         s0, s4, -1713
                  andi         t2, s7, 901
                  addi         a3, s10, -1500
                  srai         s0, s9, 10
                  slt          s4, gp, zero
                  lui          a0, 104316
                  bltu         s10, t1, 1213f
1213:             srli         s9, t5, 4
                  ori          a0, tp, -329
                  slli         s8, a3, 19
                  srl          t6, a1, s1
                  sub          s6, s9, t2
                  or           a4, s9, a1
                  slli         t4, a6, 24
                  andi         t0, t2, -1833
                  nop
                  sub          ra, t5, a0
                  blt          ra, s1, 1238f
                  add          s0, a6, s8
                  addi         s5, t6, -501
                  slt          a7, s2, t0
                  sub          t3, a4, a0
                  bne          s6, a4, 1240f
                  andi         a6, tp, 1425
                  sll          s11, zero, t2
                  lui          sp, 306616
                  xor          a7, tp, a0
                  bge          s5, t3, 1246f
                  sltu         a3, a3, sp
                  slti         s4, s11, -1340
                  bltu         a5, s4, 1238f
                  xor          s5, s0, a4
1238:             xor          ra, a4, s8
                  add          a1, s7, a6
1240:             beq          t4, a2, 1254f
                  or           t2, t3, sp
                  nop
                  sub          a5, s10, sp
                  blt          s0, s1, 1261f
                  xori         gp, t6, 31
1246:             srl          s4, a7, a3
                  xori         t0, a7, -1225
                  and          s4, s11, t3
                  nop
                  xor          s11, s10, a3
                  bgeu         a3, t1, 1268f
                  sltiu        a0, zero, 2038
                  xor          zero, ra, t0
1254:             or           t6, a1, s0
                  xor          sp, t0, s7
                  srai         gp, a0, 23
                  xori         t2, t1, -25
                  or           t1, a2, s2
                  slt          sp, t5, t1
                  slli         a2, s6, 8
1261:             srli         a3, s7, 1
                  addi         a1, s11, -536
                  nop
                  addi         t2, zero, -2 #init loop 0 counter
                  addi         s11, zero, 18 #init loop 0 limit
sub_3_18_0_t:     sub          a7, ra, t3
                  sll          s6, s5, a1
                  addi         t2, t2, 10 #update loop 0 counter
                  sra          s4, s10, s3
                  sltu         s5, s8, s5
                  srl          s1, a2, s10
                  bne          t2, s11, sub_3_18_0_t #branch for loop 0
                  lui          a4, 670361
                  blt          s1, s10, 1265f
1265:             lui          t1, 62251
                  srai         sp, s9, 11
                  nop
1268:             or           a0, a0, s5
                  sltu         s8, a6, s11
                  bltu         a6, s11, 1274f
                  srli         t3, t5, 20
                  auipc        t0, 923823
                  slti         s0, s2, 196
1274:             sltu         s9, gp, t6
                  sltiu        s0, t0, 704
                  auipc        s0, 302148
                  xor          t6, a3, a4
                  beq          a6, gp, 1292f
                  and          s7, t3, a1
                  add          t3, a7, s0
                  sltiu        t2, a3, 1905
                  srli         s8, s6, 10
                  sll          s6, t6, s3
                  blt          t6, t4, 1301f
                  srl          tp, t6, t6
                  srl          s0, a6, zero
                  srli         s10, s5, 29
                  bne          t2, a2, 1295f
                  slli         t1, a2, 12
                  and          t4, s9, s9
                  add          s4, a2, a6
1292:             srai         s8, s5, 22
                  sub          a1, s10, s0
                  xori         t2, a1, -1970
1295:             ori          t3, s6, -1486
                  ori          s1, sp, -1667
                  srai         sp, gp, 31
                  sra          s7, a1, s0
                  add          s1, a5, t4
                  bltu         t5, s3, 1315f
1301:             sub          a0, s6, s1
                  bgeu         t4, t1, 1312f
                  slti         t0, a0, 542
                  sll          t0, s8, t1
                  bge          s7, a5, 1324f
                  bltu         a6, s8, 1314f
                  addi         s0, s3, 680
                  slli         s0, s1, 6
                  sltiu        a4, s4, -554
                  srl          t2, t4, s11
                  ori          s10, ra, -1692
                  addi         a0, zero, 1 #init loop 0 counter
                  sll          t2, zero, a5
                  sra          a4, sp, a0
                  or           a7, a3, zero
                  addi         s6, zero, -20 #init loop 0 limit
                  and          a7, t6, s0
                  srli         t2, s1, 13
                  addi         s7, ra, 1846
                  sltu         zero, t3, t6
                  sra          a3, t5, a2
                  add          t6, t4, s3
                  ori          sp, s2, 426
                  nop
sub_3_22_0_t:     add          gp, s4, t5
                  addi         a0, a0, -3 #update loop 0 counter
                  sub          s9, s7, s4
                  and          tp, s9, t6
                  slt          a2, a7, t5
                  nop
                  add          t0, s3, t2
                  beq          a0, s6, sub_3_22_0_t #branch for loop 0
                  nop
1312:             blt          t1, t1, 1316f
                  srl          sp, a5, s7
1314:             srli         tp, t0, 1
1315:             srli         a6, a5, 13
1316:             bne          s7, a0, 1322f
                  xor          t4, zero, a6
                  slt          s8, s2, a0
                  sub          sp, s9, a3
                  slli         s8, s5, 11
                  addi         a7, sp, -271
1322:             and          zero, s0, a2
                  bge          t1, t5, 1336f
1324:             bne          s3, zero, 1341f
                  sll          s8, t2, s11
                  sra          a3, s7, a4
                  addi         a6, s4, 58
                  andi         s9, a4, 330
                  xori         tp, a6, -693
                  sra          s10, t2, a1
                  sltiu        s7, s0, 44
                  sltu         a7, s11, t1
                  add          gp, ra, a4
                  beq          t1, a3, 1341f
                  srli         gp, t0, 26
1336:             sub          s6, t0, s4
                  andi         s10, gp, -62
                  auipc        ra, 261163
                  lui          a7, 118163
                  nop
1341:             and          zero, s0, s6
                  sltu         a7, s6, t0
                  slli         gp, t4, 17
                  xori         t3, s10, -607
                  ori          tp, t0, 737
                  auipc        ra, 69402
                  bge          sp, a0, 1349f
                  add          s6, s3, tp
1349:             sltu         a0, s0, t3
                  bgeu         ra, s0, 1352f
                  auipc        t0, 202016
1352:             auipc        s8, 225415
                  sub          t4, a5, t2
                  sra          t1, t6, s7
                  bne          s5, a6, 1375f
                  beq          a3, gp, 1375f
                  lui          a7, 963681
                  slli         zero, s7, 19
                  slti         sp, s2, 1857
                  sll          sp, a1, sp
                  srai         s6, s9, 17
                  nop
                  sra          s0, zero, gp
                  slli         t3, s4, 17
                  or           sp, a7, s9
                  slti         s8, t5, -1726
                  sltiu        s9, s10, 1810
                  bltu         s1, t1, 1375f
                  nop
                  andi         gp, s10, -1596
                  srl          s10, s11, t6
                  and          s7, s10, s3
                  sltiu        a6, ra, 948
                  blt          t6, zero, 1390f
1375:             srai         a1, t1, 20
                  add          ra, s5, a6
                  srai         zero, a5, 26
                  addi         s6, t3, 88
                  sub          t3, s4, t5
                  lui          s4, 658675
                  sub          s10, t5, s9
                  lui          t1, 605946
                  ori          t2, t4, 12
                  or           a7, gp, gp
                  sltu         t2, gp, t6
                  sub          s6, a6, t4
                  blt          t6, t1, 1397f
                  bgeu         s8, a6, 1391f
                  bltu         a1, s11, 1390f
1390:             sub          s10, t4, a1
1391:             auipc        ra, 793150
                  blt          s7, ra, 1412f
                  slt          s0, s6, a2
                  sll          s0, t5, t1
                  sra          t0, gp, t2
                  andi         a6, a3, -1932
1397:             srli         a0, s3, 4
                  blt          s5, s3, 1410f
                  andi         t3, s8, -299
                  nop
                  slli         s11, ra, 7
                  slli         t1, t5, 25
                  xor          s6, a2, s0
                  addi         s10, t0, -113
                  blt          t3, t4, 1409f
                  xori         t0, s11, -56
                  blt          a0, s5, 1421f
                  slti         ra, a0, -508
1409:             sra          zero, s7, t4
1410:             nop
                  nop
1412:             sll          a4, a2, s0
                  sra          a5, tp, s2
                  and          ra, s3, s10
                  srli         a0, a1, 29
                  sra          a7, a0, s0
                  bge          gp, a5, 1436f
                  sub          a7, a5, ra
                  sra          t6, a4, a1
                  sub          t1, zero, t2
1421:             lui          a4, 273223
                  slti         a2, sp, -160
                  beq          a6, t5, 1427f
                  srai         t4, sp, 3
                  blt          a6, t3, 1445f
                  sltu         a2, a6, a1
1427:             bgeu         ra, t5, 1428f
1428:             bne          s8, zero, 1434f
                  srl          a5, s11, t6
                  addi         a6, s5, -716
                  ori          s9, s11, -1795
                  and          a1, t2, t6
                  xor          a6, s3, s1
1434:             ori          s9, a5, -433
                  srai         s11, s10, 3
1436:             lui          s7, 1027894
                  ori          t3, a3, 621
                  sll          t2, t0, s4
                  sltu         s5, t6, s7
                  bgeu         zero, s3, 1459f
                  andi         s7, s7, -156
                  sub          t1, t5, s10
                  andi         s8, a6, -1262
                  slti         gp, s11, 325
1445:             xori         a6, t2, 272
                  slti         s4, s6, -433
                  sra          s1, s5, t3
                  srai         a7, a2, 10
                  sra          a0, s8, tp
                  bgeu         s10, s3, 1465f
                  sll          s10, a6, s3
                  bltu         s3, s7, 1459f
                  bltu         a7, s1, 1465f
                  add          s7, s2, gp
                  bltu         s2, s3, 1472f
                  slli         s10, s6, 23
                  slli         s8, s5, 17
                  bgeu         sp, s8, 1472f
1459:             bne          a4, s11, 1473f
                  lui          a1, 514581
                  sra          t4, t4, s3
                  bltu         zero, s6, 1466f
                  slti         t2, a3, 529
                  addi         a1, t4, -494
1465:             srl          t6, t2, a6
1466:             sltiu        a5, t6, -303
                  bltu         a3, a2, 1468f
1468:             xori         s9, a1, -536
                  bne          s7, ra, 1489f
                  beq          gp, s1, 1487f
                  bltu         s6, a0, 1481f
1472:             auipc        sp, 820958
1473:             slti         s0, a0, 1300
                  slli         a6, s0, 6
                  slli         t1, s4, 19
                  sub          t3, a6, a5
                  sra          s1, s7, sp
                  andi         tp, s7, 473
                  nop
                  sltu         t2, a1, s10
1481:             and          s9, a0, a6
                  lui          s7, 280320
                  bgeu         a7, gp, 1487f
                  slti         t0, a7, -574
                  sltu         s10, s2, t1
                  ori          t0, a4, 165
1487:             bge          a0, a6, 1496f
                  addi         a6, gp, -1649
1489:             andi         sp, t0, 1698
                  srli         a3, a6, 7
                  andi         s6, s1, 1206
                  bltu         s1, s4, 1495f
                  sll          t1, ra, s2
                  srl          gp, s11, a3
1495:             slli         ra, t3, 12
1496:             lui          gp, 1004345
                  srai         a1, a6, 14
                  lw           s1, 4(t5)
                  slt          ra, s8, a0
                  addi         t5, t5, 44
                  addi         a6, zero, 1050
                  addi         s7, a6, 149
                  lui          a0, 223390
                  add          s7, s8, a4
                  lui          s9, 428974
                  and          s9, t5, s8
2059:             addi x15, x9, 0
2059:             jalr x15, x15, 0
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
                  add x18, x30, zero
                  csrr x9, 0x300 # MSTATUS
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 31
                  bne x9, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x9, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x9, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x9, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x9, x17, ecall_handler
                  li x17, 0x1
                  beq x9, x17, instr_fault_handler
                  li x17, 0x5
                  beq x9, x17, load_fault_handler
                  li x17, 0x7
                  beq x9, x17, store_fault_handler
                  li x17, 0xc
                  beq x9, x17, pt_fault_handler
                  li x17, 0xd
                  beq x9, x17, pt_fault_handler
                  li x17, 0xf
                  beq x9, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x30, x18, zero
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
                  add x30, x18, zero
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
                  add x30, x18, zero
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
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x30, x18, zero
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
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x30, x18, zero
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
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x30, x18, zero
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
