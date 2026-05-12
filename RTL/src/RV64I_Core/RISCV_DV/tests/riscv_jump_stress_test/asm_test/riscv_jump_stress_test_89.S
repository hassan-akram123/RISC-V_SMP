.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 1
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0x2
                  li x1, 0xf27bf12d
                  li x2, 0x0
                  li x3, 0xe
                  li x4, 0x2
                  li x5, 0x43080128
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0xfa65b80c
                  li x9, 0xbb91932
                  li x10, 0xa
                  li x11, 0xf0231aa2
                  li x12, 0x1
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x7
                  li x16, 0x0
                  li x17, 0xff7eb317
                  li x19, 0x0
                  li x20, 0x9
                  li x21, 0x0
                  li x22, 0x681b3686
                  li x23, 0x80000000
                  li x25, 0xf3b0a3e5
                  li x26, 0xf4670bd8
                  li x27, 0xd
                  li x28, 0x80000000
                  li x29, 0xfe269280
                  li x30, 0x80000000
                  li x31, 0xb1743cae
                  la x24, user_stack_end
main:             jal          a3, 14f
0:                jal          ra, 4f
1:                jal          t1, 16f
2:                jal          t1, 5f
3:                jal          ra, 2b
4:                jal          s11, 6f
5:                jal          t1, 1b
6:                jal          t0, 9f
7:                jal          s11, 13f
8:                jal          ra, 18f
9:                jal          s3, 17f
10:               jal          t1, 19f
11:               jal          t1, 10b
12:               jal          ra, 11b
13:               jal          tp, 12b
14:               jal          s6, 15f
15:               jal          t1, 0b
16:               jal          ra, 8b
17:               jal          ra, 3b
18:               jal          ra, 7b
19:               sltu         t3, sp, a1
main_3:           jal          a3, 5f
0:                jal          ra, 8f
1:                jal          t1, 9f
2:                jal          ra, 3f
3:                jal          ra, 13f
4:                jal          ra, 7f
5:                jal          ra, 10f
6:                jal          t2, 12f
7:                jal          t1, 1b
8:                jal          t1, 11f
9:                jal          ra, 14f
10:               jal          ra, 0b
11:               jal          s5, 2b
12:               jal          t1, 4b
13:               jal          ra, 6b
14:               auipc        zero, 326829
main_2:           jal          a3, 8f
0:                jal          t1, 5f
1:                jal          ra, 6f
2:                jal          ra, 9f
3:                jal          ra, 4f
4:                jal          t1, 1b
5:                jal          ra, 3b
6:                jal          t1, 10f
7:                jal          tp, 0b
8:                jal          ra, 2b
9:                jal          ra, 7b
10:               add          a4, s8, s7
main_4:           jal          a3, 19f
0:                jal          s10, 9f
1:                jal          ra, 14f
2:                jal          t1, 8f
3:                jal          ra, 21f
4:                jal          ra, 17f
5:                jal          ra, 1b
6:                jal          ra, 4b
7:                jal          ra, 23f
8:                jal          ra, 13f
9:                jal          t1, 11f
10:               jal          t1, 5b
11:               jal          tp, 2b
12:               jal          t1, 22f
13:               jal          ra, 10b
14:               jal          ra, 18f
15:               jal          ra, 0b
16:               jal          ra, 15b
17:               jal          ra, 3b
18:               jal          t1, 24f
19:               jal          ra, 12b
20:               jal          ra, 16b
21:               jal          ra, 25f
22:               jal          ra, 7b
23:               jal          s6, 20b
24:               jal          ra, 6b
25:               auipc        t5, 964562
main_0:           jal          a3, 7f
0:                jal          ra, 15f
1:                jal          ra, 4f
2:                jal          t1, 0b
3:                jal          ra, 6f
4:                jal          s10, 18f
5:                jal          ra, 1b
6:                jal          a6, 14f
7:                jal          s3, 12f
8:                jal          ra, 9f
9:                jal          t1, 16f
10:               jal          t1, 8b
11:               jal          t1, 10b
12:               jal          a7, 11b
13:               jal          ra, 2b
14:               jal          ra, 5b
15:               jal          ra, 3b
16:               jal          ra, 17f
17:               jal          ra, 13b
18:               andi         a1, t2, -1440
                  addi         zero, t1, -363
                  srli         a2, s4, 21
                  xor          gp, s8, a5
                  srai         zero, t0, 17
                  srl          a1, s0, a0
                  srai         t5, s1, 24
                  sltiu        a5, s1, -582
                  srli         ra, a6, 21
                  sra          a3, s9, a2
                  add          s1, t2, s7
                  srli         s3, a7, 24
                  xori         a1, a5, 1419
                  xori         a1, a2, 2023
                  and          t1, a7, t0
                  la           s7, sub_1
                  slt          t4, gp, tp
                  xori         sp, a7, -81
                  sub          ra, a6, s2
                  sltu         sp, s5, s5
                  or           s11, t0, a7
                  slli         s0, t1, 28
                  addi         s7, s7, -474
                  auipc        sp, 817173
main_j2:          jalr         a3, s7, 475 #jump main -> sub_1
                  ori          t0, a7, 1946
                  nop
                  and          s0, s6, a4
                  sltu         t2, s0, a1
                  sltiu        s3, s7, -1709
                  xor          t6, ra, s8
                  sltiu        t6, s3, -780
                  xori         s11, zero, -1976
                  sub          gp, t3, a6
                  auipc        t1, 82744
                  srai         a6, s7, 15
                  bltu         t6, s11, 43f
                  addi         t4, a1, -430
                  beq          t2, s8, 41f
                  srl          sp, s2, a6
                  bne          zero, t3, 36f
                  xori         a7, a3, -1320
                  slti         t5, gp, 349
                  slli         a4, t5, 15
                  addi         s10, s6, 822
                  blt          s5, s6, 36f
                  add          ra, a3, a0
36:               slti         a4, s11, 600
                  slti         t3, s11, -1501
                  slti         t0, a6, -267
                  srl          t1, t0, t4
                  sltu         gp, s11, a6
41:               addi         t6, ra, 1983
                  and          t2, t5, s10
43:               sltiu        t1, zero, 154
                  addi         s3, s1, 580
                  and          a2, s2, a3
                  ori          a2, s4, -388
                  or           a6, s11, a7
                  bltu         a2, s0, 56f
                  or           zero, s4, t5
                  ori          s1, s2, 1352
                  srli         a0, gp, 10
                  or           t1, ra, t3
                  andi         s6, t0, 1459
                  lui          s11, 369977
                  or           t0, zero, t6
56:               beq          tp, a4, 58f
                  xor          s7, a1, a7
58:               or           s11, s3, s7
                  or           a1, t3, sp
                  xor          gp, s7, t1
                  bltu         gp, s11, 80f
                  or           s10, s1, t5
                  sra          a1, s5, a7
                  slti         s9, s8, 490
                  srl          s10, sp, s3
                  sub          t4, a4, s7
                  sltu         s0, a3, gp
                  la           t0, sub_1
                  addi         t0, t0, 385
                  slti         t5, zero, -1234
                  slti         s11, s11, -836
main_j1:          jalr         a3, t0, -385 #jump main -> sub_1
                  and          a6, t1, sp
                  slt          a1, a1, s5
                  addi         sp, a5, -104
                  slti         s11, s0, -1792
                  sltu         zero, t2, s0
                  sll          t4, t6, t1
                  sra          t3, a4, s6
                  auipc        sp, 740040
                  ori          tp, ra, 880
                  sll          a6, gp, s10
                  nop
                  xor          s1, s7, a6
                  slli         t2, a3, 16
                  auipc        t3, 1034305
                  andi         sp, tp, 434
                  sll          t4, a5, s5
80:               slli         t5, a0, 28
                  sub          t6, s9, s1
                  lui          s10, 422917
                  srl          s7, s8, ra
                  addi         s9, s1, 444
                  sll          s11, ra, s2
                  bne          a4, a2, 104f
                  and          a7, tp, t6
                  bne          a4, s2, 106f
                  or           s6, s7, tp
                  auipc        a4, 185137
                  slti         s3, t4, -469
                  bne          a3, s11, 102f
                  sra          s3, t4, zero
                  xor          gp, t2, t2
                  nop
                  auipc        a4, 702664
                  or           a2, s10, s0
                  lui          t1, 739755
                  bge          s11, t1, 101f
                  xori         sp, s9, 419
101:              sltiu        s3, s0, -1781
102:              nop
                  slt          t5, ra, s9
104:              auipc        s11, 586424
                  srli         a4, zero, 18
106:              sub          s0, s2, ra
                  andi         s3, s5, -237
                  srai         gp, t6, 1
                  sll          sp, zero, a0
                  bltu         s9, gp, 117f
                  slli         zero, a4, 28
                  bge          a4, a1, 132f
                  lui          t4, 841157
                  sra          sp, a3, t6
                  slti         a5, a1, 1878
                  blt          s1, tp, 136f
117:              andi         a5, zero, 261
                  slt          t6, s8, s11
                  bgeu         t2, a1, 138f
                  srli         s11, gp, 7
                  srl          gp, zero, s11
                  bge          zero, zero, 130f
                  auipc        gp, 279567
                  xor          t2, gp, s1
                  andi         t0, t2, -1910
                  slti         t4, gp, -1942
                  sltiu        t0, s3, -1847
                  bge          t1, zero, 148f
                  bne          t3, s1, 131f
130:              lui          t4, 789333
131:              nop
132:              bge          t6, s9, 137f
                  xor          s7, s2, t5
                  srli         t5, t1, 22
                  andi         t2, ra, -1704
136:              bltu         a2, s11, 155f
137:              addi         t4, t0, 826
138:              beq          gp, t3, 153f
                  bne          a6, s3, 159f
                  nop
                  bne          t6, tp, 147f
                  sltiu        a1, s6, 1314
                  srli         t5, s8, 17
                  bge          zero, a5, 160f
                  srl          a3, t3, s9
                  ori          a2, a4, -117
147:              sltiu        sp, a0, 1615
148:              addi         ra, t5, 1459
                  sub          a0, s3, s11
                  and          zero, sp, a3
                  ori          s9, t1, -799
                  bne          t1, s8, 161f
153:              add          a0, a0, s8
                  lui          t2, 887705
155:              slli         sp, s6, 3
                  slti         gp, a6, 1620
                  sll          a6, gp, s7
                  auipc        a0, 928606
159:              sltu         sp, t6, s4
160:              sra          t6, s11, a4
161:              nop
                  sltu         s1, a0, t6
                  srl          t5, s0, t5
                  sra          sp, s10, t2
                  addi         a6, s11, -1497
                  bgeu         s2, t0, 182f
                  xor          s0, t5, t0
                  bge          s0, s10, 188f
                  andi         a3, t1, 1019
                  bgeu         a0, a2, 188f
                  sll          a0, s2, ra
                  sll          t2, zero, sp
                  sltu         t6, a2, zero
                  beq          a2, s11, 182f
                  or           a4, a4, sp
                  ori          zero, s4, 479
                  or           s11, a6, a5
                  sra          s9, s8, t0
                  auipc        t1, 846633
                  blt          s5, t4, 189f
                  slli         t2, a2, 25
182:              bne          s11, t1, 198f
                  bge          ra, s11, 185f
                  nop
185:              sra          t3, s8, a1
                  sll          a7, sp, a5
                  sub          gp, a7, s6
188:              srl          s9, s11, a1
189:              slli         s0, zero, 24
                  xori         s1, s2, 314
                  bge          a5, t0, 199f
                  slt          a1, t3, gp
                  srl          a2, t1, a2
                  slti         t1, sp, -257
                  add          t1, a0, a2
                  xor          a4, gp, ra
                  srl          t0, s5, a4
198:              andi         s5, a3, 1175
199:              bge          t3, a4, 205f
                  xor          s9, zero, a7
                  slt          s3, t4, s0
                  sub          s6, a6, s11
                  srl          gp, s8, t6
                  srl          a4, t3, a6
205:              srli         s6, t2, 5
                  sll          t6, t1, sp
                  sltiu        t6, s7, -638
                  xori         s1, s2, 828
                  blt          a2, a7, 224f
                  slli         a4, t3, 4
                  auipc        a2, 935828
                  xor          s3, s0, a6
                  srl          s7, a6, a3
                  beq          s6, a2, 234f
                  srli         zero, t0, 18
                  nop
                  slt          s1, s11, t0
                  slli         s11, tp, 30
                  and          a5, t3, a2
                  bltu         s8, t6, 222f
                  bltu         s7, t1, 223f
222:              or           a2, t0, sp
223:              xor          s7, s1, a0
224:              slti         s11, t2, 1518
                  sra          s1, s3, t1
                  slt          a7, ra, t4
                  blt          t5, t5, 246f
                  nop
                  sltiu        s1, t4, -2019
                  bltu         a7, s9, 238f
                  andi         ra, s0, -14
                  bne          s0, tp, 252f
                  blt          s10, ra, 251f
234:              nop
                  sltu         a2, s5, s8
                  and          a3, a1, s10
                  andi         a4, t2, 747
238:              auipc        a2, 377226
                  addi         s5, t0, -1651
                  bgeu         t3, t3, 259f
                  or           s7, a4, a1
                  slli         t0, tp, 1
                  or           s0, s1, a3
                  slt          t6, a1, s2
                  lui          t1, 696795
246:              srl          a3, s3, tp
                  blt          t3, s10, 266f
                  srai         a6, s7, 20
                  blt          a3, s7, 269f
                  slt          a7, tp, t1
251:              srl          sp, tp, s9
252:              slti         a4, a3, 1770
                  sll          sp, a4, a3
                  bgeu         t0, s9, 256f
                  slti         t0, s5, -1421
256:              add          s10, t5, s8
                  slti         a5, a5, -653
                  and          t5, t1, sp
259:              srl          a7, a5, sp
                  srli         s6, t1, 7
                  xor          tp, s2, t0
                  bge          s4, s10, 282f
                  srli         sp, zero, 12
                  bge          s11, s2, 271f
                  bgeu         t5, s7, 279f
266:              sltiu        a7, tp, 1087
                  sub          t5, a7, s3
                  bltu         t6, s0, 273f
269:              bltu         s8, t5, 287f
                  nop
271:              xori         ra, a6, 1040
                  add          s5, a3, s10
273:              slt          t5, t1, a7
                  sra          s0, ra, s4
                  sltu         ra, t3, a2
                  beq          s5, a3, 285f
                  sra          s11, a5, s6
                  sra          a0, t4, a0
279:              lui          s10, 943630
                  sltu         a0, t2, a2
                  beq          s6, t1, 291f
282:              bltu         gp, s2, 298f
                  beq          s1, t0, 298f
                  bne          a1, s0, 298f
285:              auipc        a5, 967821
                  nop
287:              slt          s3, a2, s4
                  slti         gp, t3, -1577
                  srli         s6, a6, 16
                  andi         ra, t1, 1305
291:              bgeu         s5, a0, 298f
                  bgeu         a3, tp, 298f
                  xor          a3, t6, t5
                  bne          a3, s0, 298f
                  nop
                  sra          gp, a5, a1
                  add          a5, sp, sp
298:              lui          s5, 740061
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            bltu         t2, s7, sub_5_stack_p
                  ori          zero, t4, -1861
sub_5_stack_p:    addi         s8, s8, -32
                  sll          s5, s0, a4
                  sw           a3, 4(s8)
                  slli         s10, s3, 15
                  or           s6, t2, a6
                  srl          t4, a6, a5
sub_5_1:          jal          a3, 3f
0:                jal          t1, 2f
1:                jal          ra, 8f
2:                jal          t1, 9f
3:                jal          ra, 10f
4:                jal          s11, 5f
5:                jal          ra, 6f
6:                jal          ra, 1b
7:                jal          t1, 4b
8:                jal          t1, 11f
9:                jal          ra, 7b
10:               jal          t1, 0b
11:               slti         s0, a6, 802
                  bgeu         a3, s11, 5f
                  slti         a4, a2, -1328
                  and          gp, a2, t3
                  ori          t6, t6, 1754
                  sra          tp, gp, t3
5:                srai         a7, s8, 17
                  srl          s6, a5, s10
                  bgeu         s3, a5, 10f
                  sra          s11, t3, s6
                  andi         t0, a6, 1604
10:               sub          zero, t6, s7
                  xori         s3, a4, -620
                  srl          t0, t3, s7
                  bgeu         t1, s5, 22f
                  srl          gp, t1, a2
                  bltu         a0, s0, 22f
                  blt          a1, a6, 30f
                  sltu         t3, s5, t5
                  ori          a3, s9, -850
                  xor          a6, s0, s4
                  andi         t4, a2, 388
                  add          gp, t0, a2
22:               slti         s9, s5, -416
                  bge          t0, ra, 36f
                  auipc        t3, 182809
                  xor          t2, t6, s9
                  slti         a5, t2, 1275
                  blt          a7, s1, 34f
                  sll          a1, s9, t2
                  auipc        a4, 854231
30:               bne          s4, s6, 39f
                  andi         a0, s5, 671
                  bltu         t5, s4, 49f
                  lui          s11, 242160
34:               sll          s11, tp, s9
                  blt          s4, a7, 44f
36:               srai         a4, t0, 24
                  bgeu         a6, s5, 50f
                  sll          a0, s3, s1
39:               bge          s11, t4, 43f
                  auipc        t2, 729594
                  and          s3, a4, s11
                  slti         t0, t3, 1759
43:               bge          s0, s9, 52f
44:               sub          a2, tp, a7
                  slli         a0, t5, 17
                  bgeu         a5, s2, 58f
                  xori         s3, tp, 1255
                  slli         a4, sp, 30
49:               sra          a1, s5, a5
50:               xori         s11, a1, 219
                  srl          t3, a4, s1
52:               bltu         gp, s0, 66f
                  bltu         t4, s0, 65f
                  xori         a5, a3, -599
                  sll          sp, a4, s11
                  addi         sp, s0, 467
                  sltu         s6, t5, tp
58:               andi         a1, t0, -496
                  slli         t6, a1, 16
                  xori         a4, s6, 359
                  sll          t1, a4, s4
                  beq          tp, t4, 66f
                  bge          s4, a2, 82f
                  srli         gp, ra, 24
65:               and          a3, gp, sp
66:               lui          s0, 153197
                  beq          s6, a3, 85f
                  auipc        t4, 780398
                  bge          zero, s0, 78f
                  andi         t6, gp, -1406
                  slli         t3, a5, 26
                  srli         ra, a1, 27
                  auipc        t0, 161695
                  blt          s10, zero, 80f
                  ori          a7, a2, 896
                  bne          a0, a1, 96f
                  slt          a1, a4, t1
78:               slt          a3, sp, s3
                  sra          s1, s0, s9
80:               srai         tp, t6, 24
                  or           s10, t2, s7
82:               srli         s11, s0, 8
                  addi         s9, s9, -1244
                  bne          s3, a4, 94f
85:               add          a4, t5, t1
                  slt          sp, s10, a0
                  sra          ra, gp, a4
                  blt          t5, tp, 91f
sub_5_0:          jal          a3, 8f
0:                jal          ra, 21f
1:                jal          ra, 6f
2:                jal          t1, 3f
3:                jal          ra, 17f
4:                jal          ra, 25f
5:                jal          ra, 7f
6:                jal          ra, 23f
7:                jal          ra, 22f
8:                jal          ra, 4b
9:                jal          ra, 26f
10:               jal          ra, 14f
11:               jal          t1, 29f
12:               jal          a5, 24f
13:               jal          ra, 19f
14:               jal          t1, 9b
15:               jal          ra, 18f
16:               jal          ra, 1b
17:               jal          t1, 16b
18:               jal          tp, 20f
19:               jal          ra, 15b
20:               jal          ra, 5b
21:               jal          ra, 11b
22:               jal          ra, 30f
23:               jal          ra, 13b
24:               jal          t6, 28f
25:               jal          s7, 10b
26:               jal          ra, 27f
27:               jal          t0, 12b
28:               jal          sp, 0b
29:               jal          a5, 2b
30:               sub          sp, a4, t2
                  blt          gp, t4, 106f
                  andi         s7, s10, 2016
91:               xor          a2, ra, a7
                  bltu         a4, s3, 107f
                  bge          a3, s3, 107f
94:               srai         s9, t0, 28
                  auipc        s11, 807171
96:               bge          t2, t0, 106f
                  addi         a4, a3, -1260
                  bge          s8, gp, 101f
                  xori         t3, a7, -807
                  slti         s3, s10, 1348
101:              nop
                  xor          a0, t4, t3
                  sub          s7, s2, s4
                  sll          sp, s8, s4
                  bgeu         a3, a0, 114f
106:              sltiu        s1, s2, -1278
107:              bgeu         s7, s8, 119f
                  lui          a4, 656429
                  sltiu        a6, sp, 138
                  sra          s9, t5, t5
                  srl          a1, zero, s3
                  auipc        a4, 593171
                  add          gp, a6, s3
114:              bge          sp, s7, 120f
                  bgeu         a7, t2, 124f
                  add          tp, t0, s2
                  bge          s7, s7, 121f
                  nop
119:              and          sp, zero, t2
120:              slli         s0, s4, 8
121:              sll          a7, t5, t5
                  xor          ra, s6, t3
                  bge          a4, zero, 126f
124:              sub          t2, s1, t3
                  auipc        t1, 946273
126:              bge          s7, s7, 134f
                  slt          t1, a6, t2
                  sll          s5, t1, a3
                  sltu         s3, t1, s9
                  and          s0, s9, a6
                  sub          a5, t0, a3
                  addi         a2, a7, 1758
                  andi         s7, s4, 1370
134:              slt          s11, t2, s0
                  auipc        s1, 651772
                  slli         s7, t2, 2
                  sll          a6, s2, s6
                  lw           a3, 4(s8)
                  auipc        s11, 622068
                  addi         s8, s8, 32
                  and          t2, a5, sp
195:              addi x1, x13, 0
195:              jalr x1, x1, 0
sub_3:            lui          a0, 1023405
                  bne          tp, a2, sub_3_stack_p
                  slli         t1, s7, 11
                  lui          s1, 1003894
                  or           a6, a6, s5
sub_3_stack_p:    addi         s8, s8, -16
                  sw           a3, 4(s8)
                  slli         a2, t3, 12
sub_3_11:         jal          a3, 23f
0:                jal          t1, 9f
1:                jal          ra, 20f
2:                jal          gp, 1b
3:                jal          t1, 0b
4:                jal          ra, 7f
5:                jal          a4, 6f
6:                jal          a6, 13f
7:                jal          ra, 8f
8:                jal          ra, 12f
9:                jal          gp, 17f
10:               jal          ra, 24f
11:               jal          s9, 22f
12:               jal          ra, 18f
13:               jal          t1, 15f
14:               jal          s6, 21f
15:               jal          a3, 11b
16:               jal          t1, 10b
17:               jal          ra, 4b
18:               jal          t0, 19f
19:               jal          ra, 16b
20:               jal          t3, 5b
21:               jal          ra, 3b
22:               jal          ra, 14b
23:               jal          sp, 2b
24:               jal          ra, 25f
25:               sltiu        a4, ra, -1512
sub_3_19:         jal          a3, 6f
0:                jal          ra, 4f
1:                jal          sp, 3f
2:                jal          sp, 9f
3:                jal          t0, 7f
4:                jal          ra, 5f
5:                jal          a7, 8f
6:                jal          ra, 1b
7:                jal          t2, 2b
8:                jal          t0, 10f
9:                jal          s5, 0b
10:               srl          tp, s10, ra
sub_3_12:         jal          a3, 15f
0:                jal          ra, 19f
1:                jal          ra, 11f
2:                jal          t2, 21f
3:                jal          ra, 4f
4:                jal          a5, 16f
5:                jal          ra, 27f
6:                jal          ra, 25f
7:                jal          ra, 2b
8:                jal          ra, 22f
9:                jal          ra, 5b
10:               jal          ra, 17f
11:               jal          t1, 3b
12:               jal          ra, 14f
13:               jal          t1, 8b
14:               jal          ra, 6b
15:               jal          t2, 12b
16:               jal          s10, 18f
17:               jal          ra, 13b
18:               jal          ra, 26f
19:               jal          a1, 7b
20:               jal          t1, 23f
21:               jal          sp, 20b
22:               jal          t1, 9b
23:               jal          ra, 10b
24:               jal          ra, 1b
25:               jal          ra, 24b
26:               jal          a0, 0b
27:               slli         t2, tp, 2
sub_3_3:          jal          a3, 13f
0:                jal          ra, 20f
1:                jal          ra, 17f
2:                jal          ra, 9f
3:                jal          s11, 14f
4:                jal          ra, 6f
5:                jal          t1, 25f
6:                jal          ra, 16f
7:                jal          s0, 11f
8:                jal          t1, 23f
9:                jal          s11, 8b
10:               jal          ra, 22f
11:               jal          ra, 2b
12:               jal          s11, 10b
13:               jal          t1, 5b
14:               jal          ra, 21f
15:               jal          ra, 19f
16:               jal          a0, 18f
17:               jal          ra, 7b
18:               jal          ra, 24f
19:               jal          t4, 3b
20:               jal          ra, 4b
21:               jal          ra, 0b
22:               jal          ra, 26f
23:               jal          t1, 15b
24:               jal          ra, 12b
25:               jal          t1, 1b
26:               or           s10, s1, s3
sub_3_5:          jal          a3, 6f
0:                jal          s10, 10f
1:                jal          tp, 9f
2:                jal          ra, 11f
3:                jal          t1, 12f
4:                jal          a4, 5f
5:                jal          s0, 0b
6:                jal          ra, 7f
7:                jal          ra, 1b
8:                jal          ra, 4b
9:                jal          t1, 8b
10:               jal          t4, 2b
11:               jal          ra, 3b
12:               nop
sub_3_2:          jal          a3, 10f
0:                jal          ra, 13f
1:                jal          ra, 3f
2:                jal          t0, 12f
3:                jal          a5, 9f
4:                jal          ra, 18f
5:                jal          s5, 2b
6:                jal          tp, 21f
7:                jal          t1, 4b
8:                jal          ra, 0b
9:                jal          t1, 24f
10:               jal          ra, 11f
11:               jal          ra, 8b
12:               jal          t1, 22f
13:               jal          s9, 7b
14:               jal          s9, 6b
15:               jal          ra, 16f
16:               jal          t1, 20f
17:               jal          t1, 23f
18:               jal          ra, 14b
19:               jal          ra, 5b
20:               jal          ra, 1b
21:               jal          t1, 15b
22:               jal          ra, 17b
23:               jal          ra, 25f
24:               jal          ra, 19b
25:               ori          s5, t2, 476
sub_3_17:         jal          a3, 8f
0:                jal          ra, 10f
1:                jal          a1, 15f
2:                jal          t1, 13f
3:                jal          ra, 27f
4:                jal          ra, 12f
5:                jal          t1, 23f
6:                jal          t1, 21f
7:                jal          ra, 1b
8:                jal          tp, 9f
9:                jal          ra, 24f
10:               jal          ra, 11f
11:               jal          a6, 3b
12:               jal          ra, 25f
13:               jal          ra, 6b
14:               jal          t1, 5b
15:               jal          t1, 20f
16:               jal          t1, 4b
17:               jal          sp, 22f
18:               jal          ra, 7b
19:               jal          ra, 17b
20:               jal          ra, 28f
21:               jal          ra, 14b
22:               jal          t1, 26f
23:               jal          ra, 16b
24:               jal          ra, 0b
25:               jal          ra, 19b
26:               jal          a2, 18b
27:               jal          ra, 2b
28:               sra          s7, s10, s4
sub_3_14:         jal          a3, 2f
0:                jal          t0, 9f
1:                jal          t1, 16f
2:                jal          gp, 3f
3:                jal          s11, 14f
4:                jal          ra, 17f
5:                jal          ra, 12f
6:                jal          a1, 1b
7:                jal          t1, 15f
8:                jal          s6, 6b
9:                jal          a5, 5b
10:               jal          ra, 8b
11:               jal          ra, 0b
12:               jal          ra, 10b
13:               jal          a1, 4b
14:               jal          s7, 11b
15:               jal          ra, 13b
16:               jal          gp, 7b
17:               srl          s7, a7, s7
sub_3_15:         jal          a3, 12f
0:                jal          ra, 16f
1:                jal          ra, 15f
2:                jal          ra, 18f
3:                jal          ra, 30f
4:                jal          gp, 26f
5:                jal          ra, 19f
6:                jal          ra, 11f
7:                jal          ra, 21f
8:                jal          t6, 4b
9:                jal          ra, 20f
10:               jal          t1, 7b
11:               jal          a2, 8b
12:               jal          t1, 13f
13:               jal          ra, 22f
14:               jal          ra, 10b
15:               jal          t6, 27f
16:               jal          a5, 17f
17:               jal          sp, 5b
18:               jal          ra, 14b
19:               jal          ra, 1b
20:               jal          gp, 0b
21:               jal          ra, 28f
22:               jal          t1, 24f
23:               jal          t0, 9b
24:               jal          tp, 2b
25:               jal          ra, 23b
26:               jal          t1, 3b
27:               jal          s1, 29f
28:               jal          a4, 25b
29:               jal          ra, 6b
30:               sltiu        s9, zero, 799
sub_3_0:          jal          a3, 6f
0:                jal          t1, 2f
1:                jal          ra, 0b
2:                jal          ra, 12f
3:                jal          t4, 7f
4:                jal          t4, 10f
5:                jal          ra, 4b
6:                jal          t1, 9f
7:                jal          ra, 5b
8:                jal          ra, 3b
9:                jal          t4, 11f
10:               jal          gp, 1b
11:               jal          sp, 8b
12:               xori         zero, s8, 2010
sub_3_16:         jal          a3, 5f
0:                jal          ra, 18f
1:                jal          t1, 12f
2:                jal          t6, 3f
3:                jal          t6, 4f
4:                jal          ra, 16f
5:                jal          ra, 6f
6:                jal          ra, 14f
7:                jal          ra, 17f
8:                jal          ra, 13f
9:                jal          ra, 8b
10:               jal          ra, 2b
11:               jal          t1, 9b
12:               jal          t1, 15f
13:               jal          ra, 0b
14:               jal          ra, 10b
15:               jal          tp, 11b
16:               jal          ra, 1b
17:               jal          ra, 19f
18:               jal          ra, 7b
19:               srl          s5, s2, a0
sub_3_21:         jal          a3, 8f
0:                jal          ra, 6f
1:                jal          ra, 11f
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          ra, 15f
5:                jal          ra, 7f
6:                jal          sp, 4b
7:                jal          sp, 10f
8:                jal          ra, 2b
9:                jal          ra, 13f
10:               jal          a2, 12f
11:               jal          ra, 17f
12:               jal          t0, 9b
13:               jal          t3, 16f
14:               jal          ra, 0b
15:               jal          t1, 1b
16:               jal          ra, 14b
17:               lui          s7, 417567
sub_3_1:          jal          a3, 1f
0:                jal          ra, 4f
1:                jal          t1, 9f
2:                jal          ra, 15f
3:                jal          ra, 8f
4:                jal          sp, 7f
5:                jal          gp, 2b
6:                jal          ra, 5b
7:                jal          ra, 6b
8:                jal          t1, 14f
9:                jal          ra, 13f
10:               jal          a2, 3b
11:               jal          tp, 0b
12:               jal          ra, 10b
13:               jal          ra, 12b
14:               jal          tp, 11b
15:               srai         s10, a2, 27
sub_3_9:          jal          a3, 10f
0:                jal          t1, 19f
1:                jal          ra, 20f
2:                jal          ra, 1b
3:                jal          ra, 0b
4:                jal          t1, 11f
5:                jal          ra, 2b
6:                jal          sp, 8f
7:                jal          t1, 13f
8:                jal          gp, 4b
9:                jal          tp, 17f
10:               jal          t1, 12f
11:               jal          ra, 16f
12:               jal          t1, 7b
13:               jal          ra, 14f
14:               jal          ra, 15f
15:               jal          tp, 18f
16:               jal          a3, 9b
17:               jal          ra, 5b
18:               jal          ra, 3b
19:               jal          ra, 6b
20:               jal          ra, 21f
21:               srl          s3, ra, s0
sub_3_6:          jal          a3, 9f
0:                jal          s11, 8f
1:                jal          ra, 6f
2:                jal          t1, 5f
3:                jal          ra, 7f
4:                jal          t1, 1b
5:                jal          ra, 0b
6:                jal          ra, 3b
7:                jal          s5, 2b
8:                jal          t1, 10f
9:                jal          ra, 4b
10:               srl          t4, t3, t5
sub_3_13:         jal          a3, 8f
0:                jal          ra, 2f
1:                jal          ra, 7f
2:                jal          ra, 1b
3:                jal          ra, 11f
4:                jal          t3, 5f
5:                jal          ra, 13f
6:                jal          ra, 12f
7:                jal          a2, 3b
8:                jal          ra, 9f
9:                jal          t1, 4b
10:               jal          ra, 6b
11:               jal          ra, 15f
12:               jal          ra, 14f
13:               jal          t1, 10b
14:               jal          t1, 0b
15:               srli         sp, zero, 9
sub_3_4:          jal          a3, 8f
0:                jal          t1, 5f
1:                jal          ra, 11f
2:                jal          t1, 6f
3:                jal          ra, 0b
4:                jal          ra, 1b
5:                jal          ra, 7f
6:                jal          ra, 10f
7:                jal          tp, 2b
8:                jal          ra, 3b
9:                jal          t3, 4b
10:               jal          s1, 9b
11:               sltu         s11, zero, a7
sub_3_20:         jal          a3, 13f
0:                jal          ra, 6f
1:                jal          ra, 14f
2:                jal          ra, 17f
3:                jal          ra, 7f
4:                jal          ra, 9f
5:                jal          t4, 12f
6:                jal          ra, 22f
7:                jal          a6, 1b
8:                jal          t1, 21f
9:                jal          ra, 16f
10:               jal          ra, 18f
11:               jal          s6, 2b
12:               jal          ra, 19f
13:               jal          ra, 3b
14:               jal          ra, 4b
15:               jal          t1, 8b
16:               jal          t6, 5b
17:               jal          ra, 23f
18:               jal          t1, 11b
19:               jal          ra, 15b
20:               jal          t1, 10b
21:               jal          ra, 20b
22:               jal          ra, 24f
23:               jal          ra, 0b
24:               addi         t6, a3, 1981
                  beq          s5, s7, 6f
                  beq          s3, a6, 13f
                  slti         zero, a0, -976
                  sltiu        s3, gp, -876
                  and          zero, a3, t0
                  slli         s1, tp, 25
6:                srli         sp, s0, 1
                  nop
                  ori          ra, a6, -1826
                  bgeu         zero, a6, 19f
                  bne          t3, sp, 27f
                  ori          a2, t5, 282
                  sltiu        t5, ra, -1415
13:               ori          t0, t0, 904
                  srai         t6, ra, 10
                  slli         s1, s8, 3
                  slti         t2, s9, -1312
                  add          s0, s10, t3
                  and          zero, t3, t4
19:               slli         t5, s7, 18
                  or           zero, a1, s0
                  bne          s7, t2, 32f
                  srli         zero, t2, 10
                  xor          s5, s10, a0
                  addi         tp, tp, 1034
                  sltiu        sp, a7, 692
                  bne          t3, a5, 34f
27:               bge          s11, a3, 41f
                  andi         s10, t6, -979
                  addi         sp, s4, -286
                  bltu         s7, s8, 38f
                  bne          s11, s9, 48f
32:               beq          s11, a1, 36f
                  auipc        a0, 1015404
34:               sub          t4, a5, a6
                  or           s10, t2, a0
36:               bge          t0, zero, 52f
                  bltu         t4, zero, 57f
sub_3_8:          jal          a3, 5f
0:                jal          ra, 18f
1:                jal          t1, 12f
2:                jal          ra, 21f
3:                jal          t1, 20f
4:                jal          tp, 8f
5:                jal          s5, 3b
6:                jal          ra, 17f
7:                jal          t1, 22f
8:                jal          ra, 10f
9:                jal          ra, 2b
10:               jal          ra, 0b
11:               jal          ra, 9b
12:               jal          ra, 16f
13:               jal          ra, 14f
14:               jal          ra, 19f
15:               jal          t6, 11b
16:               jal          a6, 23f
17:               jal          ra, 1b
18:               jal          t6, 15b
19:               jal          tp, 7b
20:               jal          tp, 13b
21:               jal          ra, 6b
22:               jal          t1, 4b
23:               auipc        t3, 636167
38:               slti         gp, s0, -1063
                  sra          a1, a2, s10
                  nop
41:               xor          t1, t6, t0
                  slt          s0, s11, s2
                  add          s5, ra, sp
                  lui          a3, 616468
                  bne          t0, s1, 54f
                  andi         s6, s8, -1538
                  sll          a0, s2, s5
48:               or           s9, zero, a7
                  srl          s3, t5, a3
                  sra          s9, t0, s9
                  and          a4, a5, t6
52:               bltu         t6, gp, 61f
                  sub          ra, a0, s7
54:               srl          t0, zero, gp
                  bltu         s10, t5, 68f
                  sll          t6, s6, t5
57:               sra          a5, t0, t3
                  sll          a0, s8, zero
                  slli         s10, zero, 7
                  bltu         tp, s10, 63f
61:               sra          a3, s0, s11
                  andi         a0, ra, -1003
63:               srl          s7, a5, a3
                  bltu         s0, a2, 79f
                  srl          s9, s5, t4
                  sltu         a6, a0, s8
                  bne          s9, s3, 69f
68:               bltu         gp, s0, 86f
69:               bgeu         s9, s11, 83f
                  xori         s11, s5, -156
                  lui          s7, 1031970
                  srl          t2, sp, a4
                  andi         s7, s6, 2024
                  sra          s0, t6, a6
                  bne          s5, t3, 88f
                  srai         a7, t5, 16
                  bne          s10, t4, 89f
                  auipc        t3, 222691
79:               srl          a5, sp, t0
                  or           s0, a0, a0
                  auipc        a4, 796948
                  slti         s7, t3, -774
83:               sltiu        t4, s4, -1924
                  srai         zero, a7, 2
                  srli         a0, t6, 23
86:               blt          t2, t3, 106f
                  auipc        t5, 409410
88:               andi         s9, zero, 89
89:               addi         a0, s11, -934
                  nop
                  ori          zero, s5, -1039
                  bne          sp, zero, 100f
                  nop
                  add          a3, s5, s8
                  or           s5, t5, t6
                  srai         t0, s7, 9
                  beq          s6, s11, 98f
98:               and          s7, s1, t3
                  bltu         s7, s4, 101f
100:              srl          s9, a0, s3
101:              xor          t5, a5, tp
                  srl          a1, a2, s4
                  blt          s2, s0, 107f
                  blt          a3, s9, 112f
                  sub          a5, zero, t6
106:              bgeu         s0, s6, 113f
107:              ori          s7, s3, -1178
                  andi         s6, sp, 1583
                  andi         s11, t0, -1456
                  slti         s0, a7, 1491
                  xori         a3, sp, -1999
112:              lui          gp, 1015105
113:              srli         s7, s11, 20
                  srl          a0, t4, s1
                  nop
                  or           a2, a1, s11
                  bne          s1, s8, 131f
                  sltu         t0, t0, s2
                  sltiu        s7, gp, 1825
                  lui          a6, 922953
                  sll          t1, s9, s0
                  blt          ra, a5, 124f
                  srai         t0, sp, 0
124:              bne          a3, t0, 132f
                  slli         zero, sp, 1
                  beq          s7, t0, 128f
                  bge          t5, a7, 130f
128:              srli         a1, a6, 29
                  bge          t1, t0, 144f
130:              auipc        s10, 938164
131:              and          a7, s10, s3
132:              sra          s11, a3, a6
                  srli         t4, t6, 7
                  slli         a6, zero, 28
                  auipc        a1, 376349
                  bne          t6, s5, 145f
                  and          t1, t5, a4
                  bgeu         s10, a1, 151f
                  sub          a2, s5, s5
                  lui          t6, 215655
                  sltiu        t3, t1, -933
                  bge          s0, s7, 162f
                  slli         t6, s9, 7
144:              andi         s10, a0, -1769
145:              beq          s4, tp, 158f
                  slt          t5, sp, t0
                  sub          gp, a3, s6
                  lui          a1, 1019844
                  lui          t6, 656750
                  srli         s9, a7, 19
151:              blt          s10, a0, 163f
                  nop
                  sra          a6, a4, s1
                  auipc        s0, 151280
                  bge          t4, s2, 164f
                  nop
                  blt          t0, sp, 171f
158:              auipc        t0, 635716
                  sltiu        s0, s10, -1418
                  bgeu         t2, sp, 172f
                  and          s0, a0, t1
162:              xor          s11, gp, s5
163:              bge          t3, s11, 171f
164:              bltu         t3, t4, 178f
                  srai         gp, t1, 17
                  sra          s6, t1, t0
                  add          a7, s2, t4
                  xor          ra, s9, gp
                  bge          a7, s8, 186f
                  nop
171:              addi         t6, s4, -1061
172:              sltu         s10, t6, a7
                  xor          sp, s2, a2
                  ori          s5, t3, -25
                  xori         a7, a1, -1329
                  bne          s1, t0, 192f
                  slti         tp, t5, -415
178:              srai         a3, s0, 2
                  xori         s3, tp, 1021
                  beq          a5, a6, 191f
                  blt          s6, t2, 189f
                  srli         a1, a2, 24
                  auipc        t0, 371558
                  srl          tp, ra, s5
                  add          t1, t0, s6
186:              sltu         tp, s7, gp
                  and          s7, s3, a4
                  addi         t6, s11, 526
189:              xor          s3, a1, a4
                  sltu         ra, tp, zero
191:              bltu         s7, t5, 198f
192:              lui          tp, 544125
                  srai         s9, a7, 22
                  ori          a0, t1, -1723
                  bge          s10, gp, 212f
                  lui          a3, 194174
                  sra          a5, s8, a4
198:              ori          t1, s9, -802
                  and          zero, ra, gp
                  ori          zero, ra, 1212
                  srl          t1, t6, s5
                  blt          gp, t6, 208f
                  bne          s9, s0, 217f
                  nop
                  bgeu         sp, t2, 213f
                  lui          a4, 834117
                  slli         sp, a5, 2
208:              sltu         sp, s4, t6
                  and          a3, gp, s11
                  slti         s1, zero, 1900
                  and          gp, t5, s8
212:              srli         s5, s5, 26
213:              bgeu         zero, a1, 214f
214:              bgeu         s2, t6, 232f
                  slti         a5, s9, 451
                  bgeu         t5, t4, 220f
217:              addi         t4, s11, 459
                  slti         a3, a0, 1493
                  srli         s9, s8, 20
220:              lui          a0, 749345
                  auipc        a0, 514207
                  beq          a6, s2, 242f
                  nop
                  and          s6, ra, t0
                  bne          ra, t4, 235f
                  srl          s0, s4, s2
                  sra          a7, t0, s5
                  addi         s3, s4, 1947
                  andi         a1, t5, -886
                  slti         a7, a3, 627
                  sra          t0, a0, t5
232:              bne          a6, tp, 236f
                  xor          a0, s7, t5
                  addi         a2, s3, 1691
235:              nop
236:              bge          tp, s11, 245f
                  bltu         tp, t0, 250f
                  auipc        t0, 893012
                  xori         zero, s11, 1730
                  slli         gp, t6, 6
                  slt          ra, a6, s4
242:              srai         a0, a1, 0
                  addi         s3, a3, -1390
                  ori          s10, s10, -1371
245:              andi         s1, s9, 1768
                  srl          a0, ra, a0
                  slt          s6, gp, s2
                  bgeu         t5, t3, 256f
                  sltu         t0, s9, a3
250:              sltiu        a1, s4, 829
                  nop
                  srl          s11, s9, t5
                  ori          s6, t4, -1855
                  bne          t3, s4, 264f
                  srl          a3, t2, a6
256:              sltiu        t2, gp, -325
                  and          s10, ra, a4
                  slt          gp, sp, a4
                  ori          a7, s11, 1935
                  blt          a1, s11, 277f
                  auipc        s9, 927452
                  ori          gp, s6, -1713
                  auipc        t5, 977178
264:              blt          s2, s9, 279f
                  slti         t2, a7, 1531
                  sltiu        t3, ra, -1757
                  addi         s9, zero, -721
                  andi         t3, s0, -1336
                  sltu         s3, a1, s4
                  sltu         t5, t4, a4
                  sltu         ra, ra, a0
                  slti         t5, tp, 148
                  slti         s9, ra, 468
                  sra          a0, gp, gp
                  slt          a6, a2, t0
                  nop
277:              auipc        t2, 398742
                  srli         s7, s11, 17
279:              auipc        t0, 660511
                  xori         tp, gp, -1191
                  blt          sp, a3, 294f
                  sra          ra, a4, s9
                  sra          t3, s2, s0
                  bne          tp, t1, 288f
                  and          a7, a2, s3
                  sra          s1, t5, a3
                  xor          s5, t6, a5
288:              beq          s6, a6, 308f
                  and          a1, s2, t3
                  lui          sp, 261137
                  blt          gp, a3, 305f
                  slti         gp, a2, 1807
                  slti         s10, a3, -1710
294:              slti         a1, a7, -1278
                  beq          a7, zero, 298f
                  or           a4, tp, s10
                  ori          a4, t0, -1509
298:              bge          s3, a7, 300f
                  xori         t4, s3, 1002
300:              add          a6, t0, zero
                  bltu         zero, s10, 318f
                  sub          t2, t3, a3
                  slt          a3, a5, s6
                  add          gp, sp, t6
305:              auipc        a5, 36681
                  bne          t4, s10, 320f
                  blt          s3, gp, 325f
308:              bgeu         s11, tp, 310f
                  bltu         a6, ra, 325f
310:              sra          s0, s8, s1
                  andi         a6, a5, -265
                  beq          a4, t0, 318f
                  slli         s1, t5, 23
                  srl          t1, s3, s0
                  srai         s5, t1, 28
                  ori          t4, a1, 2047
                  sltu         sp, a4, t5
318:              beq          a4, sp, 327f
                  bgeu         a4, t4, 327f
320:              xor          s7, s3, t4
                  slt          s1, sp, s2
                  xori         a3, sp, -1224
                  xori         sp, s5, 474
                  add          a3, a1, a4
325:              srai         s11, a0, 1
                  and          a1, a5, t3
327:              nop
                  auipc        tp, 318372
                  blt          t6, s4, 336f
                  and          t4, sp, sp
                  ori          s3, s5, -243
                  or           ra, s9, t2
                  srli         t4, a1, 22
                  slti         s1, a5, 211
                  blt          a2, s5, 336f
336:              bgeu         gp, a5, 347f
                  bgeu         t0, gp, 341f
                  ori          t0, s4, 1945
                  sub          t2, ra, s2
                  auipc        gp, 404975
341:              slti         t5, gp, 1850
                  srl          t5, a6, a4
                  slli         t6, t5, 7
                  srai         a6, a1, 12
                  bgeu         tp, t4, 359f
                  andi         a6, s10, -524
347:              ori          a0, s3, 1515
                  slli         s6, t0, 17
                  xori         s3, t2, -254
                  nop
                  srai         tp, gp, 12
                  sub          s7, s11, a6
                  andi         a0, a2, 1668
                  or           ra, t2, s11
                  sll          a0, s4, a3
                  bge          s11, s8, 368f
                  andi         a1, a1, -191
                  sltu         s10, gp, s4
359:              srl          t4, s5, a5
                  sltiu        a5, s0, 856
                  addi         t2, s7, -134
                  bne          a7, t6, 382f
                  bne          a3, a6, 371f
                  sltu         a1, t2, s1
                  sltu         a1, a2, zero
                  lui          s7, 242414
                  xor          s1, a0, t3
368:              andi         a4, s2, -220
                  slli         sp, a6, 17
                  and          gp, t3, s3
371:              and          t2, t6, a2
                  sltu         s3, tp, a7
                  xori         gp, s0, -1046
                  sub          sp, s0, s1
                  srl          a7, s0, s10
                  xor          a0, s8, s10
                  add          t5, t0, tp
                  and          s10, s0, s4
                  srai         a5, s0, 2
                  sll          t0, s10, a5
                  ori          s3, zero, -1569
382:              sub          t6, s7, ra
                  addi         a5, a1, 1869
                  and          a6, s9, t5
                  sub          gp, t6, s7
                  lui          a0, 49512
                  srli         zero, t3, 10
                  or           s0, t5, t5
                  sltu         s6, s10, a2
                  xor          a4, s6, a2
                  srl          zero, a1, t0
                  xori         t0, sp, 945
                  bge          ra, a2, 405f
                  la           s6, sub_4
                  slti         s5, a0, 1737
                  ori          a6, a7, -1103
                  srai         t4, s11, 26
                  slt          t4, s3, a7
                  sra          sp, s2, a0
                  addi         s6, s6, 16
                  xor          s1, a6, t3
                  sltiu        a0, t3, 262
                  or           a7, ra, ra
sub_3_j6:         jalr         a3, s6, -15 #jump sub_3 -> sub_4
                  and          s10, t3, ra
                  bne          t6, zero, 403f
                  beq          gp, s4, 416f
                  sub          t4, s10, tp
                  srai         a4, a6, 23
                  bne          tp, a6, 407f
                  addi         s3, ra, -1910
                  xor          s7, s4, s0
                  beq          a4, tp, 416f
403:              bgeu         a5, s9, 404f
404:              bne          a2, t3, 417f
405:              andi         t6, s6, -953
                  bgeu         s9, t2, 426f
407:              bne          s2, s5, 419f
                  bne          s1, s9, 417f
                  addi         s10, s0, 440
                  slli         a1, a4, 18
                  bge          s2, t5, 422f
                  andi         a5, s7, 2034
                  slli         s5, a6, 25
                  sltiu        ra, a1, 1837
                  andi         ra, s6, -1980
416:              srli         t1, gp, 28
417:              sub          t5, s3, a5
                  ori          a5, sp, 1500
419:              slti         t2, t0, 439
                  xor          a0, tp, zero
                  sra          s1, tp, gp
422:              srai         t2, s4, 13
                  sll          s6, s3, a5
                  beq          sp, s6, 440f
                  srl          a4, a2, a0
426:              bgeu         s8, a5, 430f
                  bne          t5, a4, 430f
                  andi         t1, t2, 1418
                  srli         tp, t2, 26
430:              and          t0, s5, s4
                  xor          a6, t0, t4
                  srli         a5, s3, 27
                  bne          tp, a6, 439f
                  beq          zero, s4, 448f
                  sltiu        t0, s8, 460
                  add          a1, tp, a7
                  srai         tp, t4, 2
                  lui          t5, 5654
439:              lui          s9, 614225
440:              sra          gp, s9, s10
                  auipc        a0, 982106
                  nop
                  ori          s3, ra, -1056
                  ori          tp, t5, 100
                  slti         sp, s0, 356
                  slti         ra, s4, -280
                  srai         a2, s6, 5
448:              add          a4, a3, a0
                  slli         a3, s3, 28
                  slt          s9, s0, ra
                  sll          t5, s4, a0
                  sltiu        s7, s3, 1886
                  slli         s6, s2, 1
                  bltu         s2, s7, 464f
                  nop
                  bltu         a7, s5, 464f
                  beq          t2, tp, 470f
                  beq          t6, s6, 466f
                  addi         t0, s8, -1788
                  auipc        s5, 853602
                  lui          s0, 311518
                  bgeu         s2, a1, 479f
                  sltiu        a7, t1, -496
464:              andi         t5, t5, -1265
                  nop
466:              addi         t0, t4, 999
                  sltiu        zero, t5, 1728
                  sra          gp, a3, a7
                  sltu         s5, a5, t1
470:              slti         ra, s11, -1144
                  sub          a2, tp, ra
                  slt          a1, s3, zero
                  sll          t4, t6, a7
                  blt          a5, s0, 488f
                  slti         t3, s5, -1181
                  srai         s9, t6, 25
                  sltu         s0, s0, s5
                  add          a3, zero, zero
479:              lui          a5, 910602
                  addi         a0, s6, 107
                  beq          a7, s5, 496f
                  slli         tp, ra, 14
                  sltu         t0, a7, s5
                  xor          a4, s9, a4
                  nop
                  andi         a0, a1, 1042
                  srl          t5, gp, s9
488:              bltu         t6, t5, 500f
                  addi         a0, a3, 739
                  srl          t5, a6, a2
                  bge          t4, s9, 495f
                  xori         t0, gp, 1810
                  nop
                  bge          a0, s5, 502f
495:              sub          s7, ra, t3
496:              sra          t6, s9, a0
                  blt          t5, s10, 499f
                  blt          a4, t1, 500f
499:              andi         gp, sp, 545
500:              addi         ra, s7, 1084
                  srai         a2, t0, 3
502:              srl          s1, s0, tp
                  sra          zero, a2, t3
                  srai         s11, t6, 18
                  bge          s1, a0, 512f
                  bgeu         s1, t1, 524f
                  addi         a3, t5, -1392
                  slt          t4, a6, s9
                  srli         t3, a3, 14
                  srl          t0, t3, s6
                  ori          tp, tp, -2005
512:              add          s1, s10, t0
                  srl          s5, s10, t2
                  or           s10, s4, s10
                  beq          t4, s7, 524f
                  nop
                  slti         t6, s7, -221
                  slt          a5, s5, a0
                  xor          s9, s1, s10
                  sltu         a1, s3, a2
                  slti         s6, t4, 1141
                  xori         gp, tp, -1104
                  srai         s11, t4, 15
524:              srli         a6, s7, 15
                  xori         s11, t2, 143
                  auipc        t3, 846511
                  bne          a5, t1, 544f
                  lui          s0, 209375
                  bge          a7, a0, 544f
                  auipc        t6, 263201
                  sra          t4, s9, s2
                  sra          a4, t1, a4
                  bge          t4, s11, 547f
                  ori          s3, a1, 1547
                  srai         s1, s6, 18
                  bgeu         s11, s0, 544f
                  slti         t6, sp, 1414
                  sltu         zero, s1, t6
                  addi         t4, s2, 1838
                  xor          a3, s6, t3
                  slti         a2, s11, -1506
                  add          sp, zero, t1
                  srai         a3, a6, 5
544:              sra          t4, ra, t4
                  sltiu        s10, t3, 166
                  ori          a5, s2, 618
547:              sltu         t4, s11, t0
                  srli         a1, t2, 12
                  or           s9, s7, s3
                  auipc        s9, 624006
                  bltu         gp, t3, 567f
                  lui          s3, 213156
                  srli         gp, s1, 1
                  srli         t6, s10, 7
                  xori         a1, s9, -334
                  bne          s9, sp, 573f
                  bne          s2, sp, 575f
                  beq          s11, a6, 568f
                  beq          s9, a0, 571f
                  slt          ra, a5, s9
                  srli         t3, a6, 24
                  and          a4, s4, a7
                  auipc        a4, 113991
                  sra          a2, a0, t3
                  lui          ra, 284024
                  srli         a4, s0, 26
567:              beq          a2, gp, 576f
568:              srai         s1, t0, 4
                  sll          t4, s11, a2
                  srli         sp, t5, 5
571:              sra          t5, s5, sp
                  xor          a5, t3, tp
573:              bgeu         s4, a0, 590f
                  sltiu        s5, t4, -445
575:              lui          s3, 208699
576:              and          t2, t6, t1
                  slt          tp, a2, a5
                  blt          a7, t2, 589f
                  auipc        t4, 944778
                  sltiu        ra, a4, 1981
                  bne          a5, s6, 590f
                  srai         s7, a6, 15
                  addi         t4, s11, 1785
                  beq          a2, ra, 588f
                  lui          s11, 309015
                  add          a3, t5, a4
                  ori          s5, a4, 1740
588:              bge          a7, s0, 590f
589:              blt          s2, s6, 595f
590:              and          gp, s10, s5
                  srli         a3, s2, 9
                  bge          gp, s8, 606f
                  auipc        s9, 341874
                  addi         t0, a5, -1399
595:              srli         tp, s7, 9
                  addi         tp, s10, 1020
                  slti         s10, t0, 1965
                  lui          s1, 990894
                  nop
                  nop
                  sub          t5, t2, s7
                  xor          a3, s9, s10
                  bge          t6, gp, 605f
                  srli         s9, s0, 8
605:              bge          s8, s3, 625f
606:              bge          t2, a3, 619f
                  slt          a3, a6, s9
                  bltu         s6, a3, 612f
                  bne          s1, s3, 617f
                  slli         s7, s6, 3
                  blt          a6, a1, 631f
612:              sub          s6, s10, s3
                  addi         s9, s11, 1693
                  ori          s1, s5, -657
                  bge          s10, s6, 618f
                  bge          s5, t0, 628f
617:              or           t0, t3, t0
618:              lui          t6, 797003
619:              beq          a6, a5, 633f
                  xori         t5, t6, 663
                  xor          t2, s0, t6
                  nop
                  srai         a7, t0, 2
                  sll          gp, s0, t3
625:              bgeu         ra, zero, 633f
                  xori         s10, a5, -235
                  or           zero, t1, s3
628:              nop
                  bgeu         t3, s7, 642f
                  or           a5, a7, s4
631:              or           t1, ra, s4
                  addi         s7, s7, 1762
633:              bgeu         a1, s5, 634f
634:              bge          t2, ra, 642f
                  auipc        t6, 782813
                  sra          zero, t6, a2
                  sll          s7, t2, a0
                  or           t4, s2, t3
                  sltu         a3, sp, s3
                  bgeu         s8, t3, 647f
                  andi         s10, s10, 890
642:              ori          t0, t0, 886
                  xori         t3, a1, -390
                  and          s3, t5, s11
                  srl          t0, a1, s0
                  and          s0, s4, a6
647:              addi         t5, a3, -719
                  andi         t6, t0, 1592
                  sltiu        t6, s10, -1241
                  auipc        s1, 186807
                  bgeu         s3, t3, 671f
                  slt          s0, s11, s1
                  add          ra, t3, a0
                  add          a6, s11, s11
                  add          s11, t2, t2
                  ori          ra, t5, 1282
                  sltiu        a5, t3, 499
                  beq          s4, s4, 665f
                  xori         a2, tp, 1048
                  or           a2, t2, t0
                  lui          t2, 1004290
                  nop
                  sra          t4, a0, t4
                  xor          t1, s7, sp
665:              slti         t0, zero, -802
                  blt          a7, a1, 680f
                  sra          s1, s10, s11
                  andi         a5, t3, -370
                  auipc        s9, 542013
                  addi         s1, s2, -593
671:              srai         zero, tp, 12
                  beq          t6, t3, 689f
                  auipc        a6, 209088
                  slli         s1, s7, 7
                  blt          t2, gp, 677f
                  or           t6, t1, s9
677:              sub          a6, s10, s1
                  slli         a3, t1, 23
                  or           s7, t1, s2
680:              addi         s1, s7, 1672
                  sub          t6, t6, t5
                  lui          t6, 526918
                  blt          s6, s11, 692f
                  sub          tp, s9, a7
                  nop
                  beq          s4, a5, 687f
687:              bne          t5, t3, 700f
                  bltu         s9, t5, 697f
689:              nop
                  srai         s6, a6, 17
                  bne          a4, t4, 693f
692:              slli         s3, a5, 16
693:              slti         gp, t0, 914
                  srli         t3, s2, 23
                  ori          a5, s6, -1735
                  ori          tp, s6, 1923
697:              blt          zero, a2, 710f
                  auipc        a3, 405053
                  nop
700:              sll          a6, s6, t3
                  beq          a5, a1, 713f
                  sltiu        t0, s1, -874
                  addi         t1, ra, -175
                  bge          a1, t2, 712f
                  sll          a1, zero, t4
                  nop
                  xori         s7, s2, 217
                  addi         a3, s5, -364
sub_3_18:         jal          a3, 9f
0:                jal          ra, 1f
1:                jal          ra, 7f
2:                jal          t1, 12f
3:                jal          ra, 14f
4:                jal          t1, 13f
5:                jal          t1, 4b
6:                jal          s11, 2b
7:                jal          s10, 5b
8:                jal          t1, 3b
9:                jal          ra, 10f
10:               jal          a7, 6b
11:               jal          s3, 8b
12:               jal          t1, 0b
13:               jal          ra, 11b
14:               auipc        s3, 771577
                  xori         sp, s6, -172
710:              xori         gp, t1, -1458
                  sub          s0, s6, t3
712:              srli         a5, a0, 28
713:              slli         a6, t6, 15
                  slt          t2, s2, s2
                  srl          s7, s7, a4
                  slli         a6, s9, 2
                  bne          tp, a4, 725f
                  or           a5, s8, a4
                  srl          s9, gp, a1
                  sra          s10, s2, a3
                  bne          s10, s3, 739f
                  slt          t1, tp, s2
                  xor          a4, s10, s7
                  srli         t3, s7, 1
725:              bgeu         s10, a7, 739f
                  slt          a7, a2, s1
                  beq          t5, a4, 743f
                  nop
                  slli         a3, s8, 8
                  srli         a0, s5, 4
                  bge          gp, a5, 748f
                  ori          t1, s11, 1791
                  sltu         t3, t1, sp
                  srli         a5, a5, 7
                  srai         a5, s2, 24
                  xori         t6, t6, 1912
                  srai         a5, s11, 16
                  xori         t6, a4, -676
739:              bgeu         tp, s11, 751f
                  or           a0, ra, zero
                  nop
                  slt          t1, a5, a6
743:              beq          a1, s1, 747f
                  and          ra, ra, s1
                  or           a0, s2, a1
                  sll          t2, s4, t1
747:              sra          a5, a1, s11
748:              lui          t2, 342277
                  slli         t5, s5, 9
                  addi         s11, s2, -1650
751:              nop
                  sltu         tp, a6, s6
                  nop
                  addi         t6, s11, -668
sub_3_10:         jal          a3, 0f
0:                jal          s11, 12f
1:                jal          ra, 18f
2:                jal          ra, 13f
3:                jal          t1, 14f
4:                jal          ra, 2b
5:                jal          ra, 16f
6:                jal          t1, 11f
7:                jal          t0, 6b
8:                jal          tp, 3b
9:                jal          ra, 10f
10:               jal          ra, 7b
11:               jal          ra, 17f
12:               jal          ra, 8b
13:               jal          ra, 1b
14:               jal          a7, 4b
15:               jal          ra, 5b
16:               jal          t6, 19f
17:               jal          ra, 15b
18:               jal          a4, 9b
19:               ori          s6, t2, 505
                  bge          a5, a5, 759f
                  slli         s9, t1, 1
                  ori          a7, s3, -1042
                  xor          a1, t3, a0
759:              slti         t4, sp, 1283
                  slli         s6, a2, 9
                  beq          s5, a1, 767f
                  ori          s0, s7, -732
                  and          ra, s10, t6
                  ori          s1, a7, 1550
                  sltu         sp, t3, s4
                  nop
767:              bgeu         a2, s4, 775f
                  srli         t5, a0, 4
                  srl          gp, t2, t0
                  addi         s3, s10, -1687
                  ori          ra, s4, 189
                  bne          s9, s4, 783f
                  blt          a1, a5, 783f
                  nop
775:              slli         s0, sp, 18
                  sll          t3, s7, s5
                  bge          s4, s8, 791f
                  srl          s3, s5, s2
                  srl          a1, t0, ra
                  xor          t0, a0, t1
                  bne          gp, s8, 789f
                  srai         zero, t5, 5
783:              addi         s3, t6, -148
                  sub          s5, s9, s3
                  srai         a0, s0, 27
                  ori          zero, s2, 772
                  srai         t1, ra, 24
                  sltiu        s6, a1, 1149
789:              or           sp, s2, s4
                  sra          a4, a1, s1
791:              slli         a3, gp, 22
                  lui          s5, 883251
                  xori         t2, s3, 791
                  xori         t2, t0, -1702
                  srl          t3, t2, sp
                  srai         t0, s11, 17
                  xor          s10, t5, t2
                  beq          t0, t4, 818f
                  slli         s0, a6, 4
                  xor          s11, s3, t6
                  sll          t1, a2, a2
                  sltiu        t1, t6, 1989
                  sra          s1, t1, s10
                  slti         s10, a4, 609
                  bge          a0, a4, 820f
                  nop
                  slti         a0, s7, -613
                  sub          s0, gp, s11
                  xori         a7, a5, -1169
                  beq          s6, t5, 813f
                  sltiu        a1, s7, 1125
                  addi         s10, a5, 482
813:              addi         a6, ra, -1496
                  srai         a3, s8, 11
                  slt          sp, gp, t6
                  nop
                  bge          a6, s10, 829f
818:              addi         s1, s6, 574
                  xor          t4, s6, ra
820:              blt          a5, s8, 834f
                  srl          a5, t6, a2
                  xor          gp, t0, ra
                  blt          gp, t3, 839f
                  srai         s6, a2, 29
sub_3_7:          jal          a3, 0f
0:                jal          ra, 14f
1:                jal          ra, 6f
2:                jal          t1, 4f
3:                jal          ra, 10f
4:                jal          t1, 11f
5:                jal          ra, 9f
6:                jal          t1, 17f
7:                jal          a5, 2b
8:                jal          s3, 3b
9:                jal          ra, 12f
10:               jal          ra, 16f
11:               jal          t1, 1b
12:               jal          ra, 18f
13:               jal          t1, 15f
14:               jal          ra, 13b
15:               jal          ra, 7b
16:               jal          s1, 5b
17:               jal          ra, 8b
18:               slt          t4, t1, s11
                  beq          a4, a6, 845f
                  srli         a6, s7, 1
                  bgeu         ra, s3, 829f
                  ori          zero, s4, 1847
829:              lui          gp, 736611
                  srli         a2, s0, 24
                  bge          s7, t3, 832f
832:              bgeu         s11, s5, 843f
                  slti         s9, t6, -591
834:              srl          s7, gp, t6
                  srli         s3, a2, 0
                  add          s10, a1, zero
                  sltiu        s0, s10, 913
                  auipc        s9, 792181
839:              bne          t4, s4, 857f
                  blt          sp, s10, 848f
                  sltiu        zero, s8, 92
                  srli         t4, a5, 0
843:              ori          a4, a5, -194
                  and          a6, s8, a7
845:              blt          a0, s9, 853f
                  nop
                  sub          sp, s11, a0
848:              slti         a7, a4, 1148
                  sltu         s11, t3, t4
                  ori          zero, t6, -1671
                  sltu         s0, s5, s7
                  andi         t5, s9, -1913
853:              sub          a1, a1, t5
                  lui          t4, 72178
                  auipc        s11, 629566
                  ori          a7, a2, 1970
857:              sll          ra, zero, s6
                  srli         gp, a3, 12
                  andi         t4, zero, 1140
                  auipc        s3, 793058
                  srai         s0, a7, 23
                  bne          a3, s0, 865f
                  xor          s1, a7, t4
                  bne          s3, s0, 868f
865:              nop
                  srai         a2, a3, 26
                  auipc        s11, 8758
868:              bge          t3, s3, 885f
                  or           s0, s7, a7
                  addi         a3, a7, 1248
                  bltu         s10, a5, 880f
                  slli         t4, s5, 11
                  blt          t1, s6, 887f
                  sll          gp, tp, t4
                  addi         t4, a7, -1267
                  andi         a4, t6, 12
                  bne          a5, s9, 894f
                  bge          t4, t3, 893f
                  addi         s0, a3, 747
880:              bltu         s6, s4, 887f
                  bge          s5, gp, 894f
                  ori          t1, t1, -1622
                  sra          a7, s6, s11
                  srai         s7, tp, 24
885:              xori         a3, gp, -1937
                  sltiu        t5, a2, -980
887:              auipc        t3, 270800
                  bgeu         a5, t1, 890f
                  bne          s5, s4, 893f
890:              ori          ra, s11, 1032
                  sra          t2, zero, a1
                  bgeu         s4, a5, 912f
893:              bge          t2, a6, 902f
894:              addi         t6, t2, 891
                  slt          sp, s2, a6
                  addi         t6, tp, -1613
                  bgeu         s4, s2, 907f
                  sra          a4, zero, t1
                  blt          s9, t4, 907f
                  bgeu         a7, t3, 912f
                  sltu         s10, a0, t0
902:              addi         a2, a2, 1330
                  srai         s1, t3, 22
                  add          t0, s3, s9
                  sltiu        a1, a2, 703
                  auipc        a5, 914638
907:              slt          s10, tp, s4
                  srl          a3, s6, gp
                  srli         s0, zero, 11
                  bltu         t5, gp, 916f
                  beq          t6, t4, 924f
912:              or           t2, ra, a0
                  bne          tp, t0, 921f
                  sltiu        t1, t4, -1647
                  nop
916:              srl          gp, s10, s8
                  sra          t5, a1, s7
                  srli         t2, s7, 7
                  and          ra, s3, a3
                  bltu         s10, a2, 934f
921:              lui          a6, 492796
                  srli         t4, a7, 0
                  bne          a6, s7, 929f
924:              slt          t3, s0, t4
                  xori         s7, s7, 951
                  sll          s1, s9, t5
                  auipc        t1, 1010196
                  and          t1, s2, tp
929:              ori          s3, ra, 1915
                  addi         s0, tp, 535
                  slti         a7, gp, 1509
                  and          a3, gp, a2
                  and          s1, s7, s10
934:              sub          t6, s5, t2
                  bgeu         s6, s3, 945f
                  slti         a7, t1, 1039
                  add          t1, tp, t1
                  sub          s6, s9, t2
                  sltu         s1, s11, a6
                  bltu         s2, sp, 958f
                  sub          s5, s7, tp
                  andi         s0, a2, -1999
                  bgeu         s8, t2, 956f
                  slt          s7, s9, s11
945:              sltu         s5, s2, s5
                  auipc        a2, 853922
                  xori         s6, t4, 1365
                  or           t5, tp, t2
                  xori         t5, t0, -1225
                  sltiu        a3, a6, 915
                  sub          s10, t4, s3
                  bgeu         a1, s10, 954f
                  xor          s11, s6, a2
954:              sra          a0, ra, t4
                  slt          t0, s0, a4
956:              and          s11, ra, tp
                  nop
958:              and          zero, t3, a5
                  add          s6, t0, s10
                  add          s3, a6, tp
                  slli         s7, sp, 19
                  addi         s11, s6, -266
                  srli         t4, gp, 13
                  add          s1, a3, s1
                  add          a0, s3, s3
                  sltiu        s10, a4, -24
                  srl          tp, sp, s10
                  sub          s7, t5, s4
                  srl          t2, zero, s8
                  blt          t6, gp, 978f
                  nop
                  ori          a5, zero, 1949
                  sll          t1, s3, s11
                  or           s10, t1, a3
                  sltiu        s1, t6, 169
                  sltiu        t3, s8, 2018
                  sub          t2, t3, s9
978:              slt          t3, a4, t1
                  add          s6, tp, s5
                  xori         a2, a4, 1544
                  blt          t5, a2, 992f
                  slt          a5, a4, a2
                  slli         tp, t2, 28
                  blt          a0, a5, 999f
                  sub          a4, t1, gp
                  srl          gp, tp, sp
                  bgeu         t0, s10, 999f
                  slti         sp, a5, -1112
                  bge          t0, a5, 1009f
                  sltu         gp, s6, ra
                  bgeu         s1, s9, 1005f
992:              andi         s10, s10, 1551
                  xori         s10, gp, 219
                  slt          t1, a5, s2
                  addi         t0, s11, -1614
                  ori          s5, t4, -435
                  auipc        s1, 269180
                  srli         s0, s4, 14
999:              sub          a4, s2, s0
                  add          a4, gp, t1
                  sltu         t5, a5, s5
                  sub          a1, sp, a7
                  nop
                  auipc        sp, 966847
1005:             srli         a1, s4, 11
                  lui          t3, 97218
                  sltu         s5, s11, a7
                  sltu         t3, a6, a0
1009:             auipc        a1, 402292
                  xor          tp, s2, a5
                  sub          s1, ra, t5
                  bge          t4, s4, 1013f
1013:             add          t1, t1, ra
                  slli         s10, a7, 20
                  blt          gp, tp, 1023f
                  srai         ra, a3, 16
                  slti         s9, a5, -1376
                  nop
                  srai         t6, a2, 5
                  addi         t3, s4, 1622
                  bge          s2, gp, 1023f
                  sub          t4, a7, s5
1023:             slti         zero, gp, 1982
                  auipc        s11, 270061
                  or           t4, ra, s8
                  slti         t1, zero, 2022
                  beq          ra, s10, 1041f
                  xor          t5, zero, a2
                  slt          s3, a0, a6
                  bge          s9, a5, 1034f
                  and          a0, gp, a7
                  slt          a0, ra, s7
                  sltiu        s11, t4, -1093
1034:             xor          s7, a1, zero
                  bgeu         t2, t1, 1052f
                  slti         s6, a1, 1452
                  blt          s9, a2, 1049f
                  add          t5, t5, a7
                  add          s11, gp, a7
                  srli         a0, s3, 29
1041:             ori          t4, zero, -2013
                  sltu         zero, s8, sp
                  xor          a7, a6, t3
                  srl          a5, s7, t6
                  slti         t2, t4, -210
                  sltiu        s7, s0, -64
                  beq          t1, a6, 1056f
                  sll          s11, s3, t4
1049:             xori         a4, a0, -120
                  blt          t1, t1, 1057f
                  slli         zero, a2, 6
1052:             sltiu        ra, s1, 1700
                  beq          s7, s10, 1062f
                  bge          s7, s4, 1058f
                  or           a4, t2, tp
1056:             srli         t6, a7, 1
1057:             blt          t5, a4, 1065f
1058:             andi         a0, a1, -1174
                  sra          s11, a0, t5
                  bne          t4, s8, 1063f
                  srai         t1, t2, 30
1062:             sltiu        t5, ra, 1458
1063:             sltu         s6, s3, sp
                  andi         s9, t4, 673
1065:             srl          t0, a4, t2
                  auipc        a3, 736092
                  lui          a7, 308099
                  addi         t6, s4, 403
                  beq          a6, a1, 1089f
                  blt          a5, a4, 1087f
                  xor          gp, t3, s5
                  nop
                  bltu         a5, a3, 1089f
                  sltu         t4, a5, t1
                  bge          a5, a0, 1083f
                  srl          s0, s1, a3
                  xori         t1, s1, -2039
                  slti         gp, a0, -1369
                  lui          t2, 1009772
                  sll          t4, a7, s1
                  add          a5, a7, a2
                  bge          s10, s11, 1095f
1083:             slt          t5, a6, a3
                  srli         gp, s9, 0
                  addi         t0, a2, 624
                  srai         sp, s8, 27
1087:             sltu         t4, t4, tp
                  bgeu         a4, a3, 1102f
1089:             addi         s7, s9, -1401
                  sltu         ra, t3, t1
                  and          s3, s4, s11
                  xori         t2, t5, 14
                  sub          a2, a7, ra
                  lui          ra, 942679
1095:             and          s10, t4, s1
                  add          s6, a3, s9
                  slt          sp, t1, s6
                  srl          t6, s7, s1
                  slti         a1, t3, -1069
                  xor          s1, a3, t6
                  lui          tp, 50925
1102:             slt          sp, t3, t5
                  addi         t4, sp, -410
                  andi         t2, ra, -45
                  nop
                  beq          t4, s6, 1115f
                  slli         zero, zero, 3
                  bge          a1, t4, 1114f
                  xori         a4, t1, 866
                  sra          t6, a3, s3
                  add          t1, gp, tp
                  xor          t2, t6, t6
                  slt          t6, s10, gp
1114:             sub          a7, sp, gp
1115:             bltu         t0, t1, 1122f
                  andi         sp, s11, -70
                  bge          t6, s10, 1118f
1118:             xori         s9, a3, -1069
                  beq          t0, s8, 1133f
                  bne          s1, tp, 1134f
                  ori          t1, ra, -654
1122:             bltu         t6, tp, 1126f
                  addi         ra, s9, 1098
                  bgeu         a0, zero, 1132f
                  addi         ra, t1, -268
1126:             add          t0, s4, a5
                  addi         t5, gp, 1422
                  srai         t3, t3, 13
                  addi         t0, s8, 789
                  bge          s6, s0, 1138f
                  add          s5, t6, s6
1132:             xori         s5, s10, -1587
1133:             or           t0, a5, t1
1134:             sra          a5, s9, s11
                  sltu         a5, t5, s7
                  sltiu        t2, a4, 1443
                  bltu         t2, zero, 1147f
1138:             xori         t0, t4, -2027
                  sltu         a7, t1, s2
                  srl          s0, gp, s6
                  sub          s7, s2, t3
                  sltiu        ra, a1, -1443
                  srl          tp, s4, a0
                  sltu         ra, tp, ra
                  slli         a2, s6, 19
                  slt          a0, t2, t4
1147:             and          t6, s8, a3
                  srai         t4, a6, 15
                  lw           a3, 4(s8)
                  lui          s9, 157978
                  lui          s3, 753500
                  addi         s8, s8, 16
                  sub          a7, s9, t0
                  sltiu        s3, t0, 971
1636:             addi x17, x13, 0
1636:             jalr x17, x17, 0
sub_4:            srli         t3, s4, 24
                  or           t4, a1, t1
                  sra          t4, gp, zero
                  add          gp, a4, a6
                  andi         a4, s10, -768
                  bge          s7, s8, sub_4_stack_p
                  nop
sub_4_stack_p:    addi         s8, s8, -8
                  xor          a7, t5, t2
                  sw           a3, 4(s8)
                  srli         s7, s8, 12
                  slli         t1, t6, 15
                  lui          a4, 313958
                  blt          tp, a0, sub_4_j7 #branch to jump instr
                  nop
                  sub          s0, a5, t3
                  lui          t5, 551747
                  slli         s10, s6, 13
                  ori          s11, s0, -1773
                  slti         t0, s5, 725
                  addi         t6, s11, -372
                  ori          a6, sp, -16
                  or           s9, a5, s7
sub_4_j7:         jal          a3, sub_5 #jump sub_4 -> sub_5
                  slti         t1, a2, 1409
                  sltiu        t0, t2, 1938
                  and          a0, s10, t0
                  bge          a6, a6, sub_4_j8 #branch to jump instr
                  srl          s11, a2, a2
                  sltiu        s5, gp, -630
                  addi         t6, s7, -310
                  nop
                  slti         a2, t5, 358
                  ori          tp, s2, 872
                  xor          t5, a3, s3
sub_4_j8:         jal          a3, sub_5 #jump sub_4 -> sub_5
                  blt          a7, a0, 6f
                  addi         s11, s2, -1559
                  slti         t4, sp, -497
                  beq          s0, s10, 16f
                  auipc        t1, 782151
                  slt          s10, s7, t6
6:                srli         s0, s0, 0
                  xori         zero, sp, -1675
                  bgeu         gp, t3, 23f
                  srai         s0, gp, 2
                  bgeu         t2, t3, 15f
                  auipc        a3, 833187
                  bne          s3, s4, 25f
                  sub          t6, a1, t5
                  sltu         s1, t6, t2
15:               sra          s9, a5, a1
16:               beq          t4, s4, 27f
                  or           gp, t5, a3
                  blt          a2, t5, 31f
                  slt          gp, a4, s10
                  sltu         t0, s5, s11
                  add          s10, s0, s10
                  slti         t4, s10, -1358
23:               blt          s0, s8, 31f
                  bne          gp, t5, 31f
25:               srai         tp, t3, 31
                  slt          tp, s2, a2
27:               sltiu        s10, s5, 127
                  slli         t5, t5, 7
                  srai         t4, a4, 28
                  bltu         t6, s4, 31f
31:               xor          s0, t3, a5
                  srl          a4, s3, s3
                  lw           a3, 4(s8)
                  auipc        a1, 235450
                  srai         t2, a1, 0
                  addi         s8, s8, 8
                  sll          s1, tp, s8
                  add          a4, a4, s3
75:               addi x30, x13, 0
75:               jalr x30, x30, 0
sub_2:            srli         ra, zero, 26
                  sra          s10, s3, s6
                  addi         s8, s8, -40
                  nop
                  srl          t1, gp, s6
                  sw           a3, 4(s8)
                  xor          t0, s0, a4
sub_2_12:         jal          a3, 8f
0:                jal          ra, 5f
1:                jal          t1, 3f
2:                jal          a3, 0b
3:                jal          tp, 4f
4:                jal          s5, 2b
5:                jal          ra, 9f
6:                jal          t1, 7f
7:                jal          ra, 10f
8:                jal          s6, 1b
9:                jal          t1, 6b
10:               srli         t5, sp, 5
sub_2_21:         jal          a3, 6f
0:                jal          t0, 19f
1:                jal          ra, 0b
2:                jal          a3, 17f
3:                jal          ra, 13f
4:                jal          t1, 5f
5:                jal          t0, 20f
6:                jal          ra, 18f
7:                jal          ra, 21f
8:                jal          t1, 2b
9:                jal          t5, 23f
10:               jal          ra, 7b
11:               jal          ra, 10b
12:               jal          ra, 4b
13:               jal          ra, 16f
14:               jal          ra, 11b
15:               jal          ra, 14b
16:               jal          t1, 9b
17:               jal          a7, 15b
18:               jal          t0, 1b
19:               jal          ra, 22f
20:               jal          t1, 8b
21:               jal          ra, 3b
22:               jal          ra, 12b
23:               sltu         t3, s0, s11
sub_2_8:          jal          a3, 12f
0:                jal          a4, 4f
1:                jal          t1, 26f
2:                jal          ra, 5f
3:                jal          ra, 22f
4:                jal          t1, 14f
5:                jal          ra, 25f
6:                jal          a5, 11f
7:                jal          ra, 18f
8:                jal          t6, 23f
9:                jal          ra, 2b
10:               jal          ra, 24f
11:               jal          ra, 20f
12:               jal          sp, 6b
13:               jal          t1, 1b
14:               jal          ra, 19f
15:               jal          t0, 21f
16:               jal          t1, 7b
17:               jal          ra, 3b
18:               jal          ra, 13b
19:               jal          t0, 15b
20:               jal          s6, 10b
21:               jal          gp, 9b
22:               jal          t1, 0b
23:               jal          sp, 16b
24:               jal          ra, 17b
25:               jal          t6, 8b
26:               xor          t1, a2, s8
sub_2_11:         jal          a3, 7f
0:                jal          ra, 9f
1:                jal          t1, 6f
2:                jal          t1, 5f
3:                jal          s0, 8f
4:                jal          t1, 2b
5:                jal          ra, 10f
6:                jal          ra, 0b
7:                jal          ra, 3b
8:                jal          ra, 1b
9:                jal          ra, 4b
10:               xor          ra, s6, a6
sub_2_10:         jal          a3, 6f
0:                jal          ra, 7f
1:                jal          t1, 9f
2:                jal          ra, 11f
3:                jal          s3, 4f
4:                jal          ra, 8f
5:                jal          ra, 1b
6:                jal          t1, 10f
7:                jal          ra, 5b
8:                jal          ra, 0b
9:                jal          t6, 12f
10:               jal          ra, 2b
11:               jal          ra, 3b
12:               ori          t6, a5, -2001
sub_2_17:         jal          a3, 6f
0:                jal          sp, 10f
1:                jal          ra, 0b
2:                jal          ra, 4f
3:                jal          ra, 1b
4:                jal          t1, 13f
5:                jal          ra, 8f
6:                jal          t1, 7f
7:                jal          ra, 3b
8:                jal          ra, 2b
9:                jal          a3, 12f
10:               jal          t1, 11f
11:               jal          t0, 9b
12:               jal          ra, 5b
13:               or           a7, a0, zero
sub_2_9:          jal          a3, 13f
0:                jal          t3, 5f
1:                jal          t3, 25f
2:                jal          a0, 7f
3:                jal          ra, 15f
4:                jal          ra, 18f
5:                jal          ra, 23f
6:                jal          ra, 12f
7:                jal          ra, 0b
8:                jal          ra, 21f
9:                jal          t1, 24f
10:               jal          t0, 4b
11:               jal          t1, 2b
12:               jal          t1, 20f
13:               jal          t3, 3b
14:               jal          s7, 10b
15:               jal          ra, 8b
16:               jal          ra, 22f
17:               jal          ra, 19f
18:               jal          ra, 6b
19:               jal          a5, 9b
20:               jal          ra, 17b
21:               jal          t4, 11b
22:               jal          ra, 26f
23:               jal          sp, 1b
24:               jal          gp, 27f
25:               jal          t0, 16b
26:               jal          ra, 14b
27:               xori         a6, a4, -646
sub_2_26:         jal          a3, 4f
0:                jal          s10, 5f
1:                jal          t3, 12f
2:                jal          t5, 1b
3:                jal          ra, 7f
4:                jal          t1, 6f
5:                jal          ra, 11f
6:                jal          t1, 8f
7:                jal          ra, 2b
8:                jal          ra, 10f
9:                jal          a1, 0b
10:               jal          t1, 9b
11:               jal          ra, 3b
12:               sltiu        s6, gp, -1636
sub_2_20:         jal          a3, 8f
0:                jal          gp, 2f
1:                jal          ra, 13f
2:                jal          t1, 9f
3:                jal          ra, 12f
4:                jal          ra, 1b
5:                jal          a1, 4b
6:                jal          ra, 3b
7:                jal          t0, 0b
8:                jal          t4, 6b
9:                jal          ra, 10f
10:               jal          t1, 11f
11:               jal          t0, 5b
12:               jal          a2, 7b
13:               and          ra, a2, t5
sub_2_18:         jal          a3, 16f
0:                jal          t4, 5f
1:                jal          a6, 7f
2:                jal          ra, 19f
3:                jal          ra, 2b
4:                jal          a3, 17f
5:                jal          a3, 23f
6:                jal          t1, 24f
7:                jal          ra, 21f
8:                jal          ra, 3b
9:                jal          s5, 12f
10:               jal          t1, 26f
11:               jal          ra, 25f
12:               jal          t1, 20f
13:               jal          ra, 11b
14:               jal          ra, 10b
15:               jal          t1, 18f
16:               jal          ra, 13b
17:               jal          t1, 6b
18:               jal          s10, 9b
19:               jal          ra, 14b
20:               jal          ra, 0b
21:               jal          t0, 22f
22:               jal          ra, 8b
23:               jal          ra, 1b
24:               jal          ra, 15b
25:               jal          ra, 4b
26:               sltu         a2, s4, t2
sub_2_1:          jal          a3, 9f
0:                jal          t0, 6f
1:                jal          t1, 20f
2:                jal          ra, 25f
3:                jal          t0, 17f
4:                jal          t4, 18f
5:                jal          gp, 1b
6:                jal          t1, 5b
7:                jal          ra, 4b
8:                jal          ra, 10f
9:                jal          gp, 14f
10:               jal          ra, 28f
11:               jal          ra, 27f
12:               jal          ra, 16f
13:               jal          t4, 3b
14:               jal          ra, 11b
15:               jal          ra, 21f
16:               jal          t1, 19f
17:               jal          ra, 23f
18:               jal          sp, 13b
19:               jal          ra, 26f
20:               jal          gp, 2b
21:               jal          t1, 8b
22:               jal          t1, 24f
23:               jal          ra, 22b
24:               jal          t1, 0b
25:               jal          ra, 12b
26:               jal          t1, 15b
27:               jal          ra, 7b
28:               srli         a7, a1, 19
sub_2_14:         jal          a3, 6f
0:                jal          ra, 5f
1:                jal          a2, 13f
2:                jal          ra, 9f
3:                jal          t1, 16f
4:                jal          ra, 11f
5:                jal          s9, 15f
6:                jal          ra, 2b
7:                jal          t1, 3b
8:                jal          ra, 10f
9:                jal          ra, 8b
10:               jal          s0, 7b
11:               jal          s5, 0b
12:               jal          ra, 1b
13:               jal          t1, 14f
14:               jal          t1, 17f
15:               jal          ra, 12b
16:               jal          t1, 4b
17:               sub          s1, gp, a1
sub_2_19:         jal          a3, 1f
0:                jal          t1, 9f
1:                jal          tp, 27f
2:                jal          ra, 15f
3:                jal          ra, 16f
4:                jal          ra, 28f
5:                jal          t1, 8f
6:                jal          ra, 23f
7:                jal          gp, 26f
8:                jal          ra, 30f
9:                jal          tp, 18f
10:               jal          a6, 4b
11:               jal          ra, 7b
12:               jal          ra, 2b
13:               jal          a2, 10b
14:               jal          s0, 19f
15:               jal          ra, 13b
16:               jal          t1, 25f
17:               jal          ra, 20f
18:               jal          t1, 22f
19:               jal          gp, 5b
20:               jal          ra, 3b
21:               jal          ra, 6b
22:               jal          ra, 11b
23:               jal          t1, 24f
24:               jal          tp, 12b
25:               jal          s3, 21b
26:               jal          a0, 17b
27:               jal          t6, 29f
28:               jal          ra, 14b
29:               jal          ra, 0b
30:               slti         a0, t0, -212
sub_2_6:          jal          a3, 19f
0:                jal          ra, 13f
1:                jal          t1, 2f
2:                jal          ra, 7f
3:                jal          ra, 17f
4:                jal          sp, 8f
5:                jal          ra, 10f
6:                jal          t1, 1b
7:                jal          s7, 16f
8:                jal          ra, 3b
9:                jal          ra, 12f
10:               jal          ra, 9b
11:               jal          t1, 18f
12:               jal          t1, 20f
13:               jal          gp, 14f
14:               jal          t1, 4b
15:               jal          ra, 0b
16:               jal          ra, 21f
17:               jal          t1, 6b
18:               jal          a1, 15b
19:               jal          ra, 5b
20:               jal          a2, 11b
21:               add          a5, s7, a4
sub_2_22:         jal          a3, 19f
0:                jal          ra, 29f
1:                jal          sp, 17f
2:                jal          t1, 16f
3:                jal          gp, 24f
4:                jal          ra, 1b
5:                jal          ra, 23f
6:                jal          a6, 8f
7:                jal          tp, 2b
8:                jal          ra, 3b
9:                jal          ra, 22f
10:               jal          s10, 26f
11:               jal          ra, 9b
12:               jal          a5, 18f
13:               jal          ra, 0b
14:               jal          ra, 12b
15:               jal          t1, 14b
16:               jal          ra, 6b
17:               jal          a3, 15b
18:               jal          ra, 21f
19:               jal          t1, 20f
20:               jal          ra, 4b
21:               jal          ra, 28f
22:               jal          t6, 5b
23:               jal          ra, 27f
24:               jal          ra, 13b
25:               jal          t1, 11b
26:               jal          ra, 7b
27:               jal          ra, 10b
28:               jal          ra, 25b
29:               srl          s6, s8, t1
sub_2_23:         jal          a3, 0f
0:                jal          t1, 7f
1:                jal          s10, 8f
2:                jal          ra, 1b
3:                jal          t1, 6f
4:                jal          ra, 17f
5:                jal          ra, 15f
6:                jal          t1, 22f
7:                jal          t1, 11f
8:                jal          t1, 10f
9:                jal          ra, 4b
10:               jal          a1, 21f
11:               jal          ra, 14f
12:               jal          ra, 25f
13:               jal          s1, 3b
14:               jal          a5, 20f
15:               jal          t1, 16f
16:               jal          ra, 13b
17:               jal          s7, 12b
18:               jal          t1, 9b
19:               jal          ra, 18b
20:               jal          t1, 5b
21:               jal          t1, 23f
22:               jal          ra, 24f
23:               jal          sp, 19b
24:               jal          t1, 2b
25:               or           ra, a6, s7
sub_2_25:         jal          a3, 9f
0:                jal          a6, 22f
1:                jal          t0, 13f
2:                jal          ra, 17f
3:                jal          ra, 0b
4:                jal          a5, 7f
5:                jal          ra, 20f
6:                jal          ra, 21f
7:                jal          ra, 11f
8:                jal          s3, 19f
9:                jal          ra, 4b
10:               jal          gp, 1b
11:               jal          ra, 14f
12:               jal          ra, 10b
13:               jal          s6, 16f
14:               jal          sp, 18f
15:               jal          ra, 3b
16:               jal          t1, 15b
17:               jal          t1, 12b
18:               jal          a7, 6b
19:               jal          a7, 2b
20:               jal          ra, 8b
21:               jal          t1, 5b
22:               slli         a3, t6, 21
sub_2_13:         jal          a3, 7f
0:                jal          t1, 11f
1:                jal          ra, 3f
2:                jal          ra, 12f
3:                jal          s11, 0b
4:                jal          ra, 9f
5:                jal          t1, 2b
6:                jal          ra, 5b
7:                jal          ra, 8f
8:                jal          t1, 10f
9:                jal          t0, 1b
10:               jal          tp, 4b
11:               jal          ra, 6b
12:               sltu         t1, a3, a0
sub_2_3:          jal          a3, 8f
0:                jal          a0, 17f
1:                jal          ra, 9f
2:                jal          gp, 5f
3:                jal          t1, 27f
4:                jal          s1, 11f
5:                jal          gp, 10f
6:                jal          a4, 7f
7:                jal          ra, 24f
8:                jal          ra, 25f
9:                jal          ra, 12f
10:               jal          ra, 20f
11:               jal          tp, 28f
12:               jal          ra, 14f
13:               jal          ra, 6b
14:               jal          ra, 13b
15:               jal          ra, 29f
16:               jal          t1, 1b
17:               jal          ra, 4b
18:               jal          t0, 3b
19:               jal          t1, 15b
20:               jal          t1, 18b
21:               jal          s6, 16b
22:               jal          ra, 19b
23:               jal          ra, 0b
24:               jal          ra, 22b
25:               jal          ra, 26f
26:               jal          s7, 2b
27:               jal          ra, 23b
28:               jal          t1, 21b
29:               addi         t0, s1, 2027
sub_2_4:          jal          a3, 5f
0:                jal          ra, 3f
1:                jal          sp, 11f
2:                jal          ra, 9f
3:                jal          t1, 6f
4:                jal          s10, 1b
5:                jal          ra, 12f
6:                jal          t1, 13f
7:                jal          gp, 8f
8:                jal          s7, 2b
9:                jal          t1, 4b
10:               jal          ra, 7b
11:               jal          ra, 0b
12:               jal          ra, 10b
13:               lui          gp, 996196
sub_2_2:          jal          a3, 17f
0:                jal          gp, 18f
1:                jal          gp, 8f
2:                jal          ra, 0b
3:                jal          a0, 11f
4:                jal          a2, 12f
5:                jal          t1, 10f
6:                jal          s1, 19f
7:                jal          ra, 1b
8:                jal          a2, 20f
9:                jal          ra, 14f
10:               jal          ra, 2b
11:               jal          t1, 16f
12:               jal          t1, 13f
13:               jal          ra, 15f
14:               jal          s1, 7b
15:               jal          t1, 3b
16:               jal          s7, 9b
17:               jal          ra, 5b
18:               jal          ra, 6b
19:               jal          ra, 4b
20:               addi         a3, a7, -753
                  sll          t0, t3, s8
                  auipc        t6, 689012
                  ori          sp, a3, 991
                  bge          t2, a5, 5f
                  xori         a2, s1, 415
5:                ori          t6, s10, 777
                  lui          sp, 672382
                  auipc        sp, 310986
                  sltu         a0, ra, s11
                  nop
                  auipc        s7, 345682
                  bne          t5, s5, 19f
                  sub          t1, t1, gp
                  sub          a3, s4, t1
                  xori         s5, ra, 407
                  add          t3, ra, tp
                  bltu         s7, a4, 34f
                  and          s3, zero, s7
                  slt          t4, s10, zero
19:               and          t6, zero, s5
                  bltu         a6, sp, 31f
                  srai         a1, s7, 30
                  nop
                  sub          tp, t6, zero
                  blt          a3, t6, 29f
                  bge          s11, s6, 39f
                  slti         sp, s11, -1712
                  slli         sp, s10, 24
                  beq          tp, a4, 39f
29:               srl          tp, s0, a1
                  and          t2, a6, zero
31:               slt          gp, s1, tp
                  sll          s7, t4, s2
                  or           t2, s8, s9
34:               nop
                  andi         a0, a4, 1307
                  bgeu         s9, t2, 46f
                  sub          sp, s1, tp
                  srli         zero, a1, 28
39:               srli         t0, zero, 24
                  xori         a4, s3, 651
                  ori          s10, s0, 1953
                  sltiu        a5, a5, 1233
                  blt          a0, a6, 62f
                  slli         s11, s7, 5
                  or           t5, s7, s7
46:               xori         a3, sp, 152
                  ori          a2, t1, 965
                  bne          s0, s0, 53f
                  beq          s6, tp, 50f
50:               slt          a6, s5, s11
                  srli         t5, sp, 29
                  slli         s5, s10, 17
53:               srl          a5, sp, a5
                  bltu         a5, s3, 73f
                  bge          t0, gp, 59f
                  xori         t3, s5, 292
                  bgeu         t4, t3, 65f
                  bgeu         a2, tp, 67f
59:               or           s10, s0, s5
                  slti         s7, s10, 1465
                  xor          ra, s8, t6
62:               lui          ra, 894104
                  bge          a5, a5, 81f
                  srli         t2, s4, 0
65:               auipc        tp, 447849
                  bltu         s11, a0, 67f
67:               bge          s9, a2, 87f
                  srai         s0, zero, 15
                  auipc        a2, 463448
                  bge          a1, t5, 77f
                  bltu         a7, t4, 84f
                  beq          s5, s11, 92f
73:               bltu         a4, s2, 93f
                  srl          s5, t0, t4
                  bltu         s6, a5, 85f
                  xor          a7, s1, a1
77:               xori         tp, t1, -370
                  srai         s5, s3, 23
                  add          t5, a2, a1
                  lui          s10, 270944
81:               bne          zero, s4, 86f
                  sll          s1, a0, t4
                  or           a6, a1, s10
84:               bltu         a4, a0, 98f
85:               slli         s1, t6, 11
86:               beq          a7, t3, 88f
87:               srli         a3, s6, 11
88:               slt          t5, a4, s11
                  ori          a1, s6, -224
                  and          s5, s10, a5
                  andi         a3, s8, 92
92:               bge          a4, s8, 100f
93:               xor          t5, t6, s2
                  slti         t3, a5, 1220
                  blt          s7, a3, 112f
                  xori         gp, s10, 607
                  srai         tp, s6, 24
98:               srai         t2, s5, 24
                  nop
100:              slti         sp, s2, 1381
                  xor          t6, gp, s3
                  lui          a7, 908120
                  bgeu         a1, s6, 118f
                  srli         s6, s8, 12
                  srai         s10, sp, 0
                  sll          a6, s3, zero
                  beq          s3, a7, 119f
                  bge          a3, s1, 127f
                  srl          s9, a0, a0
                  bne          t0, t3, 128f
                  sltu         a4, a1, s0
112:              nop
                  xori         a2, s9, 1928
                  blt          t0, s7, 123f
                  srli         gp, s5, 6
                  slli         s5, a7, 1
                  sub          a0, s2, s3
118:              bne          zero, sp, 129f
119:              sra          a2, t3, s3
                  srl          zero, a1, a3
                  nop
                  bge          s5, s9, 130f
123:              srli         a1, s4, 1
                  bge          t2, sp, 126f
                  or           s1, sp, a6
126:              bge          s8, ra, 137f
127:              sltu         t2, ra, a2
128:              blt          a6, a1, 147f
129:              bltu         ra, a7, 139f
130:              or           a4, s2, s9
                  sltu         ra, tp, s5
                  srai         s5, t3, 10
                  or           t2, a0, tp
                  srai         s11, s8, 27
                  beq          tp, s2, 139f
                  xori         t1, a0, -1036
137:              auipc        s10, 801136
                  beq          a2, gp, 146f
139:              bge          a4, s3, 144f
                  ori          s11, ra, -1140
                  sll          a2, a1, t2
                  slli         zero, tp, 14
                  sltu         a1, a0, a3
144:              sra          a4, a5, a2
                  ori          s0, gp, 1271
146:              blt          s2, t1, 148f
147:              addi         a7, s3, -514
148:              bgeu         t5, a6, 158f
                  andi         a7, t6, 1322
                  and          t4, a7, sp
                  nop
                  auipc        tp, 576160
                  sll          a5, a4, a4
                  slti         s9, t0, -977
                  sltu         s11, t1, s5
                  bne          s1, a5, 168f
                  srli         sp, s5, 13
158:              add          ra, s10, s0
                  auipc        t0, 903890
                  nop
                  xor          sp, tp, a4
                  andi         s0, a0, -1954
                  blt          zero, s6, 176f
                  sltiu        a7, s11, 408
                  or           ra, t2, s1
                  and          a1, t4, s4
                  add          s10, a2, a0
168:              or           t6, t1, s10
                  srli         t5, gp, 15
                  bge          t6, a3, 187f
                  xori         t1, a7, 1874
                  xori         tp, a3, 1817
                  addi         a4, zero, 1575
                  ori          t5, a4, -966
                  la           a2, sub_3
                  ori          a0, a4, -748
                  addi         a2, a2, 312
                  auipc        t4, 321093
                  nop
                  andi         t1, a5, -1645
                  sub          tp, ra, a7
                  xor          a6, s4, t3
                  srl          a5, t3, t5
                  slt          t3, s7, zero
                  sub          s11, t6, t2
sub_2_j5:         jalr         a3, a2, -311 #jump sub_2 -> sub_3
                  srai         a1, a0, 0
                  srai         zero, s7, 4
176:              add          a6, a1, a7
                  bne          a4, s1, 178f
178:              sll          zero, t5, t1
                  xor          s0, a0, s3
                  or           s3, s1, a2
                  bge          tp, t4, 195f
                  xor          a5, zero, zero
                  xori         gp, a2, 346
                  bge          s6, zero, 204f
                  ori          s1, t4, 564
                  add          ra, a2, s1
187:              blt          a5, a7, 194f
                  bltu         s5, a2, 206f
                  srl          t5, a5, s4
                  beq          t6, s4, 204f
                  sltiu        a0, a6, 905
                  lui          tp, 256004
                  or           s11, t0, s5
194:              slt          t1, sp, s5
195:              and          s1, a5, s4
                  and          gp, gp, a5
                  bge          zero, s4, 202f
                  lui          t2, 956488
                  slt          a3, t4, s9
                  sub          t5, sp, tp
                  auipc        a2, 733608
202:              bge          tp, ra, 222f
                  and          s0, sp, s7
204:              xor          a4, zero, a5
                  xor          t5, s1, s4
206:              slti         t3, t2, 584
                  bltu         t5, t6, 222f
                  ori          s6, s8, 80
                  andi         sp, a1, 834
                  bgeu         a3, t4, 211f
211:              srli         s11, s7, 30
                  blt          s8, tp, 217f
                  srl          s9, t5, t1
                  ori          s6, a1, 410
                  add          s3, a3, a2
                  bgeu         a7, a4, 224f
217:              beq          t2, a0, 237f
                  blt          s5, s7, 222f
                  sra          t4, a6, a5
                  blt          s9, t0, 240f
                  blt          a4, a1, 235f
222:              bgeu         s10, s8, 232f
                  bltu         t3, sp, 241f
224:              add          s3, t5, s4
                  slt          t0, t3, s5
                  blt          s3, s9, 234f
                  sra          a1, t2, s3
                  auipc        a2, 827960
                  slli         a0, a0, 27
                  xor          t4, a0, zero
                  xor          zero, tp, sp
232:              blt          a0, t2, 239f
                  srl          a7, ra, a1
234:              slt          t1, a0, sp
235:              slli         s9, t4, 10
                  addi         s7, t0, -733
237:              xor          a3, s4, a7
                  auipc        a7, 866940
239:              bne          t1, t3, 244f
240:              andi         t4, tp, 1086
241:              sltu         a6, a7, zero
                  srai         a0, a0, 6
                  bltu         a5, a5, 251f
244:              xor          t4, t6, s9
                  sltu         t2, a3, zero
                  nop
                  srl          tp, s9, t6
                  and          zero, t3, a6
                  andi         a6, s4, 1343
                  srli         tp, a5, 28
251:              and          a1, s8, tp
                  lui          t6, 1026336
                  srl          s6, t4, s7
                  xor          s0, a4, sp
                  srai         a0, s1, 26
                  slli         t0, zero, 19
                  sll          t0, t2, a7
                  xori         t4, sp, 1998
                  sltiu        t1, a1, 365
                  bltu         a7, t5, 268f
                  blt          a3, a3, 276f
                  srl          t4, t3, ra
                  bne          s4, zero, 281f
                  xori         a3, s7, -917
                  sltu         s11, t6, a3
                  add          s1, t0, zero
                  xor          a0, s9, zero
268:              slli         s7, t2, 4
                  xori         a4, a4, 1436
                  bge          a0, s4, 272f
                  beq          tp, s4, 284f
272:              addi         s1, zero, 536
                  bne          a6, s6, 274f
274:              sra          t0, s1, s0
                  xor          a6, s5, s3
276:              and          zero, ra, a4
                  srl          a2, s5, s0
                  ori          t6, s11, -692
                  nop
                  slt          a0, t5, s0
281:              sltu         s9, s5, t2
                  beq          t3, t4, 293f
                  sltiu        s1, a0, -614
284:              sub          a7, s8, s2
                  lui          a4, 914687
                  bltu         sp, s6, 305f
                  srli         tp, s9, 5
                  blt          t3, s8, 300f
                  slt          sp, s7, s10
sub_2_7:          jal          a3, 3f
0:                jal          ra, 11f
1:                jal          ra, 7f
2:                jal          ra, 6f
3:                jal          s10, 15f
4:                jal          ra, 8f
5:                jal          t1, 9f
6:                jal          t2, 0b
7:                jal          t1, 13f
8:                jal          ra, 1b
9:                jal          ra, 10f
10:               jal          t1, 12f
11:               jal          s7, 14f
12:               jal          t4, 16f
13:               jal          t1, 5b
14:               jal          t1, 4b
15:               jal          gp, 2b
16:               nop
                  srl          zero, s7, tp
                  bltu         a1, t1, 293f
                  auipc        s9, 294115
293:              srli         s7, a7, 5
                  ori          s7, s3, -763
                  slti         s6, s2, 1406
                  sub          gp, tp, s5
                  bltu         t5, s10, 307f
                  bgeu         s9, s0, 307f
                  auipc        s10, 194248
300:              add          t1, sp, s2
                  ori          zero, s11, 976
                  bge          a4, a2, 307f
                  lui          a1, 397019
                  lui          s3, 982335
305:              andi         a7, t1, -1286
                  add          s9, t3, a2
307:              sltu         s0, a1, sp
                  sltu         t2, sp, s8
sub_2_5:          jal          a3, 0f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          t1, 7f
4:                jal          a3, 10f
5:                jal          s3, 4b
6:                jal          t1, 8f
7:                jal          ra, 9f
8:                jal          ra, 1b
9:                jal          ra, 2b
10:               sub          a0, s4, gp
                  srl          t6, sp, s7
                  slli         s9, s5, 18
                  xor          s0, s0, a6
                  beq          t0, s11, 313f
313:              sltiu        s11, s0, -435
                  beq          t2, s9, 319f
                  sub          s9, s4, tp
                  and          s7, s1, s11
                  bge          a4, s0, 337f
                  srai         s0, s9, 11
319:              lui          s11, 210699
                  nop
                  blt          t6, t6, 338f
                  blt          s4, s10, 342f
                  srl          a1, t0, s9
                  slli         a5, s8, 4
                  bge          t0, a7, 339f
                  lui          gp, 1047385
                  slt          s1, zero, t3
                  or           s0, gp, a0
                  beq          t5, t5, 340f
                  or           s7, t0, t5
                  bge          a1, a0, 350f
                  blt          s8, t1, 352f
                  nop
                  addi         s0, s6, 494
                  srai         a6, tp, 30
                  sltu         t2, t2, a6
337:              add          s1, s9, s7
338:              xori         ra, s0, 1412
339:              or           a1, s6, s2
340:              add          a6, a2, t2
                  slti         a5, a7, -404
342:              slli         a2, s7, 29
                  slt          s6, s5, s5
                  add          s9, s10, s6
                  slt          s0, s2, s6
                  bne          s4, s9, 363f
                  bne          t2, a1, 349f
                  bne          s11, s3, 359f
349:              bne          s10, t5, 362f
350:              auipc        a1, 940197
                  xor          a4, s3, tp
352:              xor          s10, gp, ra
                  bne          t6, tp, 371f
                  bltu         a7, s10, 356f
                  sub          s6, a3, ra
356:              srai         tp, ra, 28
                  or           a4, a7, s9
                  xori         t5, s0, 1756
359:              add          a6, s0, t6
                  srl          a2, gp, a6
                  bne          s9, a3, 370f
362:              srli         a3, sp, 23
363:              nop
                  lui          s5, 8992
                  auipc        s9, 527506
                  srl          s7, s6, t2
                  andi         s7, t4, 1349
                  blt          s3, t2, 378f
                  andi         a4, s4, -1137
370:              slti         s0, a5, 1726
371:              add          t6, ra, a5
                  nop
                  slti         ra, s8, -1410
                  xor          a1, a3, ra
                  blt          a3, a0, 393f
                  ori          a4, t6, 310
                  ori          ra, s11, -1049
378:              slli         t0, sp, 16
                  sltu         s11, t4, zero
                  addi         sp, s9, 82
                  slli         gp, t0, 30
                  add          s10, s7, s1
                  bgeu         gp, a6, 402f
                  beq          s0, s0, 392f
                  add          s11, s7, s4
                  xori         ra, s7, 644
                  and          s5, t5, t1
                  sltu         s11, t3, t2
                  andi         s3, s3, 2044
                  sll          s0, s4, s10
                  andi         t6, a4, 1961
392:              auipc        s7, 617583
393:              sub          gp, zero, sp
                  srl          t1, s2, s10
                  sltiu        ra, s7, 853
                  srli         t1, a2, 6
                  lui          a2, 287319
                  and          a5, t3, t3
                  srli         t1, t6, 7
                  srl          s6, s11, a4
                  sltu         a7, s6, s8
402:              sra          a0, tp, s0
                  addi         t5, s11, 787
                  bge          t6, tp, 412f
                  add          s6, a3, s3
                  slti         s11, a2, -1703
                  slti         t5, s8, -345
                  bgeu         a3, t3, 413f
                  sltiu        a4, s5, -724
                  slt          gp, s8, tp
                  srai         s9, s10, 14
412:              xor          a1, a5, s0
413:              slli         sp, s10, 10
                  sra          tp, s8, t3
                  ori          a5, s5, -1528
                  and          a6, s3, a4
                  blt          a2, s0, 428f
                  srli         gp, a1, 11
                  blt          s1, a7, 434f
                  srl          sp, t4, s11
                  auipc        s1, 625723
                  bltu         s11, ra, 426f
                  add          a3, s8, s5
                  sltiu        a1, t3, -281
                  srl          s7, t2, s7
426:              bltu         t4, s5, 440f
                  sltu         t5, s10, a0
428:              lui          a6, 1005325
                  add          s11, s0, t0
                  slti         s3, a5, 1376
                  bgeu         a5, s1, 451f
                  and          a2, t4, a6
                  slli         s10, s7, 24
434:              slli         ra, s7, 20
                  ori          a7, s9, 637
                  bge          a2, sp, 456f
                  sltu         a6, s3, s4
                  nop
                  andi         s7, s6, 1475
440:              auipc        a3, 777009
                  and          zero, a4, s1
                  sltu         a3, a2, s8
                  slti         a1, t5, 1702
                  or           zero, a2, a5
                  addi         a2, sp, 452
                  ori          s10, t1, 381
                  add          a5, tp, s0
                  bgeu         s9, a4, 453f
                  slti         s3, ra, -445
                  ori          s7, t6, -215
451:              sub          t3, sp, gp
                  sra          s5, a4, a7
453:              lui          a7, 520984
                  sltu         s11, zero, t2
                  bne          s2, t4, 462f
456:              or           s3, sp, s3
                  nop
                  sll          s10, gp, s11
                  srai         s11, a0, 31
                  sltu         t5, t2, a7
                  sra          a1, ra, t0
462:              or           s5, t2, t3
                  sra          a2, t3, s10
                  slli         t5, s1, 16
                  srli         tp, gp, 7
                  andi         sp, t4, 889
                  xor          tp, ra, t4
                  bne          s11, zero, 487f
                  and          s5, a0, a0
                  sltiu        t2, s9, -76
                  auipc        zero, 241338
                  xor          t1, a5, a6
                  bne          a4, a1, 483f
                  bne          s1, s2, 479f
                  sltiu        s6, s6, -1839
                  sltu         s6, a0, a0
                  add          s5, s4, t1
                  sltiu        a0, a0, -1217
479:              lui          tp, 660905
                  nop
                  srli         a3, a6, 3
                  addi         a7, t4, 1770
483:              sll          s9, s10, t2
                  ori          a4, s8, 1345
                  lui          tp, 547698
                  srli         tp, a4, 25
487:              slt          t6, s4, s3
                  bne          s11, zero, 496f
                  bltu         t3, s8, 490f
490:              bne          a4, a7, 502f
                  xori         s3, a6, -1159
                  sltiu        s9, s2, -1794
                  or           t0, t5, s2
                  auipc        s0, 16695
                  sltu         s1, s10, a6
496:              sltu         zero, t0, s4
                  addi         s5, s5, -34
                  bgeu         sp, ra, 499f
499:              and          s5, s0, s1
                  srli         gp, t1, 4
                  slli         a4, t2, 22
502:              add          a0, s7, a4
                  beq          a1, s5, 517f
                  sltu         a1, s5, t0
                  xori         sp, s2, -873
                  xor          s5, a6, t2
                  or           s9, a0, a7
                  bltu         a6, a6, 528f
                  sub          t1, s5, s7
                  bne          ra, s11, 512f
                  bge          ra, tp, 531f
512:              srl          s10, a6, t1
                  blt          s8, t1, 526f
                  nop
                  slli         t2, a2, 4
                  lui          s10, 704824
517:              addi         tp, t5, -926
                  sltiu        a7, s7, 939
                  bgeu         s7, t1, 537f
                  and          s9, tp, a7
                  xor          s1, a2, a1
                  andi         a4, gp, -1263
                  auipc        t3, 1041809
                  andi         gp, ra, 1948
                  bne          s6, s4, 536f
526:              sra          t0, sp, a4
                  srl          t4, s3, gp
528:              sub          s5, sp, sp
                  bne          sp, t2, 534f
                  or           t0, t3, s5
531:              bge          t4, s3, 542f
                  sltiu        s7, t2, -270
                  slli         t1, t5, 18
534:              bltu         s3, s5, 541f
                  lui          a6, 652311
536:              beq          s11, a1, 546f
537:              bltu         s3, a7, 545f
                  or           a2, sp, s1
                  lui          t2, 1023137
                  sub          a4, a6, a0
541:              srli         tp, t2, 11
542:              bne          s5, t5, 554f
                  srai         sp, s9, 12
                  or           s9, a4, a1
545:              srai         ra, t6, 0
546:              beq          zero, t1, 565f
                  beq          a6, a5, 561f
                  nop
                  nop
                  sll          s5, a5, a4
                  ori          t2, tp, -225
                  slt          ra, s8, t2
                  srai         a5, t0, 28
554:              sub          zero, a2, a0
                  sltiu        s1, a6, -817
                  blt          tp, t3, 564f
                  srli         a0, a0, 13
                  xori         s9, s3, -1911
                  xori         t0, t2, -1365
                  sltu         s1, a4, s11
561:              and          t1, t0, s11
                  lui          s5, 866968
                  add          a6, zero, s8
564:              or           a4, a2, s8
565:              bgeu         a1, t1, 579f
                  srl          a7, gp, s10
                  andi         a1, s3, 1572
                  addi         t0, t4, 1723
                  slt          s1, s7, t1
                  xori         t4, s11, 861
                  beq          t0, zero, 581f
                  nop
                  sltiu        t4, s8, -1665
                  slt          a2, a0, t0
                  slt          t6, s9, t5
                  bge          s5, t3, 584f
                  ori          s6, s0, -1086
                  xor          s5, s7, a2
579:              lui          t5, 172169
                  nop
581:              addi         t2, a6, -1007
                  addi         s11, s2, -1746
                  srli         t1, tp, 19
584:              sltiu        s5, s9, 614
                  slli         s7, s5, 10
                  ori          s5, gp, 1325
                  xori         t1, t6, -364
                  and          s11, t3, s2
                  ori          s10, sp, -167
                  srli         gp, t6, 22
                  sub          s5, s5, s8
                  blt          sp, s4, 601f
                  sub          t4, s3, s2
                  or           t5, sp, t1
                  bltu         s9, s0, 599f
                  add          t4, sp, t0
                  or           s0, s6, a0
                  bge          a4, s2, 613f
599:              srli         t6, a7, 20
                  auipc        t3, 510228
601:              beq          sp, a5, 602f
602:              and          s10, t2, t1
                  bltu         s0, a5, 604f
604:              xori         s1, a0, 92
                  lui          t5, 55224
                  srl          gp, s0, zero
                  xori         s7, s9, -467
                  addi         zero, a1, -1489
                  slt          a5, a1, t2
                  bgeu         s10, sp, 615f
                  sub          t5, t2, s1
                  sltiu        s1, s6, -1241
613:              srl          s5, a2, a0
                  or           a7, s10, s0
615:              beq          s7, s1, 620f
                  sra          a4, t0, s9
                  bgeu         ra, a1, 635f
                  auipc        t4, 41144
                  beq          a1, s9, 639f
sub_2_24:         jal          a3, 11f
0:                jal          ra, 24f
1:                jal          s7, 15f
2:                jal          ra, 22f
3:                jal          ra, 5f
4:                jal          ra, 14f
5:                jal          t1, 17f
6:                jal          ra, 26f
7:                jal          ra, 28f
8:                jal          ra, 3b
9:                jal          ra, 20f
10:               jal          ra, 4b
11:               jal          t1, 18f
12:               jal          s6, 27f
13:               jal          ra, 7b
14:               jal          ra, 16f
15:               jal          t1, 23f
16:               jal          ra, 29f
17:               jal          ra, 10b
18:               jal          t1, 6b
19:               jal          ra, 8b
20:               jal          t1, 21f
21:               jal          ra, 12b
22:               jal          ra, 30f
23:               jal          ra, 0b
24:               jal          ra, 9b
25:               jal          tp, 19b
26:               jal          ra, 13b
27:               jal          ra, 2b
28:               jal          a1, 25b
29:               jal          ra, 1b
30:               slli         tp, tp, 24
620:              sll          t0, sp, t5
                  bltu         sp, t3, 623f
                  beq          s5, t5, 639f
623:              slt          s5, sp, t3
                  slt          s1, s11, sp
                  sltiu        t1, a6, 1435
                  srl          t0, a2, s4
                  and          s10, s10, a2
                  sra          s6, a0, a7
                  sltu         tp, a7, zero
                  slt          s5, s1, a1
                  lui          t5, 449624
                  and          t0, t0, a5
                  sltu         ra, zero, a5
                  add          s5, s6, a3
635:              add          tp, gp, t5
                  xori         s9, zero, 623
                  sra          a5, ra, tp
                  slli         tp, s5, 4
639:              xori         s5, tp, 1944
                  bge          a2, t5, 659f
                  lui          a7, 814553
                  sltu         s1, s2, a3
                  beq          s11, s11, 654f
                  bltu         a3, s10, 658f
                  bne          s5, a4, 660f
                  bne          sp, t6, 666f
                  srl          a6, t0, t3
                  or           a0, a5, a3
                  andi         gp, sp, 2001
                  sub          a4, ra, a0
                  or           s6, a5, gp
                  slt          s10, t3, a0
                  srai         sp, tp, 19
654:              nop
                  slli         a5, a7, 6
                  bgeu         a7, s2, 674f
                  auipc        s1, 491502
658:              lui          t3, 763732
659:              xori         tp, a7, -1607
660:              xor          a3, s0, s6
                  nop
                  nop
                  xor          s1, s4, a1
                  andi         a0, t5, 1616
                  lui          t1, 579752
666:              sra          a2, t5, t3
                  sub          t1, t6, tp
                  xori         t4, a3, -121
                  beq          ra, s9, 688f
                  and          t2, t6, s9
                  auipc        a1, 15781
                  sltiu        t3, t1, -1294
                  srli         s1, a6, 16
674:              ori          s11, s6, 1347
                  addi         a4, s10, 507
                  beq          s0, s5, 677f
677:              bltu         tp, s10, 679f
                  sub          sp, s5, a2
679:              sll          s5, s1, s4
                  and          t2, t0, t3
                  srli         zero, a5, 2
                  sra          ra, a7, ra
                  or           t4, a7, t1
                  blt          s1, a3, 688f
                  sra          zero, a1, gp
                  or           t0, s8, ra
                  ori          sp, t6, 1777
688:              nop
                  blt          s5, s0, 694f
                  lui          a5, 52953
                  sltiu        s1, gp, 2019
                  bltu         s6, a2, 709f
                  bgeu         s5, zero, 713f
694:              bge          s10, a2, 712f
                  add          a3, s7, t3
                  nop
                  bge          t1, s1, 707f
                  lui          sp, 767994
                  lui          a0, 201975
                  xor          s7, a1, a4
                  xori         ra, s3, -39
                  sub          s1, a0, s3
                  addi         a7, s7, 466
                  and          s0, t2, a2
                  slti         a0, a6, 751
                  bltu         a7, t6, 711f
707:              sub          t1, t2, sp
                  slti         t5, s0, 243
709:              sltiu        a2, s4, 1289
                  nop
711:              sltiu        a3, a4, -465
712:              slt          s6, a4, s9
713:              slti         t4, s6, -518
                  slti         s1, zero, 721
                  nop
                  sltu         t0, s3, s4
                  slti         s5, a1, -1279
                  bltu         ra, s5, 730f
                  srai         s7, ra, 19
                  add          s5, ra, s6
                  blt          a3, s2, 741f
                  slli         a6, a1, 30
                  and          sp, t4, s10
                  xor          s3, s0, tp
                  auipc        s0, 666603
                  sub          a1, s10, s9
                  slt          s0, s6, a6
                  sltu         s1, zero, t4
                  or           t1, s4, t3
730:              sub          t4, s7, a4
                  slt          s6, ra, s4
                  beq          a0, t4, 751f
                  sub          zero, s0, gp
                  blt          a2, t6, 742f
                  srai         s11, t2, 30
                  srli         t6, a4, 25
                  add          t2, s8, s9
                  add          t2, t5, t6
                  slti         s7, t1, -85
                  bgeu         sp, t1, 741f
741:              and          ra, t1, zero
742:              beq          s7, t5, 751f
                  srai         t1, t3, 21
                  sltiu        a4, s7, 1468
                  beq          s5, sp, 752f
                  sra          ra, s0, a7
                  bltu         s0, s2, 749f
                  sll          t1, s11, a7
749:              slli         t6, s3, 5
                  bne          s1, s5, 763f
751:              slli         sp, zero, 19
752:              xor          s10, s1, t0
                  blt          s2, a4, 758f
                  auipc        s9, 273824
                  auipc        t0, 635985
                  ori          s9, ra, 1467
                  xori         s0, s5, -1509
758:              sra          s9, s7, tp
                  sll          a5, zero, a2
                  auipc        tp, 911343
                  or           s11, a2, s9
                  or           ra, t1, s9
763:              slt          zero, sp, a5
                  addi         t4, s11, 942
                  sltiu        s6, s1, 1795
                  slti         ra, t3, -1177
                  nop
                  xor          a0, a0, a2
                  sltu         t2, a0, zero
                  bgeu         a5, t2, 778f
                  sub          s1, tp, s0
                  sltiu        a6, a5, 123
                  sra          s0, s9, s7
                  bltu         gp, s11, 785f
                  beq          s10, t2, 785f
                  sltiu        s6, s2, -1264
                  bge          s11, a4, 785f
778:              srli         t4, gp, 14
                  sltiu        a4, t4, -1472
                  bltu         a5, a1, 794f
                  auipc        a0, 930440
                  bltu         a2, t3, 787f
                  lui          a3, 296132
                  xori         s0, s5, -1281
785:              sltiu        s0, t0, -323
                  sll          zero, ra, s10
787:              srai         s5, t0, 12
                  slt          a7, s5, s4
                  sra          s11, s3, t3
                  srli         t6, t5, 28
                  xori         s7, s2, -1283
                  sltu         sp, gp, s7
sub_2_0:          jal          a3, 1f
0:                jal          sp, 12f
1:                jal          ra, 2f
2:                jal          ra, 6f
3:                jal          ra, 7f
4:                jal          a1, 15f
5:                jal          t1, 17f
6:                jal          t1, 9f
7:                jal          ra, 20f
8:                jal          ra, 4b
9:                jal          a6, 5b
10:               jal          t1, 3b
11:               jal          sp, 22f
12:               jal          ra, 14f
13:               jal          ra, 11b
14:               jal          ra, 8b
15:               jal          ra, 16f
16:               jal          tp, 18f
17:               jal          t1, 10b
18:               jal          tp, 13b
19:               jal          a0, 0b
20:               jal          ra, 21f
21:               jal          a1, 19b
22:               slli         t6, s4, 28
                  slli         a6, s2, 18
794:              slti         s10, ra, -1277
                  slli         s0, s2, 10
                  slti         a0, s0, 327
                  sub          a5, a5, s7
                  sltu         s10, s0, t0
                  xori         a5, a3, 706
                  sll          s10, s9, s7
                  sub          sp, t5, sp
                  bne          a2, sp, 806f
                  sub          a3, a6, s11
                  sltu         a0, sp, t0
                  xori         a0, s10, -1898
806:              nop
                  srl          a3, s6, t3
                  and          s11, ra, s8
                  bltu         s5, zero, 824f
                  sltu         s7, s5, ra
                  slt          s7, t5, s4
                  srli         s10, s8, 25
                  srl          a3, s2, s4
                  andi         t6, ra, -410
                  and          sp, s4, a1
                  auipc        a2, 445933
                  sub          a0, t6, a2
                  xori         a0, s4, -894
                  or           a7, t3, s9
                  sll          a3, s11, gp
                  bge          s6, a5, 834f
                  sltu         t4, a1, ra
                  and          s0, a7, a6
824:              beq          s5, sp, 841f
                  bge          t0, s0, 830f
                  auipc        t1, 889368
                  sra          t0, s2, t1
                  sltu         t6, t3, t6
                  addi         a4, s7, -1906
830:              sra          s1, a4, s10
                  and          a4, a6, ra
                  slli         t2, s6, 2
                  slt          t1, zero, gp
834:              srli         t4, s1, 17
                  bgeu         a7, ra, 840f
                  auipc        a1, 1040709
                  xor          tp, a4, s8
                  xori         t3, t6, 972
                  sltu         s1, t4, a3
840:              xor          s9, a7, s5
841:              and          t1, s8, s9
                  ori          tp, a7, 44
                  bltu         a6, s6, 861f
                  sub          s6, s3, s9
                  bltu         a0, s9, 855f
                  sltiu        a2, s1, -965
                  sll          ra, a7, t4
                  sub          t5, s6, a6
                  ori          s11, t1, -525
                  andi         sp, t2, 1027
                  bge          s11, a7, 853f
                  bne          s5, a2, 853f
853:              lui          s9, 229651
                  sub          s5, s5, s9
855:              bgeu         zero, s11, 875f
                  sltu         s9, t4, gp
                  blt          t5, t2, 865f
                  auipc        t6, 426153
                  xori         s0, s2, 753
                  sltiu        s5, a1, 1633
861:              srli         s6, s3, 14
                  sltu         a6, tp, sp
                  srl          a4, t0, t5
                  bgeu         tp, a5, 865f
865:              slt          zero, s3, t5
                  lui          s1, 900490
                  beq          tp, s4, 878f
                  ori          s5, t1, -513
                  or           a1, s5, t5
                  ori          gp, t6, -1928
                  ori          sp, t4, 471
                  bltu         s9, s6, 886f
                  sra          a5, t1, sp
                  slli         gp, s9, 16
875:              sub          a1, tp, a7
                  slt          s5, a3, a2
                  ori          s7, s11, -92
878:              srai         s0, t4, 27
                  bltu         ra, s5, 889f
                  bgeu         s7, a4, 894f
                  auipc        a4, 112696
                  sltiu        gp, t2, 1874
                  srli         a7, s1, 26
                  srai         s11, s7, 22
                  ori          gp, a6, -156
886:              sll          a5, t5, zero
                  sra          s7, t2, t3
                  bge          a7, a4, 906f
889:              sub          ra, s2, a3
                  andi         t5, s9, -1627
                  sra          t0, gp, s3
                  slli         a6, gp, 2
                  add          a7, a4, gp
894:              ori          s3, ra, 1012
                  sltiu        t6, s5, 630
                  sltu         s6, tp, tp
                  slti         t1, a5, -1845
                  ori          s7, t2, 1800
                  slt          a0, s2, s0
                  sltu         a1, t1, s10
                  bne          s5, zero, 912f
                  andi         a3, t2, 210
                  slt          ra, gp, s10
                  bge          t4, a7, 923f
                  srli         a3, t0, 13
906:              bge          t3, s10, 918f
                  srl          s11, a3, s4
                  sltiu        s11, t4, -1542
                  xori         t3, s9, -255
                  xori         s10, zero, -1870
                  slti         t1, t1, -826
912:              andi         a4, a5, -1896
                  blt          a7, ra, 922f
                  bltu         s3, a7, 921f
                  slt          t4, gp, a6
                  srli         s6, s0, 21
                  sub          a2, a5, a1
918:              xor          gp, a0, a7
                  xor          zero, s3, s4
                  or           s9, a7, s4
921:              bltu         a2, s11, 941f
922:              xor          t2, a1, zero
923:              srl          t6, ra, t6
                  slti         ra, s4, -1360
                  sll          a5, a2, s0
                  auipc        t1, 778281
                  sub          a0, s9, s2
                  or           s7, a7, s2
                  blt          s3, s5, 949f
                  xor          ra, a1, s5
                  xor          a5, s11, ra
                  xor          t5, gp, sp
                  srai         a7, a7, 26
                  xori         t3, a4, 1250
                  xori         a7, a0, -1370
                  slti         a0, t0, -1746
                  slt          a4, s6, sp
                  slli         tp, zero, 6
                  sll          s1, a7, gp
                  xor          t4, a0, a4
941:              auipc        a5, 377929
                  bne          s5, s9, 950f
                  bge          s7, s8, 945f
                  sub          s9, t1, a4
945:              nop
                  ori          a5, s1, -890
                  bltu         t5, s8, 955f
                  bne          s5, a2, 967f
949:              addi         t1, a3, -192
950:              lui          s0, 85022
                  slli         s3, t5, 16
                  add          t4, a1, s6
                  andi         zero, s8, -767
                  slti         t6, s9, -787
955:              srai         a7, t2, 11
                  bge          zero, s6, 961f
                  srli         t3, a5, 0
                  ori          a3, tp, -843
                  or           t0, t2, gp
                  andi         tp, s1, -1678
961:              and          t3, s0, a4
                  blt          t0, a0, 964f
                  ori          zero, s9, 1219
964:              add          t2, a7, s2
                  lui          s1, 267789
                  bne          a5, s7, 980f
967:              add          a5, t0, gp
                  srli         s3, t3, 28
                  auipc        a1, 1048112
                  slt          s7, t5, s8
                  blt          sp, zero, 982f
                  nop
                  bne          a2, a6, 983f
                  sll          s6, t6, a0
                  xori         s1, a6, 587
                  ori          a3, ra, -8
                  sub          s9, a7, s1
                  sltiu        zero, s7, -1574
                  bge          a5, a7, 997f
980:              add          zero, a5, s1
                  sll          s3, zero, t2
982:              or           a4, t2, t1
983:              sltiu        t0, s5, 1633
                  ori          sp, t0, 870
                  bgeu         s2, s2, 1004f
                  auipc        zero, 925873
                  add          t1, s10, s10
                  sub          t3, s0, t5
                  and          t0, s5, a4
                  slli         s6, t4, 13
                  or           a6, s10, s10
                  add          t1, s5, s4
                  blt          t2, a1, 1001f
                  srli         s1, a6, 20
                  and          t2, s10, s1
                  sltu         ra, a0, t3
997:              ori          a3, t6, 402
                  sra          s9, s11, a2
                  blt          t2, t4, 1000f
1000:             beq          s10, tp, 1020f
1001:             blt          s8, a3, 1010f
                  blt          ra, a2, 1022f
                  bgeu         tp, t0, 1015f
1004:             or           t1, t2, a6
                  blt          s9, s2, 1012f
                  xor          s0, tp, s7
                  sltu         zero, t4, a0
                  slti         t1, s3, 1042
                  sub          t6, s2, s7
1010:             srli         a4, zero, 13
                  bltu         a0, tp, 1029f
1012:             blt          s0, tp, 1029f
                  xor          gp, s5, s5
                  srl          a0, t0, t6
1015:             auipc        s1, 910005
                  bltu         t4, s10, 1017f
1017:             slli         t5, t5, 25
                  sltiu        s0, t6, 1817
                  blt          t1, a1, 1030f
1020:             ori          a1, s7, 812
                  ori          s1, s7, 1714
1022:             nop
                  ori          a2, t4, 595
                  beq          a4, t5, 1039f
                  auipc        ra, 76268
                  and          s9, s2, t4
                  bgeu         a5, s5, 1029f
                  blt          tp, s10, 1038f
1029:             bge          ra, s2, 1033f
1030:             sltiu        t6, t3, -1394
                  or           t5, s4, s6
                  slli         s11, s8, 20
1033:             sltu         t3, a3, s7
                  srli         t6, a3, 23
                  and          s6, s11, t2
                  andi         t3, a4, -134
                  slli         a1, a6, 5
1038:             and          s7, a7, t0
1039:             nop
                  xori         s11, a4, 1307
                  srai         a6, tp, 15
                  addi         zero, s11, -60
                  srai         a6, s10, 10
                  srli         s9, s2, 13
                  auipc        a5, 775527
                  srai         t3, s7, 17
                  sll          t6, a7, a5
                  sub          a2, a7, a2
                  sub          s3, a1, s8
                  sltiu        a7, s3, -1498
                  sltiu        a2, s5, -378
                  auipc        s10, 942744
                  xor          s7, a3, s5
                  and          ra, s10, a1
                  bltu         a0, s2, 1069f
                  srai         s0, t3, 21
                  srli         a7, a1, 10
                  slti         a2, t0, 1952
                  beq          t4, a2, 1079f
                  sra          t1, s3, a2
                  sra          a0, sp, zero
                  lui          a7, 795856
                  nop
                  srai         a6, t2, 3
                  sll          s0, a6, zero
                  srai         s6, a0, 23
                  bltu         s3, ra, 1080f
                  blt          sp, a1, 1073f
1069:             srli         s9, s9, 8
                  addi         a2, s3, -719
                  nop
                  and          s5, tp, a3
1073:             srli         sp, a1, 17
                  bge          s11, sp, 1082f
                  xori         s9, a1, 1323
                  bgeu         s3, ra, 1081f
                  andi         tp, zero, -1297
                  lui          zero, 527567
1079:             slt          a7, a2, t6
1080:             xori         a0, s7, 1100
1081:             bge          s6, a4, 1100f
1082:             nop
                  addi         a6, s6, 1097
                  srl          a4, a2, s11
                  sltiu        t1, s10, 1783
                  srl          a5, s11, a7
                  andi         s1, s8, 1
                  xor          a5, s5, s8
                  sll          a1, t2, ra
                  sltu         a1, t6, gp
                  ori          s7, s7, 1624
                  or           s11, t3, s11
                  bne          s0, sp, 1101f
                  srai         s1, s7, 21
                  nop
                  or           t1, t0, s11
                  auipc        t3, 712480
                  beq          s2, zero, 1115f
                  slli         s11, t0, 0
1100:             sll          t1, t2, ra
1101:             srai         s11, s10, 5
                  bge          s9, a1, 1104f
                  srai         t1, sp, 21
1104:             slti         gp, a2, 296
                  xori         s6, a5, -511
                  andi         s0, s5, -306
                  slli         t1, a3, 8
                  sll          t2, a4, s2
                  bne          t6, t3, 1113f
                  nop
                  andi         s0, s10, -965
                  srli         t4, s6, 16
1113:             beq          s9, t3, 1132f
                  srl          a4, s11, a3
1115:             sub          t3, s11, t6
                  andi         a2, s8, 1998
                  andi         t0, s3, -542
                  bne          t1, a2, 1128f
                  bltu         a7, s5, 1134f
                  xor          zero, s2, s6
                  bge          a7, t6, 1131f
                  bge          sp, a2, 1131f
                  add          t2, t1, zero
                  slli         s9, s7, 16
                  lui          t5, 600979
                  sltiu        a5, s7, -1696
                  or           s0, tp, a7
1128:             andi         s11, s8, -854
                  slti         s5, a2, -1685
                  srli         s5, s5, 14
1131:             nop
1132:             beq          s8, a4, 1137f
                  beq          sp, ra, 1134f
1134:             bgeu         a5, gp, 1146f
                  sll          s1, sp, s4
                  blt          zero, zero, 1141f
1137:             auipc        t6, 19297
                  srl          tp, s0, zero
                  slli         ra, s9, 3
                  auipc        s0, 621670
1141:             srl          s11, t5, tp
                  ori          s3, s5, -1785
                  andi         tp, s3, -1989
                  sra          a2, t0, s4
                  sub          s1, t2, s9
1146:             sub          s6, s9, t4
                  slti         t3, a3, -166
                  bge          s9, s4, 1161f
                  bne          t3, s6, 1167f
                  sra          s11, t4, a7
                  sra          sp, a7, s1
sub_2_15:         jal          a3, 12f
0:                jal          a6, 10f
1:                jal          t1, 24f
2:                jal          ra, 3f
3:                jal          tp, 26f
4:                jal          ra, 17f
5:                jal          ra, 25f
6:                jal          t1, 23f
7:                jal          ra, 8f
8:                jal          ra, 6b
9:                jal          a4, 19f
10:               jal          a3, 4b
11:               jal          ra, 9b
12:               jal          a0, 21f
13:               jal          ra, 7b
14:               jal          s0, 1b
15:               jal          s5, 20f
16:               jal          ra, 14b
17:               jal          ra, 18f
18:               jal          ra, 13b
19:               jal          s11, 15b
20:               jal          ra, 0b
21:               jal          ra, 16b
22:               jal          ra, 5b
23:               jal          t0, 22b
24:               jal          ra, 11b
25:               jal          s11, 2b
26:               andi         gp, s7, 1994
                  srl          a0, a2, t6
                  srl          sp, s10, s1
                  auipc        a3, 1046441
                  slt          t1, ra, a4
                  blt          s6, a2, 1175f
                  auipc        t1, 151000
                  sll          gp, zero, s4
                  sra          a3, tp, t5
                  lui          s7, 24719
1161:             srai         s5, sp, 22
                  and          s11, a1, s0
                  xori         t5, t0, -832
                  sub          a1, s10, s4
                  add          t1, t0, t4
                  beq          sp, s3, 1171f
1167:             sll          s1, tp, s5
                  nop
                  beq          zero, s9, 1189f
                  andi         t0, sp, 763
1171:             xori         a6, a6, 546
                  sra          s10, s4, s7
                  srli         ra, s11, 15
                  lui          s0, 189547
1175:             sub          s5, s7, s1
                  and          tp, t0, gp
                  slli         t3, a4, 18
                  srli         zero, s11, 12
                  nop
                  blt          s5, s5, 1200f
                  srl          t0, a4, s5
                  slli         s9, a6, 11
                  or           a4, t6, s9
                  bne          a3, t2, 1185f
1185:             nop
                  sub          t3, s11, a5
                  andi         s7, t6, 391
                  sra          gp, ra, t4
1189:             addi         s1, ra, -694
                  slti         a6, s4, 957
                  slt          a6, t6, s8
                  nop
                  blt          t2, a6, 1204f
                  sltu         a5, t1, t5
                  bne          t2, zero, 1209f
                  or           s6, s6, s4
                  andi         t6, a1, -556
                  xori         s0, t0, 443
                  auipc        a1, 337347
1200:             lui          t4, 977855
                  slli         tp, a5, 31
                  sra          s7, s8, s0
                  nop
1204:             andi         ra, a7, -256
                  sra          s10, s0, s7
                  sll          t6, s2, a2
                  auipc        tp, 186307
                  bne          s6, a5, 1222f
1209:             sltu         s10, a3, tp
                  slt          tp, s0, a0
                  add          t1, s6, t0
                  bgeu         a1, s9, 1232f
                  srli         s11, t4, 17
                  add          a0, s7, s3
                  or           zero, s7, t6
                  blt          s0, s8, 1224f
                  sltu         s5, zero, a5
                  srl          t6, s1, s9
                  sra          tp, s2, a5
                  bne          t5, t1, 1228f
                  sub          t5, a2, s3
1222:             sll          t5, a7, t4
                  srl          a0, s2, t4
1224:             or           t2, tp, s11
                  srli         a6, s9, 11
                  addi         a3, s4, -1231
                  slti         tp, a0, -111
1228:             or           t6, s11, zero
                  andi         s3, ra, 1634
                  bne          t6, a0, 1238f
                  sltu         s3, s8, s1
1232:             bne          tp, ra, 1243f
                  lui          s6, 543938
                  andi         gp, s1, 168
                  srl          t1, s10, s8
                  slt          s1, tp, a0
                  lui          a0, 610800
1238:             or           s7, a7, a2
                  and          s0, t5, ra
                  blt          s7, s2, 1247f
                  andi         t6, s0, -3
                  andi         ra, t6, -975
1243:             sltu         s6, s9, s6
                  sltiu        s6, t0, 959
                  sll          a0, s11, a6
                  sra          t4, s11, t2
1247:             srl          a1, t5, t0
                  add          t4, t6, s2
                  srl          t2, s10, s6
                  slt          ra, t6, sp
                  sra          gp, a0, s5
                  sra          s1, s0, a4
                  bltu         s2, s6, 1271f
                  bgeu         s10, zero, 1256f
                  sra          s1, zero, a7
1256:             andi         s10, s9, 373
                  lui          a3, 101619
                  srl          gp, t0, ra
                  bltu         t6, s9, 1261f
                  xor          gp, a7, s9
1261:             or           zero, s8, t5
                  sub          tp, t4, s6
                  srai         s1, t5, 18
                  and          gp, sp, s6
                  srl          a4, gp, a3
                  sub          t2, t5, gp
                  nop
                  beq          t0, a1, 1288f
                  xor          s7, s0, gp
                  blt          a5, t0, 1290f
1271:             xori         s6, t1, 336
                  bltu         t6, a3, 1283f
                  and          t0, a4, s9
                  bne          a5, t3, 1282f
                  xor          s11, s7, ra
                  blt          gp, t6, 1291f
                  srai         s11, t3, 22
                  ori          s3, t5, 903
                  auipc        s10, 989106
                  xori         t1, s6, -744
                  slli         a6, a6, 0
1282:             sra          a6, s9, t2
1283:             auipc        zero, 76507
                  bge          s6, s6, 1291f
                  ori          s6, s6, -1022
                  xori         s9, s6, -295
                  bge          sp, a5, 1300f
1288:             xori         a4, gp, -1201
                  bge          t2, a3, 1294f
1290:             slt          gp, zero, a5
1291:             sltu         s7, a3, a3
                  srli         t4, a7, 25
                  add          gp, gp, t2
1294:             blt          s8, a3, 1312f
                  srl          ra, a3, ra
                  slt          a2, tp, t0
                  slti         a6, gp, -2042
                  sltiu        t3, ra, -1501
                  slli         s1, s5, 26
1300:             sltu         t4, zero, s0
                  beq          t6, t3, 1320f
                  blt          a3, ra, 1312f
                  bne          s2, t5, 1317f
                  slti         t6, s11, 1912
                  nop
                  sll          a3, s6, t1
                  auipc        gp, 772399
                  beq          s3, ra, 1313f
                  bge          a5, a3, 1310f
1310:             bgeu         s1, a6, 1320f
                  xor          t4, t4, tp
1312:             addi         s10, a4, -141
1313:             srli         gp, t6, 22
                  sra          t5, a7, t2
                  srl          a1, s6, t3
                  slli         s10, s1, 21
1317:             nop
                  add          gp, tp, s5
                  or           a0, t2, s7
1320:             bne          t1, a3, 1329f
                  add          t6, s11, t1
                  sll          a3, a0, a1
                  auipc        zero, 28303
                  sltiu        ra, ra, -705
                  nop
                  bltu         s8, s5, 1334f
                  sltiu        ra, s10, -1562
                  beq          s6, a4, 1347f
1329:             sltiu        tp, a3, -1432
                  srai         a2, a3, 13
                  slti         t3, s10, 747
                  xor          t0, s9, tp
                  srli         s11, s11, 2
1334:             sltiu        zero, a7, -803
                  srl          s11, s10, a5
                  ori          a4, t3, 1763
                  srl          zero, t4, s8
                  sra          s7, a1, t0
                  srai         t4, s6, 19
                  srli         t0, ra, 5
                  bgeu         s1, gp, 1346f
                  nop
                  srli         a5, a3, 14
                  xori         s6, s6, 850
sub_2_16:         jal          a3, 23f
0:                jal          t1, 8f
1:                jal          ra, 28f
2:                jal          t6, 5f
3:                jal          t1, 4f
4:                jal          sp, 24f
5:                jal          s10, 7f
6:                jal          s6, 16f
7:                jal          ra, 0b
8:                jal          ra, 26f
9:                jal          ra, 10f
10:               jal          ra, 25f
11:               jal          t1, 21f
12:               jal          ra, 14f
13:               jal          t1, 15f
14:               jal          ra, 2b
15:               jal          ra, 20f
16:               jal          t1, 9b
17:               jal          ra, 27f
18:               jal          ra, 13b
19:               jal          ra, 18b
20:               jal          ra, 6b
21:               jal          ra, 12b
22:               jal          ra, 11b
23:               jal          gp, 3b
24:               jal          gp, 17b
25:               jal          ra, 1b
26:               jal          ra, 19b
27:               jal          ra, 22b
28:               sub          t0, a2, t6
                  sra          s5, a6, t0
1346:             lui          s10, 788679
1347:             bgeu         s4, sp, 1365f
                  sltiu        gp, s3, -801
                  bgeu         t3, a3, 1363f
                  blt          a2, t1, 1351f
1351:             beq          zero, sp, 1353f
                  xor          s7, t3, t2
1353:             slti         t5, s11, -1239
                  addi         tp, t3, -1485
                  bne          s4, s3, 1375f
                  addi         a7, t0, -1891
                  srli         t0, a7, 19
                  ori          t5, t0, 1424
                  slt          t1, s4, a3
                  or           t5, s5, ra
                  and          s10, s4, t6
                  srl          a2, t1, s4
1363:             blt          t2, tp, 1371f
                  bltu         s11, s4, 1375f
1365:             slti         a5, a7, 245
                  srai         s9, gp, 13
                  bge          a2, gp, 1375f
                  slli         t1, s8, 11
                  srli         s1, a7, 30
                  or           tp, s7, t1
1371:             slti         t0, a4, 633
                  sub          a7, s10, t5
                  srl          t5, gp, s9
                  bge          s11, a2, 1375f
1375:             or           t5, a6, a0
                  slli         t4, s1, 17
                  nop
                  lw           a3, 4(s8)
                  srl          t3, s1, a4
                  addi         s8, s8, 40
                  srl          a7, a4, t1
                  and          sp, s5, sp
                  lui          s0, 958873
2008:             addi x25, x13, 1
2008:             jalr x25, x25, 0
sub_1:            sltu         zero, a3, s3
                  or           s11, t2, a3
                  nop
                  add          a4, s2, s0
                  blt          s1, a2, sub_1_stack_p
                  sll          ra, a3, ra
                  slt          t5, t6, t3
sub_1_stack_p:    addi         s8, s8, -16
                  sw           a3, 4(s8)
                  sltu         t0, tp, a0
                  sll          s1, t5, s1
                  xori         a4, t5, -1589
                  ori          s1, s10, -1119
                  srai         tp, a0, 6
                  srai         s7, s4, 18
                  la           s11, sub_2
                  sltiu        a7, a3, -580
                  andi         t1, t1, -911
                  addi         s11, s11, -91
                  bgeu         t3, t2, sub_1_j3 #branch to jump instr
                  andi         t5, ra, -1912
                  slti         s6, a4, 1089
sub_1_j3:         jalr         a3, s11, 91 #jump sub_1 -> sub_2
                  andi         t6, a6, 1137
                  bgeu         t1, a2, sub_1_j4 #branch to jump instr
                  ori          a4, s6, -746
                  auipc        s10, 294200
                  sll          s1, t0, s5
                  srl          t2, a3, t4
                  sub          a4, s11, t1
sub_1_j4:         jal          a3, sub_2 #jump sub_1 -> sub_2
                  sll          s7, t2, ra
                  bltu         s1, s8, 9f
                  sll          t5, a4, s9
                  beq          a7, sp, 4f
4:                bltu         t0, t6, 6f
                  or           t5, s6, a5
6:                lui          a1, 327739
                  sll          s11, a7, s4
                  slti         a0, s5, 826
9:                xor          t5, t2, s8
                  and          a1, a6, a2
                  slti         t3, a4, 80
                  lw           a3, 4(s8)
                  xori         a6, a7, 1371
                  sll          tp, s6, s10
                  srl          a0, t2, s8
                  slt          s6, s0, t3
                  xori         t5, s5, -628
                  addi         s8, s8, 16
                  and          s5, gp, sp
                  andi         tp, s2, 773
                  sra          s6, s9, s3
53:               addi x11, x13, 0
53:               jalr x11, x11, 0
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
mmode_intr_vector_1:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
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
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x18, x24, zero
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x30, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x30, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x30, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x30, x31, ecall_handler
                  li x31, 0x1
                  beq x30, x31, instr_fault_handler
                  li x31, 0x5
                  beq x30, x31, load_fault_handler
                  li x31, 0x7
                  beq x30, x31, store_fault_handler
                  li x31, 0xc
                  beq x30, x31, pt_fault_handler
                  li x31, 0xd
                  beq x30, x31, pt_fault_handler
                  li x31, 0xf
                  beq x30, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x24, x18, zero
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
                  add x24, x18, zero
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
                  add x24, x18, zero
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
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x24, x18, zero
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
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x24, x18, zero
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
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x24, x18, zero
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
